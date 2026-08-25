Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4LIEF5MachO13LayoutChecker10check_mainEv:bb.a
  %i.ae = tail call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ad, i64 noundef %i.ab) #24 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread60.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ah = load <2 x i32>, ptr %i.ag, align 8
  %i.ai = and <2 x i32> %i.ah, splat (i32 4)
  %i.aj = icmp ne <2 x i32> %i.ai, zeroinitializer ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %i.al = extractelement <2 x i1> %i.aj, i64 1
  %i.am = select i1 %i.al, i1 true, i1 %i.ak
  br i1 %i.am, label %.thread60, label %.thread60.sink.split

.thread60.sink.split:                             ; preds = %bb.e, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c
  %.str.28.sink = phi ptr [ @.str.27, %bb.d ], [ @.str.28, %bb.f ], [ @.str.26, %bb.g ], [ @.str.26, %bb.c ], [ @.str.27, %bb.h ], [ @.str.29, %bb.e ]
  %i.an = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.str.28.sink)
  br label %.thread60

.thread60:                                        ; preds = %.thread60.sink.split, %.thread, %bb.h, %bb.a
  %.8 = phi i1 [ true, %bb.a ], [ true, %bb.h ], [ true, %.thread ], [ %i.an, %.thread60.sink.split ]
  ret i1 %.8
}

declare noundef ptr @_ZNK4LIEF5MachO6Binary12main_commandEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #4

declare noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4LIEF5MachO6Binary14thread_commandEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #4

declare noundef i64 @_ZNK4LIEF5MachO13ThreadCommand2pcEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker17check_valid_pathsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8, !nonnull !16, !align !17 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68, !noalias !304 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68, !noalias !307 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %.not3435 = icmp eq ptr %i.f, %i.d
  br i1 %.not3435, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = icmp eq i64 %i.i, 8
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %i.l = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.039.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01638.epil.init = phi i8 [ 0, %.lr.ph.preheader ], [ %.218.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.sroa.422.037.epil.init = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.unr-lcssa ]
  %lcmp.mod56 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.m = load ptr, ptr %.sroa.422.037.epil.init, align 8, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  switch i64 %i.o, label %._crit_edge [
    i64 13, label %.thread.epil
    i64 2147483683, label %.thread.fold.split.epil
    i64 2147483672, label %.thread.fold.split.epil
    i64 12, label %.thread.fold.split.epil
    i64 2147483679, label %.thread.fold.split.epil
  ]

.thread.fold.split.epil:                          ; preds = %.lr.ph.epil.preheader, %.lr.ph.epil.preheader, %.lr.ph.epil.preheader, %.lr.ph.epil.preheader
  br label %.thread.epil

.thread.epil:                                     ; preds = %.thread.fold.split.epil, %.lr.ph.epil.preheader
  %.11728.ph.epil = phi i8 [ 1, %.lr.ph.epil.preheader ], [ %.01638.epil.init, %.thread.fold.split.epil ]
  %.not.epil = icmp ne i64 %i.o, 13
  %i.p = zext i1 %.not.epil to i32
  %spec.select.epil = add nsw i32 %.039.epil.init, %i.p
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %.thread.epil, %._crit_edge.unr-lcssa
  %.218.lcssa = phi i8 [ %.218.1, %._crit_edge.unr-lcssa ], [ %.01638.epil.init, %.lr.ph.epil.preheader ], [ %.11728.ph.epil, %.thread.epil ]
  %.2.lcssa = phi i32 [ %.2.1, %._crit_edge.unr-lcssa ], [ %.039.epil.init, %.lr.ph.epil.preheader ], [ %spec.select.epil, %.thread.epil ]
  %i.q = trunc nuw i8 %.218.lcssa to i1           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.s = load i32, ptr %i.r, align 4, !tbaa !301  ; 2 uses
  %i.t = icmp eq i32 %i.s, 6
  br i1 %i.t, label %bb.c, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !301  ; 2 uses
  %i.w = icmp eq i32 %i.v, 6
  br i1 %i.w, label %.thread32.sink.split, label %.thread50

.lr.ph:                                           ; preds = %bb.b, %.lr.ph.preheader.new
  %.039 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.2.1, %bb.b ] ; 2 uses
  %.01638 = phi i8 [ 0, %.lr.ph.preheader.new ], [ %.218.1, %bb.b ] ; 2 uses
  %.sroa.422.037 = phi ptr [ %i.d, %.lr.ph.preheader.new ], [ %i.ag, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.x = load ptr, ptr %.sroa.422.037, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !78   ; 2 uses
  switch i64 %i.z, label %.lr.ph.1 [
    i64 13, label %.thread
    i64 2147483683, label %.thread.fold.split
    i64 2147483672, label %.thread.fold.split
    i64 12, label %.thread.fold.split
    i64 2147483679, label %.thread.fold.split
  ]

.thread.fold.split:                               ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.thread.fold.split
  %.11728.ph = phi i8 [ 1, %.lr.ph ], [ %.01638, %.thread.fold.split ]
  %.not = icmp ne i64 %i.z, 13
  %i.aa = zext i1 %.not to i32
  %spec.select = add nsw i32 %.039, %i.aa
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %.thread
  %.218 = phi i8 [ %.01638, %.lr.ph ], [ %.11728.ph, %.thread ] ; 2 uses
  %.2 = phi i32 [ %.039, %.lr.ph ], [ %spec.select, %.thread ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.422.037, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  switch i64 %i.ae, label %bb.b [
    i64 13, label %.thread.1
    i64 2147483683, label %.thread.fold.split.1
    i64 2147483672, label %.thread.fold.split.1
    i64 12, label %.thread.fold.split.1
    i64 2147483679, label %.thread.fold.split.1
  ]

.thread.fold.split.1:                             ; preds = %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1
  br label %.thread.1

.thread.1:                                        ; preds = %.thread.fold.split.1, %.lr.ph.1
  %.11728.ph.1 = phi i8 [ 1, %.lr.ph.1 ], [ %.218, %.thread.fold.split.1 ]
  %.not.1 = icmp ne i64 %i.ae, 13
  %i.af = zext i1 %.not.1 to i32
  %spec.select.1 = add nsw i32 %.2, %i.af
  br label %bb.b

bb.b:                                             ; preds = %.thread.1, %.lr.ph.1
  %.218.1 = phi i8 [ %.218, %.lr.ph.1 ], [ %.11728.ph.1, %.thread.1 ] ; 3 uses
  %.2.1 = phi i32 [ %.2, %.lr.ph.1 ], [ %spec.select.1, %.thread.1 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.422.037, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  br i1 %i.q, label %.thread32, label %.thread32.sink.split

bb.d:                                             ; preds = %._crit_edge
  %i.ah = icmp eq i32 %.2.lcssa, 0
  br i1 %i.q, label %.thread32.sink.split, label %.thread50

.thread50:                                        ; preds = %._crit_edge.thread, %bb.d
  %.0.lcssa4753 = phi i1 [ %i.ah, %bb.d ], [ true, %._crit_edge.thread ]
  %i.ai = phi i32 [ %i.s, %bb.d ], [ %i.v, %._crit_edge.thread ]
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.e, label %.thread32

bb.e:                                             ; preds = %.thread50
  %i.ak = tail call noundef zeroext i1 @_ZNK4LIEF5MachO6Binary3hasENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %i.b, i64 noundef 14) #24
  %or.cond = and i1 %.0.lcssa4753, %i.ak
  br i1 %or.cond, label %.thread32.sink.split, label %.thread32

.thread32.sink.split:                             ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.thread
  %.str.34.sink = phi ptr [ @.str.33, %bb.d ], [ @.str.32, %bb.c ], [ @.str.32, %._crit_edge.thread ], [ @.str.34, %bb.e ]
  %i.al = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.str.34.sink)
  br label %.thread32

.thread32:                                        ; preds = %.thread32.sink.split, %bb.c, %.thread50, %bb.e
  %.120 = phi i1 [ true, %bb.e ], [ true, %.thread50 ], [ true, %bb.c ], [ %i.al, %.thread32.sink.split ]
  ret i1 %.120
}

