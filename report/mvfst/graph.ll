Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/graph?download=true
inline.NumInlined: 1288
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Node19PathDecanonicalizedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm
define hidden void @_ZN4Node19PathDecanonicalizedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !787
  %i.c = load ptr, ptr %1, align 8, !tbaa !759    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !777  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !709
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !759
  %i.h = load i64, ptr %i.a, align 8, !tbaa !709
  store i64 %i.h, ptr %i.b, align 8, !tbaa !788
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !788
  store i8 %i.j, ptr %i.i, align 1, !tbaa !788
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !709  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !777
  %i.m = load ptr, ptr %0, align 8, !tbaa !759
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZNK4Node4DumpEPKc(ptr noundef nonnull align 8 dereferenceable(116) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !759
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !692
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !708
  %i.f = icmp eq i32 %i.e, 2
  %i.g = select i1 %i.f, ptr @.str.31, ptr @.str.32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i8, ptr %i.h, align 4, !tbaa !760, !range !756, !noundef !218
  %i.j = trunc nuw i8 %i.i to i1
  %.str.33..str.34 = select i1 %i.j, ptr @.str.33, ptr @.str.34
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %0, i64 noundef %i.c, ptr noundef nonnull %i.g, ptr noundef nonnull %.str.33..str.34) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !745  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4Edge4DumpEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.m, ptr noundef nonnull @.str.35)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !870  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !870
  %.not1719 = icmp eq ptr %i.o, %i.q
  br i1 %.not1719, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.013.020 = phi ptr [ %i.x, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.013.020, align 8, !tbaa !871 ; 2 uses
  %.not5 = icmp eq ptr %i.r, null
  br i1 %.not5, label %.critedge, label %bb.e

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !870
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !870
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %.critedge2, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZNK4Edge4DumpEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.r, ptr noundef nonnull @.str.38)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.020, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !870
  %.not17 = icmp eq ptr %i.x, %i.y
  br i1 %.not17, label %.critedge, label %.lr.ph, !llvm.loop !872

bb.f:                                             ; preds = %.critedge
  %puts6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !870  ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !870
  %.not1822 = icmp eq ptr %i.z, %i.aa
  br i1 %.not1822, label %.critedge2, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.f, %bb.g
  %.sroa.08.023 = phi ptr [ %i.ac, %bb.g ], [ %i.z, %bb.f ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.08.023, align 8, !tbaa !871 ; 2 uses
  %.not7 = icmp eq ptr %i.ab, null
  br i1 %.not7, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph24
  tail call void @_ZNK4Edge4DumpEPKc(ptr noundef nonnull align 8 dereferenceable(168) %i.ab, ptr noundef nonnull @.str.38)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.023, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !870
  %.not18 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not18, label %.critedge2, label %.lr.ph24, !llvm.loop !873

.critedge2:                                       ; preds = %bb.g, %.lr.ph24, %bb.f, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN17ImplicitDepLoader15LoadDepsFromLogEP4EdgePNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !729
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !710  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !874  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN7DepsLog7GetDepsEP4Node(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef %i.d) #20 ; 4 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = load i8, ptr @g_explaining, align 1, !tbaa !779, !range !756, !noundef !218
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.thread
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !757
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !759
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.50, ptr noundef %i.k) #23 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !692  ; 2 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !875  ; 2 uses
  %i.p = icmp sgt i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr @g_explaining, align 1, !tbaa !779, !range !756, !noundef !218
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !757
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !759
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.51, ptr noundef %i.t, i64 noundef %i.o, i64 noundef %i.n) #23 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !877  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !719
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 148 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !778
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = sext i32 %i.w to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !710
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !719 ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  call void @_ZNSt6vectorIP4NodeSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.ak, i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !786
  %i.an = add nsw i32 %i.am, %i.w
  store i32 %i.an, ptr %i.al, align 8, !tbaa !786
  %i.ao = load i32, ptr %i.v, align 8, !tbaa !877 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !719
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !778
  %i.as = sext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = sub nsw i64 0, %i.af
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4Node10AddOutEdgeEP4Edge.exit
  %i.ay = phi i32 [ %i.ao, %.lr.ph ], [ %i.by, %_ZN4Node10AddOutEdgeEP4Edge.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4Node10AddOutEdgeEP4Edge.exit ] ; 2 uses
  %.sroa.0.026 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bz, %_ZN4Node10AddOutEdgeEP4Edge.exit ] ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !878
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !710 ; 4 uses
  store ptr %i.bb, ptr %.sroa.0.026, align 8, !tbaa !710
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !879 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !880
  %.not.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %1, ptr %i.be, align 8, !tbaa !871
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !879
  br label %_ZN4Node10AddOutEdgeEP4Edge.exit

