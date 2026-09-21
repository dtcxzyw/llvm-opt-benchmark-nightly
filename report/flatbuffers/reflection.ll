Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/reflection?download=true
inline.NumInlined: 1553
inline.NumDeleted: 671
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN11flatbuffers9CopyTableERNS_21FlatBufferBuilderImplILb0EEERKN10reflection6SchemaERKNS3_6ObjectERKNS_5TableEb:_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  br label %bb.ai

._crit_edge449:                                   ; preds = %bb.aj, %_ZNK10reflection6Object9is_structEv.exit251.thread, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_5TableEEESaIS5_EEC2EmRKS6_.exit
  %.0.lcssa.i.i.i.i.i256607 = phi ptr [ null, %_ZNK10reflection6Object9is_structEv.exit251.thread ], [ %scevgep.i.i.i.i.i254, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_5TableEEESaIS5_EEC2EmRKS6_.exit ], [ %scevgep.i.i.i.i.i254, %bb.aj ] ; 2 uses
  %.sink.i255605 = phi i64 [ 0, %_ZNK10reflection6Object9is_structEv.exit251.thread ], [ %i.kr, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_5TableEEESaIS5_EEC2EmRKS6_.exit ], [ %i.kr, %bb.aj ] ; 2 uses
  %.sroa.0339.0603 = phi ptr [ null, %_ZNK10reflection6Object9is_structEv.exit251.thread ], [ %i.kp, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_5TableEEESaIS5_EEC2EmRKS6_.exit ], [ %i.kp, %bb.aj ] ; 7 uses
  %i.ku = icmp eq ptr %.sroa.0339.0603, %.0.lcssa.i.i.i.i.i256607
  %spec.select.i.i258 = select i1 %i.ku, ptr @_ZZN11flatbuffers4dataINS_6OffsetIPKNS_5TableEEESaIS5_EEEPKT_RKSt6vectorIS7_T0_EE1t, ptr %.sroa.0339.0603
  %i.kv = ptrtoint ptr %.0.lcssa.i.i.i.i.i256607 to i64
  %i.kw = ptrtoint ptr %.sroa.0339.0603 to i64    ; 2 uses
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = ashr exact i64 %i.kx, 2
  %i.kz = invoke i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIPKNS_5TableEEENS_6OffsetINS_6VectorINS6_IT_EEjEEEEPKS9_m(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %spec.select.i.i258, i64 noundef %i.ky)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_5TableEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit unwind label %bb.al ; 2 uses

bb.ah:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i253
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

bb.ai:                                            ; preds = %.lr.ph448, %bb.aj
  %indvars.iv522 = phi i64 [ 0, %.lr.ph448 ], [ %indvars.iv.next523, %bb.aj ] ; 3 uses
  %i.lb = shl nuw nsw i64 %indvars.iv522, 2
  %i.lc = and i64 %i.lb, 4294967292
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.lc ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !14
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lf
  %i.lh = invoke i32 @_ZN11flatbuffers9CopyTableERNS_21FlatBufferBuilderImplILb0EEERKN10reflection6SchemaERKNS3_6ObjectERKNS_5TableEb(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.id, ptr noundef nonnull align 1 dereferenceable(1) %i.lg, i1 noundef zeroext %4)
          to label %bb.aj unwind label %.thread608

bb.aj:                                            ; preds = %bb.ai
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv522
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !14
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %i.lj = load i32, ptr %i.gu, align 4, !tbaa !67
  %i.lk = zext i32 %i.lj to i64
  %i.ll = icmp samesign ult i64 %indvars.iv.next523, %i.lk
  br i1 %i.ll, label %bb.ai, label %._crit_edge449, !llvm.loop !143

.thread608:                                       ; preds = %bb.ai
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_5TableEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit: ; preds = %._crit_edge449
  %.not.i.i.i260 = icmp eq ptr %.sroa.0339.0603, null
  br i1 %.not.i.i.i260, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_5TableEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit
  %i.ln = sub i64 %.sink.i255605, %i.kw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0339.0603, i64 noundef %i.ln) #22
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit

bb.al:                                            ; preds = %._crit_edge449
  %i.lo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i261 = icmp eq ptr %.sroa.0339.0603, null
  br i1 %.not.i.i.i261, label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248, label %bb.am

bb.am:                                            ; preds = %.thread608, %bb.al
  %.pn156615 = phi { ptr, i32 } [ %i.lm, %.thread608 ], [ %i.lo, %bb.al ]
  %.sroa.0339.0604614 = phi ptr [ %i.kp, %.thread608 ], [ %.sroa.0339.0603, %bb.al ] ; 2 uses
  %.sink.i255606613 = phi i64 [ %i.kr, %.thread608 ], [ %.sink.i255605, %bb.al ]
  %i.lp = ptrtoint ptr %.sroa.0339.0604614 to i64
  %i.lq = sub i64 %.sink.i255606613, %i.lp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0339.0604614, i64 noundef %i.lq) #22
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

.thread372:                                       ; preds = %_ZNK10reflection4Type7elementEv.exit, %_ZNK11flatbuffers5Table10GetPointerIPKNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225
  %.ph371 = phi i64 [ %i.hb, %_ZNK10reflection4Type7elementEv.exit ], [ 0, %_ZNK11flatbuffers5Table10GetPointerIPKNS_6VectorINS_6OffsetIS0_EEjEEjEET_t.exit ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i225 ]
  %i.lr = and i64 %.ph371, 4294967295
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %i.lr
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !16 ; 2 uses
  br label %_ZNK10reflection6Object9is_structEv.exit265.thread

bb.an:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit251
  %i.lu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 120), align 8, !tbaa !16 ; 3 uses
  %i.lv = icmp ugt i16 %i.ii, 12
  br i1 %i.lv, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266, label %_ZNK10reflection6Object9is_structEv.exit265.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266: ; preds = %bb.an
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !13 ; 2 uses
  %.not.i.i267 = icmp eq i16 %i.lx, 0
  br i1 %.not.i.i267, label %_ZNK10reflection6Object9is_structEv.exit265.thread, label %bb.ao

bb.ao:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266
  %i.ly = zext i16 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !14
  %i.mb = sext i32 %i.ma to i64
  br label %_ZNK10reflection6Object9is_structEv.exit265.thread

bb.ap:                                            ; preds = %bb.aw, %bb.av, %bb.as, %_ZNK10reflection6Object9is_structEv.exit265.thread
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

_ZNK10reflection6Object9is_structEv.exit265.thread: ; preds = %bb.an, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266, %bb.ao, %.thread372
  %i.md = phi i64 [ %i.lu, %bb.an ], [ %i.lu, %bb.ao ], [ %i.lt, %.thread372 ], [ %i.lu, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266 ]
  %.0123 = phi i64 [ 0, %bb.an ], [ %i.mb, %bb.ao ], [ %i.lt, %.thread372 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i266 ] ; 2 uses
  %i.me = load i32, ptr %i.gu, align 4, !tbaa !67
  %i.mf = zext i32 %i.me to i64
  invoke void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.mf, i64 noundef %.0123, i64 noundef %i.md)
          to label %bb.aq unwind label %bb.ap

bb.aq:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit265.thread
  %i.mg = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.mh = load i32, ptr %i.gu, align 4, !tbaa !67 ; 2 uses
  %i.mi = zext i32 %i.mh to i64
  %i.mj = mul i64 %.0123, %i.mi                   ; 6 uses
  %.not.i.i268 = icmp eq i64 %i.mj, 0
  br i1 %.not.i.i268, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.mk = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.ml = ptrtoint ptr %.pre4.i.i.i to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = and i64 %i.mn, 4294967295
  %i.mp = icmp ugt i64 %i.mj, %i.mo
  br i1 %i.mp, label %bb.as, label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.mj)
          to label %.noexc269 unwind label %bb.ap

.noexc269:                                        ; preds = %bb.as
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i: ; preds = %.noexc269, %bb.ar
  %i.mq = phi ptr [ %.pre4.i.i.i, %bb.ar ], [ %.pre.i.i.i, %.noexc269 ]
  %i.mr = sub i64 0, %i.mj
  %i.ms = getelementptr inbounds i8, ptr %i.mq, i64 %i.mr ; 2 uses
  store ptr %i.ms, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.mt = trunc i64 %i.mj to i32
  %i.mu = load i32, ptr %i.n, align 8, !tbaa !65
  %i.mv = add i32 %i.mu, %i.mt
  store i32 %i.mv, ptr %i.n, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ms, ptr nonnull align 4 %i.mg, i64 %i.mj, i1 false)
  %.pre526 = load i32, ptr %i.gu, align 4, !tbaa !67
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit: ; preds = %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i, %bb.aq
  %i.mw = phi i32 [ %.pre526, %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i ], [ %i.mh, %bb.aq ]
  store i8 0, ptr %i.p, align 8, !tbaa !74
  %i.mx = load i64, ptr %i.q, align 8, !tbaa !75
  %i.my = icmp ult i64 %i.mx, 4
  br i1 %i.my, label %bb.at, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

bb.at:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  store i64 4, ptr %i.q, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i: ; preds = %bb.at, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  %i.mz = load i32, ptr %i.n, align 8, !tbaa !65  ; 2 uses
  %i.na = sub i32 0, %i.mz
  %i.nb = and i32 %i.na, 3                        ; 3 uses
  %i.nc = zext nneg i32 %i.nb to i64              ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.nd = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.ne = ptrtoint ptr %.pre4.i.i.i.i.i to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf
  %i.nh = and i64 %i.ng, 4294967295
  %i.ni = icmp samesign ult i64 %i.nh, %i.nc
  br i1 %i.ni, label %bb.av, label %.lr.ph.preheader.i.i.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.nc)
          to label %.noexc271 unwind label %bb.ap

