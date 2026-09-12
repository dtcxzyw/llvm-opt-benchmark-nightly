Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_clause?download=true
inline.NumInlined: 210
inline.NumDeleted: 117
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3sat16clause_allocator8finalizeEv:bb.a
bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 0, ptr %i.q, align 4, !tbaa !19
  br label %_ZN6vectorIPvLb0EjE5resetEv.exit.i

_ZN6vectorIPvLb0EjE5resetEv.exit.i:               ; preds = %bb.d, %bb.c
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 64
  br i1 %exitcond.not.i, label %_ZN13sat_allocator5resetEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6vectorIPvLb0EjE5resetEv.exit.i
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i11.i.1 = icmp eq ptr %i.t, null
  br i1 %.not.i11.i.1, label %_ZN6vectorIPvLb0EjE5resetEv.exit.i.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  store i32 0, ptr %i.u, align 4, !tbaa !19
  br label %_ZN6vectorIPvLb0EjE5resetEv.exit.i.1

_ZN6vectorIPvLb0EjE5resetEv.exit.i.1:             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %.not.i11.i.2 = icmp eq ptr %i.x, null
  br i1 %.not.i11.i.2, label %_ZN6vectorIPvLb0EjE5resetEv.exit.i.2, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIPvLb0EjE5resetEv.exit.i.1
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4
  store i32 0, ptr %i.y, align 4, !tbaa !19
  br label %_ZN6vectorIPvLb0EjE5resetEv.exit.i.2

_ZN6vectorIPvLb0EjE5resetEv.exit.i.2:             ; preds = %bb.g, %_ZN6vectorIPvLb0EjE5resetEv.exit.i.1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %.not.i11.i.3 = icmp eq ptr %i.ab, null
  br i1 %.not.i11.i.3, label %_ZN6vectorIPvLb0EjE5resetEv.exit.i.3, label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIPvLb0EjE5resetEv.exit.i.2
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  store i32 0, ptr %i.ac, align 4, !tbaa !19
  br label %_ZN6vectorIPvLb0EjE5resetEv.exit.i.3

_ZN6vectorIPvLb0EjE5resetEv.exit.i.3:             ; preds = %bb.h, %_ZN6vectorIPvLb0EjE5resetEv.exit.i.2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  br label %bb.c

_ZN13sat_allocator5resetEv.exit:                  ; preds = %_ZN6vectorIPvLb0EjE5resetEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ae, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZNK3sat16clause_allocator10get_clauseEm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(568) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK3sat16clause_allocator10get_offsetEPKNS_6clauseE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(568) %0, ptr noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN3sat16clause_allocator9mk_clauseEjPKNS_7literalEb(ptr noundef nonnull align 8 dereferenceable(568) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = shl nuw nsw i64 %i.a, 2                  ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 20
  %i.d = tail call noundef ptr @_ZN13sat_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(552) %0, i64 noundef %i.c) ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i:        ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %bb.a
  %i.l = load i32, ptr %i.e, align 8, !tbaa !41   ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !41
  br label %_ZN6id_gen2mkEv.exit

_ZN6vectorIjLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.n = add i32 %i.j, -1                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  store i32 %i.n, ptr %i.i, align 4, !tbaa !19
  br label %_ZN6id_gen2mkEv.exit

