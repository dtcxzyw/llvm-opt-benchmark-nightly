Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Sema?download=true
inline.NumInlined: 13880
inline.NumDeleted: 7671
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5clang4Sema39getDarwinSDKInfoForAvailabilityCheckingEv:bb.a
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !1030, !noalias !1034
  store i64 0, ptr %i.ay, align 8, !tbaa !1031, !noalias !1034
  store i8 0, ptr %i.aq, align 8, !tbaa !1038, !noalias !1034
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !1039, !noalias !1034
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !1040, !noalias !1034
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  store i32 0, ptr %i.be, align 8, !tbaa !1041, !noalias !1034
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  store i32 2, ptr %i.bf, align 4, !tbaa !1042, !noalias !1034
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1041, !noalias !1034
  %.not.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i, label %_ZSt11make_uniqueIN5clang13DarwinSDKInfoEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.bj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang13DarwinSDKInfo15SDKPlatformInfoEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(672) %i.bc, ptr noundef nonnull align 8 dereferenceable(672) %i.bi), !noalias !1034 ; 0 uses
  br label %_ZSt11make_uniqueIN5clang13DarwinSDKInfoEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5clang13DarwinSDKInfoEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i.i, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 776
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 776 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.bn = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !1043, !noalias !1034
  store ptr null, ptr %i.bl, align 8, !tbaa !1044, !noalias !1034
  store <2 x ptr> %i.bn, ptr %i.bk, align 8, !tbaa !1043, !noalias !1034
  store ptr null, ptr %i.bm, align 8, !tbaa !1046, !noalias !1034
  %i.bo = getelementptr inbounds nuw i8, ptr %i.x, i64 792
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 792 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 796
  %i.br = load <2 x i32>, ptr %i.bp, align 8, !tbaa !926, !noalias !1034
  store i32 0, ptr %i.bp, align 8, !tbaa !926, !noalias !1034
  store <2 x i32> %i.br, ptr %i.bo, align 8, !tbaa !926, !noalias !1034
  store i32 0, ptr %i.bq, align 4, !tbaa !926, !noalias !1034
  %i.bs = load i8, ptr %i.b, align 8, !tbaa !930, !range !701, !noundef !696
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZSt11make_uniqueIN5clang13DarwinSDKInfoEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !931 ; 8 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !931
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 776
  call void @_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bv) #27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  call void @_ZN4llvm11SmallVectorIN5clang13DarwinSDKInfo15SDKPlatformInfoELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(672) dereferenceable(672) %i.bw) #27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1030 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 72 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !1038
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !1030 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !1038
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #29
  br label %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 800) #29
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !931
  br label %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17

bb.k:                                             ; preds = %_ZSt11make_uniqueIN5clang13DarwinSDKInfoEJS1_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ci = ptrtoint ptr %i.x to i64
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !931
  store i8 1, ptr %i.b, align 8, !tbaa !930
  br label %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.c
  %i.cj = load i64, ptr %4, align 8, !tbaa !1047, !noalias !1049
  %i.ck = inttoptr i64 %i.cj to ptr
  store ptr null, ptr %4, align 8, !tbaa !1047, !noalias !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ck, ptr %2, align 8, !tbaa !1052
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.cl = load ptr, ptr %2, align 8, !tbaa !1052  ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !921
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #27, !inline_history !1054
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.l, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN4llvm5ErrorD2Ev.exit
  %i.cq = load i8, ptr %i.b, align 8, !tbaa !930, !range !701, !noundef !696
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.thread
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !931 ; 8 uses
  store ptr null, ptr %i.a, align 8, !tbaa !931
  %.not.i.i.i.i.i2 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i2, label %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 776
  call void @_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ct) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  call void @_ZN4llvm11SmallVectorIN5clang13DarwinSDKInfo15SDKPlatformInfoELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(672) dereferenceable(672) %i.cu) #27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1030 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 72 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i3: ; preds = %bb.n
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !1038
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i4: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i3
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !1030 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i4
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !1038
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #29
  br label %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i6

_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i5
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 800) #29
  br label %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17

bb.o:                                             ; preds = %.thread
  store i64 0, ptr %i.a, align 8, !tbaa !931
  store i8 1, ptr %i.b, align 8, !tbaa !930
  br label %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17: ; preds = %bb.i, %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i, %bb.k, %bb.m, %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i6, %bb.o
  %.0 = phi ptr [ null, %bb.m ], [ null, %bb.o ], [ null, %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i6 ], [ %i.x, %bb.k ], [ %.pre, %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i ], [ %i.x, %bb.i ]
  %i.dg = load i8, ptr %i.r, align 8
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.v, label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 800 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !1032, !range !701, !noundef !696
  %i.dk = trunc nuw i8 %i.dj to i1
  store i8 0, ptr %i.di, align 8, !tbaa !1032
  br i1 %i.dk, label %bb.q, label %_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 776 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 796 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !1055 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.q
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !1057
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 784
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1058
  %i.ds = zext i32 %i.dn to i64
  %i.dt = add nuw nsw i64 %i.ds, 31
  %i.du = lshr i64 %i.dt, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !926 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.dx = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.r

bb.r:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.dw, %.lr.ph.i.i ], [ %i.er, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.dy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.dz = or disjoint i32 %i.dy, %i.dx
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [104 x i8], ptr %i.dp, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 96 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !1059, !range !701, !noundef !696
  %i.ee = trunc nuw i8 %i.ed to i1
  store i8 0, ptr %i.ec, align 8, !tbaa !1059
  br i1 %i.ee, label %bb.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 92
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !1061 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1064
  %i.ek = zext i32 %i.eg to i64                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ek, 5
  %i.em = add nuw nsw i64 %i.ek, 31
  %i.en = lshr i64 %i.em, 3
  %i.eo = and i64 %i.en, 1073741820
  %i.ep = add nuw nsw i64 %i.eo, %i.el
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ej, i64 noundef %i.ep, i64 noundef 4) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.eq = add i32 %.0.i3.i.i, -1
  %i.er = and i32 %i.eq, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.er, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.r, !llvm.loop !1065

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i18 = icmp eq i64 %indvars.iv.next.i.i, %i.du
  br i1 %.not.i.i.i18, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1067

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.dm, align 4, !tbaa !1055 ; 2 uses
  %i.es = icmp eq i32 %.pr.i, 0
  br i1 %i.es, label %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit.i
  %i.et = load ptr, ptr %i.dl, align 8, !tbaa !1057
  %i.eu = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ev = mul nuw nsw i64 %i.eu, 104
  %i.ew = add nuw nsw i64 %i.eu, 31
  %i.ex = lshr i64 %i.ew, 3
  %i.ey = and i64 %i.ex, 1073741820
  %i.ez = add nuw nsw i64 %i.ey, %i.ev
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.et, i64 noundef %i.ez, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev.exit

_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev.exit: ; preds = %bb.q, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit.i, %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @_ZN4llvm11SmallVectorIN5clang13DarwinSDKInfo15SDKPlatformInfoELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(672) dereferenceable(672) %i.fa) #27
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1030 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev.exit
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !1038
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.fh = load ptr, ptr %4, align 8, !tbaa !1030  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !1038
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #29
  br label %_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS1_EED2Ev.exit17
  %i.fm = load ptr, ptr %4, align 8, !tbaa !1047  ; 3 uses
  %.not.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.v
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !921
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fm) #27, !inline_history !1068
  br label %_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit

_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i, %bb.v, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit, %bb.b
  %.1 = phi ptr [ %i.e, %bb.b ], [ %.0, %_ZN4llvm8ExpectedISt8optionalIN5clang13DarwinSDKInfoEEED2Ev.exit ]
  ret ptr %.1
}

declare void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32, i32 noundef) local_unnamed_addr #1

declare void @_ZN5clang18parseDarwinSDKInfoERN4llvm3vfs10FileSystemENS0_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5clang4Sema42InventAbbreviatedTemplateParameterTypeNameEPKNS_14IdentifierInfoEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::raw_string_ostream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !1037
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !1031
  store i8 0, ptr %i.b, align 8, !tbaa !1038
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !1069
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !1073
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !1074
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !921
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !1075
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #27
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1077
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1078 ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 5
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i64 noundef 5) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.l, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !1078
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store ptr %i.s, ptr %i.k, align 8, !tbaa !1078
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.q, %bb.c ], [ %4, %bb.d ]
  %i.t = add i32 %2, 1
  %i.u = zext i32 %i.t to i64
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.u) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1079 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.x, align 8, !tbaa !1082
  %i.aa = and i64 %i.z, 4294967295                ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1077
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1078 ; 3 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.aa, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.y, i64 noundef %i.aa) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1078
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %bb.e
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 8 %i.y, i64 %i.aa, i1 false)
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !1078
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aa ; 2 uses
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !1078
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
end_hunk_0
begin_hunk_1_@_ZN5clang4SemaD2Ev:bb.a
  br label %_ZN4llvm11SmallVectorIPN5clang14DeclaratorDeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang14DeclaratorDeclELj4EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit93, %bb.cq
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !1040 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.xv = icmp eq ptr %i.xt, %i.xu
  br i1 %i.xv, label %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj2EED2Ev.exit.i, label %bb.cr

bb.cr:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang14DeclaratorDeclELj4EED2Ev.exit
  call void @free(ptr noundef %i.xt) #27
  br label %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIPN5clang7VarDeclELj2EED2Ev.exit.i: ; preds = %bb.cr, %_ZN4llvm11SmallVectorIPN5clang14DeclaratorDeclELj4EED2Ev.exit
  %i.xw = load ptr, ptr %i.xr, align 8, !tbaa !1040 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.xy = icmp eq ptr %i.xw, %i.xx
  br i1 %i.xy, label %_ZN5clang10LazyVectorIPNS_7VarDeclENS_18ExternalSemaSourceEXadL_ZNS3_24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.xw) #27
  br label %_ZN5clang10LazyVectorIPNS_7VarDeclENS_18ExternalSemaSourceEXadL_ZNS3_24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EED2Ev.exit

_ZN5clang10LazyVectorIPNS_7VarDeclENS_18ExternalSemaSourceEXadL_ZNS3_24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang7VarDeclELj2EED2Ev.exit.i, %bb.cs
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !1040 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.yd = icmp eq ptr %i.yb, %i.yc
  br i1 %i.yd, label %_ZN4llvm11SmallVectorIPKN5clang14DeclaratorDeclELj2EED2Ev.exit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN5clang10LazyVectorIPNS_7VarDeclENS_18ExternalSemaSourceEXadL_ZNS3_24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EED2Ev.exit
  call void @free(ptr noundef %i.yb) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang14DeclaratorDeclELj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKN5clang14DeclaratorDeclELj2EED2Ev.exit.i: ; preds = %bb.ct, %_ZN5clang10LazyVectorIPNS_7VarDeclENS_18ExternalSemaSourceEXadL_ZNS3_24ReadTentativeDefinitionsERN4llvm15SmallVectorImplIS2_EEEELj2ELj2EED2Ev.exit
  %i.ye = load ptr, ptr %i.xz, align 8, !tbaa !1040 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.yg = icmp eq ptr %i.ye, %i.yf
  br i1 %i.yg, label %_ZN5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EED2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN4llvm11SmallVectorIPKN5clang14DeclaratorDeclELj2EED2Ev.exit.i
  call void @free(ptr noundef %i.ye) #27
  br label %_ZN5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EED2Ev.exit

_ZN5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKN5clang14DeclaratorDeclELj2EED2Ev.exit.i, %bb.cu
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.yi = load i8, ptr %i.yh, align 8, !tbaa !1640, !range !701, !noundef !696
  %i.yj = trunc nuw i8 %i.yi to i1
  br i1 %i.yj, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit94, label %bb.cv

bb.cv:                                            ; preds = %_ZN5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EED2Ev.exit
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !1637
  call void @free(ptr noundef %i.yl) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit94

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit94:         ; preds = %_ZN5clang10LazyVectorIPKNS_14DeclaratorDeclENS_18ExternalSemaSourceEXadL_ZNS4_25ReadUnusedFileScopedDeclsERN4llvm15SmallVectorImplIS3_EEEELj2ELj2EED2Ev.exit, %bb.cv
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 2760
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !1040 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.yq = icmp eq ptr %i.yo, %i.yp
  br i1 %i.yq, label %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELj0EED2Ev.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit94
  call void @free(ptr noundef %i.yo) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELj0EED2Ev.exit.i: ; preds = %bb.cw, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit94
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 2756
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !1903 ; 2 uses
  %i.yt = icmp eq i32 %i.ys, 0
  br i1 %i.yt, label %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoEPNS1_12AsmLabelAttrENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELj0EED2Ev.exit.i
  %i.yu = load ptr, ptr %i.ym, align 8, !tbaa !1904
  %i.yv = zext i32 %i.ys to i64                   ; 2 uses
  %i.yw = shl nuw nsw i64 %i.yv, 4
  %i.yx = add nuw nsw i64 %i.yv, 31
  %i.yy = lshr i64 %i.yx, 3
  %i.yz = and i64 %i.yy, 1073741820
  %i.za = add nuw nsw i64 %i.yz, %i.yw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.yu, i64 noundef %i.za, i64 noundef 8) #27
  br label %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoEPNS1_12AsmLabelAttrENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPN5clang14IdentifierInfoEPNS1_12AsmLabelAttrENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELj0EED2Ev.exit.i, %bb.cx
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 2696
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 2720 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !1040 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i.i95 = icmp eq i32 %i.zf, 0
  br i1 %.not4.i.i.i95, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.i.i, label %.lr.ph.i.preheader.i.i96

