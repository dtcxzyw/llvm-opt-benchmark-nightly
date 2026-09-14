Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_k_d_tree?download=true
inline.NumInlined: 1717
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN8k_d_tree12SortedPointsILh3EtEC2ERKS1_S3_:bb.a

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check134 = icmp ult i64 %i.et, 30
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ex = and i64 %i.ev, 12
  %n.vec = and i64 %i.ev, -16                     ; 4 uses
  %i.ey = shl i64 %n.vec, 1                       ; 2 uses
  %i.ez = getelementptr i8, ptr %.2.lcssa, i64 %i.ey
  %i.fa = getelementptr i8, ptr %.046.lcssa, i64 %i.ey
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ep, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2.lcssa, i64 %i.fb ; 2 uses
  %next.gep135 = getelementptr i8, ptr %.046.lcssa, i64 %i.fb ; 2 uses
  %i.fc = getelementptr i8, ptr %next.gep135, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep135, align 2, !tbaa !39
  %wide.load136 = load <8 x i16>, ptr %i.fc, align 2, !tbaa !39
  %i.fd = add <8 x i16> %wide.load, %broadcast.splat
  %i.fe = add <8 x i16> %wide.load136, %broadcast.splat
  %i.ff = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.fd, ptr %next.gep, align 2, !tbaa !39
  store <8 x i16> %i.fe, ptr %i.ff, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec138 = and i64 %i.ev, -4                   ; 3 uses
  %i.fh = shl i64 %n.vec138, 1                    ; 2 uses
  %i.fi = getelementptr i8, ptr %.2.lcssa, i64 %i.fh
  %i.fj = getelementptr i8, ptr %.046.lcssa, i64 %i.fh
  %broadcast.splatinsert139 = insertelement <4 x i16> poison, i16 %i.ep, i64 0
  %broadcast.splat140 = shufflevector <4 x i16> %broadcast.splatinsert139, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index141 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next145, %vec.epilog.vector.body ] ; 2 uses
  %i.fk = shl i64 %index141, 1                    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.2.lcssa, i64 %i.fk
  %next.gep143 = getelementptr i8, ptr %.046.lcssa, i64 %i.fk
  %wide.load144 = load <4 x i16>, ptr %next.gep143, align 2, !tbaa !39
  %i.fl = add <4 x i16> %wide.load144, %broadcast.splat140
  store <4 x i16> %i.fl, ptr %next.gep142, align 2, !tbaa !39
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.fm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !231

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n146 = icmp eq i64 %i.ev, %n.vec138
  br i1 %cmp.n146, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3113.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fi, %vec.epilog.middle.block ]
  %.248112.ph = phi ptr [ %.046.lcssa, %iter.check ], [ %i.fa, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.critedge:                                        ; preds = %.critedge.preheader187, %.critedge
  %.2108 = phi ptr [ %i.fp, %.critedge ], [ %.2108.ph, %.critedge.preheader187 ] ; 2 uses
  %.251107 = phi ptr [ %i.fn, %.critedge ], [ %.251107.ph, %.critedge.preheader187 ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.251107, i64 2 ; 2 uses
  %i.fo = load i16, ptr %.251107, align 2, !tbaa !39
  %i.fp = getelementptr inbounds nuw i8, ptr %.2108, i64 2 ; 2 uses
  store i16 %i.fo, ptr %.2108, align 2, !tbaa !39
  %.not62 = icmp eq ptr %i.fn, %i.dg
  br i1 %.not62, label %.preheader, label %.critedge, !llvm.loop !232

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.3113 = phi ptr [ %i.ft, %vec.epilog.scalar.ph ], [ %.3113.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.248112 = phi ptr [ %i.fq, %vec.epilog.scalar.ph ], [ %.248112.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.248112, i64 2 ; 2 uses
  %i.fr = load i16, ptr %.248112, align 2, !tbaa !39
  %i.fs = add i16 %i.fr, %i.ep
  %i.ft = getelementptr inbounds nuw i8, ptr %.3113, i64 2
  store i16 %i.fs, ptr %.3113, align 2, !tbaa !39
  %.not63 = icmp eq ptr %i.fq, %i.en
  br i1 %.not63, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.c, label %bb.e, !llvm.loop !234

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i94: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit95

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit95:     ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i94, %bb.d
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i, label %_ZN8k_d_tree6PointsILh3EtED2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit95
  tail call void @_ZdaPv(ptr noundef nonnull %i.fu) #20
  br label %_ZN8k_d_tree6PointsILh3EtED2Ev.exit

_ZN8k_d_tree6PointsILh3EtED2Ev.exit:              ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit95, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8k_d_tree6KdTreeILh3EttE4initEthRKNS_13SortedIndicesILh3EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.k_d_tree::SortedIndices<'\\x03'>::SplitResult", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNK8k_d_tree13SortedIndicesILh3EE5splitEhRSt6vectorIbSaIbEE(ptr dead_on_unwind nonnull writable sret(%"struct.k_d_tree::SortedIndices<'\\x03'>::SplitResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = load i16, ptr %i.b, align 8, !tbaa !161
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = zext i16 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.e
  store i16 %i.c, ptr %i.g, align 2, !tbaa !39
  %i.h = zext i8 %2 to i16
  %.lhs.trunc = add nuw nsw i16 %i.h, 1
  %i.i = urem i16 %.lhs.trunc, 3                  ; 2 uses
  %i.j = load i64, ptr %4, align 8, !tbaa !84
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i16 %1, 1
  %i.m = or disjoint i16 %i.l, 1
  %i.n = trunc nuw nsw i16 %i.i to i8
  invoke void @_ZN8k_d_tree6KdTreeILh3EttE4initEthRKNS_13SortedIndicesILh3EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i16 noundef zeroext %i.m, i8 noundef zeroext %i.n, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8k_d_tree13SortedIndicesILh3EE11SplitResultD2Ev(ptr noundef nonnull align 8 dead_on_return(34) dereferenceable(34) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !84
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = shl i16 %1, 1
  %i.t = add i16 %i.s, 2
  %i.u = trunc nuw nsw i16 %i.i to i8
  invoke void @_ZN8k_d_tree6KdTreeILh3EttE4initEthRKNS_13SortedIndicesILh3EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i16 noundef zeroext %i.t, i8 noundef zeroext %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.w) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i:     ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1.i, label %_ZN8k_d_tree13SortedIndicesILh3EE11SplitResultD2Ev.exit, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i2.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i2.i: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.y) #20
  br label %_ZN8k_d_tree13SortedIndicesILh3EE11SplitResultD2Ev.exit

_ZN8k_d_tree13SortedIndicesILh3EE11SplitResultD2Ev.exit: ; preds = %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit.i, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8k_d_tree13SortedIndicesILh3EE5splitEhRSt6vectorIbSaIbEE(ptr dead_on_unwind noalias writable sret(%"struct.k_d_tree::SortedIndices<'\\x03'>::SplitResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = zext i8 %2 to i64                        ; 4 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !84     ; 5 uses
  %i.e = mul i64 %i.d, %i.c
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.e ; 9 uses
  %i.g = lshr i64 %i.d, 1                         ; 7 uses
  %i.h = and i64 %i.g, 65535                      ; 28 uses
  %.idx128 = shl nuw nsw i64 %i.h, 1              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx128 ; 7 uses
  %.not116 = icmp eq i64 %i.h, 0                  ; 2 uses
  br i1 %.not116, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load ptr, ptr %3, align 8, !tbaa !87     ; 3 uses
  %i.k = add nsw i64 %.idx128, -2                 ; 2 uses
  %i.l = and i64 %i.k, 2
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.m = load i16, ptr %i.f, align 2, !tbaa !39   ; 2 uses
  %i.n = lshr i16 %i.m, 6
  %.zext114.prol = zext nneg i16 %i.n to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext114.prol ; 2 uses
  %i.p = and i16 %i.m, 63
  %i.q = zext nneg i16 %i.p to i64
  %i.r = shl nuw i64 1, %i.q
  %i.s = load i64, ptr %i.o, align 8, !tbaa !131
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.o, align 8, !tbaa !131
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.054117.unr = phi ptr [ %i.f, %.lr.ph ], [ %i.u, %.prol.loopexit.unr-lcssa ]
  %i.v = icmp eq i64 %i.k, 0
  br i1 %i.v, label %iter.check, label %.lr.ph.new

iter.check:                                       ; preds = %.lr.ph.new, %.prol.loopexit
  %i.w = mul nuw nsw i64 %i.h, 6
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #23 ; 8 uses
  %min.iters.check = icmp samesign ult i64 %i.h, 4
  br i1 %min.iters.check, label %.split.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check148 = icmp samesign ult i64 %i.h, 16
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.g, 65520                    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <8 x i16> %vec.ind, ptr %i.y, align 2, !tbaa !39
  store <8 x i16> %step.add, ptr %i.z, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %iter.check169, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ab = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.split.i.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec149 = and i64 %i.g, 65532                 ; 3 uses
  %i.ac = trunc nuw i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind151 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next153, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %index150
  store <4 x i16> %vec.ind151, ptr %i.ad, align 2, !tbaa !39
  %index.next152 = add nuw i64 %index150, 4       ; 2 uses
  %vec.ind.next153 = add <4 x i16> %vec.ind151, splat (i16 4)
  %i.ae = icmp eq i64 %index.next152, %n.vec149
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n154 = icmp eq i64 %i.h, %n.vec149
  br i1 %cmp.n154, label %iter.check169, label %.split.i.preheader

.split.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec149, %vec.epilog.middle.block ]
  br label %.split.i

iter.check169:                                    ; preds = %.split.i, %vec.epilog.middle.block, %middle.block
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.h ; 3 uses
  %min.iters.check155 = icmp samesign ult i64 %i.h, 4
  br i1 %min.iters.check155, label %vec.epilog.scalar.ph170.preheader, label %vector.main.loop.iter.check156

vector.main.loop.iter.check156:                   ; preds = %iter.check169
  %min.iters.check157 = icmp samesign ult i64 %i.h, 16
  br i1 %min.iters.check157, label %vec.epilog.ph173, label %vector.ph158

vector.ph158:                                     ; preds = %vector.main.loop.iter.check156
  %n.vec159 = and i64 %i.g, 65520                 ; 4 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %vec.ind162 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph158 ], [ %vec.ind.next165, %vector.body160 ] ; 3 uses
  %step.add163 = add <8 x i16> %vec.ind162, splat (i16 8)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index161 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <8 x i16> %vec.ind162, ptr %i.ag, align 2, !tbaa !39
  store <8 x i16> %step.add163, ptr %i.ah, align 2, !tbaa !39
  %index.next164 = add nuw i64 %index161, 16      ; 2 uses
  %vec.ind.next165 = add <8 x i16> %vec.ind162, splat (i16 16)
  %i.ai = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.ai, label %middle.block166, label %vector.body160, !llvm.loop !237

middle.block166:                                  ; preds = %vector.body160
  %cmp.n167 = icmp eq i64 %i.h, %n.vec159
  br i1 %cmp.n167, label %iter.check200, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block166
  %i.aj = and i64 %i.d, 24
  %min.epilog.iters.check172 = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check172, label %vec.epilog.scalar.ph170.preheader, label %vec.epilog.ph173, !prof !158

vec.epilog.ph173:                                 ; preds = %vector.main.loop.iter.check156, %vec.epilog.iter.check171
  %vec.epilog.resume.val168 = phi i64 [ %n.vec159, %vec.epilog.iter.check171 ], [ 0, %vector.main.loop.iter.check156 ] ; 2 uses
  %n.vec174 = and i64 %i.g, 65532                 ; 3 uses
  %i.ak = trunc nuw i64 %vec.epilog.resume.val168 to i16
  %broadcast.splatinsert175 = insertelement <4 x i16> poison, i16 %i.ak, i64 0
  %broadcast.splat176 = shufflevector <4 x i16> %broadcast.splatinsert175, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction177 = or disjoint <4 x i16> %broadcast.splat176, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body178

vec.epilog.vector.body178:                        ; preds = %vec.epilog.vector.body178, %vec.epilog.ph173
  %index179 = phi i64 [ %vec.epilog.resume.val168, %vec.epilog.ph173 ], [ %index.next181, %vec.epilog.vector.body178 ] ; 2 uses
  %vec.ind180 = phi <4 x i16> [ %induction177, %vec.epilog.ph173 ], [ %vec.ind.next182, %vec.epilog.vector.body178 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %index179
  store <4 x i16> %vec.ind180, ptr %i.al, align 2, !tbaa !39
  %index.next181 = add nuw i64 %index179, 4       ; 2 uses
  %vec.ind.next182 = add <4 x i16> %vec.ind180, splat (i16 4)
  %i.am = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.am, label %vec.epilog.middle.block183, label %vec.epilog.vector.body178, !llvm.loop !238

vec.epilog.middle.block183:                       ; preds = %vec.epilog.vector.body178
  %cmp.n184 = icmp eq i64 %i.h, %n.vec174
  br i1 %cmp.n184, label %iter.check200, label %vec.epilog.scalar.ph170.preheader

vec.epilog.scalar.ph170.preheader:                ; preds = %iter.check169, %vec.epilog.iter.check171, %vec.epilog.middle.block183
  %indvars.iv.1.i.ph = phi i64 [ 0, %iter.check169 ], [ %n.vec159, %vec.epilog.iter.check171 ], [ %n.vec174, %vec.epilog.middle.block183 ]
  br label %vec.epilog.scalar.ph170

vec.epilog.scalar.ph170:                          ; preds = %vec.epilog.scalar.ph170.preheader, %vec.epilog.scalar.ph170
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %vec.epilog.scalar.ph170 ], [ %indvars.iv.1.i.ph, %vec.epilog.scalar.ph170.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv.1.i
  %i.ao = trunc nuw i64 %indvars.iv.1.i to i16
  store i16 %i.ao, ptr %i.an, align 2, !tbaa !39
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next.1.i, %i.h
  br i1 %exitcond130.not, label %iter.check200, label %vec.epilog.scalar.ph170, !llvm.loop !239

iter.check200:                                    ; preds = %vec.epilog.scalar.ph170, %vec.epilog.middle.block183, %middle.block166
  %.idx.i = shl nuw nsw i64 %i.h, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i ; 3 uses
  %min.iters.check186 = icmp samesign ult i64 %i.h, 4
  br i1 %min.iters.check186, label %vec.epilog.scalar.ph201.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %iter.check200
  %min.iters.check188 = icmp samesign ult i64 %i.h, 16
  br i1 %min.iters.check188, label %vec.epilog.ph204, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %n.vec190 = and i64 %i.g, 65520                 ; 4 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next195, %vector.body191 ] ; 2 uses
  %vec.ind193 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph189 ], [ %vec.ind.next196, %vector.body191 ] ; 3 uses
  %step.add194 = add <8 x i16> %vec.ind193, splat (i16 8)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index192 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <8 x i16> %vec.ind193, ptr %i.aq, align 2, !tbaa !39
  store <8 x i16> %step.add194, ptr %i.ar, align 2, !tbaa !39
  %index.next195 = add nuw i64 %index192, 16      ; 2 uses
  %vec.ind.next196 = add <8 x i16> %vec.ind193, splat (i16 16)
  %i.as = icmp eq i64 %index.next195, %n.vec190
  br i1 %i.as, label %middle.block197, label %vector.body191, !llvm.loop !240

middle.block197:                                  ; preds = %vector.body191
  %cmp.n198 = icmp eq i64 %i.h, %n.vec190
  br i1 %cmp.n198, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block197
  %i.at = and i64 %i.d, 24
  %min.epilog.iters.check203 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check203, label %vec.epilog.scalar.ph201.preheader, label %vec.epilog.ph204, !prof !158

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check202
  %vec.epilog.resume.val199 = phi i64 [ %n.vec190, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check187 ] ; 2 uses
  %n.vec205 = and i64 %i.g, 65532                 ; 3 uses
  %i.au = trunc nuw i64 %vec.epilog.resume.val199 to i16
  %broadcast.splatinsert206 = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %broadcast.splat207 = shufflevector <4 x i16> %broadcast.splatinsert206, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction208 = or disjoint <4 x i16> %broadcast.splat207, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body209

vec.epilog.vector.body209:                        ; preds = %vec.epilog.vector.body209, %vec.epilog.ph204
  %index210 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph204 ], [ %index.next212, %vec.epilog.vector.body209 ] ; 2 uses
  %vec.ind211 = phi <4 x i16> [ %induction208, %vec.epilog.ph204 ], [ %vec.ind.next213, %vec.epilog.vector.body209 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index210
  store <4 x i16> %vec.ind211, ptr %i.av, align 2, !tbaa !39
  %index.next212 = add nuw i64 %index210, 4       ; 2 uses
  %vec.ind.next213 = add <4 x i16> %vec.ind211, splat (i16 4)
  %i.aw = icmp eq i64 %index.next212, %n.vec205
  br i1 %i.aw, label %vec.epilog.middle.block214, label %vec.epilog.vector.body209, !llvm.loop !241

vec.epilog.middle.block214:                       ; preds = %vec.epilog.vector.body209
  %cmp.n215 = icmp eq i64 %i.h, %n.vec205
  br i1 %cmp.n215, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph201.preheader

vec.epilog.scalar.ph201.preheader:                ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block214
  %indvars.iv.2.i.ph = phi i64 [ 0, %iter.check200 ], [ %n.vec190, %vec.epilog.iter.check202 ], [ %n.vec205, %vec.epilog.middle.block214 ]
  br label %vec.epilog.scalar.ph201

vec.epilog.scalar.ph201:                          ; preds = %vec.epilog.scalar.ph201.preheader, %vec.epilog.scalar.ph201
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %vec.epilog.scalar.ph201 ], [ %indvars.iv.2.i.ph, %vec.epilog.scalar.ph201.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.2.i
  %i.ay = trunc nuw i64 %indvars.iv.2.i to i16
  store i16 %i.ay, ptr %i.ax, align 2, !tbaa !39
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next.2.i, %i.h
  br i1 %exitcond131.not, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit, label %vec.epilog.scalar.ph201, !llvm.loop !242

.split.i:                                         ; preds = %.split.i.preheader, %.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i ], [ %indvars.iv.i.ph, %.split.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ba = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ba, ptr %i.az, align 2, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.h
  br i1 %exitcond.not, label %iter.check169, label %.split.i, !llvm.loop !243

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit:       ; preds = %vec.epilog.scalar.ph201, %vec.epilog.middle.block214, %middle.block197
  %i.bb = mul nuw nsw i64 %i.h, %i.c
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.bb ; 2 uses
  %.not147 = icmp eq i64 %i.h, 1
  br i1 %.not147, label %bb.d, label %bb.b, !prof !162

bb.b:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bc, ptr align 2 %i.f, i64 %.idx128, i1 false)
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.c:                                             ; preds = %bb.a
  %i.bd = mul nuw nsw i64 %i.h, 6
  %i.be = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #23
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.d:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit
  %i.bf = load i16, ptr %i.f, align 2, !tbaa !39
  store i16 %i.bf, ptr %i.bc, align 2, !tbaa !39
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.054117 = phi ptr [ %i.bx, %.lr.ph.new ], [ %.054117.unr, %.prol.loopexit ] ; 3 uses
  %i.bg = load i16, ptr %.054117, align 2, !tbaa !39 ; 2 uses
  %i.bh = lshr i16 %i.bg, 6
  %.zext114 = zext nneg i16 %i.bh to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext114 ; 2 uses
  %i.bj = and i16 %i.bg, 63
  %i.bk = zext nneg i16 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !131
  %i.bn = or i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %i.bi, align 8, !tbaa !131
  %i.bo = getelementptr inbounds nuw i8, ptr %.054117, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !39 ; 2 uses
  %i.bq = lshr i16 %i.bp, 6
  %.zext114.1 = zext nneg i16 %i.bq to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext114.1 ; 2 uses
  %i.bs = and i16 %i.bp, 63
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = load i64, ptr %i.br, align 8, !tbaa !131
  %i.bw = or i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !131
  %i.bx = getelementptr inbounds nuw i8, ptr %.054117, i64 4 ; 2 uses
  %.not.1 = icmp eq ptr %i.bx, %i.i
  br i1 %.not.1, label %iter.check, label %.lr.ph.new, !llvm.loop !244

_ZSt4copyIPKtPtET0_T_S4_S3_.exit:                 ; preds = %bb.c, %bb.d, %bb.b
  %i.by = phi ptr [ %i.x, %bb.d ], [ %i.be, %bb.c ], [ %i.x, %bb.b ] ; 5 uses
  %i.bz = load i64, ptr %1, align 8, !tbaa !84    ; 2 uses
  %i.ca = xor i64 %i.h, -1
  %i.cb = add i64 %i.bz, %i.ca                    ; 35 uses
  %i.cc = mul i64 %i.cb, 3
  %i.cd = mul i64 %i.cb, 6
  %.inv.i.i = icmp sgt i64 %i.cc, -1
  %i.ce = select i1 %.inv.i.i, i64 %i.cd, i64 -1
  %i.cf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #23
          to label %.noexc unwind label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit92 ; 10 uses

.noexc:                                           ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit
  %.not.i63 = icmp eq i64 %i.cb, 0
  br i1 %.not.i63, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %iter.check231

iter.check231:                                    ; preds = %.noexc
  %min.iters.check217 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check217, label %.split.i64.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check231
  %i.cg = add i64 %i.bz, -2
  %i.ch = sub i64 %i.cg, %i.h                     ; 2 uses
  %i.ci = and i64 %i.ch, 65535
  %i.cj = icmp eq i64 %i.ci, 65535
  %i.ck = icmp ugt i64 %i.ch, 65535
  %i.cl = or i1 %i.cj, %i.ck
  br i1 %i.cl, label %.split.i64.preheader, label %vector.main.loop.iter.check218

vector.main.loop.iter.check218:                   ; preds = %vector.scevcheck
  %min.iters.check219 = icmp ult i64 %i.cb, 16
  br i1 %min.iters.check219, label %vec.epilog.ph235, label %vector.ph220

vector.ph220:                                     ; preds = %vector.main.loop.iter.check218
  %i.cm = and i64 %i.cb, 12
  %n.vec221 = and i64 %i.cb, -16                  ; 4 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next226, %vector.body222 ] ; 2 uses
  %vec.ind224 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph220 ], [ %vec.ind.next227, %vector.body222 ] ; 3 uses
  %step.add225 = add <8 x i16> %vec.ind224, splat (i16 8)
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %index223 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <8 x i16> %vec.ind224, ptr %i.cn, align 2, !tbaa !39
  store <8 x i16> %step.add225, ptr %i.co, align 2, !tbaa !39
  %index.next226 = add nuw i64 %index223, 16      ; 2 uses
  %vec.ind.next227 = add <8 x i16> %vec.ind224, splat (i16 16)
  %i.cp = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.cp, label %middle.block228, label %vector.body222, !llvm.loop !245

