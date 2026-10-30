Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN11flatbuffers6Parser10ParseTableERKNS_9StructDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj:bb.a
  %i.id = icmp ne i32 %i.ic, 1819047278
  %i.ie = zext i1 %i.id to i32
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread1640, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread1640: ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gv, i64 200
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !328
  %i.ii = add i32 %i.ih, -1
  %i.ij = icmp ult i32 %i.ii, 12
  br i1 %i.ij, label %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread1640
  invoke void @_ZN11flatbuffers6Parser4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %15, ptr noundef nonnull align 8 dereferenceable(1936) %1)
          to label %.noexc1576 unwind label %bb.o, !inline_history !1051

.noexc1576:                                       ; preds = %bb.ai
  %i.ik = load i8, ptr %15, align 1, !tbaa !212, !range !208, !alias.scope !1177, !noundef !209
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %"_ZZN11flatbuffers6Parser10ParseTableERKNS_9StructDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPjENK3$_0clERKS9_RmPS2_.exit", label %bb.ci

_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread: ; preds = %bb.ah, %bb.ag, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread1640, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !1177
  %i.im = getelementptr inbounds nuw i8, ptr %i.gv, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull align 8 dereferenceable(66) %i.im, i64 32, i1 false), !tbaa.struct !255
  %i.in = getelementptr inbounds nuw i8, ptr %i.gv, i64 232
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !80, !noalias !1177
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !82 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gv, i64 240
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !79 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !1177
  store i64 %i.iq, ptr %i.c, align 8, !tbaa !93, !noalias !1177
  %i.ir = icmp ugt i64 %i.iq, 15
  br i1 %i.ir, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread
  %i.is = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc1577 unwind label %bb.o, !inline_history !1051 ; 2 uses

.noexc1577:                                       ; preds = %.noexc.i.i.i
  store ptr %i.is, ptr %i.ci, align 8, !tbaa !82, !noalias !1177
  %i.it = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !1177
  store i64 %i.it, ptr %i.cj, align 8, !tbaa !81, !noalias !1177
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc1577, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread
  %i.iu = phi ptr [ %i.is, %.noexc1577 ], [ %i.cj, %_ZNK11flatbuffers6Parser7IsIdentEPKc.exit.i.thread ] ; 2 uses
  switch i64 %i.iq, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZN11flatbuffers5ValueC2ERKS0_.exit.i
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.iv = load i8, ptr %i.io, align 1, !tbaa !81
  store i8 %i.iv, ptr %i.iu, align 1, !tbaa !81
  br label %_ZN11flatbuffers5ValueC2ERKS0_.exit.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iu, ptr align 1 %i.io, i64 %i.iq, i1 false)
  br label %_ZN11flatbuffers5ValueC2ERKS0_.exit.i

_ZN11flatbuffers5ValueC2ERKS0_.exit.i:            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i.i
  %i.iw = load i64, ptr %i.c, align 8, !tbaa !93, !noalias !1177 ; 2 uses
  store i64 %i.iw, ptr %i.ck, align 8, !tbaa !79, !noalias !1177
  %i.ix = load ptr, ptr %i.ci, align 8, !tbaa !82, !noalias !1177
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iw
  store i8 0, ptr %i.iy, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32, !noalias !1177
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gv, i64 264 ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 8, !tbaa !329
  store i16 %i.ja, ptr %i.cl, align 8, !tbaa !329, !noalias !1177
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gv, i64 276
  %i.jc = load i8, ptr %i.jb, align 4, !tbaa !333, !range !208, !noundef !209
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.al, label %bb.bh

bb.al:                                            ; preds = %_ZN11flatbuffers5ValueC2ERKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1177
  %i.je = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #36
          to label %_ZN11flexbuffers7BuilderC2EmNS_11BuilderFlagE.exit.i unwind label %bb.an, !inline_history !1051 ; 4 uses

