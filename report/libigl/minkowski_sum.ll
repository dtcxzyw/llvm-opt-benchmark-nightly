Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/minkowski_sum?download=true
inline.NumInlined: 7634
inline.NumDeleted: 3197
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 213
loop-unroll.NumUnrolled: 226
begin_hunk_0_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELi3ELi1ELin1ELi3EEESK_Li3ELi1ESK_Li3ELi1ESL_NS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNS16_IT8_EERNS16_IT9_EE:bb.a
  %gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.wd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yw = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !60
  store i32 %i.yw, ptr %i.ys, align 4, !tbaa !60
  %i.yx = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.yy = getelementptr [4 x i8], ptr %i.wb, i64 %i.yx
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.yx
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !60
  %i.zb = sext i32 %i.za to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nsw i64 %i.zb, 12
  %gep.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.wd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.zc = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.1, align 4, !tbaa !60
  store i32 %i.zc, ptr %i.yy, align 4, !tbaa !60
  %i.zd = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ze = getelementptr [4 x i8], ptr %i.wb, i64 %i.zd
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.zd
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !60
  %i.zh = sext i32 %i.zg to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nsw i64 %i.zh, 12
  %gep.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.wd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.zi = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.2, align 4, !tbaa !60
  store i32 %i.zi, ptr %i.ze, align 4, !tbaa !60
  %i.zj = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.zk = getelementptr [4 x i8], ptr %i.wb, i64 %i.zj
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %i.zj
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !60
  %i.zn = sext i32 %i.zm to i64
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = mul nsw i64 %i.zn, 12
  %gep.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr i8, ptr %i.wd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.zo = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.3, align 4, !tbaa !60
  store i32 %i.zo, ptr %i.zk, align 4, !tbaa !60
  %i.zp = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2377.next.3 = add nuw nsw i64 %niter2377, 4 ; 2 uses
  %niter2377.ncmp.3 = icmp eq i64 %niter2377.next.3, %unroll_iter2376
  br i1 %niter2377.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.split.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !105

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.fe
  %.not.i.i.i.i359 = icmp eq ptr %i.vw, null
  br i1 %.not.i.i.i.i359, label %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa: ; preds = %bb.fh
  %lcmp.mod2388.not = icmp eq i64 %xtraiter2386, 0
  br i1 %lcmp.mod2388.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.epil.preheader2385

.epil.preheader2385:                              ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i
  %.09.2.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %._crit_edge.1.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yr, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod2389 = icmp ne i64 %xtraiter2386, 0
  call void @llvm.assume(i1 %lcmp.mod2389)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %.epil.preheader2385
  %.09.2.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %.09.2.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader2385 ], [ %i.zv, %bb.fi ] ; 3 uses
  %epil.iter2387 = phi i64 [ 0, %.epil.preheader2385 ], [ %epil.iter2387.next, %bb.fi ]
  %i.zq = getelementptr [4 x i8], ptr %i.xs, i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.vw, i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !60
  %i.zt = sext i32 %i.zs to i64
  %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i.epil = mul nsw i64 %i.zt, 12
  %gep.2.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr i8, ptr %invariant.gep.2.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.zu = load i32, ptr %gep.2.i.i.i.i.i.i.i.i.i.i.i.epil, align 4, !tbaa !60
  store i32 %i.zu, ptr %i.zq, align 4, !tbaa !60
  %i.zv = add nuw nsw i64 %.09.2.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2387.next = add i64 %epil.iter2387, 1 ; 2 uses
  %epil.iter2387.cmp.not = icmp eq i64 %epil.iter2387.next, %xtraiter2386
  br i1 %epil.iter2387.cmp.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %bb.fi, !llvm.loop !107

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %bb.fi, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.zw = getelementptr inbounds nuw i8, ptr %59, i64 24
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !108
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = sub i64 %i.zy, %i.vy
  call void @_ZdlPvm(ptr noundef nonnull %i.vw, i64 noundef %i.zz) #35
  br label %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit

_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.aaa = load ptr, ptr %61, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i360 = icmp eq ptr %i.aaa, null
  br i1 %.not.i.i.i360, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.fj

bb.fj:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit
  %i.aab = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !108
  %i.aad = ptrtoint ptr %i.aac to i64
  %i.aae = ptrtoint ptr %i.aaa to i64
  %i.aaf = sub i64 %i.aad, %i.aae
  call void @_ZdlPvm(ptr noundef nonnull %i.aaa, i64 noundef %i.aaf) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  %i.aag = load ptr, ptr %60, align 8, !tbaa !59
  call void @free(ptr noundef %i.aag) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  %i.aah = load ptr, ptr %i.pm, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i361 = icmp eq ptr %i.aah, null
  br i1 %.not.i.i.i.i361, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aai = getelementptr inbounds nuw i8, ptr %57, i64 24
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !108
  %i.aak = ptrtoint ptr %i.aaj to i64
  %i.aal = ptrtoint ptr %i.aah to i64
  %i.aam = sub i64 %i.aak, %i.aal
  call void @_ZdlPvm(ptr noundef nonnull %i.aah, i64 noundef %i.aam) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.fk
  %i.aan = load ptr, ptr %58, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i362 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i.i362, label %_ZNSt6vectorIiSaIiEED2Ev.exit363, label %bb.fl

bb.fl:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit
  %i.aao = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !108
  %i.aaq = ptrtoint ptr %i.aap to i64
  %i.aar = ptrtoint ptr %i.aan to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  call void @_ZdlPvm(ptr noundef nonnull %i.aan, i64 noundef %i.aas) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit363

_ZNSt6vectorIiSaIiEED2Ev.exit363:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEED2Ev.exit, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i32 0, ptr %i.k, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  %i.aat = add nsw i32 %i.dq, -1
  store i32 %i.aat, ptr %i.l, align 4, !tbaa !60
  invoke void @_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.92") align 8 %62, i64 noundef %i.dr, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
          to label %bb.fm unwind label %bb.if

bb.fm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit363
  %i.aau = load ptr, ptr %7, align 8, !tbaa !109  ; 2 uses
  %i.aav = load ptr, ptr %62, align 8, !tbaa !109
  store ptr %i.aav, ptr %7, align 8, !tbaa !109
  store ptr %i.aau, ptr %62, align 8, !tbaa !109
  %i.aaw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.aay = load i64, ptr %i.aaw, align 8, !tbaa !110
  %i.aaz = load i64, ptr %i.aax, align 8, !tbaa !110
  store i64 %i.aaz, ptr %i.aaw, align 8, !tbaa !110
  store i64 %i.aay, ptr %i.aax, align 8, !tbaa !110
  call void @free(ptr noundef %i.aau) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  br i1 %i.jn, label %bb.fr, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.jo, label %bb.fo, label %.sink.split.i.i.i.i365

bb.fo:                                            ; preds = %bb.fn
  %i.aba = shl nuw nsw i64 %i.jm, 2
  %i.abb = call noalias ptr @malloc(i64 noundef %i.aba) #37 ; 2 uses
  %i.abc = icmp eq ptr %i.abb, null
  br i1 %i.abc, label %bb.fp, label %.sink.split.i.i.i.i365

bb.fp:                                            ; preds = %bb.fo
  %i.abd = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.abd, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.abd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc.i367 unwind label %bb.fq

.noexc.i367:                                      ; preds = %bb.fp
  unreachable

.sink.split.i.i.i.i365:                           ; preds = %bb.fo, %bb.fn
  %.sink.i.i.i.i366 = phi ptr [ %i.abb, %bb.fo ], [ null, %bb.fn ]
  store ptr %.sink.i.i.i.i366, ptr %63, align 8, !tbaa !111
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.abe = landingpad { ptr, i32 }
          cleanup
  br label %.body368

bb.fr:                                            ; preds = %.sink.split.i.i.i.i365, %bb.fm
  %i.abf = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 4 uses
  store i64 %i.jm, ptr %i.abf, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %65, ptr noundef nonnull align 8 dereferenceable(16) %49)
          to label %bb.fs unwind label %bb.ig

bb.fs:                                            ; preds = %bb.fr
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %64, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.ft unwind label %bb.ih

bb.ft:                                            ; preds = %bb.fs
  %i.abg = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !69, !noalias !114
  %i.abj = load ptr, ptr %i.abg, align 8, !tbaa !74, !noalias !114 ; 6 uses
  %i.abk = ptrtoint ptr %i.abi to i64
  %i.abl = ptrtoint ptr %i.abj to i64
  %i.abm = sub i64 %i.abk, %i.abl                 ; 2 uses
  %i.abn = ashr exact i64 %i.abm, 2               ; 4 uses
  %i.abo = load ptr, ptr %64, align 8, !tbaa !117, !noalias !114, !nonnull !14, !align !83
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !111, !noalias !114 ; 5 uses
  %i.abq = icmp sgt i64 %i.abn, 0
  br i1 %i.abq, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader: ; preds = %bb.ft
  %88 = load ptr, ptr %63, align 8, !tbaa !111, !noalias !122 ; 5 uses
  %xtraiter2392 = and i64 %i.abn, 3               ; 3 uses
  %i.abr = icmp ult i64 %i.abn, 4
  br i1 %i.abr, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader
  %unroll_iter2396 = and i64 %i.abn, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370:  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader.new
  %.09.i.i.i.i.i.i.i.i.i.i.i.i371 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader.new ], [ %i.act, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370 ] ; 6 uses
  %niter2397 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader.new ], [ %niter2397.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370 ]
  %i.abs = getelementptr [4 x i8], ptr %88, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !60, !noalias !114
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr [4 x i8], ptr %i.abp, i64 %i.abv
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !60, !noalias !114
  store i32 %i.abx, ptr %i.abs, align 4, !tbaa !60, !noalias !114
  %i.aby = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371, 1 ; 2 uses
  %i.abz = getelementptr [4 x i8], ptr %88, i64 %i.aby
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.aby
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !60, !noalias !114
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr [4 x i8], ptr %i.abp, i64 %i.acc
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !60, !noalias !114
  store i32 %i.ace, ptr %i.abz, align 4, !tbaa !60, !noalias !114
  %i.acf = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371, 2 ; 2 uses
  %i.acg = getelementptr [4 x i8], ptr %88, i64 %i.acf
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.acf
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !60, !noalias !114
  %i.acj = sext i32 %i.aci to i64
  %i.ack = getelementptr [4 x i8], ptr %i.abp, i64 %i.acj
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !60, !noalias !114
  store i32 %i.acl, ptr %i.acg, align 4, !tbaa !60, !noalias !114
  %i.acm = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371, 3 ; 2 uses
  %i.acn = getelementptr [4 x i8], ptr %88, i64 %i.acm
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.acm
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !60, !noalias !114
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr [4 x i8], ptr %i.abp, i64 %i.acq
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !60, !noalias !114
  store i32 %i.acs, ptr %i.acn, align 4, !tbaa !60, !noalias !114
  %i.act = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371, 4 ; 2 uses
  %niter2397.next.3 = add nuw nsw i64 %niter2397, 4 ; 2 uses
  %niter2397.ncmp.3 = icmp eq i64 %niter2397.next.3, %unroll_iter2396
  br i1 %niter2397.ncmp.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370, !llvm.loop !125

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370
  %lcmp.mod2394.not = icmp eq i64 %xtraiter2392, 0
  br i1 %lcmp.mod2394.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.i371.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.preheader ], [ %i.act, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod2395 = icmp ne i64 %xtraiter2392, 0
  call void @llvm.assume(i1 %lcmp.mod2395)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.i371.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i371.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil.preheader ], [ %i.ada, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil ] ; 3 uses
  %epil.iter2393 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil.preheader ], [ %epil.iter2393.next, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil ]
  %i.acu = getelementptr [4 x i8], ptr %88, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371.epil
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371.epil
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !60, !noalias !114
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr [4 x i8], ptr %i.abp, i64 %i.acx
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !60, !noalias !114
  store i32 %i.acz, ptr %i.acu, align 4, !tbaa !60, !noalias !114
  %i.ada = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i371.epil, 1
  %epil.iter2393.next = add i64 %epil.iter2393, 1 ; 2 uses
  %epil.iter2393.cmp.not = icmp eq i64 %epil.iter2393.next, %xtraiter2392
  br i1 %epil.iter2393.cmp.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil, !llvm.loop !126

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i370.epil, %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %67, ptr noundef nonnull align 8 dereferenceable(16) %50)
          to label %bb.fu unwind label %bb.ii

bb.fu:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %66, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.fv unwind label %bb.ij

