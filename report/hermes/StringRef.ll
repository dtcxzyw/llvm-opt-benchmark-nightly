inline.NumInlined: 344
inline.NumDeleted: 125
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvh9StringRef5lowerB5cxx11Ev:bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.07
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -65
  %or.cond.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %.0.i = select i1 %or.cond.i, i8 %i.j, i8 %i.h
  %i.k = load ptr, ptr %0, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.07
  store i8 %.0.i, ptr %i.l, align 1, !tbaa !15
  %i.m = or disjoint i64 %.07, 1                  ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15    ; 3 uses
  %i.q = add i8 %i.p, -65
  %or.cond.i.1 = icmp ult i8 %i.q, 26
  %i.r = or disjoint i8 %i.p, 32
  %.0.i.1 = select i1 %or.cond.i.1, i8 %i.r, i8 %i.p
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 %.0.i.1, ptr %i.t, align 1, !tbaa !15
  %i.u = add nuw i64 %.07, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !30

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.v = load ptr, ptr %1, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.07.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15    ; 3 uses
  %i.y = add i8 %i.x, -65
  %or.cond.i.epil = icmp ult i8 %i.y, 26
  %i.z = or disjoint i8 %i.x, 32
  %.0.i.epil = select i1 %or.cond.i.epil, i8 %i.z, i8 %i.x
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.07.epil.init
  store i8 %.0.i.epil, ptr %i.ab, align 1, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh9StringRef5upperB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %0, align 8, !tbaa !26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i8 noundef signext 0) #18
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %.not6 = icmp eq i64 %i.d, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.07
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -97
  %or.cond.i = icmp ult i8 %i.i, 26
  %i.j = add nsw i8 %i.h, -32
  %.0.i = select i1 %or.cond.i, i8 %i.j, i8 %i.h
  %i.k = load ptr, ptr %0, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.07
  store i8 %.0.i, ptr %i.l, align 1, !tbaa !15
  %i.m = or disjoint i64 %.07, 1                  ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15    ; 3 uses
  %i.q = add i8 %i.p, -97
  %or.cond.i.1 = icmp ult i8 %i.q, 26
  %i.r = add nsw i8 %i.p, -32
  %.0.i.1 = select i1 %or.cond.i.1, i8 %i.r, i8 %i.p
  %i.s = load ptr, ptr %0, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 %.0.i.1, ptr %i.t, align 1, !tbaa !15
  %i.u = add nuw i64 %.07, 2                      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !31

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.v = load ptr, ptr %1, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.07.epil.init
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15    ; 3 uses
  %i.y = add i8 %i.x, -97
  %or.cond.i.epil = icmp ult i8 %i.y, 26
  %i.z = add nsw i8 %i.x, -32
  %.0.i.epil = select i1 %or.cond.i.epil, i8 %i.z, i8 %i.x
  %i.aa = load ptr, ptr %0, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.07.epil.init
  store i8 %.0.i.epil, ptr %i.ab, align 1, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = icmp ugt i64 %3, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %3 ; 4 uses
  %i.g = sub nuw i64 %i.c, %3                     ; 4 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.g, %2
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %1, align 1, !tbaa !15
  %i.l = sext i8 %i.k to i32
  %i.m = tail call noundef ptr @memchr(ptr noundef %i.f, i32 noundef %i.l, i64 noundef %i.g) #17 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = sub i64 %i.o, %i.p
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.r = sub i64 %i.g, %2
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 1        ; 2 uses
  %i.u = icmp ult i64 %i.g, 16
  %i.v = icmp ugt i64 %2, 255
  %or.cond = or i1 %i.v, %i.u
  br i1 %or.cond, label %.preheader, label %.lr.ph.preheader