declare noundef zeroext i1 @_ZNK4LIEF5MachO6Binary3hasENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker14check_linkeditEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %struct.chunk_t, align 8            ; 4 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8, !nonnull !16, !align !17 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !310  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 3 uses
  %i.q = icmp ugt i64 %i.p, 384307168202282325
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.251) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not744 = icmp eq ptr %i.k, %i.l
  br i1 %.not744, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !107
  br label %._crit_edge.thread

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit: ; preds = %bb.c
  %i.r = mul nuw nsw i64 %i.p, 24
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26 ; 5 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.p ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !8   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %.pre1175.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !68, !noalias !311 ; 3 uses
  %.phi.trans.insert1176 = getelementptr inbounds nuw i8, ptr %.pre, i64 144
  %.pre1177 = load ptr, ptr %.phi.trans.insert1176, align 8, !tbaa !68, !noalias !314 ; 2 uses
  %.pre1189 = ptrtoint ptr %.pre1177 to i64
  %.pre1190 = ptrtoint ptr %.pre1175.a to i64
  %.pre1192 = sub i64 %.pre1189, %.pre1190
  %.pre1194 = ashr exact i64 %.pre1192, 3
  %i.u = icmp eq ptr %.pre1177, %.pre1175.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !107
  br i1 %i.u, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE7reserveEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 104
  %i.w = load i32, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  %i.x = icmp eq i32 %i.w, -17958194
  %i.y = icmp eq i32 %i.w, -822415874
  %spec.select.i.i = or i1 %i.x, %i.y
  %i.z = select i1 %spec.select.i.i, i32 4, i32 8 ; 30 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354
  %.0153988 = phi i1 [ false, %.lr.ph ], [ %.2155.ph, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ]
  %.0158987 = phi i32 [ 0, %.lr.ph ], [ %.2160.ph, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ]
  %.0163986 = phi i1 [ false, %.lr.ph ], [ %.2165.ph, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ]
  %.0168985 = phi i1 [ false, %.lr.ph ], [ %.2170.ph, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ]
  %.sroa.4599.0984 = phi ptr [ %.pre1175.a, %.lr.ph ], [ %i.ve, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ] ; 2 uses
  %.sroa.8600.0983 = phi i64 [ 0, %.lr.ph ], [ %i.vf, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ]
  %.sroa.102.0982 = phi ptr [ %i.t, %.lr.ph ], [ %.sroa.102.17, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ] ; 7 uses
  %.sroa.45.0981 = phi ptr [ %i.s, %.lr.ph ], [ %.sroa.45.17, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ] ; 7 uses
  %.sroa.0632.0980 = phi ptr [ %i.s, %.lr.ph ], [ %.sroa.0632.17, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit354 ] ; 8 uses
  %i.aa = load ptr, ptr %.sroa.4599.0984, align 8, !tbaa !76 ; 38 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 10 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !78
  %i.ad = icmp ne i64 %i.ac, 2
  %.not749 = icmp eq ptr %i.aa, null              ; 10 uses
  %.not = or i1 %.not749, %i.ad
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !317 ; 2 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !107
  %i.ag = icmp ugt i32 %i.af, 268435456
  br i1 %i.ag, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !321 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !322 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.45.0981, %.sroa.102.0982
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %.sroa.45.0981, align 8, !tbaa !323
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.45.0981, i64 4
  store i32 %i.z, ptr %i.al, align 4, !tbaa !325
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.45.0981, i64 8
  store i32 %i.ai, ptr %i.am, align 8, !tbaa !326
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.45.0981, i64 16
  store i64 %i.ak, ptr %i.an, align 8, !tbaa !327
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEERS3_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = ptrtoint ptr %.sroa.102.0982 to i64
  %i.ap = ptrtoint ptr %.sroa.0632.0980 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.i, label %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #25
  unreachable

_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.as = sdiv exact i64 %i.aq, 24                ; 3 uses
  %i.at = icmp eq ptr %.sroa.102.0982, %.sroa.0632.0980 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.at, i64 1, i64 %i.as
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.as
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 384307168202282325)
  %i.ax = select i1 %i.av, i64 384307168202282325, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = mul nuw nsw i64 %i.ax, 24
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #26 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aq ; 4 uses
  store i32 1, ptr %i.ba, align 8, !tbaa !323
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.z, ptr %i.bb, align 4, !tbaa !325
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.ai, ptr %i.bc, align 8, !tbaa !326
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.ak, ptr %i.bd, align 8, !tbaa !327
  br i1 %i.at, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit29.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.sroa.0632.0980, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !328, !alias.scope !329
  %i.be = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, %.sroa.102.0982
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit29.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !333

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit29.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i ]
  %.not.i30.i.i = icmp eq ptr %.sroa.0632.0980, null
  br i1 %.not.i30.i.i, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit29.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0632.0980, i64 noundef %i.aq) #27
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit29.i.i
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEERS3_DpOT_.exit

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEERS3_DpOT_.exit: ; preds = %bb.g, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.0632.20 = phi ptr [ %i.az, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0632.0980, %bb.g ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.45.0981, %bb.g ] ; 7 uses
  %.sroa.102.20 = phi ptr [ %i.bg, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE17_M_realloc_insertIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.102.0982, %bb.g ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.pn1780 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.45.20 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !334 ; 3 uses
  %.not196 = icmp eq i32 %i.bi, 0
  br i1 %.not196, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDERKmjmEEERS3_DpOT_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !335 ; 2 uses
  %.not.i300 = icmp eq ptr %.sroa.45.20, %.sroa.102.20
  br i1 %.not.i300, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = zext i32 %i.bi to i64
  store i32 2, ptr %.sroa.45.20, align 8, !tbaa !323
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 28
  store i32 1, ptr %i.bm, align 4, !tbaa !325
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 32
  store i32 %i.bk, ptr %i.bn, align 8, !tbaa !326
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 40
  store i64 %i.bl, ptr %i.bo, align 8, !tbaa !327
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 48
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bq = ptrtoint ptr %.sroa.102.20 to i64
  %i.br = ptrtoint ptr %.sroa.0632.20 to i64      ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.n, label %_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i302

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #25
  unreachable

_ZNKSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12_M_check_lenEmPKc.exit.i.i302: ; preds = %bb.m
  %i.bu = sdiv exact i64 %i.bs, 24                ; 3 uses
  %i.bv = icmp eq ptr %.sroa.102.20, %.sroa.0632.20 ; 2 uses
  %.sroa.speculated.i.i.i303 = select i1 %i.bv, i64 1, i64 %i.bu
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i303, %i.bu ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bu
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO13LayoutChecker14check_linkeditEv:bb.a
bb.di:                                            ; preds = %bb.dh
  br i1 %.0163.lcssa1290, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.vo = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.41)
  br label %.thread726

bb.dk:                                            ; preds = %bb.di
  br i1 %.0168.lcssa1289, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.vp = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.42)
  br label %.thread726

bb.dm:                                            ; preds = %bb.dk, %bb.dh
  %i.vq = load ptr, ptr %i.g, align 8, !tbaa !8, !nonnull !16, !align !17 ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 116
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !301
  switch i32 %i.vs, label %bb.dr [
    i32 1, label %bb.dn
    i32 5, label %bb.dn
  ]

bb.dn:                                            ; preds = %bb.dm, %bb.dm
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 232
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !81, !noalias !472 ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 240
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !81, !noalias !475 ; 2 uses
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = ptrtoint ptr %i.vu to i64
  %i.vz = sub i64 %i.vx, %i.vy
  %i.wa = ashr exact i64 %i.vz, 3
  %.not746995 = icmp eq ptr %i.vw, %i.vu
  br i1 %.not746995, label %.loopexit, label %.lr.ph1001

.lr.ph1001:                                       ; preds = %bb.dn, %.critedge
  %.0140999 = phi i64 [ %.1141, %.critedge ], [ 0, %bb.dn ] ; 2 uses
  %.0142998 = phi i64 [ %.4, %.critedge ], [ 0, %bb.dn ] ; 3 uses
  %.sroa.4542.0997 = phi ptr [ %i.wy, %.critedge ], [ %i.vu, %bb.dn ] ; 2 uses
  %.sroa.8.0996 = phi i64 [ %i.wz, %.critedge ], [ 0, %bb.dn ]
  %i.wb = load ptr, ptr %.sroa.4542.0997, align 8, !tbaa !89 ; 5 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 116
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !91
  %trunc = trunc i32 %i.wd to i8
  switch i8 %trunc, label %bb.do [
    i8 1, label %.critedge
    i8 18, label %.critedge
  ]