middle.block228:                                  ; preds = %vector.body222
  %cmp.n229 = icmp eq i64 %i.cb, %n.vec221
  br i1 %cmp.n229, label %iter.check263, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  %min.epilog.iters.check234 = icmp eq i64 %i.cm, 0
  br i1 %min.epilog.iters.check234, label %.split.i64.preheader, label %vec.epilog.ph235, !prof !158

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check218, %vec.epilog.iter.check233
  %vec.epilog.resume.val230 = phi i64 [ %n.vec221, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check218 ] ; 2 uses
  %n.vec236 = and i64 %i.cb, -4                   ; 3 uses
  %i.cq = trunc i64 %vec.epilog.resume.val230 to i16
  %broadcast.splatinsert237 = insertelement <4 x i16> poison, i16 %i.cq, i64 0
  %broadcast.splat238 = shufflevector <4 x i16> %broadcast.splatinsert237, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction239 = or disjoint <4 x i16> %broadcast.splat238, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body240

vec.epilog.vector.body240:                        ; preds = %vec.epilog.vector.body240, %vec.epilog.ph235
  %index241 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph235 ], [ %index.next243, %vec.epilog.vector.body240 ] ; 2 uses
  %vec.ind242 = phi <4 x i16> [ %induction239, %vec.epilog.ph235 ], [ %vec.ind.next244, %vec.epilog.vector.body240 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %index241
  store <4 x i16> %vec.ind242, ptr %i.cr, align 2, !tbaa !39
  %index.next243 = add nuw i64 %index241, 4       ; 2 uses
  %vec.ind.next244 = add <4 x i16> %vec.ind242, splat (i16 4)
  %i.cs = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.cs, label %vec.epilog.middle.block245, label %vec.epilog.vector.body240, !llvm.loop !246

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body240
  %cmp.n246 = icmp eq i64 %i.cb, %n.vec236
  br i1 %cmp.n246, label %iter.check263, label %.split.i64.preheader

.split.i64.preheader:                             ; preds = %vector.scevcheck, %iter.check231, %vec.epilog.iter.check233, %vec.epilog.middle.block245
  %indvars.iv.i65.ph = phi i64 [ 0, %iter.check231 ], [ 0, %vector.scevcheck ], [ %n.vec221, %vec.epilog.iter.check233 ], [ %n.vec236, %vec.epilog.middle.block245 ]
  br label %.split.i64

iter.check263:                                    ; preds = %.split.i64, %vec.epilog.middle.block245, %middle.block228
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %min.iters.check249 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check249, label %vec.epilog.scalar.ph264.preheader, label %vector.scevcheck248

vector.scevcheck248:                              ; preds = %iter.check263
  %i.cu = add i64 %i.cb, -1                       ; 2 uses
  %i.cv = and i64 %i.cu, 65535
  %i.cw = icmp eq i64 %i.cv, 65535
  %i.cx = icmp ugt i64 %i.cu, 65535
  %i.cy = or i1 %i.cw, %i.cx
  br i1 %i.cy, label %vec.epilog.scalar.ph264.preheader, label %vector.main.loop.iter.check250

vector.main.loop.iter.check250:                   ; preds = %vector.scevcheck248
  %min.iters.check251 = icmp ult i64 %i.cb, 16
  br i1 %min.iters.check251, label %vec.epilog.ph267, label %vector.ph252

vector.ph252:                                     ; preds = %vector.main.loop.iter.check250
  %i.cz = and i64 %i.cb, 12
  %n.vec253 = and i64 %i.cb, 131056               ; 4 uses
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next258, %vector.body254 ] ; 2 uses
  %vec.ind256 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph252 ], [ %vec.ind.next259, %vector.body254 ] ; 3 uses
  %step.add257 = add <8 x i16> %vec.ind256, splat (i16 8)
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index255 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <8 x i16> %vec.ind256, ptr %i.da, align 2, !tbaa !39
  store <8 x i16> %step.add257, ptr %i.db, align 2, !tbaa !39
  %index.next258 = add nuw i64 %index255, 16      ; 2 uses
  %vec.ind.next259 = add <8 x i16> %vec.ind256, splat (i16 16)
  %i.dc = icmp eq i64 %index.next258, %n.vec253
  br i1 %i.dc, label %middle.block260, label %vector.body254, !llvm.loop !247