.preheader:                                       ; preds = %bb.g, %bb.i
  %.049 = phi ptr [ %i.aa, %bb.i ], [ %i.f, %bb.g ] ; 3 uses
  %bcmp62 = tail call i32 @bcmp(ptr %.049, ptr %1, i64 %2)
  %i.w = icmp eq i32 %bcmp62, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader
  %i.x = ptrtoint ptr %.049 to i64
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = sub i64 %i.x, %i.y
  br label %.loopexit

bb.i:                                             ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %.049, i64 1 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.t
  br i1 %i.ab, label %.preheader, label %.loopexit, !llvm.loop !32

.lr.ph.preheader:                                 ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ac = trunc nuw i64 %2 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %i.ac, i64 256, i1 false)
  %i.ad = add nsw i64 %2, -1                      ; 5 uses
  br label %.lr.ph

.preheader69:                                     ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ag = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.ah = sub nsw i64 %i.ad, %i.ag
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !15
  %indvars.iv.next = add i64 %i.ag, 1             ; 2 uses
  %4 = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.ad, %4
  br i1 %.not, label %.preheader69, label %.lr.ph, !llvm.loop !33

bb.j:                                             ; preds = %.preheader69, %bb.m
  %.150 = phi ptr [ %i.ay, %bb.m ], [ %i.f, %.preheader69 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.150, i64 %i.ad
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15  ; 2 uses
  %i.ap = icmp eq i8 %i.ao, %i.af
  br i1 %i.ap, label %bb.k, label %bb.m, !prof !34

bb.k:                                             ; preds = %bb.j
  %bcmp = tail call i32 @bcmp(ptr nonnull %.150, ptr nonnull %1, i64 %i.ad)
  %i.aq = icmp eq i32 %bcmp, 0
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = ptrtoint ptr %.150 to i64
  %i.as = ptrtoint ptr %i.e to i64
  %i.at = sub i64 %i.ar, %i.as
  br label %.loopexit70

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.au = zext i8 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.150, i64 %i.ax ; 2 uses
  %i.az = icmp ult ptr %i.ay, %i.t
  br i1 %i.az, label %bb.j, label %.loopexit70, !llvm.loop !35

.loopexit70:                                      ; preds = %bb.m, %bb.l
  %.2 = phi i64 [ %i.at, %bb.l ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.b, %bb.c, %bb.e, %bb.f, %.loopexit70, %bb.h, %bb.a
  %.5 = phi i64 [ -1, %bb.a ], [ -1, %bb.e ], [ %3, %bb.b ], [ -1, %bb.c ], [ %i.q, %bb.f ], [ %i.z, %bb.h ], [ %.2, %.loopexit70 ], [ -1, %bb.i ]
  ret i64 %.5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef10find_lowerES0_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.sroa.speculated25 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %3) ; 2 uses
  %i.c = sub i64 %i.b, %.sroa.speculated25        ; 2 uses
  %.not42 = icmp ult i64 %i.c, %2
  br i1 %.not42, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not25.i.i = icmp eq i64 %2, 0
  br i1 %.not25.i.i, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph.i.i.preheader.preheader

.lr.ph.i.i.preheader.preheader:                   ; preds = %.lr.ph
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated25
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.preheader, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit
  %.0545 = phi i64 [ %i.q, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ], [ %3, %.lr.ph.i.i.preheader.preheader ] ; 2 uses
  %.sroa.0.044 = phi ptr [ %i.o, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ], [ %i.e, %.lr.ph.i.i.preheader.preheader ] ; 2 uses
  %.sroa.6.043 = phi i64 [ %i.p, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ], [ %i.c, %.lr.ph.i.i.preheader.preheader ]
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = add nuw i64 %.01324.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.f, %2
  br i1 %exitcond.not.i.i, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.b
  %.01324.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 %.01324.i.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -65
  %or.cond.i.i.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %.0.i.i.i = select i1 %or.cond.i.i.i, i8 %i.j, i8 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.01324.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15    ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond.i18.i.i = icmp ult i8 %i.m, 26
  %i.n = or disjoint i8 %i.l, 32
  %.0.i19.i.i = select i1 %or.cond.i18.i.i, i8 %i.n, i8 %i.l
  %.not.i.i = icmp eq i8 %.0.i.i.i, %.0.i19.i.i
  br i1 %.not.i.i, label %bb.b, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit

_ZNK4llvh9StringRef16startswith_lowerES0_.exit:   ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 1
  %i.p = add i64 %.sroa.6.043, -1                 ; 2 uses
  %i.q = add i64 %.0545, 1
  %.not = icmp ult i64 %i.p, %2
  br i1 %.not, label %_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread, label %.lr.ph.i.i.preheader, !llvm.loop !36

_ZNK4llvh9StringRef16startswith_lowerES0_.exit.thread: ; preds = %_ZNK4llvh9StringRef16startswith_lowerES0_.exit, %bb.b, %bb.a, %.lr.ph
  %.0 = phi i64 [ %3, %.lr.ph ], [ %.0545, %bb.b ], [ -1, %bb.a ], [ -1, %_ZNK4llvh9StringRef16startswith_lowerES0_.exit ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef11rfind_lowerEcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef signext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = add i8 %1, -65
  %or.cond.i7 = icmp ult i8 %i.d, 26
  %i.e = or disjoint i8 %1, 32
  %.0.i8 = select i1 %or.cond.i7, i8 %i.e, i8 %1
  %.not10 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011 = phi i64 [ %i.f, %bb.b ], [ %.sroa.speculated, %bb.a ]
  %i.f = add i64 %.011, -1                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = add i8 %i.h, -65
  %or.cond.i = icmp ult i8 %i.i, 26
  %i.j = or disjoint i8 %i.h, 32
  %.0.i = select i1 %or.cond.i, i8 %i.j, i8 %i.h
  %i.k = icmp eq i8 %.0.i, %.0.i8
  br i1 %i.k, label %._crit_edge12, label %bb.b, !llvm.loop !37

._crit_edge12:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.b, %._crit_edge12, %bb.a
  %.06 = phi i64 [ %i.f, %._crit_edge12 ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i64 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef5rfindES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr33 = freeze i64 %2                          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = icmp ugt i64 %.fr33, %i.b
  br i1 %i.c, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub nuw i64 %i.b, %.fr33           ; 2 uses
  %i.d = add i64 %reass.sub, 1                    ; 2 uses
  %.not27 = icmp eq i64 %i.d, 0
  br i1 %.not27, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = icmp eq i64 %.fr33, 0
  br i1 %i.f, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge
  %.01128 = phi i64 [ %i.g, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge ], [ %i.d, %.lr.ph ]
  %i.g = add i64 %.01128, -1                      ; 4 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.g) ; 2 uses
  %i.h = sub i64 %i.b, %.sroa.speculated20
  %.not26 = icmp ugt i64 %.fr33, %i.h
  br i1 %.not26, label %_ZNK4llvh9StringRef6equalsES0_.exit.backedge, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i: ; preds = %.lr.ph.split
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.speculated20
  %bcmp = tail call i32 @bcmp(ptr %i.i, ptr %1, i64 %.fr33)
  %i.j = icmp eq i32 %bcmp, 0
  br i1 %i.j, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %_ZNK4llvh9StringRef6equalsES0_.exit.backedge

_ZNK4llvh9StringRef6equalsES0_.exit.backedge:     ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i, %.lr.ph.split
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread, label %.lr.ph.split, !llvm.loop !38

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.thread: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge, %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %reass.sub, %.lr.ph ], [ -1, %_ZNK4llvh9StringRef6equalsES0_.exit.backedge ], [ %i.g, %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4llvh9StringRef11rfind_lowerES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.fr = freeze i64 %2                            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = icmp ugt i64 %.fr, %i.b
  br i1 %i.c, label %_ZNK4llvh9StringRef12equals_lowerES0_.exit.thread, label %bb.b

end_hunk_0
