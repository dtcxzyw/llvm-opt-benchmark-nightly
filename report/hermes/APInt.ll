inline.NumInlined: 1495
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK4llvh5APInt24countLeadingOnesSlowCaseEv:bb.a
  %i.m = xor i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false)
  %i.o = trunc nuw nsw i64 %i.n to i32            ; 2 uses
  %i.p = icmp eq i32 %.016, %i.o
  %i.q = icmp ugt i32 %i.b, 64
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.r = trunc nuw nsw i64 %i.g to i32
  %i.s = add nsw i32 %i.r, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.024 = phi i32 [ %i.x, %bb.b ], [ %.016, %.lr.ph.preheader ] ; 2 uses
  %.01423 = phi i32 [ %i.y, %bb.b ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.t = zext nneg i32 %.01423 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !10   ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.x = add i32 %.024, 64                        ; 2 uses
  %i.y = add nsw i32 %.01423, -1
  %i.z = icmp sgt i32 %.01423, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !144

bb.c:                                             ; preds = %.lr.ph
  %i.aa = xor i64 %i.v, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = add i32 %.024, %i.ac
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i32 [ %i.ad, %bb.c ], [ %i.o, %bb.a ], [ %i.x, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt26countTrailingZerosSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01014 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.01014, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !145

bb.d:                                             ; preds = %bb.b
  %i.m = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.j, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = or disjoint i32 %.01014, %i.n
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.o, %bb.d ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %.1)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt25countTrailingOnesSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.0811 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10   ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.0811, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !146

bb.d:                                             ; preds = %bb.b
  %i.m = xor i64 %i.j, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.m, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = or disjoint i32 %.0811, %i.o
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt23countPopulationSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 4 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi9 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.h, align 8, !tbaa !10
  %i.i = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.j = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load10)
  %i.k = trunc nuw nsw <2 x i64> %i.i to <2 x i32>
  %i.l = trunc nuw nsw <2 x i64> %i.j to <2 x i32>
  %i.m = add <2 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <2 x i32> %vec.phi9, %i.l            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.056.ph = phi i32 [ 0, %.lr.ph ], [ %i.p, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %middle.block ], [ %i.u, %scalar.ph ]
  ret i32 %.05.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.056 = phi i32 [ %i.u, %scalar.ph ], [ %.056.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = add i32 %.056, %i.t                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !148
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt18intersectsSlowCaseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not12.not = icmp eq i64 %i.e, 0
  br i1 %.not12.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = load ptr, ptr %1, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = and i64 %i.k, %i.i
  %.not10.not = icmp ne i64 %i.l, 0               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.not = icmp eq i64 %indvars.iv.next, %i.e
  %or.cond = select i1 %.not10.not, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %.not10.not, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt18isSubsetOfSlowCaseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not11 = icmp eq i64 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = load ptr, ptr %1, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = xor i64 %i.k, -1
  %i.m = and i64 %i.i, %i.l
  %.not10 = icmp eq i64 %i.m, 0                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp ne i64 %indvars.iv.next, %i.e
  %or.cond.not = select i1 %.not10, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not10, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt8byteSwapEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 13 uses
  %i.c = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 28)
  switch i32 %i.c, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !9
  %i.e = trunc i64 %i.d to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.f = zext i16 %rev.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.g, align 8, !tbaa !7
  store i64 %i.f, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 32, ptr %i.l, align 8, !tbaa !7
  store i64 %i.k, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.d:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !tbaa !9
  %trunc = trunc i64 %i.m to i48
  %rev = tail call i48 @llvm.bswap.i48(i48 %trunc)
  %i.n = zext i48 %rev to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !7
  %i.p = icmp ult i32 %i.b, 65
  br i1 %i.p, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.d
  %i.q = sub nsw i32 0, %i.b
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = lshr i64 -1, %i.s
  %i.u = and i64 %i.t, %i.n
  store i64 %i.u, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.e:                                             ; preds = %bb.d
  %i.v = zext i32 %i.b to i64
  %i.w = add nuw nsw i64 %i.v, 63
  %i.x = lshr i64 %i.w, 6                         ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 2 uses
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.y, i1 false)
  store ptr %i.z, ptr %0, align 8, !tbaa !9
  store i64 %i.n, ptr %i.z, align 8, !tbaa !10
  %.pn.in.in.i = sub i32 0, %i.b
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.aa = lshr i64 -1, %.pn.i
  %i.ab = add nuw nsw i64 %i.x, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10
  %i.af = and i64 %i.ae, %i.aa
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.f:                                             ; preds = %bb.a
  %i.ag = load i64, ptr %1, align 8, !tbaa !9
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 64, ptr %i.ai, align 8, !tbaa !7
  store i64 %i.ah, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.g:                                             ; preds = %bb.a
  %i.aj = zext i32 %i.b to i64
  %i.ak = add nuw nsw i64 %i.aj, 63               ; 2 uses
  %i.al = lshr i64 %i.ak, 6                       ; 13 uses
  %i.am = trunc nuw nsw i64 %i.al to i32          ; 2 uses
  %i.an = shl i32 %i.am, 6                        ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !7
  %i.ap = icmp ult i32 %i.an, 65                  ; 2 uses
  br i1 %i.ap, label %_ZN4llvh5APIntC2Ejmb.exit22, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl nuw nsw i64 %i.al, 3
  %i.ar = and i64 %i.aq, 536870904                ; 2 uses
  %i.as = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false)
  store i64 0, ptr %i.as, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit22