bb.do:                                            ; preds = %.lr.ph1001
  %i.we = load ptr, ptr %i.wb, align 8, !tbaa !24
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 80
  %i.wg = load ptr, ptr %i.wf, align 8
  %i.wh = tail call noundef i64 %i.wg(ptr noundef nonnull align 8 dereferenceable(64) %i.wb) #24
  %i.wi = load ptr, ptr %i.wb, align 8, !tbaa !24
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 72
  %i.wk = load ptr, ptr %i.wj, align 8
  %i.wl = tail call noundef i64 %i.wk(ptr noundef nonnull align 8 dereferenceable(64) %i.wb) #24
  %i.wm = add i64 %i.wl, %i.wh
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.wm, i64 %.0142998) ; 2 uses
  %i.wn = load ptr, ptr %i.g, align 8, !tbaa !8, !nonnull !16, !align !17 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 80
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !250 ; 3 uses
  %i.wq = icmp eq i64 %spec.select, 0
  br i1 %i.wq, label %bb.dp, label %.critedge

bb.dp:                                            ; preds = %bb.do
  %i.wr = tail call noundef ptr @_ZNK4LIEF5MachO6Binary3getENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552) %i.wn, i64 noundef 2) #24 ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 32
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !78
  %i.wu = icmp ne i64 %i.wt, 2
  %.not228747 = icmp eq ptr %i.wr, null
  %.not228 = or i1 %.not228747, %i.wu
  br i1 %.not228, label %.critedge, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 56
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !321
  %i.wx = zext i32 %i.ww to i64
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph1001, %.lr.ph1001, %bb.do, %bb.dq, %bb.dp
  %.4 = phi i64 [ %.0142998, %.lr.ph1001 ], [ 0, %bb.dp ], [ %spec.select, %bb.do ], [ %i.wx, %bb.dq ], [ %.0142998, %.lr.ph1001 ] ; 2 uses
  %.1141 = phi i64 [ %.0140999, %.lr.ph1001 ], [ %i.wp, %bb.dp ], [ %i.wp, %bb.do ], [ %i.wp, %bb.dq ], [ %.0140999, %.lr.ph1001 ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.4542.0997, i64 8
  %i.wz = add nuw nsw i64 %.sroa.8.0996, 1        ; 2 uses
  %.not746 = icmp eq i64 %i.wz, %i.wa
  br i1 %.not746, label %.loopexit, label %.lr.ph1001

bb.dr:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.xa = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.vq, ptr noundef nonnull align 8 dereferenceable(32) %2) #24 ; 3 uses
  %i.xb = load ptr, ptr %2, align 8, !tbaa !94    ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.xd = icmp eq ptr %i.xb, %i.xc
  br i1 %i.xd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dr
  %i.xe = load i64, ptr %i.xc, align 8, !tbaa !95
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %i.xb, i64 noundef %i.xf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.not226 = icmp eq ptr %i.xa, null
  br i1 %.not226, label %.thread736, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xa, i64 104
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !237 ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xa, i64 112
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !59
  %i.xk = add i64 %i.xj, %i.xh                    ; 2 uses
  %i.xl = icmp eq i64 %i.xh, 0
  %i.xm = icmp eq i64 %i.xk, 0
  %or.cond11 = or i1 %i.xl, %i.xm
  br i1 %or.cond11, label %.thread736, label %.loopexit

.thread736:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ds
  %i.xn = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.43)
  br label %.thread726

.loopexit:                                        ; preds = %.critedge, %bb.dn, %bb.ds
  %.6 = phi i64 [ %i.xh, %bb.ds ], [ 0, %bb.dn ], [ %.4, %.critedge ]
  %.3 = phi i64 [ %i.xk, %bb.ds ], [ 0, %bb.dn ], [ %.1141, %.critedge ] ; 2 uses
  %i.xo = icmp eq ptr %.sroa.0632.0.lcssa1286, %.sroa.45.0.lcssa1287
  br i1 %i.xo, label %bb.dt, label %.preheader.preheader.i

bb.dt:                                            ; preds = %.loopexit
  %i.xp = load ptr, ptr %i.g, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 116
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !301
  %i.xs = icmp eq i32 %i.xr, 1
  br i1 %i.xs, label %.thread726, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xt = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.44)
  br label %.thread726

.preheader.preheader.i:                           ; preds = %.loopexit
  %i.xu = ptrtoint ptr %.sroa.45.0.lcssa1287 to i64
  %i.xv = ptrtoint ptr %.sroa.0632.0.lcssa1286 to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = sdiv exact i64 %i.xw, 24
  %i.xy = add nsw i64 %i.xx, -1                   ; 3 uses
  %exitcond7.i1607 = icmp eq i64 %i.xy, 0
  br i1 %exitcond7.i1607, label %.lr.ph1013.preheader, label %.lr.ph.outer.i.preheader

._crit_edge.thread.i:                             ; preds = %.thread.i, %._crit_edge.i
  %i.xz = add nuw i64 %.0193.i1609, 1             ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i1608, -1
  %exitcond7.i = icmp eq i64 %i.xz, %i.xy
  br i1 %exitcond7.i, label %.lr.ph1013.preheader, label %.lr.ph.outer.i.preheader

.lr.ph.outer.i.preheader:                         ; preds = %.preheader.preheader.i, %._crit_edge.thread.i
  %.0193.i1609 = phi i64 [ %i.xz, %._crit_edge.thread.i ], [ 0, %.preheader.preheader.i ]
  %indvars.iv.i1608 = phi i64 [ %indvars.iv.next.i, %._crit_edge.thread.i ], [ %i.xy, %.preheader.preheader.i ] ; 3 uses
  br label %.lr.ph.outer.i

.lr.ph.outer.i:                                   ; preds = %.lr.ph.outer.i.preheader, %.thread.i
  %.02.ph.i = phi i64 [ %i.yb, %.thread.i ], [ 0, %.lr.ph.outer.i.preheader ] ; 2 uses
  %.0171.ph.i = phi i1 [ false, %.thread.i ], [ true, %.lr.ph.outer.i.preheader ]
  %.phi.trans.insert1186 = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0632.0.lcssa1286, i64 %.02.ph.i
  %.phi.trans.insert1187 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1186, i64 8
  %.pre1188 = load i32, ptr %.phi.trans.insert1187, align 8, !tbaa !326
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.dv
  br i1 %.0171.ph.i, label %.lr.ph1013.preheader, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.dv, %.lr.ph.outer.i
  %i.ya = phi i32 [ %i.ye, %bb.dv ], [ %.pre1188, %.lr.ph.outer.i ]
  %.02.i = phi i64 [ %i.yb, %bb.dv ], [ %.02.ph.i, %.lr.ph.outer.i ] ; 2 uses
  %i.yb = add nuw i64 %.02.i, 1                   ; 5 uses
  %i.yc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0632.0.lcssa1286, i64 %i.yb ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !326 ; 2 uses
  %i.yf = icmp ugt i32 %i.ya, %i.ye
  br i1 %i.yf, label %.thread.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.yb, %indvars.iv.i1608
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !478

.thread.i:                                        ; preds = %.lr.ph.i
  %i.yg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0632.0.lcssa1286, i64 %.02.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.yg, i64 24, i1 false), !tbaa.struct !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yg, ptr noundef nonnull align 8 dereferenceable(24) %i.yc, i64 24, i1 false), !tbaa.struct !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yc, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !328
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %exitcond.not11.i = icmp eq i64 %i.yb, %indvars.iv.i1608
  br i1 %exitcond.not11.i, label %._crit_edge.thread.i, label %.lr.ph.outer.i, !llvm.loop !478

.lr.ph1013.preheader:                             ; preds = %._crit_edge.thread.i, %._crit_edge.i, %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  br label %.lr.ph1013

.lr.ph1013:                                       ; preds = %.lr.ph1013.preheader, %bb.ec
  %.01011 = phi i64 [ %i.zh, %bb.ec ], [ %.6, %.lr.ph1013.preheader ]
  %.sroa.0539.01010 = phi ptr [ %i.zl, %bb.ec ], [ %.sroa.0632.0.lcssa1286, %.lr.ph1013.preheader ] ; 8 uses
  %.0.i53610041009 = phi ptr [ %.0.i536, %bb.ec ], [ @.str.45, %.lr.ph1013.preheader ] ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0539.01010, i64 8
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !326 ; 2 uses
  %i.yj = zext i32 %i.yi to i64                   ; 4 uses
  %i.yk = icmp ugt i64 %.01011, %i.yj
  br i1 %i.yk, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph1013
  store ptr %.0.i53610041009, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.yl = load i32, ptr %.sroa.0539.01010, align 8, !tbaa !323
  %switch.tableidx = add i32 %i.yl, -1            ; 2 uses
  %i.ym = icmp ult i32 %switch.tableidx, 17
  br i1 %i.ym, label %switch.lookup, label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit

switch.lookup:                                    ; preds = %bb.dw
  %i.yn = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.yn
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit

_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit: ; preds = %bb.dw, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.232, %bb.dw ]
  store ptr %.0.i, ptr %i.d, align 8, !tbaa !130
  %i.yo = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcS4_EEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread740

bb.dx:                                            ; preds = %.lr.ph1013
  %i.yp = getelementptr inbounds nuw i8, ptr %.sroa.0539.01010, i64 16
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !327 ; 2 uses
  %i.yr = icmp ult i64 %.3, %i.yj
  %i.ys = sub nuw i64 %.3, %i.yj
  %i.yt = icmp ugt i64 %i.yq, %i.ys
  %i.yu = select i1 %i.yr, i1 true, i1 %i.yt
  br i1 %i.yu, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store ptr %.0.i53610041009, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.yv = load i32, ptr %.sroa.0539.01010, align 8, !tbaa !323
  %switch.tableidx1610 = add i32 %i.yv, -1        ; 2 uses
  %i.yw = icmp ult i32 %switch.tableidx1610, 17
  br i1 %i.yw, label %switch.lookup1611, label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533

switch.lookup1611:                                ; preds = %bb.dy
  %i.yx = zext nneg i32 %switch.tableidx1610 to i64
  %switch.gep1612 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.yx
  %switch.load1613 = load ptr, ptr %switch.gep1612, align 8
  br label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533

_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533: ; preds = %bb.dy, %switch.lookup1611
  %.0.i532 = phi ptr [ %switch.load1613, %switch.lookup1611 ], [ @.str.232, %bb.dy ]
  store ptr %.0.i532, ptr %i.e, align 8, !tbaa !130
  %i.yy = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcEEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread740

bb.dz:                                            ; preds = %bb.dx
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0539.01010, i64 4
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !325
  %i.zb = add i32 %i.za, -1
  %i.zc = and i32 %i.zb, %i.yi
  %.not227 = icmp eq i32 %i.zc, 0
  br i1 %.not227, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  store ptr %.0.i53610041009, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.zd = load i32, ptr %.sroa.0539.01010, align 8, !tbaa !323
  %switch.tableidx1614 = add i32 %i.zd, -1        ; 2 uses
  %i.ze = icmp ult i32 %switch.tableidx1614, 17
  br i1 %i.ze, label %switch.lookup1615, label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535

switch.lookup1615:                                ; preds = %bb.ea
  %i.zf = zext nneg i32 %switch.tableidx1614 to i64
  %switch.gep1616 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.zf
  %switch.load1617 = load ptr, ptr %switch.gep1616, align 8
  br label %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535

_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535: ; preds = %bb.ea, %switch.lookup1615
  %.0.i534 = phi ptr [ %switch.load1617, %switch.lookup1615 ], [ @.str.232, %bb.ea ]
  store ptr %.0.i534, ptr %i.f, align 8, !tbaa !130
  %i.zg = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcEEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.thread740

bb.eb:                                            ; preds = %bb.dz
  %i.zh = add i64 %i.yq, %i.yj
  %i.zi = load i32, ptr %.sroa.0539.01010, align 8, !tbaa !323
  %switch.tableidx1618 = add i32 %i.zi, -1        ; 2 uses
  %i.zj = icmp ult i32 %switch.tableidx1618, 17
  br i1 %i.zj, label %switch.lookup1619, label %bb.ec

switch.lookup1619:                                ; preds = %bb.eb
  %i.zk = zext nneg i32 %switch.tableidx1618 to i64
  %switch.gep1620 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4LIEF5MachO13LayoutChecker14check_linkeditEv.99, i64 %i.zk
  %switch.load1621 = load ptr, ptr %switch.gep1620, align 8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %switch.lookup1619
  %.0.i536 = phi ptr [ %switch.load1621, %switch.lookup1619 ], [ @.str.232, %bb.eb ]
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0539.01010, i64 24 ; 2 uses
  %.not748 = icmp eq ptr %i.zl, %.sroa.45.0.lcssa1287
  br i1 %.not748, label %.thread740, label %.lr.ph1013

.thread740:                                       ; preds = %bb.ec, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit
  %.not748762 = phi i1 [ %i.yo, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit ], [ %i.zg, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit535 ], [ %i.yy, %_ZZN4LIEF5MachO13LayoutChecker14check_linkeditEvEN7chunk_t9to_stringEZNS1_14check_linkeditEvENS2_4KINDE.exit533 ], [ true, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread726

.thread726:                                       ; preds = %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit, %bb.v, %bb.t, %bb.r, %bb.x, %bb.dg, %bb.dj, %bb.dl, %bb.dt, %.thread740, %bb.du, %.thread736, %bb.df
  %.sroa.102.18735 = phi ptr [ %.sroa.102.17, %bb.df ], [ %.sroa.102.0.lcssa1288, %bb.dt ], [ %.sroa.102.0.lcssa1288, %bb.dg ], [ %.sroa.102.0.lcssa1288, %bb.dj ], [ %.sroa.102.0.lcssa1288, %bb.dl ], [ %.sroa.102.0.lcssa1288, %.thread736 ], [ %.sroa.102.0.lcssa1288, %bb.du ], [ %.sroa.102.0.lcssa1288, %.thread740 ], [ %.sroa.102.1.ph, %bb.t ], [ %.sroa.102.1.ph, %bb.v ], [ %.sroa.102.1.ph, %bb.r ], [ %.sroa.102.0982, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit ], [ %.sroa.102.1.ph, %bb.x ]
  %.sroa.0632.18734 = phi ptr [ %.sroa.0632.17, %bb.df ], [ %.sroa.0632.0.lcssa1286, %bb.dt ], [ %.sroa.0632.0.lcssa1286, %bb.dg ], [ %.sroa.0632.0.lcssa1286, %bb.dj ], [ %.sroa.0632.0.lcssa1286, %bb.dl ], [ %.sroa.0632.0.lcssa1286, %.thread736 ], [ %.sroa.0632.0.lcssa1286, %bb.du ], [ %.sroa.0632.0.lcssa1286, %.thread740 ], [ %.sroa.0632.1.ph, %bb.t ], [ %.sroa.0632.1.ph, %bb.v ], [ %.sroa.0632.1.ph, %bb.r ], [ %.sroa.0632.0980, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit ], [ %.sroa.0632.1.ph, %bb.x ] ; 3 uses
  %.14 = phi i1 [ %i.vi, %bb.df ], [ true, %bb.dt ], [ %i.vn, %bb.dg ], [ %i.vo, %bb.dj ], [ %i.vp, %bb.dl ], [ %i.xn, %.thread736 ], [ %i.xt, %bb.du ], [ %.not748762, %.thread740 ], [ %i.dn, %bb.t ], [ %i.ds, %bb.v ], [ %i.dk, %bb.r ], [ %i.cx, %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EE12emplace_backIJZNS2_14check_linkeditEvENS3_4KINDEijjEEERS3_DpOT_.exit ], [ %i.dy, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.i.i.i538 = icmp eq ptr %.sroa.0632.18734, null
  br i1 %.not.i.i.i538, label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EED2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %.thread726
  %i.zm = ptrtoint ptr %.sroa.102.18735 to i64
  %i.zn = ptrtoint ptr %.sroa.0632.18734 to i64
  %i.zo = sub i64 %i.zm, %i.zn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0632.18734, i64 noundef %i.zo) #27
  br label %_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EED2Ev.exit

_ZNSt6vectorIZN4LIEF5MachO13LayoutChecker14check_linkeditEvE7chunk_tSaIS3_EED2Ev.exit: ; preds = %.thread726, %bb.ed
  ret i1 %.14
}

