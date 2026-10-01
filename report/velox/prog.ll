Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/prog?download=true
inline.NumInlined: 1564
inline.NumDeleted: 717
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN3re24Prog8OptimizeEv:bb.a
  %.07.i = phi ptr [ %i.ed, %bb.r ], [ %i.dn, %bb.q ]
  %i.dz = load i32, ptr %.07.i, align 4, !tbaa !16 ; 2 uses
  %i.ea = and i32 %i.dz, 7
  switch i32 %i.ea, label %.preheader.unreachabledefault [
    i32 0, label %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 1, label %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 2, label %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 7, label %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 4, label %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader
    i32 3, label %bb.r
    i32 6, label %bb.r
    i32 5, label %.critedge66.sink.split
  ]

.preheader.unreachabledefault:                    ; preds = %.preheader
  unreachable

default.unreachable:                              ; preds = %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit
  unreachable

bb.r:                                             ; preds = %.preheader, %.preheader
  %i.eb = lshr i32 %i.dz, 4
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ec
  br label %.preheader, !llvm.loop !198

_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit:      ; preds = %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader, %bb.s
  %i.ee = phi i32 [ %.pre155, %bb.s ], [ %i.do, %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit.preheader ] ; 2 uses
  %i.ef = and i32 %i.ee, 7
  switch i32 %i.ef, label %default.unreachable [
    i32 0, label %.critedge66
    i32 1, label %.critedge66
    i32 2, label %.critedge66
    i32 7, label %.critedge66
    i32 4, label %.critedge66
    i32 3, label %bb.s
    i32 6, label %bb.s
    i32 5, label %bb.t
  ]

bb.s:                                             ; preds = %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit
  %i.eg = lshr i32 %i.ee, 4
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.eh
  %.pre155 = load i32, ptr %i.ei, align 4, !tbaa !16
  br label %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, !llvm.loop !198

bb.t:                                             ; preds = %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit
  %i.ej = load i32, ptr %i.dn, align 4, !tbaa !16 ; 2 uses
  %i.ek = and i32 %i.ej, 7
  %i.el = icmp eq i32 %i.ek, 2
  %i.em = lshr i32 %i.ej, 4
  %i.en = icmp eq i32 %i.em, %i.ca
  %or.cond115 = and i1 %i.el, %i.en
  br i1 %or.cond115, label %bb.u, label %.critedge66

bb.u:                                             ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !17
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %bb.v, label %.critedge66

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  %i.es = load i8, ptr %i.er, align 1, !tbaa !17
  %i.et = icmp eq i8 %i.es, -1
  br i1 %i.et, label %.critedge66.sink.split, label %.critedge66

.critedge66.sink.split:                           ; preds = %.preheader, %bb.v
  %i.eu = or disjoint i32 %i.de, 1
  store i32 %i.eu, ptr %i.cc, align 4, !tbaa !16
  br label %.critedge66

.critedge66:                                      ; preds = %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %_ZN3re2L7IsMatchEPNS_4ProgEPNS0_4InstE.exit, %.critedge66.sink.split, %_ZN3re2L10AddToQueueEPNS_10SparseSetTIvEEi.exit104, %bb.t, %bb.u, %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %.048126, i64 4 ; 2 uses
  %i.ew = sext i32 %.sroa.0.4 to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ew ; 2 uses
  %.not57 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not57, label %_ZN3re210SparseSetTIvED2Ev.exit, label %bb.k, !llvm.loop !199
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 64) i32 @_ZN3re24Prog10EmptyFlagsESt17basic_string_viewIcSt11char_traitsIcEEPKc(i64 %0, ptr nofree readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, %1                       ; 2 uses
  br i1 %i.a, label %bb.b, label %.thread59

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.c = icmp eq ptr %2, %i.b
  br i1 %i.c, label %.thread51, label %bb.c

.thread59:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %2, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17    ; 4 uses
  %i.f = icmp eq i8 %i.e, 10
  %spec.select = zext i1 %i.f to i32              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.h = icmp eq ptr %2, %i.g
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.thread59, %bb.b
  %i.i = phi ptr [ %i.g, %.thread59 ], [ %i.b, %bb.b ]
  %.062 = phi i32 [ %spec.select, %.thread59 ], [ 5, %bb.b ] ; 3 uses
  %i.j = icmp ult ptr %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %2, align 1, !tbaa !17
  %i.l = icmp eq i8 %i.k, 10
  %i.m = or disjoint i32 %.062, 2
  %spec.select25 = select i1 %i.l, i32 %i.m, i32 %.062
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %spec.select25, %bb.d ], [ %.062, %bb.c ] ; 4 uses
  br i1 %i.a, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %2, align 1, !tbaa !17      ; 3 uses
  %i.o = and i8 %i.n, -33
  %i.p = add i8 %i.o, -65
  %or.cond15.i = icmp ult i8 %i.p, 26
  %i.q = add i8 %i.n, -48
  %or.cond8.i = icmp ult i8 %i.q, 10
  %or.cond16.i = or i1 %or.cond8.i, %or.cond15.i
  %i.r = icmp eq i8 %i.n, 95
  %i.s = or i1 %i.r, %or.cond16.i
  %i.t = or i32 %.1, 16
  %spec.select26 = select i1 %i.s, i32 %i.t, i32 %.1
  br label %.thread51

