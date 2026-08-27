Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELF_loongarch?download=true
inline.NumInlined: 6101
inline.NumDeleted: 2570
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm7jitlink9JITLinkerIN12_GLOBAL__N_122ELFJITLinker_loongarchEE11fixUpBlocksERNS0_9LinkGraphE:bb.a
  %i.ik = trunc i32 %i.ij to i1
  br i1 %i.ik, label %.lr.ph.i.i.i.i.i39, label %.loopexit.i.i.i.i, !prof !265

.lr.ph.i.i.i.i.i39:                               ; preds = %bb.ao, %bb.ap
  %i.il = phi i64 [ %i.iv, %bb.ap ], [ %i.ie, %bb.ao ]
  %.017.i.i.i.i.i = phi i32 [ %i.iu, %bb.ap ], [ %i.id, %bb.ao ]
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.il ; 3 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !2718, !noalias !2717
  %i.io = icmp eq ptr %i.ef, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !2717
  %i.ir = icmp eq i64 %i.hj, %i.iq
  %i.is = select i1 %i.io, i1 %i.ir, i1 false
  br i1 %i.is, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.loopexit.i.i, label %bb.ap, !prof !266

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i39
  %i.it = add nuw i32 %.017.i.i.i.i.i, 1
  %i.iu = and i32 %i.it, %i.ho                    ; 3 uses
  %i.iv = zext i32 %i.iu to i64                   ; 2 uses
  %i.iw = lshr i64 %i.iv, 5
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !53, !noalias !2717
  %i.iz = and i32 %i.iu, 31
  %i.ja = lshr i32 %i.iy, %i.iz
  %i.jb = trunc i32 %i.ja to i1
  br i1 %i.jb, label %.lr.ph.i.i.i.i.i39, label %.loopexit.i.i.i.i, !prof !267

.loopexit.i.i.i.i:                                ; preds = %bb.ap, %bb.ao, %bb.an
  %i.jc = zext i32 %i.hm to i64                   ; 2 uses
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.jc
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i39
  %.pre.i.i = zext i32 %i.hm to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.i.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.loopexit.i.i ], [ %i.jc, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.im, %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.loopexit.i.i ], [ %i.jd, %.loopexit.i.i.i.i ] ; 2 uses
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.je
  br i1 %.not.i.i, label %.thread114.a, label %_ZN4llvm8ExpectedIRKNS_7jitlink4EdgeEED2Ev.exit.thread.i

_ZN4llvm8ExpectedIRKNS_7jitlink4EdgeEED2Ev.exit.thread.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !2720, !noalias !2722 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !355, !noalias !2701 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !303, !noalias !2701
  %.sroa.0.0.copyload.i.i320.i = load i64, ptr %i.jj, align 8, !tbaa !41, !noalias !2701
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !2701
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !2704, !noalias !2701
  %i.jo = add i64 %i.eh, %.sroa.0.0.copyload.i.i.i
  %i.jp = add i64 %i.jo, %i.el
  %.neg517.i = sub i64 %.sroa.0.0.copyload.i.i320.i, %i.jp
  %.neg518.i = add i64 %.neg517.i, %i.jl
  %i.jq = add i64 %.neg518.i, %i.jn
  %.0.copyload.i.i.i322.i = load i32, ptr %i.eb, align 1, !noalias !2701
  %i.jr = trunc i64 %i.jq to i32
  %i.js = shl i32 %i.jr, 10
  %i.jt = and i32 %i.js, 4193280
  %i.ju = or i32 %i.jt, %.0.copyload.i.i.i322.i
  store i32 %i.ju, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

.thread114.a:                                     ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKNS_7jitlink5BlockEmEPKNS3_4EdgeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SA_EEEES7_SA_SC_SF_E4findERKS7_.exit.i.i
  %i.jv = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !2723 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2723
  store ptr @.str.71, ptr %6, align 8, !noalias !2723
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 3, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !noalias !2723
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !noalias !2723
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.jv, align 8, !tbaa !19, !noalias !2723
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.jw, ptr noundef nonnull align 8 dereferenceable(34) %6) #21, !noalias !2723
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2723
  br label %.loopexit.sink.split

bb.aq:                                            ; preds = %bb.n
  %i.jx = sub i64 %i.ej, %i.ec
  %i.jy = add i64 %i.jx, %i.el                    ; 4 uses
  %i.jz = add i64 %i.jy, 2147483648
  %.not291.i = icmp ult i64 %i.jz, 4294967296
  br i1 %.not291.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm7jitlink25makeTargetOutOfRangeErrorERKNS0_9LinkGraphERKNS0_5BlockERKNS0_4EdgeE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.073.0155) #21
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit

bb.as:                                            ; preds = %bb.aq
  %i.ka = and i64 %i.jy, 3
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm7jitlink18makeAlignmentErrorENS_3orc12ExecutorAddrEmiRKNS0_4EdgeE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, i64 %i.ec, i64 noundef %i.jy, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.073.0155) #21
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit

bb.au:                                            ; preds = %bb.as
  %i.kc = trunc nsw i64 %i.jy to i32              ; 2 uses
  %i.kd = load <2 x i32>, ptr %i.eb, align 1, !noalias !2701
  %i.ke = shl i32 %i.kc, 8
  %i.kf = lshr i32 %i.kc, 7
  %i.kg = insertelement <2 x i32> poison, i32 %i.kf, i64 0
  %i.kh = insertelement <2 x i32> %i.kg, i32 %i.ke, i64 1
  %i.ki = and <2 x i32> %i.kh, <i32 33554400, i32 1047552>
  %i.kj = or <2 x i32> %i.kd, %i.ki
  store <2 x i32> %i.kj, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.av:                                            ; preds = %bb.n
  %i.kk = sub i64 %i.ej, %i.ec
  %i.kl = add i64 %i.kk, %i.el                    ; 6 uses
  %i.km = add nsw i64 %i.kl, 131072
  %i.kn = add i64 %i.kl, 137439084544
  %.not290.i = icmp ult i64 %i.kn, 274877906944
  br i1 %.not290.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm7jitlink25makeTargetOutOfRangeErrorERKNS0_9LinkGraphERKNS0_5BlockERKNS0_4EdgeE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.073.0155) #21
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit

bb.ax:                                            ; preds = %bb.av
  %i.ko = add nsw i64 %i.kl, 137438953472
  %i.kp = icmp ult i64 %i.ko, 274877906944
  %i.kq = and i64 %i.kl, 3
  %i.kr = icmp eq i64 %i.kq, 0
  %i.ks = and i1 %i.kp, %i.kr
  br i1 %i.ks, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4llvm7jitlink18makeAlignmentErrorENS_3orc12ExecutorAddrEmiRKNS0_4EdgeE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, i64 %i.ec, i64 noundef %i.kl, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.073.0155) #21
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit

bb.az:                                            ; preds = %bb.ax
  %sh.diff.i = lshr i64 %i.km, 13
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.kt = trunc i64 %i.kl to i32
  %i.ku = shl i32 %i.kt, 8
  %i.kv = load <2 x i32>, ptr %i.eb, align 1, !noalias !2701
  %i.kw = insertelement <2 x i32> poison, i32 %tr.sh.diff.i, i64 0
  %i.kx = insertelement <2 x i32> %i.kw, i32 %i.ku, i64 1
  %i.ky = and <2 x i32> %i.kx, <i32 33554400, i32 67107840>
  %i.kz = or <2 x i32> %i.kv, %i.ky
  store <2 x i32> %i.kz, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.ba:                                            ; preds = %bb.n
  %i.la = load i8, ptr %i.eb, align 1, !tbaa !39, !noalias !2701 ; 2 uses
  %i.lb = add i64 %i.ej, %i.el
  %i.lc = and i8 %i.la, -64
  %i.ld = trunc i64 %i.lb to i8
  %i.le = add i8 %i.la, %i.ld
  %i.lf = and i8 %i.le, 63
  %i.lg = or disjoint i8 %i.lf, %i.lc
  store i8 %i.lg, ptr %i.eb, align 1, !tbaa !39, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bb:                                            ; preds = %bb.n
  %i.lh = load i8, ptr %i.eb, align 1, !tbaa !39, !noalias !2701
  %i.li = add i64 %i.ej, %i.el
  %i.lj = trunc i64 %i.li to i8
  %i.lk = add i8 %i.lh, %i.lj
  store i8 %i.lk, ptr %i.eb, align 1, !tbaa !39, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bc:                                            ; preds = %bb.n
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.eb, align 1, !noalias !2701
  %i.ll = add i64 %i.ej, %i.el
  %i.lm = trunc i64 %i.ll to i16
  %i.ln = add i16 %.0.copyload.i.i.i.i.i.i.i, %i.lm
  store i16 %i.ln, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bd:                                            ; preds = %bb.n
  %.0.copyload.i.i.i.i.i.i333.i = load i32, ptr %i.eb, align 1, !noalias !2701
  %i.lo = add i64 %i.ej, %i.el
  %i.lp = trunc i64 %i.lo to i32
  %i.lq = add i32 %.0.copyload.i.i.i.i.i.i333.i, %i.lp
  store i32 %i.lq, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.be:                                            ; preds = %bb.n
  %.0.copyload.i.i.i.i.i.i334.i = load i64, ptr %i.eb, align 1, !noalias !2701
  %i.lr = add i64 %i.ej, %i.el
  %i.ls = add i64 %i.lr, %.0.copyload.i.i.i.i.i.i334.i
  store i64 %i.ls, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bf:                                            ; preds = %bb.n
  %i.lt = ptrtoaddr ptr %i.eb to i64
  %i.lu = sub i64 0, %i.lt
  %scevgep.i.i = getelementptr i8, ptr %i.eb, i64 %i.lu
  %i.lv = icmp eq ptr %i.dx, null
  br i1 %i.lv, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %.lr.ph327, !prof !2728

bb.bg:                                            ; preds = %bb.bi
  %indvars.iv.next528.i = add nuw nsw i64 %indvars.iv527.i325, 7
  br label %.lr.ph327, !llvm.loop !2729

