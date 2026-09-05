Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIvNS_8Offset64EEEjT0_IT_E:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.05.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 0, ptr %i.ac, align 1, !tbaa !81
  %i.ad = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.05.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 0, ptr %i.af, align 1, !tbaa !81
  %i.ag = add nuw i64 %.05.i.i.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !12

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ag, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.05.i.i.i.epil = phi i64 [ %i.aj, %.lr.ph.i.i.i.epil ], [ %.05.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.ah = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.ai, align 1, !tbaa !81
  %i.aj = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit, label %.lr.ph.i.i.i.epil, !llvm.loop !1568

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit: ; preds = %.lr.ph.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit.unr-lcssa
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !354 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !374
  %i.ak = icmp ult i64 %.pre, 8
  br i1 %i.ak, label %bb.e, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit
  store i64 8, ptr %i.a, align 8, !tbaa !374
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, %bb.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit
  %i.al = phi i32 [ %.pre.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEm.exit ], [ %.pre.i, %bb.e ], [ %i.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i ] ; 3 uses
  %i.am = sub i32 0, %i.al
  %i.an = and i32 %i.am, 7                        ; 4 uses
  %i.ao = zext nneg i32 %i.an to i64              ; 5 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i2, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i.i4 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !365
  %i.ar = ptrtoint ptr %.pre4.i.i.i.i4 to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 4294967295
  %i.av = icmp samesign ult i64 %i.au, %i.ao
  br i1 %i.av, label %bb.g, label %.lr.ph.preheader.i.i.i5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ao)
  %.pre.i.i.i.i9 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre.i.i10 = load i32, ptr %i.d, align 8, !tbaa !354
  br label %.lr.ph.preheader.i.i.i5

.lr.ph.preheader.i.i.i5:                          ; preds = %bb.g, %bb.f
  %i.aw = phi i32 [ %i.al, %bb.f ], [ %.pre.i.i10, %bb.g ]
  %i.ax = phi ptr [ %.pre4.i.i.i.i4, %bb.f ], [ %.pre.i.i.i.i9, %bb.g ]
  %i.ay = sub nsw i64 0, %i.ao
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  store ptr %i.az, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.ba = add i32 %i.aw, %i.an
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !354
  %xtraiter16 = and i64 %i.ao, 3                  ; 3 uses
  %i.bb = icmp samesign ult i32 %i.an, 4
  br i1 %i.bb, label %.lr.ph.i.i.i6.epil.preheader, label %.lr.ph.preheader.i.i.i5.new

.lr.ph.preheader.i.i.i5.new:                      ; preds = %.lr.ph.preheader.i.i.i5
  %unroll_iter20 = and i64 %i.ao, 4
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6, %.lr.ph.preheader.i.i.i5.new
  %.05.i.i.i7 = phi i64 [ 0, %.lr.ph.preheader.i.i.i5.new ], [ %i.bn, %.lr.ph.i.i.i6 ] ; 5 uses
  %niter21 = phi i64 [ 0, %.lr.ph.preheader.i.i.i5.new ], [ %niter21.next.3, %.lr.ph.i.i.i6 ]
  %i.bc = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.05.i.i.i7
  store i8 0, ptr %i.bd, align 1, !tbaa !81
  %i.be = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.05.i.i.i7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !81
  %i.bh = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.05.i.i.i7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 0, ptr %i.bj, align 1, !tbaa !81
  %i.bk = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.05.i.i.i7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i8 0, ptr %i.bm, align 1, !tbaa !81
  %i.bn = add nuw i64 %.05.i.i.i7, 4              ; 2 uses
  %niter21.next.3 = add i64 %niter21, 4           ; 2 uses
  %niter21.ncmp.3 = icmp eq i64 %niter21.next.3, %unroll_iter20
  br i1 %niter21.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i6, !llvm.loop !12

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i6
  %lcmp.mod18.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod18.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i6.epil.preheader

.lr.ph.i.i.i6.epil.preheader:                     ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i5
  %.05.i.i.i7.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i5 ], [ %i.bn, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod19 = icmp ne i64 %xtraiter16, 0
  tail call void @llvm.assume(i1 %lcmp.mod19)
  br label %.lr.ph.i.i.i6.epil

.lr.ph.i.i.i6.epil:                               ; preds = %.lr.ph.i.i.i6.epil, %.lr.ph.i.i.i6.epil.preheader
  %.05.i.i.i7.epil = phi i64 [ %i.bq, %.lr.ph.i.i.i6.epil ], [ %.05.i.i.i7.epil.init, %.lr.ph.i.i.i6.epil.preheader ] ; 2 uses
  %epil.iter17 = phi i64 [ %epil.iter17.next, %.lr.ph.i.i.i6.epil ], [ 0, %.lr.ph.i.i.i6.epil.preheader ]
  %i.bo = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.05.i.i.i7.epil
  store i8 0, ptr %i.bp, align 1, !tbaa !81
  %i.bq = add nuw i64 %.05.i.i.i7.epil, 1
  %epil.iter17.next = add i64 %epil.iter17, 1     ; 2 uses
  %epil.iter17.cmp.not = icmp eq i64 %epil.iter17.next, %xtraiter16
  br i1 %epil.iter17.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i6.epil, !llvm.loop !1569

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i6.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !365
  %i.bt = ptrtoint ptr %.pre4.i.i.i to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = and i64 %i.bv, 4294967288
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementImjEET0_T_.exit

bb.h:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementImjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementImjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.h
  %i.by = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.h ]
  %i.bz = zext i32 %i.al to i64
  %reass.sub = sub i64 %i.bz, %1
  %i.ca = add i64 %reass.sub, 8
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 2 uses
  store ptr %i.cb, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !354
  %i.cd = add i32 %i.cc, 8                        ; 2 uses
  store i32 %i.cd, ptr %i.d, align 8, !tbaa !354
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !93
  ret i32 %i.cd
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortIhZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_1ZNS2_11ParseVectorES5_S6_S8_mE3$_2EEvPT_SC_mT0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 %3, ptr %4, i64 %5) unnamed_addr #1 {
bb.a:
  %.fr = freeze i64 %5                            ; 25 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not57 = icmp sgt i64 %i.c, %2
  br i1 %.not57, label %.lr.ph60, label %tailrecurse._crit_edge