bb.fv:                                            ; preds = %bb.fu
  %i.adb = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.adc = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !69
  %i.ade = load ptr, ptr %i.adb, align 8, !tbaa !74 ; 8 uses
  %i.adf = ptrtoint ptr %i.add to i64
  %i.adg = ptrtoint ptr %i.ade to i64             ; 2 uses
  %i.adh = sub i64 %i.adf, %i.adg
  %i.adi = ashr exact i64 %i.adh, 2               ; 4 uses
  %i.adj = load ptr, ptr %63, align 8, !tbaa !111, !noalias !127
  %i.adk = getelementptr inbounds i8, ptr %i.adj, i64 %i.abm ; 5 uses
  %i.adl = load ptr, ptr %66, align 8, !tbaa !117, !nonnull !14, !align !83
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !111 ; 5 uses
  %i.adn = icmp sgt i64 %i.adi, 0
  br i1 %i.adn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.fv
  %xtraiter2398 = and i64 %i.adi, 3               ; 3 uses
  %i.ado = icmp ult i64 %i.adi, 4
  br i1 %i.ado, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter2402 = and i64 %i.adi, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.aeq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter2403 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter2403.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !60
  %i.ads = sext i32 %i.adr to i64
  %i.adt = getelementptr [4 x i8], ptr %i.adm, i64 %i.ads
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !60
  store i32 %i.adu, ptr %i.adp, align 4, !tbaa !60
  %i.adv = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.adv
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %i.adv
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !60
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr [4 x i8], ptr %i.adm, i64 %i.adz
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !60
  store i32 %i.aeb, ptr %i.adw, align 4, !tbaa !60
  %i.aec = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.aec
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %i.aec
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !60
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr [4 x i8], ptr %i.adm, i64 %i.aeg
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !60
  store i32 %i.aei, ptr %i.aed, align 4, !tbaa !60
  %i.aej = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.aej
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %i.aej
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !60
  %i.aen = sext i32 %i.aem to i64
  %i.aeo = getelementptr [4 x i8], ptr %i.adm, i64 %i.aen
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !60
  store i32 %i.aep, ptr %i.aek, align 4, !tbaa !60
  %i.aeq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2403.next.3 = add nuw nsw i64 %niter2403, 4 ; 2 uses
  %niter2403.ncmp.3 = icmp eq i64 %niter2403.next.3, %unroll_iter2402
  br i1 %niter2403.ncmp.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !130

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.fv
  %.not.i.i.i.i379 = icmp eq ptr %i.ade, null
  br i1 %.not.i.i.i.i379, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod2400.not = icmp eq i64 %xtraiter2398, 0
  br i1 %lcmp.mod2400.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aeq, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod2401 = icmp ne i64 %xtraiter2398, 0
  call void @llvm.assume(i1 %lcmp.mod2401)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.aex, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter2399 = phi i64 [ %epil.iter2399.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !60
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr [4 x i8], ptr %i.adm, i64 %i.aeu
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !60
  store i32 %i.aew, ptr %i.aer, align 4, !tbaa !60
  %i.aex = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2399.next = add i64 %epil.iter2399, 1 ; 2 uses
  %epil.iter2399.cmp.not = icmp eq i64 %epil.iter2399.next, %xtraiter2398
  br i1 %epil.iter2399.cmp.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !131

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.aey = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !108
  %i.afa = ptrtoint ptr %i.aez to i64
  %i.afb = sub i64 %i.afa, %i.adg
  call void @_ZdlPvm(ptr noundef nonnull %i.ade, i64 noundef %i.afb) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.afc = load ptr, ptr %67, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i380 = icmp eq ptr %i.afc, null
  br i1 %.not.i.i.i380, label %_ZNSt6vectorIiSaIiEED2Ev.exit381, label %bb.fw

bb.fw:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit
  %i.afd = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !108
  %i.aff = ptrtoint ptr %i.afe to i64
  %i.afg = ptrtoint ptr %i.afc to i64
  %i.afh = sub i64 %i.aff, %i.afg
  call void @_ZdlPvm(ptr noundef nonnull %i.afc, i64 noundef %i.afh) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit381

_ZNSt6vectorIiSaIiEED2Ev.exit381:                 ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  %i.afi = load ptr, ptr %i.abg, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i382 = icmp eq ptr %i.afi, null
  br i1 %.not.i.i.i.i382, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit383, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit381
  %i.afj = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !108
  %i.afl = ptrtoint ptr %i.afk to i64
  %i.afm = ptrtoint ptr %i.afi to i64
  %i.afn = sub i64 %i.afl, %i.afm
  call void @_ZdlPvm(ptr noundef nonnull %i.afi, i64 noundef %i.afn) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit383

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit383: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit381, %bb.fx
  %i.afo = load ptr, ptr %65, align 8, !tbaa !74  ; 3 uses
  %.not.i.i.i384 = icmp eq ptr %i.afo, null
  br i1 %.not.i.i.i384, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit383
  %i.afp = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !108
  %i.afr = ptrtoint ptr %i.afq to i64
  %i.afs = ptrtoint ptr %i.afo to i64
  %i.aft = sub i64 %i.afr, %i.afs
  call void @_ZdlPvm(ptr noundef nonnull %i.afo, i64 noundef %i.aft) #35
  br label %bb.fz

bb.fz:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit383, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23
  %i.afu = sext i32 %.0111.lcssa to i64           ; 2 uses
  %i.afv = sext i32 %.0109.lcssa to i64
  %i.afw = load ptr, ptr %63, align 8, !tbaa !111, !noalias !132
  %i.afx = getelementptr inbounds [4 x i8], ptr %i.afw, i64 %i.afu ; 2 uses
  %i.afy = load i64, ptr %i.abf, align 8, !tbaa !113, !noalias !132 ; 2 uses
  store ptr %i.afx, ptr %68, align 8
  %.sroa.51344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 %i.afv, ptr %.sroa.51344.0..sroa_idx, align 8
  %.sroa.61345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 16
  store i64 1, ptr %.sroa.61345.0..sroa_idx, align 8
  %.sroa.71346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 24
  store ptr %63, ptr %.sroa.71346.0..sroa_idx, align 8
  %.sroa.81347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 32
  store i64 %i.afu, ptr %.sroa.81347.0..sroa_idx, align 8
  %.sroa.91348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 40
  store i64 0, ptr %.sroa.91348.0..sroa_idx, align 8
  %.sroa.101349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 48
  store i64 %i.afy, ptr %.sroa.101349.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  store i32 %i.dq, ptr %24, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %i.afx, ptr %25, align 8, !tbaa !137
  %i.afz = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 %i.afy, ptr %i.afz, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  store ptr %25, ptr %26, align 8, !tbaa !141
  %i.aga = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %24, ptr %i.aga, align 8, !tbaa !143
  %i.agb = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %27, ptr %i.agb, align 8, !tbaa !145
  %i.agc = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %68, ptr %i.agc, align 8, !tbaa !147
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEENS_5ArrayIiLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIiiEELi0EEELi4ELi0EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i388 unwind label %bb.in

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i388: ; preds = %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  br i1 %i.jo, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i897, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit392

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i897: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i388
  %i.agd = mul nuw nsw i64 %i.jm, 12
  %i.age = call noalias ptr @malloc(i64 noundef %i.agd) #37 ; 2 uses
  %i.agf = icmp eq ptr %i.age, null
  br i1 %i.agf, label %bb.ga, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit392

bb.ga:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i897
  %i.agg = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.agg, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.agg, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc899 unwind label %bb.gb

.noexc899:                                        ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %bb.ga
  %i.agh = landingpad { ptr, i32 }
          cleanup
  br label %.body368
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLin1ELi1EdLin1ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a

bb.cx:                                            ; preds = %bb.cx, %.epil.preheader2421
  %.09.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader2421 ], [ %i.qz, %bb.cx ] ; 3 uses
  %epil.iter2423 = phi i64 [ 0, %.epil.preheader2421 ], [ %epil.iter2423.next, %bb.cx ]
  %i.qu = getelementptr [4 x i8], ptr %i.qs, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !60
  %i.qx = sext i32 %i.qw to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qx
  %i.qy = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.epil, align 4, !tbaa !60
  store i32 %i.qy, ptr %i.qu, align 4, !tbaa !60
  %i.qz = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2423.next = add i64 %epil.iter2423, 1 ; 2 uses
  %epil.iter2423.cmp.not = icmp eq i64 %epil.iter2423.next, %xtraiter2422
  br i1 %epil.iter2423.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx, !llvm.loop !722

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.cx, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa
  %i.ra = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ra, %i.qe
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !723

.preheader.i.i.i.i.i.i.i.i.i.i.i.new:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ry, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter2427 = phi i64 [ %niter2427.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.rb = getelementptr [4 x i8], ptr %i.qs, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !60
  %i.re = sext i32 %i.rd to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.re
  %i.rf = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !60
  store i32 %i.rf, ptr %i.rb, align 4, !tbaa !60
  %i.rg = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.rh = getelementptr [4 x i8], ptr %i.qs, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.rg
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !60
  %i.rk = sext i32 %i.rj to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.rk
  %i.rl = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.1, align 4, !tbaa !60
  store i32 %i.rl, ptr %i.rh, align 4, !tbaa !60
  %i.rm = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.rn = getelementptr [4 x i8], ptr %i.qs, i64 %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.rm
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !60
  %i.rq = sext i32 %i.rp to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.rq
  %i.rr = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.2, align 4, !tbaa !60
  store i32 %i.rr, ptr %i.rn, align 4, !tbaa !60
  %i.rs = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.rt = getelementptr [4 x i8], ptr %i.qs, i64 %i.rs
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.rs
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !60
  %i.rw = sext i32 %i.rv to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.rw
  %i.rx = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.3, align 4, !tbaa !60
  store i32 %i.rx, ptr %i.rt, align 4, !tbaa !60
  %i.ry = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2427.next.3 = add nuw nsw i64 %niter2427, 4 ; 2 uses
  %niter2427.ncmp.3 = icmp eq i64 %niter2427.next.3, %unroll_iter2426
  br i1 %niter2427.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.new, !llvm.loop !724

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.cw
  %.not.i.i.i.i318 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i.i318, label %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.rz = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !108
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = ptrtoint ptr %i.qf to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.qf, i64 noundef %i.sd) #35
  br label %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit

_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.se = load ptr, ptr %57, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i319 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i319, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !108
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = ptrtoint ptr %i.se to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef %i.sj) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  %i.sk = load ptr, ptr %56, align 8, !tbaa !34
  call void @free(ptr noundef %i.sk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.sl = load ptr, ptr %i.lf, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i320 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i320, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.sm = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !108
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = ptrtoint ptr %i.sl to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %i.sl, i64 noundef %i.sq) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cz
  %i.sr = load ptr, ptr %54, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i321 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i321, label %_ZNSt6vectorIiSaIiEED2Ev.exit322, label %bb.da

bb.da:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit
  %i.ss = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !108
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.sr to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.sr, i64 noundef %i.sw) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit322

_ZNSt6vectorIiSaIiEED2Ev.exit322:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.sx = add nsw i32 %i.dl, -1
  store i32 %i.sx, ptr %i.e, align 4, !tbaa !60
  invoke void @_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.92") align 8 %58, i64 noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.db unwind label %bb.fp

bb.db:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit322
  %i.sy = load ptr, ptr %7, align 8, !tbaa !109   ; 2 uses
  %i.sz = load ptr, ptr %58, align 8, !tbaa !109
  store ptr %i.sz, ptr %7, align 8, !tbaa !109
  store ptr %i.sy, ptr %58, align 8, !tbaa !109
  %i.ta = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.tc = load i64, ptr %i.ta, align 8, !tbaa !110
  %i.td = load i64, ptr %i.tb, align 8, !tbaa !110
  store i64 %i.td, ptr %i.ta, align 8, !tbaa !110
  store i64 %i.tc, ptr %i.tb, align 8, !tbaa !110
  call void @free(ptr noundef %i.sy) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br i1 %i.ff, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %i.fg, label %bb.dd, label %.sink.split.i.i.i.i324

bb.dd:                                            ; preds = %bb.dc
  %i.te = shl nuw nsw i64 %i.fe, 2
  %i.tf = call noalias ptr @malloc(i64 noundef %i.te) #37 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %bb.de, label %.sink.split.i.i.i.i324

bb.de:                                            ; preds = %bb.dd
  %i.th = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.th, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.th, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc.i326 unwind label %bb.df

.noexc.i326:                                      ; preds = %bb.de
  unreachable

.sink.split.i.i.i.i324:                           ; preds = %bb.dd, %bb.dc
  %.sink.i.i.i.i325 = phi ptr [ %i.tf, %bb.dd ], [ null, %bb.dc ]
  store ptr %.sink.i.i.i.i325, ptr %59, align 8, !tbaa !111
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %.body327

bb.dg:                                            ; preds = %.sink.split.i.i.i.i324, %bb.db
  %i.tj = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 4 uses
  store i64 %i.fe, ptr %i.tj, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %61, ptr noundef nonnull align 8 dereferenceable(16) %45)
          to label %bb.dh unwind label %bb.fq

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %60, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.di unwind label %bb.fr

bb.di:                                            ; preds = %bb.dh
  %i.tk = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !69, !noalias !725
  %i.tn = load ptr, ptr %i.tk, align 8, !tbaa !74, !noalias !725 ; 6 uses
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = sub i64 %i.to, %i.tp                    ; 2 uses
  %i.tr = ashr exact i64 %i.tq, 2                 ; 4 uses
  %i.ts = load ptr, ptr %60, align 8, !tbaa !117, !noalias !725, !nonnull !14, !align !83
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !111, !noalias !725 ; 5 uses
  %i.tu = icmp sgt i64 %i.tr, 0
  br i1 %i.tu, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader: ; preds = %bb.di
  %84 = load ptr, ptr %59, align 8, !tbaa !111, !noalias !728 ; 5 uses
  %xtraiter2428 = and i64 %i.tr, 3                ; 3 uses
  %i.tv = icmp ult i64 %i.tr, 4
  br i1 %i.tv, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader
  %unroll_iter2432 = and i64 %i.tr, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new
  %.09.i.i.i.i.i.i.i.i.i.i.i.i329 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new ], [ %i.ux, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 6 uses
  %niter2433 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new ], [ %niter2433.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i ]
  %i.tw = getelementptr [4 x i8], ptr %84, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !60, !noalias !725
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr [4 x i8], ptr %i.tt, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !60, !noalias !725
  store i32 %i.ub, ptr %i.tw, align 4, !tbaa !60, !noalias !725
  %i.uc = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 1 ; 2 uses
  %i.ud = getelementptr [4 x i8], ptr %84, i64 %i.uc
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.uc
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !60, !noalias !725
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr [4 x i8], ptr %i.tt, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !60, !noalias !725
  store i32 %i.ui, ptr %i.ud, align 4, !tbaa !60, !noalias !725
  %i.uj = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 2 ; 2 uses
  %i.uk = getelementptr [4 x i8], ptr %84, i64 %i.uj
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.uj
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !60, !noalias !725
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr [4 x i8], ptr %i.tt, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !60, !noalias !725
  store i32 %i.up, ptr %i.uk, align 4, !tbaa !60, !noalias !725
  %i.uq = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 3 ; 2 uses
  %i.ur = getelementptr [4 x i8], ptr %84, i64 %i.uq
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %i.uq
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !60, !noalias !725
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr [4 x i8], ptr %i.tt, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !60, !noalias !725
  store i32 %i.uw, ptr %i.ur, align 4, !tbaa !60, !noalias !725
  %i.ux = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 4 ; 2 uses
  %niter2433.next.3 = add nuw nsw i64 %niter2433, 4 ; 2 uses
  %niter2433.ncmp.3 = icmp eq i64 %niter2433.next.3, %unroll_iter2432
  br i1 %niter2433.ncmp.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, !llvm.loop !125

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i
  %lcmp.mod2430.not = icmp eq i64 %xtraiter2428, 0
  br i1 %lcmp.mod2430.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader ], [ %i.ux, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod2431 = icmp ne i64 %xtraiter2428, 0
  call void @llvm.assume(i1 %lcmp.mod2431)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader ], [ %i.ve, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil ] ; 3 uses
  %epil.iter2429 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader ], [ %epil.iter2429.next, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil ]
  %i.uy = getelementptr [4 x i8], ptr %84, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !60, !noalias !725
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr [4 x i8], ptr %i.tt, i64 %i.vb
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !60, !noalias !725
  store i32 %i.vd, ptr %i.uy, align 4, !tbaa !60, !noalias !725
  %i.ve = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil, 1
  %epil.iter2429.next = add i64 %epil.iter2429, 1 ; 2 uses
  %epil.iter2429.cmp.not = icmp eq i64 %epil.iter2429.next, %xtraiter2428
  br i1 %epil.iter2429.cmp.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil, !llvm.loop !731

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %63, ptr noundef nonnull align 8 dereferenceable(16) %46)
          to label %bb.dj unwind label %bb.fs

