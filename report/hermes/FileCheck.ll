inline.NumInlined: 1995
inline.NumDeleted: 840
begin_hunk_0_@_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE:bb.a
  %i.av = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aa
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ax = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.084.097, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !76
  %i.bb = zext i32 %i.ba to i64
  %i.bc = zext i32 %.04598 to i64
  %i.bd = add nuw nsw i64 %i.bb, %i.bc            ; 3 uses
  %i.be = load i64, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i64 noundef %i.bd, i64 noundef %i.be) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit: ; preds = %bb.l
  %i.bg = load ptr, ptr %7, align 8, !tbaa !69
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !67
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bd, i64 noundef 0, ptr noundef %i.bg, i64 noundef %i.bh) #18 ; 0 uses
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !67  ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %.04598, %i.bk
  %i.bm = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.w
  br i1 %i.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit
  %i.bo = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bo)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit
  %i.bp = load i64, ptr %i.w, align 8, !tbaa !43
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.084.097, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.v
  br i1 %.not, label %.critedge54, label %bb.g

.critedge52:                                      ; preds = %bb.i, %bb.h
  %i.bs = load ptr, ptr %7, align 8, !tbaa !69    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.w
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %.critedge52
  %i.bu = load i64, ptr %i.w, align 8, !tbaa !43
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %.critedge52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.critedge56

.critedge54:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.f
  %i.bw = load ptr, ptr %6, align 8, !tbaa !69
  %i.bx = load i64, ptr %i.o, align 8, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %.critedge54, %bb.e
  %.sroa.087.0 = phi ptr [ %i.k, %bb.e ], [ %i.bw, %.critedge54 ]
  %.sroa.6.0 = phi i64 [ %i.m, %bb.e ], [ %i.bx, %.critedge54 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.by, ptr %9, align 8, !tbaa !118
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.bz, align 8, !tbaa !120
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 4, ptr %i.ca, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN4llvh5RegexC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %.sroa.087.0, i64 %.sroa.6.0, i32 noundef 2) #18
  %i.cb = call noundef zeroext i1 @_ZN4llvh5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %1, i64 %2, ptr noundef nonnull %9) #18
  call void @_ZN4llvh5RegexD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pre105 = load ptr, ptr %9, align 8, !tbaa !118 ; 4 uses
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.071.0.copyload = load ptr, ptr %.pre105, align 8, !tbaa !41
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre105, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !122 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not8899 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not8899, label %._crit_edge, label %.lr.ph101

._crit_edge.loopexit:                             ; preds = %.lr.ph101
  %.pre.pre = load ptr, ptr %9, align 8, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre105, %bb.o ]
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !114
  %i.cg = icmp eq i32 %i.cf, 7
  %i.ch = zext i1 %i.cg to i64                    ; 2 uses
  %i.ci = sub i64 %.sroa.4.0.copyload, %i.ch
  store i64 %i.ci, ptr %3, align 8, !tbaa !44
  %i.cj = ptrtoint ptr %.sroa.071.0.copyload to i64
  %i.ck = ptrtoint ptr %1 to i64
  %i.cl = add i64 %i.ch, %i.cj
  %i.cm = sub i64 %i.cl, %i.ck
  br label %bb.p

.lr.ph101:                                        ; preds = %bb.o, %.lr.ph101
  %.sroa.068.0100 = phi ptr [ %i.cw, %.lr.ph101 ], [ %i.cd, %bb.o ] ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.068.0100, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.068.0100, i64 48
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !123
  %i.cq = zext i32 %i.cp to i64
  %i.cr = load ptr, ptr %9, align 8, !tbaa !118
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cq
  %.sroa.0.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.068.0100, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !44
  %i.ct = call { ptr, i8 } @_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ct, 0
  %i.cu = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !116
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 16, i1 false), !tbaa.struct !68
  %i.cw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.068.0100) #20 ; 2 uses
  %.not88 = icmp eq ptr %i.cw, %i.ce
  br i1 %.not88, label %._crit_edge.loopexit, label %.lr.ph101

bb.p:                                             ; preds = %bb.n, %._crit_edge
  %i.cx = phi ptr [ %.pre, %._crit_edge ], [ %.pre105, %bb.n ] ; 2 uses
  %.5 = phi i64 [ %i.cm, %._crit_edge ], [ -1, %bb.n ]
  %i.cy = icmp eq ptr %i.cx, %i.by
  br i1 %i.cy, label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.cx) #18
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.critedge56