.lr.ph60:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %4, i64 200        ; 2 uses
  %i.e = getelementptr i8, ptr %4, i64 232        ; 2 uses
  %i.f = zext i16 %3 to i64                       ; 4 uses
  %i.g = sub i64 0, %2                            ; 4 uses
  %.not.i = icmp eq i64 %.fr, 0
  br i1 %.not.i, label %.lr.ph60.split.us.split.us, label %.lr.ph60.split.split.preheader

.lr.ph60.split.split.preheader:                   ; preds = %.lr.ph60
  %i.h = sub i64 %.fr, %2                         ; 2 uses
  %min.iters.check103 = icmp ult i64 %.fr, 4
  %min.iters.check105 = icmp ult i64 %.fr, 32
  %i.i = and i64 %.fr, 28
  %n.vec107 = and i64 %.fr, -32                   ; 4 uses
  %cmp.n116 = icmp eq i64 %.fr, %n.vec107
  %min.epilog.iters.check121 = icmp eq i64 %i.i, 0
  %n.vec123 = and i64 %.fr, -4                    ; 3 uses
  %cmp.n130 = icmp eq i64 %.fr, %n.vec123
  %xtraiter = and i64 %.fr, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %.fr, 4
  %min.iters.check87 = icmp ult i64 %.fr, 32
  %i.j = and i64 %.fr, 28
  %n.vec = and i64 %.fr, -32                      ; 4 uses
  %cmp.n = icmp eq i64 %.fr, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  %n.vec91 = and i64 %.fr, -4                     ; 3 uses
  %cmp.n96 = icmp eq i64 %.fr, %n.vec91
  %xtraiter133 = and i64 %.fr, 1
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br label %.lr.ph60.split.split