bb.j:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !881 ; 4 uses
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.k, label %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #24
  unreachable

_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #21 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store ptr %1, ptr %i.bu, align 8, !tbaa !871
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.l, label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.bi, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIP4EdgeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #22
  br label %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIP4EdgeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.bt, ptr %i.bc, align 8, !tbaa !881
  store ptr %i.bw, ptr %i.bd, align 8, !tbaa !879
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.bx, ptr %i.bf, align 8, !tbaa !880
  %.pre = load i32, ptr %i.v, align 8, !tbaa !877
  br label %_ZN4Node10AddOutEdgeEP4Edge.exit

_ZN4Node10AddOutEdgeEP4Edge.exit:                 ; preds = %bb.i, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.by = phi i32 [ %i.ay, %bb.i ], [ %.pre, %_ZNSt6vectorIP4EdgeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 8
  %i.ca = sext i32 %i.by to i64
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %bb.h, label %.loopexit, !llvm.loop !882

.loopexit:                                        ; preds = %_ZN4Node10AddOutEdgeEP4Edge.exit, %bb.g, %bb.e, %bb.f, %.thread, %bb.c
  %.0 = phi i1 [ false, %.thread ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.g ], [ true, %_ZN4Node10AddOutEdgeEP4Edge.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN17ImplicitDepLoader11LoadDepFileEP4EdgeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %struct.ScopedMetric, align 8       ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %struct.DepfileParser, align 8     ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %i.c = load atomic i8, ptr @_ZGVZN17ImplicitDepLoader11LoadDepFileEP4EdgeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_E16metrics_h_metric acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !883

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17ImplicitDepLoader11LoadDepFileEP4EdgeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_E16metrics_h_metric) #20
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @g_metrics, align 8, !tbaa !884 ; 2 uses
  %.not40.not = icmp eq ptr %i.f, null
  br i1 %.not40.not, label %.critedge43, label %.critedge

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.g = call noundef ptr @_ZN7Metrics9NewMetricERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  %i.h = load ptr, ptr %4, align 8, !tbaa !759    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.h) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.critedge43

.critedge43:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.c ]
  store ptr %i.k, ptr @_ZZN17ImplicitDepLoader11LoadDepFileEP4EdgeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_E16metrics_h_metric, align 8, !tbaa !886
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN17ImplicitDepLoader11LoadDepFileEP4EdgeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_E16metrics_h_metric) #20
  br label %bb.d

