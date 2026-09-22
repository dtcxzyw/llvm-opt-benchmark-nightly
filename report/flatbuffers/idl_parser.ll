Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIvNS_8Offset64EEEjT0_IT_E:bb.a
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

.lr.ph60.split.us.split.us:                       ; preds = %.lr.ph60, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us"
  %.tr58.us.us = phi ptr [ %.031.lcssa.us.us, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us" ], [ %0, %.lr.ph60 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr58.us.us, i64 %2 ; 3 uses
  %i.l = icmp ult ptr %i.k, %1
  br i1 %i.l, label %.lr.ph.us.us, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us"

.lr.ph.us.us:                                     ; preds = %.lr.ph60.split.us.split.us
  %i.m = getelementptr inbounds nuw i8, ptr %.tr58.us.us, i64 %i.f
  br label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us": ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us", %.lr.ph.us.us
  %.054.us.us.us = phi ptr [ %i.k, %.lr.ph.us.us ], [ %.1.us.us.us, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us" ] ; 2 uses
  %.03153.us.us.us = phi ptr [ %1, %.lr.ph.us.us ], [ %.132.us.us.us, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us" ]
  %.val34.val.us.us.us = load i32, ptr %i.d, align 8, !tbaa !328
  %.val34.val35.us.us.us = load ptr, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.054.us.us.us, i64 %i.f
  %i.o = tail call fastcc noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_124CompareSerializedScalarsEPKhS2_RKNS_8FieldDefE(ptr noundef readonly %i.m, ptr noundef readonly %i.n, i32 %.val34.val.us.us.us, ptr %.val34.val35.us.us.us) ; 2 uses
  %.132.us.us.us.idx = select i1 %i.o, i64 %i.g, i64 0
  %.132.us.us.us = getelementptr inbounds i8, ptr %.03153.us.us.us, i64 %.132.us.us.us.idx ; 4 uses
  %.1.us.us.us.idx = select i1 %i.o, i64 0, i64 %2
  %.1.us.us.us = getelementptr inbounds nuw i8, ptr %.054.us.us.us, i64 %.1.us.us.us.idx ; 3 uses
  %i.p = icmp ult ptr %.1.us.us.us, %.132.us.us.us
  br i1 %i.p, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us", label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit", !llvm.loop !1570

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit": ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit.us.us.us"
  %.pre = ptrtoint ptr %.132.us.us.us to i64
  br label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us": ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit", %.lr.ph60.split.us.split.us
  %.pre-phi = phi i64 [ %.pre, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit" ], [ %i.a, %.lr.ph60.split.us.split.us ]
  %.031.lcssa.us.us = phi ptr [ %.132.us.us.us, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit" ], [ %1, %.lr.ph60.split.us.split.us ]
  %.0.lcssa.us.us = phi ptr [ %.1.us.us.us, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us.loopexit" ], [ %i.k, %.lr.ph60.split.us.split.us ]
  %i.q = getelementptr inbounds i8, ptr %.0.lcssa.us.us, i64 %i.g
  tail call fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortIhZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_1ZNS2_11ParseVectorES5_S6_S8_mE3$_2EEvPT_SC_mT0_T1_"(ptr noundef %.tr58.us.us, ptr noundef %i.q, i64 noundef %2, i16 %3, ptr %4, i64 0)
  %i.r = sub i64 %i.a, %.pre-phi
  %.not.us.us = icmp sgt i64 %i.r, %2
  br i1 %.not.us.us, label %.lr.ph60.split.us.split.us, label %tailrecurse._crit_edge

.lr.ph60.split.split:                             ; preds = %.lr.ph60.split.split.preheader, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit"
  %.tr58 = phi ptr [ %.031.lcssa, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit" ], [ %0, %.lr.ph60.split.split.preheader ] ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr58, i64 %2 ; 3 uses
  %i.t = icmp ult ptr %i.s, %1
  br i1 %i.t, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.lr.ph60.split.split
  %i.u = getelementptr inbounds nuw i8, ptr %.tr58, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit"
  %.054 = phi ptr [ %i.s, %.lr.ph ], [ %.1, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 13 uses
  %.03153 = phi ptr [ %1, %.lr.ph ], [ %.132, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 3 uses
  %.val34.val = load i32, ptr %i.d, align 8, !tbaa !328
  %.val34.val35 = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.054, i64 %i.f
  %i.w = tail call fastcc noundef zeroext i1 @_ZN11flatbuffers12_GLOBAL__N_124CompareSerializedScalarsEPKhS2_RKNS_8FieldDefE(ptr noundef readonly %i.u, ptr noundef readonly %i.v, i32 %.val34.val, ptr %.val34.val35)
  br i1 %i.w, label %iter.check118, label %bb.c

iter.check118:                                    ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %.03153, i64 %i.g ; 10 uses
  br i1 %min.iters.check103, label %.lr.ph.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %iter.check118
  %scevgep98 = getelementptr i8, ptr %.054, i64 %.fr
  %scevgep99 = getelementptr i8, ptr %.03153, i64 %i.h
  %bound0100 = icmp ult ptr %.054, %scevgep99
  %bound1101 = icmp ult ptr %i.x, %scevgep98
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %vector.memcheck97
  br i1 %min.iters.check105, label %vec.epilog.ph122, label %vector.body108

vector.body108:                                   ; preds = %vector.main.loop.iter.check104, %vector.body108
  %index109 = phi i64 [ %index.next114, %vector.body108 ], [ 0, %vector.main.loop.iter.check104 ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.054, i64 %index109 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %index109 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load110 = load <16 x i8>, ptr %i.y, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  %wide.load111 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load112 = load <16 x i8>, ptr %i.z, align 1, !tbaa !81, !alias.scope !1584
  %wide.load113 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !81, !alias.scope !1584
  store <16 x i8> %wide.load112, ptr %i.y, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  store <16 x i8> %wide.load113, ptr %i.aa, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  store <16 x i8> %wide.load110, ptr %i.z, align 1, !tbaa !81, !alias.scope !1584
  store <16 x i8> %wide.load111, ptr %i.ab, align 1, !tbaa !81, !alias.scope !1584
  %index.next114 = add nuw i64 %index109, 32      ; 2 uses
  %i.ac = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.ac, label %middle.block115, label %vector.body108, !llvm.loop !1574

middle.block115:                                  ; preds = %vector.body108
  br i1 %cmp.n116, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %vec.epilog.iter.check120

vec.epilog.iter.check120:                         ; preds = %middle.block115
  br i1 %min.epilog.iters.check121, label %.lr.ph.i.preheader, label %vec.epilog.ph122, !prof !1585

vec.epilog.ph122:                                 ; preds = %vector.main.loop.iter.check104, %vec.epilog.iter.check120
  %vec.epilog.resume.val117 = phi i64 [ %n.vec107, %vec.epilog.iter.check120 ], [ 0, %vector.main.loop.iter.check104 ]
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph122
  %index125 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph122 ], [ %index.next128, %vec.epilog.vector.body124 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.054, i64 %index125 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %index125 ; 2 uses
  %wide.load126 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  %wide.load127 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !81, !alias.scope !1584
  store <4 x i8> %wide.load127, ptr %i.ad, align 1, !tbaa !81, !alias.scope !1583, !noalias !1584
  store <4 x i8> %wide.load126, ptr %i.ae, align 1, !tbaa !81, !alias.scope !1584
  %index.next128 = add nuw i64 %index125, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.af, label %vec.epilog.middle.block129, label %vec.epilog.vector.body124, !llvm.loop !1575

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body124
  br i1 %cmp.n130, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck97, %iter.check118, %vec.epilog.iter.check120, %vec.epilog.middle.block129
  %.06.i.ph = phi i64 [ 0, %iter.check118 ], [ 0, %vector.memcheck97 ], [ %n.vec107, %vec.epilog.iter.check120 ], [ %n.vec123, %vec.epilog.middle.block129 ] ; 5 uses
  %.neg = or disjoint i64 %.06.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %.054, i64 %.06.i.ph ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %.06.i.ph ; 2 uses
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !81
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !81
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !81
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !81
  %i.ak = or disjoint i64 %.06.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi i64 [ %.06.i.ph, %.lr.ph.i.preheader ], [ %i.ak, %.lr.ph.i.prol ]
  %i.al = icmp eq i64 %.fr, %.neg
  br i1 %i.al, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.054, i64 %.06.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %.06.i ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !81
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !81
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !81
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !81
  %i.aq = add nuw i64 %.06.i, 1                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.054, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aq ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !81
  %i.au = load i8, ptr %i.as, align 1, !tbaa !81
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !81
  store i8 %i.at, ptr %i.as, align 1, !tbaa !81
  %i.av = add nuw i64 %.06.i, 2                   ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.av, %.fr
  br i1 %exitcond.not.1, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", label %.lr.ph.i, !llvm.loop !1576

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %.054, i64 %2
  br label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit"

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit": ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block115, %vec.epilog.middle.block129, %bb.c
  %.132 = phi ptr [ %.03153, %bb.c ], [ %i.x, %middle.block115 ], [ %i.x, %vec.epilog.middle.block129 ], [ %i.x, %.lr.ph.i ], [ %i.x, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.1 = phi ptr [ %i.aw, %bb.c ], [ %.054, %middle.block115 ], [ %.054, %vec.epilog.middle.block129 ], [ %.054, %.lr.ph.i ], [ %.054, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ax = icmp ult ptr %.1, %.132
  br i1 %i.ax, label %bb.b, label %iter.check, !llvm.loop !1570

iter.check:                                       ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit", %.lr.ph60.split.split
  %.031.lcssa = phi ptr [ %1, %.lr.ph60.split.split ], [ %.132, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.s, %.lr.ph60.split.split ], [ %.1, %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit" ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.g ; 7 uses
  br i1 %min.iters.check, label %.lr.ph.i37.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %.tr58, i64 %.fr
  %scevgep86 = getelementptr i8, ptr %.0.lcssa, i64 %i.h
  %bound0 = icmp ult ptr %.tr58, %scevgep86
  %bound1 = icmp ult ptr %i.ay, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr58, i64 %index ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  %wide.load88 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load89 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !81, !alias.scope !1587
  %wide.load90 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !81, !alias.scope !1587
  store <16 x i8> %wide.load89, ptr %i.az, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  store <16 x i8> %wide.load90, ptr %i.bb, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  store <16 x i8> %wide.load, ptr %i.ba, align 1, !tbaa !81, !alias.scope !1587
  store <16 x i8> %wide.load88, ptr %i.bc, align 1, !tbaa !81, !alias.scope !1587
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1580

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i37.preheader, label %vec.epilog.ph, !prof !1585

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr58, i64 %index92 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %index92 ; 2 uses
  %wide.load93 = load <4 x i8>, ptr %i.be, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  %wide.load94 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !81, !alias.scope !1587
  store <4 x i8> %wide.load94, ptr %i.be, align 1, !tbaa !81, !alias.scope !1586, !noalias !1587
  store <4 x i8> %wide.load93, ptr %i.bf, align 1, !tbaa !81, !alias.scope !1587
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next95, %n.vec91
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1581

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n96, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %.lr.ph.i37.preheader

.lr.ph.i37.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i38.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec91, %vec.epilog.middle.block ] ; 5 uses
  %.neg135 = or disjoint i64 %.06.i38.ph, 1
  br i1 %lcmp.mod134.not, label %.lr.ph.i37.prol.loopexit, label %.lr.ph.i37.prol

.lr.ph.i37.prol:                                  ; preds = %.lr.ph.i37.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr58, i64 %.06.i38.ph ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.06.i38.ph ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !81
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !81
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !81
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !81
  %i.bl = or disjoint i64 %.06.i38.ph, 1
  br label %.lr.ph.i37.prol.loopexit

.lr.ph.i37.prol.loopexit:                         ; preds = %.lr.ph.i37.prol, %.lr.ph.i37.preheader
  %.06.i38.unr = phi i64 [ %.06.i38.ph, %.lr.ph.i37.preheader ], [ %i.bl, %.lr.ph.i37.prol ]
  %i.bm = icmp eq i64 %.fr, %.neg135
  br i1 %i.bm, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i37.prol.loopexit, %.lr.ph.i37
  %.06.i38 = phi i64 [ %i.bw, %.lr.ph.i37 ], [ %.06.i38.unr, %.lr.ph.i37.prol.loopexit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr58, i64 %.06.i38 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.06.i38 ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 1, !tbaa !81
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !81
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !81
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !81
  %i.br = add nuw i64 %.06.i38, 1                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr58, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.br ; 2 uses
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !81
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !81
  store i8 %i.bv, ptr %i.bs, align 1, !tbaa !81
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !81
  %i.bw = add nuw i64 %.06.i38, 2                 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.bw, %.fr
  br i1 %exitcond71.not.1, label %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", label %.lr.ph.i37, !llvm.loop !1582

"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit": ; preds = %.lr.ph.i37.prol.loopexit, %.lr.ph.i37, %vec.epilog.middle.block, %middle.block
  tail call fastcc void @"_ZN11flatbuffers12_GLOBAL__N_111SimpleQsortIhZNS_6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmE3$_1ZNS2_11ParseVectorES5_S6_S8_mE3$_2EEvPT_SC_mT0_T1_"(ptr noundef nonnull %.tr58, ptr noundef nonnull %i.ay, i64 noundef %2, i16 %3, ptr %4, i64 %.fr)
  %i.bx = ptrtoint ptr %.031.lcssa to i64
  %i.by = sub i64 %i.a, %i.bx
  %.not = icmp sgt i64 %i.by, %2
  br i1 %.not, label %.lr.ph60.split.split, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.loopexit", %"_ZZN11flatbuffers6Parser11ParseVectorERKNS_4TypeEPjPNS_8FieldDefEmENK3$_2clEPhS8_.exit39.us.us", %bb.a
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
end_hunk_0
begin_hunk_1_@_ZN11flatbuffers6Parser9ParseEnumEbPPNS_7EnumDefEPKc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.174, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.jj = invoke noundef ptr @_ZN11flatbuffers14EnumValBuilder16CreateEnumeratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(25) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cc unwind label %bb.ce     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  %i.jk = load ptr, ptr %23, align 8, !tbaa !82   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456: ; preds = %bb.cc
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !81
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.jp = load ptr, ptr %i.iz, align 8, !tbaa !441, !noalias !1757
  invoke void @_ZN11flatbuffers14EnumValBuilder16AcceptEnumeratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(25) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.jp)
          to label %_ZN11flatbuffers14EnumValBuilder16AcceptEnumeratorEv.exit unwind label %bb.bw

_ZN11flatbuffers14EnumValBuilder16AcceptEnumeratorEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit458
  store i8 1, ptr %i.z, align 1, !tbaa !213
  %i.jq = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %.critedge302, label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

bb.ce:                                            ; preds = %bb.cb
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = load ptr, ptr %23, align 8, !tbaa !82   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.ce
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !81
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %bb.cd
  %.pn242 = phi { ptr, i32 } [ %i.js, %bb.cd ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.jt, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  br label %bb.gq

bb.cf:                                            ; preds = %_ZN11flatbuffers14EnumValBuilder16AcceptEnumeratorEv.exit, %bb.bz, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.jz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store i32 0, ptr %i.jz, align 8, !tbaa !294
  %i.ka = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr null, ptr %i.ka, align 8, !tbaa !232
  %i.kb = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %i.jz, ptr %i.kb, align 8, !tbaa !295
  %i.kc = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.jz, ptr %i.kc, align 8, !tbaa !296
  %i.kd = getelementptr inbounds nuw i8, ptr %25, i64 40
  store i64 0, ptr %i.kd, align 8, !tbaa !231
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cq, i64 201 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ek, %bb.cf
  %i.kj = load i32, ptr %i.ke, align 4, !tbaa !228
  %i.kk = icmp eq i32 %i.kj, 125
  br i1 %i.kk, label %bb.el, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kl = load i8, ptr %i.ct, align 1, !tbaa !437, !range !208, !noundef !209
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.kn = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull @.str.175)
  br i1 %i.kn, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN11flatbuffers6Parser16ParseProtoOptionEv(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1)
          to label %bb.ck unwind label %.loopexit586

bb.ck:                                            ; preds = %bb.cj
  store i8 1, ptr %i.z, align 1, !tbaa !213
  %i.ko = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %.critedge306, label %bb.ei

.loopexit586:                                     ; preds = %bb.cj, %bb.ej
  %lpad.loopexit588 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

.loopexit.split-lp587:                            ; preds = %bb.el
  %lpad.loopexit.split-lp589 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.cl:                                            ; preds = %bb.ci, %bb.ch
  %i.kq = invoke noundef ptr @_ZN11flatbuffers14EnumValBuilder16CreateEnumeratorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(25) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %bb.cm unwind label %bb.cq     ; 15 uses

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %i.kq)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.co unwind label %.loopexit.split-lp ; 0 uses

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN11flatbuffers6Parser6ExpectEi(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, i32 noundef 260)
          to label %bb.cp unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  store i8 1, ptr %i.z, align 1, !tbaa !213
  %i.kt = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %.critedge329, label %bb.cs

bb.cq:                                            ; preds = %bb.cl
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.cr:                                            ; preds = %bb.cm
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478

.loopexit:                                        ; preds = %bb.ea
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

.loopexit.split-lp:                               ; preds = %bb.cn, %bb.co, %bb.ct, %bb.cz, %bb.db, %bb.dq, %bb.ds, %bb.du, %bb.dy, %bb.ec, %bb.ee, %bb.cw, %bb.eg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.cs:                                            ; preds = %bb.cp
  br i1 %2, label %bb.ct, label %bb.dp

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN11flatbuffers6Parser16ParseNamespacingEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull %26, ptr noundef nonnull %i.kq)
          to label %bb.cu unwind label %.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  store i8 1, ptr %i.z, align 1, !tbaa !213
  %i.kx = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %.critedge329, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kz = load i8, ptr %i.kf, align 8, !tbaa !1758, !range !208, !noundef !209
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %bb.cw, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.kq, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cw
  %i.lb = load ptr, ptr %i.kq, align 8, !tbaa !82 ; 44 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !79 ; 9 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.ld
  %.not6.i = icmp samesign eq i64 %i.ld, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %min.iters.check = icmp ult i64 %i.ld, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check734 = icmp ult i64 %i.ld, 32
  br i1 %min.iters.check734, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lf = and i64 %i.ld, 24
  %n.vec = and i64 %i.ld, -32                     ; 4 uses
  %i.lg = getelementptr i8, ptr %i.lb, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue828, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue828 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.lb, i64 %index ; 3 uses
  %i.lh = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep735 = getelementptr i8, ptr %i.lh, i64 1
  %i.li = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep736 = getelementptr i8, ptr %i.li, i64 2
  %i.lj = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep737 = getelementptr i8, ptr %i.lj, i64 3
  %i.lk = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep738 = getelementptr i8, ptr %i.lk, i64 4
  %i.ll = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep739 = getelementptr i8, ptr %i.ll, i64 5
  %i.lm = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep740 = getelementptr i8, ptr %i.lm, i64 6
  %i.ln = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep741 = getelementptr i8, ptr %i.ln, i64 7
  %i.lo = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep742 = getelementptr i8, ptr %i.lo, i64 8
  %i.lp = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep743 = getelementptr i8, ptr %i.lp, i64 9
  %i.lq = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep744 = getelementptr i8, ptr %i.lq, i64 10
  %i.lr = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep745 = getelementptr i8, ptr %i.lr, i64 11
  %i.ls = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep746 = getelementptr i8, ptr %i.ls, i64 12
  %i.lt = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep747 = getelementptr i8, ptr %i.lt, i64 13
  %i.lu = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep748 = getelementptr i8, ptr %i.lu, i64 14
  %i.lv = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep749 = getelementptr i8, ptr %i.lv, i64 15
  %i.lw = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep750 = getelementptr i8, ptr %i.lw, i64 16
  %i.lx = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep751 = getelementptr i8, ptr %i.lx, i64 17
  %i.ly = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep752 = getelementptr i8, ptr %i.ly, i64 18
  %i.lz = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep753 = getelementptr i8, ptr %i.lz, i64 19
  %i.ma = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep754 = getelementptr i8, ptr %i.ma, i64 20
  %i.mb = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep755 = getelementptr i8, ptr %i.mb, i64 21
  %i.mc = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep756 = getelementptr i8, ptr %i.mc, i64 22
  %i.md = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep757 = getelementptr i8, ptr %i.md, i64 23
  %i.me = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep758 = getelementptr i8, ptr %i.me, i64 24
  %i.mf = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep759 = getelementptr i8, ptr %i.mf, i64 25
  %i.mg = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep760 = getelementptr i8, ptr %i.mg, i64 26
  %i.mh = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep761 = getelementptr i8, ptr %i.mh, i64 27
  %i.mi = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep762 = getelementptr i8, ptr %i.mi, i64 28
  %i.mj = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep763 = getelementptr i8, ptr %i.mj, i64 29
  %i.mk = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep764 = getelementptr i8, ptr %i.mk, i64 30
  %i.ml = getelementptr i8, ptr %i.lb, i64 %index
  %next.gep765 = getelementptr i8, ptr %i.ml, i64 31
  %i.mm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !81
  %wide.load766 = load <16 x i8>, ptr %i.mm, align 1, !tbaa !81
  %i.mn = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.mo = icmp eq <16 x i8> %wide.load766, splat (i8 46) ; 16 uses
  %i.mp = extractelement <16 x i1> %i.mn, i64 0
  br i1 %i.mp, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1, !tbaa !81
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.mq = extractelement <16 x i1> %i.mn, i64 1
  br i1 %i.mq, label %pred.store.if767, label %pred.store.continue768

pred.store.if767:                                 ; preds = %pred.store.continue
  store i8 95, ptr %next.gep735, align 1, !tbaa !81
  br label %pred.store.continue768

pred.store.continue768:                           ; preds = %pred.store.if767, %pred.store.continue
  %i.mr = extractelement <16 x i1> %i.mn, i64 2
  br i1 %i.mr, label %pred.store.if769, label %pred.store.continue770

pred.store.if769:                                 ; preds = %pred.store.continue768
  store i8 95, ptr %next.gep736, align 1, !tbaa !81
  br label %pred.store.continue770

pred.store.continue770:                           ; preds = %pred.store.if769, %pred.store.continue768
  %i.ms = extractelement <16 x i1> %i.mn, i64 3
  br i1 %i.ms, label %pred.store.if771, label %pred.store.continue772

pred.store.if771:                                 ; preds = %pred.store.continue770
  store i8 95, ptr %next.gep737, align 1, !tbaa !81
  br label %pred.store.continue772

pred.store.continue772:                           ; preds = %pred.store.if771, %pred.store.continue770
  %i.mt = extractelement <16 x i1> %i.mn, i64 4
  br i1 %i.mt, label %pred.store.if773, label %pred.store.continue774

pred.store.if773:                                 ; preds = %pred.store.continue772
  store i8 95, ptr %next.gep738, align 1, !tbaa !81
  br label %pred.store.continue774

pred.store.continue774:                           ; preds = %pred.store.if773, %pred.store.continue772
  %i.mu = extractelement <16 x i1> %i.mn, i64 5
  br i1 %i.mu, label %pred.store.if775, label %pred.store.continue776

pred.store.if775:                                 ; preds = %pred.store.continue774
  store i8 95, ptr %next.gep739, align 1, !tbaa !81
  br label %pred.store.continue776

pred.store.continue776:                           ; preds = %pred.store.if775, %pred.store.continue774
  %i.mv = extractelement <16 x i1> %i.mn, i64 6
  br i1 %i.mv, label %pred.store.if777, label %pred.store.continue778

pred.store.if777:                                 ; preds = %pred.store.continue776
  store i8 95, ptr %next.gep740, align 1, !tbaa !81
  br label %pred.store.continue778

pred.store.continue778:                           ; preds = %pred.store.if777, %pred.store.continue776
  %i.mw = extractelement <16 x i1> %i.mn, i64 7
  br i1 %i.mw, label %pred.store.if779, label %pred.store.continue780

pred.store.if779:                                 ; preds = %pred.store.continue778
  store i8 95, ptr %next.gep741, align 1, !tbaa !81
  br label %pred.store.continue780

pred.store.continue780:                           ; preds = %pred.store.if779, %pred.store.continue778
  %i.mx = extractelement <16 x i1> %i.mn, i64 8
  br i1 %i.mx, label %pred.store.if781, label %pred.store.continue782

pred.store.if781:                                 ; preds = %pred.store.continue780
  store i8 95, ptr %next.gep742, align 1, !tbaa !81
  br label %pred.store.continue782

pred.store.continue782:                           ; preds = %pred.store.if781, %pred.store.continue780
  %i.my = extractelement <16 x i1> %i.mn, i64 9
  br i1 %i.my, label %pred.store.if783, label %pred.store.continue784

pred.store.if783:                                 ; preds = %pred.store.continue782
  store i8 95, ptr %next.gep743, align 1, !tbaa !81
  br label %pred.store.continue784

pred.store.continue784:                           ; preds = %pred.store.if783, %pred.store.continue782
  %i.mz = extractelement <16 x i1> %i.mn, i64 10
  br i1 %i.mz, label %pred.store.if785, label %pred.store.continue786

pred.store.if785:                                 ; preds = %pred.store.continue784
  store i8 95, ptr %next.gep744, align 1, !tbaa !81
  br label %pred.store.continue786

pred.store.continue786:                           ; preds = %pred.store.if785, %pred.store.continue784
  %i.na = extractelement <16 x i1> %i.mn, i64 11
  br i1 %i.na, label %pred.store.if787, label %pred.store.continue788

pred.store.if787:                                 ; preds = %pred.store.continue786
  store i8 95, ptr %next.gep745, align 1, !tbaa !81
  br label %pred.store.continue788

pred.store.continue788:                           ; preds = %pred.store.if787, %pred.store.continue786
  %i.nb = extractelement <16 x i1> %i.mn, i64 12
  br i1 %i.nb, label %pred.store.if789, label %pred.store.continue790

pred.store.if789:                                 ; preds = %pred.store.continue788
  store i8 95, ptr %next.gep746, align 1, !tbaa !81
  br label %pred.store.continue790

pred.store.continue790:                           ; preds = %pred.store.if789, %pred.store.continue788
  %i.nc = extractelement <16 x i1> %i.mn, i64 13
  br i1 %i.nc, label %pred.store.if791, label %pred.store.continue792

pred.store.if791:                                 ; preds = %pred.store.continue790
  store i8 95, ptr %next.gep747, align 1, !tbaa !81
  br label %pred.store.continue792

pred.store.continue792:                           ; preds = %pred.store.if791, %pred.store.continue790
  %i.nd = extractelement <16 x i1> %i.mn, i64 14
  br i1 %i.nd, label %pred.store.if793, label %pred.store.continue794

pred.store.if793:                                 ; preds = %pred.store.continue792
  store i8 95, ptr %next.gep748, align 1, !tbaa !81
  br label %pred.store.continue794

pred.store.continue794:                           ; preds = %pred.store.if793, %pred.store.continue792
  %i.ne = extractelement <16 x i1> %i.mn, i64 15
  br i1 %i.ne, label %pred.store.if795, label %pred.store.continue796

pred.store.if795:                                 ; preds = %pred.store.continue794
  store i8 95, ptr %next.gep749, align 1, !tbaa !81
  br label %pred.store.continue796

pred.store.continue796:                           ; preds = %pred.store.if795, %pred.store.continue794
  %i.nf = extractelement <16 x i1> %i.mo, i64 0
  br i1 %i.nf, label %pred.store.if797, label %pred.store.continue798

end_hunk_1