_ZN6id_gen2mkEv.exit:                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, %_ZN6vectorIjLb0EjE4backEv.exit.i
  %.0.i = phi i32 [ %i.l, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i ], [ %i.q, %_ZN6vectorIjLb0EjE4backEv.exit.i ]
  store i32 %.0.i, ptr %i.d, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %1, ptr %i.r, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %1, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = select i1 %3, i32 4, i32 0
  %i.x = and i32 %i.v, -1073741823
  %i.y = or disjoint i32 %i.x, %i.w               ; 2 uses
  %i.z = or disjoint i32 %i.y, 1073725440
  store i32 %i.z, ptr %i.u, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr readonly align 4 %2, i64 %i.b, i1 false)
  %i.ab = or i32 %i.y, 1073725441
  store i32 %i.ab, ptr %i.u, align 4
  %.not.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i, label %_ZN3sat6clauseC2EjjPKNS_7literalEb.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN6id_gen2mkEv.exit
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.a, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !tbaa !15
  %wide.load9 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !15
  %i.ae = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.af = lshr <4 x i32> %wide.load9, splat (i32 1)
  %i.ag = and <4 x i32> %i.ae, splat (i32 31)
  %i.ah = and <4 x i32> %i.af, splat (i32 31)
  %i.ai = shl nuw <4 x i32> splat (i32 1), %i.ag
  %i.aj = shl nuw <4 x i32> splat (i32 1), %i.ah
  %i.ak = or <4 x i32> %i.ai, %vec.phi            ; 2 uses
  %i.al = or <4 x i32> %i.aj, %vec.phi8           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %_ZN3sat6clauseC2EjjPKNS_7literalEb.exit, label %.lr.ph.i.i.i.i.preheader10

.lr.ph.i.i.i.i.preheader10:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.05.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader10, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ] ; 2 uses
  %.sroa.0.05.i.i.i.i = phi i32 [ %i.at, %.lr.ph.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader10 ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = and i32 %i.aq, 31
  %i.as = shl nuw i32 1, %i.ar
  %i.at = or i32 %i.as, %.sroa.0.05.i.i.i.i       ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.a
  br i1 %exitcond.not.i.i.i.i, label %_ZN3sat6clauseC2EjjPKNS_7literalEb.exit, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZN3sat6clauseC2EjjPKNS_7literalEb.exit:          ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN6id_gen2mkEv.exit
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ 0, %_ZN6id_gen2mkEv.exit ], [ %i.an, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ]
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.t, align 4
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN13sat_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(552) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = add i64 %i.b, %1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !37
  %i.d = icmp ugt i64 %1, 511
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %1)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = and i64 %1, 7
  %2 = add nuw nsw i64 %1, 7
  %3 = lshr i64 %2, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %3
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK6vectorIPvLb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIPvLb0EjE5emptyEv.exit

_ZNK6vectorIPvLb0EjE5emptyEv.exit:                ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK6vectorIPvLb0EjE5emptyEv.exit.thread, label %_ZN6vectorIPvLb0EjE4backEv.exit

_ZN6vectorIPvLb0EjE4backEv.exit:                  ; preds = %_ZNK6vectorIPvLb0EjE5emptyEv.exit
  %i.n = add i32 %i.l, -1                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  store i32 %i.n, ptr %i.k, align 4, !tbaa !19
  br label %bb.j

_ZNK6vectorIPvLb0EjE5emptyEv.exit.thread:         ; preds = %bb.c, %_ZNK6vectorIPvLb0EjE5emptyEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit

_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit: ; preds = %_ZNK6vectorIPvLb0EjE5emptyEv.exit.thread
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !19   ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit._crit_edge

_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit._crit_edge: ; preds = %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !38
  %i.x = add i32 %i.v, -1
  br label %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit17

_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit.thread: ; preds = %_ZNK6vectorIPvLb0EjE5emptyEv.exit.thread, %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit
  %i.y = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 65536) ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.y, align 8, !tbaa !79
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !32  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit.thread
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit

bb.e:                                             ; preds = %bb.d, %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit.thread
  tail call void @_ZN6vectorIPN13sat_allocator5chunkELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %.pre.i = load ptr, ptr %i.r, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !19
  br label %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit

_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit: ; preds = %bb.d, %bb.e
  %i.ah = phi i32 [ %.pre2.i, %bb.e ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ai = phi ptr [ %.pre.i, %bb.e ], [ %i.aa, %bb.d ] ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ak
  store ptr %i.y, ptr %i.al, align 8, !tbaa !34
  %i.am = add i32 %i.ah, 1
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.an, align 8, !tbaa !38
  br label %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit17

_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit17: ; preds = %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit._crit_edge, %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit
  %i.ao = phi i32 [ %i.x, %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit._crit_edge ], [ %i.ah, %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit ]
  %i.ap = phi ptr [ %i.s, %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit._crit_edge ], [ %i.ai, %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit ]
  %i.aq = phi ptr [ %.pre, %_ZNK6vectorIPN13sat_allocator5chunkELb0EjE5emptyEv.exit._crit_edge ], [ %i.y, %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit ] ; 2 uses
  %.not.i.not.i = icmp eq i64 %i.f, 0
  %4 = select i1 %.not.i.not.i, i64 0, i64 8
  %5 = add nuw nsw i64 %4, %1
  %6 = and i64 %5, 1016                           ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %6
  %i.as = zext i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 65528
  %i.aw = icmp ugt ptr %i.ar, %i.av
  br i1 %i.aw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit17
  %i.ax = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 65536) ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !79
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !32  ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit23

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN6vectorIPN13sat_allocator5chunkELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
  %.pre.i18 = load ptr, ptr %i.r, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i19 = getelementptr inbounds i8, ptr %.pre.i18, i64 -4
  %.pre2.i20 = load i32, ptr %.phi.trans.insert.i19, align 4, !tbaa !19
  br label %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit23