.lr.ph327:                                        ; preds = %bb.bf, %bb.bg
  %.029.i.i327 = phi i64 [ %.130.i.i, %bb.bg ], [ 0, %bb.bf ]
  %.031.i.i326 = phi ptr [ %i.me, %bb.bg ], [ %i.eb, %bb.bf ] ; 3 uses
  %indvars.iv527.i325 = phi i64 [ %indvars.iv.next528.i, %bb.bg ], [ 0, %bb.bf ] ; 5 uses
  %i.lw = load i8, ptr %.031.i.i326, align 1, !tbaa !39, !noalias !2701 ; 2 uses
  %i.lx = and i8 %i.lw, 127                       ; 3 uses
  %i.ly = zext nneg i8 %i.lx to i64
  %i.lz = icmp samesign ugt i64 %indvars.iv527.i325, 62
  br i1 %i.lz, label %bb.bh, label %bb.bi, !prof !54

bb.bh:                                            ; preds = %.lr.ph327
  %.not44.i.i = icmp eq i64 %indvars.iv527.i325, 63
  %.not.i335.i = icmp samesign ugt i8 %i.lx, 1
  %i.ma = icmp ne i8 %i.lx, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i335.i, i1 %i.ma
  br i1 %or.cond43.i.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph327
  %i.mb = icmp samesign ult i64 %indvars.iv527.i325, 64
  %i.mc = shl i64 %i.ly, %indvars.iv527.i325
  %i.md = select i1 %i.mb, i64 %i.mc, i64 0, !prof !266
  %.130.i.i = add i64 %i.md, %.029.i.i327         ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.031.i.i326, i64 1 ; 2 uses
  %i.mf = icmp slt i8 %i.lw, 0
  br i1 %i.mf, label %bb.bg, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, !llvm.loop !2729

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge: ; preds = %bb.bi
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, !llvm.loop !2729

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.bh, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge, %bb.bf
  %i.mg = phi i1 [ false, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ true, %bb.bf ], [ true, %bb.bh ]
  %.132.i.i = phi ptr [ %i.me, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ %scevgep.i.i, %bb.bf ], [ %.031.i.i326, %bb.bh ]
  %.3.i.i = phi i64 [ %.130.i.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i_crit_edge ], [ 0, %bb.bf ], [ 0, %bb.bh ]
  %i.mh = ptrtoint ptr %.132.i.i to i64
  %i.mi = ptrtoint ptr %i.eb to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 2 uses
  %i.mk = trunc i64 %i.mj to i32                  ; 5 uses
  %i.ml = icmp ugt i32 %i.mk, 10
  br i1 %i.ml, label %.critedge302.i, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  %i.mm = icmp eq i32 %i.mk, 10                   ; 2 uses
  %or.cond.i37 = and i1 %i.mg, %i.mm
  br i1 %or.cond.i37, label %.critedge302.i, label %bb.bq

.critedge302.i:                                   ; preds = %bb.bj, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !2701
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !2701
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !2701
  call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21, !noalias !2733
  %.not511.i = icmp eq i64 %i.ec, 0
  br i1 %.not511.i, label %.thread507.i, label %.lr.ph.i.i

.thread507.i:                                     ; preds = %.critedge302.i
  store i8 48, ptr %i.an, align 16, !tbaa !39, !noalias !2733
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.thread507.i
  %.1.lcssa.i.i = phi ptr [ %i.an, %.thread507.i ], [ %i.mx, %.lr.ph.i.i ] ; 3 uses
  store ptr %i.ao, ptr %9, align 8, !tbaa !32, !alias.scope !2730, !noalias !2701
  store i64 0, ptr %i.ap, align 8, !tbaa !38, !alias.scope !2730, !noalias !2701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21, !noalias !2733
  %i.mn = ptrtoint ptr %.1.lcssa.i.i to i64
  %i.mo = sub i64 %i.aq, %i.mn                    ; 4 uses
  store i64 %i.mo, ptr %i.c, align 8, !tbaa !41, !noalias !2733
  %i.mp = icmp ugt i64 %i.mo, 15
  br i1 %i.mp, label %bb.bk, label %._crit_edge.i.i.i.i38

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.mq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #21, !noalias !2701 ; 2 uses
  store ptr %i.mq, ptr %9, align 8, !tbaa !35, !alias.scope !2730, !noalias !2701
  %i.mr = load i64, ptr %i.c, align 8, !tbaa !41, !noalias !2733
  store i64 %i.mr, ptr %i.ao, align 8, !tbaa !39, !alias.scope !2730, !noalias !2701
  br label %._crit_edge.i.i.i.i38

._crit_edge.i.i.i.i38:                            ; preds = %bb.bk, %._crit_edge.i.i
  %i.ms = phi ptr [ %i.mq, %bb.bk ], [ %i.ao, %._crit_edge.i.i ] ; 2 uses
  switch i64 %i.mo, label %bb.bm [
    i64 1, label %bb.bl
    i64 0, label %_ZN4llvm9utohexstrB5cxx11Embj.exit.i
  ]

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i38
  %i.mt = load i8, ptr %.1.lcssa.i.i, align 1, !tbaa !39, !noalias !2733
  store i8 %i.mt, ptr %i.ms, align 1, !tbaa !39, !noalias !2701
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit.i

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ms, ptr nonnull align 1 %.1.lcssa.i.i, i64 %i.mo, i1 false), !noalias !2701
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit.i

