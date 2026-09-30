Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APInt?download=true
inline.NumInlined: 1479
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN4llvh5APInt8getSplatEjRKS0_:bb.a
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !148

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.cb = sub nsw i64 %indvars.iv.i.i.i.ph, %i.az
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %_ZN4llvh5APIntoRERKS0_.exit.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !24
  %i.ch = or i64 %i.cg, %i.ce
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cm = or i64 %i.cl, %i.cj
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !24
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i.1
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.1 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = or i64 %i.cq, %i.co
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !24
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i.i.2
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !24
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i.i.2 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !24
  %i.cw = or i64 %i.cv, %i.ct
  store i64 %i.cw, ptr %i.cu, align 8, !tbaa !24
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %i.az
  br i1 %exitcond.not.i.i.i.3, label %_ZN4llvh5APIntoRERKS0_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !149

_ZN4llvh5APIntoRERKS0_.exit.loopexit:             ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block
  %i.cx = load i32, ptr %i.at, align 8, !tbaa !21
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %bb.h, label %_ZN4llvh5APIntD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvh5APIntoRERKS0_.exit.loopexit
  %i.cz = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN4llvh5APIntD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh5APIntoRERKS0_.exit.loopexit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.db = shl i32 %.08, 1                         ; 2 uses
  %i.dc = icmp ult i32 %i.db, %1
  br i1 %i.dc, label %.lr.ph.split, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %_ZN4llvh5APIntD2Ev.exit, %._crit_edge.split.us, %_ZNK4llvh5APInt10zextOrSelfEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt10zextOrSelfEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = icmp ult i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.d = icmp ult i32 %2, 65
  br i1 %i.d, label %_ZN4llvh5APIntC2Ejmb.exit.i, label %bb.c

_ZN4llvh5APIntC2Ejmb.exit.i:                      ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8, !tbaa !22, !noalias !160
  %i.f = sub nsw i32 0, %2
  %i.g = and i32 %i.f, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = and i64 %i.e, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  br label %_ZNK4llvh5APInt4zextEj.exit

bb.c:                                             ; preds = %bb.b
  %i.l = zext i32 %2 to i64
  %i.m = add nuw nsw i64 %i.l, 63
  %i.n = lshr i64 %i.m, 6                         ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #22, !noalias !160 ; 3 uses
  %i.q = load i32, ptr %i.a, align 8, !tbaa !21, !noalias !160 ; 2 uses
  %i.r = icmp ult i32 %i.q, 65
  %i.s = load ptr, ptr %1, align 8, !noalias !160
  %spec.select.i.i = select i1 %i.r, ptr %1, ptr %i.s
  %i.t = zext i32 %i.q to i64
  %i.u = add nuw nsw i64 %i.t, 63
  %i.v = lshr i64 %i.u, 6                         ; 3 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %spec.select.i.i, i64 %i.w, i1 false), !noalias !160
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v
  %i.y = sub nsw i64 %i.n, %i.v
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = and i64 %i.z, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.aa, i1 false), !noalias !160
  br label %_ZNK4llvh5APInt4zextEj.exit

_ZNK4llvh5APInt4zextEj.exit:                      ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i, %bb.c
  %.sink.i = phi ptr [ %i.k, %_ZN4llvh5APIntC2Ejmb.exit.i ], [ %i.p, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.ab, align 8, !tbaa !21, !alias.scope !160
  store ptr %.sink.i, ptr %0, align 8, !tbaa !22, !alias.scope !160
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ac, align 8, !tbaa !21
  %i.ad = icmp ult i32 %i.b, 65
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %1, align 8, !tbaa !22
  store i64 %i.ae, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = zext i32 %i.b to i64
  %i.ag = add nuw nsw i64 %i.af, 63
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1073741816               ; 2 uses
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #22 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !22
  %i.ak = load ptr, ptr %1, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.ak, i64 %i.ai, i1 false)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.f, %bb.e, %_ZNK4llvh5APInt4zextEj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not21 = icmp eq i64 %i.e, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01320.in = phi i32 [ %i.f, %.lr.ph ], [ %.01320, %bb.c ] ; 2 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.c ] ; 2 uses
  %.01320 = add nsw i32 %.01320.in, -1            ; 2 uses
  %i.i = zext nneg i32 %.01320 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = or disjoint i32 %.019, %i.n
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = add i32 %.019, 64
  %i.q = icmp samesign ugt i32 %.01320.in, 1
  br i1 %i.q, label %bb.b, label %.loopexit, !llvm.loop !8