bb.d:                                             ; preds = %.critedge43, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.l = load ptr, ptr @_ZZN17ImplicitDepLoader11LoadDepFileEP4EdgeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_E16metrics_h_metric, align 8, !tbaa !886
  call void @_ZN12ScopedMetricC1EP6Metric(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.l) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !787
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !777
  store i8 0, ptr %i.m, align 8, !tbaa !788
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !888  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %7, ptr noundef %3) #20, !call_target !889
  switch i32 %i.t, label %bb.s [
    i32 2, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !777
  %i.v = load ptr, ptr %3, align 8, !tbaa !759
  store i8 0, ptr %i.v, align 1, !tbaa !788
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.w = load ptr, ptr %2, align 8, !tbaa !759, !noalias !900
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !777, !noalias !900 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.z, ptr %10, align 8, !tbaa !787, !alias.scope !903
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !777, !alias.scope !903
  store i8 0, ptr %i.z, align 8, !tbaa !788, !alias.scope !903
  %i.ab = add i64 %i.y, 9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ab) #20
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !777, !alias.scope !903
  %i.ad = add i64 %i.ac, -4611686018427387895
  %i.ae = icmp ult i64 %i.ad, 9
  br i1 %i.ae, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.f
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.42, i64 noundef 9) #20 ; 0 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !777, !alias.scope !903
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.y
  br i1 %i.ai, label %bb.h, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.aj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.w, i64 noundef %i.y) #20 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.ak = load i64, ptr %i.aa, align 8, !tbaa !777, !noalias !906
  %i.al = add i64 %i.ak, -4611686018427387901
  %i.am = icmp ult i64 %i.al, 3
  br i1 %i.am, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24, !noalias !906
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.an = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.43, i64 noundef 3) #20, !noalias !906 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.ao, ptr %9, align 8, !tbaa !787, !alias.scope !906
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !759 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !777 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ap, ptr %9, align 8, !tbaa !759, !alias.scope !906
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !788
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !788, !alias.scope !906
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !777
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ax = phi i64 [ %i.at, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !777, !alias.scope !906
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !759
  store i64 0, ptr %i.ay, align 8, !tbaa !777
  store i8 0, ptr %i.aq, align 8, !tbaa !788
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !777, !noalias !909 ; 2 uses
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !777, !noalias !909
  %i.bd = sub i64 4611686018427387903, %i.bc
  %i.be = icmp ult i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24, !noalias !909
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.bf = load ptr, ptr %3, align 8, !tbaa !759, !noalias !909
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.bf, i64 noundef %i.bb) #20, !noalias !909 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 11 uses
  store ptr %i.bh, ptr %8, align 8, !tbaa !787, !alias.scope !909
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !759 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIP4NodeSaIS1_EE13_M_insert_auxIN9__gnu_cxx17__normal_iteratorIPS1_St6vectorIS1_S2_EEEEEvSt15_Deque_iteratorIS1_RS1_S7_ET_SE_m:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1756
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1756
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !1756
  store ptr %storemerge.i.i.i60, ptr %5, align 8, !tbaa !725, !noalias !1759
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.4188.0, ptr %i.oy, align 8, !tbaa !721, !noalias !1759
  %i.oz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.6189.0, ptr %i.oz, align 8, !tbaa !722, !noalias !1759
  %i.pa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.8.0, ptr %i.pa, align 8, !tbaa !720, !noalias !1759
  store ptr %i.nn, ptr %6, align 8, !tbaa !725, !noalias !1759
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.no, ptr %i.pb, align 8, !tbaa !721, !noalias !1759
  %i.pc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.np, ptr %i.pc, align 8, !tbaa !722, !noalias !1759
  %i.pd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.nq, ptr %i.pd, align 8, !tbaa !720, !noalias !1759
  store ptr %i.ox, ptr %7, align 8, !tbaa !725, !noalias !1759
  %i.pe = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ow, ptr %i.pe, align 8, !tbaa !721, !noalias !1759
  %i.pf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.8.2.i.i.i.i.i.i86, ptr %i.pf, align 8, !tbaa !722, !noalias !1759
  %i.pg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %.sroa.12.2.i.i.i.i.i.i87, ptr %i.pg, align 8, !tbaa !720, !noalias !1759
  call void @_ZSt15__copy_move_ditILb1EP4NodeRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %8, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7), !noalias !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !1745
  store ptr %storemerge.i.i.i56, ptr %i.ac, align 8, !tbaa !719
  store ptr %.sroa.5196.0, ptr %i.am, align 8, !tbaa !719
  store ptr %.sroa.7.0, ptr %i.ix, align 8, !tbaa !719
  store ptr %.sroa.9201.0, ptr %i.ad, align 8, !tbaa !1573
  %i.ph = icmp sgt i64 %i.jw, 0
  br i1 %i.ph, label %.lr.ph.i.i.i105.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS3_SaIS3_EEEESt15_Deque_iteratorIS3_RS3_S4_EET0_T_SD_SC_.exit

.lr.ph.i.i.i105.preheader:                        ; preds = %_ZSt25__uninitialized_copy_moveIN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS3_SaIS3_EEEESt15_Deque_iteratorIS3_RS3_S4_ESB_S6_ET1_T_SD_T0_SE_SC_RT2_.exit
  %i.pi = load ptr, ptr %i.b, align 8, !tbaa !720
  %i.pj = load ptr, ptr %.sroa.6189.0..sroa_idx, align 8, !tbaa !722
  %i.pk = load ptr, ptr %i.n, align 8, !tbaa !721
  %i.pl = load ptr, ptr %1, align 8, !tbaa !725
  br label %.lr.ph.i.i.i105