middle.block260:                                  ; preds = %vector.body254
  %cmp.n261 = icmp eq i64 %i.cb, %n.vec253
  br i1 %cmp.n261, label %iter.check295, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block260
  %min.epilog.iters.check266 = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check266, label %vec.epilog.scalar.ph264.preheader, label %vec.epilog.ph267, !prof !158

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check250, %vec.epilog.iter.check265
  %vec.epilog.resume.val262 = phi i64 [ %n.vec253, %vec.epilog.iter.check265 ], [ 0, %vector.main.loop.iter.check250 ] ; 2 uses
  %n.vec268 = and i64 %i.cb, 131068               ; 3 uses
  %i.dd = trunc i64 %vec.epilog.resume.val262 to i16
  %broadcast.splatinsert269 = insertelement <4 x i16> poison, i16 %i.dd, i64 0
  %broadcast.splat270 = shufflevector <4 x i16> %broadcast.splatinsert269, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction271 = or disjoint <4 x i16> %broadcast.splat270, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph267
  %index273 = phi i64 [ %vec.epilog.resume.val262, %vec.epilog.ph267 ], [ %index.next275, %vec.epilog.vector.body272 ] ; 2 uses
  %vec.ind274 = phi <4 x i16> [ %induction271, %vec.epilog.ph267 ], [ %vec.ind.next276, %vec.epilog.vector.body272 ] ; 2 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %index273
  store <4 x i16> %vec.ind274, ptr %i.de, align 2, !tbaa !39
  %index.next275 = add nuw i64 %index273, 4       ; 2 uses
  %vec.ind.next276 = add <4 x i16> %vec.ind274, splat (i16 4)
  %i.df = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.df, label %vec.epilog.middle.block277, label %vec.epilog.vector.body272, !llvm.loop !248

