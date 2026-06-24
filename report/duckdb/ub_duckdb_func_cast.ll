inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdbL18ArrayToVarcharCastERNS_6VectorES1_mRNS_14CastParametersE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %7, align 8
  invoke void @_ZN6duckdb11LogicalType5ARRAYERKS0_NS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %i.e)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull %5, i64 noundef %2)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.f = invoke noundef zeroext i1 @_ZN6duckdbL16ArrayToArrayCastERNS_6VectorES1_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3)
          to label %bb.e unwind label %bb.o       ; 0 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %4, i64 noundef %2)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.h = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.h unwind label %bb.q       ; 5 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %2)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 7 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %_ZN6duckdb10FlatVector7GetDataINS_8string_tEEEPT_RNS_6VectorE.exit111 unwind label %bb.t

_ZN6duckdb10FlatVector7GetDataINS_8string_tEEEPT_RNS_6VectorE.exit111: ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93
  %.not134 = icmp eq i64 %2, 0
  br i1 %.not134, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %_ZN6duckdb10FlatVector7GetDataINS_8string_tEEEPT_RNS_6VectorE.exit111
  %.not135 = icmp eq i64 %i.d, 0                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %exitcond.peel.not = icmp eq i64 %i.d, 1
  %exitcond140.peel.not = icmp eq i64 %i.d, 1
  %exitcond142.peel.not = icmp eq i64 %i.d, 1
  %i.p = add i64 %i.d, -1                         ; 5 uses
  %i.q = add i64 %i.d, -2                         ; 2 uses
  %xtraiter = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  %unroll_iter = and i64 %i.p, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod163 = trunc i64 %i.p to i1
  %xtraiter164 = and i64 %i.p, 3                  ; 3 uses
  %i.s = icmp ult i64 %i.q, 3
  %unroll_iter168 = and i64 %i.p, -4
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  %lcmp.mod167 = icmp ne i64 %xtraiter164, 0
  br label %bb.u

._crit_edge133:                                   ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit, %_ZN6duckdb10FlatVector7GetDataINS_8string_tEEEPT_RNS_6VectorE.exit111
  br i1 %i.b, label %bb.ah, label %bb.ai