.loopexit:                                        ; preds = %bb.c, %bb.a, %.thread
  %.2 = phi i32 [ %i.o, %.thread ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  %i.r = and i32 %i.b, 63
  %.not = icmp eq i32 %i.r, 0
  %.neg = or i32 %i.b, -64
  %.neg15 = select i1 %.not, i32 0, i32 %.neg
  %i.s = add i32 %.2, %.neg15
  ret i32 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt24countLeadingOnesSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = and i32 %i.b, 63                         ; 3 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = sub nuw nsw i32 64, %i.c
  %.016 = select i1 %.not, i32 64, i32 %i.c       ; 3 uses
  %narrow = select i1 %.not, i32 0, i32 %i.d
  %.015 = zext nneg i32 %narrow to i64
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %i.g
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = shl i64 %i.k, %.015
  %i.m = xor i64 %i.l, -1
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false)
  %i.o = trunc nuw nsw i64 %i.n to i32            ; 2 uses
  %i.p = icmp eq i32 %.016, %i.o
  %i.q = icmp ugt i32 %i.b, 64
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.r = trunc nuw nsw i64 %i.g to i32            ; 2 uses
  %1 = add nsw i32 %i.r, -2
  %2 = shl i32 %i.r, 6
  %3 = add i32 %2, %.016
  %i.s = add i32 %3, -64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.024 = phi i32 [ %i.x, %bb.b ], [ %.016, %.lr.ph.preheader ] ; 2 uses
  %.01423 = phi i32 [ %i.y, %bb.b ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %i.t = zext nneg i32 %.01423 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.x = add i32 %.024, 64
  %i.y = add nsw i32 %.01423, -1
  %i.z = icmp sgt i32 %.01423, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !9

bb.c:                                             ; preds = %.lr.ph
  %i.aa = xor i64 %i.v, -1
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = add i32 %.024, %i.ac
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i32 [ %i.ad, %bb.c ], [ %i.o, %bb.a ], [ %i.s, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt26countTrailingZerosSlowCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.01014 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.01014, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !10

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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.0811 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.0811, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !11

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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 4 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
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
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !24
  %wide.load10 = load <2 x i64>, ptr %i.h, align 8, !tbaa !24
  %i.i = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.j = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load10)
  %i.k = trunc nuw nsw <2 x i64> %i.i to <2 x i32>
  %i.l = trunc nuw nsw <2 x i64> %i.j to <2 x i32>
  %i.m = add <2 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <2 x i32> %vec.phi9, %i.l            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !161

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
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = add i32 %.056, %i.t                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt18intersectsSlowCaseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not12.not = icmp eq i64 %i.e, 0
  br i1 %.not12.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  %i.g = load ptr, ptr %1, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = and i64 %i.k, %i.i
  %.not10.not = icmp ne i64 %i.l, 0               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.not = icmp eq i64 %indvars.iv.next, %i.e
  %or.cond = select i1 %.not10.not, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %.not10.not, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt18isSubsetOfSlowCaseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %.not11 = icmp eq i64 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZNK4llvh5APInt7sshl_ovERKS0_Rb:bb.a
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i, label %_ZNK4llvh5APInt3ugeEm.exit.thread

_ZNK4llvh5APInt3ugeEm.exit.thread:                ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  store i8 1, ptr %3, align 1, !tbaa !32
  br label %bb.d

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !22
  br label %_ZNK4llvh5APInt3ugeEm.exit

_ZNK4llvh5APInt3ugeEm.exit:                       ; preds = %bb.a, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp uge i64 %.0.i.i.i, %i.c             ; 2 uses
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %3, align 1, !tbaa !32
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit.thread, %_ZNK4llvh5APInt3ugeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.aa, align 8, !tbaa !21
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %.loopexit.i._crit_edge.i

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.d
  store i64 0, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvh5APIntC2Ejmb.exit

.loopexit.i._crit_edge.i:                         ; preds = %bb.d
  %i.ac = add nuw nsw i64 %i.c, 63                ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741816               ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ae, i1 false)
  store ptr %i.af, ptr %0, align 8, !tbaa !22
  store i64 0, ptr %i.af, align 8, !tbaa !24
  %i.ag = sub i32 0, %i.b
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 -1, %i.ai
  %.pre7.i = lshr i64 %i.ac, 6
  %i.ak = getelementptr [8 x i8], ptr %i.af, i64 %.pre7.i
  %i.al = getelementptr i8, ptr %i.ak, i64 -8     ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !24
  %i.an = and i64 %i.am, %i.aj
  store i64 %i.an, ptr %i.al, align 8, !tbaa !24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.e:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit
  %i.ao = add i32 %i.b, -1                        ; 2 uses
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = icmp ult i32 %i.b, 65                   ; 4 uses
  %i.at = load ptr, ptr %1, align 8               ; 5 uses
  %i.au = lshr i32 %i.ao, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %.in.i.i.i.i = select i1 %i.as, ptr %1, ptr %i.aw
  %i.ax = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !22
  %i.ay = and i64 %i.ax, %i.ar
  %.not.i = icmp eq i64 %i.ay, 0
  %i.az = ptrtoint ptr %i.at to i64               ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.f
  %.neg.i = add nsw i32 %i.b, -64
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = add nsw i32 %.neg.i, %i.bb
  br label %_ZNK4llvh5APInt17countLeadingZerosEv.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bd = add nuw nsw i64 %i.c, 63
  %i.be = lshr i64 %i.bd, 6                       ; 2 uses
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = shl i32 %i.bf, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.be, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bn, %bb.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !24 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = or disjoint i32 %.019.i.i, %i.bl
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bn = add i32 %.019.i.i, 64
  %i.bo = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bo, label %bb.h, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i, !llvm.loop !8

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i: ; preds = %bb.i, %.thread.i.i
  %.2.i.i = phi i32 [ %i.bm, %.thread.i.i ], [ %i.bg, %bb.i ]
  %i.bp = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.bp, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.bq = add i32 %.2.i.i, %.neg15.i.i
  br label %_ZNK4llvh5APInt17countLeadingZerosEv.exit