.critedge56:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit
  %.6 = phi i64 [ %.5, %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  %i.cz = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.n
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %.critedge56
  %i.db = load i64, ptr %i.n, align 8, !tbaa !43
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %.critedge56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.d, %bb.b
  %.7 = phi i64 [ %2, %bb.b ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.i, %bb.d ]
  ret i64 %.7
}

declare noundef zeroext i1 @_ZN4llvh5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(12), ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4llvh16FileCheckPattern20ComputeMatchDistanceENS_9StringRefERKNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr %1, i64 %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(25) %3) local_unnamed_addr #0 align 2 {
_ZNK4llvh9StringRef5splitEc.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !41
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  %i.c = icmp eq i64 %.sroa.58.0.copyload, 0      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.58.0 = select i1 %i.c, i64 %i.g, i64 %.sroa.58.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.sroa.speculated16 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.58.0)
  store ptr %1, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %.sroa.speculated16, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !43, !noalias !125
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.a, i64 1, i64 noundef 0) #18, !noalias !128
  %.sroa.5.0.copyload5 = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload5, i64 %i.i)
  %.sroa.07.0 = select i1 %i.c, ptr %i.e, ptr %.sroa.07.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %i.h, align 8, !tbaa !44
  %i.k = call noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.07.0, i64 %.sroa.58.0, i1 noundef zeroext true, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %i.k
}

declare noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh16FileCheckPattern17PrintVariableUsesERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEENS_7SMRangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr nofree noundef readonly byval(%"class.llvh::SMRange") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvh::SmallString", align 8 ; 8 uses
  %7 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %11 = alloca [1 x %"class.llvh::SMRange"], align 8 ; 4 uses
  %12 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %15 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 17
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit
  %.sroa.066.072 = phi ptr [ %i.b, %.preheader ], [ %i.ej, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.f, ptr %6, align 8, !tbaa !118
  store i32 0, ptr %i.g, align 8, !tbaa !120
  store i32 256, ptr %i.h, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 1, ptr %i.i, align 8, !tbaa !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !134
  store ptr %6, ptr %i.k, align 8, !tbaa !136
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %.sroa.059.0.copyload = load ptr, ptr %.sroa.066.072, align 8, !tbaa !41 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.066.072, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !44 ; 6 uses
  %i.w = load i8, ptr %.sroa.059.0.copyload, align 1, !tbaa !43
  %i.x = icmp eq i8 %i.w, 64
  br i1 %i.x, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %i.o, ptr %8, align 8, !tbaa !78
  store i64 0, ptr %i.p, align 8, !tbaa !67
  store i8 0, ptr %i.o, align 8, !tbaa !43
  %i.y = call noundef zeroext i1 @_ZNK4llvh16FileCheckPattern18EvaluateExpressionENS_9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nonnull %.sroa.059.0.copyload, i64 %.sroa.10.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !138
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !139 ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ult i64 %i.ad, 17
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.17, i64 noundef 17) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aa, ptr noundef nonnull align 1 dereferenceable(17) @.str.17, i64 17, i1 false)
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !139
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull %.sroa.059.0.copyload, i64 %.sroa.10.0.copyload, i1 noundef zeroext false) #18 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !138
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ult i64 %i.ap, 12
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef nonnull @.str.18, i64 noundef 12) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.am, ptr noundef nonnull align 1 dereferenceable(12) @.str.18, i64 12, i1 false)
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !139
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store ptr %i.at, ptr %i.al, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit24

_ZN4llvh11raw_ostreamlsEPKc.exit24:               ; preds = %bb.g, %bb.h
  %i.au = load ptr, ptr %8, align 8, !tbaa !69
  %i.av = load i64, ptr %i.p, align 8, !tbaa !67
  %i.aw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr %i.au, i64 %i.av, i1 noundef zeroext false) #18 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !138
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !139 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit24
  %i.bc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aw, ptr noundef nonnull @.str.19, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit24
  store i8 34, ptr %i.ba, align 1
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !139
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.az, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