bb.l:                                             ; preds = %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.t, %bb.l ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ak

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.q:                                             ; preds = %bb.h, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.r:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.s:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.t:                                             ; preds = %bb.k, %bb.ah
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.u:                                             ; preds = %.lr.ph132, %_ZN6duckdb8string_t8FinalizeEv.exit
  %.087130 = phi i64 [ 0, %.lr.ph132 ], [ %i.fb, %_ZN6duckdb8string_t8FinalizeEv.exit ] ; 7 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader, label %bb.v

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader: ; preds = %bb.v, %bb.u
  br i1 %.not135, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader
  %i.ac = mul i64 %.087130, %i.d                  ; 7 uses
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !94  ; 5 uses
  %.not.i112 = icmp eq ptr %i.ad, null
  %i.ae = getelementptr [16 x i8], ptr %i.k, i64 %i.ac
  %.sroa.0.0.copyload.us.peel = load i32, ptr %i.ae, align 8 ; 2 uses
  br i1 %.not.i112, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader: ; preds = %.lr.ph
  %i.af = lshr i64 %i.ac, 6
  %i.ag = and i64 %i.ac, 63
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = shl nuw i64 1, %i.ag
  %i.ak = and i64 %i.ai, %i.aj
  %.not123.peel = icmp eq i64 %i.ak, 0
  %i.al = zext i32 %.sroa.0.0.copyload.us.peel to i64
  %i.am = add nuw nsw i64 %i.al, 2
  %i.an = select i1 %.not123.peel, i64 6, i64 %i.am ; 3 uses
  br i1 %exitcond.peel.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader
  br i1 %i.r, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159
  %invariant.op = add i64 1, %i.ac
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.preheader: ; preds = %.lr.ph
  %i.ao = zext i32 %.sroa.0.0.copyload.us.peel to i64
  %i.ap = add nuw nsw i64 %i.ao, 2                ; 3 uses
  br i1 %exitcond140.peel.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.preheader
  %invariant.gep = getelementptr [16 x i8], ptr %i.k, i64 %i.ac ; 5 uses
  br i1 %i.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us
  %.088125.us = phi i64 [ %i.be, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us ], [ %i.ap, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next ]
  %.090124.us = phi i64 [ %i.bf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us ], [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next ] ; 5 uses
  %niter169 = phi i64 [ %niter169.next.3, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.090124.us
  %.sroa.0.0.copyload.us = load i32, ptr %gep, align 8
  %i.aq = add i64 %.088125.us, 2
  %i.ar = zext i32 %.sroa.0.0.copyload.us to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = getelementptr [16 x i8], ptr %invariant.gep, i64 %.090124.us
  %gep.1 = getelementptr i8, ptr %i.at, i64 16
  %.sroa.0.0.copyload.us.1 = load i32, ptr %gep.1, align 8
  %i.au = add i64 %i.as, 2
  %i.av = zext i32 %.sroa.0.0.copyload.us.1 to i64
  %i.aw = add i64 %i.au, %i.av
  %i.ax = getelementptr [16 x i8], ptr %invariant.gep, i64 %.090124.us
  %gep.2 = getelementptr i8, ptr %i.ax, i64 32
  %.sroa.0.0.copyload.us.2 = load i32, ptr %gep.2, align 8
  %i.ay = add i64 %i.aw, 2
  %i.az = zext i32 %.sroa.0.0.copyload.us.2 to i64
  %i.ba = add i64 %i.ay, %i.az
  %i.bb = getelementptr [16 x i8], ptr %invariant.gep, i64 %.090124.us
  %gep.3 = getelementptr i8, ptr %i.bb, i64 48
  %.sroa.0.0.copyload.us.3 = load i32, ptr %gep.3, align 8
  %i.bc = add i64 %i.ba, 2
  %i.bd = zext i32 %.sroa.0.0.copyload.us.3 to i64
  %i.be = add i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = add nuw i64 %.090124.us, 4              ; 2 uses
  %niter169.next.3 = add i64 %niter169, 4         ; 2 uses
  %niter169.ncmp.3 = icmp eq i64 %niter169.next.3, %unroll_iter168
  br i1 %niter169.ncmp.3, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us, !llvm.loop !95

bb.v:                                             ; preds = %bb.u
  %i.bg = lshr i64 %.087130, 6
  %i.bh = and i64 %.087130, 63
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.bg
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13
  %i.bk = shl nuw i64 1, %i.bh
  %i.bl = and i64 %i.bj, %i.bk
  %.not121 = icmp eq i64 %i.bl, 0
  br i1 %.not121, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.087130, i1 noundef zeroext true)
          to label %_ZN6duckdb8string_t8FinalizeEv.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us
  br i1 %lcmp.mod165.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next
  %.088125.us.epil.init = phi i64 [ %i.ap, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next ], [ %i.be, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit.unr-lcssa ]
  %.090124.us.epil.init = phi i64 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.peel.next ], [ %i.bf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil.preheader
  %.088125.us.epil = phi i64 [ %i.bp, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil ], [ %.088125.us.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil.preheader ]
  %.090124.us.epil = phi i64 [ %i.bq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil ], [ %.090124.us.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil.preheader ]
  %gep.epil = getelementptr [16 x i8], ptr %invariant.gep, i64 %.090124.us.epil
  %.sroa.0.0.copyload.us.epil = load i32, ptr %gep.epil, align 8
  %i.bn = add i64 %.088125.us.epil, 2
  %i.bo = zext i32 %.sroa.0.0.copyload.us.epil to i64
  %i.bp = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = add nuw i64 %.090124.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter164
  br i1 %epil.iter.cmp.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil, !llvm.loop !97

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit160.unr-lcssa: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114
  br i1 %lcmp.mod.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit160.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159
  %.088125.epil.init = phi i64 [ %i.an, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159 ], [ %i.da, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit160.unr-lcssa ]
  %.090124.epil.init = phi i64 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159 ], [ %i.db, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit160.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod163)
  %i.br = add i64 %.090124.epil.init, %i.ac       ; 3 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.br
  %.sroa.0.0.copyload.epil = load i32, ptr %i.bs, align 8
  %i.bt = add i64 %.088125.epil.init, 2
  %i.bu = lshr i64 %i.br, 6
  %i.bv = and i64 %i.br, 63
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bu
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !13
  %i.by = shl nuw i64 1, %i.bv
  %i.bz = and i64 %i.bx, %i.by
  %.not123.epil = icmp eq i64 %i.bz, 0
  %i.ca = zext i32 %.sroa.0.0.copyload.epil to i64
  %i.cb = select i1 %.not123.epil, i64 4, i64 %i.ca
  %i.cc = add i64 %i.cb, %i.bt
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.epil.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit160.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader
  %.088.lcssa = phi i64 [ 2, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader ], [ %i.bp, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.epil ], [ %i.ap, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.thread.us.preheader ], [ %i.an, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader ], [ %i.be, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit.unr-lcssa ], [ %i.da, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit160.unr-lcssa ], [ %i.cc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.epil.preheader ]
  %i.cd = invoke { i64, ptr } @_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.088.lcssa)
          to label %bb.y unwind label %bb.ae      ; 2 uses

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159.new
  %.088125 = phi i64 [ %i.an, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159.new ], [ %i.da, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114 ]
  %.090124 = phi i64 [ 1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159.new ], [ %i.db, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114.preheader159.new ], [ %niter.next.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114 ]
  %i.ce = add i64 %.090124, %i.ac                 ; 3 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ce
  %.sroa.0.0.copyload = load i32, ptr %i.cf, align 8
  %i.cg = add i64 %.088125, 2
  %i.ch = lshr i64 %i.ce, 6
  %i.ci = and i64 %i.ce, 63
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = shl nuw i64 1, %i.ci
  %i.cm = and i64 %i.ck, %i.cl
  %.not123 = icmp eq i64 %i.cm, 0
  %i.cn = zext i32 %.sroa.0.0.copyload to i64
  %i.co = select i1 %.not123, i64 4, i64 %i.cn
  %i.cp = add i64 %i.co, %i.cg
  %.reass = add i64 %.090124, %invariant.op       ; 3 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.reass
  %.sroa.0.0.copyload.1 = load i32, ptr %i.cq, align 8
  %i.cr = add i64 %i.cp, 2
  %i.cs = lshr i64 %.reass, 6
  %i.ct = and i64 %.reass, 63
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cs
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cw = shl nuw i64 1, %i.ct
  %i.cx = and i64 %i.cv, %i.cw
  %.not123.1 = icmp eq i64 %i.cx, 0
  %i.cy = zext i32 %.sroa.0.0.copyload.1 to i64
  %i.cz = select i1 %.not123.1, i64 4, i64 %i.cy
  %i.da = add i64 %i.cz, %i.cr                    ; 3 uses
  %i.db = add nuw i64 %.090124, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge.loopexit160.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit114, !llvm.loop !99