.lr.ph.i.i:                                       ; preds = %.critedge302.i, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.my, %.lr.ph.i.i ], [ %i.ec, %.critedge302.i ] ; 2 uses
  %.118.i.i = phi ptr [ %i.mx, %.lr.ph.i.i ], [ %i.am, %.critedge302.i ]
  %i.mu = and i64 %.020.i.i, 15
  %i.mv = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.mu
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !39, !noalias !2733
  %i.mx = getelementptr inbounds i8, ptr %.118.i.i, i64 -1 ; 3 uses
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !39, !noalias !2733
  %i.my = lshr i64 %.020.i.i, 4                   ; 2 uses
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2734

_ZN4llvm9utohexstrB5cxx11Embj.exit.i:             ; preds = %bb.bm, %bb.bl, %._crit_edge.i.i.i.i38
  %i.na = load i64, ptr %i.c, align 8, !tbaa !41, !noalias !2733 ; 2 uses
  store i64 %i.na, ptr %i.ap, align 8, !tbaa !38, !alias.scope !2730, !noalias !2701
  %i.nb = load ptr, ptr %9, align 8, !tbaa !35, !alias.scope !2730, !noalias !2701
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.na
  store i8 0, ptr %i.nc, align 1, !tbaa !39, !noalias !2701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21, !noalias !2733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21, !noalias !2733
  call void @llvm.experimental.noalias.scope.decl(metadata !2735)
  %i.nd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.67, i64 noundef 2) #21, !noalias !2738 ; 6 uses
  store ptr %i.ar, ptr %8, align 8, !tbaa !32, !alias.scope !2735, !noalias !2701
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 5 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bn:                                            ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !38, !noalias !2701 ; 3 uses
  %i.nj = icmp ult i64 %i.ni, 16
  call void @llvm.assume(i1 %i.nj)
  %i.nk = add nuw nsw i64 %i.ni, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.nf, i64 %i.nk, i1 false), !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit.i
  store ptr %i.ne, ptr %8, align 8, !tbaa !35, !alias.scope !2735, !noalias !2701
  %i.nl = load i64, ptr %i.nf, align 8, !tbaa !39, !noalias !2701
  store i64 %i.nl, ptr %i.ar, align 8, !tbaa !39, !alias.scope !2735, !noalias !2701
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %.pre.i337.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !38, !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bn
  %i.nm = phi i64 [ %i.ni, %bb.bn ], [ %.pre.i337.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i64 %i.nm, ptr %i.as, align 8, !tbaa !38, !alias.scope !2735, !noalias !2701
  store ptr %i.nf, ptr %i.nd, align 8, !tbaa !35, !noalias !2701
  store i64 0, ptr %i.nn, align 8, !tbaa !38, !noalias !2701
  store i8 0, ptr %i.nf, align 8, !tbaa !39, !noalias !2701
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  %i.no = add i64 %i.nm, -4611686018427387879
  %i.np = icmp ult i64 %i.no, 25
  br i1 %i.np, label %bb.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.bo:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24, !noalias !2742
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  %i.nq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.68, i64 noundef 25) #21, !noalias !2742 ; 6 uses
  store ptr %i.at, ptr %7, align 8, !tbaa !32, !alias.scope !2739, !noalias !2701
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 5 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338.i

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !38, !noalias !2701 ; 3 uses
  %i.nw = icmp ult i64 %i.nv, 16
  call void @llvm.assume(i1 %i.nw)
  %i.nx = add nuw nsw i64 %i.nv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.ns, i64 %i.nx, i1 false), !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.nr, ptr %7, align 8, !tbaa !35, !alias.scope !2739, !noalias !2701
  %i.ny = load i64, ptr %i.ns, align 8, !tbaa !39, !noalias !2701
  store i64 %i.ny, ptr %i.at, align 8, !tbaa !39, !alias.scope !2739, !noalias !2701
  %.phi.trans.insert.i339.i = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.pre.i340.i = load i64, ptr %.phi.trans.insert.i339.i, align 8, !tbaa !38, !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338.i, %bb.bp
  %i.nz = phi i64 [ %i.nv, %bb.bp ], [ %.pre.i340.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338.i ]
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 %i.nz, ptr %i.au, align 8, !tbaa !38, !alias.scope !2739, !noalias !2701
  store ptr %i.ns, ptr %i.nq, align 8, !tbaa !35, !noalias !2701
  store i64 0, ptr %i.oa, align 8, !tbaa !38, !noalias !2701
  store i8 0, ptr %i.ns, align 8, !tbaa !39, !noalias !2701
  call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %i.ob = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !2746 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2746
  store ptr %7, ptr %5, align 8, !noalias !2746
  store i8 4, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !noalias !2746
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1, !noalias !2746
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.ob, align 8, !tbaa !19, !noalias !2746
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.oc, ptr noundef nonnull align 8 dereferenceable(34) %5) #21, !noalias !2746
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2746
  store ptr %i.ob, ptr %0, align 8, !tbaa !104, !alias.scope !2749
  %i.od = load ptr, ptr %7, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.at
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i
  %i.of = load i64, ptr %i.at, align 8, !tbaa !39, !noalias !2701
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #22, !noalias !2701
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341.i
  %i.oh = load ptr, ptr %8, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.ar
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.oj = load i64, ptr %i.ar, align 8, !tbaa !39, !noalias !2701
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #22, !noalias !2701
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342.i
  %i.ol = load ptr, ptr %9, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.ao
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i
  %i.on = load i64, ptr %i.ao, align 8, !tbaa !39, !noalias !2701
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #22, !noalias !2701
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21, !noalias !2701
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !2701
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit

bb.bq:                                            ; preds = %bb.bj
  %i.op = mul i64 %i.mj, 7
  %i.oq = and i64 %i.op, 4294967295
  %notmask289.i = shl nsw i64 -1, %i.oq
  %i.or = xor i64 %notmask289.i, -1
  %i.os = select i1 %i.mm, i64 -1, i64 %i.or
  %i.ot = add i64 %i.ej, %i.el
  %i.ou = add i64 %i.ot, %.3.i.i
  %i.ov = and i64 %i.os, %i.ou
  %scevgep.i53 = getelementptr i8, ptr %i.eb, i64 2
  %i.ow = add nsw i32 %i.mk, -3                   ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %indvars.iv34.i54 = phi i32 [ %indvars.iv.next.i63, %bb.br ], [ %i.ow, %bb.bq ] ; 2 uses
  %indvars.iv.i55 = phi ptr [ %scevgep33.i62, %bb.br ], [ %scevgep.i53, %bb.bq ] ; 2 uses
  %.021.i56 = phi ptr [ %i.pc, %bb.br ], [ %i.eb, %bb.bq ] ; 2 uses
  %.020.i57 = phi i64 [ %i.ox, %bb.br ], [ %i.ov, %bb.bq ] ; 2 uses
  %.019.i58 = phi i32 [ %i.oy, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.ox = lshr i64 %.020.i57, 7                   ; 2 uses
  %i.oy = add nuw nsw i32 %.019.i58, 1            ; 3 uses
  %.not.i59 = icmp ne i64 %i.ox, 0                ; 2 uses
  %i.oz = trunc i64 %.020.i57 to i8               ; 2 uses
  %i.pa = icmp ult i32 %i.oy, %i.mk               ; 2 uses
  %or.cond.i60 = select i1 %.not.i59, i1 true, i1 %i.pa
  %i.pb = or i8 %i.oz, -128
  %.0.i61 = select i1 %or.cond.i60, i8 %i.pb, i8 %i.oz
  %i.pc = getelementptr i8, ptr %.021.i56, i64 1  ; 3 uses
  store i8 %.0.i61, ptr %.021.i56, align 1, !tbaa !39, !noalias !2701
  %scevgep33.i62 = getelementptr i8, ptr %indvars.iv.i55, i64 1
  %indvars.iv.next.i63 = add i32 %indvars.iv34.i54, -1
  br i1 %.not.i59, label %bb.br, label %bb.bs, !llvm.loop !2750

bb.bs:                                            ; preds = %bb.br
  br i1 %i.pa, label %.preheader.i65, label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

.preheader.i65:                                   ; preds = %bb.bs
  %i.pd = add nsw i32 %i.mk, -1
  %i.pe = icmp samesign ult i32 %i.oy, %i.pd
  br i1 %i.pe, label %.lr.ph.preheader.i68, label %._crit_edge.i66

.lr.ph.preheader.i68:                             ; preds = %.preheader.i65
  %i.pf = sub nuw nsw i32 %i.ow, %.019.i58
  %i.pg = zext i32 %i.pf to i64
  %i.ph = add nuw nsw i64 %i.pg, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pc, i8 -128, i64 %i.ph, i1 false), !tbaa !39, !noalias !2701
  %i.pi = zext i32 %indvars.iv34.i54 to i64
  %scevgep35.i69 = getelementptr i8, ptr %indvars.iv.i55, i64 %i.pi
  br label %._crit_edge.i66