bb.dj:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.dk unwind label %bb.ft

bb.dk:                                            ; preds = %bb.dj
  %i.vf = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !69
  %i.vi = load ptr, ptr %i.vf, align 8, !tbaa !74 ; 8 uses
  %i.vj = ptrtoint ptr %i.vh to i64
  %i.vk = ptrtoint ptr %i.vi to i64               ; 2 uses
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = ashr exact i64 %i.vl, 2                 ; 4 uses
  %i.vn = load ptr, ptr %59, align 8, !tbaa !111, !noalias !732
  %i.vo = getelementptr inbounds i8, ptr %i.vn, i64 %i.tq ; 5 uses
  %i.vp = load ptr, ptr %62, align 8, !tbaa !117, !nonnull !14, !align !83
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !111 ; 5 uses
  %i.vr = icmp sgt i64 %i.vm, 0
  br i1 %i.vr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.dk
  %xtraiter2434 = and i64 %i.vm, 3                ; 3 uses
  %i.vs = icmp ult i64 %i.vm, 4
  br i1 %i.vs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter2438 = and i64 %i.vm, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.wu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter2439 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter2439.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !60
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr [4 x i8], ptr %i.vq, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !60
  store i32 %i.vy, ptr %i.vt, align 4, !tbaa !60
  %i.vz = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.vz
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !60
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr [4 x i8], ptr %i.vq, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !60
  store i32 %i.wf, ptr %i.wa, align 4, !tbaa !60
  %i.wg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.wg
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !60
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr [4 x i8], ptr %i.vq, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !60
  store i32 %i.wm, ptr %i.wh, align 4, !tbaa !60
  %i.wn = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.wn
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !60
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr [4 x i8], ptr %i.vq, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !60
  store i32 %i.wt, ptr %i.wo, align 4, !tbaa !60
  %i.wu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2439.next.3 = add nuw nsw i64 %niter2439, 4 ; 2 uses
  %niter2439.ncmp.3 = icmp eq i64 %niter2439.next.3, %unroll_iter2438
  br i1 %niter2439.ncmp.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !130

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.dk
  %.not.i.i.i.i339 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i.i339, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod2436.not = icmp eq i64 %xtraiter2434, 0
  br i1 %lcmp.mod2436.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.wu, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod2437 = icmp ne i64 %xtraiter2434, 0
  call void @llvm.assume(i1 %lcmp.mod2437)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.xb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter2435 = phi i64 [ %epil.iter2435.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !60
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr [4 x i8], ptr %i.vq, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !60
  store i32 %i.xa, ptr %i.wv, align 4, !tbaa !60
  %i.xb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2435.next = add i64 %epil.iter2435, 1 ; 2 uses
  %epil.iter2435.cmp.not = icmp eq i64 %epil.iter2435.next, %xtraiter2434
  br i1 %epil.iter2435.cmp.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !735

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.xc = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !108
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = sub i64 %i.xe, %i.vk
  call void @_ZdlPvm(ptr noundef nonnull %i.vi, i64 noundef %i.xf) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.xg = load ptr, ptr %63, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i340 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i.i340, label %_ZNSt6vectorIiSaIiEED2Ev.exit341, label %bb.dl

bb.dl:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit
  %i.xh = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !108
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = ptrtoint ptr %i.xg to i64
  %i.xl = sub i64 %i.xj, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %i.xg, i64 noundef %i.xl) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit341

_ZNSt6vectorIiSaIiEED2Ev.exit341:                 ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  %i.xm = load ptr, ptr %i.tk, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i342 = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i.i342, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit341
  %i.xn = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !108
  %i.xp = ptrtoint ptr %i.xo to i64
  %i.xq = ptrtoint ptr %i.xm to i64
  %i.xr = sub i64 %i.xp, %i.xq
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef %i.xr) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit341, %bb.dm
  %i.xs = load ptr, ptr %61, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i344 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i.i344, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343
  %i.xt = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !108
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xs to i64
  %i.xx = sub i64 %i.xv, %i.xw
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.xx) #35
  br label %bb.do

bb.do:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  %i.xy = sext i32 %.0111.lcssa to i64            ; 2 uses
  %i.xz = sext i32 %.0109.lcssa to i64
  %i.ya = load ptr, ptr %59, align 8, !tbaa !111, !noalias !736
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.ya, i64 %i.xy ; 2 uses
  %i.yc = load i64, ptr %i.tj, align 8, !tbaa !113, !noalias !736 ; 2 uses
  store ptr %i.yb, ptr %64, align 8
  %.sroa.51324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.xz, ptr %.sroa.51324.0..sroa_idx, align 8
  %.sroa.61325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 1, ptr %.sroa.61325.0..sroa_idx, align 8
  %.sroa.71326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %59, ptr %.sroa.71326.0..sroa_idx, align 8
  %.sroa.81327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 32
  store i64 %i.xy, ptr %.sroa.81327.0..sroa_idx, align 8
  %.sroa.91328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 40
  store i64 0, ptr %.sroa.91328.0..sroa_idx, align 8
  %.sroa.101329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 48
  store i64 %i.yc, ptr %.sroa.101329.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store i32 %i.dl, ptr %23, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  store ptr %i.yb, ptr %24, align 8, !tbaa !137
  %i.yd = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.yc, ptr %i.yd, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %24, ptr %25, align 8, !tbaa !141
  %i.ye = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %23, ptr %i.ye, align 8, !tbaa !143
  %i.yf = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.yf, align 8, !tbaa !145
  %i.yg = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %64, ptr %i.yg, align 8, !tbaa !147
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEENS_5ArrayIiLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIiiEELi0EEELi4ELi0EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i348 unwind label %bb.fx

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i348: ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br i1 %i.fg, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i864, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit352

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i864: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i348
  %i.yh = mul nuw nsw i64 %i.fe, 12
  %i.yi = call noalias ptr @malloc(i64 noundef %i.yh) #37 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, null
  br i1 %i.yj, label %.invoke1693, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit352

.invoke1693:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i864
  %i.yk = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.yk, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.yk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont1694 unwind label %bb.dp

.cont1694:                                        ; preds = %.invoke1693
  unreachable

bb.dp:                                            ; preds = %.invoke1693
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %.body327
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLi3ELi1EdLi3ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a

bb.cx:                                            ; preds = %bb.cx, %.epil.preheader2421
  %.09.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.epil.preheader2421 ], [ %i.qs, %bb.cx ] ; 3 uses
  %epil.iter2423 = phi i64 [ 0, %.epil.preheader2421 ], [ %epil.iter2423.next, %bb.cx ]
  %i.qn = getelementptr [4 x i8], ptr %i.ql, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !60
  %i.qq = sext i32 %i.qp to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qq
  %i.qr = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.epil, align 4, !tbaa !60
  store i32 %i.qr, ptr %i.qn, align 4, !tbaa !60
  %i.qs = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2423.next = add i64 %epil.iter2423, 1 ; 2 uses
  %epil.iter2423.cmp.not = icmp eq i64 %epil.iter2423.next, %xtraiter2422
  br i1 %epil.iter2423.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx, !llvm.loop !1023

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.cx, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa
  %i.qt = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.qt, %i.px
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !723

.preheader.i.i.i.i.i.i.i.i.i.i.i.new:             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter2427 = phi i64 [ %niter2427.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i ]
  %i.qu = getelementptr [4 x i8], ptr %i.ql, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !60
  %i.qx = sext i32 %i.qw to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qx
  %i.qy = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !60
  store i32 %i.qy, ptr %i.qu, align 4, !tbaa !60
  %i.qz = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ra = getelementptr [4 x i8], ptr %i.ql, i64 %i.qz
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.qz
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !60
  %i.rd = sext i32 %i.rc to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.rd
  %i.re = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.1, align 4, !tbaa !60
  store i32 %i.re, ptr %i.ra, align 4, !tbaa !60
  %i.rf = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.rg = getelementptr [4 x i8], ptr %i.ql, i64 %i.rf
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.rf
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !60
  %i.rj = sext i32 %i.ri to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.rj
  %i.rk = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.2, align 4, !tbaa !60
  store i32 %i.rk, ptr %i.rg, align 4, !tbaa !60
  %i.rl = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.rm = getelementptr [4 x i8], ptr %i.ql, i64 %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.rl
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !60
  %i.rp = sext i32 %i.ro to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i, i64 %i.rp
  %i.rq = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.3, align 4, !tbaa !60
  store i32 %i.rq, ptr %i.rm, align 4, !tbaa !60
  %i.rr = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2427.next.3 = add nuw nsw i64 %niter2427, 4 ; 2 uses
  %niter2427.ncmp.3 = icmp eq i64 %niter2427.next.3, %unroll_iter2426
  br i1 %niter2427.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.new, !llvm.loop !724

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.cw
  %.not.i.i.i.i318 = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i.i318, label %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.rs = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !108
  %i.ru = ptrtoint ptr %i.rt to i64
  %i.rv = ptrtoint ptr %i.py to i64
  %i.rw = sub i64 %i.ru, %i.rv
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef %i.rw) #35
  br label %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit

_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEcmINS_11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.rx = load ptr, ptr %57, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i319 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i.i319, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit
  %i.ry = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !108
  %i.sa = ptrtoint ptr %i.rz to i64
  %i.sb = ptrtoint ptr %i.rx to i64
  %i.sc = sub i64 %i.sa, %i.sb
  call void @_ZdlPvm(ptr noundef nonnull %i.rx, i64 noundef %i.sc) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  %i.sd = load ptr, ptr %56, align 8, !tbaa !34
  call void @free(ptr noundef %i.sd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  %i.se = load ptr, ptr %i.ky, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i320 = icmp eq ptr %i.se, null
  br i1 %.not.i.i.i.i320, label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.sf = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !108
  %i.sh = ptrtoint ptr %i.sg to i64
  %i.si = ptrtoint ptr %i.se to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef %i.sj) #35
  br label %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit

_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cz
  %i.sk = load ptr, ptr %54, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i321 = icmp eq ptr %i.sk, null
  br i1 %.not.i.i.i321, label %_ZNSt6vectorIiSaIiEED2Ev.exit322, label %bb.da

bb.da:                                            ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !108
  %i.sn = ptrtoint ptr %i.sm to i64
  %i.so = ptrtoint ptr %i.sk to i64
  %i.sp = sub i64 %i.sn, %i.so
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.sp) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit322

_ZNSt6vectorIiSaIiEED2Ev.exit322:                 ; preds = %_ZN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEED2Ev.exit, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.sq = add nsw i32 %i.de, -1
  store i32 %i.sq, ptr %i.e, align 4, !tbaa !60
  invoke void @_ZN3igl9LinSpacedIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEET_NS4_5IndexERKNS4_6ScalarES8_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.92") align 8 %58, i64 noundef %i.df, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %bb.db unwind label %bb.fp

bb.db:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit322
  %i.sr = load ptr, ptr %7, align 8, !tbaa !109   ; 2 uses
  %i.ss = load ptr, ptr %58, align 8, !tbaa !109
  store ptr %i.ss, ptr %7, align 8, !tbaa !109
  store ptr %i.sr, ptr %58, align 8, !tbaa !109
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.su = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.sv = load i64, ptr %i.st, align 8, !tbaa !110
  %i.sw = load i64, ptr %i.su, align 8, !tbaa !110
  store i64 %i.sw, ptr %i.st, align 8, !tbaa !110
  store i64 %i.sv, ptr %i.su, align 8, !tbaa !110
  call void @free(ptr noundef %i.sr) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br i1 %i.ey, label %bb.dg, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  br i1 %i.ez, label %bb.dd, label %.sink.split.i.i.i.i324

bb.dd:                                            ; preds = %bb.dc
  %i.sx = shl nuw nsw i64 %i.ex, 2
  %i.sy = call noalias ptr @malloc(i64 noundef %i.sx) #37 ; 2 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %bb.de, label %.sink.split.i.i.i.i324

bb.de:                                            ; preds = %bb.dd
  %i.ta = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ta, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.ta, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc.i326 unwind label %bb.df

.noexc.i326:                                      ; preds = %bb.de
  unreachable

.sink.split.i.i.i.i324:                           ; preds = %bb.dd, %bb.dc
  %.sink.i.i.i.i325 = phi ptr [ %i.sy, %bb.dd ], [ null, %bb.dc ]
  store ptr %.sink.i.i.i.i325, ptr %59, align 8, !tbaa !111
  br label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %.body327

bb.dg:                                            ; preds = %.sink.split.i.i.i.i324, %bb.db
  %i.tc = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 4 uses
  store i64 %i.ex, ptr %i.tc, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %61, ptr noundef nonnull align 8 dereferenceable(16) %45)
          to label %bb.dh unwind label %bb.fq

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %60, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.di unwind label %bb.fr