_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit23: ; preds = %bb.g, %bb.h
  %i.bg = phi i32 [ %.pre2.i20, %bb.h ], [ %i.bc, %bb.g ] ; 2 uses
  %i.bh = phi ptr [ %.pre.i18, %bb.h ], [ %i.az, %bb.g ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  store ptr %i.ax, ptr %i.bk, align 8, !tbaa !34
  %i.bl = add i32 %i.bg, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit23, %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit17
  %i.bm = phi ptr [ %i.ax, %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit23 ], [ %i.aq, %_ZN6vectorIPN13sat_allocator5chunkELb0EjE4backEv.exit17 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %6
  store ptr %i.bn, ptr %7, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %_ZN6vectorIPvLb0EjE4backEv.exit, %bb.i, %bb.b
  %.1 = phi ptr [ %i.e, %bb.b ], [ %i.bm, %bb.i ], [ %i.q, %_ZN6vectorIPvLb0EjE4backEv.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN3sat16clause_allocator11copy_clauseERKNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 20
  %i.f = tail call noundef ptr @_ZN13sat_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(552) %0, i64 noundef %i.e) ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19   ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i:        ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %bb.a
  %i.n = load i32, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.g, align 8, !tbaa !41
  br label %_ZN6id_gen2mkEv.exit

_ZN6vectorIjLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.p = add i32 %i.l, -1                         ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  store i32 %i.p, ptr %i.k, align 4, !tbaa !19
  br label %_ZN6id_gen2mkEv.exit

_ZN6id_gen2mkEv.exit:                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, %_ZN6vectorIjLb0EjE4backEv.exit.i
  %.0.i = phi i32 [ %i.n, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i ], [ %i.s, %_ZN6vectorIjLb0EjE4backEv.exit.i ]
  %i.t = load i32, ptr %i.a, align 4, !tbaa !11   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 4
  store i32 %.0.i, ptr %i.f, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.t, ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.t, ptr %i.z, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 7 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, -1073741823
  %i.ae = or disjoint i32 %i.ad, %i.x             ; 2 uses
  %i.af = or disjoint i32 %i.ae, 1073725440
  store i32 %i.af, ptr %i.ab, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 3 uses
  %i.ah = zext i32 %i.t to i64                    ; 4 uses
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr nonnull readonly align 4 %i.u, i64 %i.ai, i1 false)
  %i.aj = or i32 %i.ae, 1073725441                ; 2 uses
  store i32 %i.aj, ptr %i.ab, align 4
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZN3sat6clauseC2EjjPKNS_7literalEb.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN6id_gen2mkEv.exit
  %min.iters.check = icmp ult i32 %i.t, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4294967288              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x i32>, ptr %i.ak, align 4, !tbaa !15
  %wide.load19 = load <4 x i32>, ptr %i.al, align 4, !tbaa !15
  %i.am = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.an = lshr <4 x i32> %wide.load19, splat (i32 1)
  %i.ao = and <4 x i32> %i.am, splat (i32 31)
  %i.ap = and <4 x i32> %i.an, splat (i32 31)
  %i.aq = shl nuw <4 x i32> splat (i32 1), %i.ao
  %i.ar = shl nuw <4 x i32> splat (i32 1), %i.ap
  %i.as = or <4 x i32> %i.aq, %vec.phi            ; 2 uses
  %i.at = or <4 x i32> %i.ar, %vec.phi18          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ah
  br i1 %cmp.n, label %_ZN3sat6clauseC2EjjPKNS_7literalEb.exit, label %.lr.ph.i.i.i.i.preheader20

.lr.ph.i.i.i.i.preheader20:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.05.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader20, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader20 ] ; 2 uses
  %.sroa.0.05.i.i.i.i = phi i32 [ %i.bb, %.lr.ph.i.i.i.i ], [ %.sroa.0.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader20 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !15
  %i.ay = lshr i32 %i.ax, 1
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = or i32 %i.ba, %.sroa.0.05.i.i.i.i       ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ah
  br i1 %exitcond.not.i.i.i.i, label %_ZN3sat6clauseC2EjjPKNS_7literalEb.exit, label %.lr.ph.i.i.i.i, !llvm.loop !81

_ZN3sat6clauseC2EjjPKNS_7literalEb.exit:          ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN6id_gen2mkEv.exit
  %.sroa.0.0.lcssa.i.i.i.i = phi i32 [ 0, %_ZN6id_gen2mkEv.exit ], [ %i.av, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i ]
  store i32 %.sroa.0.0.lcssa.i.i.i.i, ptr %i.aa, align 4
  %i.bc = load i32, ptr %i.v, align 4
  %i.bd = and i32 %i.bc, 32
  %i.be = or disjoint i32 %i.bd, %i.aj            ; 2 uses
  store i32 %i.be, ptr %i.ab, align 4
  %i.bf = load i32, ptr %i.v, align 4
  %i.bg = and i32 %i.bf, 4177920
  %i.bh = and i32 %i.be, -4194267
  %i.bi = or disjoint i32 %i.bh, %i.bg            ; 2 uses
  store i32 %i.bi, ptr %i.ab, align 4
  %i.bj = load i32, ptr %i.v, align 4
  %i.bk = and i32 %i.bj, 1069547520
  %i.bl = and i32 %i.bi, -1069563867
  %i.bm = or disjoint i32 %i.bl, %i.bk            ; 2 uses
  store i32 %i.bm, ptr %i.ab, align 4
  %i.bn = load i32, ptr %i.v, align 4
  %i.bo = and i32 %i.bn, 16
  %i.bp = or disjoint i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.ab, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.bq, align 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.aa, align 4
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat16clause_allocator10del_clauseEPNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !10
  %i.b = tail call noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
  br i1 %i.b, label %_ZN6id_gen7recycleEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !31 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !19
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i:          ; preds = %bb.d, %bb.c
  %i.k = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.l = phi ptr [ %.pre.i.i, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  store i32 %i.a, ptr %i.o, align 4, !tbaa !19
  %i.p = add i32 %i.k, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !19
  br label %_ZN6id_gen7recycleEj.exit

_ZN6id_gen7recycleEj.exit:                        ; preds = %bb.a, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12   ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !37
  %.neg7 = add i64 %i.v, -20
  %i.w = sub i64 %.neg7, %i.t
  store i64 %i.w, ptr %i.u, align 8, !tbaa !37
  %i.x = icmp ugt i32 %i.r, 122
end_hunk_0