.lr.ph60.split.us.split.us:                       ; preds = %.lr.ph60, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us"
  %.tr58.us.us = phi ptr [ %.03153.us.us.us, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us" ], [ %0, %.lr.ph60 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr58.us.us, i64 %2 ; 3 uses
  %i.l = icmp ult ptr %i.k, %1
  br i1 %i.l, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit.a", label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit.a": ; preds = %.lr.ph60.split.us.split.us
  %6 = getelementptr inbounds nuw i8, ptr %.tr58.us.us, i64 %i.f
  br label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.a"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.a": ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.a", %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit.a"
  %.054.us.us.us = phi ptr [ %i.k, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit.a" ], [ %.1.us.us.us, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.a" ] ; 2 uses
  %.031.lcssa.us.us.a = phi ptr [ %1, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit.a" ], [ %i.m, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.a" ]
  %.val34.val.us.us.us = load i32, ptr %i.d, align 8, !tbaa !328
  %.val34.val35.us.us.us = load ptr, ptr %i.e, align 8
  %7 = getelementptr inbounds nuw i8, ptr %.054.us.us.us, i64 %i.f
  %8 = tail call fastcc noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_124CompareSerializedScalarsEPKhS2_RKNS_8FieldDefE(ptr noundef readonly %6, ptr noundef readonly %7, i32 %.val34.val.us.us.us, ptr %.val34.val35.us.us.us) ; 2 uses
  %.132.us.us.us.idx = select i1 %8, i64 %i.g, i64 0
  %i.m = getelementptr inbounds i8, ptr %.031.lcssa.us.us.a, i64 %.132.us.us.us.idx ; 4 uses
  %.1.us.us.us.idx = select i1 %8, i64 0, i64 %2
  %.1.us.us.us = getelementptr inbounds nuw i8, ptr %.054.us.us.us, i64 %.1.us.us.us.idx ; 3 uses
  %9 = icmp ult ptr %.1.us.us.us, %i.m
  br i1 %9, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.a", label %.lr.ph.us.us, !llvm.loop !1570

.lr.ph.us.us:                                     ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.a"
  %.pre = ptrtoint ptr %i.m to i64
  br label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us": ; preds = %.lr.ph.us.us, %.lr.ph60.split.us.split.us
  %.pre-phi = phi i64 [ %.pre, %.lr.ph.us.us ], [ %i.a, %.lr.ph60.split.us.split.us ]
  %.03153.us.us.us = phi ptr [ %i.m, %.lr.ph.us.us ], [ %1, %.lr.ph60.split.us.split.us ]
  %.0.lcssa.us.us = phi ptr [ %.1.us.us.us, %.lr.ph.us.us ], [ %i.k, %.lr.ph60.split.us.split.us ]
  %.132.us.us.us = getelementptr inbounds i8, ptr %.0.lcssa.us.us, i64 %i.g
  tail call fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortIhZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_1ZNS2_11ParseVectorES5_S6_S8_mE3$_2EEvPT_SC_mT0_T1_"(ptr noundef %.tr58.us.us, ptr noundef %.132.us.us.us, i64 noundef %2, i16 %3, ptr %4, i64 0)
  %10 = sub i64 %i.a, %.pre-phi
  %.not.us.us = icmp sgt i64 %10, %2
  br i1 %.not.us.us, label %.lr.ph60.split.us.split.us, label %tailrecurse._crit_edge

.lr.ph60.split.split:                             ; preds = %.lr.ph60.split.split.preheader, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit"
  %.tr58 = phi ptr [ %.031.lcssa, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit" ], [ %0, %.lr.ph60.split.split.preheader ] ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr58, i64 %2 ; 3 uses
  %i.o = icmp ult ptr %i.n, %1
  br i1 %i.o, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.lr.ph60.split.split
  %i.p = getelementptr inbounds nuw i8, ptr %.tr58, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit"
  %.054 = phi ptr [ %i.n, %.lr.ph ], [ %.1, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 13 uses
  %.03153 = phi ptr [ %1, %.lr.ph ], [ %.132, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 3 uses
  %.val34.val = load i32, ptr %i.d, align 8, !tbaa !328
  %.val34.val35 = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.054, i64 %i.f
  %i.r = tail call fastcc noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_124CompareSerializedScalarsEPKhS2_RKNS_8FieldDefE(ptr noundef readonly %i.p, ptr noundef readonly %i.q, i32 %.val34.val, ptr %.val34.val35)
  br i1 %i.r, label %iter.check118, label %bb.c

iter.check118:                                    ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %.03153, i64 %i.g ; 10 uses
  br i1 %min.iters.check103, label %.lr.ph.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %iter.check118
  %scevgep98 = getelementptr i8, ptr %.054, i64 %.fr
  %scevgep99 = getelementptr i8, ptr %.03153, i64 %i.h
  %bound0100 = icmp ult ptr %.054, %scevgep99
  %bound1101 = icmp ult ptr %i.s, %scevgep98
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %vector.memcheck97
  br i1 %min.iters.check105, label %vec.epilog.ph122, label %vector.body108

vector.body108:                                   ; preds = %vector.main.loop.iter.check104, %vector.body108
  %index109 = phi i64 [ %index.next114, %vector.body108 ], [ 0, %vector.main.loop.iter.check104 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.054, i64 %index109 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %index109 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load110 = load <16 x i8>, ptr %i.t, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  %wide.load111 = load <16 x i8>, ptr %i.v, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load112 = load <16 x i8>, ptr %i.u, align 1, !tbaa !81, !alias.scope !1584
  %wide.load113 = load <16 x i8>, ptr %i.w, align 1, !tbaa !81, !alias.scope !1584
  store <16 x i8> %wide.load112, ptr %i.t, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  store <16 x i8> %wide.load113, ptr %i.v, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  store <16 x i8> %wide.load110, ptr %i.u, align 1, !tbaa !81, !alias.scope !1584
  store <16 x i8> %wide.load111, ptr %i.w, align 1, !tbaa !81, !alias.scope !1584
  %index.next114 = add nuw i64 %index109, 32      ; 2 uses
  %i.x = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.x, label %middle.block115, label %vector.body108, !llvm.loop !1574

middle.block115:                                  ; preds = %vector.body108
  br i1 %cmp.n116, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %vec.epilog.iter.check120

vec.epilog.iter.check120:                         ; preds = %middle.block115
  br i1 %min.epilog.iters.check121, label %.lr.ph.i.preheader, label %vec.epilog.ph122, !prof !1585

vec.epilog.ph122:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check120
  %vec.epilog.resume.val117 = phi i64 [ %n.vec107, %vec.epilog.iter.check120 ], [ 0, %vector.main.loop.iter.check104 ]
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph122
  %index125 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph122 ], [ %index.next128, %vec.epilog.vector.body124 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.054, i64 %index125 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %index125 ; 2 uses
  %wide.load126 = load <4 x i8>, ptr %i.y, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  %wide.load127 = load <4 x i8>, ptr %i.z, align 1, !tbaa !81, !alias.scope !1584
  store <4 x i8> %wide.load127, ptr %i.y, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  store <4 x i8> %wide.load126, ptr %i.z, align 1, !tbaa !81, !alias.scope !1584
  %index.next128 = add nuw i64 %index125, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.aa, label %vec.epilog.middle.block129, label %vec.epilog.vector.body124, !llvm.loop !1575

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body124
  br i1 %cmp.n130, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck97, %iter.check118, %vec.epilog.iter.check120, %vec.epilog.middle.block129
  %.06.i.ph = phi i64 [ 0, %iter.check118 ], [ 0, %vector.memcheck97 ], [ %n.vec107, %vec.epilog.iter.check120 ], [ %n.vec123, %vec.epilog.middle.block129 ] ; 5 uses
  %.neg = or disjoint i64 %.06.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %.054, i64 %.06.i.ph ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i.ph ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !81
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !81
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !81
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !81
  %i.af = or disjoint i64 %.06.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi i64 [ %.06.i.ph, %.lr.ph.i.preheader ], [ %i.af, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %.fr, %.neg
  br i1 %i.ag, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.054, i64 %.06.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i ; 2 uses
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !81
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !81
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !81
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !81
  %i.al = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.054, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.al ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !81
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !81
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !81
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !81
  %i.aq = add nuw i64 %.06.i, 2                   ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.aq, %.fr
  br i1 %exitcond.not.1, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %.lr.ph.i, !llvm.loop !1576

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.054, i64 %2
  br label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit": ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block115, %vec.epilog.middle.block129, %bb.c
  %.132 = phi ptr [ %.03153, %bb.c ], [ %i.s, %middle.block115 ], [ %i.s, %vec.epilog.middle.block129 ], [ %i.s, %.lr.ph.i ], [ %i.s, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.1 = phi ptr [ %i.ar, %bb.c ], [ %.054, %middle.block115 ], [ %.054, %vec.epilog.middle.block129 ], [ %.054, %.lr.ph.i ], [ %.054, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.as = icmp ult ptr %.1, %.132
  br i1 %i.as, label %bb.b, label %iter.check, !llvm.loop !1570

iter.check:                                       ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", %.lr.ph60.split.split
  %.031.lcssa = phi ptr [ %1, %.lr.ph60.split.split ], [ %.132, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.n, %.lr.ph60.split.split ], [ %.1, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.g ; 7 uses
  br i1 %min.iters.check, label %.lr.ph.i37.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.tr58, i64 %.fr
  %scevgep86 = getelementptr i8, ptr %.0.lcssa, i64 %i.h
  %bound0 = icmp ult ptr %.tr58, %scevgep86
  %bound1 = icmp ult ptr %i.at, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.tr58, i64 %index ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  %wide.load88 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load89 = load <16 x i8>, ptr %i.av, align 1, !tbaa !81, !alias.scope !1587
  %wide.load90 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !81, !alias.scope !1587
  store <16 x i8> %wide.load89, ptr %i.au, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  store <16 x i8> %wide.load90, ptr %i.aw, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !81, !alias.scope !1587
  store <16 x i8> %wide.load88, ptr %i.ax, align 1, !tbaa !81, !alias.scope !1587
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1580

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i37.preheader, label %vec.epilog.ph, !prof !1585

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr58, i64 %index92 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 %index92 ; 2 uses
  %wide.load93 = load <4 x i8>, ptr %i.az, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  %wide.load94 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !81, !alias.scope !1587
  store <4 x i8> %wide.load94, ptr %i.az, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  store <4 x i8> %wide.load93, ptr %i.ba, align 1, !tbaa !81, !alias.scope !1587
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1581

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n96, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %.lr.ph.i37.preheader

.lr.ph.i37.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i38.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec91, %vec.epilog.middle.block ] ; 5 uses
  %.neg135 = or disjoint i64 %.06.i38.ph, 1
  br i1 %lcmp.mod134.not, label %.lr.ph.i37.prol.loopexit, label %.lr.ph.i37.prol

.lr.ph.i37.prol:                                  ; preds = %.lr.ph.i37.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr58, i64 %.06.i38.ph ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %.06.i38.ph ; 2 uses
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !81
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !81
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !81
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !81
  %i.bg = or disjoint i64 %.06.i38.ph, 1
  br label %.lr.ph.i37.prol.loopexit

.lr.ph.i37.prol.loopexit:                         ; preds = %.lr.ph.i37.prol, %.lr.ph.i37.preheader
  %.06.i38.unr = phi i64 [ %.06.i38.ph, %.lr.ph.i37.preheader ], [ %i.bg, %.lr.ph.i37.prol ]
  %i.bh = icmp eq i64 %.fr, %.neg135
  br i1 %i.bh, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i37.prol.loopexit, %.lr.ph.i37
  %.06.i38 = phi i64 [ %i.br, %.lr.ph.i37 ], [ %.06.i38.unr, %.lr.ph.i37.prol.loopexit ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr58, i64 %.06.i38 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %.06.i38 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !81
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !81
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !81
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !81
  %i.bm = add nuw i64 %.06.i38, 1                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr58, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bm ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !81
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !81
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !81
  %i.br = add nuw i64 %.06.i38, 2                 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.br, %.fr
  br i1 %exitcond71.not.1, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %.lr.ph.i37, !llvm.loop !1582

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit": ; preds = %.lr.ph.i37.prol.loopexit, %.lr.ph.i37, %vec.epilog.middle.block, %middle.block
  tail call fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortIhZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_1ZNS2_11ParseVectorES5_S6_S8_mE3$_2EEvPT_SC_mT0_T1_"(ptr noundef nonnull %.tr58, ptr noundef nonnull %i.at, i64 noundef %2, i16 %3, ptr %4, i64 %.fr)
  %i.bs = ptrtoint ptr %.031.lcssa to i64
  %i.bt = sub i64 %i.a, %i.bs
  %.not = icmp sgt i64 %i.bt, %2
  br i1 %.not, label %.lr.ph60.split.split, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us", %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortINS_6OffsetINS_5TableEEEZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_3PFvPS4_SD_EEEvPT_SH_mT0_T1_"(ptr noundef %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 5
  br i1 %i.d, label %tailrecurse._crit_edge, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 264
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph10, %tailrecurse
  %i.f = phi i64 [ %i.b, %.lr.ph10 ], [ %.pre-phi, %tailrecurse ]
  %.tr8 = phi ptr [ %0, %.lr.ph10 ], [ %.030.lcssa, %tailrecurse ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr8, i64 4 ; 3 uses
  %i.h = icmp ult ptr %i.g, %1
  br i1 %i.h, label %.lr.ph, label %tailrecurse

.lr.ph:                                           ; preds = %bb.b
  %.val.val = load i16, ptr %i.e, align 8, !tbaa !315 ; 3 uses
  %i.i = zext i16 %.val.val to i64                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.06 = phi ptr [ %i.g, %.lr.ph ], [ %.1, %bb.e ] ; 8 uses
  %.0305 = phi ptr [ %1, %.lr.ph ], [ %.131, %bb.e ] ; 2 uses
  %i.j = load i32, ptr %.tr8, align 4, !tbaa !221
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.tr8, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %.06, align 4, !tbaa !221  ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.06, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.l, align 4, !tbaa !221
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !254
  %i.u = icmp ult i16 %.val.val, %i.t
  br i1 %i.u, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.i
  %i.w = load i16, ptr %i.v, align 2, !tbaa !254
  %.fr.i.i.i.i = freeze i16 %i.w                  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.fr.i.i.i.i, 0
  %i.x = zext i16 %.fr.i.i.i.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  br i1 %.not.i.i.i.i, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i.i.i.i, label %_ZNK11flatbuffers5Table12GetAddressOfEt.exit.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i.i.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %bb.c
  br label %_ZNK11flatbuffers5Table12GetAddressOfEt.exit.i.i

_ZNK11flatbuffers5Table12GetAddressOfEt.exit.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i.i.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.z = phi ptr [ null, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i.i.i.i ], [ %i.y, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i ] ; 4 uses
  %i.aa = load i32, ptr %i.o, align 4, !tbaa !221
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !254
  %i.af = icmp ult i16 %.val.val, %i.ae
  br i1 %i.af, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i22.i.i, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit"

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i22.i.i: ; preds = %_ZNK11flatbuffers5Table12GetAddressOfEt.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !254
  %.fr.i.i23.i.i = freeze i16 %i.ah               ; 2 uses
  %.not.i.i24.i.i = icmp eq i16 %.fr.i.i23.i.i, 0
  %i.ai = zext i16 %.fr.i.i23.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai ; 2 uses
  br i1 %.not.i.i24.i.i, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit", label %_ZNK11flatbuffers5Table12GetAddressOfEt.exit25.i.i

_ZNK11flatbuffers5Table12GetAddressOfEt.exit25.i.i: ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i22.i.i
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit.thread", label %.split

.split:                                           ; preds = %_ZNK11flatbuffers5Table12GetAddressOfEt.exit25.i.i
  %i.ak = load i32, ptr %i.z, align 4, !tbaa !221
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.aj, align 4, !tbaa !221
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.am, align 4, !tbaa !401 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !401 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.at, i32 %i.ar)
  %i.au = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.av = tail call i32 @memcmp(ptr noundef nonnull readonly %i.aq, ptr noundef nonnull readonly %i.as, i64 noundef %i.au) #37 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = icmp ult i32 %i.ar, %i.at
  %i.ay = icmp slt i32 %i.av, 0
  %i.az = select i1 %i.aw, i1 %i.ax, i1 %i.ay
  br i1 %i.az, label %bb.d, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit.thread"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit": ; preds = %_ZNK11flatbuffers5Table12GetAddressOfEt.exit.i.i, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i22.i.i
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit.thread", label %bb.d

bb.d:                                             ; preds = %.split, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit"
  %i.ba = getelementptr inbounds i8, ptr %.0305, i64 -4 ; 5 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %.06 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = sub i32 %i.m, %i.be
  store i32 %i.bf, ptr %.06, align 4, !tbaa !403
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !221
  %i.bh = add i32 %i.bg, %i.be                    ; 2 uses
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !403
  %.sroa.0.0.copyload.i.i = load i32, ptr %.06, align 4, !tbaa !221
  store i32 %i.bh, ptr %.06, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ba, align 4, !tbaa !221
  br label %bb.e

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit.thread": ; preds = %_ZNK11flatbuffers5Table12GetAddressOfEt.exit25.i.i, %.split, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit"
  %i.bi = getelementptr inbounds nuw i8, ptr %.06, i64 4
  br label %bb.e

bb.e:                                             ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit.thread", %bb.d
  %.131 = phi ptr [ %i.ba, %bb.d ], [ %.0305, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit.thread" ] ; 4 uses
  %.1 = phi ptr [ %.06, %bb.d ], [ %i.bi, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_3clEPKNS_6OffsetINS_5TableEEESC_.exit.thread" ] ; 3 uses
  %i.bj = icmp ult ptr %.1, %.131
  br i1 %i.bj, label %bb.c, label %tailrecurse.loopexit, !llvm.loop !1588

tailrecurse.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %.131 to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre, %tailrecurse.loopexit ], [ %i.a, %bb.b ] ; 2 uses
  %.030.lcssa = phi ptr [ %.131, %tailrecurse.loopexit ], [ %1, %bb.b ]
  %.0.lcssa = phi ptr [ %.1, %tailrecurse.loopexit ], [ %i.g, %bb.b ]
  %i.bk = getelementptr inbounds i8, ptr %.0.lcssa, i64 -4 ; 5 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.f
  %i.bn = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bo = load i32, ptr %.tr8, align 4, !tbaa !221
  %i.bp = sub i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %.tr8, align 4, !tbaa !403
  %i.bq = load i32, ptr %i.bk, align 4, !tbaa !221
  %i.br = add i32 %i.bq, %i.bn                    ; 2 uses
  store i32 %i.br, ptr %i.bk, align 4, !tbaa !403
  %.sroa.0.0.copyload.i.i33 = load i32, ptr %.tr8, align 4, !tbaa !221
  store i32 %i.br, ptr %.tr8, align 4, !tbaa !221
  store i32 %.sroa.0.0.copyload.i.i33, ptr %i.bk, align 4, !tbaa !221
  tail call fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortINS_6OffsetINS_5TableEEEZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_3PFvPS4_SD_EEEvPT_SH_mT0_T1_"(ptr noundef nonnull %.tr8, ptr noundef nonnull %i.bk, ptr %2)
  %i.bs = sub i64 %i.a, %.pre-phi
  %i.bt = icmp slt i64 %i.bs, 5
  br i1 %i.bt, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortINS_6OffsetINS_5TableEEEZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_4PFvPS4_SD_EEEvPT_SH_mT0_T1_"(ptr noundef %0, ptr noundef %1, ptr nofree readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 5
  br i1 %i.d, label %tailrecurse._crit_edge, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 232
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph9, %tailrecurse
  %i.h = phi i64 [ %i.b, %.lr.ph9 ], [ %.pre-phi, %tailrecurse ]
  %.tr7 = phi ptr [ %0, %.lr.ph9 ], [ %.030.lcssa, %tailrecurse ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.tr7, i64 4 ; 3 uses
  %i.j = icmp ult ptr %i.i, %1
  br i1 %i.j, label %.lr.ph, label %tailrecurse

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.05 = phi ptr [ %.1, %bb.e ], [ %i.i, %bb.b ]  ; 9 uses
  %.0304 = phi ptr [ %.131, %bb.e ], [ %1, %bb.b ] ; 2 uses
  %i.k = load i16, ptr %i.e, align 8, !tbaa !315  ; 4 uses
  %i.l = load i32, ptr %.tr7, align 4, !tbaa !221
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.tr7, i64 %i.m ; 3 uses
  %i.o = load i32, ptr %.05, align 4, !tbaa !221
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.05, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.n, align 4, !tbaa !221
  %i.s = sext i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !254
  %i.w = icmp ult i16 %i.k, %i.v
  br i1 %i.w, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.thread.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZNK11flatbuffers5Table11VerifyFieldIiLb0EEEbRKNS_16VerifierTemplateIXT0_EEEtm:bb.a
bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !517  ; 2 uses
  %i.x = icmp ugt i64 %i.w, 4
  %i.y = add i64 %i.w, -4
  %i.z = icmp ule i64 %i.o, %i.y
  %i.aa = and i1 %i.x, %i.z
  br label %_ZNK11flatbuffers16VerifierTemplateILb0EE11VerifyFieldIiEEbPKhtm.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE11VerifyFieldIiEEbPKhtm.exit: ; preds = %bb.a, %bb.c, %bb.b, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit
  %i.ab = phi i1 [ true, %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit ], [ %i.aa, %bb.c ], [ false, %bb.b ], [ true, %bb.a ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetIN10reflection8KeyValueEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !516
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !208
  %i.i = trunc nuw i8 %i.h to i1
  %.not2.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !517  ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !221
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !615
  %i.s = lshr i64 %i.r, 2
  %i.t = zext i32 %i.p to i64                     ; 2 uses
  %i.u = icmp samesign ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.t, 2
  %i.w = add nuw nsw i64 %i.v, 4                  ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.k
  %i.y = sub nuw i64 %i.k, %i.w
  %i.z = icmp ule i64 %i.d, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit: ; preds = %bb.d, %bb.c, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i, %bb.b, %bb.a
  %i.ab = phi i1 [ true, %bb.a ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i ], [ %i.aa, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOfTablesIN10reflection8KeyValueEEEbPKNS_6VectorINS_6OffsetIT_EEjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !513
  %.not15 = icmp eq i32 %i.a, 0
  br i1 %.not15, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !513
  %i.d = zext i32 %i.c to i64
  %i.e = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.e, label %bb.c, label %.thread, !llvm.loop !3296

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = shl nuw nsw i64 %indvars.iv, 2
  %i.g = and i64 %i.f, 4294967292
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !221
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = tail call noundef zeroext i1 @_ZNK10reflection8KeyValue6VerifyILb0EEEbRN11flatbuffers16VerifierTemplateIXT_EEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %0) ; 3 uses
  br i1 %i.l, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ %i.l, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyVectorITpTnRiJENS_6OffsetINS_6StringEEEjEEbPKNS_6VectorIT0_T1_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !516
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !208
  %i.i = trunc nuw i8 %i.h to i1
  %.not2.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !517  ; 4 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i
  %i.p = load i32, ptr %1, align 4, !tbaa !221
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !615
  %i.s = lshr i64 %i.r, 2
  %i.t = zext i32 %i.p to i64                     ; 2 uses
  %i.u = icmp samesign ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i64 %i.t, 2
  %i.w = add nuw nsw i64 %i.v, 4                  ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.k
  %i.y = sub nuw i64 %i.k, %i.w
  %i.z = icmp ule i64 %i.d, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit: ; preds = %bb.d, %bb.c, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i, %bb.b, %bb.a
  %i.ab = phi i1 [ true, %bb.a ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i ], [ %i.aa, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11flatbuffers16VerifierTemplateILb0EE21VerifyVectorOfStringsEPKNS_6VectorINS_6OffsetINS_6StringEEEjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !504    ; 2 uses
  %.not31 = icmp eq i32 %i.a, 0
  br i1 %.not31, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !516    ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.fr32 = freeze i64 %i.f                        ; 7 uses
  %i.g = icmp ugt i64 %.fr32, 4
  %i.h = add i64 %.fr32, -4                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = add i64 %.fr32, -1                       ; 2 uses
  br i1 %i.g, label %.lr.ph.split, label %.thread

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !208
  %.fr = freeze i8 %i.m
  %i.n = trunc i8 %.fr to i1
  %wide.trip.count40 = zext i32 %i.a to i64       ; 2 uses
  br i1 %i.n, label %.lr.ph.split.split, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23: ; preds = %.lr.ph.split, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.o = shl i64 %indvars.iv, 2
  %i.p = and i64 %i.o, 4294967292
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !221
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d                       ; 3 uses
  %.not33 = icmp ugt i64 %i.v, %i.h
  br i1 %.not33, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23
  %i.w = load i32, ptr %i.t, align 4, !tbaa !221
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp ugt i64 %i.j, %i.x
  br i1 %i.y, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us, label %.thread

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us: ; preds = %bb.b
  %i.z = add nuw nsw i64 %i.x, 4                  ; 3 uses
  %i.aa = add i64 %i.z, %i.v                      ; 2 uses
  %i.ab = icmp uge i64 %i.z, %.fr32
  %i.ac = sub nuw i64 %.fr32, %i.z
  %i.ad = icmp ugt i64 %i.v, %i.ac
  %.not14.i.us = select i1 %i.ab, i1 true, i1 %i.ad
  %.not10.i.us = icmp ugt i64 %i.aa, %i.k
  %or.cond.i.us = or i1 %.not10.i.us, %.not14.i.us
  br i1 %or.cond.i.us, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us

_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !81
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %2, label %.thread

2:                                                ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count40
  br i1 %exitcond.not, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, !llvm.loop !3297

bb.c:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %.thread, label %.lr.ph.split.split, !llvm.loop !3297

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.c
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.c ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ah = shl i64 %indvars.iv37, 2
  %i.ai = and i64 %i.ah, 4294967292
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !221
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.d                     ; 4 uses
  %i.ap = and i64 %i.ao, 3
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp ule i64 %i.ao, %i.h
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.as = load i32, ptr %i.am, align 4, !tbaa !221
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp ugt i64 %i.j, %i.at
  br i1 %i.au, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, label %.thread

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i: ; preds = %bb.d
  %i.av = add nuw nsw i64 %i.at, 4                ; 3 uses
  %i.aw = add i64 %i.av, %i.ao                    ; 2 uses
  %i.ax = icmp uge i64 %i.av, %.fr32
  %i.ay = sub nuw i64 %.fr32, %i.av
  %i.az = icmp ugt i64 %i.ao, %i.ay
  %.not14.i = select i1 %i.ax, i1 true, i1 %i.az
  %.not10.i = icmp ugt i64 %i.aw, %i.k
  %or.cond.i = or i1 %.not10.i, %.not14.i
  br i1 %or.cond.i, label %.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aw
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !81
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.c, label %.thread

.thread:                                          ; preds = %2, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us, %bb.b, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23, %bb.c, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit, %bb.d, %.lr.ph.split.split, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, %.lr.ph, %.preheader, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i ], [ false, %.lr.ph ], [ false, %.lr.ph.split.split ], [ false, %bb.d ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit ], [ true, %bb.c ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit.us ], [ false, %bb.b ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i.us ], [ false, %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIjEEbm.exit.i.i.us23 ], [ true, %2 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10reflection5Field6VerifyILb0EEEbRN11flatbuffers16VerifierTemplateIXT_EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !516    ; 5 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = and i64 %i.d, 3
  %i.f = icmp ne i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !208
  %i.i = trunc nuw i8 %i.h to i1                  ; 6 uses
  %.not2.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %.not2.i.i.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i

_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !517  ; 8 uses
  %i.l = icmp ugt i64 %i.k, 4
  %i.m = add i64 %i.k, -4                         ; 4 uses
  %i.n = icmp ule i64 %i.d, %i.m
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

bb.b:                                             ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE6VerifyIiEEbm.exit.i.i
  %i.p = load i32, ptr %0, align 4, !tbaa !221
  %i.q = sext i32 %i.p to i64
  %i.r = sub i64 %i.d, %i.q                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !612
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !612
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !613
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !613
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !614
  %.not.i.i.i = icmp ugt i32 %i.u, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp ugt i32 %i.x, %i.ab
  %.not15.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.ac
  %i.ad = trunc i64 %i.r to i1
  %.not2.i11.i.i = select i1 %i.ad, i1 %i.i, i1 false
  %i.ae = add i64 %i.k, -2
  %.not.i.i = icmp ugt i64 %i.r, %i.ae
  %i.af = or i1 %.not.i.i, %.not2.i11.i.i
  %or.cond18.i.i = select i1 %.not15.i.i, i1 true, i1 %i.af
  br i1 %or.cond18.i.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !254 ; 2 uses
  %i.ai = zext i16 %i.ah to i64                   ; 3 uses
  %i.aj = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = xor i1 %i.i, true
  %i.am = select i1 %i.ak, i1 true, i1 %i.al
  %i.an = and i16 %i.ah, 1
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond13.i.i = and i1 %i.ao, %i.am
  br i1 %or.cond13.i.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit: ; preds = %bb.c
  %i.ap = icmp ugt i64 %i.k, %i.ai
  %i.aq = sub nuw i64 %i.k, %i.ai
  %i.ar = icmp ule i64 %i.r, %i.aq
  %i.as = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %i.as, label %bb.d, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

bb.d:                                             ; preds = %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit
  %i.at = load i32, ptr %0, align 4, !tbaa !221
  %i.au = sext i32 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !254 ; 2 uses
  %i.ay = icmp ugt i16 %i.ax, 4
  br i1 %i.ay, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !254 ; 2 uses
  %.not.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i
  %i.bb = zext i16 %i.ba to i64                   ; 2 uses
  %i.bc = add i64 %i.d, %i.bb                     ; 4 uses
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp ne i64 %i.bd, 0
  %.not2.i.i.i.i = select i1 %i.be, i1 %i.i, i1 false
  %.not = icmp ugt i64 %i.bc, %i.m
  %or.cond106 = or i1 %.not2.i.i.i.i, %.not
  br i1 %or.cond106, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !221 ; 2 uses
  %or.cond.i.i.i = icmp sgt i32 %i.bg, 0
  br i1 %or.cond.i.i.i, label %_ZNK11flatbuffers5Table20VerifyOffsetRequiredIjLb0EEEbRKNS_16VerifierTemplateIXT0_EEEt.exit, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table20VerifyOffsetRequiredIjLb0EEEbRKNS_16VerifierTemplateIXT0_EEEt.exit: ; preds = %bb.f
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = add i64 %i.bc, %i.bh
  %i.bj = add i64 %i.k, -1                        ; 3 uses
  %.not.i.i.i23.not = icmp ugt i64 %i.bi, %i.bj
  br i1 %.not.i.i.i23.not, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZNK11flatbuffers5Table20VerifyOffsetRequiredIjLb0EEEbRKNS_16VerifierTemplateIXT0_EEEt.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !221
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.c                     ; 4 uses
  %i.bq = and i64 %i.bp, 3
  %i.br = icmp ne i64 %i.bq, 0
  %.not2.i.i.i26 = select i1 %i.br, i1 %i.i, i1 false
  %.not104 = icmp ugt i64 %i.bp, %i.m
  %or.cond107 = or i1 %.not2.i.i.i26, %.not104
  br i1 %or.cond107, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.bs = load i32, ptr %i.bn, align 4, !tbaa !221
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !615
  %i.bv = zext i32 %i.bs to i64                   ; 2 uses
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  br i1 %i.bw, label %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i: ; preds = %bb.g
  %i.bx = add nuw nsw i64 %i.bv, 4                ; 3 uses
  %i.by = add i64 %i.bx, %i.bp                    ; 2 uses
  %i.bz = icmp uge i64 %i.bx, %i.k
  %i.ca = sub nuw i64 %i.k, %i.bx
  %i.cb = icmp ugt i64 %i.bp, %i.ca
  %.not14.i = select i1 %i.bz, i1 true, i1 %i.cb
  %.not10.i = icmp ugt i64 %i.by, %i.bj
  %or.cond.i = or i1 %.not10.i, %.not14.i
  br i1 %or.cond.i, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread, label %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit

_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE20VerifyVectorOrStringIjEEbPKhmPm.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !81
  %i.ce = icmp eq i8 %i.cd, 0
  %i.cf = icmp ugt i16 %i.ax, 6
  %or.cond = and i1 %i.cf, %i.ce
  br i1 %or.cond, label %_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i27, label %_ZNK11flatbuffers5Table16VerifyTableStartILb0EEEbRNS_16VerifierTemplateIXT_EEE.exit.thread

_ZNK11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i27: ; preds = %_ZNK11flatbuffers16VerifierTemplateILb0EE12VerifyStringEPKNS_6StringE.exit
end_hunk_1