.lr.ph.i.preheader.i.i96:                         ; preds = %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoEPNS1_12AsmLabelAttrENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit
  %i.zg = zext i32 %i.zf to i64
  %.idx.i.i97 = mul nuw nsw i64 %i.zg, 88
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 %.idx.i.i97
  br label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i96
  %.05.i.i.i99 = phi ptr [ %i.zi, %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i.i.i ], [ %i.zh, %.lr.ph.i.preheader.i.i96 ] ; 6 uses
  %i.zi = getelementptr inbounds i8, ptr %.05.i.i.i99, i64 -88 ; 2 uses
  %i.zj = getelementptr inbounds i8, ptr %.05.i.i.i99, i64 -80
  %i.zk = getelementptr inbounds i8, ptr %.05.i.i.i99, i64 -32
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !1040 ; 2 uses
  %i.zm = getelementptr inbounds i8, ptr %.05.i.i.i99, i64 -16
  %i.zn = icmp eq ptr %i.zl, %i.zm
  br i1 %i.zn, label %_ZN4llvm11SmallVectorIN5clang8WeakInfoELj1EED2Ev.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i98
  call void @free(ptr noundef %i.zl) #27
  br label %_ZN4llvm11SmallVectorIN5clang8WeakInfoELj1EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIN5clang8WeakInfoELj1EED2Ev.exit.i.i.i.i.i: ; preds = %bb.cy, %.lr.ph.i.i.i98
  %i.zo = load i32, ptr %i.zj, align 8
  %i.zp = and i32 %i.zo, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.zp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cz, label %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i.i.i

bb.cz:                                            ; preds = %_ZN4llvm11SmallVectorIN5clang8WeakInfoELj1EED2Ev.exit.i.i.i.i.i
  %i.zq = getelementptr inbounds i8, ptr %.05.i.i.i99, i64 -56
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !1038 ; 2 uses
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zt = getelementptr inbounds i8, ptr %.05.i.i.i99, i64 -72
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !1038
  %i.zv = zext i32 %i.zr to i64                   ; 2 uses
  %i.zw = shl nuw nsw i64 %i.zv, 4
  %i.zx = add nuw nsw i64 %i.zv, 31
  %i.zy = lshr i64 %i.zx, 3
  %i.zz = and i64 %i.zy, 1073741820
  %i.aaa = add nuw nsw i64 %i.zz, %i.zw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.zu, i64 noundef %i.aaa, i64 noundef 8) #27
  br label %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i.i.i

_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i.i.i: ; preds = %bb.da, %bb.cz, %_ZN4llvm11SmallVectorIN5clang8WeakInfoELj1EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i100 = icmp eq ptr %i.zd, %i.zi
  br i1 %.not.i.i.i100, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i.i, label %.lr.ph.i.i.i98, !llvm.loop !1905

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i.i.i
  %.pre.i.i101 = load ptr, ptr %i.zc, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i.i, %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoEPNS1_12AsmLabelAttrENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit
  %i.aab = phi ptr [ %.pre.i.i101, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i.i ], [ %i.zd, %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoEPNS1_12AsmLabelAttrENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit ] ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.ym
  br i1 %i.aac, label %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS0_IS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELj0EED2Ev.exit.i, label %bb.db

bb.db:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.i.i
  call void @free(ptr noundef %i.aab) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS0_IS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS0_IS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELj0EED2Ev.exit.i: ; preds = %bb.db, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit.i.i
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !1903 ; 2 uses
  %i.aaf = icmp eq i32 %i.aae, 0
  br i1 %i.aaf, label %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoENS_9SetVectorINS1_8WeakInfoENS_11SmallVectorIS5_Lj1EEENS_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS6_ISt4pairIS3_SB_ELj0EEELj0EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS0_IS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELj0EED2Ev.exit.i
  %i.aag = load ptr, ptr %i.zb, align 8, !tbaa !1904
  %i.aah = zext i32 %i.aae to i64                 ; 2 uses
  %i.aai = shl nuw nsw i64 %i.aah, 4
  %i.aaj = add nuw nsw i64 %i.aah, 31
  %i.aak = lshr i64 %i.aaj, 3
  %i.aal = and i64 %i.aak, 1073741820
  %i.aam = add nuw nsw i64 %i.aal, %i.aai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aag, i64 noundef %i.aam, i64 noundef 8) #27
  br label %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoENS_9SetVectorINS1_8WeakInfoENS_11SmallVectorIS5_Lj1EEENS_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS6_ISt4pairIS3_SB_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPN5clang14IdentifierInfoENS_9SetVectorINS1_8WeakInfoENS_11SmallVectorIS5_Lj1EEENS_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS6_ISt4pairIS3_SB_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS0_IS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELj0EED2Ev.exit.i, %bb.dc
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 2672
  call void @_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aan) #27
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 2668 ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !1906 ; 2 uses
  %i.aar = icmp eq i32 %i.aaq, 0
  br i1 %i.aar, label %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoENS_9SetVectorINS1_8WeakInfoENS_11SmallVectorIS5_Lj1EEENS_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS6_ISt4pairIS3_SB_ELj0EEELj0EED2Ev.exit
  %i.aas = load ptr, ptr %i.aao, align 8, !tbaa !1907
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !1908
  %i.aav = zext i32 %i.aaq to i64
  %i.aaw = add nuw nsw i64 %i.aav, 31
  %i.aax = lshr i64 %i.aaw, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv.i.i
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !926 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.aaz, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.aba = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.dd

bb.dd:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i102
  %.0.i3.i.i = phi i32 [ %i.aaz, %.lr.ph.i.i102 ], [ %i.abm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.abb = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.abc = or disjoint i32 %i.abb, %i.aba
  %i.abd = zext i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [24 x i8], ptr %i.aas, i64 %i.abd ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load i32, ptr %i.abf, align 8, !tbaa !1909
  %i.abh = icmp ugt i32 %i.abg, 64
  br i1 %i.abh, label %bb.de, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.de:                                            ; preds = %bb.dd
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !1038 ; 2 uses
  %i.abk = icmp eq ptr %i.abj, null
  br i1 %i.abk, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @_ZdaPv(ptr noundef nonnull %i.abj) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.df, %bb.de, %bb.dd
  %i.abl = add i32 %.0.i3.i.i, -1
  %i.abm = and i32 %i.abl, %.0.i3.i.i             ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.abm, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.dd, !llvm.loop !1911

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i103 = icmp eq i64 %indvars.iv.next.i.i, %i.aax
  br i1 %.not.i.i.i103, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1912

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i104 = load i32, ptr %i.aap, align 4, !tbaa !1906 ; 2 uses
  %i.abn = icmp eq i32 %.pr.i104, 0
  br i1 %i.abn, label %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i
  %i.abo = load ptr, ptr %i.aao, align 8, !tbaa !1907
  %i.abp = zext i32 %.pr.i104 to i64              ; 2 uses
  %i.abq = mul nuw nsw i64 %i.abp, 24
  %i.abr = add nuw nsw i64 %i.abp, 31
  %i.abs = lshr i64 %i.abr, 3
  %i.abt = and i64 %i.abs, 1073741820
  %i.abu = add nuw nsw i64 %i.abt, %i.abq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.abo, i64 noundef %i.abu, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN4llvm9MapVectorIPN5clang14IdentifierInfoENS_9SetVectorINS1_8WeakInfoENS_11SmallVectorIS5_Lj1EEENS_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS6_ISt4pairIS3_SB_ELj0EEELj0EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E10destroyAllEv.exit.i, %bb.dg
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.abw = load i8, ptr %i.abv, align 8, !tbaa !1640, !range !701, !noundef !696
  %i.abx = trunc nuw i8 %i.abw to i1
  br i1 %i.abx, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit105, label %bb.dh

bb.dh:                                            ; preds = %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !1637
  call void @free(ptr noundef %i.abz) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit105

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit105:        ; preds = %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_5APIntENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %bb.dh
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 2560
  call void @_ZN5clang18IdentifierResolverD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aca) #27
  %i.acb = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !1913 ; 4 uses
  %.not.i106 = icmp eq ptr %i.acc, null
  br i1 %.not.i106, label %_ZNSt10unique_ptrIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEESt14default_deleteISF_EED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit105
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 20
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !1914 ; 2 uses
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %_ZNKSt14default_deleteIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEEEclEPSF_.exit.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.acg = load ptr, ptr %i.acc, align 8, !tbaa !1917
  %i.ach = zext i32 %i.ace to i64                 ; 2 uses
  %i.aci = shl nuw nsw i64 %i.ach, 5
  %i.acj = add nuw nsw i64 %i.ach, 31
  %i.ack = lshr i64 %i.acj, 3
  %i.acl = and i64 %i.ack, 1073741820
  %i.acm = add nuw nsw i64 %i.acl, %i.aci
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.acg, i64 noundef %i.acm, i64 noundef 8) #27
  br label %_ZNKSt14default_deleteIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEEEclEPSF_.exit.i

_ZNKSt14default_deleteIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEEEclEPSF_.exit.i: ; preds = %bb.dj, %bb.di
  call void @_ZdlPvm(ptr noundef nonnull %i.acc, i64 noundef 24) #29
  br label %_ZNSt10unique_ptrIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEESt14default_deleteISF_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEESt14default_deleteISF_EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit105, %_ZNKSt14default_deleteIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEEEclEPSF_.exit.i
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 2532
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !1918 ; 2 uses
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS1_4Sema17PendingPragmaInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt10unique_ptrIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEESt14default_deleteISF_EED2Ev.exit
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !1919
  %i.acs = zext i32 %i.aco to i64                 ; 2 uses
  %i.act = shl nuw nsw i64 %i.acs, 4
  %i.acu = add nuw nsw i64 %i.acs, 31
  %i.acv = lshr i64 %i.acu, 3
  %i.acw = and i64 %i.acv, 1073741820
  %i.acx = add nuw nsw i64 %i.acw, %i.act
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.acr, i64 noundef %i.acx, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS1_4Sema17PendingPragmaInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS1_4Sema17PendingPragmaInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm8DenseMapISt4pairIPKN5clang14IdentifierInfoEmENS3_4Sema11TypeTagDataENS0_12DenseMapInfoIS7_vEENS0_6detail12DenseMapPairIS7_S9_EEEESt14default_deleteISF_EED2Ev.exit, %bb.dk
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !1040 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.adc = icmp eq ptr %i.ada, %i.adb
  br i1 %i.adc, label %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit.i, label %bb.dl

bb.dl:                                            ; preds = %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS1_4Sema17PendingPragmaInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  call void @free(ptr noundef %i.ada) #27
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit.i: ; preds = %bb.dl, %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS1_4Sema17PendingPragmaInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 2428
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !1920 ; 2 uses
  %i.adf = icmp eq i32 %i.ade, 0
  br i1 %i.adf, label %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EED2Ev.exit, label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit.i
  %i.adg = load ptr, ptr %i.acy, align 8, !tbaa !1921
  %i.adh = zext i32 %i.ade to i64                 ; 2 uses
  %i.adi = shl nuw nsw i64 %i.adh, 4
  %i.adj = add nuw nsw i64 %i.adh, 31
  %i.adk = lshr i64 %i.adj, 3
  %i.adl = and i64 %i.adk, 1073741820
  %i.adm = add nuw nsw i64 %i.adl, %i.adi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.adg, i64 noundef %i.adm, i64 noundef 8) #27
  br label %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EED2Ev.exit

_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj4EED2Ev.exit.i, %bb.dm
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 2 uses
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !1040 ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i107 = icmp eq i32 %i.adq, 0
  br i1 %.not4.i.i107, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeGroupELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i108

.lr.ph.i.preheader.i108:                          ; preds = %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj4EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj4EED2Ev.exit
  %i.adr = zext i32 %i.adq to i64
  %.idx.i109 = mul nuw nsw i64 %i.adr, 144
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 %.idx.i109
  br label %.lr.ph.i.i110