bb.di:                                            ; preds = %bb.dh
  %i.td = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !69, !noalias !1024
  %i.tg = load ptr, ptr %i.td, align 8, !tbaa !74, !noalias !1024 ; 6 uses
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = sub i64 %i.th, %i.ti                    ; 2 uses
  %i.tk = ashr exact i64 %i.tj, 2                 ; 4 uses
  %i.tl = load ptr, ptr %60, align 8, !tbaa !117, !noalias !1024, !nonnull !14, !align !83
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !111, !noalias !1024 ; 5 uses
  %i.tn = icmp sgt i64 %i.tk, 0
  br i1 %i.tn, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader: ; preds = %bb.di
  %84 = load ptr, ptr %59, align 8, !tbaa !111, !noalias !1027 ; 5 uses
  %xtraiter2428 = and i64 %i.tk, 3                ; 3 uses
  %i.to = icmp ult i64 %i.tk, 4
  br i1 %i.to, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader
  %unroll_iter2432 = and i64 %i.tk, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new
  %.09.i.i.i.i.i.i.i.i.i.i.i.i329 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new ], [ %i.uq, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 6 uses
  %niter2433 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader.new ], [ %niter2433.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i ]
  %i.tp = getelementptr [4 x i8], ptr %84, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !60, !noalias !1024
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr [4 x i8], ptr %i.tm, i64 %i.ts
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !60, !noalias !1024
  store i32 %i.tu, ptr %i.tp, align 4, !tbaa !60, !noalias !1024
  %i.tv = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 1 ; 2 uses
  %i.tw = getelementptr [4 x i8], ptr %84, i64 %i.tv
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.tv
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !60, !noalias !1024
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr [4 x i8], ptr %i.tm, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !60, !noalias !1024
  store i32 %i.ub, ptr %i.tw, align 4, !tbaa !60, !noalias !1024
  %i.uc = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 2 ; 2 uses
  %i.ud = getelementptr [4 x i8], ptr %84, i64 %i.uc
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.uc
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !60, !noalias !1024
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr [4 x i8], ptr %i.tm, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !60, !noalias !1024
  store i32 %i.ui, ptr %i.ud, align 4, !tbaa !60, !noalias !1024
  %i.uj = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 3 ; 2 uses
  %i.uk = getelementptr [4 x i8], ptr %84, i64 %i.uj
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.uj
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !60, !noalias !1024
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr [4 x i8], ptr %i.tm, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !60, !noalias !1024
  store i32 %i.up, ptr %i.uk, align 4, !tbaa !60, !noalias !1024
  %i.uq = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329, 4 ; 2 uses
  %niter2433.next.3 = add nuw nsw i64 %niter2433, 4 ; 2 uses
  %niter2433.ncmp.3 = icmp eq i64 %niter2433.next.3, %unroll_iter2432
  br i1 %niter2433.ncmp.3, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i, !llvm.loop !125

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i
  %lcmp.mod2430.not = icmp eq i64 %xtraiter2428, 0
  br i1 %lcmp.mod2430.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.preheader ], [ %i.uq, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod2431 = icmp ne i64 %xtraiter2428, 0
  call void @llvm.assume(i1 %lcmp.mod2431)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader ], [ %i.ux, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil ] ; 3 uses
  %epil.iter2429 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil.preheader ], [ %epil.iter2429.next, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil ]
  %i.ur = getelementptr [4 x i8], ptr %84, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !60, !noalias !1024
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr [4 x i8], ptr %i.tm, i64 %i.uu
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !60, !noalias !1024
  store i32 %i.uw, ptr %i.ur, align 4, !tbaa !60, !noalias !1024
  %i.ux = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i329.epil, 1
  %epil.iter2429.next = add i64 %epil.iter2429, 1 ; 2 uses
  %epil.iter2429.cmp.not = icmp eq i64 %epil.iter2429.next, %xtraiter2428
  br i1 %epil.iter2429.cmp.not, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil, !llvm.loop !1030

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.i.i.epil, %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %63, ptr noundef nonnull align 8 dereferenceable(16) %46)
          to label %bb.dj unwind label %bb.fs

bb.dj:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.dk unwind label %bb.ft

bb.dk:                                            ; preds = %bb.dj
  %i.uy = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.uz = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !69
  %i.vb = load ptr, ptr %i.uy, align 8, !tbaa !74 ; 8 uses
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = ptrtoint ptr %i.vb to i64               ; 2 uses
  %i.ve = sub i64 %i.vc, %i.vd
  %i.vf = ashr exact i64 %i.ve, 2                 ; 4 uses
  %i.vg = load ptr, ptr %59, align 8, !tbaa !111, !noalias !1031
  %i.vh = getelementptr inbounds i8, ptr %i.vg, i64 %i.tj ; 5 uses
  %i.vi = load ptr, ptr %62, align 8, !tbaa !117, !nonnull !14, !align !83
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !111 ; 5 uses
  %i.vk = icmp sgt i64 %i.vf, 0
  br i1 %i.vk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.dk
  %xtraiter2434 = and i64 %i.vf, 3                ; 3 uses
  %i.vl = icmp ult i64 %i.vf, 4
  br i1 %i.vl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter2438 = and i64 %i.vf, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.wn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter2439 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter2439.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !60
  %i.vp = sext i32 %i.vo to i64
  %i.vq = getelementptr [4 x i8], ptr %i.vj, i64 %i.vp
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !60
  store i32 %i.vr, ptr %i.vm, align 4, !tbaa !60
  %i.vs = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vs
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.vs
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !60
  %i.vw = sext i32 %i.vv to i64
  %i.vx = getelementptr [4 x i8], ptr %i.vj, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !60
  store i32 %i.vy, ptr %i.vt, align 4, !tbaa !60
  %i.vz = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.vz
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !60
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr [4 x i8], ptr %i.vj, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !60
  store i32 %i.wf, ptr %i.wa, align 4, !tbaa !60
  %i.wg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.wg
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.wg
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !60
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr [4 x i8], ptr %i.vj, i64 %i.wk
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !60
  store i32 %i.wm, ptr %i.wh, align 4, !tbaa !60
  %i.wn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2439.next.3 = add nuw nsw i64 %niter2439, 4 ; 2 uses
  %niter2439.ncmp.3 = icmp eq i64 %niter2439.next.3, %unroll_iter2438
  br i1 %niter2439.ncmp.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !130

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.dk
  %.not.i.i.i.i339 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i.i.i339, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod2436.not = icmp eq i64 %xtraiter2434, 0
  br i1 %lcmp.mod2436.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.wn, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod2437 = icmp ne i64 %xtraiter2434, 0
  call void @llvm.assume(i1 %lcmp.mod2437)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.wu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter2435 = phi i64 [ %epil.iter2435.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !60
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr [4 x i8], ptr %i.vj, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !60
  store i32 %i.wt, ptr %i.wo, align 4, !tbaa !60
  %i.wu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2435.next = add i64 %epil.iter2435, 1 ; 2 uses
  %epil.iter2435.cmp.not = icmp eq i64 %epil.iter2435.next, %xtraiter2434
  br i1 %epil.iter2435.cmp.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1034

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.wv = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !108
  %i.wx = ptrtoint ptr %i.ww to i64
  %i.wy = sub i64 %i.wx, %i.vd
  call void @_ZdlPvm(ptr noundef nonnull %i.vb, i64 noundef %i.wy) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.wz = load ptr, ptr %63, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i340 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i340, label %_ZNSt6vectorIiSaIiEED2Ev.exit341, label %bb.dl

bb.dl:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit
  %i.xa = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !108
  %i.xc = ptrtoint ptr %i.xb to i64
  %i.xd = ptrtoint ptr %i.wz to i64
  %i.xe = sub i64 %i.xc, %i.xd
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xe) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit341

_ZNSt6vectorIiSaIiEED2Ev.exit341:                 ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  %i.xf = load ptr, ptr %i.td, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i342 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i.i.i342, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343, label %bb.dm

bb.dm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit341
  %i.xg = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !108
  %i.xi = ptrtoint ptr %i.xh to i64
  %i.xj = ptrtoint ptr %i.xf to i64
  %i.xk = sub i64 %i.xi, %i.xj
  call void @_ZdlPvm(ptr noundef nonnull %i.xf, i64 noundef %i.xk) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit341, %bb.dm
  %i.xl = load ptr, ptr %61, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i344 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i.i344, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343
  %i.xm = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !108
  %i.xo = ptrtoint ptr %i.xn to i64
  %i.xp = ptrtoint ptr %i.xl to i64
  %i.xq = sub i64 %i.xo, %i.xp
  call void @_ZdlPvm(ptr noundef nonnull %i.xl, i64 noundef %i.xq) #35
  br label %bb.do

bb.do:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit343, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  %i.xr = sext i32 %.0111.lcssa to i64            ; 2 uses
  %i.xs = sext i32 %.0109.lcssa to i64
  %i.xt = load ptr, ptr %59, align 8, !tbaa !111, !noalias !1035
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.xr ; 2 uses
  %i.xv = load i64, ptr %i.tc, align 8, !tbaa !113, !noalias !1035 ; 2 uses
  store ptr %i.xu, ptr %64, align 8
  %.sroa.51324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.xs, ptr %.sroa.51324.0..sroa_idx, align 8
  %.sroa.61325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 1, ptr %.sroa.61325.0..sroa_idx, align 8
  %.sroa.71326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %59, ptr %.sroa.71326.0..sroa_idx, align 8
  %.sroa.81327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 32
  store i64 %i.xr, ptr %.sroa.81327.0..sroa_idx, align 8
  %.sroa.91328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 40
  store i64 0, ptr %.sroa.91328.0..sroa_idx, align 8
  %.sroa.101329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 48
  store i64 %i.xv, ptr %.sroa.101329.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store i32 %i.de, ptr %23, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  store ptr %i.xu, ptr %24, align 8, !tbaa !137
  %i.xw = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.xv, ptr %i.xw, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %24, ptr %25, align 8, !tbaa !141
  %i.xx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %23, ptr %i.xx, align 8, !tbaa !143
  %i.xy = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.xy, align 8, !tbaa !145
  %i.xz = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %64, ptr %i.xz, align 8, !tbaa !147
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEENS_5ArrayIiLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIiiEELi0EEELi4ELi0EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i348 unwind label %bb.fx

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i348: ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br i1 %i.ez, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i864, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit352

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i864: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i348
  %i.ya = mul nuw nsw i64 %i.ex, 12
  %i.yb = call noalias ptr @malloc(i64 noundef %i.ya) #37 ; 2 uses
  %i.yc = icmp eq ptr %i.yb, null
  br i1 %i.yc, label %.invoke1693, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit352

.invoke1693:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i864
  %i.yd = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.yd, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.yd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont1694 unwind label %bb.dp

.cont1694:                                        ; preds = %.invoke1693
  unreachable