declare noundef ptr @_ZNK4LIEF5MachO6Binary3getENS0_11LoadCommand4TYPEE(ptr noundef nonnull align 8 dereferenceable(552), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcS4_EEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer.737", align 8 ; 11 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.1450", align 16 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !479
  %i.c = load ptr, ptr %2, align 8, !tbaa !130, !noalias !479
  store ptr %i.c, ptr %6, align 16, !tbaa !95, !noalias !479
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load ptr, ptr %3, align 8, !tbaa !130, !noalias !479
  store ptr %i.e, ptr %i.d, align 16, !tbaa !95, !noalias !479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !482
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !noalias !482
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.g, align 8, !tbaa !126, !noalias !482
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !128, !noalias !482
  store i64 500, ptr %i.f, align 8, !tbaa !129, !noalias !482
  %i.j = icmp eq i64 %i.b, 2
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %1, align 1
  %i.l = icmp ne i16 %i.k, 32123
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %6, align 16, !tbaa !95, !noalias !482
  %i.o = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.154) #28, !noalias !482
  unreachable

_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit: ; preds = %bb.c
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.o to ptr ; 3 uses
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i) #24, !noalias !482
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.p
  %i.r = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef nonnull %i.q, ptr nonnull %5), !noalias !482 ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !482
  store ptr %1, ptr %4, align 8, !tbaa !130, !noalias !482
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !60, !noalias !482
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !131, !noalias !482
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %i.t, align 8, !tbaa !134, !noalias !482
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 204, ptr %i.u, align 8, !tbaa !136, !noalias !482
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !95, !noalias !482
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !138, !noalias !482
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(56) %4), !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !482
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.w = load i64, ptr %i.h, align 8, !tbaa !142, !noalias !488 ; 6 uses
  %i.x = icmp ult i64 %i.w, 4611686018427387903
  call void @llvm.assume(i1 %i.x)
  %i.y = load ptr, ptr %5, align 8, !tbaa !128, !noalias !488 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !144, !alias.scope !488
  %i.aa = icmp eq ptr %i.y, null
  %i.ab = icmp ne i64 %i.w, 0
  %or.cond.i.i.i = and i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #25
  unreachable

bb.g:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !488
  store i64 %i.w, ptr %i.a, align 8, !tbaa !60, !noalias !488
  %i.ac = icmp samesign ugt i64 %i.w, 15
  br i1 %i.ac, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !94, !alias.scope !488
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !488
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !95, !alias.scope !488
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  switch i64 %i.w, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !95
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !95
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.y, i64 %i.w, i1 false)
  br label %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !488 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !145, !alias.scope !488
  %i.aj = load ptr, ptr %7, align 8, !tbaa !94, !alias.scope !488
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !488
  %i.al = load ptr, ptr %5, align 8, !tbaa !128, !noalias !482 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.i
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.al) #24
  br label %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !482
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !479
  %i.am = load ptr, ptr %0, align 8, !tbaa !94    ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %7, align 8, !tbaa !94    ; 5 uses
  %i.aq = icmp eq ptr %i.ap, %i.z                 ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.aq, label %bb.l, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  br i1 %i.aq, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !145 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  switch i64 %i.ar, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !95
  store i8 %i.at, ptr %i.am, align 1, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !145 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO13LayoutChecker5checkEv:bb.a
  br i1 %.not245, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = add i32 %i.di, %i.bv
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.al, %bb.an, %bb.aj, %bb.af
  %.sink516 = phi i32 [ %i.cr, %bb.af ], [ %i.db, %bb.aj ], [ %i.dj, %bb.an ], [ %i.dg, %bb.al ], [ %i.cw, %bb.ah ]
  %i.dk = zext i32 %.sink516 to i64
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !60
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.am, %bb.t
  %i.dl = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.dm = call noundef ptr @_ZNK4LIEF5MachO6Binary19dyld_chained_fixupsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.dl) #24 ; 3 uses
  %.not246 = icmp eq ptr %i.dm, null
  br i1 %.not246, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !467 ; 3 uses
  %.not247 = icmp eq i32 %i.do, 0
  br i1 %.not247, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !60
  %.not248 = icmp eq i64 %i.dq, %i.dp
  br i1 %.not248, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 60
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !449
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dp, %i.dt
  store i64 %i.du, ptr %i.a, align 8, !tbaa !60
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 %i.do, ptr %i.b, align 4, !tbaa !107
  %i.dv = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.58, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.ew

bb.at:                                            ; preds = %bb.ap, %bb.ar, %bb.ao
  %i.dw = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.dx = call noundef ptr @_ZNK4LIEF5MachO6Binary17dyld_exports_trieEv(ptr noundef nonnull align 8 dereferenceable(552) %i.dw) #24 ; 3 uses
  %.not249 = icmp eq ptr %i.dx, null
  br i1 %.not249, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !444 ; 3 uses
  %.not250 = icmp eq i32 %i.dz, 0
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load i64, ptr %i.a, align 8             ; 2 uses
  %.not251 = icmp eq i64 %i.eb, %i.ea
  %or.cond398 = select i1 %.not250, i1 true, i1 %.not251
  br i1 %or.cond398, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 60
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !437
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add i64 %i.eb, %i.ee
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !60
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 %i.dz, ptr %i.c, align 4, !tbaa !107
  %i.eg = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ew

bb.ax:                                            ; preds = %bb.av, %bb.at
  %i.eh = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.ei = call noundef ptr @_ZNK4LIEF5MachO6Binary17function_variantsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.eh) #24 ; 3 uses
  %.not252 = icmp eq ptr %i.ei, null
  br i1 %.not252, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !560 ; 3 uses
  %.not253 = icmp eq i32 %i.ek, 0
  %i.el = zext i32 %i.ek to i64
  %i.em = load i64, ptr %i.a, align 8             ; 2 uses
  %.not254 = icmp eq i64 %i.em, %i.el
  %or.cond400 = select i1 %.not253, i1 true, i1 %.not254
  br i1 %or.cond400, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 60
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !567
  %i.ep = zext i32 %i.eo to i64
  %i.eq = add i64 %i.em, %i.ep
  store i64 %i.eq, ptr %i.a, align 8, !tbaa !60
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 %i.ek, ptr %i.d, align 4, !tbaa !107
  %i.er = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.60, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.ew

bb.bb:                                            ; preds = %bb.az, %bb.ax
  %i.es = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.et = call noundef ptr @_ZNK4LIEF5MachO6Binary23function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.es) #24 ; 3 uses
  %.not255 = icmp eq ptr %i.et, null
  br i1 %.not255, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !568 ; 3 uses
  %.not256 = icmp eq i32 %i.ev, 0
  %i.ew = zext i32 %i.ev to i64
  %i.ex = load i64, ptr %i.a, align 8             ; 2 uses
  %.not257 = icmp eq i64 %i.ex, %i.ew
  %or.cond402 = select i1 %.not256, i1 true, i1 %.not257
  br i1 %or.cond402, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 60
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !575
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add i64 %i.ex, %i.fa
  store i64 %i.fb, ptr %i.a, align 8, !tbaa !60
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i32 %i.ev, ptr %i.e, align 4, !tbaa !107
  %i.fc = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.61, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %bb.ew

bb.bf:                                            ; preds = %bb.bd, %bb.bb
  %i.fd = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.fe = call noundef ptr @_ZNK4LIEF5MachO6Binary22dynamic_symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.fd) #24 ; 19 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fg = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.62)
  br label %bb.ew

bb.bh:                                            ; preds = %bb.bf
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 124
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !349 ; 2 uses
  %.not258 = icmp eq i32 %i.fi, 0
  br i1 %.not258, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 120
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !357 ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !60
  %.not259 = icmp eq i64 %i.fm, %i.fl
  br i1 %.not259, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 %i.fk, ptr %i.f, align 4, !tbaa !107
  %i.fn = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.63, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %bb.ew

bb.bk:                                            ; preds = %bb.bi
  %i.fo = zext i32 %i.fi to i64
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = add nuw nsw i64 %i.fp, %i.fl
  store i64 %i.fq, ptr %i.a, align 8, !tbaa !60
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %i.fr = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.fs = call noundef ptr @_ZNK4LIEF5MachO6Binary18segment_split_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.fr) #24 ; 3 uses
  %.not260 = icmp eq ptr %i.fs, null
  br i1 %.not260, label %._crit_edge432, label %bb.bm