.lr.ph.i.i110:                                    ; preds = %_ZN5clang4Sema20PragmaAttributeGroupD2Ev.exit.i.i, %.lr.ph.i.preheader.i108
  %.05.i.i111 = phi ptr [ %i.adt, %_ZN5clang4Sema20PragmaAttributeGroupD2Ev.exit.i.i ], [ %i.ads, %.lr.ph.i.preheader.i108 ] ; 4 uses
  %i.adt = getelementptr inbounds i8, ptr %.05.i.i111, i64 -144 ; 2 uses
  %i.adu = getelementptr inbounds i8, ptr %.05.i.i111, i64 -128 ; 2 uses
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !1040 ; 3 uses
  %i.adw = getelementptr inbounds i8, ptr %.05.i.i111, i64 -120
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq i32 %i.adx, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %.lr.ph.i.i110
  %i.ady = zext i32 %i.adx to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.ady, 56
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %_ZN5clang4Sema20PragmaAttributeEntryD2Ev.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aea, %_ZN5clang4Sema20PragmaAttributeEntryD2Ev.exit.i.i.i.i.i ], [ %i.adz, %.lr.ph.i.preheader.i.i.i.i ] ; 3 uses
  %i.aea = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -56 ; 2 uses
  %i.aeb = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -40
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !1040 ; 2 uses
  %i.aed = getelementptr inbounds i8, ptr %.05.i.i.i.i.i, i64 -24
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZN5clang4Sema20PragmaAttributeEntryD2Ev.exit.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i.i.i.i.i112
  call void @free(ptr noundef %i.aec) #27
  br label %_ZN5clang4Sema20PragmaAttributeEntryD2Ev.exit.i.i.i.i.i

_ZN5clang4Sema20PragmaAttributeEntryD2Ev.exit.i.i.i.i.i: ; preds = %bb.dn, %.lr.ph.i.i.i.i.i112
  %.not.i.i.i.i.i113 = icmp eq ptr %i.adv, %i.aea
  br i1 %.not.i.i.i.i.i113, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i112, !llvm.loop !1922

_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i: ; preds = %_ZN5clang4Sema20PragmaAttributeEntryD2Ev.exit.i.i.i.i.i
  %.pre.i.i.i.i114 = load ptr, ptr %i.adu, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i, %.lr.ph.i.i110
  %i.aef = phi ptr [ %.pre.i.i.i.i114, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i ], [ %i.adv, %.lr.ph.i.i110 ] ; 2 uses
  %i.aeg = getelementptr inbounds i8, ptr %.05.i.i111, i64 -112
  %i.aeh = icmp eq ptr %i.aef, %i.aeg
  br i1 %i.aeh, label %_ZN5clang4Sema20PragmaAttributeGroupD2Ev.exit.i.i, label %bb.do

bb.do:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i
  call void @free(ptr noundef %i.aef) #27
  br label %_ZN5clang4Sema20PragmaAttributeGroupD2Ev.exit.i.i

_ZN5clang4Sema20PragmaAttributeGroupD2Ev.exit.i.i: ; preds = %bb.do, %_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema20PragmaAttributeEntryELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN5clang4SemaD2Ev:bb.a

_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.akg, i64 noundef 800) #29
  br label %_ZNSt14_Optional_baseISt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS2_EELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS2_EELb0ELb0EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5clang10SemaAMDGPUESt14default_deleteIS1_EED2Ev.exit, %bb.ei, %_ZNKSt14default_deleteIN5clang13DarwinSDKInfoEEclEPS1_.exit.i.i.i.i.i
  %i.aku = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !1928 ; 4 uses
  %.not.i.i164 = icmp eq ptr %i.akv, null
  br i1 %.not.i.i164, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt14_Optional_baseISt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS2_EELb0ELb0EED2Ev.exit
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 8 ; 2 uses
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !1929
  %i.aky = add i32 %i.akx, -1                     ; 2 uses
  store i32 %i.aky, ptr %i.akw, align 4, !tbaa !1929
  %i.akz = icmp eq i32 %i.aky, 0
  br i1 %i.akz, label %bb.el, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit

bb.el:                                            ; preds = %bb.ek
  %i.ala = load ptr, ptr %i.akv, align 8, !tbaa !921
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.alc = load ptr, ptr %i.alb, align 8
  call void %i.alc(ptr noundef nonnull align 8 dereferenceable(16) %i.akv) #27, !inline_history !1930
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt10unique_ptrIN5clang13DarwinSDKInfoESt14default_deleteIS2_EELb0ELb0EED2Ev.exit, %bb.ek, %bb.el
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ald)
  %i.ale = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !1931 ; 2 uses
  %i.alg = icmp eq i32 %i.alf, 0
  br i1 %i.alg, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit, label %bb.em

bb.em:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit
  %i.alh = load ptr, ptr %i.ald, align 8, !tbaa !1932
  %i.ali = zext i32 %i.alf to i64                 ; 2 uses
  %i.alj = shl nuw nsw i64 %i.ali, 5
  %i.alk = add nuw nsw i64 %i.ali, 31
  %i.all = lshr i64 %i.alk, 3
  %i.alm = and i64 %i.all, 1073741820
  %i.aln = add nuw nsw i64 %i.alm, %i.alj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.alh, i64 noundef %i.aln, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang18ExternalSemaSourceEED2Ev.exit, %bb.em
  %i.alo = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !1933 ; 2 uses
  %.not.i165 = icmp eq ptr %i.alp, null
  br i1 %.not.i165, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.en

bb.en:                                            ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.alr = call noundef zeroext i1 %i.alp(ptr noundef nonnull align 8 dereferenceable(32) %i.alq, ptr noundef nonnull align 8 dereferenceable(32) %i.alq, i32 noundef 3) #27, !inline_history !1934 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit, %bb.en
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void @_ZN5clang4sema21AnalysisBasedWarningsD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.als) #27
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @_ZN5clang9api_notes15APINotesManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.alt) #27
  %i.alu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !1465
  %i.alx = icmp eq i32 %i.alw, 0
  %.pre13.i.i = load ptr, ptr %i.alu, align 8, !tbaa !1462 ; 4 uses
  br i1 %i.alx, label %_ZN5clang13OpenCLOptionsD2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !1924 ; 2 uses
  %i.ama = zext i32 %i.alz to i64
  %.idx.i.i166 = shl nuw nsw i64 %i.ama, 3
  %i.amb = getelementptr inbounds nuw i8, ptr %.pre13.i.i, i64 %.idx.i.i166
  %.not11.i.i = icmp eq i32 %i.alz, 0
  br i1 %.not11.i.i, label %_ZN5clang13OpenCLOptionsD2Ev.exit, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %bb.eo, %bb.eq
  %.012.i.i = phi ptr [ %i.amf, %bb.eq ], [ %.pre13.i.i, %bb.eo ] ; 2 uses
  %i.amc = load ptr, ptr %.012.i.i, align 8, !tbaa !1451 ; 3 uses
  %.not10.i.i = icmp eq ptr %i.amc, null
  br i1 %.not10.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i167
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !1082
  %i.ame = add i64 %i.amd, 33
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.amc, i64 noundef %i.ame, i64 noundef 8) #27
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.lr.ph.i.i167
  %i.amf = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %.not.i.i168 = icmp eq ptr %i.amf, %i.amb
  br i1 %.not.i.i168, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i167

.loopexit.loopexit.i.i:                           ; preds = %bb.eq
  %.pre.i.i169 = load ptr, ptr %i.alu, align 8, !tbaa !1462
  br label %_ZN5clang13OpenCLOptionsD2Ev.exit

_ZN5clang13OpenCLOptionsD2Ev.exit:                ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.eo, %.loopexit.loopexit.i.i
  %i.amg = phi ptr [ %.pre.i.i169, %.loopexit.loopexit.i.i ], [ %.pre13.i.i, %bb.eo ], [ %.pre13.i.i, %_ZNSt14_Function_baseD2Ev.exit ]
  call void @free(ptr noundef %i.amg) #27
  %i.amh = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.amh) #27
  %i.ami = load ptr, ptr %i.c, align 8, !tbaa !1040 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.amk = icmp eq ptr %i.ami, %i.amj
  br i1 %i.amk, label %_ZN4llvm11SmallVectorIPN5clang4sema17FunctionScopeInfoELj4EED2Ev.exit, label %bb.er

bb.er:                                            ; preds = %_ZN5clang13OpenCLOptionsD2Ev.exit
  call void @free(ptr noundef %i.ami) #27
  br label %_ZN4llvm11SmallVectorIPN5clang4sema17FunctionScopeInfoELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4sema17FunctionScopeInfoELj4EED2Ev.exit: ; preds = %_ZN5clang13OpenCLOptionsD2Ev.exit, %bb.er
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !1826 ; 3 uses
  %.not.i170 = icmp eq ptr %i.amm, null
  br i1 %.not.i170, label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang4sema17FunctionScopeInfoEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5clang4sema17FunctionScopeInfoEEclEPS2_.exit.i: ; preds = %_ZN4llvm11SmallVectorIPN5clang4sema17FunctionScopeInfoELj4EED2Ev.exit
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !921
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.amp = load ptr, ptr %i.amo, align 8
  call void %i.amp(ptr noundef nonnull align 8 dereferenceable(1312) %i.amm) #27, !inline_history !1935
  br label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang4sema17FunctionScopeInfoELj4EED2Ev.exit, %_ZNKSt14default_deleteIN5clang4sema17FunctionScopeInfoEEclEPS2_.exit.i
  ret void

.lr.ph209:                                        ; preds = %._crit_edge203, %bb.ev
  %.sroa.0171.0207 = phi ptr [ %i.ana, %bb.ev ], [ %.sroa.0176.2, %._crit_edge203 ] ; 3 uses
  %i.amq = load ptr, ptr %.sroa.0171.0207, align 8, !tbaa !1833 ; 6 uses
  %i.amr = icmp eq ptr %i.amq, null
  br i1 %i.amr, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %.lr.ph209
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amq, i64 136
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !1040 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amq, i64 152
  %i.amv = icmp eq ptr %i.amt, %i.amu
  br i1 %i.amv, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @free(ptr noundef %i.amt) #27
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i: ; preds = %bb.et, %bb.es
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amq, i64 16
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !1040 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amq, i64 32
  %i.amz = icmp eq ptr %i.amx, %i.amy
  br i1 %i.amz, label %_ZN5clang22ConstraintSatisfactionD2Ev.exit, label %bb.eu

bb.eu:                                            ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i
  call void @free(ptr noundef %i.amx) #27
  br label %_ZN5clang22ConstraintSatisfactionD2Ev.exit

_ZN5clang22ConstraintSatisfactionD2Ev.exit:       ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i, %bb.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.amq, i64 noundef 184) #29
  br label %bb.ev

bb.ev:                                            ; preds = %_ZN5clang22ConstraintSatisfactionD2Ev.exit, %.lr.ph209
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0171.0207, i64 8
  %.not192 = icmp eq ptr %.sroa.0171.0207, %.pn
  br i1 %.not192, label %._crit_edge210, label %.lr.ph209
}

declare void @_ZN5clang4Sema14FreeVisContextEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN5clang12threadSafety19threadSafetyCleanupEPNS0_9BeforeSetE(ptr noundef) local_unnamed_addr #1

declare void @_ZN5clang10SemaOpenMP33DestroyDataSharingAttributesStackEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1936 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE17deallocateBucketsEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1937
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1938
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [336 x i8], ptr %i.d, i64 %i.o ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1040 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.r) #27
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1040 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN5clang46UnsubstitutedConstraintSatisfactionCacheResultD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i.i.i
  tail call void @free(ptr noundef %i.v) #27
  br label %_ZN5clang46UnsubstitutedConstraintSatisfactionCacheResultD2Ev.exit.i.i

_ZN5clang46UnsubstitutedConstraintSatisfactionCacheResultD2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i.i.i
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !1040 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5clang46UnsubstitutedConstraintSatisfactionCacheResultD2Ev.exit.i.i
  tail call void @free(ptr noundef %i.y) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.e, %_ZN5clang46UnsubstitutedConstraintSatisfactionCacheResultD2Ev.exit.i.i
  %i.ab = add i32 %.0.i5.i, -1
  %i.ac = and i32 %i.ab, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1939

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEv.exit, label %.lr.ph9.i, !llvm.loop !1940

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1936 ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1937
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 336
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S3_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_16FoldingSetNodeIDEN5clang46UnsubstitutedConstraintSatisfactionCacheResultENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E10destroyAllEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1941 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1942
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1943
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.q, align 8 ; 2 uses
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %.not3.i.i.i = icmp eq i64 %i.s, 0
  %.not.i.i.i = or i1 %.not.i.i.i.i.i, %.not3.i.i.i
  br i1 %.not.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1040 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.u) #27
  br label %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 48) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZN4llvm11SmallVectorIPN5clang11ParmVarDeclELj4EED2Ev.exit.i.i.i, %bb.b
  %i.x = add i32 %.0.i3.i, -1
  %i.y = and i32 %i.x, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1944

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1945

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1941 ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1942
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 4
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS3_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang11ParmVarDeclENS_13TinyPtrVectorIS4_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm14FoldingSetBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS1_14SourceLocationELj2ESt4lessIS5_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1946 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS1_14SourceLocationELj2ESt4lessIS5_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1947
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1948
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1949
  tail call void @_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !1040 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.u) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.x = add i32 %.0.i3.i, -1
  %i.y = and i32 %i.x, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1950

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1951

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1946 ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS1_14SourceLocationELj2ESt4lessIS5_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1947
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = mul nuw nsw i64 %i.ab, 80
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS1_14SourceLocationELj2ESt4lessIS5_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS1_14SourceLocationELj2ESt4lessIS5_EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoENS_8SmallSetINS2_14SourceLocationELj2ESt4lessIS6_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1952 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1953
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1954
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1040 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZN4llvm5APIntD2Ev.exit.i.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -16 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1909
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !1038 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #29
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.i.i