_ZNK4llvh5APInt17countLeadingZerosEv.exit:        ; preds = %bb.g, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i
  %.0.i = phi i32 [ %i.bc, %bb.g ], [ %i.bq, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i ]
  %i.br = zext i32 %.0.i to i64
  %.pre.i.i10 = load ptr, ptr %2, align 8         ; 3 uses
  %i.bs = ptrtoint ptr %.pre.i.i10 to i64
  br i1 %i.f, label %bb.l, label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %_ZNK4llvh5APInt17countLeadingZerosEv.exit
  %i.bt = zext i32 %i.e to i64
  %i.bu = add nuw nsw i64 %i.bt, 63
  %i.bv = lshr i64 %i.bu, 6                       ; 2 uses
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl i32 %i.bw, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i11
  %indvars.iv.i.i.i.i12 = phi i64 [ %indvars.iv.next.i.i.i.i14, %bb.k ], [ %i.bv, %.lr.ph.i.i.i.i.i11 ] ; 2 uses
  %.019.i.i.i.i.i13 = phi i32 [ %i.ce, %bb.k ], [ 0, %.lr.ph.i.i.i.i.i11 ] ; 2 uses
  %indvars.iv.next.i.i.i.i14 = add nsw i64 %indvars.iv.i.i.i.i12, -1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i10, i64 %indvars.iv.next.i.i.i.i14
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !24 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.k, label %.thread.i.i.i.i.i15

.thread.i.i.i.i.i15:                              ; preds = %bb.j
  %i.cb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = or disjoint i32 %.019.i.i.i.i.i13, %i.cc
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i16