_ZN4llvh5APIntC2Ejmb.exit22:                      ; preds = %bb.g, %bb.h
  %i.at = phi ptr [ %i.as, %bb.h ], [ null, %bb.g ] ; 24 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !9
  %.not23 = icmp eq i64 %i.al, 0
  %i.au = ptrtoint ptr %i.at to i64
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit22
  %.pre = load ptr, ptr %1, align 8, !tbaa !9     ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 833
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.av = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.av
  %i.aw = shl nuw nsw i64 %i.al, 3
  %i.ax = add nuw nsw i64 %i.aw, 34359738360
  %i.ay = and i64 %i.ax, 34359738360              ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 8
  %i.ba = sub nsw i64 %i.az, %i.av
  %scevgep29 = getelementptr i8, ptr %.pre, i64 %i.ba
  %i.bb = getelementptr i8, ptr %.pre, i64 %i.ay
  %scevgep30 = getelementptr i8, ptr %i.bb, i64 8
  %bound0 = icmp ult ptr %i.at, %scevgep30
  %bound1 = icmp ult ptr %scevgep29, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = xor i64 %index, -1
  %i.bd = add nsw i64 %i.al, %i.bc
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10, !alias.scope !151
  %wide.load31 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !10, !alias.scope !151
  %i.bi = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.bj = shufflevector <2 x i64> %i.bi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load31)
  %i.bl = shufflevector <2 x i64> %i.bk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x i64> %i.bj, ptr %i.bm, align 8, !tbaa !10, !alias.scope !154, !noalias !151
  store <2 x i64> %i.bl, ptr %i.bn, align 8, !tbaa !10, !alias.scope !154, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %i.bp = and i64 %i.ak, 64
  %lcmp.mod.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bq = xor i64 %indvars.iv.ph, -1
  %i.br = add nsw i64 %i.al, %i.bq
  %i.bs = and i64 %i.br, 4294967294
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !10
  %i.bv = tail call noundef i64 @llvm.bswap.i64(i64 %i.bu)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.ph
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bx = icmp eq i64 %i.al, %.neg
  br i1 %i.bx, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvh5APIntC2Ejmb.exit22
  %.not15 = icmp eq i32 %i.an, %i.b
  br i1 %.not15, label %_ZN4llvh5APIntC2Ejmb.exit, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.by = xor i64 %indvars.iv, -1
  %i.bz = add nsw i64 %i.al, %i.by
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ca
end_hunk_0