_ZN4llvm5APIntD2Ev.exit.i.i.i.i:                  ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1955

_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, %bb.b
  %i.ac = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  tail call void @free(ptr noundef %i.ac) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.e, %_ZN4llvm23SmallVectorTemplateBaseINS_6APSIntELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  %i.af = add i32 %.0.i3.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1956

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1957

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1952 ; 2 uses
  %i.ah = icmp eq i32 %.pr, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1953
  %i.aj = zext i32 %.pr to i64                    ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 72
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8EnumDeclENS_11SmallVectorINS_6APSIntELj3EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E10destroyAllEv.exit, %bb.f
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5clang18IdentifierResolverD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5clang4sema21AnalysisBasedWarningsD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5clang9api_notes15APINotesManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1041 ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not6.i = icmp eq i32 %i.d, 0
  br i1 %.not6.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.07.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1040
  %i.h = ptrtoint ptr %.07.i to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %sum.shift.i = lshr i64 %i.j, 10
  %i.k = trunc i64 %sum.shift.i to i32
  %i.l = and i32 %i.k, 33554431
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.l, i32 30)
  %.sroa.speculated.i.i = zext nneg i32 %i.m to i64
  %i.n = shl nuw nsw i64 4096, %.sroa.speculated.i.i
  %i.o = load ptr, ptr %.07.i, align 8, !tbaa !1043
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.o, i64 noundef %i.n, i64 noundef 16) #27
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, label %.lr.ph.i, !llvm.loop !1958

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1040 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1041 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, label %.lr.ph.i1

.lr.ph.i1:                                        ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit, %.lr.ph.i1
  %.011.i = phi ptr [ %i.z, %.lr.ph.i1 ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 3 uses
  %i.w = load ptr, ptr %.011.i, align 8, !tbaa !1959
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1961
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.w, i64 noundef %i.y, i64 noundef 16) #27
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 16 ; 2 uses
  %.not.i2 = icmp eq ptr %i.z, %i.v
  br i1 %.not.i2, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, label %.lr.ph.i1

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit: ; preds = %.lr.ph.i1
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !1040
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit
  %i.aa = phi ptr [ %.pre, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit ], [ %i.r, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit
  tail call void @free(ptr noundef %i.aa) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit, %bb.b
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #27
  br label %_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit

_ZN4llvm11SmallVectorIPvLj4EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema27runWithSufficientStackSpaceENS_14SourceLocationEN4llvm12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @_ZN5clang22StackExhaustionHandler27runWithSufficientStackSpaceENS_14SourceLocationEN4llvm12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(9) %i.a, i32 %1, ptr %2, i64 %3) #27
  ret void
}

declare void @_ZN5clang22StackExhaustionHandler27runWithSufficientStackSpaceENS_14SourceLocationEN4llvm12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(9), i32, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema29makeUnavailableInSystemHeaderENS_14SourceLocationENS_15UnavailableAttr14ImplicitReasonE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1962 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 127
  %i.f = add nsw i16 %i.e, -41
  %i.g = icmp ult i16 %i.f, -6
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -72 ; 2 uses
  br i1 %i.g, label %_ZNK5clang13SourceManager16isInSystemHeaderENS_14SourceLocationE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit, label %bb.d, !prof !1458

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3136
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3133
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3127
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !926
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !926
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3137
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1453
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1453
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E22findBucketForInsertionIS5_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E15LookupBucketForIS5_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3127, !noalias !3138 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3133, !noalias !3138 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3134, !noalias !3138 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1453   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !926
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2209

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1453
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1458

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2210, !llvm.loop !3135

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3136
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.873", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3134
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3127
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3133
  store i32 0, ptr %i.p, align 16, !tbaa !3137
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1043
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !1043
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !1043
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1043
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !926
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !926
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !926
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !926
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !3134 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !3127
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 4
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3127
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3133
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3134 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3133 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3127
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3134
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !926  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5clang12Preprocessor10MacroStateD2Ev.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.bs, %_ZN5clang12Preprocessor10MacroStateD2Ev.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1453 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !926
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !3143

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !1453
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8
  store i64 %i.av, ptr %i.at, align 8
  store i64 0, ptr %i.au, align 8
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !926
  %i.az = or i32 %i.ay, %i.aw
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !926
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.au, align 8 ; 2 uses
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i, -5 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %.not4.i = icmp eq i64 %i.bb, 0
  %.not.i7 = or i1 %.not.i.i.i, %.not4.i
  br i1 %.not.i7, label %_ZN5clang12Preprocessor10MacroStateD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bd, align 8 ; 2 uses
  %i.be = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.be, 0
  %i.bf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  %.not3.i.i.i = icmp eq i64 %i.bf, 0
  %.not.i.i3.i = or i1 %.not.i.i.i.i.i, %.not3.i.i.i
  br i1 %.not.i.i3.i, label %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1040 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.bh) #27
  br label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 48) #29
  br label %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i

_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i, %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.0.0.copyload.i.i.i.i1.i.i = load i64, ptr %i.bk, align 8 ; 2 uses
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i.i1.i.i, 4
  %.not.i.i.i2.i.i = icmp eq i64 %i.bl, 0
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i.i1.i.i, -5 ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr               ; 3 uses
  %.not3.i3.i.i = icmp eq i64 %i.bm, 0
  %.not.i4.i.i = or i1 %.not.i.i.i2.i.i, %.not3.i3.i.i
  br i1 %.not.i4.i.i, label %_ZN5clang12Preprocessor10MacroStateD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1040 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.bo) #27
  br label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i

_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 48) #29
  br label %_ZN5clang12Preprocessor10MacroStateD2Ev.exit

_ZN5clang12Preprocessor10MacroStateD2Ev.exit:     ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E8moveFromERSD_ENKUljE_clEj.exit, %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i, %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i
  %i.br = add i32 %.0.i18, -1
  %i.bs = and i32 %i.br, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bs, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3144

._crit_edge:                                      ; preds = %_ZN5clang12Preprocessor10MacroStateD2Ev.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !3145

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3134
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bt = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !3137
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !3137
  %i.bx = icmp eq i32 %i.bt, 0
  br i1 %i.bx, label %_ZN4llvm8DenseMapIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.by = load ptr, ptr %1, align 8, !tbaa !3127
  %i.bz = zext i32 %i.bt to i64                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = add nuw nsw i64 %i.bz, 31
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = and i64 %i.cc, 1073741820
  %i.ce = add nuw nsw i64 %i.cd, %i.ca
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.by, i64 noundef %i.ce, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !3134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang14IdentifierInfoENS1_12Preprocessor10MacroStateENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS2_12Preprocessor10MacroStateENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S7_EEEES5_S7_S9_SC_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3134 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph8.preheader

.lr.ph8.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !3127
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3133
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.lr.ph8.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph8.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i3 = icmp eq i32 %i.k, 0
  br i1 %.not11.i3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph8
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5clang12Preprocessor10MacroStateD2Ev.exit
  %.0.i4 = phi i32 [ %i.k, %.lr.ph ], [ %i.aj, %_ZN5clang12Preprocessor10MacroStateD2Ev.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i4, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.q, align 8 ; 2 uses
  %i.r = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.r, 0
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.not4.i = icmp eq i64 %i.s, 0
  %.not.i2 = or i1 %.not.i.i.i, %.not4.i
  br i1 %.not.i2, label %_ZN5clang12Preprocessor10MacroStateD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.u, align 8 ; 2 uses
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.v, 0
  %i.w = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -5 ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %.not3.i.i.i = icmp eq i64 %i.w, 0
  %.not.i.i3.i = or i1 %.not.i.i.i.i.i, %.not3.i.i.i
  br i1 %.not.i.i3.i, label %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1040 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.y) #27
  br label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 48) #29
  br label %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i

_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i: ; preds = %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i.i.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i.i1.i.i = load i64, ptr %i.ab, align 8 ; 2 uses
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i1.i.i, 4
  %.not.i.i.i2.i.i = icmp eq i64 %i.ac, 0
  %i.ad = and i64 %.sroa.0.0.copyload.i.i.i.i1.i.i, -5 ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %.not3.i3.i.i = icmp eq i64 %i.ad, 0
  %.not.i4.i.i = or i1 %.not.i.i.i2.i.i, %.not3.i3.i.i
  br i1 %.not.i4.i.i, label %_ZN5clang12Preprocessor10MacroStateD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1040 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.af) #27
  br label %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i

_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 48) #29
  br label %_ZN5clang12Preprocessor10MacroStateD2Ev.exit

_ZN5clang12Preprocessor10MacroStateD2Ev.exit:     ; preds = %bb.b, %_ZN4llvm13TinyPtrVectorIPN5clang11ModuleMacroEED2Ev.exit.i.i, %_ZN4llvm11SmallVectorIPN5clang11ModuleMacroELj4EED2Ev.exit.i5.i.i
  %i.ai = add i32 %.0.i4, -1
  %i.aj = and i32 %i.ai, %.0.i4                   ; 2 uses
  %.not11.i = icmp eq i32 %i.aj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3146

._crit_edge:                                      ; preds = %_ZN5clang12Preprocessor10MacroStateD2Ev.exit, %.lr.ph8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph8, !llvm.loop !3147

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang14IdentifierInfoENS5_12Preprocessor10MacroStateENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_SA_EEEES8_SA_SC_SF_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang12Preprocessor10MacroState17getFullModuleInfoERS0_PKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = and i64 %i.a, 68719476736
  %.not24 = icmp eq i64 %i.b, 0
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang12Preprocessor25updateOutOfDateIdentifierERKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #27
  %.pre = load i64, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i64 [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.d = and i64 %i.c, 33554432
  %.not25 = icmp eq i64 %i.d, 0
  br i1 %.not25, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1501, !nonnull !696, !align !697
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 18015498021109760
  %or.cond = icmp eq i64 %i.i, 0
  br i1 %or.cond, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1712 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3110
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3148 ; 2 uses
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.n, 0
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i, -5    ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %.not2226 = icmp eq i64 %i.o, 0
  %.not22 = or i1 %.not.i.i, %.not2226
  br i1 %.not22, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1456
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 15
  %i.u = and i64 %i.t, -16                        ; 2 uses
  %i.v = add i64 %i.u, 32                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1457
  %i.y = icmp ult i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i, !prof !1458

bb.h:                                             ; preds = %bb.g
  %i.z = inttoptr i64 %i.v to ptr
  store ptr %i.z, ptr %i.q, align 8, !tbaa !1456
  %i.aa = inttoptr i64 %i.u to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.q, i64 noundef 32, i64 noundef 32, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.ab, %bb.i ] ; 7 uses
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i, -5
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %.0.i.i.i, align 8, !tbaa !3111
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 0, ptr %i.af, align 8, !tbaa !3149
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i8 0, ptr %i.ag, align 4, !tbaa !3125
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i64 0, ptr %i.ah, align 8
  %i.ai = ptrtoint ptr %.0.i.i.i to i64
  %i.aj = or i64 %i.ai, 4
  store i64 %i.aj, ptr %0, align 8
  %.pre27 = load ptr, ptr %i.j, align 8, !tbaa !3110
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre27, i64 48
  %.pre28 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !3148
  br label %bb.j

bb.j:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit, %bb.f
  %i.ak = phi i32 [ %i.m, %bb.f ], [ %.pre28, %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit ]
  %.0 = phi ptr [ %i.p, %bb.f ], [ %.0.i.i.i, %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !3149
  %.not23 = icmp eq i32 %i.ak, %i.am
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5clang12Preprocessor21updateModuleMacroInfoEPKNS_14IdentifierInfoERNS0_19FullModuleMacroInfoE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %.0) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.j, %bb.k, %bb.c, %bb.e
  %.018 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ %.0, %bb.k ], [ %.0, %bb.j ]
  ret ptr %.018
}