_ZN11flexbuffers7BuilderC2EmNS_11BuilderFlagE.exit.i: ; preds = %bb.al
  store ptr %i.je, ptr %7, align 8, !tbaa !368, !noalias !1177
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1024
  store ptr %i.jf, ptr %i.cm, align 8, !tbaa !369, !noalias !1177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.je, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.co, i8 0, i64 26, i1 false), !noalias !1177
  store i32 7, ptr %i.cp, align 4, !tbaa !370, !noalias !1177
  store i32 0, ptr %i.cq, align 8, !tbaa !371, !noalias !1177
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !372, !noalias !1177
  store i32 0, ptr %i.ct, align 8, !tbaa !294, !noalias !1177
  store ptr null, ptr %i.cu, align 8, !tbaa !232, !noalias !1177
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !295, !noalias !1177
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !296, !noalias !1177
  store i64 0, ptr %i.cx, align 8, !tbaa !231, !noalias !1177
  store i64 %i.cs, ptr %i.cy, align 8, !tbaa !372, !noalias !1177
  store i32 0, ptr %i.cz, align 8, !tbaa !294, !noalias !1177
  store ptr null, ptr %i.da, align 8, !tbaa !232, !noalias !1177
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !295, !noalias !1177
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !296, !noalias !1177
  store i64 0, ptr %i.dd, align 8, !tbaa !231, !noalias !1177
  store ptr %i.je, ptr %i.cn, align 8, !tbaa !373, !noalias !1177
  invoke void @_ZN11flatbuffers6Parser20ParseFlexBufferValueEPN11flexbuffers7BuilderE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %15, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull %7)
          to label %bb.am unwind label %bb.bd, !inline_history !1051

bb.am:                                            ; preds = %_ZN11flexbuffers7BuilderC2EmNS_11BuilderFlagE.exit.i
  store i8 1, ptr %i.bz, align 1, !tbaa !213, !alias.scope !1177
  %i.jg = load i8, ptr %15, align 1, !tbaa !212, !range !208, !alias.scope !1177, !noundef !209
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %.critedge78.i, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN11flexbuffers7Builder6FinishEv(ptr noundef nonnull align 8 dereferenceable(160) %7)
          to label %bb.ap unwind label %bb.bd, !inline_history !1051

bb.ap:                                            ; preds = %bb.ao
  %i.jj = load ptr, ptr %i.cn, align 8, !tbaa !373, !noalias !1177 ; 2 uses
  %i.jk = load ptr, ptr %7, align 8, !tbaa !368, !noalias !1177 ; 3 uses
  %i.jl = ptrtoint ptr %i.jj to i64               ; 3 uses
  %i.jm = ptrtoint ptr %i.jk to i64               ; 3 uses
  %i.jn = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jn, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jo = load i64, ptr %i.df, align 8, !tbaa !374
  %i.jp = icmp ult i64 %i.jo, 8
  br i1 %i.jp, label %bb.ar, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556

bb.ar:                                            ; preds = %bb.aq
  store i64 8, ptr %i.df, align 8, !tbaa !374
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556: ; preds = %bb.ar, %bb.aq
  %i.jq = load i32, ptr %i.dg, align 8, !tbaa !354 ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %i.js = add i64 %i.jl, %i.jr
  %.neg1662 = sub i64 %i.jm, %i.js                ; 3 uses
  %i.jt = and i64 %.neg1662, 7                    ; 6 uses
  %.not.i.i.i.i88.i = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i.i.i88.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556
  %.pre4.i.i.i.i.i1558 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359 ; 2 uses
  %i.ju = load ptr, ptr %i.dh, align 8, !tbaa !365
  %i.jv = ptrtoint ptr %.pre4.i.i.i.i.i1558 to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = and i64 %i.jx, 4294967295
  %i.jz = icmp samesign ugt i64 %i.jt, %i.jy
  br i1 %i.jz, label %bb.at, label %.lr.ph.preheader.i.i.i.i1559

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %i.de, i64 noundef %i.jt)
          to label %.noexc.i unwind label %bb.bd, !inline_history !1051

.noexc.i:                                         ; preds = %bb.at
  %.pre.i.i.i.i.i1567 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359
  %.pre.i.i.i1568 = load i32, ptr %i.dg, align 8, !tbaa !354
  br label %.lr.ph.preheader.i.i.i.i1559