.lr.ph.i.i.i105:                                  ; preds = %.lr.ph.i.i.i105.preheader, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114
  %.sroa.04.0.i.i106 = phi ptr [ %storemerge.i.i.i.i118, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114 ], [ %i.pl, %.lr.ph.i.i.i105.preheader ] ; 4 uses
  %.sroa.45.0.i.i107 = phi ptr [ %.sroa.45.1.i.i115, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114 ], [ %i.pk, %.lr.ph.i.i.i105.preheader ] ; 2 uses
  %.sroa.8.0.i.i108 = phi ptr [ %.sroa.8.1.i.i116, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114 ], [ %i.pj, %.lr.ph.i.i.i105.preheader ] ; 2 uses
  %.sroa.12.0.i.i109 = phi ptr [ %.sroa.12.1.i.i117, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114 ], [ %i.pi, %.lr.ph.i.i.i105.preheader ] ; 2 uses
  %.013.i.i.i110 = phi ptr [ %i.pq, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114 ], [ %2, %.lr.ph.i.i.i105.preheader ] ; 3 uses
  %storemerge12.i.i.i111 = phi i64 [ %i.qk, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114 ], [ %i.jw, %.lr.ph.i.i.i105.preheader ] ; 2 uses
  %i.pm = ptrtoint ptr %.sroa.8.0.i.i108 to i64
  %i.pn = ptrtoint ptr %.sroa.04.0.i.i106 to i64  ; 2 uses
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = ashr exact i64 %i.po, 3
  %.sroa.speculated.i.i.i112 = call i64 @llvm.smin.i64(i64 %i.pp, i64 %storemerge12.i.i.i111) ; 7 uses
  %i.pq = getelementptr inbounds [8 x i8], ptr %.013.i.i.i110, i64 %.sroa.speculated.i.i.i112
  %i.pr = icmp sgt i64 %.sroa.speculated.i.i.i112, 1
  br i1 %i.pr, label %bb.cg, label %bb.ch, !prof !1558

bb.cg:                                            ; preds = %.lr.ph.i.i.i105
  %.idx.i.i.i119 = shl nuw nsw i64 %.sroa.speculated.i.i.i112, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.04.0.i.i106, ptr align 8 %.013.i.i.i110, i64 %.idx.i.i.i119, i1 false), !noalias !1762
  br label %_ZSt14__copy_move_a1ILb0EPP4NodeS2_ET1_T0_S4_S3_.exit.i.i.i113

bb.ch:                                            ; preds = %.lr.ph.i.i.i105
  %i.ps = icmp eq i64 %.sroa.speculated.i.i.i112, 1
  br i1 %i.ps, label %bb.ci, label %_ZSt14__copy_move_a1ILb0EPP4NodeS2_ET1_T0_S4_S3_.exit.i.i.i113

bb.ci:                                            ; preds = %bb.ch
  %i.pt = load ptr, ptr %.013.i.i.i110, align 8, !tbaa !710, !noalias !1762
  store ptr %i.pt, ptr %.sroa.04.0.i.i106, align 8, !tbaa !710, !noalias !1762
  br label %_ZSt14__copy_move_a1ILb0EPP4NodeS2_ET1_T0_S4_S3_.exit.i.i.i113

_ZSt14__copy_move_a1ILb0EPP4NodeS2_ET1_T0_S4_S3_.exit.i.i.i113: ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.pu = ptrtoint ptr %.sroa.45.0.i.i107 to i64
  %i.pv = sub i64 %i.pn, %i.pu
  %i.pw = ashr exact i64 %i.pv, 3
  %i.px = add nsw i64 %.sroa.speculated.i.i.i112, %i.pw ; 5 uses
  %i.py = icmp sgt i64 %i.px, -1
  br i1 %i.py, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %_ZSt14__copy_move_a1ILb0EPP4NodeS2_ET1_T0_S4_S3_.exit.i.i.i113
  %i.pz = icmp samesign ult i64 %i.px, 64
  br i1 %i.pz, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qa = getelementptr inbounds [8 x i8], ptr %.sroa.04.0.i.i106, i64 %.sroa.speculated.i.i.i112
  br label %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114

bb.cl:                                            ; preds = %bb.cj
  %i.qb = lshr i64 %i.px, 6
  br label %bb.cn

bb.cm:                                            ; preds = %_ZSt14__copy_move_a1ILb0EPP4NodeS2_ET1_T0_S4_S3_.exit.i.i.i113
  %i.qc = ashr i64 %i.px, 6
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.qd = phi i64 [ %i.qb, %bb.cl ], [ %i.qc, %bb.cm ] ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %.sroa.12.0.i.i109, i64 %i.qd ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !719, !noalias !1762 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 512
  %i.qh = shl nsw i64 %i.qd, 6
  %i.qi = sub nsw i64 %i.px, %i.qh
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.qi
  br label %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114