vec.epilog.middle.block277:                       ; preds = %vec.epilog.vector.body272
  %cmp.n278 = icmp eq i64 %i.cb, %n.vec268
  br i1 %cmp.n278, label %iter.check295, label %vec.epilog.scalar.ph264.preheader

vec.epilog.scalar.ph264.preheader:                ; preds = %vector.scevcheck248, %iter.check263, %vec.epilog.iter.check265, %vec.epilog.middle.block277
  %indvars.iv.1.i68.ph = phi i64 [ 0, %iter.check263 ], [ 0, %vector.scevcheck248 ], [ %n.vec253, %vec.epilog.iter.check265 ], [ %n.vec268, %vec.epilog.middle.block277 ]
  br label %vec.epilog.scalar.ph264

vec.epilog.scalar.ph264:                          ; preds = %vec.epilog.scalar.ph264.preheader, %vec.epilog.scalar.ph264
  %indvars.iv.1.i68 = phi i64 [ %indvars.iv.next.1.i69, %vec.epilog.scalar.ph264 ], [ %indvars.iv.1.i68.ph, %vec.epilog.scalar.ph264.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.1.i68
  %i.dh = trunc nuw i64 %indvars.iv.1.i68 to i16
  store i16 %i.dh, ptr %i.dg, align 2, !tbaa !39
  %indvars.iv.next.1.i69 = add i64 %indvars.iv.1.i68, 1 ; 2 uses
  %i.di = and i64 %indvars.iv.next.1.i69, 65535
  %i.dj = icmp samesign ugt i64 %i.cb, %i.di
  br i1 %i.dj, label %vec.epilog.scalar.ph264, label %iter.check295, !llvm.loop !249

iter.check295:                                    ; preds = %vec.epilog.scalar.ph264, %vec.epilog.middle.block277, %middle.block260
  %.idx.i71 = shl nuw nsw i64 %i.cb, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i71 ; 3 uses
  %min.iters.check281 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check281, label %vec.epilog.scalar.ph296.preheader, label %vector.scevcheck280

vector.scevcheck280:                              ; preds = %iter.check295
  %i.dl = add i64 %i.cb, -1                       ; 2 uses
  %i.dm = and i64 %i.dl, 65535
  %i.dn = icmp eq i64 %i.dm, 65535
  %i.do = icmp ugt i64 %i.dl, 65535
  %i.dp = or i1 %i.dn, %i.do
  br i1 %i.dp, label %vec.epilog.scalar.ph296.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %vector.scevcheck280
  %min.iters.check283 = icmp ult i64 %i.cb, 16
  br i1 %min.iters.check283, label %vec.epilog.ph299, label %vector.ph284

vector.ph284:                                     ; preds = %vector.main.loop.iter.check282
  %i.dq = and i64 %i.cb, 12
  %n.vec285 = and i64 %i.cb, 131056               ; 4 uses
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next290, %vector.body286 ] ; 2 uses
  %vec.ind288 = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph284 ], [ %vec.ind.next291, %vector.body286 ] ; 3 uses
  %step.add289 = add <8 x i16> %vec.ind288, splat (i16 8)
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %index287 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <8 x i16> %vec.ind288, ptr %i.dr, align 2, !tbaa !39
  store <8 x i16> %step.add289, ptr %i.ds, align 2, !tbaa !39
  %index.next290 = add nuw i64 %index287, 16      ; 2 uses
  %vec.ind.next291 = add <8 x i16> %vec.ind288, splat (i16 16)
  %i.dt = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.dt, label %middle.block292, label %vector.body286, !llvm.loop !250