bb.g:                                             ; preds = %.thread59
  %i.u = and i8 %i.e, -33
  %i.v = add i8 %i.u, -65
  %or.cond15.i30 = icmp ult i8 %i.v, 26
  %i.w = add i8 %i.e, -48
  %or.cond8.i31 = icmp ult i8 %i.w, 10
  %or.cond16.i32 = or i1 %or.cond8.i31, %or.cond15.i30
  %i.x = icmp eq i8 %i.e, 95
  %i.y = or i1 %i.x, %or.cond16.i32
  %spec.select27.v = select i1 %i.y, i32 26, i32 10
  %spec.select27 = or disjoint i32 %spec.select27.v, %spec.select
  br label %.thread51

bb.h:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %2, i64 -1
  %i.aa = load <2 x i8>, ptr %i.z, align 1, !tbaa !17 ; 3 uses
  %i.ab = and <2 x i8> %i.aa, splat (i8 -33)
  %i.ac = add <2 x i8> %i.ab, splat (i8 -65)
  %i.ad = icmp ult <2 x i8> %i.ac, splat (i8 26)
  %i.ae = add <2 x i8> %i.aa, splat (i8 -48)
  %i.af = icmp ult <2 x i8> %i.ae, splat (i8 10)
  %i.ag = or <2 x i1> %i.af, %i.ad
  %i.ah = icmp eq <2 x i8> %i.aa, splat (i8 95)
  %i.ai = or <2 x i1> %i.ah, %i.ag                ; 2 uses
  %shift = shufflevector <2 x i1> %i.ai, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.ai, %shift
  %i.aj = extractelement <2 x i1> %foldExtExtBinop, i64 0
  %i.ak = or i32 %.1, 16
  %spec.select28 = select i1 %i.aj, i32 %i.ak, i32 %.1
  br label %.thread51

.thread51:                                        ; preds = %bb.b, %bb.h, %bb.g, %bb.f
  %.2 = phi i32 [ %spec.select26, %bb.f ], [ %spec.select27, %bb.g ], [ %spec.select28, %bb.h ], [ 15, %bb.b ] ; 2 uses
  %i.al = shl nuw nsw i32 %.2, 1
  %i.am = and i32 %i.al, 32
  %i.an = xor i32 %i.am, 32
  %spec.select29 = or i32 %i.an, %.2
  ret i32 %spec.select29
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re214ByteMapBuilder4MarkEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1112) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq i32 %2, 255
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.e, align 4, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %2, ptr %i.h, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !100
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !105  ; 9 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 2 uses
  store i32 %1, ptr %i.v, align 4, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %2, ptr %i.w, align 4, !tbaa !104
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %3 = ptrtoaddr ptr %i.u to i64
  %i.x = add i64 %i.k, -8
  %i.y = sub i64 %i.x, %i.l                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  %4 = sub i64 %i.l, %3
  %diff.check = icmp ugt i64 %4, -128
  %or.cond22 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond22, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check7 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 4 uses
  %next.gep8 = getelementptr i8, ptr %i.j, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.ag = getelementptr i8, ptr %next.gep8, i64 32
  %i.ah = getelementptr i8, ptr %next.gep8, i64 64
  %i.ai = getelementptr i8, ptr %next.gep8, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep8, align 4, !alias.scope !207, !noalias !206
  %wide.load9 = load <4 x i64>, ptr %i.ag, align 4, !alias.scope !207, !noalias !206
  %wide.load10 = load <4 x i64>, ptr %i.ah, align 4, !alias.scope !207, !noalias !206
  %wide.load11 = load <4 x i64>, ptr %i.ai, align 4, !alias.scope !207, !noalias !206
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !206, !noalias !207
  store <4 x i64> %wide.load9, ptr %i.aj, align 4, !alias.scope !206, !noalias !207
  store <4 x i64> %wide.load10, ptr %i.ak, align 4, !alias.scope !206, !noalias !207
  store <4 x i64> %wide.load11, ptr %i.al, align 4, !alias.scope !206, !noalias !207
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec13, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.j, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index14, 3                     ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.u, i64 %i.aq
  %next.gep16 = getelementptr i8, ptr %i.j, i64 %i.aq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %wide.load17 = load <4 x i64>, ptr %next.gep16, align 4, !alias.scope !207, !noalias !206
  store <4 x i64> %wide.load17, ptr %next.gep15, align 4, !alias.scope !206, !noalias !207
  %index.next18 = add nuw i64 %index14, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next18, %n.vec13
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.aa, %n.vec13
  br i1 %cmp.n19, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !207, !noalias !206
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 4, !alias.scope !206, !noalias !207
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !205

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i24.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ay) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.u, ptr %i.c, align 8, !tbaa !105
  store ptr %i.av, ptr %i.d, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.az, ptr %i.f, align 8, !tbaa !101
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re214ByteMapBuilder5MergeEv(ptr noundef nonnull align 8 dereferenceable(1112) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.g = phi ptr [ %i.b, %bb.a ], [ %i.be, %bb.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.i, ptr %i.j, align 8, !tbaa !100
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit:    ; preds = %._crit_edge, %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.g, %i.l
  br i1 %.not.i.i23, label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit25, label %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24

_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit
  store ptr %i.l, ptr %i.c, align 8, !tbaa !100
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit25

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit25:  ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPSt4pairIiiES1_EvT_S3_RSaIT0_E.exit.i.i24
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.027.032 = phi ptr [ %i.b, %.lr.ph ], [ %i.be, %bb.i ] ; 3 uses
  %i.m = load i32, ptr %.sroa.027.032, align 4, !tbaa !103 ; 4 uses
  %i.n = add nsw i32 %i.m, -1                     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !104  ; 5 uses
  %i.q = icmp sgt i32 %i.m, 0
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i32 %i.n, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !110  ; 2 uses
  %i.v = and i32 %i.n, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = and i64 %i.u, %i.x
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = or i64 %i.u, %i.x
  store i64 %i.z, ptr %i.t, align 8, !tbaa !110
  %i.aa = tail call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.m)
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !87
  %i.ae = zext nneg i32 %i.n to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ae
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ag = sdiv i32 %i.p, 64
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ah ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !110 ; 2 uses
  %i.ak = srem i32 %i.p, 64
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  %i.an = and i64 %i.aj, %i.am
  %.not31 = icmp eq i64 %i.an, 0
  br i1 %.not31, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.ao = or i64 %i.aj, %i.am
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !110
  %i.ap = add nsw i32 %i.p, 1
  %i.aq = tail call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ap)
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !87
  %i.au = sext i32 %i.p to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.au
  store i32 %i.at, ptr %i.av, align 4, !tbaa !87
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %.0 = phi i32 [ %i.bd, %bb.h ], [ %i.m, %.preheader ] ; 2 uses
  %i.aw = icmp slt i32 %.0, 256
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0) ; 3 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !87
  %i.bb = tail call noundef i32 @_ZN3re214ByteMapBuilder7RecolorEi(ptr noundef nonnull align 8 dereferenceable(1112) %0, i32 noundef %i.ba)
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !87
  %i.bc = icmp eq i32 %i.ax, %i.p
  %i.bd = add nsw i32 %i.ax, 1
  br i1 %i.bc, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 8 ; 3 uses
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %._crit_edge, label %bb.b, !llvm.loop !0
}