._crit_edge.i66:                                  ; preds = %.lr.ph.preheader.i68, %.preheader.i65
  %.122.lcssa.i67 = phi ptr [ %i.pc, %.preheader.i65 ], [ %scevgep35.i69, %.lr.ph.preheader.i68 ]
  store i8 0, ptr %.122.lcssa.i67, align 1, !tbaa !39, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bt:                                            ; preds = %bb.n
  %i.pj = load i8, ptr %i.eb, align 1, !tbaa !39, !noalias !2701 ; 2 uses
  %i.pk = add i64 %i.ej, %i.el
  %i.pl = and i8 %i.pj, -64
  %i.pm = trunc i64 %i.pk to i8
  %i.pn = sub i8 %i.pj, %i.pm
  %i.po = and i8 %i.pn, 63
  %i.pp = or disjoint i8 %i.po, %i.pl
  store i8 %i.pp, ptr %i.eb, align 1, !tbaa !39, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bu:                                            ; preds = %bb.n
  %i.pq = load i8, ptr %i.eb, align 1, !tbaa !39, !noalias !2701
  %i.pr = add i64 %i.ej, %i.el
  %i.ps = trunc i64 %i.pr to i8
  %i.pt = sub i8 %i.pq, %i.ps
  store i8 %i.pt, ptr %i.eb, align 1, !tbaa !39, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bv:                                            ; preds = %bb.n
  %.0.copyload.i.i.i.i.i.i348.i = load i16, ptr %i.eb, align 1, !noalias !2701
  %i.pu = add i64 %i.ej, %i.el
  %i.pv = trunc i64 %i.pu to i16
  %i.pw = sub i16 %.0.copyload.i.i.i.i.i.i348.i, %i.pv
  store i16 %i.pw, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bw:                                            ; preds = %bb.n
  %.0.copyload.i.i.i.i.i.i349.i = load i32, ptr %i.eb, align 1, !noalias !2701
  %i.px = add i64 %i.ej, %i.el
  %i.py = trunc i64 %i.px to i32
  %i.pz = sub i32 %.0.copyload.i.i.i.i.i.i349.i, %i.py
  store i32 %i.pz, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.bx:                                            ; preds = %bb.n
  %.0.copyload.i.i.i.i.i.i350.i = load i64, ptr %i.eb, align 1, !noalias !2701
  %i.qa = add i64 %i.ej, %i.el
  %i.qb = sub i64 %.0.copyload.i.i.i.i.i.i350.i, %i.qa
  store i64 %i.qb, ptr %i.eb, align 1, !noalias !2701
  br label %_ZNK12_GLOBAL__N_122ELFJITLinker_loongarch10applyFixupERN4llvm7jitlink9LinkGraphERNS2_5BlockERKNS2_4EdgeE.exit.thread104

bb.by:                                            ; preds = %bb.n
  %i.qc = ptrtoaddr ptr %i.eb to i64
  %i.qd = sub i64 0, %i.qc
  %scevgep.i351.i = getelementptr i8, ptr %i.eb, i64 %i.qd
  %i.qe = icmp eq ptr %i.dx, null
  br i1 %i.qe, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i, label %.lr.ph312, !prof !2728

bb.bz:                                            ; preds = %bb.cb
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i310, 7
  br label %.lr.ph312, !llvm.loop !2729

.lr.ph312:                                        ; preds = %bb.by, %bb.bz
  %.029.i353.i312 = phi i64 [ %.130.i355.i, %bb.bz ], [ 0, %bb.by ]
  %.031.i352.i311 = phi ptr [ %i.qn, %bb.bz ], [ %i.eb, %bb.by ] ; 3 uses
  %indvars.iv.i310 = phi i64 [ %indvars.iv.next.i, %bb.bz ], [ 0, %bb.by ] ; 5 uses
  %i.qf = load i8, ptr %.031.i352.i311, align 1, !tbaa !39, !noalias !2701 ; 2 uses
  %i.qg = and i8 %i.qf, 127                       ; 3 uses
  %i.qh = zext nneg i8 %i.qg to i64
  %i.qi = icmp samesign ugt i64 %indvars.iv.i310, 62
  br i1 %i.qi, label %bb.ca, label %bb.cb, !prof !54

bb.ca:                                            ; preds = %.lr.ph312
  %.not44.i358.i = icmp eq i64 %indvars.iv.i310, 63
  %.not.i359.i = icmp samesign ugt i8 %i.qg, 1
  %i.qj = icmp ne i8 %i.qg, 0
  %or.cond43.i360.i = select i1 %.not44.i358.i, i1 %.not.i359.i, i1 %i.qj
  br i1 %or.cond43.i360.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph312
  %i.qk = icmp samesign ult i64 %indvars.iv.i310, 64
  %i.ql = shl i64 %i.qh, %indvars.iv.i310
  %i.qm = select i1 %i.qk, i64 %i.ql, i64 0, !prof !266
  %.130.i355.i = add i64 %i.qm, %.029.i353.i312   ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.031.i352.i311, i64 1 ; 2 uses
  %i.qo = icmp slt i8 %i.qf, 0
  br i1 %i.qo, label %bb.bz, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i_crit_edge, !llvm.loop !2729

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i_crit_edge: ; preds = %bb.cb
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i, !llvm.loop !2729

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i:   ; preds = %bb.ca, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i_crit_edge, %bb.by
  %i.qp = phi i1 [ false, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i_crit_edge ], [ true, %bb.by ], [ true, %bb.ca ]
  %.132.i356.i = phi ptr [ %i.qn, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i_crit_edge ], [ %scevgep.i351.i, %bb.by ], [ %.031.i352.i311, %bb.ca ]
  %.3.i357.i = phi i64 [ %.130.i355.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i_crit_edge ], [ 0, %bb.by ], [ 0, %bb.ca ]
  %i.qq = ptrtoint ptr %.132.i356.i to i64
  %i.qr = ptrtoint ptr %i.eb to i64
  %i.qs = sub i64 %i.qq, %i.qr                    ; 2 uses
  %i.qt = trunc i64 %i.qs to i32                  ; 5 uses
  %i.qu = icmp ugt i32 %i.qt, 10
  br i1 %i.qu, label %.critedge304.i, label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i
  %i.qv = icmp eq i32 %i.qt, 10                   ; 2 uses
  %or.cond15.i = and i1 %i.qp, %i.qv
  br i1 %or.cond15.i, label %.critedge304.i, label %bb.cj