.lr.ph.preheader.i.i.i.i1559:                     ; preds = %.noexc.i, %bb.as
  %i.ka = phi i32 [ %i.jq, %bb.as ], [ %.pre.i.i.i1568, %.noexc.i ]
  %i.kb = phi ptr [ %.pre4.i.i.i.i.i1558, %bb.as ], [ %.pre.i.i.i.i.i1567, %.noexc.i ]
  %i.kc = sub nsw i64 0, %i.jt
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 %i.kc
  store ptr %i.kd, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359
  %i.ke = trunc nuw nsw i64 %i.jt to i32
  %i.kf = add i32 %i.ka, %i.ke
  store i32 %i.kf, ptr %i.dg, align 8, !tbaa !354
  %xtraiter = and i64 %.neg1662, 3                ; 3 uses
  %i.kg = icmp samesign ult i64 %i.jt, 4
  br i1 %i.kg, label %.lr.ph.i.i.i.i1560.epil.preheader, label %.lr.ph.preheader.i.i.i.i1559.new

.lr.ph.preheader.i.i.i.i1559.new:                 ; preds = %.lr.ph.preheader.i.i.i.i1559
  %unroll_iter = and i64 %.neg1662, 4
  br label %.lr.ph.i.i.i.i1560

.lr.ph.i.i.i.i1560:                               ; preds = %.lr.ph.i.i.i.i1560, %.lr.ph.preheader.i.i.i.i1559.new
  %.05.i.i.i.i1561 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i1559.new ], [ %i.ks, %.lr.ph.i.i.i.i1560 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i1559.new ], [ %niter.next.3, %.lr.ph.i.i.i.i1560 ]
  %i.kh = load ptr, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.05.i.i.i.i1561
  store i8 0, ptr %i.ki, align 1, !tbaa !81
  %i.kj = load ptr, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.05.i.i.i.i1561
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  store i8 0, ptr %i.kl, align 1, !tbaa !81
  %i.km = load ptr, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %.05.i.i.i.i1561
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  store i8 0, ptr %i.ko, align 1, !tbaa !81
  %i.kp = load ptr, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.05.i.i.i.i1561
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 3
  store i8 0, ptr %i.kr, align 1, !tbaa !81
  %i.ks = add nuw i64 %.05.i.i.i.i1561, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i1560, !llvm.loop !12

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i1560
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit, label %.lr.ph.i.i.i.i1560.epil.preheader

.lr.ph.i.i.i.i1560.epil.preheader:                ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i1559
  %.05.i.i.i.i1561.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i1559 ], [ %i.ks, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod2165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod2165)
  br label %.lr.ph.i.i.i.i1560.epil

.lr.ph.i.i.i.i1560.epil:                          ; preds = %.lr.ph.i.i.i.i1560.epil, %.lr.ph.i.i.i.i1560.epil.preheader
  %.05.i.i.i.i1561.epil = phi i64 [ %i.kv, %.lr.ph.i.i.i.i1560.epil ], [ %.05.i.i.i.i1561.epil.init, %.lr.ph.i.i.i.i1560.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i1560.epil ], [ 0, %.lr.ph.i.i.i.i1560.epil.preheader ]
  %i.kt = load ptr, ptr %.phi.trans.insert.i.i.i.i.i1557, align 8, !tbaa !359
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %.05.i.i.i.i1561.epil
  store i8 0, ptr %i.ku, align 1, !tbaa !81
  %i.kv = add nuw i64 %.05.i.i.i.i1561.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit, label %.lr.ph.i.i.i.i1560.epil, !llvm.loop !1058

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i.i1560.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit.unr-lcssa
  %.pre1843 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !1177 ; 3 uses
  %.pre1844 = load ptr, ptr %i.cn, align 8, !tbaa !219, !noalias !1177 ; 2 uses
  %.pre1858 = ptrtoint ptr %.pre1844 to i64
  %.pre1859 = ptrtoint ptr %.pre1843 to i64
  %i.kw = icmp eq ptr %.pre1843, %.pre1844
  %i.kx = select i1 %i.kw, ptr @_ZZN11flatbuffers4dataIhSaIhEEEPKT_RKSt6vectorIS2_T0_EE1t, ptr %.pre1843
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556, %bb.ap
  %.pre-phi1860 = phi i64 [ %.pre1859, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit ], [ %i.jm, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556 ], [ %i.jm, %bb.ap ]
  %.pre-phi = phi i64 [ %.pre1858, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit ], [ %i.jl, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556 ], [ %i.jl, %bb.ap ]
  %spec.select.i.i.i = phi ptr [ %i.kx, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i.loopexit ], [ %i.jk, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i1556 ], [ @_ZZN11flatbuffers4dataIhSaIhEEEPKT_RKSt6vectorIS2_T0_EE1t, %bb.ap ]
  %i.ky = sub i64 %.pre-phi, %.pre-phi1860
  %i.kz = invoke i32 @_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIhTtTpTyENS_6OffsetETtTpTyENS_6VectorEEET0_IJT1_IJT_EEEEPKS7_m(ptr noundef nonnull align 8 dereferenceable(128) %i.de, ptr noundef %spec.select.i.i.i, i64 noundef %i.ky)
          to label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIhSaIhEEENS_6OffsetINS_6VectorIT_jEEEERKSt6vectorIS6_T0_E.exit.i unwind label %bb.bd, !inline_history !1051

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIhSaIhEEENS_6OffsetINS_6VectorIT_jEEEERKSt6vectorIS6_T0_E.exit.i: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32, !noalias !1177
  invoke void @_ZN11flatbuffers11NumToStringIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i32 noundef %i.kz)
          to label %.critedge77.i unwind label %bb.be, !inline_history !1051