.noexc271:                                        ; preds = %bb.av
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %.pre.i.i.i270 = load i32, ptr %i.n, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.noexc271, %bb.au
  %i.nj = phi i32 [ %i.mz, %bb.au ], [ %.pre.i.i.i270, %.noexc271 ]
  %i.nk = phi ptr [ %.pre4.i.i.i.i.i, %bb.au ], [ %.pre.i.i.i.i.i, %.noexc271 ]
  %i.nl = sub nsw i64 0, %i.nc
  %i.nm = getelementptr inbounds i8, ptr %i.nk, i64 %i.nl
  store ptr %i.nm, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.nn = add i32 %i.nj, %i.nb
  store i32 %i.nn, ptr %i.n, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i
  %.05.i.i.i.i.epil = phi i64 [ %i.nq, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.no = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %.05.i.i.i.i.epil
  store i8 0, ptr %i.np, align 1, !tbaa !11
  %i.nq = add nuw i64 %.05.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.nc
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !144

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.nr = load ptr, ptr %i.o, align 8, !tbaa !71
  %i.ns = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = and i64 %i.nu, 4294967292
  %i.nw = icmp eq i64 %i.nv, 0
  br i1 %i.nw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
          to label %.noexc272 unwind label %bb.ap

.noexc272:                                        ; preds = %bb.aw
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  br label %bb.ax

bb.ax:                                            ; preds = %.noexc272, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  %i.nx = phi ptr [ %.pre4.i.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i ], [ %.pre.i.i.i.i, %.noexc272 ]
  %i.ny = getelementptr inbounds i8, ptr %i.nx, i64 -4 ; 2 uses
  store ptr %i.ny, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.nz = load i32, ptr %i.n, align 8, !tbaa !65
  %i.oa = add i32 %i.nz, 4
  store i32 %i.oa, ptr %i.n, align 8, !tbaa !65
  store i32 %i.mw, ptr %i.ny, align 4, !tbaa !14
  %i.ob = load i32, ptr %i.n, align 8, !tbaa !65
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit: ; preds = %bb.ak, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_5TableEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit, %bb.af, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_6StringEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit, %_ZNK10reflection5Field6offsetEv.exit.i211, %_ZNK10reflection5Field6offsetEv.exit.i206, %bb.f, %.noexc195, %bb.ax
  %.0367 = phi i32 [ %i.kz, %bb.ak ], [ %i.cy, %.noexc195 ], [ %i.jm, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_6StringEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit ], [ %i.kz, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS_6OffsetIPKNS_5TableEEESaIS7_EEENS3_INS_6VectorIT_jEEEERKSt6vectorISA_T0_E.exit ], [ %i.ez, %_ZNK10reflection5Field6offsetEv.exit.i206 ], [ %i.ob, %bb.ax ], [ %i.gc, %_ZNK10reflection5Field6offsetEv.exit.i211 ], [ %i.jm, %bb.af ], [ %i.cf, %bb.f ] ; 3 uses
  %.not173 = icmp eq i32 %.0367, 0
  br i1 %.not173, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit
  %.not.i273 = icmp eq ptr %.sroa.9.0456, %.sroa.12363.0451
  br i1 %.not.i273, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %.0367, ptr %.sroa.9.0456, align 4, !tbaa !14
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.9.0456, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.ba:                                            ; preds = %bb.ay
  %i.od = ptrtoint ptr %.sroa.9.0456 to i64
  %i.oe = ptrtoint ptr %.sroa.0359.0458 to i64
  %i.of = sub i64 %i.od, %i.oe                    ; 6 uses
  %i.og = icmp eq i64 %i.of, 9223372036854775804
  br i1 %i.og, label %bb.bb, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #21
          to label %.noexc275 unwind label %.loopexit.split-lp

.noexc275:                                        ; preds = %bb.bb
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ba
  %i.oh = ashr exact i64 %i.of, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.oh, i64 1)
  %i.oi = add nsw i64 %.sroa.speculated.i.i.i, %i.oh ; 2 uses
  %i.oj = icmp ult i64 %i.oi, %i.oh
  %i.ok = tail call i64 @llvm.umin.i64(i64 %i.oi, i64 2305843009213693951)
  %i.ol = select i1 %i.oj, i64 2305843009213693951, i64 %i.ok ; 3 uses
  %.not.i.i.i274 = icmp ne i64 %i.ol, 0
  tail call void @llvm.assume(i1 %.not.i.i.i274)
  %i.om = shl nuw nsw i64 %i.ol, 2
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.om) #23
          to label %.noexc276 unwind label %.loopexit ; 4 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 %i.of ; 2 uses
  store i32 %.0367, ptr %i.oo, align 4, !tbaa !14
  %i.op = icmp sgt i64 %i.of, 0
  br i1 %i.op, label %bb.bc, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.bc:                                            ; preds = %.noexc276
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.on, ptr align 4 %.sroa.0359.0458, i64 %i.of, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.bc, %.noexc276
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.0359.0458, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0458, i64 noundef %i.of) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.bd, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ol
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNK10reflection5Field6offsetEv.exit.i187, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188, %_ZNK10reflection5Field6offsetEv.exit.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183, %_ZNK10reflection6Object9is_structEv.exit205, %_ZNK10reflection4Type9base_typeEv.exit, %_ZNK10reflection5Field6offsetEv.exit, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit, %bb.az, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %_ZNK11flatbuffers5Table10CheckFieldEt.exit
  %.sroa.12363.2 = phi ptr [ %.sroa.12363.0451, %bb.az ], [ %.sroa.12363.0451, %_ZNK11flatbuffers5Table10CheckFieldEt.exit ], [ %.sroa.12363.0451, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit ], [ %.sroa.12363.0451, %_ZNK10reflection5Field6offsetEv.exit ], [ %i.or, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.12363.0451, %_ZNK10reflection4Type9base_typeEv.exit ], [ %.sroa.12363.0451, %_ZNK10reflection6Object9is_structEv.exit205 ], [ %.sroa.12363.0451, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183 ], [ %.sroa.12363.0451, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181 ], [ %.sroa.12363.0451, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i ], [ %.sroa.12363.0451, %_ZNK10reflection5Field6offsetEv.exit.i ], [ %.sroa.12363.0451, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188 ], [ %.sroa.12363.0451, %_ZNK10reflection5Field6offsetEv.exit.i187 ] ; 2 uses
  %.sroa.9.2 = phi ptr [ %i.oc, %bb.az ], [ %.sroa.9.0456, %_ZNK11flatbuffers5Table10CheckFieldEt.exit ], [ %.sroa.9.0456, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit ], [ %.sroa.9.0456, %_ZNK10reflection5Field6offsetEv.exit ], [ %i.oq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.9.0456, %_ZNK10reflection4Type9base_typeEv.exit ], [ %.sroa.9.0456, %_ZNK10reflection6Object9is_structEv.exit205 ], [ %.sroa.9.0456, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183 ], [ %.sroa.9.0456, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181 ], [ %.sroa.9.0456, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i ], [ %.sroa.9.0456, %_ZNK10reflection5Field6offsetEv.exit.i ], [ %.sroa.9.0456, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188 ], [ %.sroa.9.0456, %_ZNK10reflection5Field6offsetEv.exit.i187 ]
  %.sroa.0359.2 = phi ptr [ %.sroa.0359.0458, %bb.az ], [ %.sroa.0359.0458, %_ZNK11flatbuffers5Table10CheckFieldEt.exit ], [ %.sroa.0359.0458, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKNS_6StringE.exit ], [ %.sroa.0359.0458, %_ZNK10reflection5Field6offsetEv.exit ], [ %i.on, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0359.0458, %_ZNK10reflection4Type9base_typeEv.exit ], [ %.sroa.0359.0458, %_ZNK10reflection6Object9is_structEv.exit205 ], [ %.sroa.0359.0458, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i183 ], [ %.sroa.0359.0458, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i181 ], [ %.sroa.0359.0458, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i ], [ %.sroa.0359.0458, %_ZNK10reflection5Field6offsetEv.exit.i ], [ %.sroa.0359.0458, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i2.i188 ], [ %.sroa.0359.0458, %_ZNK10reflection5Field6offsetEv.exit.i187 ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0356.0455, i64 4 ; 2 uses
  %i.ot = load i32, ptr %i.k, align 4, !tbaa !35, !noalias !151
  %i.ou = shl i32 %i.ot, 2
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ov
  %.not = icmp eq ptr %i.os, %i.ow
  br i1 %.not, label %._crit_edge463.loopexit, label %bb.a, !llvm.loop !145

_ZNK10reflection6Object9is_structEv.exit:         ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.ox = zext i16 %i.v to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !11
  %.not383 = icmp eq i8 %i.oz, 0
  br i1 %.not383, label %_ZNK10reflection6Object9is_structEv.exit.thread, label %bb.be

bb.be:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit
  %i.pa = icmp ugt i16 %i.s, 10
  br i1 %i.pa, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277: ; preds = %bb.be
  %i.pb = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !13 ; 2 uses
  %.not.i.i278 = icmp eq i16 %i.pc, 0
  br i1 %.not.i.i278, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, label %_ZNK10reflection6Object8minalignEv.exit

_ZNK10reflection6Object8minalignEv.exit:          ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277
  %i.pd = zext i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !14
  %i.pg = sext i32 %i.pf to i64                   ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !75
  %i.pj = icmp ult i64 %i.pi, %i.pg
  br i1 %i.pj, label %bb.bf, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.bf:                                            ; preds = %_ZNK10reflection6Object8minalignEv.exit
  store i64 %i.pg, ptr %i.ph, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.be, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277, %bb.bf, %_ZNK10reflection6Object8minalignEv.exit
  %i.pk = phi i64 [ %i.pg, %_ZNK10reflection6Object8minalignEv.exit ], [ %i.pg, %bb.bf ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i277 ], [ 0, %bb.be ]
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !65 ; 3 uses
  %i.pn = zext i32 %i.pm to i64
  %i.po = sub nsw i64 0, %i.pn
  %i.pp = add nsw i64 %i.pk, -1
  %i.pq = and i64 %i.pp, %i.po                    ; 8 uses
  %.not.i.i.i.i279 = icmp eq i64 %i.pq, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  br i1 %.not.i.i.i.i279, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i280 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !71
  %i.pt = ptrtoint ptr %.pre4.i.i.i.i280 to i64
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = sub i64 %i.pt, %i.pu
  %i.pw = and i64 %i.pv, 4294967295
  %i.px = icmp ugt i64 %i.pq, %i.pw
  br i1 %i.px, label %bb.bh, label %.lr.ph.preheader.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.pq)
          to label %.noexc282 unwind label %bb.bi

.noexc282:                                        ; preds = %bb.bh
  %.pre.i.i.i.i281 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.pl, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc282, %bb.bg
  %i.py = phi i32 [ %i.pm, %bb.bg ], [ %.pre.i.i, %.noexc282 ]
  %i.pz = phi ptr [ %.pre4.i.i.i.i280, %bb.bg ], [ %.pre.i.i.i.i281, %.noexc282 ]
  %i.qa = sub nsw i64 0, %i.pq
  %i.qb = getelementptr inbounds i8, ptr %i.pz, i64 %i.qa
  store ptr %i.qb, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.qc = trunc i64 %i.pq to i32
  %i.qd = add i32 %i.py, %i.qc
  store i32 %i.qd, ptr %i.pl, align 8, !tbaa !65
  %xtraiter782 = and i64 %i.pq, 3                 ; 3 uses
  %i.qe = icmp ult i64 %i.pq, 4
  br i1 %i.qe, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter786 = and i64 %i.pq, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.05.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.qq, %.lr.ph.i.i.i ] ; 5 uses
  %niter787 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter787.next.3, %.lr.ph.i.i.i ]
  %i.qf = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %.05.i.i.i
  store i8 0, ptr %i.qg, align 1, !tbaa !11
  %i.qh = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %.05.i.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 1
  store i8 0, ptr %i.qj, align 1, !tbaa !11
  %i.qk = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers9CopyTableERNS_21FlatBufferBuilderImplILb0EEERKN10reflection6SchemaERKNS3_6ObjectERKNS_5TableEb:_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
    i8 13, label %.thread377
    i8 14, label %.thread377
  ]

_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248.thread: ; preds = %bb.bx, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bl:                                            ; preds = %_ZNK10reflection4Type9base_typeEv.exit295
  %i.te = load i32, ptr %1, align 4, !tbaa !14
  %i.tf = sext i32 %i.te to i64
  %i.tg = sub nsw i64 0, %i.tf
  %i.th = getelementptr inbounds i8, ptr %1, i64 %i.tg ; 2 uses
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !13
  %i.tj = icmp ugt i16 %i.ti, 4
  br i1 %i.tj, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i296, label %_ZNK10reflection6Schema7objectsEv.exit298

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i296: ; preds = %bb.bl
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  %i.tl = load i16, ptr %i.tk, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i297 = icmp eq i16 %i.tl, 0
  br i1 %.not.i.i.i297, label %_ZNK10reflection6Schema7objectsEv.exit298, label %bb.bm