declare noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN3re214ByteMapBuilder7RecolorEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1112) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 9 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %.070.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.h, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.050.069.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.b, %.lr.ph.preheader.i.i.i ] ; 13 uses
  %.val1.i.i.i.i = load i32, ptr %.sroa.050.069.i.i.i, align 4, !tbaa !103
  %i.k = getelementptr i8, ptr %.sroa.050.069.i.i.i, i64 4
  %.val2.i.i.i.i = load i32, ptr %i.k, align 4
  %i.l = icmp eq i32 %.val1.i.i.i.i, %1
  %i.m = icmp eq i32 %.val2.i.i.i.i, %1
  %i.n = select i1 %i.l, i1 true, i1 %i.m
  br i1 %i.n, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i.i, i64 8
  %.val1.i22.i.i.i = load i32, ptr %i.o, align 4, !tbaa !103
  %i.p = getelementptr i8, ptr %.sroa.050.069.i.i.i, i64 12
  %.val2.i23.i.i.i = load i32, ptr %i.p, align 4
  %i.q = icmp eq i32 %.val1.i22.i.i.i, %1
  %i.r = icmp eq i32 %.val2.i23.i.i.i, %1
  %i.s = select i1 %i.q, i1 true, i1 %i.r
  br i1 %i.s, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i.i, i64 16
  %.val1.i24.i.i.i = load i32, ptr %i.t, align 4, !tbaa !103
  %i.u = getelementptr i8, ptr %.sroa.050.069.i.i.i, i64 20
  %.val2.i25.i.i.i = load i32, ptr %i.u, align 4
  %i.v = icmp eq i32 %.val1.i24.i.i.i, %1
  %i.w = icmp eq i32 %.val2.i25.i.i.i, %1
  %i.x = select i1 %i.v, i1 true, i1 %i.w
  br i1 %i.x, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit29", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i.i, i64 24
  %.val1.i26.i.i.i = load i32, ptr %i.y, align 4, !tbaa !103
  %i.z = getelementptr i8, ptr %.sroa.050.069.i.i.i, i64 28
  %.val2.i27.i.i.i = load i32, ptr %i.z, align 4
  %i.aa = icmp eq i32 %.val1.i26.i.i.i, %1
  %i.ab = icmp eq i32 %.val2.i27.i.i.i, %1
  %i.ac = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %i.ac, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit31", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i.i, i64 32
  %i.ae = add nsw i64 %.070.i.i.i, -1
  %i.af = icmp sgt i64 %.070.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !208

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre75.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi76.i.i.i = phi i64 [ %.pre75.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.050.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.ag = ashr exact i64 %.pre-phi76.i.i.i, 3
  switch i64 %i.ag, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.thread" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i28.i.i.i = load i32, ptr %.sroa.050.0.lcssa.i.i.i, align 4, !tbaa !103
  %i.ah = getelementptr i8, ptr %.sroa.050.0.lcssa.i.i.i, i64 4
  %.val2.i29.i.i.i = load i32, ptr %i.ah, align 4
  %i.ai = icmp eq i32 %.val1.i28.i.i.i, %1
  %i.aj = icmp eq i32 %.val2.i29.i.i.i, %1
  %i.ak = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %i.ak, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.050.0.lcssa.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.050.1.i.i.i = phi ptr [ %i.al, %bb.g ], [ %.sroa.050.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 4 uses
  %.val1.i30.i.i.i = load i32, ptr %.sroa.050.1.i.i.i, align 4, !tbaa !103
  %i.am = getelementptr i8, ptr %.sroa.050.1.i.i.i, i64 4
  %.val2.i31.i.i.i = load i32, ptr %i.am, align 4
  %i.an = icmp eq i32 %.val1.i30.i.i.i, %1
  %i.ao = icmp eq i32 %.val2.i31.i.i.i, %1
  %i.ap = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %i.ap, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.050.1.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.050.2.i.i.i = phi ptr [ %i.aq, %bb.i ], [ %.sroa.050.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i32.i.i.i = load i32, ptr %.sroa.050.2.i.i.i, align 4, !tbaa !103
  %i.ar = getelementptr i8, ptr %.sroa.050.2.i.i.i, i64 4
  %.val2.i33.i.i.i = load i32, ptr %i.ar, align 4
  %i.as = icmp eq i32 %.val1.i32.i.i.i, %1
  %i.at = icmp eq i32 %.val2.i33.i.i.i, %1
  %i.au = select i1 %i.as, i1 true, i1 %i.at
  %spec.select.i.i.i = select i1 %i.au, ptr %.sroa.050.2.i.i.i, ptr %i.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit29": ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit31": ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.050.069.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit29", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit31", %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.050.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %.sroa.050.0.lcssa.i.i.i, %bb.f ], [ %i.ax, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit31" ], [ %i.aw, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit29" ], [ %i.av, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.050.069.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ay = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.d
  br i1 %i.ay, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.thread", label %bb.k

bb.k:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit"
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !104
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.thread": ; preds = %._crit_edge.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit"
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !116 ; 5 uses
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.d, %i.bf
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.thread"
  store i32 %1, ptr %i.d, align 4, !tbaa !103
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !104
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !100
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

bb.m:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN3re214ByteMapBuilder7RecolorEiE3$_0ET_SC_SC_T0_.exit.thread"
  %i.bi = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.bi, label %bb.n, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bj = ashr exact i64 %i.g, 3                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #26 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.g ; 2 uses
  store i32 %1, ptr %i.bq, align 4, !tbaa !103
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bc, ptr %i.br, align 4, !tbaa !104
  %.not10.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %2 = ptrtoaddr ptr %i.bp to i64
  %i.bs = add i64 %i.e, -8
  %i.bt = sub i64 %i.bs, %i.f                     ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bt, 24
  %3 = sub i64 %i.f, %2
  %diff.check = icmp ugt i64 %3, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.bt, 120
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bv, 12
  %n.vec = and i64 %i.bv, 4611686018427387888     ; 4 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.ca ; 4 uses
  %next.gep42 = getelementptr i8, ptr %i.b, i64 %i.ca ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.cb = getelementptr i8, ptr %next.gep42, i64 32
  %i.cc = getelementptr i8, ptr %next.gep42, i64 64
  %i.cd = getelementptr i8, ptr %next.gep42, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep42, align 4, !alias.scope !216, !noalias !215
  %wide.load43 = load <4 x i64>, ptr %i.cb, align 4, !alias.scope !216, !noalias !215
  %wide.load44 = load <4 x i64>, ptr %i.cc, align 4, !alias.scope !216, !noalias !215
  %wide.load45 = load <4 x i64>, ptr %i.cd, align 4, !alias.scope !216, !noalias !215
  %i.ce = getelementptr i8, ptr %next.gep, i64 32
  %i.cf = getelementptr i8, ptr %next.gep, i64 64
  %i.cg = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !215, !noalias !216
  store <4 x i64> %wide.load43, ptr %i.ce, align 4, !alias.scope !215, !noalias !216
  store <4 x i64> %wide.load44, ptr %i.cf, align 4, !alias.scope !215, !noalias !216
  store <4 x i64> %wide.load45, ptr %i.cg, align 4, !alias.scope !215, !noalias !216
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.bv, 4611686018427387900   ; 3 uses
  %i.ci = shl i64 %n.vec47, 3                     ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bp, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.b, i64 %i.ci
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.cl = shl i64 %index48, 3                     ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bp, i64 %i.cl
  %next.gep50 = getelementptr i8, ptr %i.b, i64 %i.cl
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %wide.load51 = load <4 x i64>, ptr %next.gep50, align 4, !alias.scope !216, !noalias !215
  store <4 x i64> %wide.load51, ptr %next.gep49, align 4, !alias.scope !215, !noalias !216
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.cm = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %i.bv, %n.vec47
  br i1 %cmp.n53, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bp, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.cn = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !216, !noalias !215
  store i64 %i.cn, ptr %.012.i.i.i.i.i, align 4, !alias.scope !215, !noalias !216
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.co, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !214

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bp, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cj, %vec.epilog.middle.block ], [ %i.by, %middle.block ], [ %i.cp, %.lr.ph.i.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i24.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  %i.cr = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.ct) #23
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !105
  store ptr %i.cq, ptr %i.c, align 8, !tbaa !100
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.cu, ptr %i.be, align 8, !tbaa !101
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRiS5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.l, %bb.k
  %.0 = phi i32 [ %i.ba, %bb.k ], [ %i.bc, %bb.l ], [ %i.bc, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRiS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re214ByteMapBuilder5BuildEPhPi(ptr noundef nonnull align 8 dereferenceable(1112) initializes((1056, 1060)) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.b
  %.1.lcssa = phi i32 [ %.012, %bb.b ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.c = icmp slt i32 %.1.lcssa, 256
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !1

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.012 = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ] ; 5 uses
  %i.d = tail call noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.012) ; 4 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = tail call noundef i32 @_ZN3re214ByteMapBuilder7RecolorEi(ptr noundef nonnull align 8 dereferenceable(1112) %0, i32 noundef %i.g)
  %.not10 = icmp sgt i32 %.012, %i.d
  br i1 %.not10, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = trunc i32 %i.h to i8
  %i.j = sext i32 %.012 to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.j
  %i.k = sub i32 %i.d, %.012
  %i.l = zext i32 %i.k to i64
  %i.m = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.i, i64 %i.m, i1 false), !tbaa !17
  %i.n = add i32 %i.d, 1
  br label %.loopexit

bb.c:                                             ; preds = %.loopexit
  %i.o = load i32, ptr %i.a, align 8, !tbaa !116
  store i32 %i.o, ptr %2, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3re24Prog14ComputeByteMapEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.re2::ByteMapBuilder", align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store i64 -9223372036854775808, ptr %i.b, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1052
  store i32 256, ptr %i.c, align 4, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1056 ; 3 uses
  store i32 257, ptr %i.d, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !72
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.critedge84, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

.loopexit.i:                                      ; preds = %.lr.ph.preheader.i, %.noexc85
  %.1.lcssa.i = phi i32 [ %.012.i, %.noexc85 ], [ %i.ab, %.lr.ph.preheader.i ] ; 2 uses
  %i.q = icmp slt i32 %.1.lcssa.i, 256
  br i1 %i.q, label %bb.b, label %bb.an, !llvm.loop !1

bb.b:                                             ; preds = %.loopexit.i, %._crit_edge
  %.012.i = phi i32 [ 0, %._crit_edge ], [ %.1.lcssa.i, %.loopexit.i ] ; 5 uses
  %i.r = invoke noundef i32 @_ZNK3re29Bitmap25614FindNextSetBitEi(ptr noundef nonnull align 8 dereferenceable(1112) %1, i32 noundef %.012.i)
          to label %.noexc unwind label %bb.aq    ; 4 uses

.noexc:                                           ; preds = %bb.b
  %i.s = sext i32 %i.r to i64
end_hunk_0
begin_hunk_1_@llvm.experimental.cttz.elts.i64.v32i1
!5 = distinct !{!5, !96}
!6 = distinct !{!6, !96}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"_ZTSN3re24Prog4InstE", !12, i64 0, !11, i64 4}
!16 = !{!15, !12, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"_ZTSN4absl12lts_2024011619str_format_internal13FormatArgImplE", !11, i64 0, !18, i64 8}
!20 = !{!19, !18, i64 8}
!21 = !{!"bool", !11, i64 0}
!22 = !{!"long", !11, i64 0}
!23 = !{!"_ZTSN3re28PODArrayItE7DeleterE", !12, i64 0}
!24 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayItE7DeleterELb0EE", !23, i64 0}
!25 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayItE7DeleterEEE", !24, i64 0}
!26 = !{!"p1 short", !18, i64 0}
!27 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !26, i64 0}
!28 = !{!"_ZTSSt11_Tuple_implILm0EJPtN3re28PODArrayItE7DeleterEEE", !25, i64 0, !27, i64 8}
!29 = !{!"_ZTSSt5tupleIJPtN3re28PODArrayItE7DeleterEEE", !28, i64 0}
!30 = !{!"_ZTSSt15__uniq_ptr_implItN3re28PODArrayItE7DeleterEE", !29, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_dataItN3re28PODArrayItE7DeleterELb1ELb1EE", !30, i64 0}
!32 = !{!"_ZTSSt10unique_ptrIA_tN3re28PODArrayItE7DeleterEE", !31, i64 0}
!33 = !{!"_ZTSN3re28PODArrayItEE", !32, i64 0}
!34 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEE7DeleterE", !12, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !34, i64 0}
!36 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !35, i64 0}
!37 = !{!"p1 _ZTSN3re24Prog4InstE", !18, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN3re24Prog4InstELb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !36, i64 0, !38, i64 8}
!40 = !{!"_ZTSSt5tupleIJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrIA_N3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !42, i64 0}
!44 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEEE", !43, i64 0}
!45 = !{!"_ZTSN3re28PODArrayIhE7DeleterE", !12, i64 0}
!46 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIhE7DeleterELb0EE", !45, i64 0}
!47 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIhE7DeleterEEE", !46, i64 0}
!48 = !{!"p1 omnipotent char", !18, i64 0}
!49 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !48, i64 0}
!50 = !{!"_ZTSSt11_Tuple_implILm0EJPhN3re28PODArrayIhE7DeleterEEE", !47, i64 0, !49, i64 8}
!51 = !{!"_ZTSSt5tupleIJPhN3re28PODArrayIhE7DeleterEEE", !50, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_implIhN3re28PODArrayIhE7DeleterEE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_dataIhN3re28PODArrayIhE7DeleterELb1ELb1EE", !52, i64 0}
!54 = !{!"_ZTSSt10unique_ptrIA_hN3re28PODArrayIhE7DeleterEE", !53, i64 0}
!55 = !{!"_ZTSN3re28PODArrayIhEE", !54, i64 0}
!56 = !{!"p1 _ZTSN3re23DFAE", !18, i64 0}
!57 = !{!"_ZTSSt13__atomic_baseIjE", !12, i64 0}
!58 = !{!"_ZTSSt6atomicIjE", !57, i64 0}
!59 = !{!"_ZTSN4absl12lts_202401169once_flagE", !58, i64 0}
!60 = !{!"_ZTSN3re24ProgE", !21, i64 0, !21, i64 1, !21, i64 2, !21, i64 3, !21, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !21, i64 24, !22, i64 32, !11, i64 40, !12, i64 48, !11, i64 52, !33, i64 88, !22, i64 104, !44, i64 112, !55, i64 128, !22, i64 144, !56, i64 152, !56, i64 160, !11, i64 168, !59, i64 424, !59, i64 428}
!61 = !{!60, !22, i64 32}
!62 = !{!60, !12, i64 48}
!63 = !{!60, !21, i64 24}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!37, !37, i64 0}
!67 = !{!34, !12, i64 0}
!68 = !{!26, !26, i64 0}
!69 = !{!23, !12, i64 0}
!70 = !{!60, !21, i64 3}
!71 = !{!60, !12, i64 8}
!72 = !{!60, !12, i64 16}
!73 = !{!"_ZTSN3re28PODArrayIiE7DeleterE", !12, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIiE7DeleterELb0EE", !73, i64 0}
!75 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIiE7DeleterEEE", !74, i64 0}
!76 = !{!"p1 int", !18, i64 0}
!77 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !76, i64 0}
!78 = !{!"_ZTSSt11_Tuple_implILm0EJPiN3re28PODArrayIiE7DeleterEEE", !75, i64 0, !77, i64 8}
!79 = !{!"_ZTSSt5tupleIJPiN3re28PODArrayIiE7DeleterEEE", !78, i64 0}
!80 = !{!"_ZTSSt15__uniq_ptr_implIiN3re28PODArrayIiE7DeleterEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIiN3re28PODArrayIiE7DeleterELb1ELb1EE", !80, i64 0}
!82 = !{!"_ZTSSt10unique_ptrIA_iN3re28PODArrayIiE7DeleterEE", !81, i64 0}
!83 = !{!"_ZTSN3re28PODArrayIiEE", !82, i64 0}
!84 = !{!"_ZTSN3re210SparseSetTIvEE", !12, i64 0, !83, i64 8, !83, i64 24}
!85 = !{!84, !12, i64 0}
!86 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!87 = !{!12, !12, i64 0}
!88 = !{!77, !76, i64 0}
!89 = !{!76, !76, i64 0}
!90 = !{!73, !12, i64 0}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !48, i64 0}
!92 = !{!91, !48, i64 0}
!93 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !91, i64 0, !22, i64 8, !11, i64 16}
!94 = !{!93, !22, i64 8}
!95 = !{!93, !48, i64 0}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!60, !12, i64 12}
!98 = !{!"p1 _ZTSSt4pairIiiE", !18, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseISt4pairIiiESaIS1_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!99, !98, i64 8}
!101 = !{!99, !98, i64 16}
!102 = !{!"_ZTSSt4pairIiiE", !12, i64 0, !12, i64 4}
!103 = !{!102, !12, i64 0}
!104 = !{!102, !12, i64 4}
!105 = !{!99, !98, i64 0}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!"branch_weights", i32 4, i32 12}
!109 = !{!98, !98, i64 0}
!110 = !{!22, !22, i64 0}
!111 = !{!"_ZTSN3re29Bitmap256E", !11, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt4pairIiiESaIS1_EE12_Vector_implE", !99, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseISt4pairIiiESaIS1_EE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorISt4pairIiiESaIS1_EE", !113, i64 0}
!115 = !{!"_ZTSN3re214ByteMapBuilderE", !111, i64 0, !11, i64 32, !12, i64 1056, !114, i64 1064, !114, i64 1088}
!116 = !{!115, !12, i64 1056}
!117 = !{!"_ZTSN3re28PODArrayINS_11SparseArrayIiE10IndexValueEE7DeleterE", !12, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayINS0_11SparseArrayIiE10IndexValueEE7DeleterELb0EE", !117, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayINS0_11SparseArrayIiE10IndexValueEE7DeleterEEE", !118, i64 0}
!120 = !{!"p1 _ZTSN3re211SparseArrayIiE10IndexValueE", !18, i64 0}
!121 = !{!"_ZTSSt10_Head_baseILm0EPN3re211SparseArrayIiE10IndexValueELb0EE", !120, i64 0}
!122 = !{!"_ZTSSt11_Tuple_implILm0EJPN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEEE", !119, i64 0, !121, i64 8}
!123 = !{!"_ZTSSt5tupleIJPN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEEE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_implIN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEE", !123, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_dataIN3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterELb1ELb1EE", !124, i64 0}
!126 = !{!"_ZTSSt10unique_ptrIA_N3re211SparseArrayIiE10IndexValueENS0_8PODArrayIS3_E7DeleterEE", !125, i64 0}
!127 = !{!"_ZTSN3re28PODArrayINS_11SparseArrayIiE10IndexValueEEE", !126, i64 0}
!128 = !{!"_ZTSN3re211SparseArrayIiEE", !12, i64 0, !83, i64 8, !127, i64 24}
!129 = !{!128, !12, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!131 = !{!130, !76, i64 0}
!132 = !{!130, !76, i64 8}
!133 = !{!130, !76, i64 16}
!134 = !{!121, !120, i64 0}
!135 = !{!120, !120, i64 0}
!136 = !{!"_ZTSN3re211SparseArrayIiE10IndexValueE", !12, i64 0, !12, i64 4}
!137 = !{!136, !12, i64 0}
!138 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!139 = !{!"_ZTSNSt12_Vector_baseIN3re24Prog4InstESaIS2_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!140 = !{!139, !37, i64 0}
!141 = !{!139, !37, i64 8}
!142 = !{!139, !37, i64 16}
!143 = !{!"short", !11, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = !{!117, !12, i64 0}
!147 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !18, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!149 = !{!148, !147, i64 0}
!150 = !{!148, !147, i64 8}
!151 = !{!148, !147, i64 16}
!152 = !{!136, !12, i64 4}
!153 = distinct !{!153, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!154 = distinct !{!154, !153, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!155 = distinct !{!155, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!156 = distinct !{!156, !155, !"_ZN4absl12lts_202401169StrFormatIJijEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!157 = distinct !{!157, !"_ZN4absl12lts_202401169StrFormatIJPKchhiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_"}
!158 = distinct !{!158, !157, !"_ZN4absl12lts_202401169StrFormatIJPKchhiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_: argument 0"}
!159 = distinct !{!159, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!160 = distinct !{!160, !159, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!161 = distinct !{!161, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!162 = distinct !{!162, !161, !"_ZN4absl12lts_202401169StrFormatIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!163 = distinct !{!163, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!164 = distinct !{!164, !163, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!165 = distinct !{!165, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!166 = distinct !{!166, !165, !"_ZN4absl12lts_202401169StrFormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!167 = !{!154}
!168 = !{!156}
!169 = !{!158}
!170 = !{!160}
!171 = !{!162}
!172 = !{!164}
!173 = !{!166}
!174 = !{!57, !12, i64 0}
!175 = !{!60, !56, i64 160}
!176 = !{!60, !56, i64 152}
!177 = !{!48, !48, i64 0}
!178 = !{!45, !12, i64 0}
!179 = distinct !{!179, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!180 = distinct !{!180, !179, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!181 = distinct !{!181, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!182 = distinct !{!182, !181, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!183 = distinct !{!183, !96}
!184 = !{!180}
!185 = !{!182}
!186 = distinct !{!186, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!187 = distinct !{!187, !186, !"_ZN4absl12lts_202401169StrFormatIJiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!188 = distinct !{!188, !96}
!189 = !{!187}
!190 = distinct !{!190, !96}
!191 = distinct !{!191, !"_ZN4absl12lts_202401169StrFormatIJiiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!192 = distinct !{!192, !191, !"_ZN4absl12lts_202401169StrFormatIJiiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!193 = distinct !{!193, !96}
!194 = !{!192}
!195 = distinct !{!195, !96}
!196 = distinct !{!196, !96}
!197 = distinct !{!197, !96}
!198 = distinct !{!198, !96}
!199 = distinct !{!199, !96}
!200 = distinct !{!200, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!201 = distinct !{!201, !200, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!202 = distinct !{!202, !200, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!203 = distinct !{!203, !96, !106, !107}
!204 = distinct !{!204, !96, !106, !107}
!205 = distinct !{!205, !96, !106}
!206 = !{!201}
!207 = !{!202}
!208 = distinct !{!208, !96}
!209 = distinct !{!209, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!210 = distinct !{!210, !209, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!211 = distinct !{!211, !209, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!212 = distinct !{!212, !96, !106, !107}
!213 = distinct !{!213, !96, !106, !107}
!214 = distinct !{!214, !96, !106}
!215 = !{!210}
!216 = !{!211}
!217 = distinct !{!217, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!218 = distinct !{!218, !217, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!219 = distinct !{!219, !217, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!220 = distinct !{!220, !96, !106, !107}
!221 = distinct !{!221, !96, !106, !107}
!222 = distinct !{!222, !96, !106}
!223 = distinct !{!223, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!224 = distinct !{!224, !223, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!225 = distinct !{!225, !223, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!226 = distinct !{!226, !96, !106, !107}
!227 = distinct !{!227, !96, !106, !107}
!228 = distinct !{!228, !96, !106}
!229 = distinct !{!229, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!230 = distinct !{!230, !229, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !229, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!232 = distinct !{!232, !96, !106, !107}
!233 = distinct !{!233, !96, !106, !107}
!234 = distinct !{!234, !96, !106}
!235 = distinct !{!235, !96, !106, !107}
!236 = distinct !{!236, !96, !107, !106}
!237 = distinct !{!237, !96}
!238 = distinct !{!238, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_"}
!239 = distinct !{!239, !238, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!240 = distinct !{!240, !238, !"_ZSt19__relocate_object_aISt4pairIiiES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!241 = distinct !{!241, !96, !106, !107}
!242 = distinct !{!242, !96, !106, !107}
!243 = distinct !{!243, !96, !106}
!244 = distinct !{!244, !96}
!245 = distinct !{!245, !96}
!246 = !{!218}
!247 = !{!219}
!248 = !{!224}
!249 = !{!225}
!250 = !{!230}
!251 = !{!231}
!252 = !{!239}
!253 = !{!240}
!254 = distinct !{!254, !96}
!255 = distinct !{!255, !96}
!256 = distinct !{!256, !96}
!257 = distinct !{!257, !96}
!258 = distinct !{!258, !96}
!259 = distinct !{!259, !96}
!260 = distinct !{!260, !96}
!261 = distinct !{!261, !145}
!262 = !{!"branch_weights", !"expected", i32 1717129, i32 2145766519}
!263 = !{!60, !22, i64 104}
!264 = distinct !{!264, !96}
!265 = distinct !{!265, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!266 = distinct !{!266, !265, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!267 = distinct !{!267, !265, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!268 = distinct !{!268, !96}
!269 = distinct !{!269, !265, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0:It1"}
!270 = distinct !{!270, !265, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1:It1"}
!271 = !{!266}
!272 = !{!267}
!273 = !{!269}
!274 = !{!270}
!275 = distinct !{!275, !96}
!276 = distinct !{!276, !96}
!277 = distinct !{!277, !96}
!278 = distinct !{!278, !96}
!279 = distinct !{!279, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!280 = distinct !{!280, !279, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!281 = distinct !{!281, !96}
!282 = distinct !{!282, !96}
!283 = distinct !{!283, !145}
!284 = distinct !{!284, !96}
!285 = distinct !{!285, !96, !289}
!286 = distinct !{!286, !96}
!287 = distinct !{!287, !96}
!288 = !{!280}
!289 = !{!"llvm.loop.peeled.count", i32 1}
!290 = distinct !{!290, !96}
!291 = distinct !{!291, !96}
!292 = distinct !{!292, !96}
!293 = distinct !{!293, !96}
!294 = distinct !{null, null, null, null, null}
!295 = distinct !{null, null, null, null, null, null}
!296 = distinct !{!296, !96}
!297 = distinct !{null, null, null}
!298 = distinct !{null, null, null}
!299 = distinct !{!299, !96}
!300 = distinct !{!300, !96}
!301 = distinct !{!301, !96}
!302 = distinct !{null, null}
!303 = distinct !{null, null, null}
!304 = distinct !{!304, !96}
!305 = !{!18, !18, i64 0}
!306 = distinct !{!306, !96}
!307 = distinct !{!307, !96}
!308 = distinct !{!308, !96}
!309 = distinct !{!309, !96}
!310 = distinct !{!310, !96}
!311 = distinct !{!311, !96}
!312 = distinct !{!312, !96}
!313 = distinct !{!313, !96}
!314 = distinct !{!314, !96}
end_hunk_1