declare void @_ZNK5clang12Preprocessor25updateOutOfDateIdentifierERKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(3344), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN5clang12Preprocessor21updateModuleMacroInfoEPKNS_14IdentifierInfoERNS0_19FullModuleMacroInfoE(ptr noundef nonnull align 8 dereferenceable(3344), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare { ptr, i64 } @_ZN5clang14MacroDirective13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZNK5clang10ASTContext19buildImplicitRecordEN4llvm9StringRefENS_11TagTypeKindE(ptr noundef nonnull align 8 dereferenceable(23904), ptr, i64, i32 noundef) local_unnamed_addr #1
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSA_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !1458

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3186
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2545
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2529
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !926
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !926
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3187
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2534
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2534
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 0, ptr %i.bi, align 8, !tbaa !2151
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2529, !noalias !3188 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2545, !noalias !3188 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2526, !noalias !3188 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2534   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !926
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2209

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2534
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1458

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2210, !llvm.loop !3185

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3186
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2028", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2526
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2529
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2545
  store i32 0, ptr %i.p, align 16, !tbaa !3187
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1043
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3186
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1043
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1043
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1043
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !926 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !926
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !926
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !926
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !926
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2529   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2545
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2526 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2545 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2529
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2526
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !926  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2534 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !926 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !3193

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2534
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !2151, !range !701, !noundef !696
  store i8 %i.aw, ptr %i.au, align 8, !tbaa !2151
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !926
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3194

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_bEEEES5_bS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3195

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2526
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3187
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3187
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !2526
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEE4killEv.exit

_ZN4llvm8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKN5clang13CXXRecordDeclEbNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_bEEEES8_bSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE18growAndEmplaceBackIJRS3_S4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(20) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1041
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !926
  store i32 %i.h, ptr %i.g, align 8, !tbaa !926
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !2216
  store i32 %i.l, ptr %i.j, align 8, !tbaa !2216
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !1043
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !1043
  store ptr null, ptr %2, align 8, !tbaa !1982
  %i.n = load ptr, ptr %0, align 8, !tbaa !1040   ; 7 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !1041 ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.p, 5               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE19moveElementsForGrowEPS5_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %i.r = add nsw i64 %.idx.i, -32                 ; 2 uses
  %i.s = and i64 %i.r, 32
  %lcmp.mod.not.not = icmp eq i64 %i.s, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.t = load i32, ptr %i.n, align 8, !tbaa !926
  store i32 %i.t, ptr %i.c, align 8, !tbaa !926
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !2216
  store i32 %i.y, ptr %i.w, align 8, !tbaa !2216
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !1043
  store <2 x ptr> %i.z, ptr %i.u, align 8, !tbaa !1043
  store ptr null, ptr %i.v, align 8, !tbaa !1982
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ac = icmp eq i64 %i.r, 0
  br i1 %i.ac, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ad = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !926
  store i32 %i.ad, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !926
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !2216
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !2216
  %i.aj = load <2 x ptr>, ptr %i.af, align 8, !tbaa !1043
  store <2 x ptr> %i.aj, ptr %i.ae, align 8, !tbaa !1043
  store ptr null, ptr %i.af, align 8, !tbaa !1982
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !926
  store i32 %i.am, ptr %i.al, align 8, !tbaa !926
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.an, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !2216
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !2216
  %i.as = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !1043
  store <2 x ptr> %i.as, ptr %i.an, align 8, !tbaa !1043
  store ptr null, ptr %i.ao, align 8, !tbaa !1982
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.at, %i.q
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3196

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1040 ; 3 uses
  %.pre4.i = load i32, ptr %i.d, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre4.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE19moveElementsForGrowEPS5_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE18uninitialized_moveIPS5_S8_EEvT_S9_T0_.exit.i
  %i.av = zext i32 %.pre4.i to i64
  %.idx3.i = shl nuw nsw i64 %i.av, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx3.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ax, %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i ], [ %i.aw, %.lr.ph.i.preheader.i ] ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E24lookupOrInsertIntoBucketIS6_JEEESt4pairIPSF_bEOT_DpOT0_:bb.a
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E15LookupBucketForIS6_EEbRKT_RPSF_.exit, label %bb.c, !prof !1458

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !926
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !2210, !llvm.loop !3239

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3240
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3241
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E22findBucketForInsertionIS6_EEPSF_RKT_SJ_.exit, label %bb.d, !prof !1458

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E15LookupBucketForIS6_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3240
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2669
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2661
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E22findBucketForInsertionIS6_EEPSF_RKT_SJ_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E22findBucketForInsertionIS6_EEPSF_RKT_SJ_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 7 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 40                ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !926
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !926
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3241
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %1, align 8, !tbaa !2421
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !2421
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1040
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !1041
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 1, ptr %i.bl, align 4, !tbaa !1042
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E15LookupBucketForIS6_EEbRKT_RPSF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E15LookupBucketForIS6_EEbRKT_RPSF_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E22findBucketForInsertionIS6_EEPSF_RKT_SJ_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E22findBucketForInsertionIS6_EEPSF_RKT_SJ_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E22findBucketForInsertionIS6_EEPSF_RKT_SJ_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E15LookupBucketForIS6_EEbRKT_RPSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2661, !noalias !3242 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2669, !noalias !3242 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2670, !noalias !3242 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !924    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !926
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2209

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !924
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1458

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2210, !llvm.loop !3239

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3240
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2122", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2670
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 40                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2661
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2669
  store i32 0, ptr %i.p, align 16, !tbaa !3241
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !3240   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1046 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !1043
  store ptr %i.z, ptr %2, align 16, !tbaa !3240
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !1043
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1046
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !926
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !926
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !926
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !926
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !926 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1040 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !3247

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !3248

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !2670 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !2661
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 40
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2661
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2669
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2670 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2669 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2661
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2670
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !926  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.bu, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !926
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3249

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %.lcssa12.i ; 6 uses
  store i64 %i.w, ptr %i.as, align 8, !tbaa !2421
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !1040
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !1041
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 20 ; 2 uses
  store i32 1, ptr %i.aw, align 4, !tbaa !1042
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1041 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ba = icmp eq ptr %i.as, %i.u
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !1040 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.e, label %_ZN4llvm15SmallVectorImplIN5clang8SemaCUDA18FunctionDeclAndLocEE12assignRemoteEOS4_.exit.i

_ZN4llvm15SmallVectorImplIN5clang8SemaCUDA18FunctionDeclAndLocEE12assignRemoteEOS4_.exit.i: ; preds = %bb.d
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !1040
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !1041
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !1042
  store i32 %i.bf, ptr %i.aw, align 4, !tbaa !1042
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !1040
  store i32 0, ptr %i.be, align 4, !tbaa !1042
  br label %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i.sink.split

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.ay, 1
  br i1 %.not, label %_ZSt4moveIPN5clang8SemaCUDA18FunctionDeclAndLocES3_ET0_T_S5_S4_.exit34.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = zext i32 %i.ay to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull %i.au, i64 noundef %i.bg, i64 noundef 16) #27
  br label %_ZSt4moveIPN5clang8SemaCUDA18FunctionDeclAndLocES3_ET0_T_S5_S4_.exit34.i

_ZSt4moveIPN5clang8SemaCUDA18FunctionDeclAndLocES3_ET0_T_S5_S4_.exit34.i: ; preds = %bb.e, %bb.f
  %i.bh = load i32, ptr %i.ax, align 8, !tbaa !1041 ; 2 uses
  %.not.i.i.i9 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8SemaCUDA18FunctionDeclAndLocELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt4moveIPN5clang8SemaCUDA18FunctionDeclAndLocES3_ET0_T_S5_S4_.exit34.i
  %i.bi = zext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !1040
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !1040
  %gepdiff.i = shl nuw nsw i64 %i.bi, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 8 %i.bj, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang8SemaCUDA18FunctionDeclAndLocELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang8SemaCUDA18FunctionDeclAndLocELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i: ; preds = %bb.g, %_ZSt4moveIPN5clang8SemaCUDA18FunctionDeclAndLocES3_ET0_T_S5_S4_.exit34.i
  store i32 %i.ay, ptr %i.av, align 8, !tbaa !1041
  br label %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i.sink.split

_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIN5clang8SemaCUDA18FunctionDeclAndLocEE12assignRemoteEOS4_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang8SemaCUDA18FunctionDeclAndLocELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i
  store i32 0, ptr %i.ax, align 8, !tbaa !1041
  br label %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i

_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i: ; preds = %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !926
  %i.bo = or i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !926
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1040 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i
  tail call void @free(ptr noundef %i.bq) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang8SemaCUDA18FunctionDeclAndLocELj1EEC2EOS4_.exit.i, %bb.h
  %i.bt = add i32 %.0.i16, -1
  %i.bu = and i32 %i.bt, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bu, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3250

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E8moveFromERSG_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3251

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2670
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bv = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !3241
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !3241
  %i.bz = icmp eq i32 %i.bv, 0
  br i1 %i.bz, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !2661
  %i.cb = zext i32 %i.bv to i64                   ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 40
  %i.cd = add nuw nsw i64 %i.cb, 31
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = and i64 %i.ce, 1073741820
  %i.cg = add nuw nsw i64 %i.cf, %i.cc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ca, i64 noundef %i.cg, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !2670
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_11SmallVectorINS5_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SD_EEEES9_SD_SF_SI_E8moveFromERSJ_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8SemaCUDA18FunctionDeclAndLocELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !1040
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1041
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2225, !noalias !3252 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3257, !noalias !3252 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2224, !noalias !3252 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !924    ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSC_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3260
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit, label %bb.d, !prof !1458

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3259
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3257
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !2225
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !926
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !926
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3260
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %1, align 8, !tbaa !2421
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !2421
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E22findBucketForInsertionIS6_EEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E15LookupBucketForIS6_EEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2225, !noalias !3261 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3257, !noalias !3261 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2224, !noalias !3261 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !924    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !926
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2209

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !924
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1458

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2210, !llvm.loop !3258

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3259
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.2111", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2224
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2225
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3257
  store i32 0, ptr %i.p, align 16, !tbaa !3260
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1043
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3259
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1043
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1043
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1043
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !926 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !926
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !926
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !926
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !926
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2225   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3257
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3257 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2225
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2224
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !926  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !926 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, !llvm.loop !3266

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store i64 %i.w, ptr %i.at, align 8, !tbaa !2421
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !926
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3267

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3268

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2224
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3260
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !3260
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !2224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS9_vEENSA_12DenseSetPairIS9_EEEES9_SB_SD_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !1040
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1041
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang16CanonicalDeclPtrINS1_12FunctionDeclEEELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !1040
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1041
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang15UsedDeclVisitorIN12_GLOBAL__N_126DeferredDiagnosticsEmitterEE15VisitMemberExprEPNS_10MemberExprE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3269 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 127
  %i.f = add nsw i32 %i.e, -35
  %i.g = icmp ult i32 %i.f, 6
  br i1 %i.g, label %bb.b, label %_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter13visitUsedDeclEN5clang14SourceLocationEPNS1_4DeclE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !tbaa !926
  tail call fastcc void @_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter9checkFuncEN5clang14SourceLocationEPNS1_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 %.sroa.0.0.copyload.i, ptr noundef %i.b), !inline_history !3271
  br label %_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter13visitUsedDeclEN5clang14SourceLocationEPNS1_4DeclE.exit

_ZN12_GLOBAL__N_126DeferredDiagnosticsEmitter13visitUsedDeclEN5clang14SourceLocationEPNS1_4DeclE.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3272
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_126DeferredDiagnosticsEmitterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.j)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang24EvaluatedExprVisitorBaseISt11add_pointerN12_GLOBAL__N_126DeferredDiagnosticsEmitterEE15VisitLambdaExprEPNS_10LambdaExprE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i16, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i16 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not10 = icmp eq i16 %i.c, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.011, align 8, !tbaa !3273 ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_126DeferredDiagnosticsEmitterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.f)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3274
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang15UsedDeclVisitorIN12_GLOBAL__N_126DeferredDiagnosticsEmitterEE17VisitInitListExprEPNS_12InitListExprE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -3 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i1 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr
  tail call fastcc void @_ZN5clang15StmtVisitorBaseISt11add_pointerN12_GLOBAL__N_126DeferredDiagnosticsEmitterEvJEE5VisitEPNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.g)
  br label %bb.c

end_hunk_6
begin_hunk_7_@_ZL13noteOverloadsRN5clang4SemaERKNS_17UnresolvedSetImplENS_14SourceLocationE:bb.a
.critedge:                                        ; preds = %bb.m, %bb.l, %bb.k, %_ZNK5clang4Decl7hasAttrINS_10TargetAttrEEEbv.exit.thread4, %_ZNK5clang4Decl7hasAttrINS_17TargetVersionAttrEEEbv.exit, %_ZNK5clang17TargetVersionAttr16isDefaultVersionEv.exit, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i24, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.ed, align 8, !tbaa !926
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 %.sroa.0.0.copyload.i, i32 noundef 6440) #27
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #27
  %i.ee = add i32 %.024, 1
  br label %_ZNK5clang10TargetAttr16isDefaultVersionEv.exit.thread