bb.bm:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i296
  %i.tm = zext i16 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 %i.tm ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !14
  %i.tp = zext i32 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tp
  br label %_ZNK10reflection6Schema7objectsEv.exit298

_ZNK10reflection6Schema7objectsEv.exit298:        ; preds = %bb.bm, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i296, %bb.bl
  %i.tr = phi ptr [ %i.tq, %bb.bm ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i296 ], [ null, %bb.bl ]
  %i.ts = icmp ugt i16 %i.sv, 8
  br i1 %i.ts, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i302, label %bb.bo

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i302: ; preds = %_ZNK10reflection6Schema7objectsEv.exit298
  %i.tt = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tu = load i16, ptr %i.tt, align 2, !tbaa !13 ; 2 uses
  %.not.i.i303 = icmp eq i16 %i.tu, 0
  br i1 %.not.i.i303, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i302
  %i.tv = zext i16 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !14
  %i.ty = shl i32 %i.tx, 2
  %i.tz = zext i32 %i.ty to i64
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNK10reflection6Schema7objectsEv.exit298, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i302, %bb.bn
  %i.ua = phi i64 [ %i.tz, %bb.bn ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i302 ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit298 ]
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ua ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !14
  %i.ue = zext i32 %i.ud to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ue ; 5 uses
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !14
  %i.uh = sext i32 %i.ug to i64
  %i.ui = sub nsw i64 0, %i.uh
  %i.uj = getelementptr inbounds i8, ptr %i.uf, i64 %i.ui ; 4 uses
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !13 ; 3 uses
  %i.ul = icmp ugt i16 %i.uk, 8
  br i1 %i.ul, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305, label %.thread377

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305: ; preds = %bb.bo
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.un = load i16, ptr %i.um, align 2, !tbaa !13 ; 2 uses
  %.not.i.i306 = icmp eq i16 %i.un, 0
  br i1 %.not.i.i306, label %.thread377, label %_ZNK10reflection6Object9is_structEv.exit307

_ZNK10reflection6Object9is_structEv.exit307:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.uo
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !11
  %.not387 = icmp eq i8 %i.uq, 0
  br i1 %.not387, label %.thread377, label %bb.bp

bb.bp:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit307
  %i.ur = icmp ugt i16 %i.uk, 10
  br i1 %i.ur, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308, label %_ZNK10reflection6Object8bytesizeEv.exit313

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308: ; preds = %bb.bp
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 10
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !13 ; 2 uses
  %.not.i.i309 = icmp eq i16 %i.ut, 0
  br i1 %.not.i.i309, label %_ZNK10reflection6Object8minalignEv.exit310, label %bb.bq

bb.bq:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308
  %i.uu = zext i16 %i.ut to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !14
  br label %_ZNK10reflection6Object8minalignEv.exit310

_ZNK10reflection6Object8minalignEv.exit310:       ; preds = %bb.bq, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308
  %i.ux = phi i32 [ %i.uw, %bb.bq ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i308 ] ; 3 uses
  %i.uy = icmp ugt i16 %i.uk, 12
  br i1 %i.uy, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311, label %_ZNK10reflection6Object8bytesizeEv.exit313

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311: ; preds = %_ZNK10reflection6Object8minalignEv.exit310
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uj, i64 12
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !13 ; 2 uses
  %.not.i.i312 = icmp eq i16 %i.va, 0
  br i1 %.not.i.i312, label %_ZNK10reflection6Object8bytesizeEv.exit313, label %bb.br

bb.br:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311
  %i.vb = zext i16 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.vb
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !14
  %i.ve = sext i32 %i.vd to i64
  br label %_ZNK10reflection6Object8bytesizeEv.exit313

_ZNK10reflection6Object8bytesizeEv.exit313:       ; preds = %bb.bp, %bb.br, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311, %_ZNK10reflection6Object8minalignEv.exit310
  %i.vf = phi i32 [ %i.ux, %bb.br ], [ %i.ux, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311 ], [ %i.ux, %_ZNK10reflection6Object8minalignEv.exit310 ], [ 0, %bb.bp ]
  %i.vg = phi i64 [ %i.ve, %bb.br ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i311 ], [ 0, %_ZNK10reflection6Object8minalignEv.exit310 ], [ 0, %bb.bp ]
  %i.vh = sext i32 %i.vf to i64
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_110CopyInlineERNS_21FlatBufferBuilderImplILb0EEERKN10reflection5FieldERKNS_5TableEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.rn, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %i.vh, i64 noundef %i.vg)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit unwind label %bb.bs

bb.bs:                                            ; preds = %_ZNK10reflection6Object8bytesizeEv.exit313
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

.thread377:                                       ; preds = %bb.bo, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i305, %_ZNK10reflection6Object9is_structEv.exit307, %_ZNK10reflection4Type9base_typeEv.exit295, %_ZNK10reflection4Type9base_typeEv.exit295, %_ZNK10reflection4Type9base_typeEv.exit295
  br i1 %i.rt, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314, label %_ZNK10reflection5Field6offsetEv.exit316

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314: ; preds = %.thread377
  %i.vj = getelementptr inbounds nuw i8, ptr %i.rr, i64 10
  %i.vk = load i16, ptr %i.vj, align 2, !tbaa !13 ; 2 uses
  %.not.i.i315 = icmp eq i16 %i.vk, 0
  br i1 %.not.i.i315, label %_ZNK10reflection5Field6offsetEv.exit316, label %bb.bt

bb.bt:                                            ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314
  %i.vl = zext i16 %i.vk to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.vl
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit316

_ZNK10reflection5Field6offsetEv.exit316:          ; preds = %bb.bt, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314, %.thread377
  %i.vo = phi i16 [ %i.vn, %bb.bt ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i314 ], [ 0, %.thread377 ]
  %i.vp = add i64 %.0467, 1                       ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0359.0.lcssa, i64 %.0467
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !14 ; 2 uses
  %.not.i.i317 = icmp eq i32 %i.vr, 0
  br i1 %.not.i.i317, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNK10reflection5Field6offsetEv.exit316
  %i.vs = load i64, ptr %i.qz, align 8, !tbaa !75
  %i.vt = icmp ult i64 %i.vs, 4
  br i1 %i.vt, label %bb.bv, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318

bb.bv:                                            ; preds = %bb.bu
  store i64 4, ptr %i.qz, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318: ; preds = %bb.bv, %bb.bu
  %i.vu = load i32, ptr %i.ra, align 8, !tbaa !65 ; 3 uses
  %i.vv = sub i32 0, %i.vu
  %i.vw = and i32 %i.vv, 3                        ; 3 uses
  %i.vx = zext nneg i32 %i.vw to i64              ; 4 uses
  %.not.i.i.i.i.i319 = icmp eq i32 %i.vw, 0
  br i1 %.not.i.i.i.i.i319, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318
  %.pre4.i.i.i.i.i321 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70 ; 2 uses
  %i.vy = load ptr, ptr %i.rb, align 8, !tbaa !71
  %i.vz = ptrtoint ptr %.pre4.i.i.i.i.i321 to i64
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = sub i64 %i.vz, %i.wa
  %i.wc = and i64 %i.wb, 4294967295
  %i.wd = icmp samesign ult i64 %i.wc, %i.vx
  br i1 %i.wd, label %bb.bx, label %.lr.ph.preheader.i.i.i.i322

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.vx)
          to label %.noexc329 unwind label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248.thread

.noexc329:                                        ; preds = %bb.bx
  %.pre.i.i.i.i.i327 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70
  %.pre.i.i.i328 = load i32, ptr %i.ra, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i.i322

.lr.ph.preheader.i.i.i.i322:                      ; preds = %.noexc329, %bb.bw
  %i.we = phi i32 [ %i.vu, %bb.bw ], [ %.pre.i.i.i328, %.noexc329 ]
  %i.wf = phi ptr [ %.pre4.i.i.i.i.i321, %bb.bw ], [ %.pre.i.i.i.i.i327, %.noexc329 ]
  %i.wg = sub nsw i64 0, %i.vx
  %i.wh = getelementptr inbounds i8, ptr %i.wf, i64 %i.wg
  store ptr %i.wh, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70
  %i.wi = add i32 %i.we, %i.vw
  store i32 %i.wi, ptr %i.ra, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i323.epil

.lr.ph.i.i.i.i323.epil:                           ; preds = %.lr.ph.i.i.i.i323.epil, %.lr.ph.preheader.i.i.i.i322
  %.05.i.i.i.i324.epil = phi i64 [ %i.wl, %.lr.ph.i.i.i.i323.epil ], [ 0, %.lr.ph.preheader.i.i.i.i322 ] ; 2 uses
  %epil.iter789 = phi i64 [ %epil.iter789.next, %.lr.ph.i.i.i.i323.epil ], [ 0, %.lr.ph.preheader.i.i.i.i322 ]
  %i.wj = load ptr, ptr %.phi.trans.insert.i.i.i.i.i320, align 8, !tbaa !70
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.05.i.i.i.i324.epil
  store i8 0, ptr %i.wk, align 1, !tbaa !11
  %i.wl = add nuw i64 %.05.i.i.i.i324.epil, 1
  %epil.iter789.next = add i64 %epil.iter789, 1   ; 2 uses
  %epil.iter789.cmp.not = icmp eq i64 %epil.iter789.next, %i.vx
  br i1 %epil.iter789.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i, label %.lr.ph.i.i.i.i323.epil, !llvm.loop !149

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i323.epil
  %.pre.i.i326 = load i32, ptr %i.ra, align 8, !tbaa !65
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318
  %i.wm = phi i32 [ %.pre.i.i326, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i ], [ %i.vu, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i318 ]
  %reass.sub = sub i32 %i.wm, %i.vr
  %i.wn = add i32 %reass.sub, 4
  invoke void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S3_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext %i.vo, i32 noundef %i.wn, i32 noundef 0)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit unwind label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248.thread

_ZNK10reflection4Type9base_typeEv.exit295.thread: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i293, %_ZNK10reflection4Type9base_typeEv.exit295
  %i.wo = phi i64 [ %i.tc, %_ZNK10reflection4Type9base_typeEv.exit295 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i293 ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i290 ]
  %i.wp = and i64 %i.wo, 4294967295
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11flatbuffers11GetTypeSizeEN10reflection8BaseTypeEE5sizes, i64 %i.wp
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !16 ; 2 uses
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_110CopyInlineERNS_21FlatBufferBuilderImplILb0EEERKN10reflection5FieldERKNS_5TableEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.rn, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %i.wr, i64 noundef %i.wr)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit unwind label %bb.by