bb.k:                                             ; preds = %bb.j
  %i.ce = add i32 %.019.i.i.i.i.i13, 64
  %i.cf = icmp samesign ugt i64 %indvars.iv.i.i.i.i12, 1
  br i1 %i.cf, label %bb.j, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i16, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i16:      ; preds = %bb.k, %.thread.i.i.i.i.i15
  %.2.i.i.i.i.i17 = phi i32 [ %i.cd, %.thread.i.i.i.i.i15 ], [ %i.bx, %bb.k ]
  %i.cg = and i32 %i.e, 63
  %.not.i.i.i.i.i18 = icmp eq i32 %i.cg, 0
  %.neg.i.i.i.i.i19 = or i32 %i.e, -64
  %.neg15.i.i.i.i.i20 = select i1 %.not.i.i.i.i.i18, i32 0, i32 %.neg.i.i.i.i.i19
  %i.ch = add i32 %.neg15.i.i.i.i.i20, %.2.i.i.i.i.i17
  %i.ci = sub i32 %i.e, %i.ch
  %i.cj = icmp ult i32 %i.ci, 65
  br i1 %i.cj, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i21, label %_ZNK4llvh5APInt3ugeEm.exit24

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i21: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i16
  %.0.i.i.pre.i22 = load i64, ptr %.pre.i.i10, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i21, %_ZNK4llvh5APInt17countLeadingZerosEv.exit
  %.0.i.i.i23 = phi i64 [ %.0.i.i.pre.i22, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i21 ], [ %i.bs, %_ZNK4llvh5APInt17countLeadingZerosEv.exit ]
  %i.ck = icmp uge i64 %.0.i.i.i23, %i.br
  br label %_ZNK4llvh5APInt3ugeEm.exit24

bb.m:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = sub nuw nsw i32 64, %i.b
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.az, %i.cm
  %i.co = xor i64 %i.cn, -1
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.co, i1 false)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  br label %_ZNK4llvh5APInt16countLeadingOnesEv.exit