_ZNK5clang10TargetAttr16isDefaultVersionEv.exit.thread: ; preds = %_ZNK5clang4Decl7getAttrINS_17TargetVersionAttrEEEPT_v.exit, %_ZNK5clang4Decl7getAttrINS_10TargetAttrEEEPT_v.exit, %.critedge, %_ZNK5clang17TargetVersionAttr16isDefaultVersionEv.exit, %_ZNK5clang10TargetAttr16isDefaultVersionEv.exit, %bb.c
  %i.ef = phi i32 [ %i.t, %bb.c ], [ %i.m, %.critedge ], [ %i.m, %_ZNK5clang17TargetVersionAttr16isDefaultVersionEv.exit ], [ %i.m, %_ZNK5clang10TargetAttr16isDefaultVersionEv.exit ], [ %i.m, %_ZNK5clang4Decl7getAttrINS_10TargetAttrEEEPT_v.exit ], [ %i.m, %_ZNK5clang4Decl7getAttrINS_17TargetVersionAttrEEEPT_v.exit ] ; 2 uses
  %.2 = phi i32 [ %.024, %bb.c ], [ %i.ee, %.critedge ], [ %.024, %_ZNK5clang17TargetVersionAttr16isDefaultVersionEv.exit ], [ %.024, %_ZNK5clang10TargetAttr16isDefaultVersionEv.exit ], [ %.024, %_ZNK5clang4Decl7getAttrINS_10TargetAttrEEEPT_v.exit ], [ %.024, %_ZNK5clang4Decl7getAttrINS_17TargetVersionAttrEEEPT_v.exit ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.01.023, i64 8 ; 2 uses
  %.not10 = icmp eq ptr %i.eg, %i.c
  br i1 %.not10, label %._crit_edge, label %bb.b, !llvm.loop !3335

bb.o:                                             ; preds = %.split, %_ZN5clang17DiagnosticsEngine23overloadCandidatesShownEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 %1, i32 noundef 6427) #27
  %i.ei = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZN5clang17DiagnosticsEngine23overloadCandidatesShownEj.exit.thread

_ZN5clang17DiagnosticsEngine23overloadCandidatesShownEj.exit.thread: ; preds = %bb.a, %.split, %bb.o, %_ZN5clang17DiagnosticsEngine23overloadCandidatesShownEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIjEERKNS_8SemaBase21SemaDiagnosticBuilderES4_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !907, !range !701, !noundef !696
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !926
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !1982 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZN5clanglsIjEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1986
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !1982
  br label %_ZN5clanglsIjEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit

_ZN5clanglsIjEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !1987
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 3, ptr %i.o, align 1, !tbaa !1038
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1982 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !1987  ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !1987
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !1780
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !909, !range !701, !noundef !696
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !911 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !921
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #27, !inline_history !1999
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !924
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !926
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !927
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !926
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !1982 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1986
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !1982
  br label %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = zext i32 %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !1987
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 3, ptr %i.ay, align 1, !tbaa !1038
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !1982 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !1987 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !1987
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !1780
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIjEERKS0_RKT_.exit, %_ZN5clanglsIjEERKNS_8SemaBase20ImmediateDiagBuilderES4_RKT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Decl13getAsFunctionEv(ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #10

declare noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #1

declare void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8), i64) unnamed_addr #1

declare void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef) local_unnamed_addr #1

declare void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !1040
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1041
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1055 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1057
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1058
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.l = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.af, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1059, !range !701, !noundef !696
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !1059
  br i1 %i.s, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.u = load i32, ptr %i.t, align 4, !tbaa !1061 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1064
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 5
  %i.aa = add nuw nsw i64 %i.y, 31
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741820
  %i.ad = add nuw nsw i64 %i.ac, %i.z
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 4) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.ae = add i32 %.0.i3.i, -1
  %i.af = and i32 %i.ae, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1065

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1067

_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1055 ; 2 uses
  %i.ag = icmp eq i32 %.pr, 0
  br i1 %i.ag, label %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !1057
  %i.ai = zext i32 %.pr to i64                    ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 104
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ah, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImSt8optionalIN5clang13DarwinSDKInfo27RelatedTargetVersionMappingEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11SmallVectorIN5clang13DarwinSDKInfo15SDKPlatformInfoELj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(672) dereferenceable(672) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1040   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1041 ; 2 uses
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 328
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i
  %.05.i = phi ptr [ %i.f, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i ], [ %i.e, %.lr.ph.i.preheader ] ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %.05.i, i64 -328 ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1030 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !1038
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !1040 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.05.i, i64 -320
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = zext i32 %i.o to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.p, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm6TripleD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZN4llvm6TripleD2Ev.exit.i.i.i.i ], [ %i.q, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -56 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1030 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -40 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm6TripleD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !1038
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZN4llvm6TripleD2Ev.exit.i.i.i.i

_ZN4llvm6TripleD2Ev.exit.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.r
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3336

_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm6TripleD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.x = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i, i64 -312
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  tail call void @free(ptr noundef %i.x) #27
  br label %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i

_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i: ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  %.not.i = icmp eq ptr %i.a, %i.f
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3337

_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit: ; preds = %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit, %bb.a
  %i.aa = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4llvm15SmallVectorImplIN5clang13DarwinSDKInfo15SDKPlatformInfoEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit
  tail call void @free(ptr noundef %i.aa) #27
  br label %_ZN4llvm15SmallVectorImplIN5clang13DarwinSDKInfo15SDKPlatformInfoEED2Ev.exit

_ZN4llvm15SmallVectorImplIN5clang13DarwinSDKInfo15SDKPlatformInfoEED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang13DarwinSDKInfo15SDKPlatformInfoEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !1040   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorImplIN5clang13DarwinSDKInfo15SDKPlatformInfoEE12assignRemoteEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1041 ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1041 ; 4 uses
  %i.k = zext i32 %i.j to i64                     ; 4 uses
  %.not = icmp ult i32 %i.j, %i.g
  br i1 %.not, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !1040   ; 3 uses
  %.not33 = icmp eq i32 %i.g, 0
  br i1 %.not33, label %_ZSt4moveIPN5clang13DarwinSDKInfo15SDKPlatformInfoES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoaSEOS1_.exit.i.i.i.i.i
  %.014.i.i.i.i.i = phi i64 [ %i.aq, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoaSEOS1_.exit.i.i.i.i.i ], [ %i.h, %bb.e ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %i.ap, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoaSEOS1_.exit.i.i.i.i.i ], [ %i.l, %bb.e ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ao, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoaSEOS1_.exit.i.i.i.i.i ], [ %i.c, %bb.e ] ; 9 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_6TripleEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(328) %.0812.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.0910.i.i.i.i.i) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 296 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 296 ; 4 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !1030 ; 6 uses
end_hunk_7
begin_hunk_8_@_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE4growEm:bb.a

_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE21takeAllocationForGrowEPS1_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE19moveElementsForGrowEPS1_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !1040
  %i.aj = trunc i64 %i.ah to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !1042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE19moveElementsForGrowEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1040   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1041 ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 328
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not7.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt10_ConstructIN5clang13DarwinSDKInfo15SDKPlatformInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN5clang13DarwinSDKInfo15SDKPlatformInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %bb.a ] ; 9 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN5clang13DarwinSDKInfo15SDKPlatformInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr %i.f, ptr %.09.i.i.i.i.i, align 8, !tbaa !1040
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !1041
  %i.h = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12
  store i32 5, ptr %i.h, align 4, !tbaa !1042
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1041
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_6TripleELj5EEC2EOS2_.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_6TripleEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(328) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.04.08.i.i.i.i.i) ; 0 uses
  br label %_ZN4llvm11SmallVectorINS_6TripleELj5EEC2EOS2_.exit.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorINS_6TripleELj5EEC2EOS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 296 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 296 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 312 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !1037
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1030 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 312 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_6TripleELj5EEC2EOS2_.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 304
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1031 ; 2 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false)
  br label %_ZSt10_ConstructIN5clang13DarwinSDKInfo15SDKPlatformInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm11SmallVectorINS_6TripleELj5EEC2EOS2_.exit.i.i.i.i.i.i.i
  store ptr %i.o, ptr %i.l, align 8, !tbaa !1030
  %i.v = load i64, ptr %i.p, align 8, !tbaa !1038
  store i64 %i.v, ptr %i.n, align 8, !tbaa !1038
  br label %_ZSt10_ConstructIN5clang13DarwinSDKInfo15SDKPlatformInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5clang13DarwinSDKInfo15SDKPlatformInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 304 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1031
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 304
  store i64 %i.x, ptr %i.y, align 8, !tbaa !1031
  store ptr %i.p, ptr %i.m, align 8, !tbaa !1030
  store i64 0, ptr %i.w, align 8, !tbaa !1031
  store i8 0, ptr %i.p, align 8, !tbaa !1038
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 328 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 328
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3339

_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt10_ConstructIN5clang13DarwinSDKInfo15SDKPlatformInfoEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1040  ; 2 uses
  %.pre3 = load i32, ptr %i.b, align 8, !tbaa !1041 ; 2 uses
  %.not4.i = icmp eq i32 %.pre3, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit
  %i.ab = zext i32 %.pre3 to i64
  %.idx2 = mul nuw nsw i64 %i.ab, 328
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i
  %.05.i = phi ptr [ %i.ad, %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i ], [ %i.ac, %.lr.ph.i.preheader ] ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i, i64 -328 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1030 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !1038
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !1040 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i, i64 -320
  %i.am = load i32, ptr %i.al, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.an = zext i32 %i.am to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.an, 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm6TripleD2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ap, %_ZN4llvm6TripleD2Ev.exit.i.i.i.i ], [ %i.ao, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -56 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1030 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -40 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN4llvm6TripleD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !1038
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #29
  br label %_ZN4llvm6TripleD2Ev.exit.i.i.i.i

_ZN4llvm6TripleD2Ev.exit.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.ap
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3336

_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm6TripleD2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.av = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i.i ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i, i64 -312
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  tail call void @free(ptr noundef %i.av) #27
  br label %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i

_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseINS_6TripleELb0EE13destroy_rangeEPS1_S3_.exit.i.i.i
  %.not.i = icmp eq ptr %.pre, %i.ad
  br i1 %.not.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit, label %.lr.ph.i, !llvm.loop !3337

_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE13destroy_rangeEPS3_S5_.exit: ; preds = %_ZN5clang13DarwinSDKInfo15SDKPlatformInfoD2Ev.exit.i, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseIN5clang13DarwinSDKInfo15SDKPlatformInfoELb0EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit
  ret void
}

declare void @_ZN5clang10SemaAMDGPUC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang7SemaARMC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang7SemaAVRC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang7SemaBPFC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang18SemaCodeCompletionC1ERNS_4SemaEPNS_20CodeCompleteConsumerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) unnamed_addr #1

declare void @_ZN5clang8SemaCUDAC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN5clang8SemaCUDAEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !2670 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !2661
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2669
  %i.i = zext i32 %i.d to i64
  %i.j = add nuw nsw i64 %i.i, 31
  %i.k = lshr i64 %i.j, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !926  ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.n = shl i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i ], [ %i.x, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.p = or disjoint i32 %i.o, %i.n
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1040 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.t) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.w = add i32 %.0.i3.i.i.i, -1
  %i.x = and i32 %i.w, %.0.i3.i.i.i               ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !3247

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.k
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !3248

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.c, align 4, !tbaa !2670 ; 2 uses
  %i.y = icmp eq i32 %.pr.i.i, 0
  br i1 %i.y, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i.i
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !2661
  %i.aa = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.ab = mul nuw nsw i64 %i.aa, 40
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit.i

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit.i: ; preds = %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEENS_11SmallVectorINS2_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SA_EEEES6_SA_SC_SF_E10destroyAllEv.exit.i.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3342 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN5clang8SemaCUDAD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3345
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #27
  br label %_ZN5clang8SemaCUDAD2Ev.exit

_ZN5clang8SemaCUDAD2Ev.exit:                      ; preds = %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEENS_11SmallVectorINS1_8SemaCUDA18FunctionDeclAndLocELj1EEENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S9_EEED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 80) #29
  br label %bb.g