bb.by:                                            ; preds = %_ZNK10reflection4Type9base_typeEv.exit295.thread
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9AddOffsetIvEEvtNS_6OffsetIT_EE.exit: ; preds = %_ZNK10reflection5Field6offsetEv.exit288, %_ZNK10reflection5Field6offsetEv.exit316, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i, %_ZNK10reflection6Object8bytesizeEv.exit313, %_ZNK10reflection4Type9base_typeEv.exit295.thread, %_ZNK11flatbuffers5Table10CheckFieldEt.exit289
  %.2 = phi i64 [ %.0467, %_ZNK11flatbuffers5Table10CheckFieldEt.exit289 ], [ %i.vp, %_ZNK10reflection5Field6offsetEv.exit316 ], [ %.0467, %_ZNK10reflection6Object8bytesizeEv.exit313 ], [ %.0467, %_ZNK10reflection4Type9base_typeEv.exit295.thread ], [ %i.vp, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i ], [ %.0467, %_ZNK10reflection5Field6offsetEv.exit288 ]
  %i.wt = getelementptr inbounds nuw i8, ptr %.sroa.0335.0466, i64 4 ; 2 uses
  %i.wu = load i32, ptr %i.k, align 4, !tbaa !35, !noalias !156
  %i.wv = shl i32 %i.wu, 2
  %i.ww = zext i32 %i.wv to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ww
  %.not384 = icmp eq ptr %i.wt, %i.wx
  br i1 %.not384, label %._crit_edge469, label %bb.bj, !llvm.loop !150

_ZNK10reflection6Object9is_structEv.exit285:      ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i283
  %i.wy = zext i16 %i.rj to i64
  %i.wz = getelementptr inbounds nuw i8, ptr %2, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !11
  %.not385 = icmp eq i8 %i.xa, 0
  br i1 %.not385, label %_ZNK10reflection6Object9is_structEv.exit285.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit285
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !77
  %i.xd = zext i32 %i.xc to i64
  %.neg.i = mul nsw i64 %i.xd, -8
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !71
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 %.neg.i
  store ptr %i.xg, ptr %i.xe, align 8, !tbaa !71
  store i32 0, ptr %i.xb, align 8, !tbaa !77
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 0, ptr %i.xh, align 4, !tbaa !78
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.xj = load i32, ptr %i.xi, align 8, !tbaa !65
  br label %bb.cb

bb.ca:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit285.thread
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248

_ZNK10reflection6Object9is_structEv.exit285.thread: ; preds = %._crit_edge469, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i283, %_ZNK10reflection6Object9is_structEv.exit285
  %i.xl = invoke noundef i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.qx)
          to label %bb.cb unwind label %bb.ca

bb.cb:                                            ; preds = %_ZNK10reflection6Object9is_structEv.exit285.thread, %bb.bz
  %.sroa.0366.0 = phi i32 [ %i.xj, %bb.bz ], [ %i.xl, %_ZNK10reflection6Object9is_structEv.exit285.thread ]
  %.not.i.i.i331 = icmp eq ptr %.sroa.0359.0.lcssa, null
  br i1 %.not.i.i.i331, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.xm = ptrtoint ptr %.sroa.12363.0.lcssa to i64
  %i.xn = ptrtoint ptr %.sroa.0359.0.lcssa to i64
  %i.xo = sub i64 %i.xm, %i.xn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0.lcssa, i64 noundef %i.xo) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.cb, %bb.cc
  ret i32 %.sroa.0366.0

_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248: ; preds = %.loopexit, %.loopexit.split-lp, %bb.bs, %bb.by, %bb.ah, %bb.al, %bb.am, %bb.ad, %bb.ag, %.thread, %bb.ap, %bb.u, %bb.v, %bb.q, %bb.j, %bb.k, %bb.bi, %bb.ca
  %.sroa.12363.0438 = phi ptr [ %.sroa.12363.0.lcssa, %bb.ca ], [ %.sroa.12363.0.lcssa, %bb.bs ], [ %.sroa.12363.0.lcssa, %bb.bi ], [ %.sroa.12363.0451, %bb.am ], [ %.sroa.12363.0.lcssa, %bb.by ], [ %.sroa.12363.0451, %bb.ag ], [ %.sroa.12363.0451, %.thread ], [ %.sroa.12363.0451, %bb.ap ], [ %.sroa.12363.0451, %bb.u ], [ %.sroa.12363.0451, %bb.k ], [ %.sroa.12363.0451, %bb.ad ], [ %.sroa.12363.0451, %bb.j ], [ %.sroa.12363.0451, %bb.q ], [ %.sroa.12363.0451, %bb.v ], [ %.sroa.12363.0451, %bb.al ], [ %.sroa.12363.0451, %bb.ah ], [ %.sroa.9.0456, %.loopexit ], [ %.sroa.9.0456, %.loopexit.split-lp ]
  %.sroa.0359.0417 = phi ptr [ %.sroa.0359.0.lcssa, %bb.ca ], [ %.sroa.0359.0.lcssa, %bb.bs ], [ %.sroa.0359.0.lcssa, %bb.bi ], [ %.sroa.0359.0458, %bb.am ], [ %.sroa.0359.0.lcssa, %bb.by ], [ %.sroa.0359.0458, %bb.ag ], [ %.sroa.0359.0458, %.thread ], [ %.sroa.0359.0458, %bb.ap ], [ %.sroa.0359.0458, %bb.u ], [ %.sroa.0359.0458, %bb.k ], [ %.sroa.0359.0458, %bb.ad ], [ %.sroa.0359.0458, %bb.j ], [ %.sroa.0359.0458, %bb.q ], [ %.sroa.0359.0458, %bb.v ], [ %.sroa.0359.0458, %bb.al ], [ %.sroa.0359.0458, %bb.ah ], [ %.sroa.0359.0458, %.loopexit ], [ %.sroa.0359.0458, %.loopexit.split-lp ] ; 2 uses
  %.pn174.pn.pn.pn = phi { ptr, i32 } [ %i.xk, %bb.ca ], [ %i.vi, %bb.bs ], [ %i.rk, %bb.bi ], [ %.pn156615, %bb.am ], [ %i.ws, %bb.by ], [ %i.ke, %bb.ag ], [ %.pn159.pn598, %.thread ], [ %i.mc, %bb.ap ], [ %i.gd, %bb.u ], [ %i.da, %bb.k ], [ %i.jn, %bb.ad ], [ %i.cz, %bb.j ], [ %i.fa, %bb.q ], [ %i.ge, %bb.v ], [ %i.lo, %bb.al ], [ %i.la, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i332 = icmp eq ptr %.sroa.0359.0417, null
  br i1 %.not.i.i.i332, label %_ZNSt6vectorIjSaIjEED2Ev.exit333, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248.thread, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248
  %.sroa.12363.0437 = phi ptr [ %.sroa.12363.0.lcssa, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248.thread ], [ %.sroa.12363.0438, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248 ]
  %.sroa.0359.0421 = phi ptr [ %.sroa.0359.0.lcssa, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248.thread ], [ %.sroa.0359.0417, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248 ] ; 2 uses
  %.pn174.pn.pn.pn381 = phi { ptr, i32 } [ %i.td, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248.thread ], [ %.pn174.pn.pn.pn, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248 ]
  %i.xp = ptrtoint ptr %.sroa.12363.0437 to i64
  %i.xq = ptrtoint ptr %.sroa.0359.0421 to i64
  %i.xr = sub i64 %i.xp, %i.xq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0359.0421, i64 noundef %i.xr) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit333

_ZNSt6vectorIjSaIjEED2Ev.exit333:                 ; preds = %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248, %bb.cd
  %.pn174.pn.pn.pn382 = phi { ptr, i32 } [ %.pn174.pn.pn.pn, %_ZNSt6vectorIN11flatbuffers6OffsetIPKNS0_6StringEEESaIS5_EED2Ev.exit248 ], [ %.pn174.pn.pn.pn381, %bb.cd ]
  resume { ptr, i32 } %.pn174.pn.pn.pn382
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZN11flatbuffers12GetUnionTypeERKN10reflection6SchemaERKNS0_6ObjectERKNS0_5FieldERKNS_5TableE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !14
  %i.c = sext i32 %i.b to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !13
  %i.g = icmp ugt i16 %i.f, 6
  br i1 %i.g, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK10reflection6Schema5enumsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !13   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNK10reflection6Schema5enumsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  br label %_ZNK10reflection6Schema5enumsEv.exit

_ZNK10reflection6Schema5enumsEv.exit:             ; preds = %bb.a, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.a ]
  %i.p = load i32, ptr %2, align 4, !tbaa !14
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !13   ; 2 uses
  %.not.i.i.i14 = icmp ne i16 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i14)
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !13
  %i.af = icmp ugt i16 %i.ae, 8
  br i1 %i.af, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection4Type5indexEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK10reflection6Schema5enumsEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK10reflection4Type5indexEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = shl i32 %i.ak, 2
  %i.am = zext i32 %i.al to i64
  br label %_ZNK10reflection4Type5indexEv.exit