.critedge304.i:                                   ; preds = %bb.cc, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit364.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !2701
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21, !noalias !2701
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21, !noalias !2701
  call void @llvm.experimental.noalias.scope.decl(metadata !2751)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !2754
  %.not.i36 = icmp eq i64 %i.ec, 0
  br i1 %.not.i36, label %.thread509.i, label %.lr.ph.i366.i

.thread509.i:                                     ; preds = %.critedge304.i
  store i8 48, ptr %i.ae, align 16, !tbaa !39, !noalias !2754
  br label %._crit_edge.i371.i

._crit_edge.i371.i:                               ; preds = %.lr.ph.i366.i, %.thread509.i
  %.1.lcssa.i372.i = phi ptr [ %i.ae, %.thread509.i ], [ %i.rg, %.lr.ph.i366.i ] ; 3 uses
  store ptr %i.af, ptr %12, align 8, !tbaa !32, !alias.scope !2751, !noalias !2701
  store i64 0, ptr %i.ag, align 8, !tbaa !38, !alias.scope !2751, !noalias !2701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !2754
  %i.qw = ptrtoint ptr %.1.lcssa.i372.i to i64
  %i.qx = sub i64 %i.ah, %i.qw                    ; 4 uses
  store i64 %i.qx, ptr %i.a, align 8, !tbaa !41, !noalias !2754
  %i.qy = icmp ugt i64 %i.qx, 15
  br i1 %i.qy, label %bb.cd, label %._crit_edge.i.i.i373.i

bb.cd:                                            ; preds = %._crit_edge.i371.i
  %i.qz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #21, !noalias !2701 ; 2 uses
  store ptr %i.qz, ptr %12, align 8, !tbaa !35, !alias.scope !2751, !noalias !2701
  %i.ra = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !2754
  store i64 %i.ra, ptr %i.af, align 8, !tbaa !39, !alias.scope !2751, !noalias !2701
  br label %._crit_edge.i.i.i373.i

._crit_edge.i.i.i373.i:                           ; preds = %bb.cd, %._crit_edge.i371.i
  %i.rb = phi ptr [ %i.qz, %bb.cd ], [ %i.af, %._crit_edge.i371.i ] ; 2 uses
  switch i64 %i.qx, label %bb.cf [
    i64 1, label %bb.ce
    i64 0, label %_ZN4llvm9utohexstrB5cxx11Embj.exit374.i
  ]

bb.ce:                                            ; preds = %._crit_edge.i.i.i373.i
  %i.rc = load i8, ptr %.1.lcssa.i372.i, align 1, !tbaa !39, !noalias !2754
  store i8 %i.rc, ptr %i.rb, align 1, !tbaa !39, !noalias !2701
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit374.i

bb.cf:                                            ; preds = %._crit_edge.i.i.i373.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rb, ptr nonnull align 1 %.1.lcssa.i372.i, i64 %i.qx, i1 false), !noalias !2701
  br label %_ZN4llvm9utohexstrB5cxx11Embj.exit374.i

.lr.ph.i366.i:                                    ; preds = %.critedge304.i, %.lr.ph.i366.i
  %.020.i367.i = phi i64 [ %i.rh, %.lr.ph.i366.i ], [ %i.ec, %.critedge304.i ] ; 2 uses
  %.118.i369.i = phi ptr [ %i.rg, %.lr.ph.i366.i ], [ %i.ad, %.critedge304.i ]
  %i.rd = and i64 %.020.i367.i, 15
  %i.re = getelementptr inbounds nuw i8, ptr @_ZZN4llvm8hexdigitEjbE3LUT, i64 %i.rd
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !39, !noalias !2754
  %i.rg = getelementptr inbounds i8, ptr %.118.i369.i, i64 -1 ; 3 uses
  store i8 %i.rf, ptr %i.rg, align 1, !tbaa !39, !noalias !2754
  %i.rh = lshr i64 %.020.i367.i, 4                ; 2 uses
  %i.ri = icmp eq i64 %i.rh, 0
  br i1 %i.ri, label %._crit_edge.i371.i, label %.lr.ph.i366.i, !llvm.loop !2734

_ZN4llvm9utohexstrB5cxx11Embj.exit374.i:          ; preds = %bb.cf, %bb.ce, %._crit_edge.i.i.i373.i
  %i.rj = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !2754 ; 2 uses
  store i64 %i.rj, ptr %i.ag, align 8, !tbaa !38, !alias.scope !2751, !noalias !2701
  %i.rk = load ptr, ptr %12, align 8, !tbaa !35, !alias.scope !2751, !noalias !2701
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rj
  store i8 0, ptr %i.rl, align 1, !tbaa !39, !noalias !2701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !2754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21, !noalias !2754
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  %i.rm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.67, i64 noundef 2) #21, !noalias !2758 ; 6 uses
  store ptr %i.ai, ptr %11, align 8, !tbaa !32, !alias.scope !2755, !noalias !2701
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 16 ; 5 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375.i