._crit_edge432:                                   ; preds = %bb.bl
  %.promoted.pre = load i64, ptr %i.a, align 8
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !394 ; 3 uses
  %.not261 = icmp eq i32 %i.fu, 0
  %i.fv = zext i32 %i.fu to i64
  %i.fw = load i64, ptr %i.a, align 8             ; 2 uses
  %.not262 = icmp eq i64 %i.fw, %i.fv
  %or.cond404 = select i1 %.not261, i1 true, i1 %.not262
  br i1 %or.cond404, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 60
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !392
  %i.fz = zext i32 %i.fy to i64
  %i.ga = add i64 %i.fw, %i.fz
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 %i.fu, ptr %i.g, align 4, !tbaa !107
  %i.gb = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.64, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %bb.ew

bb.bp:                                            ; preds = %._crit_edge432, %bb.bn
  %.promoted = phi i64 [ %.promoted.pre, %._crit_edge432 ], [ %i.ga, %bb.bn ] ; 3 uses
  %i.gc = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 136
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !68, !noalias !576 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 144
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !68, !noalias !579 ; 2 uses
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3
  %.not422426 = icmp eq ptr %i.gg, %i.ge
  br i1 %.not422426, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bp, %bb.bs
  %.sroa.4316.0428 = phi ptr [ %i.hc, %bb.bs ], [ %i.ge, %bb.bp ] ; 2 uses
  %.sroa.8.0427 = phi i64 [ %i.hd, %bb.bs ], [ 0, %bb.bp ]
  %i.gl = phi i64 [ %4, %bb.bs ], [ %.promoted, %bb.bp ] ; 3 uses
  %i.gm = phi i64 [ %i.hb, %bb.bs ], [ %.promoted, %bb.bp ] ; 2 uses
  %i.gn = load ptr, ptr %.sroa.4316.0428, align 8, !tbaa !76 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !78
  %i.gq = icmp ne i64 %i.gp, 58
  %i.gr = icmp eq ptr %i.gn, null
  %i.gs = or i1 %i.gr, %i.gq
  br i1 %i.gs, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !582 ; 3 uses
  %.not263 = icmp eq i32 %i.gu, 0
  %i.gv = zext i32 %i.gu to i64
  %.not264 = icmp eq i64 %i.gl, %i.gv
  %or.cond406 = select i1 %.not263, i1 true, i1 %.not264
  br i1 %or.cond406, label %bb.br, label %.thread354

bb.br:                                            ; preds = %bb.bq
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 60
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !595
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add i64 %i.gl, %i.gy                    ; 2 uses
  br label %bb.bs

.thread354:                                       ; preds = %bb.bq
  store i64 %i.gm, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i32 %i.gu, ptr %i.h, align 4, !tbaa !107
  %i.ha = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  br label %bb.ew

bb.bs:                                            ; preds = %bb.br, %.lr.ph
  %i.hb = phi i64 [ %i.gz, %bb.br ], [ %i.gm, %.lr.ph ] ; 2 uses
  %4 = phi i64 [ %i.gz, %bb.br ], [ %i.gl, %.lr.ph ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.4316.0428, i64 8
  %i.hd = add nuw nsw i64 %.sroa.8.0427, 1        ; 2 uses
  %.not422 = icmp eq i64 %i.hd, %i.gk
  br i1 %.not422, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bs, %bb.bp
  %.lcssa424 = phi i64 [ %.promoted, %bb.bp ], [ %i.hb, %bb.bs ]
  store i64 %.lcssa424, ptr %i.a, align 8
  %i.he = call noundef ptr @_ZNK4LIEF5MachO6Binary15function_startsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.gc) #24 ; 3 uses
  %.not265 = icmp eq ptr %i.he, null
  br i1 %.not265, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !413 ; 3 uses
  %.not266 = icmp eq i32 %i.hg, 0
  %i.hh = zext i32 %i.hg to i64
  %i.hi = load i64, ptr %i.a, align 8             ; 2 uses
  %.not267 = icmp eq i64 %i.hi, %i.hh
  %or.cond408 = select i1 %.not266, i1 true, i1 %.not267
  br i1 %or.cond408, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 60
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !406
  %i.hl = zext i32 %i.hk to i64
  %i.hm = add i64 %i.hi, %i.hl
  store i64 %i.hm, ptr %i.a, align 8, !tbaa !60
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i32 %i.hg, ptr %i.i, align 4, !tbaa !107
  %i.hn = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.ew

bb.bw:                                            ; preds = %bb.bu, %._crit_edge
  %i.ho = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.hp = call noundef ptr @_ZNK4LIEF5MachO6Binary12data_in_codeEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ho) #24 ; 3 uses
  %.not268 = icmp eq ptr %i.hp, null
  br i1 %.not268, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !425 ; 3 uses
  %.not269 = icmp eq i32 %i.hr, 0
  %i.hs = zext i32 %i.hr to i64
  %i.ht = load i64, ptr %i.a, align 8             ; 2 uses
  %.not270 = icmp eq i64 %i.ht, %i.hs
  %or.cond410 = select i1 %.not269, i1 true, i1 %.not270
  br i1 %or.cond410, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 60
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !418
  %i.hw = zext i32 %i.hv to i64
  %i.hx = add i64 %i.ht, %i.hw
  store i64 %i.hx, ptr %i.a, align 8, !tbaa !60
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i32 %i.hr, ptr %i.j, align 4, !tbaa !107
  %i.hy = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.67, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  br label %bb.ew

bb.ca:                                            ; preds = %bb.by, %bb.bw
  %i.hz = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.ia = call noundef ptr @_ZNK4LIEF5MachO6Binary9atom_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.hz) #24 ; 3 uses
  %.not271 = icmp eq ptr %i.ia, null
  br i1 %.not271, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !401 ; 3 uses
  %.not272 = icmp eq i32 %i.ic, 0
  %i.id = zext i32 %i.ic to i64
  %i.ie = load i64, ptr %i.a, align 8             ; 2 uses
  %.not273 = icmp eq i64 %i.ie, %i.id
  %or.cond412 = select i1 %.not272, i1 true, i1 %.not273
  br i1 %or.cond412, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 60
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !399
  %i.ih = zext i32 %i.ig to i64
  %i.ii = add i64 %i.ie, %i.ih
  store i64 %i.ii, ptr %i.a, align 8, !tbaa !60
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  store i32 %i.ic, ptr %i.k, align 4, !tbaa !107
  %i.ij = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  br label %bb.ew

bb.ce:                                            ; preds = %bb.cc, %bb.ca
  %i.ik = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.il = call noundef ptr @_ZNK4LIEF5MachO6Binary18code_signature_dirEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ik) #24 ; 3 uses
  %.not274 = icmp eq ptr %i.il, null
  br i1 %.not274, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.in = load i32, ptr %i.im, align 8, !tbaa !596 ; 3 uses
  %.not275 = icmp eq i32 %i.in, 0
  %i.io = zext i32 %i.in to i64
  %i.ip = load i64, ptr %i.a, align 8             ; 2 uses
  %.not276 = icmp eq i64 %i.ip, %i.io
  %or.cond414 = select i1 %.not275, i1 true, i1 %.not276
  br i1 %or.cond414, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 60
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !598
  %i.is = zext i32 %i.ir to i64
  %i.it = add i64 %i.ip, %i.is
  store i64 %i.it, ptr %i.a, align 8, !tbaa !60
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  store i32 %i.in, ptr %i.l, align 4, !tbaa !107
  %i.iu = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  br label %bb.ew

bb.ci:                                            ; preds = %bb.cg, %bb.ce
  %i.iv = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.iw = call noundef ptr @_ZNK4LIEF5MachO6Binary15linker_opt_hintEv(ptr noundef nonnull align 8 dereferenceable(552) %i.iv) #24 ; 3 uses
  %.not277 = icmp eq ptr %i.iw, null
  br i1 %.not277, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 56
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !599 ; 3 uses
  %.not278 = icmp eq i32 %i.iy, 0
  %i.iz = zext i32 %i.iy to i64
  %i.ja = load i64, ptr %i.a, align 8             ; 2 uses
  %.not279 = icmp eq i64 %i.ja, %i.iz
  %or.cond416 = select i1 %.not278, i1 true, i1 %.not279
  br i1 %or.cond416, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 60
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !601
  %i.jd = zext i32 %i.jc to i64
  %i.je = add i64 %i.ja, %i.jd
  store i64 %i.je, ptr %i.a, align 8, !tbaa !60
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  store i32 %i.iy, ptr %i.m, align 4, !tbaa !107
  %i.jf = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  br label %bb.ew