bb.dp:                                            ; preds = %.invoke1693
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %.body327
end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umax.i128(i128, i128) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #26

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #26

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind memory(argmem: write) }
attributes #28 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind memory(none) }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 25}
!10 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEE", !7, i64 0, !11, i64 16, !12, i64 24, !12, i64 25, !12, i64 26}
!11 = !{!"long", !7, i64 0}
!12 = !{!"bool", !7, i64 0}
!13 = !{i8 0, i8 2}
!14 = !{}
!15 = !{!16, !11, i64 8}
!16 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi3ELi1EEE", !17, i64 0, !11, i64 8}
!17 = !{!"p1 int", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!20, !11, i64 8}
!20 = !{!"_ZTSN5Eigen12DenseStorageIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELin1ELin1ELi1EEE", !21, i64 0, !11, i64 8, !11, i64 16}
!21 = !{!"p1 _ZTSN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE", !18, i64 0}
!22 = !{!20, !11, i64 16}
!23 = !{!20, !21, i64 0}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSN4CGAL6HandleE", !26, i64 0}
!26 = !{!"p1 _ZTSN4CGAL3RepE", !18, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = distinct !{ptr @_ZN5Eigen12DenseStorageIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELin1ELin1ELi1EE6resizeElll, null, ptr @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!31 = !{!32, !11, i64 8}
!32 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !17, i64 0, !11, i64 8, !11, i64 16}
!33 = !{!32, !11, i64 16}
!34 = !{!32, !17, i64 0}
!35 = distinct !{ptr @_ZN4CGAL6HandleD2Ev, null, null}
!36 = !{!37, !11, i64 8}
!37 = !{!"_ZTSN5Eigen12DenseStorageIbLin1ELin1ELi1ELi0EEE", !38, i64 0, !11, i64 8}
!38 = !{!"p1 bool", !18, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!43 = distinct !{!43, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!44 = !{i64 16966174}
!45 = !{i64 16967000}
!46 = !{!47, !6, i64 0}
!47 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSSt13__atomic_baseIPN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEEE", !50, i64 0}
!50 = !{!"p1 _ZTSN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEE", !18, i64 0}
!51 = !{!52, !6, i64 0}
!52 = !{!"_ZTSSt9once_flag", !6, i64 0}
!53 = !{!26, !26, i64 0}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE: argument 0"}
!56 = distinct !{!56, !"_ZN4CGALplIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE"}
!57 = distinct !{!57, !40}
!58 = !{!37, !38, i64 0}
!59 = !{!16, !17, i64 0}
!60 = !{!6, !6, i64 0}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNK4CGAL7Plane_3INS_5EpeckEE17orthogonal_vectorEv: argument 0"}
!63 = distinct !{!63, !"_ZNK4CGAL7Plane_3INS_5EpeckEE17orthogonal_vectorEv"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN4CGALmlINS_5EpeckEEENT_2FTERKNS_8Vector_3IS2_EES7_: argument 0"}
!66 = distinct !{!66, !"_ZN4CGALmlINS_5EpeckEEENT_2FTERKNS_8Vector_3IS2_EES7_"}
!67 = !{!12, !12, i64 0}
!68 = distinct !{!68, !40}
!69 = !{!70, !17, i64 8}
!70 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!73 = distinct !{!73, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!74 = !{!70, !17, i64 0}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEE", !77, i64 0, !78, i64 8, !81, i64 32}
!77 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELi3ELi1ELin1ELi3EEE", !18, i64 0}
!78 = !{!"_ZTSSt6vectorIiSaIiEE", !79, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !70, i64 0}
!81 = !{!"_ZTSN5Eigen8internal8AllRangeILi3EEE", !82, i64 0}
!82 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi3EEE"}
!83 = !{i64 8}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !40}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !85}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEEplIiEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiNS9_18promote_scalar_argIiT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIiSC_NSA_IiSC_EEEEEE5valueEE4typeEEEKS5_KNS9_19plain_constant_typeIS5_SH_E4typeEEERKSC_: argument 0"}
!91 = distinct !{!91, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEEplIiEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiNS9_18promote_scalar_argIiT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIiSC_NSA_IiSC_EEEEEE5valueEE4typeEEEKS5_KNS9_19plain_constant_typeIS5_SH_E4typeEEERKSC_"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEE4evalEv: argument 0"}
!94 = distinct !{!94, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiiEEKNS_12ArrayWrapperIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEEEEEE4evalEv"}
!95 = distinct !{!95, !40, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = distinct !{!98, !85}
!99 = distinct !{!99, !40, !96}
!100 = distinct !{!100, !40}
!101 = !{!102, !103, i64 0}
!102 = !{!"_ZTSN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEE", !103, i64 0, !78, i64 8, !81, i64 32}
!103 = !{!"p1 _ZTSN5Eigen5ArrayIiLin1ELi3ELi1ELin1ELi3EEE", !18, i64 0}
!104 = distinct !{!104, !85}
!105 = distinct !{!105, !40}
!106 = distinct !{!106, !85}
!107 = distinct !{!107, !85}
!108 = !{!70, !17, i64 16}
!109 = !{!17, !17, i64 0}
!110 = !{!11, !11, i64 0}
!111 = !{!112, !17, i64 0}
!112 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !17, i64 0, !11, i64 8}
!113 = !{!112, !11, i64 8}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!116 = distinct !{!116, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!117 = !{!118, !119, i64 0}
!118 = !{!"_ZTSN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEE", !119, i64 0, !78, i64 8, !120, i64 32}
!119 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !18, i64 0}
!120 = !{!"_ZTSN5Eigen8internal8AllRangeILi1EEE", !121, i64 0}
!121 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!122 = !{!123, !115}
!123 = distinct !{!123, !124, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!124 = distinct !{!124, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !85}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!129 = distinct !{!129, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !85}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!134 = distinct !{!134, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!135 = !{!136, !6, i64 0}
!136 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIiEE", !6, i64 0}
!137 = !{!138, !17, i64 0}
!138 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEENS3_IiLin1ELin1ELi0ELin1ELi1EEEEE", !17, i64 0, !121, i64 8, !139, i64 16}
!139 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !11, i64 0}
!140 = !{!139, !11, i64 0}
!141 = !{!142, !142, i64 0}
!142 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEEEE", !18, i64 0}
!143 = !{!144, !144, i64 0}
!144 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_14CwiseNullaryOpINS0_18scalar_constant_opIiEENS_5ArrayIiLin1ELin1ELi0ELin1ELi1EEEEEEE", !18, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"p1 _ZTSN5Eigen8internal13add_assign_opIiiEE", !18, i64 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"p1 _ZTSN5Eigen12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEE", !18, i64 0}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5Eigen9DenseBaseINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEE7rowwiseEv: argument 0"}
!151 = distinct !{!151, !"_ZN5Eigen9DenseBaseINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEEE7rowwiseEv"}
!152 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!153 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!154 = !{!"branch_weights", !"expected", i32 1073473, i32 2146410175}
!155 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EE7reverseEv: argument 0"}
!158 = distinct !{!158, !"_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EE7reverseEv"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!161 = distinct !{!161, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKNS1_IiLin1ELi3ELi1ELin1ELi3EEESt6vectorIiSaIiEENS_8internal8AllRangeILi3EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!162 = distinct !{!162, !85}
!163 = distinct !{!163, !40}
!164 = distinct !{!164, !85}
!165 = distinct !{!165, !85}
!166 = distinct !{!166, !85}
!167 = distinct !{!167, !40}
!168 = distinct !{!168, !85}
!169 = distinct !{!169, !85}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_5BlockIS2_Lin1ELi1ELb1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!172 = distinct !{!172, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_5BlockIS2_Lin1ELi1ELb1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!173 = !{!174, !17, i64 0}
!174 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi0EEE", !17, i64 0, !139, i64 8, !139, i64 16}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!177 = distinct !{!177, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!178 = !{!179, !179, i64 0}
!179 = !{!"p1 _ZTSN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEE", !18, i64 0}
!180 = !{!181, !11, i64 48}
!181 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0ELb1EEE", !182, i64 0, !179, i64 24, !139, i64 32, !139, i64 40, !11, i64 48}
!182 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1EEE", !174, i64 0}
!183 = !{!184, !17, i64 0}
!184 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEE", !17, i64 0, !121, i64 8, !139, i64 16}
!185 = !{!186, !17, i64 0}
!186 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES4_EE", !17, i64 0, !121, i64 8, !139, i64 16}
!187 = !{!188, !188, i64 0}
!188 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEE", !18, i64 0}
!189 = !{!190, !190, i64 0}
!190 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEE", !18, i64 0}
!191 = !{!192, !192, i64 0}
!192 = !{!"p1 _ZTSN5Eigen8internal9assign_opIiiEE", !18, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEE", !18, i64 0}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!197 = distinct !{!197, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!198 = distinct !{!198, !40, !96, !97}
!199 = distinct !{!199, !85}
!200 = distinct !{!200, !40, !96}
!201 = distinct !{!201, !40, !96, !97}
!202 = distinct !{!202, !85}
!203 = distinct !{!203, !40, !96}
!204 = distinct !{!204, !40}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!207 = distinct !{!207, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!208 = distinct !{!208, !40, !96, !97}
!209 = distinct !{!209, !85}
!210 = distinct !{!210, !40, !96}
!211 = distinct !{!211, !40, !96, !97}
!212 = distinct !{!212, !85}
!213 = distinct !{!213, !40, !96}
!214 = distinct !{!214, !40}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!217 = distinct !{!217, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!218 = distinct !{!218, !40, !96, !97}
!219 = distinct !{!219, !85}
!220 = distinct !{!220, !40, !96}
!221 = distinct !{!221, !40, !96, !97}
!222 = distinct !{!222, !85}
!223 = distinct !{!223, !40, !96}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!226 = distinct !{!226, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!227 = distinct !{!227, !40, !96, !97}
!228 = distinct !{!228, !85}
!229 = distinct !{!229, !40, !96}
!230 = distinct !{!230, !40, !96, !97}
!231 = distinct !{!231, !85}
!232 = distinct !{!232, !40, !96}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!235 = distinct !{!235, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!236 = distinct !{!236, !40, !96, !97}
!237 = distinct !{!237, !85}
!238 = distinct !{!238, !40, !96}
!239 = distinct !{!239, !40, !96, !97}
!240 = distinct !{!240, !85}
!241 = distinct !{!241, !40, !96}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!244 = distinct !{!244, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!245 = distinct !{!245, !40, !96, !97}
!246 = distinct !{!246, !85}
!247 = distinct !{!247, !40, !96}
!248 = distinct !{!248, !40, !96, !97}
!249 = distinct !{!249, !85}
!250 = distinct !{!250, !40, !96}
!251 = !{!252}
!252 = distinct !{!252, !253, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!253 = distinct !{!253, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!254 = distinct !{!254, !40, !96, !97}
!255 = distinct !{!255, !85}
!256 = distinct !{!256, !40, !96}
!257 = distinct !{!257, !40, !96, !97}
!258 = distinct !{!258, !85}
!259 = distinct !{!259, !40, !96}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!262 = distinct !{!262, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!263 = distinct !{!263, !40, !96, !97}
!264 = distinct !{!264, !85}
!265 = distinct !{!265, !40, !96}
!266 = distinct !{!266, !40, !96, !97}
!267 = distinct !{!267, !85}
!268 = distinct !{!268, !40, !96}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!271 = distinct !{!271, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!272 = distinct !{!272, !40, !96, !97}
!273 = distinct !{!273, !85}
!274 = distinct !{!274, !40, !96}
!275 = distinct !{!275, !40, !96, !97}
!276 = distinct !{!276, !85}
!277 = distinct !{!277, !40, !96}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!280 = distinct !{!280, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!281 = distinct !{!281, !40, !96, !97}
!282 = distinct !{!282, !85}
!283 = distinct !{!283, !40, !96}
!284 = distinct !{!284, !40, !96, !97}
!285 = distinct !{!285, !85}
!286 = distinct !{!286, !40, !96}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!289 = distinct !{!289, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!290 = distinct !{!290, !40, !96, !97}
!291 = distinct !{!291, !85}
!292 = distinct !{!292, !40, !96}
!293 = distinct !{!293, !40, !96, !97}
!294 = distinct !{!294, !85}
!295 = distinct !{!295, !40, !96}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZNK5Eigen9ArrayBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIiEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEEEEeqERKi: argument 0"}
!298 = distinct !{!298, !"_ZNK5Eigen9ArrayBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIiEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEEEEeqERKi"}
!299 = distinct !{!299, !40, !96, !97}
!300 = distinct !{!300, !40, !97, !96}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!303 = distinct !{!303, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi2EEEE4evalEv: argument 0"}
!306 = distinct !{!306, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi2EEEE4evalEv"}
!307 = !{!308, !11, i64 8}
!308 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELi1ELin1ELi1EEE", !17, i64 0, !11, i64 8}
!309 = !{!308, !17, i64 0}
!310 = distinct !{!310, !40}
!311 = !{!312}
!312 = distinct !{!312, !313, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!313 = distinct !{!313, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!314 = distinct !{!314, !40, !96, !97}
!315 = distinct !{!315, !85}
!316 = distinct !{!316, !40, !96}
!317 = !{!318}
!318 = distinct !{!318, !319, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!319 = distinct !{!319, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!322 = distinct !{!322, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!323 = distinct !{!323, !40, !96, !97}
!324 = distinct !{!324, !85}
!325 = distinct !{!325, !40, !96}
!326 = distinct !{!326, !40}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsIS2_EENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!329 = distinct !{!329, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsIS2_EENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!330 = !{!331}
!331 = distinct !{!331, !332, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!332 = distinct !{!332, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!333 = !{!331, !328}
!334 = !{!335, !17, i64 0}
!335 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIiLin1EEE", !17, i64 0, !11, i64 8}
!336 = !{!335, !11, i64 8}
!337 = !{!338, !338, i64 0}
!338 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEE", !18, i64 0}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!341 = distinct !{!341, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!344 = distinct !{!344, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!345 = distinct !{!345, !40, !96, !97}
!346 = distinct !{!346, !85}
!347 = distinct !{!347, !40, !96}
!348 = distinct !{!348, !40, !96, !97}
!349 = distinct !{!349, !85}
!350 = distinct !{!350, !40, !96}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!353 = distinct !{!353, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!356 = distinct !{!356, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!357 = distinct !{!357, !40, !96, !97}
!358 = distinct !{!358, !85}
!359 = distinct !{!359, !40, !96}
!360 = distinct !{!360, !40, !96, !97}
!361 = distinct !{!361, !85}
!362 = distinct !{!362, !40, !96}
!363 = !{!364}
!364 = distinct !{!364, !365, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!365 = distinct !{!365, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!368 = distinct !{!368, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!369 = distinct !{!369, !40, !96, !97}
!370 = distinct !{!370, !85}
!371 = distinct !{!371, !40, !96}
!372 = distinct !{!372, !40, !96, !97}
!373 = distinct !{!373, !85}
!374 = distinct !{!374, !40, !96}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!377 = distinct !{!377, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!380 = distinct !{!380, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!381 = distinct !{!381, !40, !96, !97}
!382 = distinct !{!382, !85}
!383 = distinct !{!383, !40, !96}
!384 = distinct !{!384, !40, !96, !97}
!385 = distinct !{!385, !85}
!386 = distinct !{!386, !40, !96}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!389 = distinct !{!389, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!392 = distinct !{!392, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!393 = distinct !{!393, !40, !96, !97}
!394 = distinct !{!394, !85}
!395 = distinct !{!395, !40, !96}
!396 = distinct !{!396, !40, !96, !97}
!397 = distinct !{!397, !85}
!398 = distinct !{!398, !40, !96}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!401 = distinct !{!401, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!404 = distinct !{!404, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!405 = distinct !{!405, !40, !96, !97}
!406 = distinct !{!406, !85}
!407 = distinct !{!407, !40, !96}
!408 = distinct !{!408, !40, !96, !97}
!409 = distinct !{!409, !85}
!410 = distinct !{!410, !40, !96}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsIS2_EENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!413 = distinct !{!413, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsIS2_EENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!416 = distinct !{!416, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!417 = !{!415, !412}
!418 = !{!419, !17, i64 0}
!419 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi0EEE", !17, i64 0, !139, i64 8, !139, i64 16}
!420 = !{!119, !119, i64 0}
!421 = !{!422, !11, i64 48}
!422 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0ELb1EEE", !423, i64 0, !119, i64 24, !139, i64 32, !139, i64 40, !11, i64 48}
!423 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1EEE", !419, i64 0}
!424 = !{!425, !17, i64 0}
!425 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIiLi0EEE", !17, i64 0}
!426 = !{!427, !427, i64 0}
!427 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEE", !18, i64 0}
!428 = !{!429, !429, i64 0}
!429 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !18, i64 0}
!430 = !{!431, !431, i64 0}
!431 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEE", !18, i64 0}
!432 = !{!433}
!433 = distinct !{!433, !434, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!434 = distinct !{!434, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!435 = distinct !{!435, !40, !96, !97}
!436 = distinct !{!436, !40, !97, !96}
!437 = distinct !{!437, !40, !96, !97}
!438 = distinct !{!438, !40, !97, !96}
!439 = distinct !{!439, !40}
!440 = distinct !{!440, !40, !96, !97}
!441 = distinct !{!441, !85}
!442 = distinct !{!442, !40, !96}
!443 = distinct !{!443, !40}
!444 = !{!445, !445, i64 0}
!445 = !{!"_ZTSN3igl15MeshBooleanTypeE", !7, i64 0}
!446 = !{!447, !21, i64 0}
!447 = !{!"_ZTSN5Eigen12DenseStorageIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELin1ELin1ELi0EEE", !21, i64 0, !11, i64 8, !11, i64 16}
!448 = !{!447, !11, i64 8}
!449 = !{!447, !11, i64 16}
!450 = distinct !{ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev, null, null, ptr @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!451 = distinct !{ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev, null, null, ptr @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZNK5Eigen9DenseBaseINS_11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS_8internal11SingleRangeEEEE4evalEv: argument 0"}
!454 = distinct !{!454, !"_ZNK5Eigen9DenseBaseINS_11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS_8internal11SingleRangeEEEE4evalEv"}
!455 = !{!456, !119, i64 0}
!456 = !{!"_ZTSN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEES2_NS_8internal11SingleRangeEEE", !119, i64 0, !457, i64 8, !459, i64 24}
!457 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !458, i64 0}
!458 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !112, i64 0}
!459 = !{!"_ZTSN5Eigen8internal11SingleRangeE", !11, i64 0}
!460 = distinct !{!460, !40}
!461 = distinct !{!461, !85}
!462 = distinct !{!462, !40, !96, !97}
!463 = distinct !{!463, !85}
!464 = distinct !{!464, !40, !96}
!465 = distinct !{!465, !40}
!466 = !{!467, !468, i64 0}
!467 = !{!"_ZTSZNK4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EE5exactEvEUlvE_", !468, i64 0}
!468 = !{!"p1 _ZTSN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE", !18, i64 0}
!469 = !{!18, !18, i64 0}
!470 = !{!471, !471, i64 0}
!471 = !{!"long long", !7, i64 0}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_: argument 0"}
!474 = distinct !{!474, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi1ELin1ELi3EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_"}
!475 = !{!77, !77, i64 0}
!476 = !{!477}
!477 = distinct !{!477, !478, !"_ZNK5Eigen9DenseBaseINS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_: argument 0"}
!478 = distinct !{!478, !"_ZNK5Eigen9DenseBaseINS_5ArrayIiLin1ELi3ELi1ELin1ELi3EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_"}
!479 = !{!103, !103, i64 0}
!480 = distinct !{!480, !40, !96, !97}
!481 = distinct !{!481, !40, !97, !96}
!482 = distinct !{!482, !40, !96, !97}
!483 = distinct !{!483, !40}
!484 = distinct !{!484, !40, !97, !96}
!485 = distinct !{!485, !40, !96, !97}
!486 = distinct !{!486, !40}
!487 = distinct !{!487, !40, !97, !96}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_: argument 0"}
!490 = distinct !{!490, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowISt6vectorIiSaIiEEEENS3_10IvcRowTypeIT_E4typeERKS9_"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv: argument 0"}
!493 = distinct !{!493, !"_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE9subVectorILNS_13DirectionTypeE1EEENS_8internal11conditionalIXeqT_LS5_0EEKNS_5BlockIKS2_Lin1ELi1ELb1EEEKNS8_IS9_Li1ELin1ELb0EEEE4typeEl: argument 0"}
!496 = distinct !{!496, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE9subVectorILNS_13DirectionTypeE1EEENS_8internal11conditionalIXeqT_LS5_0EEKNS_5BlockIKS2_Lin1ELi1ELb1EEEKNS8_IS9_Li1ELin1ELb0EEEE4typeEl"}
!497 = distinct !{!497, !40, !96, !97}
!498 = distinct !{!498, !85}
!499 = distinct !{!499, !40, !96, !97}
!500 = distinct !{!500, !85}
!501 = distinct !{!501, !40, !96}
!502 = distinct !{!502, !40}
!503 = distinct !{!503, !40, !96}
!504 = distinct !{!504, !40}
!505 = distinct !{!505, !40}
!506 = distinct !{!506, !40}
!507 = distinct !{!507, !40}
!508 = distinct !{!508, !40}
!509 = distinct !{!509, !40}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi2EEEE4evalEv: argument 0"}
!512 = distinct !{!512, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi2EEEE4evalEv"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!515 = distinct !{!515, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!516 = distinct !{!516, !40}
!517 = distinct !{!517, !40}
!518 = distinct !{!518, !40}
!519 = distinct !{!519, !85}
!520 = distinct !{!520, !40}
!521 = distinct !{!521, !40}
!522 = distinct !{!522, !40}
!523 = distinct !{null, null, ptr @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!524 = distinct !{null, null, ptr @_ZN5Eigen8internal26destruct_elements_of_arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEvPT_m, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowIS2_EENS3_10IvcRowTypeIT_E4typeERKS6_: argument 0"}
!527 = distinct !{!527, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6ivcRowIS2_EENS3_10IvcRowTypeIT_E4typeERKS6_"}
!528 = !{!529, !529, i64 0}
!529 = !{!"double", !7, i64 0}
!530 = !{!531, !11, i64 8}
!531 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi2ELi0EEE", !17, i64 0, !11, i64 8}
!532 = !{!533, !534, i64 0}
!533 = !{!"_ZTSNSt12_Vector_baseIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEESaIS2_EE17_Vector_impl_dataE", !534, i64 0, !534, i64 8, !534, i64 16}
!534 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !18, i64 0}
!535 = !{!533, !534, i64 16}
!536 = !{!533, !534, i64 8}
!537 = !{!538, !179, i64 0}
!538 = !{!"_ZTSNSt12_Vector_baseIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEESaIS2_EE17_Vector_impl_dataE", !179, i64 0, !179, i64 8, !179, i64 16}
!539 = !{!538, !179, i64 16}
!540 = !{!538, !179, i64 8}
!541 = !{!542, !119, i64 0}
!542 = !{!"_ZTSNSt12_Vector_baseIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!543 = !{!542, !119, i64 16}
!544 = !{!542, !119, i64 8}
!545 = !{!531, !17, i64 0}
!546 = !{!547, !548, i64 0}
!547 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !548, i64 0, !11, i64 8, !11, i64 16}
!548 = !{!"p1 double", !18, i64 0}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!551 = distinct !{!551, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!552 = !{!547, !11, i64 16}
!553 = !{!554}
!554 = distinct !{!554, !555, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv: argument 0"}
!555 = distinct !{!555, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv"}
!556 = !{!547, !11, i64 8}
!557 = !{!558, !11, i64 8}
!558 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EEE", !548, i64 0, !11, i64 8}
!559 = !{!558, !548, i64 0}
!560 = distinct !{!560, !40, !96, !97}
!561 = distinct !{!561, !85}
!562 = distinct !{!562, !40, !96}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!565 = distinct !{!565, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!566 = !{!567}
!567 = distinct !{!567, !568, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv: argument 0"}
!568 = distinct !{!568, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv"}
!569 = distinct !{!569, !40, !96, !97}
!570 = distinct !{!570, !85}
!571 = distinct !{!571, !40, !96}
!572 = !{!573}
!573 = distinct !{!573, !574, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!574 = distinct !{!574, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!575 = distinct !{!575, !40, !96, !97}
!576 = distinct !{!576, !85}
!577 = distinct !{!577, !40, !96}
!578 = distinct !{!578, !40, !96, !97}
!579 = distinct !{!579, !85}
!580 = distinct !{!580, !40, !96}
!581 = distinct !{!581, !40}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!584 = distinct !{!584, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!585 = distinct !{!585, !40, !96, !97}
!586 = distinct !{!586, !40, !97, !96}
!587 = distinct !{!587, !40, !96, !97}
!588 = distinct !{!588, !40, !97, !96}
!589 = distinct !{!589, !40}
!590 = distinct !{!590, !40}
!591 = !{!534, !534, i64 0}
!592 = distinct !{!592, !40}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!595 = distinct !{!595, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!596 = !{!597}
!597 = distinct !{!597, !598, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv: argument 0"}
!598 = distinct !{!598, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv"}
!599 = distinct !{!599, !40, !96, !97}
!600 = distinct !{!600, !85}
!601 = distinct !{!601, !40, !96}
!602 = !{!603}
!603 = distinct !{!603, !604, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!604 = distinct !{!604, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!605 = !{!606}
!606 = distinct !{!606, !607, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv: argument 0"}
!607 = distinct !{!607, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4evalEv"}
!608 = distinct !{!608, !40, !96, !97}
!609 = distinct !{!609, !85}
!610 = distinct !{!610, !40, !96}
!611 = !{!612}
!612 = distinct !{!612, !613, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!613 = distinct !{!613, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!614 = distinct !{!614, !40, !96, !97}
!615 = distinct !{!615, !85}
!616 = distinct !{!616, !40, !96}
!617 = distinct !{!617, !40, !96, !97}
!618 = distinct !{!618, !85}
!619 = distinct !{!619, !40, !96}
!620 = distinct !{!620, !40}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl: argument 0"}
!623 = distinct !{!623, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3colEl"}
!624 = distinct !{!624, !40, !96, !97}
!625 = distinct !{!625, !40, !97, !96}
!626 = distinct !{!626, !40, !96, !97}
!627 = distinct !{!627, !40, !97, !96}
!628 = distinct !{!628, !40}
!629 = distinct !{!629, !40}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!632 = distinct !{!632, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!633 = !{!634, !548, i64 0}
!634 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi0EEE", !548, i64 0, !139, i64 8, !139, i64 16}
!635 = !{!636, !11, i64 48}
!636 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0ELb1EEE", !637, i64 0, !534, i64 24, !139, i64 32, !139, i64 40, !11, i64 48}
!637 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1EEE", !634, i64 0}
!638 = !{!639, !548, i64 0}
!639 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEE", !548, i64 0, !11, i64 8}
!640 = !{!639, !11, i64 8}
!641 = !{!642, !548, i64 0}
!642 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEES4_EE", !548, i64 0, !121, i64 8, !139, i64 16}
!643 = !{!644, !644, i64 0}
!644 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEE", !18, i64 0}
!645 = !{!646, !646, i64 0}
!646 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !18, i64 0}
!647 = !{!648, !648, i64 0}
!648 = !{!"p1 _ZTSN5Eigen8internal9assign_opIddEE", !18, i64 0}
!649 = !{!650, !650, i64 0}
!650 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEE", !18, i64 0}
!651 = !{!652}
!652 = distinct !{!652, !653, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEEplIiEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiNS8_18promote_scalar_argIiT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIiSB_NS9_IiSB_EEEEEE5valueEE4typeEEEKS4_KNS8_19plain_constant_typeIS4_SG_E4typeEEERKSB_: argument 0"}
!653 = distinct !{!653, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEEplIiEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiNS8_18promote_scalar_argIiT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIiSB_NS9_IiSB_EEEEEE5valueEE4typeEEEKS4_KNS8_19plain_constant_typeIS4_SG_E4typeEEERKSB_"}
!654 = !{!655}
!655 = distinct !{!655, !656, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!656 = distinct !{!656, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!657 = !{!658, !658, i64 0}
!658 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEE", !18, i64 0}
!659 = !{!660}
!660 = distinct !{!660, !661, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!661 = distinct !{!661, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!662 = distinct !{!662, !40}
!663 = distinct !{!663, !40, !96, !97}
!664 = distinct !{!664, !85}
!665 = distinct !{!665, !40, !96}
!666 = distinct !{!666, !40}
!667 = distinct !{!667, !40, !96, !97}
!668 = distinct !{!668, !85}
!669 = distinct !{!669, !40, !96}
!670 = !{!671}
!671 = distinct !{!671, !672, !"_ZNK5Eigen9DenseBaseINS_11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS_8internal11SingleRangeEEEE4evalEv: argument 0"}
!672 = distinct !{!672, !"_ZNK5Eigen9DenseBaseINS_11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS_8internal11SingleRangeEEEE4evalEv"}
!673 = distinct !{!673, !85}
!674 = distinct !{!674, !40, !96, !97}
!675 = distinct !{!675, !85}
!676 = distinct !{!676, !40, !96}
!677 = distinct !{!677, !40}
!678 = distinct !{!678, !40}
!679 = distinct !{!679, !40}
!680 = !{!681}
!681 = distinct !{!681, !682}
!682 = distinct !{!682, !"LVerDomain"}
!683 = !{!684}
!684 = distinct !{!684, !682}
!685 = !{!686}
!686 = distinct !{!686, !682}
!687 = !{!688, !681, !684, !689}
!688 = distinct !{!688, !682}
!689 = distinct !{!689, !682}
!690 = !{!689}
!691 = !{!688}
!692 = !{!681, !684, !689}
!693 = distinct !{!693, !40, !96, !97}
!694 = distinct !{!694, !40}
!695 = distinct !{!695, !40, !96}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZNK4CGAL7Plane_3INS_5EpeckEE17orthogonal_vectorEv: argument 0"}
!698 = distinct !{!698, !"_ZNK4CGAL7Plane_3INS_5EpeckEE17orthogonal_vectorEv"}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN4CGALmlINS_5EpeckEEENT_2FTERKNS_8Vector_3IS2_EES7_: argument 0"}
!701 = distinct !{!701, !"_ZN4CGALmlINS_5EpeckEEENT_2FTERKNS_8Vector_3IS2_EES7_"}
!702 = distinct !{!702, !40}
!703 = !{!704}
!704 = distinct !{!704, !705, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!705 = distinct !{!705, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!706 = !{!707, !179, i64 0}
!707 = !{!"_ZTSN5Eigen11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEE", !179, i64 0, !78, i64 8, !708, i64 32}
!708 = !{!"_ZTSN5Eigen8internal8AllRangeILin1EEE", !139, i64 0}
!709 = distinct !{!709, !85}
!710 = distinct !{!710, !40}
!711 = distinct !{!711, !40}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEEplIiEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiNS9_18promote_scalar_argIiT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIiSC_NSA_IiSC_EEEEEE5valueEE4typeEEEKS5_KNS9_19plain_constant_typeIS5_SH_E4typeEEERKSC_: argument 0"}
!714 = distinct !{!714, !"_ZNK5Eigen9ArrayBaseINS_12ArrayWrapperIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEEEplIiEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIiNS9_18promote_scalar_argIiT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIiSC_NSA_IiSC_EEEEEE5valueEE4typeEEEKS5_KNS9_19plain_constant_typeIS5_SH_E4typeEEERKSC_"}
!715 = distinct !{!715, !40, !96, !97}
!716 = distinct !{!716, !85}
!717 = distinct !{!717, !40, !96}
!718 = distinct !{!718, !40}
!719 = !{!720, !721, i64 0}
!720 = !{!"_ZTSN5Eigen11IndexedViewIKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEE", !721, i64 0, !78, i64 8, !708, i64 32}
!721 = !{!"p1 _ZTSN5Eigen5ArrayIiLin1ELin1ELi0ELin1ELin1EEE", !18, i64 0}
!722 = distinct !{!722, !85}
!723 = distinct !{!723, !40}
!724 = distinct !{!724, !40}
!725 = !{!726}
!726 = distinct !{!726, !727, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!727 = distinct !{!727, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!728 = !{!729, !726}
!729 = distinct !{!729, !730, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!730 = distinct !{!730, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!731 = distinct !{!731, !85}
!732 = !{!733}
!733 = distinct !{!733, !734, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!734 = distinct !{!734, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!735 = distinct !{!735, !85}
!736 = !{!737}
!737 = distinct !{!737, !738, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!738 = distinct !{!738, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!739 = !{!740}
!740 = distinct !{!740, !741, !"_ZN5Eigen9DenseBaseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEE7rowwiseEv: argument 0"}
!741 = distinct !{!741, !"_ZN5Eigen9DenseBaseINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEEE7rowwiseEv"}
!742 = !{!743}
!743 = distinct !{!743, !744, !"_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv: argument 0"}
!744 = distinct !{!744, !"_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!747 = distinct !{!747, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!748 = distinct !{!748, !85}
!749 = distinct !{!749, !40}
!750 = distinct !{!750, !40}
!751 = distinct !{!751, !85}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_5BlockIS2_Lin1ELi1ELb1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE: argument 0"}
!754 = distinct !{!754, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_5BlockIS2_Lin1ELi1ELb1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE"}
!755 = !{!756}
!756 = distinct !{!756, !757, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!757 = distinct !{!757, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIllEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!758 = !{!759}
!759 = distinct !{!759, !760, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!760 = distinct !{!760, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!761 = distinct !{!761, !40, !96, !97}
!762 = distinct !{!762, !85}
!763 = distinct !{!763, !40, !96}
!764 = distinct !{!764, !40, !96, !97}
!765 = distinct !{!765, !85}
!766 = distinct !{!766, !40, !96}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!769 = distinct !{!769, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!770 = distinct !{!770, !40, !96, !97}
!771 = distinct !{!771, !85}
!772 = distinct !{!772, !40, !96}
!773 = distinct !{!773, !40, !96, !97}
!774 = distinct !{!774, !85}
!775 = distinct !{!775, !40, !96}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!778 = distinct !{!778, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!779 = distinct !{!779, !40, !96, !97}
!780 = distinct !{!780, !85}
!781 = distinct !{!781, !40, !96}
!782 = distinct !{!782, !40, !96, !97}
!783 = distinct !{!783, !85}
!784 = distinct !{!784, !40, !96}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!787 = distinct !{!787, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!788 = distinct !{!788, !40, !96, !97}
!789 = distinct !{!789, !85}
!790 = distinct !{!790, !40, !96}
!791 = distinct !{!791, !40, !96, !97}
!792 = distinct !{!792, !85}
!793 = distinct !{!793, !40, !96}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!796 = distinct !{!796, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!797 = distinct !{!797, !40, !96, !97}
!798 = distinct !{!798, !85}
!799 = distinct !{!799, !40, !96}
!800 = distinct !{!800, !40, !96, !97}
!801 = distinct !{!801, !85}
!802 = distinct !{!802, !40, !96}
!803 = !{!804}
!804 = distinct !{!804, !805, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!805 = distinct !{!805, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!806 = distinct !{!806, !40, !96, !97}
!807 = distinct !{!807, !85}
!808 = distinct !{!808, !40, !96}
!809 = distinct !{!809, !40, !96, !97}
!810 = distinct !{!810, !85}
!811 = distinct !{!811, !40, !96}
!812 = !{!813}
!813 = distinct !{!813, !814, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!814 = distinct !{!814, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!815 = distinct !{!815, !40, !96, !97}
!816 = distinct !{!816, !85}
!817 = distinct !{!817, !40, !96}
!818 = distinct !{!818, !40, !96, !97}
!819 = distinct !{!819, !85}
!820 = distinct !{!820, !40, !96}
!821 = !{!822}
!822 = distinct !{!822, !823, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!823 = distinct !{!823, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!824 = distinct !{!824, !40, !96, !97}
!825 = distinct !{!825, !85}
!826 = distinct !{!826, !40, !96}
!827 = distinct !{!827, !40, !96, !97}
!828 = distinct !{!828, !85}
!829 = distinct !{!829, !40, !96}
!830 = !{!831}
!831 = distinct !{!831, !832, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!832 = distinct !{!832, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!833 = distinct !{!833, !40, !96, !97}
!834 = distinct !{!834, !85}
!835 = distinct !{!835, !40, !96}
!836 = distinct !{!836, !40, !96, !97}
!837 = distinct !{!837, !85}
!838 = distinct !{!838, !40, !96}
!839 = !{!840}
!840 = distinct !{!840, !841, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll: argument 0"}
!841 = distinct !{!841, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockILin1ELi1EEENS3_13FixedBlockXprIXT_EXT0_EE4TypeEllll"}
!842 = distinct !{!842, !40, !96, !97}
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.smin.v4i32
!1543 = !{!1544}
!1544 = distinct !{!1544, !1545, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Point_3ISF_EE: argument 0"}
!1545 = distinct !{!1545, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Point_3ISF_EE"}
!1546 = !{!1547}
!1547 = distinct !{!1547, !1548, !"_ZNK4CGAL20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_SB_: argument 0"}
!1548 = distinct !{!1548, !"_ZNK4CGAL20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclENS_15Return_base_tagERKNS_7Point_3IS5_EESB_SB_"}
!1549 = !{!1550, !1547}
!1550 = distinct !{!1550, !1551, !"_ZN4CGAL17plane_from_pointsINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_7PlaneC3IT_EERKNS6_7Point_3ESA_SA_: argument 0"}
!1551 = distinct !{!1551, !"_ZN4CGAL17plane_from_pointsINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_7PlaneC3IT_EERKNS6_7Point_3ESA_SA_"}
!1552 = !{!1553, !1554, i64 0}
!1553 = !{!"_ZTSSt13__atomic_baseIPN4CGAL7AT_wrapINS0_7Plane_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEEEE", !1554, i64 0}
!1554 = !{!"p1 _ZTSN4CGAL7AT_wrapINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEE", !18, i64 0}
!1555 = !{!1556, !1557, i64 0}
!1556 = !{!"_ZTSZNK4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EE5exactEvEUlvE_", !1557, i64 0}
!1557 = !{!"p1 _ZTSN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE", !18, i64 0}
!1558 = distinct !{null, null}
!1559 = !{!1560}
!1560 = distinct !{!1560, !1561, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Plane_3ISF_EE: argument 0"}
!1561 = distinct !{!1561, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Plane_3ISF_EE"}
!1562 = distinct !{null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1563 = distinct !{null, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1564 = distinct !{null, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1565 = !{ptr @_ZN4CGAL8Lazy_repINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev}
!1566 = !{!1567}
!1567 = distinct !{!1567, !1568, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Plane_3ISF_EE: argument 0"}
!1568 = distinct !{!1568, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Plane_3ISF_EE"}
!1569 = distinct !{null, null, null, null}
!1570 = !{!50, !50, i64 0}
!1571 = !{!1572}
!1572 = distinct !{!1572, !1573, !"_ZN5boost14multiprecisionmiINS0_6detail19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvS3_SE_SE_vvEENS2_10expressionINS2_5minusENSF_IT_T0_T1_T2_T3_EENSF_IT4_T5_T6_T7_T8_EEvvEERKSM_RKSS_: argument 0"}
!1573 = distinct !{!1573, !"_ZN5boost14multiprecisionmiINS0_6detail19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvS3_SE_SE_vvEENS2_10expressionINS2_5minusENSF_IT_T0_T1_T2_T3_EENSF_IT4_T5_T6_T7_T8_EEvvEERKSM_RKSS_"}
!1574 = distinct !{null}
!1575 = !{!1576}
!1576 = distinct !{!1576, !1577, !"_ZN5boost14multiprecisionmiINS0_6detail19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvS3_SE_SE_vvEENS2_10expressionINS2_5minusENSF_IT_T0_T1_T2_T3_EENSF_IT4_T5_T6_T7_T8_EEvvEERKSM_RKSS_: argument 0"}
!1577 = distinct !{!1577, !"_ZN5boost14multiprecisionmiINS0_6detail19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvS3_SE_SE_vvEENS2_10expressionINS2_5minusENSF_IT_T0_T1_T2_T3_EENSF_IT4_T5_T6_T7_T8_EEvvEERKSM_RKSS_"}
!1578 = !{!1579}
!1579 = distinct !{!1579, !1580, !"_ZN5boost14multiprecisionmiINS0_6detail19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvS3_SE_SE_vvEENS2_10expressionINS2_5minusENSF_IT_T0_T1_T2_T3_EENSF_IT4_T5_T6_T7_T8_EEvvEERKSM_RKSS_: argument 0"}
!1580 = distinct !{!1580, !"_ZN5boost14multiprecisionmiINS0_6detail19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvS3_SE_SE_vvEENS2_10expressionINS2_5minusENSF_IT_T0_T1_T2_T3_EENSF_IT4_T5_T6_T7_T8_EEvvEERKSM_RKSS_"}
!1581 = !{!1582}
!1582 = distinct !{!1582, !1583, !"_ZN5boost14multiprecisionmiINS0_6detail5minusENS2_10expressionINS2_6negateENS4_INS2_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESH_vvEEvvvEESI_vvS6_SH_SH_vvEENS4_IS3_NS4_IT_T0_T1_T2_T3_EENS4_IT4_T5_T6_T7_T8_EEvvEERKSP_RKSV_: argument 0"}
!1583 = distinct !{!1583, !"_ZN5boost14multiprecisionmiINS0_6detail5minusENS2_10expressionINS2_6negateENS4_INS2_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESH_vvEEvvvEESI_vvS6_SH_SH_vvEENS4_IS3_NS4_IT_T0_T1_T2_T3_EENS4_IT4_T5_T6_T7_T8_EEvvEERKSP_RKSV_"}
!1584 = distinct !{null}
!1585 = !{!1586, !50, i64 0}
!1586 = !{!"_ZTSN5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvEE", !50, i64 0, !50, i64 8}
!1587 = !{!1588}
!1588 = distinct !{!1588, !1589, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv: argument 0"}
!1589 = distinct !{!1589, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv"}
!1590 = !{!1586, !50, i64 8}
!1591 = !{!1592}
!1592 = distinct !{!1592, !1593, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv: argument 0"}
!1593 = distinct !{!1593, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv"}
!1594 = distinct !{null}
!1595 = distinct !{null, null}
!1596 = !{!1597}
!1597 = distinct !{!1597, !1598, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv: argument 0"}
!1598 = distinct !{!1598, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv"}
!1599 = !{!1600}
!1600 = distinct !{!1600, !1601, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv: argument 0"}
!1601 = distinct !{!1601, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv"}
!1602 = !{!1603}
!1603 = distinct !{!1603, !1604, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE4leftEv: argument 0"}
!1604 = distinct !{!1604, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE4leftEv"}
!1605 = !{!1606}
!1606 = distinct !{!1606, !1607, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE5rightEv: argument 0"}
!1607 = distinct !{!1607, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE5rightEv"}
!1608 = !{!1609}
!1609 = distinct !{!1609, !1610, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE4leftEv: argument 0"}
!1610 = distinct !{!1610, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE4leftEv"}
!1611 = !{!1612}
!1612 = distinct !{!1612, !1613, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE5rightEv: argument 0"}
!1613 = distinct !{!1613, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE5rightEv"}
!1614 = distinct !{null}
!1615 = distinct !{null, null}
!1616 = !{!1617}
!1617 = distinct !{!1617, !1618, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE4leftEv: argument 0"}
!1618 = distinct !{!1618, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE4leftEv"}
!1619 = !{!1620}
!1620 = distinct !{!1620, !1621, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE5rightEv: argument 0"}
!1621 = distinct !{!1621, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE5rightEv"}
!1622 = !{!1623}
!1623 = distinct !{!1623, !1624, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE4leftEv: argument 0"}
!1624 = distinct !{!1624, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_IS3_NS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvEESH_vvE4leftEv"}
!1625 = !{!1626}
!1626 = distinct !{!1626, !1627, !"_ZNK5boost14multiprecision6detail10expressionINS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEEvvvE4leftEv: argument 0"}
!1627 = distinct !{!1627, !"_ZNK5boost14multiprecision6detail10expressionINS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEEvvvE4leftEv"}
!1628 = !{!1629}
!1629 = distinct !{!1629, !1630, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE5rightEv: argument 0"}
!1630 = distinct !{!1630, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE5rightEv"}
!1631 = !{!1632}
!1632 = distinct !{!1632, !1633, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE4leftEv: argument 0"}
!1633 = distinct !{!1633, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE4leftEv"}
!1634 = !{!1635}
!1635 = distinct !{!1635, !1636, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE5rightEv: argument 0"}
!1636 = distinct !{!1636, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE5rightEv"}
!1637 = distinct !{null}
!1638 = distinct !{null, null}
!1639 = !{!1640}
!1640 = distinct !{!1640, !1641, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE5rightEv: argument 0"}
!1641 = distinct !{!1641, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE5rightEv"}
!1642 = !{!1643}
!1643 = distinct !{!1643, !1644, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE4leftEv: argument 0"}
!1644 = distinct !{!1644, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEEvvvEESH_vvE4leftEv"}
!1645 = !{!1646}
!1646 = distinct !{!1646, !1647, !"_ZNK5boost14multiprecision6detail10expressionINS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEEvvvE4leftEv: argument 0"}
!1647 = distinct !{!1647, !"_ZNK5boost14multiprecision6detail10expressionINS1_6negateENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEEvvvE4leftEv"}
!1648 = !{!1649}
!1649 = distinct !{!1649, !1650, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE4leftEv: argument 0"}
!1650 = distinct !{!1650, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE4leftEv"}
!1651 = !{!1652}
!1652 = distinct !{!1652, !1653, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE5rightEv: argument 0"}
!1653 = distinct !{!1653, !"_ZNK5boost14multiprecision6detail10expressionINS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESE_vvE5rightEv"}
!1654 = !{!1655, !18, i64 0}
!1655 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS2_INS3_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS0_19Cartesian_converterISL_S6_NS0_12NT_converterISK_S5_EEEELi1EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !18, i64 0}
!1656 = distinct !{null, null, null, null, null}
!1657 = !{!1658, !1659, i64 0}
!1658 = !{!"_ZTSZNK4CGAL8Lazy_repINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EE5exactEvEUlvE_", !1659, i64 0}
!1659 = !{!"p1 _ZTSN4CGAL8Lazy_repINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE", !18, i64 0}
!1660 = !{!1661}
!1661 = distinct !{!1661, !1662, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Vector_3ISF_EE: argument 0"}
!1662 = distinct !{!1662, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Vector_3ISF_EE"}
!1663 = distinct !{null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1664 = distinct !{ptr @_ZN4CGAL10Lazy_rep_nINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors29Construct_orthogonal_vector_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Plane_3INS_5EpeckEEEEED2Ev, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1665 = !{!1666}
!1666 = distinct !{!1666, !1667, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Vector_3ISF_EE: argument 0"}
!1667 = distinct !{!1667, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Vector_3ISF_EE"}
!1668 = distinct !{null, null, null, null, null, null}
!1669 = !{!1670, !18, i64 0}
!1670 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_7Plane_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS2_INS3_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS0_19Cartesian_converterISL_S6_NS0_12NT_converterISK_S5_EEEELi0EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !18, i64 0}
!1671 = distinct !{null, null, null, null, null}
!1672 = !{!1673, !1674, i64 0}
!1673 = !{!"_ZTSZNK4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EE5exactEvEUlvE_", !1674, i64 0}
!1674 = !{!"p1 _ZTSN4CGAL8Lazy_repINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE", !18, i64 0}
!1675 = !{!1676}
!1676 = distinct !{!1676, !1677, !"_ZNK4CGAL23CartesianKernelFunctors24Compute_scalar_product_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_8Vector_3ISG_EESL_: argument 0"}
!1677 = distinct !{!1677, !"_ZNK4CGAL23CartesianKernelFunctors24Compute_scalar_product_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_8Vector_3ISG_EESL_"}
!1678 = !{!1679}
!1679 = distinct !{!1679, !1680, !"_ZN5boost14multiprecisionplINS0_6detail4plusENS2_10expressionINS2_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEESH_vvS5_SG_SG_vvEENS4_IS3_NS4_IT_T0_T1_T2_T3_EENS4_IT4_T5_T6_T7_T8_EEvvEERKSN_RKST_: argument 0"}
!1680 = distinct !{!1680, !"_ZN5boost14multiprecisionplINS0_6detail4plusENS2_10expressionINS2_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEESH_vvS5_SG_SG_vvEENS4_IS3_NS4_IT_T0_T1_T2_T3_EENS4_IT4_T5_T6_T7_T8_EEvvEERKSN_RKST_"}
!1681 = distinct !{null, null, null}
!1682 = distinct !{null}
!1683 = distinct !{null, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1684 = distinct !{null, null, ptr @_ZN4CGAL6HandleD2Ev, null, null}
!1685 = !{!1686}
!1686 = distinct !{!1686, !1687, !"_ZNK4CGAL23CartesianKernelFunctors24Compute_scalar_product_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_8Vector_3ISG_EESL_: argument 0"}
!1687 = distinct !{!1687, !"_ZNK4CGAL23CartesianKernelFunctors24Compute_scalar_product_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_8Vector_3ISG_EESL_"}
!1688 = !{!1689}
!1689 = distinct !{!1689, !1690, !"_ZN5boost14multiprecisionplINS0_6detail4plusENS2_10expressionINS2_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEESH_vvS5_SG_SG_vvEENS4_IS3_NS4_IT_T0_T1_T2_T3_EENS4_IT4_T5_T6_T7_T8_EEvvEERKSN_RKST_: argument 0"}
!1690 = distinct !{!1690, !"_ZN5boost14multiprecisionplINS0_6detail4plusENS2_10expressionINS2_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESG_vvEESH_vvS5_SG_SG_vvEENS4_IS3_NS4_IT_T0_T1_T2_T3_EENS4_IT4_T5_T6_T7_T8_EEvvEERKSN_RKST_"}
!1691 = distinct !{null, null, null, null, null, null}
!1692 = !{!1693}
!1693 = distinct !{!1693, !1694, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE4leftEv: argument 0"}
!1694 = distinct !{!1694, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE4leftEv"}
!1695 = !{!1696}
!1696 = distinct !{!1696, !1697, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE5rightEv: argument 0"}
!1697 = distinct !{!1697, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE5rightEv"}
!1698 = distinct !{null, null, null}
!1699 = !{!1700}
!1700 = distinct !{!1700, !1701, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE4leftEv: argument 0"}
!1701 = distinct !{!1701, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE4leftEv"}
!1702 = !{!1703}
!1703 = distinct !{!1703, !1704, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE5rightEv: argument 0"}
!1704 = distinct !{!1704, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE5rightEv"}
!1705 = !{!1706}
!1706 = distinct !{!1706, !1707, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE4leftEv: argument 0"}
!1707 = distinct !{!1707, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_IS3_NS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvEESG_vvE4leftEv"}
!1708 = !{!1709}
!1709 = distinct !{!1709, !1710, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv: argument 0"}
!1710 = distinct !{!1710, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv"}
!1711 = !{!1712}
!1712 = distinct !{!1712, !1713, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv: argument 0"}
!1713 = distinct !{!1713, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv"}
!1714 = !{!1715}
!1715 = distinct !{!1715, !1716, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv: argument 0"}
!1716 = distinct !{!1716, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv"}
!1717 = !{!1718}
!1718 = distinct !{!1718, !1719, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv: argument 0"}
!1719 = distinct !{!1719, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv"}
!1720 = distinct !{null}
!1721 = distinct !{null, null}
!1722 = !{!1723}
!1723 = distinct !{!1723, !1724, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv: argument 0"}
!1724 = distinct !{!1724, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE5rightEv"}
!1725 = !{!1726}
!1726 = distinct !{!1726, !1727, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv: argument 0"}
!1727 = distinct !{!1727, !"_ZNK5boost14multiprecision6detail10expressionINS1_4plusENS2_INS1_19multiply_immediatesENS0_6numberINS0_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEESF_vvEESG_vvE4leftEv"}
!1728 = !{!1729, !18, i64 0}
!1729 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_8Vector_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS2_INS3_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS0_19Cartesian_converterISL_S6_NS0_12NT_converterISK_S5_EEEELi0EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !18, i64 0}
!1730 = distinct !{null, null, null, null, null}
!1731 = !{!1732, !148, i64 24}
!1732 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEEEENS2_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEENS_5ArrayIiLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIiiEELi0EEE", !142, i64 0, !144, i64 8, !146, i64 16, !148, i64 24}
!1733 = !{i64 4}
!1734 = !{!1735}
!1735 = distinct !{!1735, !1736}
!1736 = distinct !{!1736, !"LVerDomain"}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1736}
!1739 = distinct !{!1739, !40, !96, !97}
!1740 = distinct !{!1740, !85}
!1741 = distinct !{!1741, !40}
!1742 = distinct !{!1742, !40, !96}
!1743 = !{!422, !119, i64 24}
!1744 = !{!1732, !142, i64 0}
!1745 = !{!1732, !144, i64 8}
!1746 = !{!1747}
!1747 = distinct !{!1747, !1748}
!1748 = distinct !{!1748, !"LVerDomain"}
!1749 = !{!1750}
!1750 = distinct !{!1750, !1748}
!1751 = distinct !{!1751, !40, !96, !97}
!1752 = distinct !{!1752, !85}
!1753 = distinct !{!1753, !40, !96}
!1754 = !{!1755}
!1755 = distinct !{!1755, !1756}
!1756 = distinct !{!1756, !"LVerDomain"}
!1757 = !{!1758}
!1758 = distinct !{!1758, !1756}
!1759 = distinct !{!1759, !40, !96, !97}
!1760 = distinct !{!1760, !40}
!1761 = distinct !{!1761, !40}
!1762 = distinct !{!1762, !40, !96}
!1763 = !{!1764, !194, i64 24}
!1764 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_INS3_IS5_Lin1ELi1ELb1EEEEENS0_9assign_opIiiEELi0EEE", !188, i64 0, !190, i64 8, !192, i64 16, !194, i64 24}
!1765 = !{!1766}
!1766 = distinct !{!1766, !1767}
!1767 = distinct !{!1767, !"LVerDomain"}
!1768 = !{!1769}
!1769 = distinct !{!1769, !1767}
!1770 = distinct !{!1770, !40, !96, !97}
!1771 = distinct !{!1771, !85}
!1772 = distinct !{!1772, !40}
!1773 = distinct !{!1773, !40, !96}
!1774 = !{!1764, !188, i64 0}
!1775 = !{!1764, !190, i64 8}
!1776 = distinct !{!1776, !40, !96, !97}
!1777 = distinct !{!1777, !85}
!1778 = distinct !{!1778, !40, !96}
!1779 = distinct !{!1779, !40, !96, !97}
!1780 = distinct !{!1780, !40}
!1781 = distinct !{!1781, !40}
!1782 = distinct !{!1782, !40, !96}
!1783 = distinct !{null, null, null, null, null, null, null}
!1784 = distinct !{!1784, !40}
!1785 = !{!1786}
!1786 = distinct !{!1786, !1787, !"_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv: argument 0"}
!1787 = distinct !{!1787, !"_ZNK5Eigen9DenseBaseINS_16PartialReduxExprINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS_8internal15member_minCoeffIiiEELi1EEEE4evalEv"}
!1788 = !{!1789}
!1789 = distinct !{!1789, !1790, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE9subVectorILNS_13DirectionTypeE1EEENS_8internal11conditionalIXeqT_LS5_0EEKNS_5BlockIKS2_Lin1ELi1ELb1EEEKNS8_IS9_Li1ELin1ELb0EEEE4typeEl: argument 0"}
!1790 = distinct !{!1790, !"_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE9subVectorILNS_13DirectionTypeE1EEENS_8internal11conditionalIXeqT_LS5_0EEKNS_5BlockIKS2_Lin1ELi1ELb1EEEKNS8_IS9_Li1ELin1ELb0EEEE4typeEl"}
!1791 = distinct !{!1791, !40, !96, !97}
!1792 = distinct !{!1792, !85}
!1793 = distinct !{!1793, !40, !96, !97}
!1794 = distinct !{!1794, !85}
!1795 = distinct !{!1795, !40, !96}
!1796 = distinct !{!1796, !40, !96}
!1797 = distinct !{!1797, !40}
!1798 = distinct !{!1798, !40}
!1799 = distinct !{!1799, !40}
!1800 = !{!1801}
!1801 = distinct !{!1801, !1802, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi2EEEE4evalEv: argument 0"}
!1802 = distinct !{!1802, !"_ZNK5Eigen9DenseBaseINS_7ReverseINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi2EEEE4evalEv"}
!1803 = !{!1804}
!1804 = distinct !{!1804, !1805, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_: argument 0"}
!1805 = distinct !{!1805, !"_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE5blockIiiEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeEllS6_S7_"}
!1806 = distinct !{!1806, !40}
!1807 = distinct !{!1807, !40}
!1808 = distinct !{!1808, !40}
!1809 = distinct !{!1809, !85}
!1810 = distinct !{!1810, !40}
!1811 = distinct !{!1811, !40}
!1812 = distinct !{!1812, !40}
!1813 = !{!1814, !650, i64 24}
!1814 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_IS5_EENS0_9assign_opIddEELi0EEE", !644, i64 0, !646, i64 8, !648, i64 16, !650, i64 24}
!1815 = !{!1816, !548, i64 0}
!1816 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEE", !639, i64 0}
!1817 = !{!1818}
!1818 = distinct !{!1818, !1819}
!1819 = distinct !{!1819, !"LVerDomain"}
!1820 = !{!1821}
!1821 = distinct !{!1821, !1819}
!1822 = distinct !{!1822, !40, !96, !97}
!1823 = distinct !{!1823, !85}
!1824 = distinct !{!1824, !40}
!1825 = distinct !{!1825, !40, !96}
!1826 = !{!636, !534, i64 24}
!1827 = !{!1814, !646, i64 8}
!1828 = !{!1814, !644, i64 0}
!1829 = distinct !{!1829, !40, !96, !97}
!1830 = distinct !{!1830, !40}
!1831 = distinct !{!1831, !40}
!1832 = distinct !{!1832, !40, !96}
!1833 = !{!1834, !194, i64 24}
!1834 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIS5_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEE", !188, i64 0, !658, i64 8, !192, i64 16, !194, i64 24}
!1835 = !{!1836}
!1836 = distinct !{!1836, !1837}
!1837 = distinct !{!1837, !"LVerDomain"}
!1838 = !{!1839}
!1839 = distinct !{!1839, !1837}
!1840 = !{!1841}
!1841 = distinct !{!1841, !1837}
!1842 = !{!1836, !1839}
!1843 = distinct !{!1843, !40, !96, !97}
!1844 = distinct !{!1844, !85}
!1845 = distinct !{!1845, !40}
!1846 = distinct !{!1846, !40, !96}
!1847 = !{!1834, !188, i64 0}
!1848 = !{!1834, !658, i64 8}
!1849 = !{!1850}
!1850 = distinct !{!1850, !1851}
!1851 = distinct !{!1851, !"LVerDomain"}
!1852 = !{!1853}
!1853 = distinct !{!1853, !1851}
!1854 = !{!1855}
!1855 = distinct !{!1855, !1851}
!1856 = !{!1850, !1853}
!1857 = distinct !{!1857, !40, !96, !97}
!1858 = distinct !{!1858, !85}
!1859 = distinct !{!1859, !40, !96}
!1860 = !{!1861}
!1861 = distinct !{!1861, !1862}
!1862 = distinct !{!1862, !"LVerDomain"}
!1863 = !{!1864}
!1864 = distinct !{!1864, !1862}
!1865 = !{!1866}
!1866 = distinct !{!1866, !1862}
!1867 = !{!1861, !1864}
!1868 = distinct !{!1868, !40, !96, !97}
!1869 = distinct !{!1869, !40}
!1870 = distinct !{!1870, !40}
!1871 = distinct !{!1871, !40, !96}
!1872 = !{!1873, !431, i64 24}
!1873 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS2_IS5_EENS0_9assign_opIiiEELi0EEE", !427, i64 0, !429, i64 8, !192, i64 16, !431, i64 24}
!1874 = !{!1875, !17, i64 0}
!1875 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEEE", !425, i64 0}
!1876 = distinct !{!1876, !40, !96, !97}
!1877 = distinct !{!1877, !85}
!1878 = distinct !{!1878, !40}
!1879 = distinct !{!1879, !40, !96}
!1880 = !{!1873, !427, i64 0}
!1881 = !{!1873, !429, i64 8}
!1882 = distinct !{!1882, !40, !96, !97}
!1883 = distinct !{!1883, !85}
!1884 = distinct !{!1884, !40, !96}
!1885 = distinct !{!1885, !40, !96, !97}
!1886 = distinct !{!1886, !40}
!1887 = distinct !{!1887, !40}
!1888 = distinct !{!1888, !40, !96}
!1889 = !{!1890, !529, i64 0}
!1890 = !{!"_ZTSSt10_Head_baseILm3EdLb0EE", !529, i64 0}
!1891 = !{!1892, !529, i64 0}
!1892 = !{!"_ZTSSt10_Head_baseILm2EdLb0EE", !529, i64 0}
!1893 = !{!1894, !529, i64 0}
!1894 = !{!"_ZTSSt10_Head_baseILm1EdLb0EE", !529, i64 0}
!1895 = !{!1896}
!1896 = distinct !{!1896, !1897, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Vector_3ISF_EE: argument 0"}
!1897 = distinct !{!1897, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_8Vector_3ISF_EE"}
!1898 = !{!1899}
!1899 = distinct !{!1899, !1900, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Point_3ISF_EE: argument 0"}
!1900 = distinct !{!1900, !"_ZNK4CGAL19Cartesian_converterINS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS1_INS_11Interval_ntILb0EEEEENS_12NT_converterISE_SH_EEEclERKNS_7Point_3ISF_EE"}
!1901 = !{!1902, !11, i64 0}
!1902 = !{!"_ZTSN4CORE7extLongE", !11, i64 0, !6, i64 8}
!1903 = !{!1902, !6, i64 8}
end_hunk_4