.critedge77.i:                                    ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIhSaIhEEENS_6OffsetINS_6VectorIT_jEEEERKSt6vectorIS6_T0_E.exit.i
  %i.la = load ptr, ptr %i.ci, align 8, !tbaa !82, !noalias !1177 ; 6 uses
  %i.lb = icmp eq ptr %i.la, %i.cj
  %i.lc = load ptr, ptr %8, align 8, !tbaa !82, !noalias !1177 ; 5 uses
  %i.ld = icmp eq ptr %i.lc, %i.di                ; 2 uses
  br i1 %i.lb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1566, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1566: ; preds = %.critedge77.i
  br i1 %i.ld, label %bb.au, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1563: ; preds = %.critedge77.i
  br i1 %i.ld, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1563, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1566
  %i.le = load i64, ptr %i.dj, align 8, !tbaa !79, !noalias !1177 ; 3 uses
  %i.lf = icmp ult i64 %i.le, 16
  call void @llvm.assume(i1 %i.lf)
  switch i64 %i.le, label %bb.aw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au
  %i.lg = load i8, ptr %i.lc, align 1, !tbaa !81
  store i8 %i.lg, ptr %i.la, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.aw:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.la, ptr align 1 %i.lc, i64 %i.le, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.aw, %bb.av, %bb.au
  %i.lh = load i64, ptr %i.dj, align 8, !tbaa !79, !noalias !1177 ; 2 uses
  store i64 %i.lh, ptr %i.ck, align 8, !tbaa !79, !noalias !1177
  %i.li = load ptr, ptr %i.ci, align 8, !tbaa !82, !noalias !1177
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lh
  store i8 0, ptr %i.lj, align 1, !tbaa !81
  %.pre.i.i1565 = load ptr, ptr %8, align 8, !tbaa !82, !noalias !1177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1566
  store ptr %i.lc, ptr %i.ci, align 8, !tbaa !82, !noalias !1177
  %i.lk = load <2 x i64>, ptr %i.dj, align 8, !tbaa !81, !noalias !1177
  store <2 x i64> %i.lk, ptr %i.ck, align 8, !tbaa !81, !noalias !1177
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1563
  %i.ll = load i64, ptr %i.cj, align 8, !tbaa !81, !noalias !1177
  store ptr %i.lc, ptr %i.ci, align 8, !tbaa !82, !noalias !1177
  %i.lm = load <2 x i64>, ptr %i.dj, align 8, !tbaa !81, !noalias !1177
  store <2 x i64> %i.lm, ptr %i.ck, align 8, !tbaa !81, !noalias !1177
  %.not.i.i1564 = icmp eq ptr %i.la, null
  br i1 %.not.i.i1564, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.la, ptr %8, align 8, !tbaa !82, !noalias !1177
  store i64 %i.ll, ptr %i.di, align 8, !tbaa !81, !noalias !1177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.di, ptr %8, align 8, !tbaa !82, !noalias !1177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ay, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.ln = phi ptr [ %i.la, %bb.ax ], [ %i.di, %bb.ay ], [ %.pre.i.i1565, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.dj, align 8, !tbaa !79, !noalias !1177
  store i8 0, ptr %i.ln, align 1, !tbaa !81
  %i.lo = load ptr, ptr %8, align 8, !tbaa !82, !noalias !1177 ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.di
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.lq = load i64, ptr %i.di, align 8, !tbaa !81, !noalias !1177
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #33, !inline_history !1051
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1177
  %i.ls = load ptr, ptr %i.da, align 8, !tbaa !232, !noalias !1177
  invoke void @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_EN11flexbuffers7Builder19StringOffsetCompareESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef %i.ls)
          to label %_ZNSt3setISt4pairImmEN11flexbuffers7Builder19StringOffsetCompareESaIS1_EED2Ev.exit.i.i unwind label %bb.az, !inline_history !1051

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i
  %i.lt = landingpad { ptr, i32 }
          catch ptr null
  %i.lu = extractvalue { ptr, i32 } %i.lt, 0
  call void @__clang_call_terminate(ptr %i.lu) #34, !inline_history !1051
  unreachable