bb.y:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge
  %i.dc = extractvalue { i64, ptr } %i.cd, 0      ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.cd, 1      ; 2 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.087130 ; 4 uses
  store i64 %i.dc, ptr %i.de, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.dd, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !100
  %i.df = trunc i64 %i.dc to i32
  %i.dg = icmp ult i32 %i.df, 13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 3 uses
  %i.di = select i1 %i.dg, ptr %i.dh, ptr %i.dd   ; 7 uses
  store i8 91, ptr %i.di, align 1, !tbaa !100
  br i1 %.not135, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = mul i64 %.087130, %i.d                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false), !tbaa.struct !101
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !94  ; 2 uses
  %.not.i115.peel = icmp eq ptr %.pre, null
  br i1 %.not.i115.peel, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread.peel, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.peel

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.peel: ; preds = %bb.z
  %i.dl = lshr i64 %i.dj, 6
  %i.dm = and i64 %i.dj, 63
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dl
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !13
  %i.dp = shl nuw i64 1, %i.dm
  %i.dq = and i64 %i.do, %i.dp
  %.not122.peel = icmp eq i64 %i.dq, 0
  br i1 %.not122.peel, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread.peel

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.peel
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store i32 1280070990, ptr %i.dr, align 1
  br label %bb.ab

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread.peel: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.peel, %bb.z
  %i.ds = load i32, ptr %8, align 8, !tbaa !100   ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = icmp ult i32 %i.ds, 13
  %i.dv = load ptr, ptr %i.o, align 8
  %i.dw = select i1 %i.du, ptr %i.n, ptr %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr align 1 %i.dw, i64 %i.dt, i1 false)
  %i.dy = add nuw nsw i64 %i.dt, 1
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread.peel, %bb.aa
  %.pn98.peel = phi i64 [ %i.dy, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit117.thread.peel ], [ 5, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %exitcond142.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.ag, %bb.ab, %bb.y
  %.084.lcssa = phi i64 [ 1, %bb.y ], [ %.pn98.peel, %bb.ab ], [ %.286, %bb.ag ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 %.084.lcssa
  store i8 93, ptr %i.dz, align 1, !tbaa !100
  %i.ea = load i32, ptr %i.de, align 8, !tbaa !100 ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 13
  br i1 %i.eb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge
  %i.ec = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ec
  %i.ee = sub nuw nsw i64 12, %i.ec
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ed, i8 0, i64 %i.ee, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.ad:                                            ; preds = %._crit_edge
  %i.ef = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.eg = load i32, ptr %i.ef, align 1
  store i32 %i.eg, ptr %i.dh, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit._crit_edge
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.peel.next:                                       ; preds = %bb.ab, %bb.ag
  %.083127 = phi i64 [ %i.fa, %bb.ag ], [ 1, %bb.ab ] ; 2 uses
  %.084126 = phi i64 [ %.286, %bb.ag ], [ %.pn98.peel, %bb.ab ] ; 2 uses
  %i.ei = add i64 %.083127, %i.dj                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !101
  %i.ek = getelementptr inbounds nuw i8, ptr %i.di, i64 %.084126
  store i16 8236, ptr %i.ek, align 1
  %i.el = add i64 %.084126, 2                     ; 3 uses
end_hunk_0