bb.k:                                             ; preds = %bb.c
  %i.bf = icmp ult i64 %i.ad, 27
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.20, i64 noundef 27) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit30

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.aa, ptr noundef nonnull align 1 dereferenceable(27) @.str.20, i64 27, i1 false)
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !139
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 27
  store ptr %i.bi, ptr %i.n, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit30

_ZN4llvh11raw_ostreamlsEPKc.exit30:               ; preds = %bb.l, %bb.m
  %i.bj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull %.sroa.059.0.copyload, i64 %.sroa.10.0.copyload, i1 noundef zeroext false) #18 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !138
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 2 uses
  %i.bo = icmp eq ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit30
  %i.bp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bj, ptr noundef nonnull @.str.19, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit30
  store i8 34, ptr %i.bn, align 1
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !139
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

_ZN4llvh11raw_ostreamlsEPKc.exit27:               ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %i.bs = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.o
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit27
  %i.bu = load i64, ptr %i.o, align 8, !tbaa !43
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit39

bb.p:                                             ; preds = %bb.b
  %i.bw = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr nonnull %.sroa.059.0.copyload, i64 %.sroa.10.0.copyload) #18 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  %i.by = load ptr, ptr %4, align 8
  %i.bz = load i32, ptr %i.l, align 8
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = sext i32 %i.bw to i64
  %.sroa.0.0.v.i = select i1 %i.bx, i64 %i.ca, i64 %i.cb ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.sroa.0.0.v.i
  %i.cc = icmp eq i64 %.sroa.0.0.v.i, %i.ca
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !138
end_hunk_0
begin_hunk_1_@_ZNK4llvh16FileCheckPattern17PrintVariableUsesERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEENS_7SMRangeE:bb.a
  %i.cs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.cm, ptr noundef nonnull @.str.19, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit39

bb.u:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36
  store i8 34, ptr %i.cq, align 1
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !139
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit39

bb.v:                                             ; preds = %bb.p
  %i.cv = icmp ult i64 %i.ch, 15
  br i1 %i.cv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.22, i64 noundef 15) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit42

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ce, ptr noundef nonnull align 1 dereferenceable(15) @.str.22, i64 15, i1 false)
  %i.cx = load ptr, ptr %i.n, align 8, !tbaa !139
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 15
  store ptr %i.cy, ptr %i.n, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit42

_ZN4llvh11raw_ostreamlsEPKc.exit42:               ; preds = %bb.w, %bb.x
  %i.cz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull %.sroa.059.0.copyload, i64 %.sroa.10.0.copyload, i1 noundef zeroext false) #18 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !138
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !139 ; 2 uses
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = icmp ult i64 %i.dg, 12
  br i1 %i.dh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit42
  %i.di = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.cz, ptr noundef nonnull @.str.18, i64 noundef 12) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit45

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dd, ptr noundef nonnull align 1 dereferenceable(12) @.str.18, i64 12, i1 false)
  %i.dj = load ptr, ptr %i.dc, align 8, !tbaa !139
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store ptr %i.dk, ptr %i.dc, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit45

_ZN4llvh11raw_ostreamlsEPKc.exit45:               ; preds = %bb.y, %bb.z
  %i.dl = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !116 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.dm, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !44
  %i.dn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr %.sroa.02.0.copyload, i64 %.sroa.2.0.copyload, i1 noundef zeroext false) #18 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !138
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !139 ; 2 uses
  %i.ds = icmp eq ptr %i.dp, %i.dr
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit45
  %i.dt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dn, ptr noundef nonnull @.str.19, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit39

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit45
  store i8 34, ptr %i.dr, align 1
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !139
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !139
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit39