bb.g:                                             ; preds = %_ZN5clang8SemaCUDAD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN5clang11SemaDirectXC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang8SemaHLSLC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(273), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang8SemaHLSLD2Ev(ptr noundef nonnull align 8 dead_on_return(273) dereferenceable(273) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPN5clang4DeclELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorIPN5clang4DeclELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4DeclELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3346 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN4llvm8DenseMapIPKN5clang7VarDeclEPKNS1_15DeclBindingInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4DeclELj6EED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3349
  %i.j = zext i32 %i.f to i64                     ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 1073741820
  %i.o = add nuw nsw i64 %i.n, %i.k
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.i, i64 noundef %i.o, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang7VarDeclEPKNS1_15DeclBindingInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang7VarDeclEPKNS1_15DeclBindingInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang4DeclELj6EED2Ev.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3350 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang7VarDeclEPKNS1_15DeclBindingInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3351
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm8DenseMapIPKN5clang7VarDeclEPKNS1_15DeclBindingInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !1040 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN5clang16ResourceBindingsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i
  tail call void @free(ptr noundef %i.ab) #27
  br label %_ZN5clang16ResourceBindingsD2Ev.exit

_ZN5clang16ResourceBindingsD2Ev.exit:             ; preds = %_ZN4llvm8DenseMapIPKN5clang7VarDeclEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3352 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm8DenseMapIPKN5clang26HLSLAttributedResourceTypeENS1_29HLSLAttributedResourceLocInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5clang16ResourceBindingsD2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3355
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 24
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPKN5clang26HLSLAttributedResourceTypeENS1_29HLSLAttributedResourceLocInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang26HLSLAttributedResourceTypeENS1_29HLSLAttributedResourceLocInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit: ; preds = %_ZN5clang16ResourceBindingsD2Ev.exit, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1040 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN4llvm11SmallVectorIPKN5clang4AttrELj6EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8DenseMapIPKN5clang26HLSLAttributedResourceTypeENS1_29HLSLAttributedResourceLocInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit
  tail call void @free(ptr noundef %i.aq) #27
  br label %_ZN4llvm11SmallVectorIPKN5clang4AttrELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPKN5clang4AttrELj6EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPKN5clang26HLSLAttributedResourceTypeENS1_29HLSLAttributedResourceLocInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEED2Ev.exit, %bb.g
  ret void
}

declare void @_ZN5clang11SemaHexagonC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang13SemaLoongArchC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang8SemaM68kC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang8SemaMIPSC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang10SemaMSP430C1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang9SemaNVPTXC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang8SemaObjCC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNKSt14default_deleteIN5clang8SemaObjCEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1663 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5clang5NSAPIESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5clang5NSAPIEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5clang5NSAPIEEclEPS1_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 712) #29
  br label %_ZNSt10unique_ptrIN5clang5NSAPIESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5clang5NSAPIESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5clang5NSAPIEEclEPS1_.exit.i.i, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 84
end_hunk_8
begin_hunk_9_@_ZN5clang11SemaOpenACCD2Ev:bb.a
bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang22OpenACCReductionClauseELj6EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1038 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #29
  br label %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit

_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang22OpenACCReductionClauseELj6EED2Ev.exit, %bb.f, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1040 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN4llvm11SmallVectorISt4pairIPN5clang12FunctionDeclEPNS2_18OpenACCRoutineDeclEELj3EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit
  tail call void @free(ptr noundef %i.an) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPN5clang12FunctionDeclEPNS2_18OpenACCRoutineDeclEELj3EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIPN5clang12FunctionDeclEPNS2_18OpenACCRoutineDeclEELj3EED2Ev.exit: ; preds = %_ZN5clang11SemaOpenACC20CollapseCheckingInfoD2Ev.exit, %bb.h
  ret void
}

declare void @_ZN5clang10SemaOpenCLC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang10SemaOpenMPC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang10SemaOpenMPD2Ev(ptr noundef nonnull align 8 dead_on_return(552) dereferenceable(552) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1040 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.f) #27
  br label %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit1

_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit1: ; preds = %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1040 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit1
  %i.m = zext i32 %i.l to i64
  %.idx.i = mul nuw nsw i64 %i.m, 40
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5clang10SemaOpenMP22OMPDeclareVariantScopeD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.o, %_ZN5clang10SemaOpenMP22OMPDeclareVariantScopeD2Ev.exit.i.i ], [ %i.n, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1030 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN5clang10SemaOpenMP22OMPDeclareVariantScopeD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !1038
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #29
  br label %_ZN5clang10SemaOpenMP22OMPDeclareVariantScopeD2Ev.exit.i.i

_ZN5clang10SemaOpenMP22OMPDeclareVariantScopeD2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.j, %i.o
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !3370

_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i: ; preds = %_ZN5clang10SemaOpenMP22OMPDeclareVariantScopeD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit1
  %i.v = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %i.j, %_ZN4llvm11SmallVectorIPN5clang13OMPAssumeAttrELj4EED2Ev.exit1 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP22OMPDeclareVariantScopeELj4EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.i
  tail call void @free(ptr noundef %i.v) #27
  br label %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP22OMPDeclareVariantScopeELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang10SemaOpenMP22OMPDeclareVariantScopeELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP22OMPDeclareVariantScopeELb0EE13destroy_rangeEPS3_S5_.exit.i, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1040 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i2 = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i2, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i3

.lr.ph.i.preheader.i3:                            ; preds = %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP22OMPDeclareVariantScopeELj4EED2Ev.exit
  %i.ac = zext i32 %i.ab to i64
  %.idx.i4 = mul nuw nsw i64 %i.ac, 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i4
  br label %.lr.ph.i.i5

.lr.ph.i.i5:                                      ; preds = %_ZN5clang10SemaOpenMP24DeclareTargetContextInfoD2Ev.exit.i.i, %.lr.ph.i.preheader.i3
  %.05.i.i6 = phi ptr [ %i.ae, %_ZN5clang10SemaOpenMP24DeclareTargetContextInfoD2Ev.exit.i.i ], [ %i.ad, %.lr.ph.i.preheader.i3 ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i.i6, i64 -56 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i6, i64 -36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3371 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZN5clang10SemaOpenMP24DeclareTargetContextInfoD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i5
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !3374
  %i.aj = zext i32 %i.ag to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #27
  br label %_ZN5clang10SemaOpenMP24DeclareTargetContextInfoD2Ev.exit.i.i

_ZN5clang10SemaOpenMP24DeclareTargetContextInfoD2Ev.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i5
  %.not.i.i7 = icmp eq ptr %i.z, %i.ae
  br i1 %.not.i.i7, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, label %.lr.ph.i.i5, !llvm.loop !3375

_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i: ; preds = %_ZN5clang10SemaOpenMP24DeclareTargetContextInfoD2Ev.exit.i.i
  %.pre.i8 = load ptr, ptr %i.y, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP22OMPDeclareVariantScopeELj4EED2Ev.exit
  %i.ap = phi ptr [ %.pre.i8, %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %i.z, %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP22OMPDeclareVariantScopeELj4EED2Ev.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP24DeclareTargetContextInfoELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.i
  tail call void @free(ptr noundef %i.ap) #27
  br label %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP24DeclareTargetContextInfoELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang10SemaOpenMP24DeclareTargetContextInfoELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP24DeclareTargetContextInfoELb0EE13destroy_rangeEPS3_S5_.exit.i, %bb.f
  ret void
}

declare void @_ZN5clang7SemaPPCC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang16SemaPseudoObjectC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang9SemaRISCVC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang9SemaSPIRVC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang8SemaSYCLC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang9SemaSwiftC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang11SemaSystemZC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang8SemaWasmC1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN5clang7SemaX86C1ERNS_4SemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(18640)) unnamed_addr #1

declare void @_ZN4llvm14FoldingSetBaseC2Ej(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1931 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1932
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2207
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !927  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2673 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1982 ; 6 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1986 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = icmp uge ptr %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 14848 ; 2 uses
  %i.aa = icmp ule ptr %i.v, %i.z
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 14976 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2222 ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !2222
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ae
  store ptr %i.v, ptr %i.af, align 8, !tbaa !2223
  br label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.v) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 928) #29
  br label %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c, %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2672

_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.q, align 8, !tbaa !927
  br label %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i, %bb.b
  %i.ah = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.r, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2682
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEEvT_S6_.exit.i.i, %bb.g
  %i.an = add i32 %.0.i3, -1
  %i.ao = and i32 %i.an, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3376

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !3377

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4Sema33ExpressionEvaluationContextRecordD2Ev(ptr noundef nonnull align 8 dead_on_return(792) dereferenceable(792) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN5clang4Sema16MisalignedMemberELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #27
  br label %_ZN4llvm11SmallVectorIN5clang4Sema16MisalignedMemberELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang4Sema16MisalignedMemberELj4EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1040 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorIPN5clang24MaterializeTemporaryExprELj8EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIN5clang4Sema16MisalignedMemberELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.f) #27
  br label %_ZN4llvm11SmallVectorIPN5clang24MaterializeTemporaryExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang24MaterializeTemporaryExprELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN5clang4Sema16MisalignedMemberELj4EED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.j = load i8, ptr %i.i, align 8, !tbaa !1640, !range !701, !noundef !696
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang24MaterializeTemporaryExprELj8EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1637
  tail call void @free(ptr noundef %i.m) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPN5clang24MaterializeTemporaryExprELj8EED2Ev.exit, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1040 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang12ConstantExprELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  tail call void @free(ptr noundef %i.o) #27
  br label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang12ConstantExprELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang12ConstantExprELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj4EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1040 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang12ConstantExprELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj4EED2Ev.exit
  tail call void @free(ptr noundef %i.s) #27
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPN5clang12ConstantExprELj1EjNS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES6_EEEELj4EED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load i8, ptr %i.v, align 8, !tbaa !1640, !range !701, !noundef !696
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1637
  tail call void @free(ptr noundef %i.z) #27
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1:          ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj2EED2Ev.exit, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1040 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvm11SmallVectorIPN5clang20CXXBindTemporaryExprELj8EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1
  tail call void @free(ptr noundef %i.ab) #27
  br label %_ZN4llvm11SmallVectorIPN5clang20CXXBindTemporaryExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang20CXXBindTemporaryExprELj8EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit1, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1040 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorIPN5clang8CallExprELj8EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang20CXXBindTemporaryExprELj8EED2Ev.exit
  tail call void @free(ptr noundef %i.af) #27
  br label %_ZN4llvm11SmallVectorIPN5clang8CallExprELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang8CallExprELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang20CXXBindTemporaryExprELj8EED2Ev.exit, %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1040 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN4llvm11SmallVectorIPN5clang10LambdaExprELj2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang8CallExprELj8EED2Ev.exit
  tail call void @free(ptr noundef %i.aj) #27
  br label %_ZN4llvm11SmallVectorIPN5clang10LambdaExprELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang10LambdaExprELj2EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang8CallExprELj8EED2Ev.exit, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1040 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang10LambdaExprELj2EED2Ev.exit
  tail call void @free(ptr noundef %i.ao) #27
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit.i: ; preds = %bb.k, %_ZN4llvm11SmallVectorIPN5clang10LambdaExprELj2EED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1887 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit.i
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !1888
  %i.av = zext i32 %i.as to i64                   ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 8) #27
  br label %_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EED2Ev.exit