_ZNK10reflection4Type5indexEv.exit:               ; preds = %_ZNK10reflection6Schema5enumsEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.c
  %i.an = phi i64 [ %i.am, %bb.c ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 4294967292, %_ZNK10reflection6Schema5enumsEv.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !14
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar ; 3 uses
  %i.at = load i32, ptr %1, align 4, !tbaa !14
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !13
  %i.ay = icmp ugt i16 %i.ax, 6
  br i1 %i.ay, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15, label %_ZNK10reflection6Object6fieldsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15: ; preds = %_ZNK10reflection4Type5indexEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i16 = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i16, label %_ZNK10reflection6Object6fieldsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i15
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  br label %_ZNK10reflection6Object6fieldsEv.exit
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers12GetUnionTypeERKN10reflection6SchemaERKNS0_6ObjectERKNS0_5FieldERKNS_5TableE:bb.a
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gb ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !14
  %i.ge = sext i32 %i.gd to i64
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.gc, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !13
  %i.gi = icmp ugt i16 %i.gh, 6
  br i1 %i.gi, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i33
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 6
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.gk, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.gl = zext i16 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gl
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !16 ; 2 uses
  %i.go = icmp sgt i64 %i.gn, %i.fv
  %.neg.i.i = sext i1 %i.go to i32
  br label %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i

_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i: ; preds = %bb.p, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %.lr.ph.i.i33
  %.neg5.i.i = phi i32 [ %.neg.i.i, %bb.p ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i33 ]
  %i.gp = phi i64 [ %i.gn, %bb.p ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i33 ]
  %i.gq = icmp slt i64 %i.gp, %i.fv
  %.neg.i.neg.i.i = zext i1 %i.gq to i32
  %.neg6.i.i = add nsw i32 %.neg5.i.i, %.neg.i.neg.i.i ; 2 uses
  %i.gr = icmp slt i32 %.neg6.i.i, 0
  br i1 %i.gr, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i
  %.not.i.i36 = icmp eq i32 %.neg6.i.i, 0
  br i1 %.not.i.i36, label %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE11LookupByKeyIhEEPKS3_T_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gs = add nuw i64 %i.fx, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i
  %.117.i.i37 = phi i64 [ %i.gs, %bb.r ], [ %.01620.i.i35, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i ] ; 2 uses
  %.1.i.i38 = phi i64 [ %.021.i.i34, %bb.r ], [ %i.fx, %_ZN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE10KeyCompareIhEEiPKvS8_.exit.i ] ; 2 uses
  %i.gt = icmp ult i64 %.117.i.i37, %.1.i.i38
  br i1 %i.gt, label %.lr.ph.i.i33, label %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE11LookupByKeyIhEEPKS3_T_.exit, !llvm.loop !161

_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE11LookupByKeyIhEEPKS3_T_.exit: ; preds = %bb.q, %bb.s, %_ZN11flatbuffers9GetFieldIIhEET_RKNS_5TableERKN10reflection5FieldE.exit
  %.0.i39 = phi ptr [ null, %_ZN11flatbuffers9GetFieldIIhEET_RKNS_5TableERKN10reflection5FieldE.exit ], [ %i.gc, %bb.q ], [ null, %bb.s ] ; 3 uses
  %i.gu = load i32, ptr %0, align 4, !tbaa !14
  %i.gv = sext i32 %i.gu to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %0, i64 %i.gw ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !13
  %i.gz = icmp ugt i16 %i.gy, 4
  br i1 %i.gz, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40, label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40: ; preds = %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE11LookupByKeyIhEEPKS3_T_.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i41 = icmp eq i16 %i.hb, 0
  br i1 %.not.i.i.i41, label %_ZNK10reflection6Schema7objectsEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40
  %i.hc = zext i16 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !14
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf
  br label %_ZNK10reflection6Schema7objectsEv.exit

_ZNK10reflection6Schema7objectsEv.exit:           ; preds = %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE11LookupByKeyIhEEPKS3_T_.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40, %bb.t
  %i.hh = phi ptr [ %i.hg, %bb.t ], [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40 ], [ null, %_ZNK11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjE11LookupByKeyIhEEPKS3_T_.exit ]
  %i.hi = load i32, ptr %.0.i39, align 4, !tbaa !14
  %i.hj = sext i32 %i.hi to i64
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds i8, ptr %.0.i39, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 10
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !13 ; 2 uses
  %.not.i.i.i43 = icmp ne i16 %i.hn, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.ho = zext i16 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i39, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !14
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hr ; 3 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !14
  %i.hu = sext i32 %i.ht to i64
  %i.hv = sub nsw i64 0, %i.hu
  %i.hw = getelementptr inbounds i8, ptr %i.hs, i64 %i.hv ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !13
  %i.hy = icmp ugt i16 %i.hx, 8
  br i1 %i.hy, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i44, label %_ZNK10reflection4Type5indexEv.exit46

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i44: ; preds = %_ZNK10reflection6Schema7objectsEv.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !13 ; 2 uses
  %.not.i.i45 = icmp eq i16 %i.ia, 0
  br i1 %.not.i.i45, label %_ZNK10reflection4Type5indexEv.exit46, label %bb.u

bb.u:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i44
  %i.ib = zext i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !14
  %i.ie = shl i32 %i.id, 2
  %i.if = zext i32 %i.ie to i64
  br label %_ZNK10reflection4Type5indexEv.exit46

_ZNK10reflection4Type5indexEv.exit46:             ; preds = %_ZNK10reflection6Schema7objectsEv.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i44, %bb.u
  %i.ig = phi i64 [ %i.if, %bb.u ], [ 4294967292, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i44 ], [ 4294967292, %_ZNK10reflection6Schema7objectsEv.exit ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ig ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !14
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ik
  ret ptr %i.il

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.g
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load ptr, ptr %5, align 8, !tbaa !30    ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.br
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.v
  %i.ip = load i64, ptr %i.br, align 8, !tbaa !11
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.im
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.a, align 8, !tbaa !74
  %i.b = mul i64 %2, %1                           ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = icmp ult i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.d, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ 4, %bb.c ], [ %i.e, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add i64 %i.b, %i.j
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.l, 3                          ; 6 uses
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp samesign ugt i64 %i.m, %i.s
  br i1 %i.t, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.m)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ %i.i, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.v = phi ptr [ %.pre4.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.w = sub nsw i64 0, %i.m
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  store ptr %i.x, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.y = trunc nuw nsw i64 %i.m to i32
  %i.z = add i32 %i.u, %i.y
  store i32 %i.z, ptr %i.h, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.ac, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.aa = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.ab, align 1, !tbaa !11
  %i.ac = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.m
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph.i.i.i.epil, !llvm.loop !164

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.epil
  %.pre = load i64, ptr %i.d, align 8, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %i.ad = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.g, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i ]
  %i.ae = icmp ugt i64 %3, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i

bb.f:                                             ; preds = %.loopexit
  store i64 %3, ptr %i.d, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i: ; preds = %bb.f, %.loopexit
  %i.af = load i32, ptr %i.h, align 8, !tbaa !65  ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = add i64 %i.b, %i.ag
  %i.ai = sub i64 0, %i.ah
  %i.aj = add i64 %3, -1
  %i.ak = and i64 %i.aj, %i.ai                    ; 8 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71
  %i.an = ptrtoint ptr %.pre4.i.i.i to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = icmp ugt i64 %i.ak, %i.aq
  br i1 %i.ar, label %bb.h, label %.lr.ph.preheader.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ak)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h, %bb.g
  %i.as = phi i32 [ %i.af, %bb.g ], [ %.pre.i, %bb.h ]
  %i.at = phi ptr [ %.pre4.i.i.i, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.au = sub i64 0, %i.ak
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  store ptr %i.av, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.aw = trunc i64 %i.ak to i32
  %i.ax = add i32 %i.as, %i.aw
  store i32 %i.ax, ptr %i.h, align 8, !tbaa !65
  %xtraiter10 = and i64 %i.ak, 3                  ; 3 uses
  %i.ay = icmp ult i64 %i.ak, 4
  br i1 %i.ay, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter14 = and i64 %i.ak, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.05.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bk, %.lr.ph.i.i ] ; 5 uses
  %niter15 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter15.next.3, %.lr.ph.i.i ]
  %i.az = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.05.i.i
  store i8 0, ptr %i.ba, align 1, !tbaa !11
  %i.bb = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.05.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 0, ptr %i.bd, align 1, !tbaa !11
  %i.be = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.05.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 0, ptr %i.bg, align 1, !tbaa !11
  %i.bh = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.05.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  store i8 0, ptr %i.bj, align 1, !tbaa !11
  %i.bk = add nuw i64 %.05.i.i, 4                 ; 2 uses
  %niter15.next.3 = add i64 %niter15, 4           ; 2 uses
  %niter15.ncmp.3 = icmp eq i64 %niter15.next.3, %unroll_iter14
  br i1 %niter15.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod12.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod12.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.05.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bk, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod13 = icmp ne i64 %xtraiter10, 0
  tail call void @llvm.assume(i1 %lcmp.mod13)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.05.i.i.epil = phi i64 [ %i.bn, %.lr.ph.i.i.epil ], [ %.05.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter11 = phi i64 [ %epil.iter11.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bl = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.05.i.i.epil
  store i8 0, ptr %i.bm, align 1, !tbaa !11
  %i.bn = add nuw i64 %.05.i.i.epil, 1
  %epil.iter11.next = add i64 %epil.iter11, 1     ; 2 uses
  %epil.iter11.cmp.not = icmp eq i64 %epil.iter11.next, %xtraiter10
  br i1 %epil.iter11.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit, label %.lr.ph.i.i.epil, !llvm.loop !165

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignEmm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.a, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11flatbuffers12_GLOBAL__N_110CopyInlineERNS_21FlatBufferBuilderImplILb0EEERKN10reflection5FieldERKNS_5TableEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp ugt i64 %3, %i.b
  br i1 %i.c, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i

bb.b:                                             ; preds = %bb.a
  store i64 %3, ptr %i.a, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = add i64 %3, -1
  %i.i = and i64 %i.h, %i.g                       ; 8 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  br i1 %.not.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = ptrtoint ptr %.pre4.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp ugt i64 %i.i, %i.o
  br i1 %i.p, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.e, %bb.c ], [ %.pre.i, %bb.d ]
  %i.r = phi ptr [ %.pre4.i.i.i, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.s = sub i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.u = trunc i64 %i.i to i32
  %i.v = add i32 %i.q, %i.u
  store i32 %i.v, ptr %i.d, align 8, !tbaa !65
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.w = icmp ult i64 %i.i, 4
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.i, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.05.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ai, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.x = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.05.i.i
  store i8 0, ptr %i.y, align 1, !tbaa !11
  %i.z = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.05.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !11
  %i.ac = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.05.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 0, ptr %i.ae, align 1, !tbaa !11
  %i.af = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.05.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 0, ptr %i.ah, align 1, !tbaa !11
  %i.ai = add nuw i64 %.05.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.05.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ai, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
end_hunk_2
begin_hunk_3_@_ZN11flatbuffers12_GLOBAL__N_110CopyInlineERNS_21FlatBufferBuilderImplILb0EEERKN10reflection5FieldERKNS_5TableEmm:bb.a

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i
  %i.am = load i32, ptr %1, align 4, !tbaa !14
  %i.an = sext i32 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !13
  %i.ar = icmp ugt i16 %i.aq, 10
  br i1 %i.ar, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK10reflection5Field6offsetEv.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.at = load i16, ptr %i.as, align 2, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.i, label %_ZNK10reflection5Field6offsetEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit

_ZNK10reflection5Field6offsetEv.exit:             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.e
  %i.ax = phi i16 [ %i.aw, %bb.e ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit ] ; 2 uses
  %i.ay = load i32, ptr %2, align 4, !tbaa !14
  %i.az = sext i32 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !13
  %i.bd = icmp ult i16 %i.ax, %i.bc
  br i1 %i.bd, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %_ZNK10reflection5Field6offsetEv.exit
  %i.be = zext i16 %i.ax to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !13
  %.fr.i = freeze i16 %i.bg                       ; 2 uses
  %i.bh = zext i16 %.fr.i to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %i.bh
  %.not.i = icmp eq i16 %.fr.i, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i, label %_ZNK11flatbuffers5Table9GetStructIPKhEET_t.exit

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, %_ZNK10reflection5Field6offsetEv.exit
  br label %_ZNK11flatbuffers5Table9GetStructIPKhEET_t.exit

_ZNK11flatbuffers5Table9GetStructIPKhEET_t.exit:  ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i
  %i.bj = phi ptr [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i ], [ %i.bi, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i ]
  %.not.i.i8 = icmp eq i64 %4, 0
  br i1 %.not.i.i8, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK11flatbuffers5Table9GetStructIPKhEET_t.exit
  %.pre4.i.i.i10 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.bm = ptrtoint ptr %.pre4.i.i.i10 to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = icmp ugt i64 %4, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %4)
  %.pre.i.i.i11 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.br = phi ptr [ %.pre4.i.i.i10, %bb.f ], [ %.pre.i.i.i11, %bb.g ]
  %i.bs = sub i64 0, %4
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.bu = trunc i64 %4 to i32
  %i.bv = load i32, ptr %i.d, align 8, !tbaa !65
  %i.bw = add i32 %i.bv, %i.bu
  store i32 %i.bw, ptr %i.d, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr align 1 %i.bj, i64 %4, i1 false)
  %.pre = load i32, ptr %1, align 4, !tbaa !14
  %.pre15 = sext i32 %.pre to i64
  %.pre16 = sub nsw i64 0, %.pre15
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit: ; preds = %_ZNK11flatbuffers5Table9GetStructIPKhEET_t.exit, %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i
  %.pre-phi17 = phi i64 [ %i.ao, %_ZNK11flatbuffers5Table9GetStructIPKhEET_t.exit ], [ %.pre16, %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i ]
  %i.bx = getelementptr inbounds i8, ptr %1, i64 %.pre-phi17 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !13
  %i.bz = icmp ugt i16 %i.by, 10
  br i1 %i.bz, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12, label %_ZNK10reflection5Field6offsetEv.exit14

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !13 ; 2 uses
  %.not.i.i13 = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i13, label %_ZNK10reflection5Field6offsetEv.exit14, label %bb.h