_ZN4llvh11raw_ostreamlsEPKc.exit39:               ; preds = %bb.t, %bb.u, %bb.aa, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dw = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %.not71 = icmp eq ptr %i.dw, null
  br i1 %.not71, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !141, !nonnull !17, !align !144 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !118
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !120
  %i.eb = zext i32 %i.ea to i64
  store ptr %i.dy, ptr %10, align 8
  store i64 %i.eb, ptr %i.q, align 8
  store i8 5, ptr %i.r, align 8, !tbaa !47
  store i8 1, ptr %i.s, align 1, !tbaa !53
  store ptr %10, ptr %9, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nonnull %i.dw, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %9, ptr nonnull %11, i64 1, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %12, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.ec = load ptr, ptr %i.k, align 8, !tbaa !141, !nonnull !17, !align !144 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !118
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !120
  %i.eg = zext i32 %i.ef to i64
  store ptr %i.ed, ptr %14, align 8
  store i64 %i.eg, ptr %i.t, align 8
  store i8 5, ptr %i.u, align 8, !tbaa !47
  store i8 1, ptr %i.v, align 1, !tbaa !53
  store ptr %14, ptr %13, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %13, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %15, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.eh = load ptr, ptr %6, align 8, !tbaa !118   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.f
  br i1 %i.ei, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @free(ptr noundef %i.eh) #18
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit:          ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.066.072, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ej, %i.d
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream13write_escapedENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(36), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvh11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh16FileCheckPattern15PrintFuzzyMatchERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr nofree nonnull readnone align 8 captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 4096)
  %.not58 = icmp eq i64 %3, 0
  br i1 %.not58, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  %i.f = fcmp olt double %.231, 5.000000e+01
  %i.g = add i64 %.2, -1
  %or.cond3 = icmp ult i64 %i.g, -2
  %or.cond5 = select i1 %or.cond3, i1 %i.f, i1 false
  br i1 %or.cond5, label %bb.e, label %._crit_edge.thread

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.062 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %bb.d ]
  %.02761 = phi i64 [ -1, %.lr.ph ], [ %.2, %bb.d ] ; 4 uses
  %.02960 = phi double [ 0.000000e+00, %.lr.ph ], [ %.231, %bb.d ] ; 4 uses
  %.03259 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.03259 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !43    ; 2 uses
  %i.j = icmp eq i8 %i.i, 10
  %i.k = zext i1 %i.j to i64
  %spec.select = add i64 %.062, %i.k              ; 2 uses
  switch i8 %i.i, label %bb.c [
    i8 32, label %bb.d
    i8 9, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %3, %.03259
  %.sroa.07.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !41
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !44 ; 2 uses
  %i.m = icmp eq i64 %.sroa.58.0.copyload.i, 0    ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load i64, ptr %i.d, align 8
  %.sroa.58.0.i = select i1 %i.m, i64 %i.o, i64 %.sroa.58.0.copyload.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.sroa.speculated16.i = call i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.58.0.i)
  store ptr %i.h, ptr %5, align 8
  store i64 %.sroa.speculated16.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !43, !noalias !146
  %i.p = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.a, i64 1, i64 noundef 0) #18, !noalias !149
  %.sroa.5.0.copyload5.i = load i64, ptr %i.e, align 8, !tbaa !44
  %i.q = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload5.i, i64 %i.p)
  %.sroa.07.0.i = select i1 %i.m, ptr %i.n, ptr %.sroa.07.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.q, ptr %i.e, align 8, !tbaa !44
  %i.r = call noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.07.0.i, i64 %.sroa.58.0.i, i1 noundef zeroext true, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.s = uitofp i32 %i.r to double
  %i.t = uitofp i64 %spec.select to double
  %i.u = fdiv double %i.t, 1.000000e+02
  %i.v = fadd double %i.u, %i.s                   ; 2 uses
  %i.w = fcmp olt double %i.v, %.02960
  %i.x = icmp eq i64 %.02761, -1
  %or.cond = select i1 %i.w, i1 true, i1 %i.x     ; 2 uses
  %.130 = select i1 %or.cond, double %i.v, double %.02960
  %.128 = select i1 %or.cond, i64 %.03259, i64 %.02761
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.231 = phi double [ %.02960, %bb.b ], [ %.02960, %bb.b ], [ %.130, %bb.c ] ; 2 uses
  %.2 = phi i64 [ %.02761, %bb.b ], [ %.02761, %bb.b ], [ %.128, %bb.c ] ; 3 uses
  %i.y = add nuw nsw i64 %.03259, 1               ; 2 uses
  %.not = icmp eq i64 %i.y, %.sroa.speculated
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !152

