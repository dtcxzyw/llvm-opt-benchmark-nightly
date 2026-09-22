Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@exchange_int64s:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.0812.prol, i64 8 ; 2 uses
  store i64 %i.m, ptr %.0812.prol, align 8, !tbaa !81
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !151

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader21
  %.013.unr = phi i64 [ %.013.ph, %.lr.ph.preheader21 ], [ %i.l, %.lr.ph.prol ]
  %.0812.unr = phi ptr [ %.0812.ph, %.lr.ph.preheader21 ], [ %i.p, %.lr.ph.prol ]
  %.0911.unr = phi ptr [ %.0911.ph, %.lr.ph.preheader21 ], [ %i.o, %.lr.ph.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i64 [ %i.ad, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0812 = phi ptr [ %i.ah, %.lr.ph ], [ %.0812.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0911 = phi ptr [ %i.ag, %.lr.ph ], [ %.0911.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.r = load i64, ptr %.0911, align 8, !tbaa !81
  %i.s = load i64, ptr %.0812, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %.0911, i64 8 ; 2 uses
  store i64 %i.s, ptr %.0911, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %.0812, i64 8 ; 2 uses
  store i64 %i.r, ptr %.0812, align 8, !tbaa !81
  %i.v = load i64, ptr %i.t, align 8, !tbaa !81
  %i.w = load i64, ptr %i.u, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %.0911, i64 16 ; 2 uses
  store i64 %i.w, ptr %i.t, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %.0812, i64 16 ; 2 uses
  store i64 %i.v, ptr %i.u, align 8, !tbaa !81
  %i.z = load i64, ptr %i.x, align 8, !tbaa !81
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911, i64 24 ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %.0812, i64 24 ; 2 uses
  store i64 %i.z, ptr %i.y, align 8, !tbaa !81
  %i.ad = add nsw i64 %.013, -4                   ; 2 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !81
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911, i64 32
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %.0812, i64 32
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !81
  %.not.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @exchange_int32s(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 6 uses
  %.not10 = icmp eq i64 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = and i64 %2, -4                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep14
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4611686018427387896      ; 3 uses
  %i.c = and i64 %i.a, 7
  %i.d = shl nuw i64 %n.vec, 2                    ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.g  ; 3 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.g ; 3 uses
  %i.h = getelementptr i8, ptr %next.gep15, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep15, align 4, !tbaa !45, !alias.scope !161, !noalias !162
  %wide.load16 = load <4 x i32>, ptr %i.h, align 4, !tbaa !45, !alias.scope !161, !noalias !162
  %i.i = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load17 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !162
  %wide.load18 = load <4 x i32>, ptr %i.i, align 4, !tbaa !45, !alias.scope !162
  store <4 x i32> %wide.load17, ptr %next.gep15, align 4, !tbaa !45, !alias.scope !161, !noalias !162
  store <4 x i32> %wide.load18, ptr %i.h, align 4, !tbaa !45, !alias.scope !161, !noalias !162
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !45, !alias.scope !162
  store <4 x i32> %wide.load16, ptr %i.i, align 4, !tbaa !45, !alias.scope !162
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.013.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.c, %middle.block ] ; 4 uses
  %.0812.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ] ; 2 uses
  %.0911.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 2 uses
  %i.k = add nsw i64 %.013.ph, -1
  %xtraiter = and i64 %.013.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader21, %.lr.ph.prol
  %.013.prol = phi i64 [ %i.l, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader21 ]
  %.0812.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.0812.ph, %.lr.ph.preheader21 ] ; 3 uses
  %.0911.prol = phi ptr [ %i.o, %.lr.ph.prol ], [ %.0911.ph, %.lr.ph.preheader21 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader21 ]
  %i.l = add nsw i64 %.013.prol, -1               ; 2 uses
  %i.m = load i32, ptr %.0911.prol, align 4, !tbaa !45
  %i.n = load i32, ptr %.0812.prol, align 4, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %.0911.prol, i64 4 ; 2 uses
  store i32 %i.n, ptr %.0911.prol, align 4, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %.0812.prol, i64 4 ; 2 uses
  store i32 %i.m, ptr %.0812.prol, align 4, !tbaa !45
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !159

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader21
  %.013.unr = phi i64 [ %.013.ph, %.lr.ph.preheader21 ], [ %i.l, %.lr.ph.prol ]
  %.0812.unr = phi ptr [ %.0812.ph, %.lr.ph.preheader21 ], [ %i.p, %.lr.ph.prol ]
  %.0911.unr = phi ptr [ %.0911.ph, %.lr.ph.preheader21 ], [ %i.o, %.lr.ph.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i64 [ %i.ad, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0812 = phi ptr [ %i.ah, %.lr.ph ], [ %.0812.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0911 = phi ptr [ %i.ag, %.lr.ph ], [ %.0911.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.r = load i32, ptr %.0911, align 4, !tbaa !45
  %i.s = load i32, ptr %.0812, align 4, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %.0911, i64 4 ; 2 uses
  store i32 %i.s, ptr %.0911, align 4, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %.0812, i64 4 ; 2 uses
  store i32 %i.r, ptr %.0812, align 4, !tbaa !45
  %i.v = load i32, ptr %i.t, align 4, !tbaa !45
  %i.w = load i32, ptr %i.u, align 4, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %.0911, i64 8 ; 2 uses
  store i32 %i.w, ptr %i.t, align 4, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %.0812, i64 8 ; 2 uses
  store i32 %i.v, ptr %i.u, align 4, !tbaa !45
  %i.z = load i32, ptr %i.x, align 4, !tbaa !45
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911, i64 12 ; 2 uses
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %.0812, i64 12 ; 2 uses
  store i32 %i.z, ptr %i.y, align 4, !tbaa !45
  %i.ad = add nsw i64 %.013, -4                   ; 2 uses
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !45
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911, i64 16
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %.0812, i64 16
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !45
  %.not.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !160

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @exchange_int16s(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %i.a = lshr i64 %2, 1                           ; 9 uses
  %.not10 = icmp eq i64 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.b = and i64 %2, -2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep14
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i64 %2, 32
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.a, 9223372036854775792      ; 4 uses
  %i.c = and i64 %i.a, 15
  %i.d = shl nuw i64 %n.vec, 1                    ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.g  ; 3 uses
  %next.gep16 = getelementptr i8, ptr %0, i64 %i.g ; 3 uses
  %i.h = getelementptr i8, ptr %next.gep16, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep16, align 2, !tbaa !62, !alias.scope !170, !noalias !171
  %wide.load17 = load <8 x i16>, ptr %i.h, align 2, !tbaa !62, !alias.scope !170, !noalias !171
  %i.i = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load18 = load <8 x i16>, ptr %next.gep, align 2, !tbaa !62, !alias.scope !171
  %wide.load19 = load <8 x i16>, ptr %i.i, align 2, !tbaa !62, !alias.scope !171
  store <8 x i16> %wide.load18, ptr %next.gep16, align 2, !tbaa !62, !alias.scope !170, !noalias !171
  store <8 x i16> %wide.load19, ptr %i.h, align 2, !tbaa !62, !alias.scope !170, !noalias !171
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !62, !alias.scope !171
  store <8 x i16> %wide.load17, ptr %i.i, align 2, !tbaa !62, !alias.scope !171
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.k = and i64 %2, 24
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !172

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.a, 9223372036854775804    ; 3 uses
  %i.l = and i64 %i.a, 3
  %i.m = shl nuw i64 %n.vec22, 1                  ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = getelementptr i8, ptr %0, i64 %i.m
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 2 uses
  %i.p = shl i64 %index23, 1                      ; 2 uses
  %next.gep24 = getelementptr i8, ptr %1, i64 %i.p ; 2 uses
  %next.gep25 = getelementptr i8, ptr %0, i64 %i.p ; 2 uses
  %wide.load26 = load <4 x i16>, ptr %next.gep25, align 2, !tbaa !62, !alias.scope !170, !noalias !171
  %wide.load27 = load <4 x i16>, ptr %next.gep24, align 2, !tbaa !62, !alias.scope !171
  store <4 x i16> %wide.load27, ptr %next.gep25, align 2, !tbaa !62, !alias.scope !170, !noalias !171
  store <4 x i16> %wide.load26, ptr %next.gep24, align 2, !tbaa !62, !alias.scope !171
  %index.next28 = add nuw i64 %index23, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next28, %n.vec22
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.a, %n.vec22
  br i1 %cmp.n29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.ph = phi i64 [ %i.a, %iter.check ], [ %i.a, %vector.memcheck ], [ %i.c, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 4 uses
  %.0812.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.e, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 2 uses
  %.0911.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.f, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %i.r = add nsw i64 %.013.ph, -1
  %xtraiter = and i64 %.013.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.013.prol = phi i64 [ %i.s, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader ]
  %.0812.prol = phi ptr [ %i.w, %.lr.ph.prol ], [ %.0812.ph, %.lr.ph.preheader ] ; 3 uses
  %.0911.prol = phi ptr [ %i.v, %.lr.ph.prol ], [ %.0911.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.s = add nsw i64 %.013.prol, -1               ; 2 uses
  %i.t = load i16, ptr %.0911.prol, align 2, !tbaa !62
  %i.u = load i16, ptr %.0812.prol, align 2, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.prol, i64 2 ; 2 uses
  store i16 %i.u, ptr %.0911.prol, align 2, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %.0812.prol, i64 2 ; 2 uses
  store i16 %i.t, ptr %.0812.prol, align 2, !tbaa !62
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !168

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.013.unr = phi i64 [ %.013.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.0812.unr = phi ptr [ %.0812.ph, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.0911.unr = phi ptr [ %.0911.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.x = icmp ult i64 %i.r, 3
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i64 [ %i.ak, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0812 = phi ptr [ %i.ao, %.lr.ph ], [ %.0812.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0911 = phi ptr [ %i.an, %.lr.ph ], [ %.0911.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.y = load i16, ptr %.0911, align 2, !tbaa !62
  %i.z = load i16, ptr %.0812, align 2, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911, i64 2 ; 2 uses
  store i16 %i.z, ptr %.0911, align 2, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %.0812, i64 2 ; 2 uses
  store i16 %i.y, ptr %.0812, align 2, !tbaa !62
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !62
  %i.ad = load i16, ptr %i.ab, align 2, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911, i64 4 ; 2 uses
  store i16 %i.ad, ptr %i.aa, align 2, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %.0812, i64 4 ; 2 uses
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !62
  %i.ag = load i16, ptr %i.ae, align 2, !tbaa !62
  %i.ah = load i16, ptr %i.af, align 2, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911, i64 6 ; 2 uses
  store i16 %i.ah, ptr %i.ae, align 2, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %.0812, i64 6 ; 2 uses
  store i16 %i.ag, ptr %i.af, align 2, !tbaa !62
  %i.ak = add nsw i64 %.013, -4                   ; 2 uses
  %i.al = load i16, ptr %i.ai, align 2, !tbaa !62
  %i.am = load i16, ptr %i.aj, align 2, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %.0911, i64 8
  store i16 %i.am, ptr %i.ai, align 2, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %.0812, i64 8
  store i16 %i.al, ptr %i.aj, align 2, !tbaa !62
  %.not.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !169

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @exchange_bytes(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %.not9 = icmp eq i64 %2, 0
  br i1 %.not9, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %scevgep13 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep13
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i64 %2, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.a = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.b = and i64 %2, 31
  %i.c = getelementptr i8, ptr %1, i64 %n.vec
  %i.d = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr i8, ptr %next.gep15, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep15, align 1, !tbaa !21, !alias.scope !180, !noalias !181
  %wide.load16 = load <16 x i8>, ptr %i.e, align 1, !tbaa !21, !alias.scope !180, !noalias !181
  %i.f = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load17 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !21, !alias.scope !181
  %wide.load18 = load <16 x i8>, ptr %i.f, align 1, !tbaa !21, !alias.scope !181
  store <16 x i8> %wide.load17, ptr %next.gep15, align 1, !tbaa !21, !alias.scope !180, !noalias !181
  store <16 x i8> %wide.load18, ptr %i.e, align 1, !tbaa !21, !alias.scope !180, !noalias !181
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !21, !alias.scope !181
  store <16 x i8> %wide.load16, ptr %i.f, align 1, !tbaa !21, !alias.scope !181
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.a, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %2, -4                       ; 4 uses
  %i.h = and i64 %2, 3
  %i.i = getelementptr i8, ptr %1, i64 %n.vec21
  %i.j = getelementptr i8, ptr %0, i64 %n.vec21
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %next.gep23 = getelementptr i8, ptr %1, i64 %index22 ; 2 uses
  %next.gep24 = getelementptr i8, ptr %0, i64 %index22 ; 2 uses
  %wide.load25 = load <4 x i8>, ptr %next.gep24, align 1, !tbaa !21, !alias.scope !180, !noalias !181
  %wide.load26 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !21, !alias.scope !181
  store <4 x i8> %wide.load26, ptr %next.gep24, align 1, !tbaa !21, !alias.scope !180, !noalias !181
  store <4 x i8> %wide.load25, ptr %next.gep23, align 1, !tbaa !21, !alias.scope !181
  %index.next27 = add nuw i64 %index22, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next27, %n.vec21
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !177

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %2, %n.vec21
  br i1 %cmp.n28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.b, %vec.epilog.iter.check ], [ %i.h, %vec.epilog.middle.block ] ; 4 uses
  %.0711.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.c, %vec.epilog.iter.check ], [ %i.i, %vec.epilog.middle.block ] ; 2 uses
  %.0810.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.d, %vec.epilog.iter.check ], [ %i.j, %vec.epilog.middle.block ] ; 2 uses
  %i.l = add i64 %.012.ph, -1
  %xtraiter = and i64 %.012.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.012.prol = phi i64 [ %i.m, %.lr.ph.prol ], [ %.012.ph, %.lr.ph.preheader ]
  %.0711.prol = phi ptr [ %i.q, %.lr.ph.prol ], [ %.0711.ph, %.lr.ph.preheader ] ; 3 uses
  %.0810.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.0810.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.m = add i64 %.012.prol, -1                   ; 2 uses
  %i.n = load i8, ptr %.0810.prol, align 1, !tbaa !21
  %i.o = load i8, ptr %.0711.prol, align 1, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.0810.prol, i64 1 ; 2 uses
  store i8 %i.o, ptr %.0810.prol, align 1, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.0711.prol, i64 1 ; 2 uses
  store i8 %i.n, ptr %.0711.prol, align 1, !tbaa !21
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !178

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.012.unr = phi i64 [ %.012.ph, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.0711.unr = phi ptr [ %.0711.ph, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.0810.unr = phi ptr [ %.0810.ph, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.r = icmp ult i64 %i.l, 3
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.012 = phi i64 [ %i.ae, %.lr.ph ], [ %.012.unr, %.lr.ph.prol.loopexit ]
  %.0711 = phi ptr [ %i.ai, %.lr.ph ], [ %.0711.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0810 = phi ptr [ %i.ah, %.lr.ph ], [ %.0810.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.s = load i8, ptr %.0810, align 1, !tbaa !21
  %i.t = load i8, ptr %.0711, align 1, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.0810, i64 1 ; 2 uses
  store i8 %i.t, ptr %.0810, align 1, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %.0711, i64 1 ; 2 uses
  store i8 %i.s, ptr %.0711, align 1, !tbaa !21
  %i.w = load i8, ptr %i.u, align 1, !tbaa !21
  %i.x = load i8, ptr %i.v, align 1, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.0810, i64 2 ; 2 uses
  store i8 %i.x, ptr %i.u, align 1, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %.0711, i64 2 ; 2 uses
  store i8 %i.w, ptr %i.v, align 1, !tbaa !21
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !21
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.0810, i64 3 ; 2 uses
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.0711, i64 3 ; 2 uses
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !21
  %i.ae = add i64 %.012, -4                       ; 2 uses
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !21
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %.0810, i64 4
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.0711, i64 4
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !21
  %.not.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !179

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #14

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #14

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @stack_realloc(ptr nofree noundef nonnull captures(address) %0, i64 noundef range(i64 -1152921504606846976, 1152921508901814271) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60
  %i.c = mul i64 %i.b, 3
  %i.d = lshr i64 %i.c, 1
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %i.k = shl i64 %spec.select, 3                  ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @lre_realloc(ptr noundef %i.j, ptr noundef null, i64 noundef %i.k) #20 ; 3 uses
  %.not27 = icmp eq ptr %i.l, null
  br i1 %.not27, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.n = load i64, ptr %i.a, align 8, !tbaa !60
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %i.o, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = tail call ptr @lre_realloc(ptr noundef %i.j, ptr noundef %i.f, i64 noundef %i.k) #20 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.020 = phi ptr [ %i.l, %bb.c ], [ %i.p, %bb.d ]
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !60
  store ptr %.020, ptr %i.e, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.021 = phi i32 [ 0, %bb.e ], [ -1, %bb.b ], [ -1, %bb.d ]
  ret i32 %.021
}

declare i32 @lre_check_timeout(ptr noundef) local_unnamed_addr #4

declare i32 @lre_is_space_non_ascii(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{!1, !52}
!2 = distinct !{!2, !52}
!3 = distinct !{!3, !52}
!4 = distinct !{!4, !52}
!5 = distinct !{!5, !52}
!6 = distinct !{!6, !52}
!7 = distinct !{!7, !52}
!8 = distinct !{!8, !52}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{!"long", !14, i64 0}
!23 = !{!"_Bool", !14, i64 0}
!24 = !{!"DynBuf", !19, i64 0, !22, i64 8, !22, i64 16, !23, i64 24, !18, i64 32, !18, i64 40}
!25 = !{!"", !24, i64 0, !19, i64 48, !19, i64 56, !19, i64 64, !15, i64 72, !23, i64 76, !23, i64 77, !23, i64 78, !23, i64 79, !23, i64 80, !14, i64 81, !15, i64 84, !15, i64 88, !15, i64 92, !18, i64 96, !24, i64 104, !14, i64 152}
!26 = !{!25, !18, i64 96}
!27 = !{!25, !19, i64 48}
!28 = !{!25, !19, i64 56}
end_hunk_0