bb.cg:                                            ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit374.i
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !38, !noalias !2701 ; 3 uses
  %i.rs = icmp ult i64 %i.rr, 16
  call void @llvm.assume(i1 %i.rs)
  %i.rt = add nuw nsw i64 %i.rr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ro, i64 %i.rt, i1 false), !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit378.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375.i: ; preds = %_ZN4llvm9utohexstrB5cxx11Embj.exit374.i
  store ptr %i.rn, ptr %11, align 8, !tbaa !35, !alias.scope !2755, !noalias !2701
  %i.ru = load i64, ptr %i.ro, align 8, !tbaa !39, !noalias !2701
  store i64 %i.ru, ptr %i.ai, align 8, !tbaa !39, !alias.scope !2755, !noalias !2701
  %.phi.trans.insert.i376.i = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %.pre.i377.i = load i64, ptr %.phi.trans.insert.i376.i, align 8, !tbaa !38, !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit378.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit378.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375.i, %bb.cg
  %i.rv = phi i64 [ %i.rr, %bb.cg ], [ %.pre.i377.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375.i ] ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store i64 %i.rv, ptr %i.aj, align 8, !tbaa !38, !alias.scope !2755, !noalias !2701
  store ptr %i.ro, ptr %i.rm, align 8, !tbaa !35, !noalias !2701
  store i64 0, ptr %i.rw, align 8, !tbaa !38, !noalias !2701
  store i8 0, ptr %i.ro, align 8, !tbaa !39, !noalias !2701
  call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.rx = add i64 %i.rv, -4611686018427387879
  %i.ry = icmp ult i64 %i.rx, 25
  br i1 %i.ry, label %bb.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379.i

bb.ch:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit378.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24, !noalias !2762
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit378.i
  %i.rz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.68, i64 noundef 25) #21, !noalias !2762 ; 6 uses
  store ptr %i.ak, ptr %10, align 8, !tbaa !32, !alias.scope !2759, !noalias !2701
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 5 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %bb.ci, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380.i

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !38, !noalias !2701 ; 3 uses
  %i.sf = icmp ult i64 %i.se, 16
  call void @llvm.assume(i1 %i.sf)
  %i.sg = add nuw nsw i64 %i.se, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.sb, i64 %i.sg, i1 false), !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit383.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i379.i
  store ptr %i.sa, ptr %10, align 8, !tbaa !35, !alias.scope !2759, !noalias !2701
  %i.sh = load i64, ptr %i.sb, align 8, !tbaa !39, !noalias !2701
  store i64 %i.sh, ptr %i.ak, align 8, !tbaa !39, !alias.scope !2759, !noalias !2701
  %.phi.trans.insert.i381.i = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %.pre.i382.i = load i64, ptr %.phi.trans.insert.i381.i, align 8, !tbaa !38, !noalias !2701
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit383.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit383.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380.i, %bb.ci
  %i.si = phi i64 [ %i.se, %bb.ci ], [ %.pre.i382.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380.i ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store i64 %i.si, ptr %i.al, align 8, !tbaa !38, !alias.scope !2759, !noalias !2701
  store ptr %i.sb, ptr %i.rz, align 8, !tbaa !35, !noalias !2701
  store i64 0, ptr %i.sj, align 8, !tbaa !38, !noalias !2701
  store i8 0, ptr %i.sb, align 8, !tbaa !39, !noalias !2701
  call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  %i.sk = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !2766 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2766
  store ptr %10, ptr %4, align 8, !noalias !2766
  store i8 4, ptr %.sroa.21.0..sroa_idx.i.i384.i, align 8, !noalias !2766
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i385.i, align 1, !noalias !2766
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.sk, align 8, !tbaa !19, !noalias !2766
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.sl, ptr noundef nonnull align 8 dereferenceable(34) %4) #21, !noalias !2766
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2766
  store ptr %i.sk, ptr %0, align 8, !tbaa !104, !alias.scope !2769
  %i.sm = load ptr, ptr %10, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.ak
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit383.i
  %i.so = load i64, ptr %i.ak, align 8, !tbaa !39, !noalias !2701
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sm, i64 noundef %i.sp) #22, !noalias !2701
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit383.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386.i
  %i.sq = load ptr, ptr %11, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.sr = icmp eq ptr %i.sq, %i.ai
  br i1 %i.sr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388.i
  %i.ss = load i64, ptr %i.ai, align 8, !tbaa !39, !noalias !2701
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.st) #22, !noalias !2701
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389.i
  %i.su = load ptr, ptr %12, align 8, !tbaa !35, !noalias !2701 ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.af
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391.i
  %i.sw = load i64, ptr %i.af, align 8, !tbaa !39, !noalias !2701
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sx) #22, !noalias !2701
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21, !noalias !2701
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21, !noalias !2701
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !2701
end_hunk_0