bb.h:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !13
  br label %_ZNK10reflection5Field6offsetEv.exit14

_ZNK10reflection5Field6offsetEv.exit14:           ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12, %bb.h
  %i.cf = phi i16 [ %i.ce, %bb.h ], [ 0, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i12 ], [ 0, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit ] ; 3 uses
  %i.cg = load i32, ptr %i.d, align 8, !tbaa !65
  %i.ch = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !70
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !71 ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = and i64 %i.cm, 4294967288
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.i, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

bb.i:                                             ; preds = %_ZNK10reflection5Field6offsetEv.exit14
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i = load ptr, ptr %i.ci, align 8, !tbaa !71
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i: ; preds = %bb.i, %_ZNK10reflection5Field6offsetEv.exit14
  %i.cp = phi ptr [ %i.cj, %_ZNK10reflection5Field6offsetEv.exit14 ], [ %.pre.i.i, %bb.i ]
  %.sroa.4.0.insert.ext.i = zext i16 %i.cf to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.cg to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.cp, align 4
  %i.cq = load ptr, ptr %i.ci, align 8, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !71
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !77
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !77
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !78
  %i.cx = icmp ugt i16 %i.cf, %i.cw
  br i1 %i.cx, label %bb.j, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.j:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %i.cf, ptr %i.cv, align 4, !tbaa !78
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i64 4, ptr %i.a, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %i.f = sub i32 0, %i.e
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp samesign ult i64 %i.n, %i.h
  br i1 %i.o, label %bb.d, label %.lr.ph.preheader.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.e, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.q = phi ptr [ %.pre4.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i, %bb.d ]
  %i.r = sub nsw i64 0, %i.h
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.t = add i32 %i.p, %i.g
  store i32 %i.t, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.w, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.u = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.v, align 1, !tbaa !11
  %i.w = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.h
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !167

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  %i.z = ptrtoint ptr %.pre4.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = and i64 %i.ab, 4294967292
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !71
  %.pre44 = ptrtoint ptr %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  %.pre-phi = phi i64 [ %.pre44, %bb.e ], [ %i.aa, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ]
  %i.ae = phi ptr [ %.pre.i.i.i, %bb.e ], [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ]
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  store ptr %i.af, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.ag = load i32, ptr %i.d, align 8, !tbaa !65
  %i.ah = add i32 %i.ag, 4
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !65
  store i32 0, ptr %i.af, align 4, !tbaa !14
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !65  ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !78
  %i.al = add i16 %i.ak, 2
  %.sroa.speculated = tail call i16 @llvm.umax.i16(i16 %i.al, i16 4) ; 3 uses
  store i16 %.sroa.speculated, ptr %i.aj, align 4, !tbaa !78
  %i.am = zext i16 %.sroa.speculated to i64       ; 4 uses
  %i.an = ptrtoint ptr %i.af to i64
  %i.ao = sub i64 %i.an, %.pre-phi
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = icmp samesign ult i64 %i.ap, %i.am
  br i1 %i.aq, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.am)
  %.pre.i.i30 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre43 = load i32, ptr %i.d, align 8, !tbaa !65
  br label %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit

_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit: ; preds = %bb.f, %bb.g
  %i.ar = phi i32 [ %i.ai, %bb.f ], [ %.pre43, %bb.g ]
  %i.as = phi ptr [ %i.af, %bb.f ], [ %.pre.i.i30, %bb.g ]
  %i.at = sub nsw i64 0, %i.am
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at ; 2 uses
  store ptr %i.au, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.av = zext i16 %.sroa.speculated to i32
  %i.aw = add i32 %i.ar, %i.av
  store i32 %i.aw, ptr %i.d, align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.au, i8 0, i64 %i.am, i1 false)
  %i.ax = sub i32 %i.ai, %1
  %i.ay = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = trunc i32 %i.ax to i16
  store i16 %i.ba, ptr %i.az, align 2, !tbaa !13
  %i.bb = load i16, ptr %i.aj, align 4, !tbaa !78
  store i16 %i.bb, ptr %i.ay, align 2, !tbaa !13
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !71  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !77 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.neg = mul nsw i64 %i.bf, -8
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %.neg ; 6 uses
  %.not41 = icmp eq i32 %i.be, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit
  store ptr %i.bg, ptr %i.x, align 8, !tbaa !71
  store i32 0, ptr %i.bd, align 8, !tbaa !77
  store i16 0, ptr %i.aj, align 4, !tbaa !78
  %i.bh = load i16, ptr %i.ay, align 2, !tbaa !13 ; 2 uses
  %i.bi = load i32, ptr %i.d, align 8, !tbaa !65  ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !170, !range !81, !noundef !59
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.h, label %.loopexit.thread

.lr.ph:                                           ; preds = %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit, %.lr.ph
  %.02837 = phi ptr [ %i.bt, %.lr.ph ], [ %i.bg, %_ZN11flatbuffers15vector_downwardIjE8fill_bigEm.exit ] ; 3 uses
  %i.bm = load i32, ptr %.02837, align 4, !tbaa !172
  %i.bn = sub i32 %i.ai, %i.bm
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.02837, i64 4
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !173
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.br
  store i16 %i.bo, ptr %i.bs, align 2, !tbaa !13
  %i.bt = getelementptr inbounds nuw i8, ptr %.02837, i64 8 ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.bc
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !168

bb.h:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !82 ; 3 uses
  %i.bx = icmp ult ptr %i.bw, %i.bg
  br i1 %i.bx, label %.lr.ph40, label %.loopexit.thread

.lr.ph40:                                         ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !174
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  %i.cd = zext i16 %i.bh to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph40, %bb.k
  %.02738 = phi ptr [ %i.bw, %.lr.ph40 ], [ %i.ck, %bb.k ] ; 2 uses
  %i.ce = load i32, ptr %.02738, align 4, !tbaa !14 ; 4 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add i64 %i.bz, %i.cf
  %i.ch = sub i64 0, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.cc, i64 %i.ch ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !13
  %.not = icmp eq i16 %i.bh, %i.cj
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ci, ptr nonnull %i.ay, i64 %i.cd)
  %.not29 = icmp eq i32 %bcmp, 0
  br i1 %.not29, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.02738, i64 4 ; 2 uses
  %i.cl = icmp ult ptr %i.ck, %i.bg
  br i1 %i.cl, label %bb.i, label %.loopexit.thread, !llvm.loop !169

.loopexit:                                        ; preds = %bb.j
  %i.cm = sub i32 %i.bi, %i.ai
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cn ; 2 uses
  store ptr %i.co, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !65
  %i.cp = icmp eq i32 %i.ce, %i.ai
  br i1 %i.cp, label %.loopexit.thread, label %bb.m

.loopexit.thread:                                 ; preds = %bb.k, %bb.h, %._crit_edge, %.loopexit
  %.054 = phi i32 [ %i.ce, %.loopexit ], [ %i.bi, %._crit_edge ], [ %i.bi, %bb.h ], [ %i.bi, %bb.k ]
  %i.cq = phi i32 [ %i.ai, %.loopexit ], [ %i.bi, %._crit_edge ], [ %i.bi, %bb.h ], [ %i.bi, %bb.k ]
  %i.cr = phi ptr [ %i.co, %.loopexit ], [ %i.ay, %._crit_edge ], [ %i.ay, %bb.h ], [ %i.ay, %bb.k ]
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.bg to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = and i64 %i.cu, 4294967292
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.l, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit

bb.l:                                             ; preds = %.loopexit.thread
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 4)
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !71
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit: ; preds = %.loopexit.thread, %bb.l
  %i.cx = phi ptr [ %i.bg, %.loopexit.thread ], [ %.pre.i, %bb.l ] ; 2 uses
  store i32 %i.cq, ptr %i.cx, align 4, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.cy, ptr %i.x, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit, %.loopexit
  %.053 = phi i32 [ %.054, %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallIjEEvRKT_.exit ], [ %i.ce, %.loopexit ]
  %i.cz = zext i32 %i.ai to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.db = load i64, ptr %i.da, align 8, !tbaa !174
  %i.dc = add i64 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !82
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !83
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg
  %i.di = sub i64 0, %i.dc
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  %i.dk = sub nsw i32 %.053, %i.ai
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.dl, align 8, !tbaa !74
  ret i32 %i.ai
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11flatbuffers6VerifyERKN10reflection6SchemaERKNS0_6ObjectEPKhmjj(ptr noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %"class.flatbuffers::VerifierTemplate", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %2, ptr %6, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %4, ptr %i.b, align 8, !tbaa !14
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a

bb.al:                                            ; preds = %bb.ak
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !47
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !48
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE18CreateSharedStringEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.flatbuffers::Offset.11", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 7 uses
  %i.d = ptrtoint ptr %0 to i64
  store i64 %i.d, ptr %i.c, align 8, !tbaa !232
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !233
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.f, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.e, ptr %i.g, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !235
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !104
  store ptr %i.c, ptr %i.a, align 8, !tbaa !231
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2)
  %i.l = load i32, ptr %i.j, align 8, !tbaa !65   ; 3 uses
  store i32 %i.l, ptr %3, align 4
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !231  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !234  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !106  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 3 uses
  %i.w = zext i32 %i.l to i64                     ; 2 uses
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !33  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.d ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !108
  %i.ad = zext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ah)
  %i.ai = zext i32 %.sroa.speculated.i.i.i.i.i to i64
  %i.aj = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ag, ptr noundef nonnull readonly %i.z, i64 noundef %i.ai) #24 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = icmp ult i32 %i.ah, %i.aa
  %i.am = icmp slt i32 %i.aj, 0
  %i.an = select i1 %i.ak, i1 %i.al, i1 %i.am     ; 2 uses
  %.19.i.i.i = select i1 %i.an, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.an, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %bb.d, !llvm.loop !230

_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %bb.d
  %i.ao = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.ao, label %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit.thread, label %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit

_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit: ; preds = %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !108
  %i.ar = zext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.v, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.at, align 4, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.aa)
  %i.aw = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.ax = tail call i32 @memcmp(ptr noundef nonnull readonly %i.z, ptr noundef nonnull readonly %i.au, i64 noundef %i.aw) #24 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = icmp ult i32 %i.aa, %i.av
  %i.ba = icmp slt i32 %i.ax, 0
  %i.bb = select i1 %i.ay, i1 %i.az, i1 %i.ba
  br i1 %i.bb, label %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit
  %i.bc = zext i32 %i.k to i64
  %i.bd = sub nsw i64 %i.w, %i.bc                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !70
  %i.bh = trunc i64 %i.bd to i32
  %i.bi = sub i32 %i.l, %i.bh
  store i32 %i.bi, ptr %i.j, align 8, !tbaa !65
  br label %bb.f