_ZNSt3setISt4pairImmEN11flexbuffers7Builder19StringOffsetCompareESaIS1_EED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i
  %i.lv = load ptr, ptr %i.cu, align 8, !tbaa !232, !noalias !1177
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImEN11flexbuffers7Builder16KeyOffsetCompareESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef %i.lv)
          to label %_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEED2Ev.exit.i.i unwind label %bb.ba, !inline_history !1051

bb.ba:                                            ; preds = %_ZNSt3setISt4pairImmEN11flexbuffers7Builder19StringOffsetCompareESaIS1_EED2Ev.exit.i.i
  %i.lw = landingpad { ptr, i32 }
          catch ptr null
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0
  call void @__clang_call_terminate(ptr %i.lx) #34, !inline_history !1051
  unreachable

_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEED2Ev.exit.i.i: ; preds = %_ZNSt3setISt4pairImmEN11flexbuffers7Builder19StringOffsetCompareESaIS1_EED2Ev.exit.i.i
  %i.ly = load ptr, ptr %i.co, align 8, !tbaa !376, !noalias !1177 ; 3 uses
  %.not.i.i.i.i93.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i93.i, label %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EED2Ev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEED2Ev.exit.i.i
  %i.lz = load ptr, ptr %i.dk, align 8, !tbaa !377, !noalias !1177
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.ly to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mc) #33, !inline_history !1051
  br label %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bb, %_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEED2Ev.exit.i.i
  %i.md = load ptr, ptr %7, align 8, !tbaa !368, !noalias !1177 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i1.i.i, label %_ZN11flexbuffers7BuilderD2Ev.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EED2Ev.exit.i.i
  %i.me = load ptr, ptr %i.cm, align 8, !tbaa !369, !noalias !1177
  %i.mf = ptrtoint ptr %i.me to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mh) #33, !inline_history !1051
  br label %_ZN11flexbuffers7BuilderD2Ev.exit.i

_ZN11flexbuffers7BuilderD2Ev.exit.i:              ; preds = %bb.bc, %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1177
  br label %bb.bn

bb.bd:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE20ForceVectorAlignmentEmmm.exit.i, %bb.at, %bb.ao, %_ZN11flexbuffers7BuilderC2EmNS_11BuilderFlagE.exit.i
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIhSaIhEEENS_6OffsetINS_6VectorIT_jEEEERKSt6vectorIS6_T0_E.exit.i
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32, !noalias !1177
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn.pn.i1555 = phi { ptr, i32 } [ %i.mi, %bb.bd ], [ %i.mj, %bb.be ]
  call void @_ZN11flexbuffers7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %7) #32, !inline_history !1051
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.an
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i1555, %bb.bf ], [ %i.ji, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32, !noalias !1177
  br label %bb.ch

bb.bh:                                            ; preds = %_ZN11flatbuffers5ValueC2ERKS0_.exit.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.gv, i64 288
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !332
  %.not62.i = icmp eq ptr %i.ml, null
  br i1 %.not62.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN11flatbuffers6Parser21ParseNestedFlatbufferERNS_5ValueEPNS_8FieldDefEmPKNS_9StructDefE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %15, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull %i.gv, i64 noundef %.01637, ptr noundef nonnull %2)
          to label %bb.bj unwind label %bb.bk, !inline_history !1051

bb.bj:                                            ; preds = %bb.bi
  store i8 1, ptr %i.bz, align 1, !tbaa !213, !alias.scope !1177
  %i.mm = load i8, ptr %15, align 1, !tbaa !212, !range !208, !alias.scope !1177, !noundef !209
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %.critedge83.i, label %bb.bn

bb.bk:                                            ; preds = %bb.bl, %bb.bi
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

end_hunk_0
