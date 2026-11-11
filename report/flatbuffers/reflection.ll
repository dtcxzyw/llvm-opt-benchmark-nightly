Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/reflection?download=true
inline.NumInlined: 1553
inline.NumDeleted: 671
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIPKNS_5TableENS_6OffsetEEEjT0_IT_E:bb.a
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
  %i.u = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  store i8 0, ptr %i.u, align 1, !tbaa !11
  %exitcond.not.i.i.i = icmp eq i32 %i.g, 1
  br i1 %exitcond.not.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.preheader.i.i.i
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !11
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.g, 2
  br i1 %exitcond.not.i.i.i.1, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.x = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 0, ptr %i.y, align 1, !tbaa !11
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit: ; preds = %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.preheader.i.i.i
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !65 ; 2 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !75
  %i.z = icmp ult i64 %.pre, 4
  br i1 %i.z, label %bb.e, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

bb.e:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit
  store i64 4, ptr %i.a, align 8, !tbaa !75
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, %bb.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit
  %i.aa = phi i32 [ %.pre.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit ], [ %.pre.i, %bb.e ], [ %i.e, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i ] ; 3 uses
  %i.ab = sub i32 0, %i.aa
  %i.ac = and i32 %i.ab, 3                        ; 5 uses
  %i.ad = zext nneg i32 %i.ac to i64              ; 3 uses
  %.not.i.i.i.i2 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i2, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i.i4 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = ptrtoint ptr %.pre4.i.i.i.i4 to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = icmp samesign ult i64 %i.aj, %i.ad
  br i1 %i.ak, label %bb.g, label %.lr.ph.preheader.i.i.i5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ad)
  %.pre.i.i.i.i9 = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre.i.i10 = load i32, ptr %i.d, align 8, !tbaa !65
  br label %.lr.ph.preheader.i.i.i5

.lr.ph.preheader.i.i.i5:                          ; preds = %bb.g, %bb.f
  %i.al = phi i32 [ %i.aa, %bb.f ], [ %.pre.i.i10, %bb.g ]
  %i.am = phi ptr [ %.pre4.i.i.i.i4, %bb.f ], [ %.pre.i.i.i.i9, %bb.g ]
  %i.an = sub nsw i64 0, %i.ad
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ao, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.ap = add i32 %i.al, %i.ac
  store i32 %i.ap, ptr %i.d, align 8, !tbaa !65
  %i.aq = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  store i8 0, ptr %i.aq, align 1, !tbaa !11
  %exitcond.not.i.i.i8 = icmp eq i32 %i.ac, 1
  br i1 %exitcond.not.i.i.i8, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i6.1

.lr.ph.i.i.i6.1:                                  ; preds = %.lr.ph.preheader.i.i.i5
  %i.ar = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 0, ptr %i.as, align 1, !tbaa !11
  %exitcond.not.i.i.i8.1 = icmp eq i32 %i.ac, 2
  br i1 %exitcond.not.i.i.i8.1, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i6.2

.lr.ph.i.i.i6.2:                                  ; preds = %.lr.ph.i.i.i6.1
  %i.at = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i8 0, ptr %i.au, align 1, !tbaa !11
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.preheader.i.i.i5, %.lr.ph.i.i.i6.1, %.lr.ph.i.i.i6.2, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i1
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.ax = ptrtoint ptr %.pre4.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = and i64 %i.az, 4294967292
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.h:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.h
  %i.bc = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.h ]
  %reass.sub = sub i32 %i.aa, %1
  %i.bd = add i32 %reass.sub, 4
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  store ptr %i.be, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !65
  %i.bg = add i32 %i.bf, 4
  store i32 %i.bg, ptr %i.d, align 8, !tbaa !65
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !14
  %i.bh = load i32, ptr %i.d, align 8, !tbaa !65
  ret i32 %i.bh
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
  %i.k = and i32 %i.j, 3                          ; 5 uses
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
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
  %i.y = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  store i8 0, ptr %i.y, align 1, !tbaa !11
  %exitcond.not.i.i.i = icmp eq i32 %i.k, 1
  br i1 %exitcond.not.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.preheader.i.i.i
  %i.z = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !11
  %exitcond.not.i.i.i.1 = icmp eq i32 %i.k, 2
  br i1 %exitcond.not.i.i.i.1, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.ab = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 0, ptr %i.ac, align 1, !tbaa !11
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %i.af = ptrtoint ptr %.pre4.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = and i64 %i.ah, 4294967292
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.f:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !71
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.f
  %i.ak = phi ptr [ %i.ae, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre, %bb.f ] ; 2 uses
  %i.al = phi ptr [ %.pre4.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.f ]
  %.pre-phi = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 3 uses
  store ptr %i.am, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !70
  %i.an = load i32, ptr %i.h, align 8, !tbaa !65
  %i.ao = add i32 %i.an, 4
  store i32 %i.ao, ptr %i.h, align 8, !tbaa !65
  store i32 %2, ptr %i.am, align 4, !tbaa !14
  %i.ap = load i32, ptr %i.h, align 8, !tbaa !65
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.aq, %.pre-phi
  %i.as = and i64 %i.ar, 4294967288
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

bb.g:                                             ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  tail call void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i4 = load ptr, ptr %i.ad, align 8, !tbaa !71
  br label %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i: ; preds = %bb.g, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  %i.au = phi ptr [ %i.ak, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit ], [ %.pre.i.i4, %bb.g ]
  %.sroa.4.0.insert.ext.i = zext i16 %1 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ap to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.au, align 4
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !77
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !78
  %i.bc = icmp ugt i16 %1, %i.bb
  br i1 %i.bc, label %bb.h, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.h:                                             ; preds = %_ZN11flatbuffers15vector_downwardIjE18scratch_push_smallINS_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %1, ptr %i.ba, align 4, !tbaa !78
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
!78 = !{!73, !12, i64 84}
!79 = !{!"_ZTSN11flatbuffers6VectorINS_6OffsetIN10reflection7EnumValEEEjEE", !8, i64 0}
!80 = !{!79, !8, i64 0}
!81 = !{i8 0, i8 2}
!82 = !{!64, !22, i64 56}
!83 = !{!64, !15, i64 40}
!84 = !{!"_ZTSN11flatbuffers16VerifierTemplateILb0EE7OptionsE", !8, i64 0, !8, i64 4, !63, i64 8, !63, i64 9, !15, i64 16, !63, i64 24}
!85 = !{!"_ZTSN11flatbuffers16VerifierTemplateILb0EEE", !22, i64 0, !15, i64 8, !84, i64 16, !15, i64 48, !8, i64 56, !8, i64 60, !50, i64 64}
!86 = !{!85, !22, i64 0}
!87 = !{!85, !15, i64 8}
!88 = !{!63, !63, i64 0}
!89 = !{!85, !15, i64 32}
!90 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!91 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!92 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!93 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !15, i64 8}
!94 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!95 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !90, i64 24, !91, i64 28, !91, i64 32, !92, i64 40, !93, i64 48, !7, i64 64, !8, i64 192, !94, i64 200, !38, i64 208}
!96 = !{!95, !90, i64 24}
!97 = !{!90, !90, i64 0}
!98 = !{!"p1 _ZTSN11flatbuffers15vector_downwardIjEE", !21, i64 0}
!99 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!100 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!101 = !{!"_ZTSSt18_Rb_tree_node_base", !99, i64 0, !100, i64 8, !100, i64 16, !100, i64 24}
!102 = !{!"_ZTSSt15_Rb_tree_header", !101, i64 0, !15, i64 32}
!103 = !{!102, !100, i64 16}
end_hunk_0