bb.cm:                                            ; preds = %bb.ck, %bb.ci
  %i.jg = load ptr, ptr %i.ad, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.jh = call noundef ptr @_ZNK4LIEF5MachO6Binary14symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(552) %i.jg) #24 ; 5 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jj = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.71)
  br label %bb.ew

bb.co:                                            ; preds = %bb.cm
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 60
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !317 ; 2 uses
  %.not280 = icmp eq i32 %i.jl, 0
  br i1 %.not280, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !321 ; 2 uses
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !60
  %.not281 = icmp eq i64 %i.jp, %i.jo
  br i1 %.not281, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  store i32 %i.jn, ptr %i.n, align 4, !tbaa !107
  %i.jq = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #24
  br label %bb.ew

bb.cr:                                            ; preds = %bb.cp
  %i.jr = zext i32 %i.jl to i64
  %i.js = add nuw nsw i64 %i.bp, 12
  %i.jt = mul nuw nsw i64 %i.js, %i.jr
  %i.ju = add nuw nsw i64 %i.jt, %i.jo
  store i64 %i.ju, ptr %i.a, align 8, !tbaa !60
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #24
  store i64 0, ptr %i.o, align 8, !tbaa !60
  %i.jv = getelementptr inbounds nuw i8, ptr %i.fe, i64 60
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !353 ; 2 uses
  %.not282 = icmp eq i32 %i.jw, 0
  br i1 %.not282, label %bb.cw, label %bb.ct

end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO13LayoutChecker23check_function_variantsEv:bb.a
  %.not89118 = icmp eq ptr %i.ad, %i.ab
  br i1 %.not89118, label %.thread86, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph122, %.loopexit94
  %.sroa.466.0120 = phi ptr [ %i.ab, %.lr.ph122 ], [ %i.ch, %.loopexit94 ] ; 5 uses
  %.sroa.867.0119 = phi i64 [ 0, %.lr.ph122 ], [ %i.ci, %.loopexit94 ]
  %i.aj = load i32, ptr %.sroa.466.0120, align 8, !tbaa !685 ; 2 uses
  %.off = add i32 %i.aj, -1
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !107
  %i.ak = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.103, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread86

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.466.0120, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !693, !noalias !694 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.466.0120, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !693 ; 2 uses
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.h, label %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO16FunctionVariants17RuntimeTableEntryESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.466.0120, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !697
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !107
  %i.as = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.104, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread86

_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO16FunctionVariants17RuntimeTableEntryESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.g
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.am to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = sdiv exact i64 %i.av, 40
  %i.ax = getelementptr i8, ptr %i.am, i64 %i.av
  %i.ay = getelementptr i8, ptr %i.ax, i64 -32
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !95
  %.not43 = icmp eq i8 %i.az, 0
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO16FunctionVariants17RuntimeTableEntryESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.ba = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.105)
  br label %.thread86

bb.j:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorINS_5MachO16FunctionVariants17RuntimeTableEntryESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  br i1 %.not, label %.loopexit94, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.thread
  %.sroa.452.0117 = phi ptr [ %i.ce, %.thread ], [ %i.am, %bb.j ] ; 3 uses
  %.sroa.8.0116 = phi i64 [ %i.cf, %.thread ], [ 0, %bb.j ]
  %i.bb = load i8, ptr %.sroa.452.0117, align 8, !tbaa !698, !range !109, !noundef !16
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.452.0117, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !705
  %i.bf = zext i32 %i.be to i64
  %i.bg = add i64 %i.o, %i.bf                     ; 2 uses
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !60
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.bi = call noundef ptr @_ZNK4LIEF5MachO6Binary28segment_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.bh, i64 noundef %i.bg) #24
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %.thread76, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !705 ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 4 uses
  %i.bm = load i64, ptr %i.ai, align 8, !tbaa !706
  %.not.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.l, %bb.m
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.m ], [ %i.r, %bb.l ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !707 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !60
  %i.bp = icmp eq i64 %i.bo, %i.bl
  br i1 %i.bp, label %.thread76, label %.preheader, !llvm.loop !708

bb.n:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.q, align 8, !tbaa !672 ; 2 uses
  %i.br = urem i64 %i.bl, %i.bq                   ; 2 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !670
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !709 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !707 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !60
  %i.by = icmp eq i64 %i.bx, %i.bl
  br i1 %i.by, label %.thread76, label %.lr.ph.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.bz = icmp eq i64 %i.cc, %i.bl
  br i1 %i.bz, label %.thread76, label %.lr.ph.i.i.i.i, !llvm.loop !710

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %.020.i.i.i.i = phi ptr [ %i.ca, %bb.p ], [ %i.bv, %bb.o ]
  %i.ca = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !707 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !60 ; 2 uses
  %i.cd = urem i64 %i.cc, %i.bq
  %.not19.i.i.i.i = icmp eq i64 %i.cd, %i.br
  br i1 %.not19.i.i.i.i, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !710

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.q
  br label %.loopexit, !llvm.loop !710

.thread76:                                        ; preds = %bb.p, %bb.m, %bb.k, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.thread76
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.452.0117, i64 40
  %i.cf = add nuw nsw i64 %.sroa.8.0116, 1        ; 2 uses
  %.not90 = icmp eq i64 %i.cf, %i.aw
  br i1 %.not90, label %.loopexit94, label %.lr.ph

.loopexit:                                        ; preds = %bb.n, %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 %i.bk, ptr %i.d, align 4, !tbaa !107
  %i.cg = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.106, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread86

.loopexit94:                                      ; preds = %.thread, %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.466.0120, i64 32
  %i.ci = add nuw nsw i64 %.sroa.867.0119, 1      ; 2 uses
  %.not89 = icmp eq i64 %i.ci, %i.ah
  br i1 %.not89, label %.thread86, label %bb.e

.thread86:                                        ; preds = %.loopexit94, %bb.d, %.loopexit, %bb.i, %bb.h, %bb.f
  %.not89106 = phi i1 [ %i.cg, %.loopexit ], [ %i.ak, %bb.f ], [ %i.as, %bb.h ], [ %i.ba, %bb.i ], [ true, %bb.d ], [ true, %.loopexit94 ]
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !711 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.thread86, %.lr.ph.i.i.i.i46
  %.06.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i46 ], [ %i.cj, %.thread86 ] ; 2 uses
  %i.ck = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !707 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #27
  %.not.i.i.i.i47 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i47, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i46, !llvm.loop !712

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i46, %.thread86
  %i.cl = load ptr, ptr %2, align 8, !tbaa !670
  %i.cm = load i64, ptr %i.q, align 8, !tbaa !672
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %2, align 8, !tbaa !670   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.p
  br i1 %i.cp, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !672
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %.10 = phi i1 [ %.not89106, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker29check_function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.l = tail call noundef ptr @_ZNK4LIEF5MachO6Binary23function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.k) #24 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.o = load i32, ptr %i.n, align 4, !tbaa !575  ; 2 uses
  %i.p = and i32 %i.o, 7
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.o, ptr %i.a, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 8, ptr %i.b, align 8, !tbaa !60
  %i.q = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.107, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !8, !nonnull !16, !align !17 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31, !noalias !713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  store i64 %i.z, ptr %i.c, align 8, !tbaa !60
  %i.aa = tail call noundef ptr @_ZNK4LIEF5MachO6Binary17function_variantsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.r) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !716
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !717
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !718, !noalias !719 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !718, !noalias !722 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 5
  %.not4665 = icmp eq ptr %i.ao, %i.am
  br i1 %.not4665, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %.sroa.432.067 = phi ptr [ %i.bu, %bb.k ], [ %i.am, %bb.f ] ; 4 uses
  %.sroa.8.066 = phi i64 [ %i.bv, %bb.k ], [ 0, %bb.f ]
  %i.at = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.f ]  ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.432.067, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !725 ; 2 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.not29 = icmp ugt i64 %i.z, %i.aw
  br i1 %.not29, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 %i.av, ptr %i.f, align 4, !tbaa !107
  %i.ax = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.108, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.thread

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38 ; 2 uses
  %i.bb = load i32, ptr %.sroa.432.067, align 8, !tbaa !727 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !8, !nonnull !16, !align !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -17958194
  %i.bh = icmp eq i32 %i.bf, -822415874
  %spec.select.i.i = or i1 %i.bg, %i.bh
  %i.bi = select i1 %spec.select.i.i, i64 4, i64 8
  %i.bj = add nuw nsw i64 %i.bi, %i.bc
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  store i64 %i.at, ptr %i.e, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.bl, ptr %i.h, align 8, !tbaa !60
  %i.bo = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.109, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.thread