middle.block292:                                  ; preds = %vector.body286
  %cmp.n293 = icmp eq i64 %i.cb, %n.vec285
  br i1 %cmp.n293, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %vec.epilog.iter.check297

vec.epilog.iter.check297:                         ; preds = %middle.block292
  %min.epilog.iters.check298 = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check298, label %vec.epilog.scalar.ph296.preheader, label %vec.epilog.ph299, !prof !158

vec.epilog.ph299:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check297
  %vec.epilog.resume.val294 = phi i64 [ %n.vec285, %vec.epilog.iter.check297 ], [ 0, %vector.main.loop.iter.check282 ] ; 2 uses
  %n.vec300 = and i64 %i.cb, 131068               ; 3 uses
  %i.du = trunc i64 %vec.epilog.resume.val294 to i16
  %broadcast.splatinsert301 = insertelement <4 x i16> poison, i16 %i.du, i64 0
  %broadcast.splat302 = shufflevector <4 x i16> %broadcast.splatinsert301, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction303 = or disjoint <4 x i16> %broadcast.splat302, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body304

vec.epilog.vector.body304:                        ; preds = %vec.epilog.vector.body304, %vec.epilog.ph299
  %index305 = phi i64 [ %vec.epilog.resume.val294, %vec.epilog.ph299 ], [ %index.next307, %vec.epilog.vector.body304 ] ; 2 uses
  %vec.ind306 = phi <4 x i16> [ %induction303, %vec.epilog.ph299 ], [ %vec.ind.next308, %vec.epilog.vector.body304 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %index305
  store <4 x i16> %vec.ind306, ptr %i.dv, align 2, !tbaa !39
  %index.next307 = add nuw i64 %index305, 4       ; 2 uses
  %vec.ind.next308 = add <4 x i16> %vec.ind306, splat (i16 4)
  %i.dw = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.dw, label %vec.epilog.middle.block309, label %vec.epilog.vector.body304, !llvm.loop !251

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body304
  %cmp.n310 = icmp eq i64 %i.cb, %n.vec300
  br i1 %cmp.n310, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, label %vec.epilog.scalar.ph296.preheader

vec.epilog.scalar.ph296.preheader:                ; preds = %vector.scevcheck280, %iter.check295, %vec.epilog.iter.check297, %vec.epilog.middle.block309
  %indvars.iv.2.i72.ph = phi i64 [ 0, %iter.check295 ], [ 0, %vector.scevcheck280 ], [ %n.vec285, %vec.epilog.iter.check297 ], [ %n.vec300, %vec.epilog.middle.block309 ]
  br label %vec.epilog.scalar.ph296

vec.epilog.scalar.ph296:                          ; preds = %vec.epilog.scalar.ph296.preheader, %vec.epilog.scalar.ph296
  %indvars.iv.2.i72 = phi i64 [ %indvars.iv.next.2.i73, %vec.epilog.scalar.ph296 ], [ %indvars.iv.2.i72.ph, %vec.epilog.scalar.ph296.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %indvars.iv.2.i72
  %i.dy = trunc nuw i64 %indvars.iv.2.i72 to i16
  store i16 %i.dy, ptr %i.dx, align 2, !tbaa !39
  %indvars.iv.next.2.i73 = add i64 %indvars.iv.2.i72, 1 ; 2 uses
  %i.dz = and i64 %indvars.iv.next.2.i73, 65535
  %i.ea = icmp samesign ugt i64 %i.cb, %i.dz
  br i1 %i.ea, label %vec.epilog.scalar.ph296, label %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74, !llvm.loop !252

.split.i64:                                       ; preds = %.split.i64.preheader, %.split.i64
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i66, %.split.i64 ], [ %indvars.iv.i65.ph, %.split.i64.preheader ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv.i65
  %i.ec = trunc nuw i64 %indvars.iv.i65 to i16
  store i16 %i.ec, ptr %i.eb, align 2, !tbaa !39
  %indvars.iv.next.i66 = add i64 %indvars.iv.i65, 1 ; 2 uses
  %i.ed = and i64 %indvars.iv.next.i66, 65535
  %i.ee = icmp ugt i64 %i.cb, %i.ed
  br i1 %i.ee, label %.split.i64, label %iter.check263, !llvm.loop !253

_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74:     ; preds = %vec.epilog.scalar.ph296, %middle.block292, %vec.epilog.middle.block309, %.noexc
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 3 uses
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !76  ; 5 uses
  %i.eh = load i64, ptr %1, align 8, !tbaa !84    ; 10 uses
  %i.ei = mul i64 %i.eh, %i.c
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.eh
  %i.el = mul nuw nsw i64 %i.cb, %i.c
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.el ; 2 uses
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = ptrtoint ptr %i.ef to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, 2
  br i1 %i.eq, label %bb.e, label %bb.f, !prof !68

bb.e:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.em, ptr nonnull align 2 %i.ef, i64 %i.ep, i1 false)
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

bb.f:                                             ; preds = %_ZN8k_d_tree13SortedIndicesILh3EEC2Em.exit74
  %i.er = icmp eq i64 %i.ep, 2
  br i1 %i.er, label %bb.g, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

bb.g:                                             ; preds = %bb.f
  %i.es = load i16, ptr %i.ef, align 2, !tbaa !39
  store i16 %i.es, ptr %i.em, align 2, !tbaa !39
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75

_ZSt4copyIPKtPtET0_T_S4_S3_.exit75:               ; preds = %bb.e, %bb.f, %bb.g
  %i.et = icmp eq i8 %2, 0
  br i1 %i.et, label %.loopexit.thread, label %bb.h

.lr.ph127:                                        ; preds = %.loopexit.2
  %i.eu = load ptr, ptr %3, align 8, !tbaa !87    ; 3 uses
  %i.ev = add nsw i64 %.idx128, -2                ; 2 uses
  %i.ew = and i64 %i.ev, 2
  %lcmp.mod315.not.not = icmp eq i64 %i.ew, 0
  br i1 %lcmp.mod315.not.not, label %.prol.loopexit313.unr-lcssa, label %.prol.loopexit313

.prol.loopexit313.unr-lcssa:                      ; preds = %.lr.ph127
  %i.ex = load i16, ptr %i.f, align 2, !tbaa !39  ; 2 uses
  %i.ey = lshr i16 %i.ex, 6
  %.zext112.prol = zext nneg i16 %i.ey to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.zext112.prol ; 2 uses
  %i.fa = and i16 %i.ex, 63
  %i.fb = zext nneg i16 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = xor i64 %i.fc, -1
  %i.fe = load i64, ptr %i.ez, align 8, !tbaa !131
  %i.ff = and i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %i.ez, align 8, !tbaa !131
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  br label %.prol.loopexit313

.prol.loopexit313:                                ; preds = %.prol.loopexit313.unr-lcssa, %.lr.ph127
  %.0126.unr = phi ptr [ %i.f, %.lr.ph127 ], [ %i.fg, %.prol.loopexit313.unr-lcssa ]
  %i.fh = icmp eq i64 %i.ev, 0
  br i1 %i.fh, label %_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit82, label %.lr.ph127.new

_ZN8k_d_tree13SortedIndicesILh3EED2Ev.exit92:     ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.by) #20
  resume { ptr, i32 } %i.fi