bb.e:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.ab, align 1, !tbaa !53
  store ptr @.str.23, ptr %6, align 8, !tbaa !43
  store i8 3, ptr %i.aa, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %i.z, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(18) %6, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %7, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh9FileCheck16CanonicalizeFileERNS_12MemoryBufferERNS_15SmallVectorImplIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !121
  %i.j = zext i32 %i.i to i64
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.b, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.l, i64 noundef %i.g, i64 noundef 1) #18
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !155
  %.pre51 = load ptr, ptr %i.a, align 8, !tbaa !153 ; 2 uses
  %.pre52 = ptrtoint ptr %.pre51 to i64
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.a, %bb.b
  %.pre-phi = phi i64 [ %i.e, %bb.a ], [ %.pre52, %bb.b ]
  %i.m = phi ptr [ %i.b, %bb.a ], [ %.pre51, %bb.b ] ; 5 uses
  %i.n = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not46 = icmp eq ptr %i.n, %i.m
  br i1 %.not46, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge, %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !120  ; 2 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !121
  %.not.i = icmp ult i32 %i.t, %i.u
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.c, !prof !156

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 1) #18
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !120
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %._crit_edge, %bb.c
  %i.w = phi i32 [ %.pre.i, %bb.c ], [ %i.t, %._crit_edge ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !118
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  store i8 0, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.s, align 8, !tbaa !120
  %i.ab = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ab, ptr %i.s, align 8, !tbaa !120
  %i.ac = load ptr, ptr %2, align 8, !tbaa !118
  %i.ad = zext i32 %i.ab to i64
  %i.ae = add nsw i64 %i.ad, -1
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.ac, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.ae, 1
  ret { ptr, i64 } %.fca.1.insert

bb.d:                                             ; preds = %.lr.ph48, %.critedge
  %.047 = phi ptr [ %i.n, %.lr.ph48 ], [ %i.bk, %.critedge ] ; 12 uses
  %.04749 = ptrtoint ptr %.047 to i64
  %.not31 = icmp ugt ptr %.047, %i.o
  br i1 %.not31, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load i8, ptr %.047, align 1, !tbaa !43
  %i.ag = icmp eq i8 %i.af, 13
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.047, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !43
  %i.aj = icmp eq i8 %i.ai, 10
  br i1 %i.aj, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ak = load i8, ptr %i.p, align 8, !tbaa !157, !range !16, !noundef !17
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %.047, align 1, !tbaa !43
  switch i8 %i.am, label %bb.i [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = load i32, ptr %i.q, align 8, !tbaa !120 ; 2 uses
  %i.ao = load i32, ptr %i.h, align 4, !tbaa !121
  %.not.i35 = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i35, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37, label %bb.j, !prof !156

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1) #18
  %.pre.i36 = load i32, ptr %i.q, align 8, !tbaa !120
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit37: ; preds = %bb.i, %bb.j
  %i.ap = phi i32 [ %.pre.i36, %bb.j ], [ %i.an, %bb.i ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !118
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar
  %i.at = load i8, ptr %.047, align 1
  store i8 %i.at, ptr %i.as, align 1
  %i.au = load i32, ptr %i.q, align 8, !tbaa !120
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.q, align 8, !tbaa !120
  br label %.critedge

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !120 ; 2 uses
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !121
  %.not.i38 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i38, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40, label %bb.l, !prof !156

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1) #18
  %.pre.i39 = load i32, ptr %i.q, align 8, !tbaa !120
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40: ; preds = %bb.k, %bb.l
  %i.ay = phi i32 [ %.pre.i39, %bb.l ], [ %i.aw, %bb.k ]
  %i.az = load ptr, ptr %2, align 8, !tbaa !118
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  store i8 32, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !120
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.q, align 8, !tbaa !120
  %i.be = getelementptr inbounds nuw i8, ptr %.047, i64 1 ; 2 uses
  %.not3442 = icmp eq ptr %i.be, %i.m
  br i1 %.not3442, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit40
  %i.bf = getelementptr i8, ptr %.047, i64 %.pre-phi
  %scevgep = getelementptr i8, ptr %i.bf, i64 -1
  %i.bg = sub i64 0, %.04749
  %scevgep50 = getelementptr i8, ptr %scevgep, i64 %i.bg
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %i.bh = phi ptr [ %i.bj, %.critedge2 ], [ %i.be, %.lr.ph.preheader ] ; 3 uses
  %.143 = phi ptr [ %i.bh, %.critedge2 ], [ %.047, %.lr.ph.preheader ]
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43
  switch i8 %i.bi, label %.critedge [
    i8 32, label %.critedge2
    i8 9, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
end_hunk_1