bb.o:                                             ; preds = %bb.m
  %i.cr = and i32 %i.b, 63                        ; 3 uses
  %.not.i.i25 = icmp eq i32 %i.cr, 0              ; 2 uses
  %i.cs = sub nuw nsw i32 64, %i.cr
  %.016.i.i = select i1 %.not.i.i25, i32 64, i32 %i.cr ; 3 uses
  %narrow.i.i = select i1 %.not.i.i25, i32 0, i32 %i.cs
  %.015.i.i = zext nneg i32 %narrow.i.i to i64
  %i.ct = add nuw nsw i64 %i.c, 63
  %i.cu = lshr i64 %i.ct, 6                       ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.at, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !24
  %i.cy = shl i64 %i.cx, %.015.i.i
  %i.cz = xor i64 %i.cy, -1
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cz, i1 false)
  %i.db = trunc nuw nsw i64 %i.da to i32          ; 2 uses
  %i.dc = icmp eq i32 %.016.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.preheader.i.i, label %_ZNK4llvh5APInt16countLeadingOnesEv.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.o
  %i.dd = trunc nuw nsw i64 %i.cu to i32          ; 2 uses
  %4 = add nsw i32 %i.dd, -2
  %5 = shl i32 %i.dd, 6
  %6 = add nsw i32 %.016.i.i, -64
  %i.de = add i32 %6, %5
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %bb.p, %.lr.ph.preheader.i.i
  %.024.i.i = phi i32 [ %i.dj, %bb.p ], [ %.016.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.01423.i.i = phi i32 [ %i.dk, %bb.p ], [ %4, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.df = zext nneg i32 %.01423.i.i to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !24 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i27
  %i.dj = add i32 %.024.i.i, 64
  %i.dk = add nsw i32 %.01423.i.i, -1
  %i.dl = icmp sgt i32 %.01423.i.i, 0
  br i1 %i.dl, label %.lr.ph.i.i27, label %_ZNK4llvh5APInt16countLeadingOnesEv.exit, !llvm.loop !9

bb.q:                                             ; preds = %.lr.ph.i.i27
  %i.dm = xor i64 %i.dh, -1
  %i.dn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = add i32 %.024.i.i, %i.do
  br label %_ZNK4llvh5APInt16countLeadingOnesEv.exit

_ZNK4llvh5APInt16countLeadingOnesEv.exit:         ; preds = %bb.p, %bb.n, %bb.o, %bb.q
  %.0.i26 = phi i32 [ %i.cq, %bb.n ], [ %i.dp, %bb.q ], [ %i.db, %bb.o ], [ %i.de, %bb.p ]
  %i.dq = zext i32 %.0.i26 to i64
  %.pre.i.i28 = load ptr, ptr %2, align 8         ; 3 uses
  %i.dr = ptrtoint ptr %.pre.i.i28 to i64
  br i1 %i.f, label %bb.t, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZNK4llvh5APInt16countLeadingOnesEv.exit
  %i.ds = zext i32 %i.e to i64
  %i.dt = add nuw nsw i64 %i.ds, 63
  %i.du = lshr i64 %i.dt, 6                       ; 2 uses
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl i32 %i.dv, 6
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i29
  %indvars.iv.i.i.i.i30 = phi i64 [ %indvars.iv.next.i.i.i.i32, %bb.s ], [ %i.du, %.lr.ph.i.i.i.i.i29 ] ; 2 uses
  %.019.i.i.i.i.i31 = phi i32 [ %i.ed, %bb.s ], [ 0, %.lr.ph.i.i.i.i.i29 ] ; 2 uses
  %indvars.iv.next.i.i.i.i32 = add nsw i64 %indvars.iv.i.i.i.i30, -1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i28, i64 %indvars.iv.next.i.i.i.i32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !24 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.s, label %.thread.i.i.i.i.i33

.thread.i.i.i.i.i33:                              ; preds = %bb.r
  %i.ea = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = or disjoint i32 %.019.i.i.i.i.i31, %i.eb
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i34

bb.s:                                             ; preds = %bb.r
  %i.ed = add i32 %.019.i.i.i.i.i31, 64
  %i.ee = icmp samesign ugt i64 %indvars.iv.i.i.i.i30, 1
  br i1 %i.ee, label %bb.r, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i34, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i34:      ; preds = %bb.s, %.thread.i.i.i.i.i33
  %.2.i.i.i.i.i35 = phi i32 [ %i.ec, %.thread.i.i.i.i.i33 ], [ %i.dw, %bb.s ]
  %i.ef = and i32 %i.e, 63
  %.not.i.i.i.i.i36 = icmp eq i32 %i.ef, 0
  %.neg.i.i.i.i.i37 = or i32 %i.e, -64
  %.neg15.i.i.i.i.i38 = select i1 %.not.i.i.i.i.i36, i32 0, i32 %.neg.i.i.i.i.i37
  %i.eg = add i32 %.neg15.i.i.i.i.i38, %.2.i.i.i.i.i35
  %i.eh = sub i32 %i.e, %i.eg
  %i.ei = icmp ult i32 %i.eh, 65
  br i1 %i.ei, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i39, label %_ZNK4llvh5APInt3ugeEm.exit24

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i39: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i34
  %.0.i.i.pre.i40 = load i64, ptr %.pre.i.i28, align 8, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i39, %_ZNK4llvh5APInt16countLeadingOnesEv.exit
  %.0.i.i.i41 = phi i64 [ %.0.i.i.pre.i40, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i39 ], [ %i.dr, %_ZNK4llvh5APInt16countLeadingOnesEv.exit ]
  %i.ej = icmp uge i64 %.0.i.i.i41, %i.dq
  br label %_ZNK4llvh5APInt3ugeEm.exit24

_ZNK4llvh5APInt3ugeEm.exit24:                     ; preds = %bb.t, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i34, %bb.l, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i16
  %storemerge.in = phi i1 [ %i.ck, %bb.l ], [ true, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i16 ], [ true, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i34 ], [ %i.ej, %bb.t ]
  %storemerge = zext i1 %storemerge.in to i8
  store i8 %storemerge, ptr %3, align 1, !tbaa !32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ek, align 8, !tbaa !21, !alias.scope !630
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit24
  %i.el = load i64, ptr %1, align 8, !tbaa !22, !noalias !630
  %i.em = inttoptr i64 %i.el to ptr
  br label %_ZN4llvh5APIntC2ERKS0_.exit.i.i

bb.v:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit24
  %i.en = add nuw nsw i64 %i.c, 63
  %i.eo = lshr i64 %i.en, 3
  %i.ep = and i64 %i.eo, 1073741816               ; 2 uses
  %i.eq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ep) #22, !noalias !630 ; 2 uses
  %i.er = load ptr, ptr %1, align 8, !tbaa !22, !noalias !630
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %i.er, i64 %i.ep, i1 false), !noalias !630
  %.pre = load i32, ptr %i.d, align 8, !tbaa !21, !noalias !630
  br label %_ZN4llvh5APIntC2ERKS0_.exit.i.i