_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114: ; preds = %bb.cn, %bb.ck
  %.sroa.45.1.i.i115 = phi ptr [ %.sroa.45.0.i.i107, %bb.ck ], [ %i.qf, %bb.cn ]
  %.sroa.8.1.i.i116 = phi ptr [ %.sroa.8.0.i.i108, %bb.ck ], [ %i.qg, %bb.cn ]
  %.sroa.12.1.i.i117 = phi ptr [ %.sroa.12.0.i.i109, %bb.ck ], [ %i.qe, %bb.cn ]
  %storemerge.i.i.i.i118 = phi ptr [ %i.qa, %bb.ck ], [ %i.qj, %bb.cn ]
  %i.qk = sub nsw i64 %storemerge12.i.i.i111, %.sroa.speculated.i.i.i112 ; 2 uses
  %i.ql = icmp sgt i64 %i.qk, 0
  br i1 %i.ql, label %.lr.ph.i.i.i105, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS3_SaIS3_EEEESt15_Deque_iteratorIS3_RS3_S4_EET0_T_SD_SC_.exit, !llvm.loop !1572

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS3_SaIS3_EEEESt15_Deque_iteratorIS3_RS3_S4_EET0_T_SD_SC_.exit: ; preds = %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i114, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i75, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i.i.i49, %_ZStmiRKSt15_Deque_iteratorIP4NodeRS1_PS1_El.exit63, %_ZSt25__uninitialized_copy_moveIN9__gnu_cxx17__normal_iteratorIPP4NodeSt6vectorIS3_SaIS3_EEEESt15_Deque_iteratorIS3_RS3_S4_ESB_S6_ET1_T_SD_T0_SE_SC_RT2_.exit, %_ZStmiRKSt15_Deque_iteratorIP4NodeRS1_PS1_El.exit, %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIP4NodeRS2_PS2_EN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS2_SaIS2_EEEES5_S9_ET1_T_SD_T0_SE_SC_RT2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIP4NodeSaIS1_EE24_M_new_elements_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !720
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.neg = zext i1 %i.k to i64
  %.neg14 = sub nsw i64 %.neg.i.i.neg, %i.j
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !725
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !721
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !722
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !725
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %.neg = shl i64 %.neg14, 6
  %i.z = add i64 %.neg, 1152921504606846975
  %i.aa = add nsw i64 %i.r, %i.y
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, %1
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = add i64 %1, 63
  %i.ae = lshr i64 %i.ad, 6                       ; 4 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !718
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.h, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ugt i64 %i.ae, %i.ai
  br i1 %i.aj, label %_ZNSt5dequeIP4NodeSaIS1_EE23_M_reserve_map_at_frontEm.exit.thread, label %_ZNSt5dequeIP4NodeSaIS1_EE23_M_reserve_map_at_frontEm.exit

_ZNSt5dequeIP4NodeSaIS1_EE23_M_reserve_map_at_frontEm.exit.thread: ; preds = %bb.c
  tail call void @_ZNSt5dequeIP4NodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ae, i1 noundef zeroext true)
  br label %.lr.ph.preheader