bb.i:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.432.067, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !728 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %.not30 = icmp ugt i64 %i.ak, %i.br
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i32 %i.bq, ptr %i.i, align 4, !tbaa !107
  %i.bs = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.110, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.bt = add i64 %i.at, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.432.067, i64 32
  %i.bv = add nuw nsw i64 %.sroa.8.066, 1         ; 2 uses
  %.not46 = icmp eq i64 %i.bv, %i.as
  br i1 %.not46, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.k, %bb.f, %bb.j, %bb.h, %bb.g
  %.not4650 = phi i1 [ %i.ax, %bb.g ], [ %i.bs, %bb.j ], [ %i.bo, %bb.h ], [ true, %bb.f ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.thread, %bb.c
  %.5 = phi i1 [ %.not4650, %.thread ], [ %i.q, %bb.c ], [ true, %bb.a ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker27check_lazy_load_dylib_infosEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.LIEF::SpanStream", align 8  ; 12 uses
  %2 = alloca %"class.LIEF::result.316", align 4  ; 13 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8, !nonnull !16, !align !17 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(552) %i.j) #24
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !8, !nonnull !16, !align !17 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31, !noalias !729 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31, !noalias !732 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.not113159 = icmp eq ptr %i.s, %i.q
  br i1 %.not113159, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  %.lcssa158 = phi i64 [ 16384, %bb.a ], [ %i.bu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  store i64 %.lcssa158, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68, !noalias !735 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68, !noalias !738 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not114175 = icmp eq ptr %i.aa, %i.y
  br i1 %.not114175, label %.loopexit, label %.lr.ph180

.lr.ph180:                                        ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.479.0161 = phi ptr [ %i.bv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.q, %bb.a ] ; 2 uses
  %.sroa.880.0160 = phi i64 [ %i.bw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ]
  %i.ap = phi i64 [ %i.bu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 16384, %bb.a ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.479.0161, align 8, !tbaa !38 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !145
  %cond = icmp eq i64 %i.as, 10
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94 ; 4 uses
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = xor i64 %i.av, 4919420967581409119
  %i.ax = getelementptr i8, ptr %i.au, i64 8
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i64
  %i.ba = xor i64 %i.az, 21577
  %i.bb = or i64 %i.aw, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bf = load i64, ptr %i.au, align 1
  %i.bg = xor i64 %i.bf, 4997382908861767519
  %i.bh = getelementptr i8, ptr %i.au, i64 8
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = zext i16 %i.bi to i64
  %i.bk = xor i64 %i.bj, 20306
  %i.bl = or i64 %i.bg, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !40
  %spec.select112 = tail call i64 @llvm.usub.sat.i64(i64 %i.bq, i64 %i.n)
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !58
  %i.bt = add i64 %spec.select112, %i.bs
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.bt)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87
  %i.bu = phi i64 [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86 ], [ %.sroa.speculated, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.479.0161, i64 8
  %i.bw = add nuw nsw i64 %.sroa.880.0160, 1      ; 2 uses
  %.not113 = icmp eq i64 %i.bw, %i.w
  br i1 %.not113, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph180, %.thread101
  %.sroa.468.0177 = phi ptr [ %i.y, %.lr.ph180 ], [ %i.fi, %.thread101 ] ; 2 uses
  %.sroa.8.0176 = phi i64 [ 0, %.lr.ph180 ], [ %i.fj, %.thread101 ]
  %i.bx = load ptr, ptr %.sroa.468.0177, align 8, !tbaa !76 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !78
  %i.ca = icmp ne i64 %i.bz, 58
  %i.cb = icmp eq ptr %i.bx, null
  %i.cc = or i1 %i.cb, %i.ca
  br i1 %i.cc, label %.thread101, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !741 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !322 ; 12 uses
  %i.ch = icmp ult i64 %i.cg, 24
  br i1 %i.ch, label %.thread98, label %_ZNK4LIEF10SpanStream7read_atEmmm.exit

.thread98:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !60
  %i.ci = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.112, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4LIEF5MachO13LayoutChecker27check_lazy_load_dylib_infosEvE11HEADER_SIZE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.loopexit

_ZNK4LIEF10SpanStream7read_atEmmm.exit:           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i64 0, ptr %i.af, align 8, !tbaa !97
  store i8 0, ptr %i.ag, align 8, !tbaa !101
  store i32 3, ptr %i.ah, align 4, !tbaa !102
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %1, align 8, !tbaa !24
  store ptr %i.ce, ptr %i.ai, align 8, !tbaa !103
  store i64 %i.cg, ptr %i.aj, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %.not297 = icmp eq ptr %i.ce, null
  br i1 %.not297, label %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread, label %bb.d

_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread:    ; preds = %_ZNK4LIEF10SpanStream7read_atEmmm.exit
  store i32 1, ptr %2, align 4, !tbaa !745, !alias.scope !742
  store i64 0, ptr %i.af, align 8, !tbaa !97, !noalias !742
  store i8 0, ptr %i.ak, align 4, !tbaa !748, !alias.scope !742
  %i.cj = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.113)
  br label %.thread106

bb.d:                                             ; preds = %_ZNK4LIEF10SpanStream7read_atEmmm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) %i.ce, i64 24, i1 false)
  store i64 0, ptr %i.af, align 8, !tbaa !97, !noalias !742
  store i8 1, ptr %i.ak, align 4, !tbaa !748, !alias.scope !742
  %i.ck = load i32, ptr %2, align 4, !tbaa !750
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = icmp ult i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !60
  %i.cn = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.114, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread106

bb.f:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cl ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %gepdiff = sub nuw nsw i64 %i.cg, %i.cl         ; 2 uses
  %i.cr = ashr i64 %gepdiff, 2                    ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ct = and i64 %gepdiff, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.co, i64 %i.ct
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i ], [ %i.dg, %bb.k ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %i.df, %bb.k ] ; 9 uses
  %i.cu = load i8, ptr %.02946.i.i.i, align 1, !tbaa !95
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !95
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !95
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit414, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !95
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit416, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.dg = add nsw i64 %.047.i.i.i, -1
  %i.dh = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.dh, label %bb.g, label %._crit_edge.i.i.i, !llvm.loop !277

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.f
  %.029.lcssa.i.i.i = phi ptr [ %i.co, %bb.f ], [ %scevgep.i.i.i, %bb.k ] ; 6 uses
  %.pre-phi.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i to i64
  %i.di = sub i64 %i.cq, %.pre-phi.i.i.i
  switch i64 %i.di, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.dj = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !95
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.m
  %.1.i.i.i = phi ptr [ %i.dl, %bb.m ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dm = load i8, ptr %.1.i.i.i, align 1, !tbaa !95
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.n
  %.2.i.i.i = phi ptr [ %i.do, %bb.n ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.dp = load i8, ptr %.2.i.i.i, align 1, !tbaa !95
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit414: ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit416: ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit:                ; preds = %bb.g, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit414, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit416, %bb.l, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.l ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.dt, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit416 ], [ %i.dr, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ds, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit414 ], [ %.02946.i.i.i, %bb.g ]
  %i.du = icmp eq ptr %.028.i.i.i, %i.cp
  br i1 %i.du, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, label %bb.o

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dv = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.115)
  br label %.thread106

bb.o:                                             ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dw = load i32, ptr %i.al, align 4, !tbaa !752
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !60  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ea = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.116, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.q:                                             ; preds = %bb.o
  %i.eb = load i32, ptr %i.am, align 4, !tbaa !753
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp ult i64 %i.dy, %i.ec
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ee = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.117, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.s:                                             ; preds = %bb.q
  %i.ef = load i32, ptr %i.an, align 4, !tbaa !754
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = load i32, ptr %i.ao, align 4, !tbaa !755 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = icmp ult i64 %i.cg, %i.eg
  %i.el = sub nuw i64 %i.cg, %i.eg
  %i.em = icmp ugt i64 %i.ej, %i.el
  %i.en = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %i.en, label %bb.t, label %bb.u
end_hunk_3