_ZN4llvm9SetVectorIPN5clang4ExprENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3378
  tail call void @_ZNSt8_Rb_treeIN5clang14SourceLocationES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3379 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3380

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1863 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1864
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3381
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !926  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.l = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1040 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1041 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.u = zext i32 %i.t to i64
  %.idx.i.i = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i ], [ %i.v, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1982 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1986 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp uge ptr %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 14848 ; 2 uses
  %i.ad = icmp ule ptr %i.y, %i.ac
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 14976 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2222 ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !2222
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  store ptr %i.y, ptr %i.ai, align 8, !tbaa !2223
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.y) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 928) #29
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.r, %i.w
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2638

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !1040
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, %bb.b
  %i.aj = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i
  tail call void @free(ptr noundef %i.aj) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, %bb.g
  %i.am = add i32 %.0.i3, -1
  %i.an = and i32 %i.am, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3382

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !3383

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_11SmallVectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEELj1EEENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SD_EEEES7_SD_SF_SI_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(792) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang4Sema33ExpressionEvaluationContextRecordELb0EE18growAndEmplaceBackIJNS2_27ExpressionEvaluationContextEiNS1_11CleanupInfoEDnNS3_14ExpressionKindEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 792, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1041
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [792 x i8], ptr %i.c, i64 %i.f ; 50 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !1702
  %i.i = load i32, ptr %2, align 4, !tbaa !926
  %.sroa.0.0.copyload = load i16, ptr %3, align 1
  %i.j = load i32, ptr %5, align 4, !tbaa !1704
  store i32 %i.h, ptr %i.g, align 8, !tbaa !1728
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i16 %.sroa.0.0.copyload, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.i, ptr %i.l, align 8, !tbaa !1771
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.o, ptr %i.n, align 8, !tbaa !1040
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 0, ptr %i.p, align 8, !tbaa !1041
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  store i32 4, ptr %i.q, align 4, !tbaa !1042
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %i.s, ptr %i.r, align 8, !tbaa !1040
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i32 0, ptr %i.t, align 8, !tbaa !1041
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  store i32 2, ptr %i.u, align 4, !tbaa !1042
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.x, ptr %i.w, align 8, !tbaa !1040
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i32 0, ptr %i.y, align 8, !tbaa !1041
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  store i32 8, ptr %i.z, align 4, !tbaa !1042
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !1040
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store i32 0, ptr %i.ac, align 8, !tbaa !1041
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 228
  store i32 8, ptr %i.ad, align 4, !tbaa !1042
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 320
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !1637
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store i32 8, ptr %i.ag, align 8, !tbaa !1638
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 308
  store i32 0, ptr %i.ah, align 4, !tbaa !1639
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  store i8 1, ptr %i.ai, align 8, !tbaa !1640
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !1040
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store i32 0, ptr %i.al, align 8, !tbaa !1041
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 396
  store i32 2, ptr %i.am, align 4, !tbaa !1042
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !1040
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  store i32 0, ptr %i.ap, align 8, !tbaa !1041
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 428
  store i32 4, ptr %i.aq, align 4, !tbaa !1042
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !1637
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  store i32 4, ptr %i.at, align 8, !tbaa !1638
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 476
  store i32 0, ptr %i.au, align 4, !tbaa !1639
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  store i8 1, ptr %i.av, align 8, !tbaa !1640
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !1040
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  store i32 0, ptr %i.ay, align 8, !tbaa !1041
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 532
  store i32 8, ptr %i.az, align 4, !tbaa !1042
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !1040
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  store i32 0, ptr %i.bc, align 8, !tbaa !1041
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 612
  store i32 4, ptr %i.bd, align 4, !tbaa !1042
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 744
  store i32 %i.j, ptr %i.be, align 8, !tbaa !1772
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 748
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 784
  store i8 0, ptr %i.bg, align 8, !tbaa !1773
  store i64 0, ptr %i.bf, align 4
  %i.bh = load ptr, ptr %0, align 8, !tbaa !1040  ; 3 uses
  %i.bi = load i32, ptr %i.d, align 8, !tbaa !1041 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %.idx.i = mul nuw nsw i64 %i.bj, 792
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !1458

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3407
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3405
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1904
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !926
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !926
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3408
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1453
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1453
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !926
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1904, !noalias !3409 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3405, !noalias !3409 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1903, !noalias !3409 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1453   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !926
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2209

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1453
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1458

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2210, !llvm.loop !3406

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3407
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.323", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1903
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1904
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3405
  store i32 0, ptr %i.p, align 16, !tbaa !3408
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1043
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3407
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !1043
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !1043
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1043
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !926 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !926
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !926
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !926
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !926
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1904   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3405
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1903 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3405 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1904
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1903
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !926  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1453 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !926
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3414

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1453
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !926
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !926
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !926
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !926
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3415

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3416

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1903
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !3408
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !3408
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1903
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPN5clang14IdentifierInfoEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESJ_IJEEEEERSD_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1041
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %i.f ; 5 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !2108
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1453
  store ptr %i.j, ptr %i.g, align 8, !tbaa !2112
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, i8 0, i64 80, i1 false)
  store i32 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr %i.m, ptr %i.l, align 8, !tbaa !1040
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i32 1, ptr %i.n, align 4, !tbaa !1042
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE19moveElementsForGrowEPSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.c)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !1780
  %i.p = load ptr, ptr %0, align 8, !tbaa !1040   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE21takeAllocationForGrowEPSD_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.p) #27
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE21takeAllocationForGrowEPSD_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE21takeAllocationForGrowEPSD_m.exit: ; preds = %bb.a, %bb.b
  store ptr %i.c, ptr %0, align 8, !tbaa !1040
  %i.r = trunc i64 %i.o to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.r, ptr %i.s, align 4, !tbaa !1042
  %i.t = load i32, ptr %i.d, align 8, !tbaa !1041
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.d, align 8, !tbaa !1041
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE19moveElementsForGrowEPSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1040   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1041 ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = mul nuw nsw i64 %i.d, 88
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not7.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt10_ConstructISt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS1_8WeakInfoENS4_11SmallVectorIS6_Lj1EEENS4_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEEJSD_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructISt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS1_8WeakInfoENS4_11SmallVectorIS6_Lj1EEENS4_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEEJSD_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %bb.a ] ; 8 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructISt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS1_8WeakInfoENS4_11SmallVectorIS6_Lj1EEENS4_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEEJSD_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.f = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !2112
  store ptr %i.f, ptr %.09.i.i.i.i.i, align 8, !tbaa !2112
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  store i32 1, ptr %i.g, align 8
  store i32 0, ptr %i.i, align 8
  tail call void @_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE8swapImplERS8_(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 72
  store ptr %i.k, ptr %i.j, align 8, !tbaa !1040
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 64
  store i32 0, ptr %i.l, align 8, !tbaa !1041
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 68
  store i32 1, ptr %i.m, align 4, !tbaa !1042
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 64
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1041
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS1_8WeakInfoENS4_11SmallVectorIS6_Lj1EEENS4_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEEJSD_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 56
  %i.q = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN5clang8WeakInfoEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.p) ; 0 uses
  br label %_ZSt10_ConstructISt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS1_8WeakInfoENS4_11SmallVectorIS6_Lj1EEENS4_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEEJSD_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS1_8WeakInfoENS4_11SmallVectorIS6_Lj1EEENS4_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEEJSD_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 88 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 88
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE18uninitialized_moveIPSD_SG_EEvT_SH_T0_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3417

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE18uninitialized_moveIPSD_SG_EEvT_SH_T0_.exit: ; preds = %_ZSt10_ConstructISt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS1_8WeakInfoENS4_11SmallVectorIS6_Lj1EEENS4_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEEJSD_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1040  ; 2 uses
  %.pre3 = load i32, ptr %i.b, align 8, !tbaa !1041 ; 2 uses
  %.not4.i = icmp eq i32 %.pre3, 0
  br i1 %.not4.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE13destroy_rangeEPSD_SF_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS_9SetVectorINS2_8WeakInfoENS_11SmallVectorIS6_Lj1EEENS_13SmallDenseSetIS6_Lj2ENS6_23DenseMapInfoByAliasOnlyEEELj0EEEELb0EE18uninitialized_moveIPSD_SG_EEvT_SH_T0_.exit
  %i.t = zext i32 %.pre3 to i64
  %.idx2 = mul nuw nsw i64 %i.t, 88
  %i.u = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i
  %.05.i = phi ptr [ %i.v, %_ZNSt4pairIPN5clang14IdentifierInfoEN4llvm9SetVectorINS0_8WeakInfoENS3_11SmallVectorIS5_Lj1EEENS3_13SmallDenseSetIS5_Lj2ENS5_23DenseMapInfoByAliasOnlyEEELj0EEEED2Ev.exit.i ], [ %i.u, %.lr.ph.i.preheader ] ; 6 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i, i64 -88 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E15LookupBucketForIS3_EEbRKT_RPS8_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !2210, !llvm.loop !3429

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3420
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.1811", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 3                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS8_S2_S4_S5_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !1038
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !1038
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !1038
  br label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS8_S2_S4_S5_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS8_S2_S4_S5_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 2, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS8_S2_S4_S5_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !3419
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !1038
  br label %bb.b

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEEC2EjNS_12DenseMapBaseIS8_S2_S4_S5_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #27 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1038
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1038
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !1038
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1038 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1038
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #27
  br label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 2
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 1   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ab, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !926 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !3427
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !926
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.014.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !926
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3435

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa12.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !3418
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !926
  %i.bk = or i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !926
  %i.bl = add i32 %.0.i21, -1
  %i.bm = and i32 %i.bl, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3436

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS3_23DenseMapInfoByAliasOnlyENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !3437

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bo = and i32 %i.bn, -2
  %i.bp = or disjoint i32 %.pre-phi, %i.bo
  store i32 %i.bp, ptr %0, align 8
  %i.bq = load i32, ptr %1, align 8               ; 3 uses
  %i.br = and i32 %i.bq, 1
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bs = load i32, ptr %i.j, align 8, !tbaa !1038 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !1038
  %i.bv = zext i32 %i.bs to i64                   ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #27
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS2_23DenseMapInfoByAliasOnlyENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cb = phi i32 [ %i.bq, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIN5clang8WeakInfoENS_6detail13DenseSetEmptyELj2ENS6_23DenseMapInfoByAliasOnlyENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bq, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cc = and i32 %i.cb, -2
  store i32 %i.cc, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang8WeakInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !1040
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1041
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEERS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !2108
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1453 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1041 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1042
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !1458

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %i.c, ptr null)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !1041
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELb1EE9push_backES7_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !1040
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h ; 2 uses
  store ptr %i.c, ptr %i.j, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.k = load i32, ptr %i.d, align 8, !tbaa !1041
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !1041
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELb1EE9push_backES7_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELb1EE9push_backES7_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !1040
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  ret ptr %i.q
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoEPNS2_12AsmLabelAttrEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !1040
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1041
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1041
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPPKN5clang15TypedefNameDeclElN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS0_4Sema41getSortedUnusedLocalTypedefNameCandidatesERN4llvm15SmallVectorImplIS3_EEE3$_0EEEvT_SF_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPPKN5clang15TypedefNameDeclEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS0_4Sema41getSortedUnusedLocalTypedefNameCandidatesERN4llvm15SmallVectorImplIS3_EEE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPPKN5clang15TypedefNameDeclEN9__gnu_cxx5__ops15_Iter_comp_iterIZNKS0_4Sema41getSortedUnusedLocalTypedefNameCandidatesERN4llvm15SmallVectorImplIS3_EEE3$_0EEET_SF_SF_T0_.exit"
  %i.g = icmp eq i64 %i.de, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46, !llvm.loop !3438
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit, label %bb.d, !prof !1458

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3678
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2207
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1932
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !926
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !926
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2173
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load i64, ptr %1, align 8, !tbaa !2421
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !2421
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E22findBucketForInsertionIS6_EEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E15LookupBucketForIS6_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1932, !noalias !3679 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2207, !noalias !3679 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1931, !noalias !3679 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !924    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !926
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !2209

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !924
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !1458

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !2210, !llvm.loop !3677

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3678
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.27", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1931
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #27 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1932
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2207
  store i32 0, ptr %i.p, align 16, !tbaa !2173
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !1043
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !1043
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !1043
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !1043
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !926
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !926
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !926
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !926
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !1931 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !1932
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #27
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1932
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2207
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1931 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2207 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1932
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1931
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !926  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge.i
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %._crit_edge.i ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !926
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !926
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3684

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store i64 %i.w, ptr %i.as, align 8, !tbaa !2421
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !2214
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !2214
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2682
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !2682
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !926
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !926
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3685

._crit_edge:                                      ; preds = %._crit_edge.i, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !3686

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1931
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2173
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2173
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1932
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #27
  store i32 0, ptr %i.d, align 4, !tbaa !1931
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEE4killEv.exit

_ZN4llvm8DenseMapIN5clang16CanonicalDeclPtrIKNS1_12FunctionDeclEEESt6vectorISt4pairINS1_14SourceLocationENS1_17PartialDiagnosticEESaISA_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SC_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS5_12FunctionDeclEEESt6vectorISt4pairINS5_14SourceLocationENS5_17PartialDiagnosticEESaISE_EENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SG_EEEES9_SG_SI_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE17_M_realloc_insertIJRS2_S3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2673 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !927    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.490) #30
  unreachable

_ZNKSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !926
  store i32 %i.r, ptr %i.q, align 8, !tbaa !926
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !2216
  store i32 %i.v, ptr %i.t, align 8, !tbaa !2216
  %i.w = load <2 x ptr>, ptr %3, align 8, !tbaa !1043
  store <2 x ptr> %i.w, ptr %i.s, align 8, !tbaa !1043
  store ptr null, ptr %3, align 8, !tbaa !1982
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.al, %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.x = load i32, ptr %.0810.i.i.i.i.i, align 8, !tbaa !926
  store i32 %i.x, ptr %.011.i.i.i.i.i, align 8, !tbaa !926
  %i.y = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24
  store i64 0, ptr %i.y, align 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2216
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !2216
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1986 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1986
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !1982
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i.i

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ae) ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !1982
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !1982
  %i.aj = tail call noundef nonnull align 8 dereferenceable(928) ptr @_ZN5clang17DiagnosticStorageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(928) %i.ah, ptr noundef nonnull align 8 dereferenceable(928) %i.ai) ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3687

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.al, %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not9.i.i.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i19, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEES5_SaIS4_EET0_T_S8_S7_RT1_.exit28, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i25
  %.011.i.i.i.i.i21 = phi ptr [ %i.bb, %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %i.am, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 5 uses
  %.0810.i.i.i.i.i22 = phi ptr [ %i.ba, %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 5 uses
  %i.an = load i32, ptr %.0810.i.i.i.i.i22, align 8, !tbaa !926
  store i32 %i.an, ptr %.011.i.i.i.i.i21, align 8, !tbaa !926
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 24
  store i64 0, ptr %i.ao, align 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !2216
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !2216
  %i.at = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1986 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !1986
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !1982
  %.not.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i23, label %_ZSt10_ConstructISt4pairIN5clang14SourceLocationENS1_17PartialDiagnosticEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i25, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i.i24

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i20
end_hunk_12