bb.h:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75
  %.idx129 = shl nuw nsw i64 %i.eh, 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.idx129
  %.not58118 = icmp eq i64 %i.eh, 0
  br i1 %.not58118, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.h, %bb.i
  %.044121 = phi ptr [ %i.fu, %bb.i ], [ %i.eg, %bb.h ] ; 2 uses
  %.045120 = phi ptr [ %.1, %bb.i ], [ %i.cf, %bb.h ] ; 3 uses
  %.046119 = phi ptr [ %.147, %bb.i ], [ %i.by, %bb.h ] ; 3 uses
  %i.fk = load i16, ptr %.044121, align 2, !tbaa !39 ; 4 uses
  %i.fl = load i16, ptr %i.i, align 2, !tbaa !39
  %.not59 = icmp eq i16 %i.fk, %i.fl
  br i1 %.not59, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %.lr.ph123
  %i.fm = load ptr, ptr %3, align 8, !tbaa !87
  %i.fn = lshr i16 %i.fk, 6
  %.zext = zext nneg i16 %i.fn to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.zext
  %i.fp = and i16 %i.fk, 63
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = load i64, ptr %i.fo, align 8, !tbaa !131
  %i.ft = and i64 %i.fs, %i.fr
  %.not115 = icmp eq i64 %i.ft, 0                 ; 3 uses
  %.045120.sink = select i1 %.not115, ptr %.045120, ptr %.046119
  %.147.ph.idx = select i1 %.not115, i64 0, i64 2
  %.147.ph = getelementptr inbounds nuw i8, ptr %.046119, i64 %.147.ph.idx
  %.1.ph.idx = select i1 %.not115, i64 2, i64 0
  %.1.ph = getelementptr inbounds nuw i8, ptr %.045120, i64 %.1.ph.idx
  store i16 %i.fk, ptr %.045120.sink, align 2, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph123
  %.147 = phi ptr [ %.046119, %.lr.ph123 ], [ %.147.ph, %.sink.split ]
  %.1 = phi ptr [ %.045120, %.lr.ph123 ], [ %.1.ph, %.sink.split ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.044121, i64 2 ; 2 uses
  %.not58 = icmp eq ptr %i.fu, %i.fj
  br i1 %.not58, label %.loopexit, label %.lr.ph123, !llvm.loop !254

.loopexit:                                        ; preds = %bb.i, %bb.h
  %i.fv = icmp eq i8 %2, 1
  br i1 %i.fv, label %.loopexit.1.thread, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit75, %.loopexit
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.eh ; 2 uses
  %.idx129.1 = shl nuw nsw i64 %i.eh, 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.idx129.1
  %.not58118.1 = icmp eq i64 %i.eh, 0
  br i1 %.not58118.1, label %.loopexit.1, label %.lr.ph123.preheader.1

.lr.ph123.preheader.1:                            ; preds = %.loopexit.thread
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cb
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.h
  br label %.lr.ph123.1

.lr.ph123.1:                                      ; preds = %bb.j, %.lr.ph123.preheader.1
  %.044121.1 = phi ptr [ %i.gk, %bb.j ], [ %i.fw, %.lr.ph123.preheader.1 ] ; 2 uses
  %.045120.1 = phi ptr [ %.1.1, %bb.j ], [ %i.fy, %.lr.ph123.preheader.1 ] ; 3 uses
  %.046119.1 = phi ptr [ %.147.1, %bb.j ], [ %i.fz, %.lr.ph123.preheader.1 ] ; 3 uses
  %i.ga = load i16, ptr %.044121.1, align 2, !tbaa !39 ; 4 uses
  %i.gb = load i16, ptr %i.i, align 2, !tbaa !39
  %.not59.1 = icmp eq i16 %i.ga, %i.gb
  br i1 %.not59.1, label %bb.j, label %.sink.split145

.sink.split145:                                   ; preds = %.lr.ph123.1
  %i.gc = load ptr, ptr %3, align 8, !tbaa !87
  %i.gd = lshr i16 %i.ga, 6
  %.zext.1 = zext nneg i16 %i.gd to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.zext.1
  %i.gf = and i16 %i.ga, 63
  %i.gg = zext nneg i16 %i.gf to i64
  %i.gh = shl nuw i64 1, %i.gg
  %i.gi = load i64, ptr %i.ge, align 8, !tbaa !131
  %i.gj = and i64 %i.gi, %i.gh
  %.not115.1 = icmp eq i64 %i.gj, 0               ; 3 uses
  %.045120.1.sink = select i1 %.not115.1, ptr %.045120.1, ptr %.046119.1
  %.147.1.ph.idx = select i1 %.not115.1, i64 0, i64 2
  %.147.1.ph = getelementptr inbounds nuw i8, ptr %.046119.1, i64 %.147.1.ph.idx
  %.1.1.ph.idx = select i1 %.not115.1, i64 2, i64 0
  %.1.1.ph = getelementptr inbounds nuw i8, ptr %.045120.1, i64 %.1.1.ph.idx
  store i16 %i.ga, ptr %.045120.1.sink, align 2, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %.sink.split145, %.lr.ph123.1
  %.147.1 = phi ptr [ %.046119.1, %.lr.ph123.1 ], [ %.147.1.ph, %.sink.split145 ]
  %.1.1 = phi ptr [ %.045120.1, %.lr.ph123.1 ], [ %.1.1.ph, %.sink.split145 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.044121.1, i64 2 ; 2 uses
  %.not58.1 = icmp eq ptr %i.gk, %i.fx
  br i1 %.not58.1, label %.loopexit.1, label %.lr.ph123.1, !llvm.loop !254
end_hunk_0