_ZNSt5dequeIP4NodeSaIS1_EE23_M_reserve_map_at_frontEm.exit: ; preds = %bb.c
  %.not12 = icmp eq i64 %i.ae, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt5dequeIP4NodeSaIS1_EE23_M_reserve_map_at_frontEm.exit.thread, %_ZNSt5dequeIP4NodeSaIS1_EE23_M_reserve_map_at_frontEm.exit
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.013 = phi i64 [ %i.ao, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.ak = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !728
  %i.am = sub nsw i64 0, %.013
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !719
  %i.ao = add nuw nsw i64 %.013, 1
  %exitcond = icmp eq i64 %.013, %i.ae
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !1769

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt5dequeIP4NodeSaIS1_EE23_M_reserve_map_at_frontEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIP4NodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !742  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !728  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !712  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !718
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !1558

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !719
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !719
  br label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !1558

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !719
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !719
  br label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_allocate_mapEm.exit, !prof !912

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #21 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !728    ; 3 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !742
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = ptrtoint ptr %i.aw to i64
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = sub i64 %5, %i.ax                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !1558

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %3, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIP4NodeSaIS1_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %3, align 8, !tbaa !719
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !719
  br label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit24:         ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !718
  tail call void @_ZdlPv(ptr noundef %i.bc) #22
  store ptr %i.aq, ptr %0, align 8, !tbaa !718
  store i64 %i.am, ptr %i.k, align 8, !tbaa !712
  br label %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit

_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit:           ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPP4NodeS3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !720
  %i.bd = load ptr, ptr %.0, align 8, !tbaa !719  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !721
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !722
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !720
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !719 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !721
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !722
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIP4NodeSaIS1_EE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !720
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.neg = zext i1 %i.k to i64
  %.neg15 = sub nsw i64 %.neg.i.i.neg, %i.j
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !725
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !721
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !722
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !725
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %.neg = shl i64 %.neg15, 6
  %i.z = add i64 %.neg, 1152921504606846975
  %i.aa = add nsw i64 %i.r, %i.y
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, %1
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = add i64 %1, 63
  %i.ae = lshr i64 %i.ad, 6                       ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !712
  %i.ah = load ptr, ptr %0, align 8, !tbaa !718
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %.not8 = icmp ult i64 %i.ae, %i.al
  br i1 %.not8, label %_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIP4NodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ae, i1 noundef zeroext false)
  br label %_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %.not13 = icmp eq i64 %i.ae, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm.exit, %.lr.ph
  %.014 = phi i64 [ %i.ap, %.lr.ph ], [ 1, %_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm.exit ] ; 3 uses
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !742
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.014
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !719
  %i.ap = add nuw nsw i64 %.014, 1
  %exitcond = icmp eq i64 %.014, %i.ae
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !llvm.loop !1770

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt5dequeIP4NodeSaIS1_EE22_M_reserve_map_at_backEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt15__copy_move_ditILb1EP4NodeRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !720
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = load ptr, ptr %1, align 8, !tbaa !725    ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !722
  %i.i = load ptr, ptr %3, align 8, !tbaa !725    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !721  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !722  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !720  ; 2 uses
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.p, %i.f
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZSt14__copy_move_a1ILb1EPP4NodeS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_.exit

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i
  %.sroa.1271.0 = phi ptr [ %.sroa.1271.1, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i ], [ %i.o, %bb.b ] ; 2 uses
  %.sroa.869.0 = phi ptr [ %.sroa.869.1, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.468.0 = phi ptr [ %.sroa.468.1, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %.sroa.067.0 = phi ptr [ %storemerge.i.i, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i ], [ %i.i, %bb.b ] ; 4 uses
  %.013.i = phi ptr [ %i.x, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i ], [ %i.e, %bb.b ] ; 3 uses
  %storemerge12.i = phi i64 [ %i.ar, %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.t = ptrtoint ptr %.sroa.869.0 to i64
  %i.u = ptrtoint ptr %.sroa.067.0 to i64         ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %storemerge12.i) ; 7 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.013.i, i64 %.sroa.speculated.i
  %i.y = icmp sgt i64 %.sroa.speculated.i, 1
  br i1 %i.y, label %bb.c, label %bb.d, !prof !1558

bb.c:                                             ; preds = %.lr.ph.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.067.0, ptr align 8 %.013.i, i64 %.idx.i, i1 false), !noalias !1771
  br label %_ZSt14__copy_move_a1ILb1EPP4NodeS2_ET1_T0_S4_S3_.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %i.z, label %bb.e, label %_ZSt14__copy_move_a1ILb1EPP4NodeS2_ET1_T0_S4_S3_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %.013.i, align 8, !tbaa !710, !noalias !1771
  store ptr %i.aa, ptr %.sroa.067.0, align 8, !tbaa !710, !noalias !1771
  br label %_ZSt14__copy_move_a1ILb1EPP4NodeS2_ET1_T0_S4_S3_.exit.i

_ZSt14__copy_move_a1ILb1EPP4NodeS2_ET1_T0_S4_S3_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = ptrtoint ptr %.sroa.468.0 to i64
  %i.ac = sub i64 %i.u, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, %.sroa.speculated.i  ; 5 uses
  %i.af = icmp sgt i64 %i.ae, -1
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZSt14__copy_move_a1ILb1EPP4NodeS2_ET1_T0_S4_S3_.exit.i
  %i.ag = icmp samesign ult i64 %i.ae, 64
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds [8 x i8], ptr %.sroa.067.0, i64 %.sroa.speculated.i
  br label %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ai = lshr i64 %i.ae, 6
  br label %bb.j

bb.i:                                             ; preds = %_ZSt14__copy_move_a1ILb1EPP4NodeS2_ET1_T0_S4_S3_.exit.i
  %i.aj = ashr i64 %i.ae, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi i64 [ %i.ai, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.sroa.1271.0, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !719, !noalias !1771 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.ao = shl nsw i64 %i.ak, 6
  %i.ap = sub nsw i64 %i.ae, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ap
  br label %_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i

_ZNSt15_Deque_iteratorIP4NodeRS1_PS1_EpLEl.exit.i: ; preds = %bb.j, %bb.g
end_hunk_1