_ZN4llvh5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.v, %bb.u
  %i.es = phi i32 [ %i.e, %bb.u ], [ %.pre, %bb.v ] ; 5 uses
  %.sink.i = phi ptr [ %i.em, %bb.u ], [ %i.eq, %bb.v ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !22, !alias.scope !630
  %i.et = icmp ult i32 %i.es, 65                  ; 2 uses
  %.pre.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !630 ; 4 uses
  %i.eu = ptrtoint ptr %.pre.i.i.i.i.i to i64
  br i1 %i.et, label %_ZNK4llvh5APInt3ugtEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN4llvh5APIntC2ERKS0_.exit.i.i
  %i.ev = zext i32 %i.es to i64
  %i.ew = add nuw nsw i64 %i.ev, 63
  %i.ex = lshr i64 %i.ew, 6                       ; 2 uses
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl i32 %i.ey, 6
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %bb.x ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i.i.i.i = phi i32 [ %i.fg, %bb.x ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !24, !noalias !630 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.x, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.w
  %i.fd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fb, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = or disjoint i32 %.019.i.i.i.i.i.i.i.i, %i.fe
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.fg = add i32 %.019.i.i.i.i.i.i.i.i, 64
  %i.fh = icmp samesign ugt i64 %indvars.iv.i.i.i.i.i.i.i, 1
  br i1 %i.fh, label %bb.w, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.i.i.i, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.i.i.i:  ; preds = %bb.x, %.thread.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %i.ff, %.thread.i.i.i.i.i.i.i.i ], [ %i.ez, %bb.x ]
  %i.fi = and i32 %i.es, 63
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fi, 0
  %.neg.i.i.i.i.i.i.i.i = or i32 %i.es, -64
  %.neg15.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i.i.i.i
  %i.fj = add i32 %.neg15.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  %i.fk = sub i32 %i.es, %i.fj
  %i.fl = icmp ugt i32 %i.fk, 64
  br i1 %i.fl, label %_ZNK4llvh5APIntlsERKS0_.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i.i.i.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i.i.i.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.i.i.i
  %.0.i.i.pre.i.i.i.i = load i64, ptr %.pre.i.i.i.i.i, align 8, !tbaa !22, !noalias !630
  br label %_ZNK4llvh5APInt3ugtEm.exit.i.i.i.i

_ZNK4llvh5APInt3ugtEm.exit.i.i.i.i:               ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i.i.i.i, %_ZN4llvh5APIntC2ERKS0_.exit.i.i
  %.0.i.i.i.i.i.i = phi i64 [ %.0.i.i.pre.i.i.i.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i.i.i.i ], [ %i.eu, %_ZN4llvh5APIntC2ERKS0_.exit.i.i ]
  %i.fm = icmp ugt i64 %.0.i.i.i.i.i.i, %i.c
  br i1 %i.fm, label %_ZNK4llvh5APIntlsERKS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.et, ptr %2, ptr %.pre.i.i.i.i.i
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !22, !noalias !630
  %i.fn = trunc i64 %.0.i.i.i.i.i to i32
  br label %_ZNK4llvh5APIntlsERKS0_.exit

_ZNK4llvh5APIntlsERKS0_.exit:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.i.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i.i.i.i, %bb.y
  %i.fo = phi i32 [ %i.fn, %bb.y ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i.i.i.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i.i.i.i ]
  %i.fp = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntlSEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.fo) ; 0 uses
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %.loopexit.i._crit_edge.i, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %_ZNK4llvh5APIntlsERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt7ushl_ovERKS0_Rb(ptr dead_on_unwind noalias writable sret(%"class.llvh::APInt") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 11 uses
  %i.c = zext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 10 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %2, align 8           ; 3 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugeEm.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !8

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ult i32 %i.w, 65
end_hunk_1