_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, %bb.c, %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit
  %i.bj = call { ptr, i8 } @_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit.thread, %bb.e
  %.sroa.06.0.in = phi ptr [ %i.ap, %bb.e ], [ %3, %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE4findERKS3_.exit.thread ]
  %.sroa.06.0 = load i32, ptr %.sroa.06.0.in, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.neg = xor i64 %2, -1
  %i.a = icmp eq i64 %2, -1
  br i1 %i.a, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.c, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.b, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.neg17 = sub i64 %.neg, %i.g
  %i.h = and i64 %.neg17, 3                       ; 6 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp samesign ugt i64 %i.h, %i.n
  br i1 %i.o, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.p = phi i32 [ %i.f, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.q = phi ptr [ %.pre4.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.r = sub nsw i64 0, %i.h
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.t = trunc nuw nsw i64 %i.h to i32
  %i.u = add i32 %i.p, %i.t
  store i32 %i.u, ptr %i.e, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !11
  %i.x = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.h
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !236

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit: ; preds = %.lr.ph.i.i.i.epil, %bb.a, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 13 uses
  %.pre4.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.aa = ptrtoint ptr %.pre4.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1)
  %.pre.i.i4 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit
  %i.af = phi ptr [ %.pre4.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE8PreAlignIjEEvm.exit ], [ %.pre.i.i4, %bb.f ]
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -1 ; 2 uses
  store ptr %i.ag, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !65
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !65
  store i8 0, ptr %i.ag, align 1, !tbaa !11
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.al = ptrtoint ptr %.pre4.i.i.i to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp ugt i64 %2, %i.ao
  br i1 %i.ap, label %bb.h, label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %2)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i

_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %.pre4.i.i.i, %bb.g ], [ %.pre.i.i.i, %bb.h ]
  %i.ar = sub i64 0, %2
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  %i.at = trunc i64 %2 to i32
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !65
  %i.av = add i32 %i.au, %i.at
  store i32 %i.av, ptr %i.ah, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit: ; preds = %.lr.ph.preheader.i, %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !75
  %i.ay = icmp ult i64 %i.ax, 4
  br i1 %i.ay, label %bb.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i5

bb.i:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  store i64 4, ptr %i.aw, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i5

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i5: ; preds = %bb.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9PushBytesEPKhm.exit
  %i.az = load i32, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.ba = sub i32 0, %i.az
  %i.bb = and i32 %i.ba, 3                        ; 3 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 4 uses
  %.not.i.i.i.i6 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i6, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i5
  %.pre4.i.i.i.i8 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70 ; 2 uses
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.be = ptrtoint ptr %.pre4.i.i.i.i8 to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp samesign ult i64 %i.bh, %i.bc
  br i1 %i.bi, label %bb.k, label %.lr.ph.preheader.i.i.i9

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.bc)
  %.pre.i.i.i.i15 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  %.pre.i.i16 = load i32, ptr %i.ah, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i9

.lr.ph.preheader.i.i.i9:                          ; preds = %bb.k, %bb.j
  %i.bj = phi i32 [ %i.az, %bb.j ], [ %.pre.i.i16, %bb.k ]
  %i.bk = phi ptr [ %.pre4.i.i.i.i8, %bb.j ], [ %.pre.i.i.i.i15, %bb.k ]
  %i.bl = sub nsw i64 0, %i.bc
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  store ptr %i.bm, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  %i.bn = add i32 %i.bj, %i.bb
  store i32 %i.bn, ptr %i.ah, align 8, !tbaa !65
  br label %.lr.ph.i.i.i10.epil

.lr.ph.i.i.i10.epil:                              ; preds = %.lr.ph.i.i.i10.epil, %.lr.ph.preheader.i.i.i9
  %.05.i.i.i11.epil = phi i64 [ %i.bq, %.lr.ph.i.i.i10.epil ], [ 0, %.lr.ph.preheader.i.i.i9 ] ; 2 uses
  %epil.iter23 = phi i64 [ %epil.iter23.next, %.lr.ph.i.i.i10.epil ], [ 0, %.lr.ph.preheader.i.i.i9 ]
  %i.bo = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.05.i.i.i11.epil
  store i8 0, ptr %i.bp, align 1, !tbaa !11
  %i.bq = add nuw i64 %.05.i.i.i11.epil, 1
  %epil.iter23.next = add i64 %epil.iter23, 1     ; 2 uses
  %epil.iter23.cmp.not = icmp eq i64 %epil.iter23.next, %i.bc
  br i1 %epil.iter23.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i10.epil, !llvm.loop !237

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.i.i.i10.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i5
  %.pre4.i.i.i13 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70 ; 2 uses
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.bs = ptrtoint ptr %.pre4.i.i.i13 to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = and i64 %i.bu, 4294967292
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.l, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.l:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i14 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.l
  %i.bx = phi ptr [ %.pre4.i.i.i13, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i14, %bb.l ]
  %i.by = trunc i64 %2 to i32
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 2 uses
  store ptr %i.bz, ptr %.phi.trans.insert.i.i, align 8, !tbaa !70
  %i.ca = load i32, ptr %i.ah, align 8, !tbaa !65
  %i.cb = add i32 %i.ca, 4
  store i32 %i.cb, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE24_M_get_insert_unique_posERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.a, 1        ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.e
  br i1 %or.cond.i, label %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !108
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 2 uses
  %i.o = sub nsw i64 0, %i.i
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !108
  %i.r = zext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.v = load i32, ptr %i.p, align 4, !tbaa !33   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load i32, ptr %i.t, align 4, !tbaa !33   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.v)
  %i.y = zext i32 %.sroa.speculated.i.i.i to i64
  %i.z = tail call i32 @memcmp(ptr noundef nonnull readonly %i.u, ptr noundef nonnull readonly %i.w, i64 noundef %i.y) #24 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = icmp ult i32 %i.v, %i.x
  %i.ac = icmp slt i32 %i.z, 0
  %i.ad = select i1 %i.aa, i1 %i.ab, i1 %i.ac
  br label %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit

_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit: ; preds = %bb.b, %bb.c
  %i.ae = phi i1 [ %i.ad, %bb.c ], [ true, %bb.b ]
  %i.af = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !14
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !104
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit
  %.sroa.09.0 = phi ptr [ %i.af, %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit ], [ %i.b, %bb.a ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE10_M_insert_IRKS3_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE24_M_get_insert_unique_posERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02123 = load ptr, ptr %i.a, align 8, !tbaa !109 ; 2 uses
  %.not24 = icmp eq ptr %.02123, null
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !106    ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !108
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 2 uses
  %i.k = sub nsw i64 0, %i.e
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.l, align 4, !tbaa !33   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.02125 = phi ptr [ %.02123, %.lr.ph ], [ %.021, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02125, i64 32
  %i.p = load i32, ptr %i.o, align 4, !tbaa !108
  %i.q = zext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.s, align 4, !tbaa !33   ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.n)
  %i.v = zext i32 %.sroa.speculated.i.i to i64
  %i.w = tail call i32 @memcmp(ptr noundef nonnull readonly %i.m, ptr noundef nonnull readonly %i.t, i64 noundef %i.v) #24 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ult i32 %i.n, %i.u
  %i.z = icmp slt i32 %i.w, 0
  %i.aa = select i1 %i.x, i1 %i.y, i1 %i.z        ; 2 uses
  %.in.v = select i1 %i.aa, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02125, i64 %.in.v
  %.021 = load ptr, ptr %.in, align 8, !tbaa !109 ; 2 uses
  %.not = icmp eq ptr %.021, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !238

._crit_edge:                                      ; preds = %bb.b
  br i1 %i.aa, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.020.lcssa30 = phi ptr [ %.02125, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !103
  %i.ad = icmp eq ptr %.020.lcssa30, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.ae = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.020.lcssa29 = phi ptr [ %.020.lcssa30, %bb.c ], [ %.02125, %._crit_edge ]
  %.sroa.06.0 = phi ptr [ %i.ae, %bb.c ], [ %.02125, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 32
  %i.ag = load ptr, ptr %0, align 8, !tbaa !106   ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !108
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !83
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = sub nsw i64 0, %i.ai
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %1, align 4, !tbaa !108
  %i.ar = zext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !33 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !33 ; 2 uses
  %.sroa.speculated.i.i5 = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 %i.av)
  %i.ay = zext i32 %.sroa.speculated.i.i5 to i64
  %i.az = tail call i32 @memcmp(ptr noundef nonnull readonly %i.au, ptr noundef nonnull readonly %i.aw, i64 noundef %i.ay) #24 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = icmp ult i32 %i.av, %i.ax
  %i.bc = icmp slt i32 %i.az, 0
  %i.bd = select i1 %i.ba, i1 %i.bb, i1 %i.bc     ; 2 uses
  %spec.select = select i1 %i.bd, ptr null, ptr %.sroa.06.0
  %spec.select22 = select i1 %i.bd, ptr %.020.lcssa29, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.thread
  %.sroa.019.0 = phi ptr [ %spec.select, %bb.d ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select22, %bb.d ], [ %.020.lcssa30, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIPKNS_6StringEEENS_6OffsetINS_6VectorINS6_IT_EEjEEEEPKS9_m(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %2, i64 noundef 4, i64 noundef 4)
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

bb.b:                                             ; preds = %._crit_edge
  store i64 4, ptr %i.b, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i: ; preds = %bb.b, %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = sub i32 0, %i.f
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  br i1 %.not.i.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %.lr.ph.preheader.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.f, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.e, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i
  %.05.i.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !11
  %i.x = add nuw i64 %.05.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.i
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !239

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.aa = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 4294967292
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, %bb.e
  %i.af = phi ptr [ %.pre4.i.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i ], [ %.pre.i.i.i.i, %bb.e ]
  %i.ag = trunc i64 %2 to i32
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  store ptr %i.ah, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !65
  %i.aj = add i32 %i.ai, 4
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !65
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !14
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !65
  ret i32 %i.ak

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.al, %.lr.ph ], [ %2, %bb.a ]
  %i.al = add i64 %.07, -1                        ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 4, !tbaa !14
  %i.an = tail call noundef i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIPKNS_6StringENS_6OffsetEEEjT0_IT_E(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %.sroa.0.0.copyload) ; 0 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !240
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIPKNS_6StringENS_6OffsetEEEjT0_IT_E(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i64 4, ptr %i.a, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %i.f = sub i32 0, %i.e
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1, label %bb.c

bb.c:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp samesign ult i64 %i.n, %i.h
  br i1 %i.o, label %bb.d, label %.lr.ph.preheader.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.e, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.q = phi ptr [ %.pre4.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i, %bb.d ]
  %i.r = sub nsw i64 0, %i.h
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.t = add i32 %i.p, %i.g
  store i32 %i.t, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.w, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.u = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.v, align 1, !tbaa !11
  %i.w = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.h
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !241

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit: ; preds = %.lr.ph.i.i.i.epil
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !65 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !75
  %i.x = icmp ult i64 %.pre, 4
  br i1 %i.x, label %bb.e, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit
  store i64 4, ptr %i.a, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, %bb.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit
  %i.y = phi i32 [ %.pre.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit ], [ %.pre.i, %bb.e ], [ %i.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i ] ; 3 uses
  %i.z = sub i32 0, %i.y
  %i.aa = and i32 %i.z, 3                         ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 4 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i2, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i.i4 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.ae = ptrtoint ptr %.pre4.i.i.i.i4 to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = icmp samesign ult i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.g, label %.lr.ph.preheader.i.i.i5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ab)
  %.pre.i.i.i.i9 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i10 = load i32, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i5

.lr.ph.preheader.i.i.i5:                          ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %i.y, %bb.f ], [ %.pre.i.i10, %bb.g ]
  %i.ak = phi ptr [ %.pre4.i.i.i.i4, %bb.f ], [ %.pre.i.i.i.i9, %bb.g ]
  %i.al = sub nsw i64 0, %i.ab
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  store ptr %i.am, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.an = add i32 %i.aj, %i.aa
  store i32 %i.an, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.i.i.i6.epil

.lr.ph.i.i.i6.epil:                               ; preds = %.lr.ph.i.i.i6.epil, %.lr.ph.preheader.i.i.i5
  %.05.i.i.i7.epil = phi i64 [ %i.aq, %.lr.ph.i.i.i6.epil ], [ 0, %.lr.ph.preheader.i.i.i5 ] ; 2 uses
  %epil.iter17 = phi i64 [ %epil.iter17.next, %.lr.ph.i.i.i6.epil ], [ 0, %.lr.ph.preheader.i.i.i5 ]
  %i.ao = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.05.i.i.i7.epil
  store i8 0, ptr %i.ap, align 1, !tbaa !11
  %i.aq = add nuw i64 %.05.i.i.i7.epil, 1
  %epil.iter17.next = add i64 %epil.iter17, 1     ; 2 uses
  %epil.iter17.cmp.not = icmp eq i64 %epil.iter17.next, %i.ab
  br i1 %epil.iter17.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i6.epil, !llvm.loop !242

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.i.i.i6.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  %i.at = ptrtoint ptr %.pre4.i.i.i to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = and i64 %i.av, 4294967292
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.h:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.h
  %i.ay = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.h ]
  %reass.sub = sub i32 %i.y, %1
  %i.az = add i32 %reass.sub, 4
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 2 uses
  store ptr %i.ba, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.bb = load i32, ptr %i.d, align 8, !tbaa !65
  %i.bc = add i32 %i.bb, 4
  store i32 %i.bc, ptr %i.d, align 8, !tbaa !65
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !14
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !65
  ret i32 %i.bd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIPKNS_5TableEEENS_6OffsetINS_6VectorINS6_IT_EEjEEEEPKS9_m(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %2, i64 noundef 4, i64 noundef 4)
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

bb.b:                                             ; preds = %._crit_edge
  store i64 4, ptr %i.b, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i: ; preds = %bb.b, %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !65   ; 2 uses
  %i.g = sub i32 0, %i.f
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  br i1 %.not.i.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %.lr.ph.preheader.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.f, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.e, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i
  %.05.i.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !11
  %i.x = add nuw i64 %.05.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.i
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !243

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71
  %i.aa = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 4294967292
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, %bb.e
  %i.af = phi ptr [ %.pre4.i.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i ], [ %.pre.i.i.i.i, %bb.e ]
  %i.ag = trunc i64 %2 to i32
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  store ptr %i.ah, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !70
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !65
  %i.aj = add i32 %i.ai, 4
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !65
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !14
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !65
  ret i32 %i.ak

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.al, %.lr.ph ], [ %2, %bb.a ]
  %i.al = add i64 %.07, -1                        ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 4, !tbaa !14
  %i.an = tail call noundef i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIPKNS_5TableENS_6OffsetEEEjT0_IT_E(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %.sroa.0.0.copyload) ; 0 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !244
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIPKNS_5TableENS_6OffsetEEEjT0_IT_E(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i64 4, ptr %i.a, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !65   ; 3 uses
  %i.f = sub i32 0, %i.e
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1, label %bb.c

bb.c:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp samesign ult i64 %i.n, %i.h
  br i1 %i.o, label %bb.d, label %.lr.ph.preheader.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.e, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.q = phi ptr [ %.pre4.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i, %bb.d ]
  %i.r = sub nsw i64 0, %i.h
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.t = add i32 %i.p, %i.g
  store i32 %i.t, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.w, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.u = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.v, align 1, !tbaa !11
  %i.w = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.h
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !245

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit: ; preds = %.lr.ph.i.i.i.epil
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !65 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !75
  %i.x = icmp ult i64 %.pre, 4
  br i1 %i.x, label %bb.e, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit
  store i64 4, ptr %i.a, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, %bb.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit
  %i.y = phi i32 [ %.pre.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit ], [ %.pre.i, %bb.e ], [ %i.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i ] ; 3 uses
  %i.z = sub i32 0, %i.y
  %i.aa = and i32 %i.z, 3                         ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 4 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i2, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i.i4 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.ae = ptrtoint ptr %.pre4.i.i.i.i4 to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = icmp samesign ult i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.g, label %.lr.ph.preheader.i.i.i5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ab)
  %.pre.i.i.i.i9 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i10 = load i32, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i5

.lr.ph.preheader.i.i.i5:                          ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %i.y, %bb.f ], [ %.pre.i.i10, %bb.g ]
  %i.ak = phi ptr [ %.pre4.i.i.i.i4, %bb.f ], [ %.pre.i.i.i.i9, %bb.g ]
  %i.al = sub nsw i64 0, %i.ab
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  store ptr %i.am, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.an = add i32 %i.aj, %i.aa
  store i32 %i.an, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.i.i.i6.epil

.lr.ph.i.i.i6.epil:                               ; preds = %.lr.ph.i.i.i6.epil, %.lr.ph.preheader.i.i.i5
  %.05.i.i.i7.epil = phi i64 [ %i.aq, %.lr.ph.i.i.i6.epil ], [ 0, %.lr.ph.preheader.i.i.i5 ] ; 2 uses
  %epil.iter17 = phi i64 [ %epil.iter17.next, %.lr.ph.i.i.i6.epil ], [ 0, %.lr.ph.preheader.i.i.i5 ]
  %i.ao = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.05.i.i.i7.epil
  store i8 0, ptr %i.ap, align 1, !tbaa !11
  %i.aq = add nuw i64 %.05.i.i.i7.epil, 1
  %epil.iter17.next = add i64 %epil.iter17, 1     ; 2 uses
  %epil.iter17.cmp.not = icmp eq i64 %epil.iter17.next, %i.ab
  br i1 %epil.iter17.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i6.epil, !llvm.loop !246

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.i.i.i6.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  %i.at = ptrtoint ptr %.pre4.i.i.i to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = and i64 %i.av, 4294967292
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.h:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.h
  %i.ay = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.h ]
  %reass.sub = sub i32 %i.y, %1
  %i.az = add i32 %reass.sub, 4
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 2 uses
  store ptr %i.ba, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.bb = load i32, ptr %i.d, align 8, !tbaa !65
  %i.bc = add i32 %i.bb, 4
  store i32 %i.bc, ptr %i.d, align 8, !tbaa !65
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !14
  %i.bd = load i32, ptr %i.d, align 8, !tbaa !65
  ret i32 %i.bd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S3_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ne i32 %2, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load i8, ptr %i.b, align 8, !range !81
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75
  %i.g = icmp ult i64 %i.f, 4
  br i1 %i.g, label %bb.c, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.e, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  %i.j = sub i32 0, %i.i
  %i.k = and i32 %i.j, 3                          ; 3 uses
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.o = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp samesign ult i64 %i.r, %i.l
  br i1 %i.s, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.l)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.i, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre4.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.v = sub nsw i64 0, %i.l
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store ptr %i.w, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.x = add i32 %i.t, %i.k
  store i32 %i.x, ptr %i.h, align 8, !tbaa !65
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.aa, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.y = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.z, align 1, !tbaa !11
  %i.aa = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.l
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !247

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  %i.ad = ptrtoint ptr %.pre4.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = and i64 %i.af, 4294967292
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  %.pre7 = ptrtoint ptr %.pre to i64
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.f
  %.pre-phi = phi i64 [ %i.ae, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre7, %bb.f ]
  %i.ai = phi ptr [ %i.ac, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre, %bb.f ]
  %i.aj = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  store ptr %i.ak, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.al = load i32, ptr %i.h, align 8, !tbaa !65
  %i.am = add i32 %i.al, 4
  store i32 %i.am, ptr %i.h, align 8, !tbaa !65
  store i32 %2, ptr %i.ak, align 4, !tbaa !14
  %i.an = load i32, ptr %i.h, align 8, !tbaa !65
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %.pre-phi
  %i.aq = and i64 %i.ap, 4294967288
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

bb.g:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i4 = load ptr, ptr %i.ab, align 8, !tbaa !71
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i: ; preds = %bb.g, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  %i.as = phi ptr [ %i.ai, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit ], [ %.pre.i.i4, %bb.g ]
  %.sroa.4.0.insert.ext.i = zext i16 %1 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.an to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.ab, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !77
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !78
  %i.ba = icmp ugt i16 %1, %i.az
  br i1 %i.ba, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.h:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %1, ptr %i.ay, align 4, !tbaa !78
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %bb.a, %bb.h, %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !36}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"double", !7, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!25 = !{!"_ZTSN11flatbuffers13ClassicLocaleE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!28 = !{!27, !22, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!30 = !{!29, !22, i64 0}
!31 = !{!29, !15, i64 8}
!32 = !{!"_ZTSN11flatbuffers6VectorIcjEE", !8, i64 0}
!33 = !{!32, !8, i64 0}
!34 = !{!"_ZTSN11flatbuffers6VectorINS_6OffsetIN10reflection5FieldEEEjEE", !8, i64 0}
!35 = !{!34, !8, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!38 = !{!"_ZTSSt6locale", !37, i64 0}
!39 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !38, i64 56}
!40 = !{!39, !22, i64 40}
!41 = !{!39, !22, i64 32}
!42 = !{!"vtable pointer", !6, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSSi", !15, i64 8}
!45 = !{!44, !15, i64 8}
!46 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!47 = !{!46, !22, i64 0}
!48 = !{!46, !22, i64 16}
!49 = !{!"p1 _ZTSN10reflection6SchemaE", !21, i64 0}
!50 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !21, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !46, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIhSaIhEE", !52, i64 0}
!54 = !{!"_ZTSN11flatbuffers13ResizeContextE", !49, i64 0, !22, i64 8, !8, i64 16, !50, i64 24, !53, i64 32}
!55 = !{!54, !22, i64 8}
!56 = !{!54, !8, i64 16}
!57 = !{!46, !22, i64 8}
!58 = !{!54, !50, i64 24}
!59 = !{}
!60 = !{i64 8}
!61 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!62 = !{!"p1 _ZTSN11flatbuffers9AllocatorE", !21, i64 0}
!63 = !{!"bool", !7, i64 0}
!64 = !{!"_ZTSN11flatbuffers15vector_downwardIjEE", !62, i64 0, !63, i64 8, !15, i64 16, !8, i64 24, !15, i64 32, !15, i64 40, !8, i64 48, !22, i64 56, !22, i64 64, !22, i64 72}
!65 = !{!64, !8, i64 48}
!66 = !{!"_ZTSN11flatbuffers6VectorINS_6OffsetINS_5TableEEEjEE", !8, i64 0}
!67 = !{!66, !8, i64 0}
!68 = !{!"_ZTSN11flatbuffers6VectorINS_6OffsetINS_6StringEEEjEE", !8, i64 0}
!69 = !{!68, !8, i64 0}
!70 = !{!64, !22, i64 64}
!71 = !{!64, !22, i64 72}
!72 = !{!"p1 _ZTSSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE", !21, i64 0}
!73 = !{!"_ZTSN11flatbuffers21FlatBufferBuilderImplILb0EEE", !64, i64 0, !8, i64 80, !12, i64 84, !15, i64 88, !63, i64 96, !63, i64 97, !15, i64 104, !63, i64 112, !63, i64 113, !72, i64 120}
!74 = !{!73, !63, i64 96}
!75 = !{!73, !15, i64 104}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!73, !8, i64 80}
end_hunk_4
