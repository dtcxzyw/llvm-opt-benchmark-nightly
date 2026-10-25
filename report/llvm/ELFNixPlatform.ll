Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFNixPlatform?download=true
inline.NumInlined: 6870
inline.NumDeleted: 3278
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZSt16__introsort_loopIPPN4llvm7jitlink7SectionElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_T0_T1_":bb.a
  switch i32 %i.fm, label %bb.an [
    i32 0, label %bb.aj
    i32 2, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load i8, ptr %9, align 8, !tbaa !366, !range !96, !noundef !68
  %i.fq = trunc nuw i8 %i.fp to i1                ; 3 uses
  %i.fr = load i8, ptr %10, align 8, !range !96
  %i.fs = trunc nuw i8 %i.fr to i1                ; 2 uses
  %or.cond.i.i39.i = select i1 %i.fq, i1 %i.fs, i1 false
  br i1 %or.cond.i.i39.i, label %.split2.i.i, label %bb.ak

.split2.i.i:                                      ; preds = %bb.aj
  %i.ft = load i64, ptr %i.de, align 8, !tbaa !160
  %i.fu = load i64, ptr %i.dg, align 8, !tbaa !160
  %i.fv = icmp ult i64 %i.ft, %i.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %i.fv, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i, label %"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i"

bb.ak:                                            ; preds = %bb.aj
  %brmerge.i.i40.i = select i1 %i.fq, i1 true, i1 %i.fs
  br i1 %brmerge.i.i40.i, label %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i37.i", label %bb.an

bb.al:                                            ; preds = %bb.ai
  %i.fw = load i8, ptr %9, align 8, !tbaa !366, !range !96, !noundef !68
  %i.fx = trunc nuw i8 %i.fw to i1                ; 3 uses
  %i.fy = load i8, ptr %10, align 8, !range !96
  %i.fz = trunc nuw i8 %i.fy to i1                ; 2 uses
  %or.cond30.i.i24.i = select i1 %i.fx, i1 %i.fz, i1 false
  br i1 %or.cond30.i.i24.i, label %.split1.i.i, label %bb.am

.split1.i.i:                                      ; preds = %bb.al
  %i.ga = load i64, ptr %i.de, align 8, !tbaa !160
  %i.gb = load i64, ptr %i.dg, align 8, !tbaa !160
  %i.gc = icmp ugt i64 %i.ga, %i.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %i.gc, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i, label %"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i"

bb.am:                                            ; preds = %bb.al
  %brmerge1.i.i25.i = select i1 %i.fx, i1 true, i1 %i.fz
  br i1 %brmerge1.i.i25.i, label %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i37.i", label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.ai
  %.sroa.2.0.copyload.i.i.i26.i = load i64, ptr %i.fl, align 8, !tbaa !160 ; 2 uses
  %.sroa.2.0.copyload.i36.i.i27.i = load i64, ptr %i.fj, align 8, !tbaa !160 ; 2 uses
  %.sroa.speculated.i.i.i.i28.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i36.i.i27.i, i64 %.sroa.2.0.copyload.i.i.i26.i) ; 2 uses
  %i.gd = icmp eq i64 %.sroa.speculated.i.i.i.i28.i, 0
  br i1 %i.gd, label %.thread.i.i.i.i35.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i29.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i29.i: ; preds = %bb.an
  %.sroa.0.0.copyload.i34.i.i30.i = load ptr, ptr %i.di, align 8, !tbaa !265
  %.sroa.0.0.copyload.i.i.i31.i = load ptr, ptr %.val.i.i.i.i15.i, align 8, !tbaa !265
  %i.ge = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i31.i, ptr noundef %.sroa.0.0.copyload.i34.i.i30.i, i64 noundef %.sroa.speculated.i.i.i.i28.i) #26
  %.fr.i.i.i.i32.i = freeze i32 %i.ge             ; 2 uses
  %.not.not.i.i.i.i33.i = icmp eq i32 %.fr.i.i.i.i32.i, 0
  br i1 %.not.not.i.i.i.i33.i, label %.thread.i.i.i.i35.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i34.i

.thread.i.i.i.i35.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i29.i, %bb.an
  %i.gf = icmp ult i64 %.sroa.2.0.copyload.i.i.i26.i, %.sroa.2.0.copyload.i36.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %i.gf, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i, label %"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i"

_ZN4llvmltENS_9StringRefES0_.exit.i.i34.i:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i29.i
  %i.gg = icmp slt i32 %.fr.i.i.i.i32.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %i.gg, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i, label %"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i"

"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i37.i": ; preds = %bb.am, %bb.ak
  %.0.i.in.i38.i = phi i1 [ %i.fq, %bb.ak ], [ %i.fx, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0.i.in.i38.i, label %"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i", label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i:  ; preds = %.thread.i.i.i.i35.i, %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i37.i", %_ZN4llvmltENS_9StringRefES0_.exit.i.i34.i, %.split1.i.i, %.split2.i.i, %.split.i20.i
  %i.gh = load ptr, ptr %i.fk, align 8, !tbaa !333
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0133.i.i.i.i12.i
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !333
  %.not8.i.i23.i = icmp eq i64 %.048.i.i.i.i14.i, 0
  br i1 %.not8.i.i23.i, label %"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i", label %.lr.ph.i.i.i.i11.i, !llvm.loop !2204

"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i": ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i, %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i37.i", %_ZN4llvmltENS_9StringRefES0_.exit.i.i34.i, %.split1.i.i, %.split2.i.i, %.split.i20.i, %.thread.i.i.i.i35.i, %bb.ah
  %.013.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.ah ], [ %.0133.i.i.i.i12.i, %.split2.i.i ], [ %.0133.i.i.i.i12.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i34.i ], [ %.0133.i.i.i.i12.i, %.split1.i.i ], [ %.0133.i.i.i.i12.i, %.split.i20.i ], [ %.0133.i.i.i.i12.i, %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i37.i" ], [ 0, %_ZN4llvmltENS_9StringRefES0_.exit.i.thread4.i.i ], [ %.0133.i.i.i.i12.i, %.thread.i.i.i.i35.i ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i22.i
  store ptr %i.di, ptr %i.gj, align 8, !tbaa !333
  %i.gk = icmp sgt i64 %i.dl, 8
  br i1 %i.gk, label %bb.v, label %"_ZSt14__partial_sortIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !2206

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %.0151053 = phi i64 [ %i.gm, %bb.b ], [ %2, %.lr.ph ]
  %.01152 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.gl = phi i64 [ %i.jf, %bb.b ], [ %i.c, %.lr.ph ]
  %i.gm = add nsw i64 %.0151053, -1               ; 3 uses
  %i.gn = lshr i64 %i.gl, 4
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gn ; 7 uses
  %i.gp = getelementptr inbounds i8, ptr %.01152, i64 -8 ; 7 uses
  %.val29.i.i = load ptr, ptr %i.e, align 8, !tbaa !333
  %.val30.i.i = load ptr, ptr %i.go, align 8, !tbaa !333
  %i.gq = tail call fastcc noundef zeroext i1 @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_"(ptr noundef readonly %.val29.i.i, ptr noundef readonly %.val30.i.i)
  %.val28.i.i = load ptr, ptr %i.gp, align 8, !tbaa !333 ; 2 uses
  br i1 %i.gq, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %.lr.ph54
  %.val27.i.i = load ptr, ptr %i.go, align 8, !tbaa !333
  %i.gr = tail call fastcc noundef zeroext i1 @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_"(ptr noundef readonly %.val27.i.i, ptr noundef readonly %.val28.i.i)
  br i1 %i.gr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gs = load ptr, ptr %0, align 8, !tbaa !333
  %i.gt = load ptr, ptr %i.go, align 8, !tbaa !333
  store ptr %i.gt, ptr %0, align 8, !tbaa !333
  store ptr %i.gs, ptr %i.go, align 8, !tbaa !333
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.aq:                                            ; preds = %bb.ao
  %.val25.i.i = load ptr, ptr %i.e, align 8, !tbaa !333
  %.val26.i.i = load ptr, ptr %i.gp, align 8, !tbaa !333
  %i.gu = tail call fastcc noundef zeroext i1 @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_"(ptr noundef readonly %.val25.i.i, ptr noundef readonly %.val26.i.i)
  %i.gv = load ptr, ptr %0, align 8, !tbaa !333   ; 2 uses
  br i1 %i.gu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gw = load ptr, ptr %i.gp, align 8, !tbaa !333
  store ptr %i.gw, ptr %0, align 8, !tbaa !333
  store ptr %i.gv, ptr %i.gp, align 8, !tbaa !333
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.as:                                            ; preds = %bb.aq
  %i.gx = load ptr, ptr %i.e, align 8, !tbaa !333
  store ptr %i.gx, ptr %0, align 8, !tbaa !333
  store ptr %i.gv, ptr %i.e, align 8, !tbaa !333
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.at:                                            ; preds = %.lr.ph54
  %.val23.i.i = load ptr, ptr %i.e, align 8, !tbaa !333
  %i.gy = tail call fastcc noundef zeroext i1 @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_"(ptr noundef readonly %.val23.i.i, ptr noundef readonly %.val28.i.i)
  br i1 %i.gy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gz = load <2 x ptr>, ptr %0, align 8, !tbaa !333
  %i.ha = shufflevector <2 x ptr> %i.gz, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ha, ptr %0, align 8, !tbaa !333
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.av:                                            ; preds = %bb.at
  %.val.i.i = load ptr, ptr %i.go, align 8, !tbaa !333
  %.val22.i.i = load ptr, ptr %i.gp, align 8, !tbaa !333
  %i.hb = tail call fastcc noundef zeroext i1 @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_"(ptr noundef readonly %.val.i.i, ptr noundef readonly %.val22.i.i)
  %i.hc = load ptr, ptr %0, align 8, !tbaa !333   ; 2 uses
  br i1 %i.hb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hd = load ptr, ptr %i.gp, align 8, !tbaa !333
  store ptr %i.hd, ptr %0, align 8, !tbaa !333
  store ptr %i.hc, ptr %i.gp, align 8, !tbaa !333
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.ax:                                            ; preds = %bb.av
  %i.he = load ptr, ptr %i.go, align 8, !tbaa !333
  store ptr %i.he, ptr %0, align 8, !tbaa !333
  store ptr %i.hc, ptr %i.go, align 8, !tbaa !333
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.ax, %bb.aw, %bb.au, %bb.as, %bb.ar, %bb.ap
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.bl
  %.013.i.i = phi ptr [ %.114.i.i, %bb.bl ], [ %.01152, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.jd, %bb.bl ], [ %i.e, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.ic, %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i ] ; 10 uses
  %.1.val.i.i = load ptr, ptr %.1.i.i, align 8, !tbaa !333 ; 3 uses
  %.val15.i.i = load ptr, ptr %0, align 8, !tbaa !333 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %.val32.i.i.i = load ptr, ptr %.1.val.i.i, align 8, !tbaa !265
  %i.hf = getelementptr i8, ptr %.1.val.i.i, i64 8 ; 2 uses
  %.val33.i.i.i = load i64, ptr %i.hf, align 8, !tbaa !160
  call fastcc void @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_0clEPKNS3_7SectionE"(ptr dead_on_unwind noalias writable align 8 %5, ptr %.val32.i.i.i, i64 %.val33.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.val.i.i.i = load ptr, ptr %.val15.i.i, align 8, !tbaa !265
  %i.hg = getelementptr i8, ptr %.val15.i.i, i64 8 ; 2 uses
  %.val31.i.i.i = load i64, ptr %i.hg, align 8, !tbaa !160
  call fastcc void @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_0clEPKNS3_7SectionE"(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val.i.i.i, i64 %.val31.i.i.i)
  %i.hh = load i32, ptr %i.f, align 8, !tbaa !98  ; 3 uses
  %i.hi = load i32, ptr %i.h, align 8, !tbaa !98  ; 2 uses
  %.not.i.i.i16 = icmp eq i32 %i.hh, %i.hi
  br i1 %.not.i.i.i16, label %bb.az, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ay
  %i.hj = icmp slt i32 %i.hh, %i.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.hj, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i.i", %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i, %.thread.i.i.i.i.i, %.split42.i.i, %.split43.i.i, %.split.i.i
  br label %.preheader.i.i

bb.az:                                            ; preds = %bb.ay
  switch i32 %i.hh, label %bb.be [
    i32 0, label %bb.ba
    i32 2, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hk = load i8, ptr %5, align 8, !tbaa !366, !range !96, !noundef !68
  %i.hl = trunc nuw i8 %i.hk to i1                ; 3 uses
  %i.hm = load i8, ptr %6, align 8, !range !96
  %i.hn = trunc nuw i8 %i.hm to i1                ; 2 uses
  %or.cond.i.i.i17 = select i1 %i.hl, i1 %i.hn, i1 false
  br i1 %or.cond.i.i.i17, label %.split43.i.i, label %bb.bb

.split43.i.i:                                     ; preds = %bb.ba
  %i.ho = load i64, ptr %i.g, align 8, !tbaa !160
  %i.hp = load i64, ptr %i.i, align 8, !tbaa !160
  %i.hq = icmp ult i64 %i.ho, %i.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.hq, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i, label %.preheader.i.i.preheader

bb.bb:                                            ; preds = %bb.ba
  %brmerge.i.i.i = select i1 %i.hl, i1 true, i1 %i.hn
  br i1 %brmerge.i.i.i, label %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i.i", label %bb.be

bb.bc:                                            ; preds = %bb.az
  %i.hr = load i8, ptr %5, align 8, !tbaa !366, !range !96, !noundef !68
  %i.hs = trunc nuw i8 %i.hr to i1                ; 3 uses
  %i.ht = load i8, ptr %6, align 8, !range !96
  %i.hu = trunc nuw i8 %i.ht to i1                ; 2 uses
  %or.cond30.i.i.i = select i1 %i.hs, i1 %i.hu, i1 false
  br i1 %or.cond30.i.i.i, label %.split42.i.i, label %bb.bd

.split42.i.i:                                     ; preds = %bb.bc
  %i.hv = load i64, ptr %i.g, align 8, !tbaa !160
  %i.hw = load i64, ptr %i.i, align 8, !tbaa !160
  %i.hx = icmp ugt i64 %i.hv, %i.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.hx, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i, label %.preheader.i.i.preheader

bb.bd:                                            ; preds = %bb.bc
  %brmerge1.i.i.i = select i1 %i.hs, i1 true, i1 %i.hu
  br i1 %brmerge1.i.i.i, label %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i.i", label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb, %bb.az
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %i.hf, align 8, !tbaa !160 ; 2 uses
  %.sroa.2.0.copyload.i36.i.i.i = load i64, ptr %i.hg, align 8, !tbaa !160 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i36.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) ; 2 uses
  %i.hy = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.hy, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.be
  %.sroa.0.0.copyload.i34.i.i.i = load ptr, ptr %.val15.i.i, align 8, !tbaa !265
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.1.val.i.i, align 8, !tbaa !265
  %i.hz = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i34.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #26
  %.fr.i.i.i.i.i = freeze i32 %i.hz               ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %bb.be
  %i.ia = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i36.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.ia, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i, label %.preheader.i.i.preheader

_ZN4llvmltENS_9StringRefES0_.exit.i.i.i:          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %i.ib = icmp slt i32 %.fr.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.ib, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i, label %.preheader.i.i.preheader

"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i.i": ; preds = %bb.bd, %bb.bb
  %.0.i.in.i.i = phi i1 [ %i.hl, %bb.bb ], [ %i.hs, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.0.i.in.i.i, label %.preheader.i.i.preheader, label %_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.thread.i.i:   ; preds = %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit.i.i", %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i, %.thread.i.i.i.i.i, %.split42.i.i, %.split43.i.i, %.split.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %bb.ay, !llvm.loop !2207

.preheader.i.i:                                   ; preds = %.preheader.i.i.backedge, %.preheader.i.i.preheader
  %.013.pn.i.i = phi ptr [ %.013.i.i, %.preheader.i.i.preheader ], [ %.114.i.i, %.preheader.i.i.backedge ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %.val.i12.i = load ptr, ptr %0, align 8, !tbaa !333 ; 3 uses
  %.114.val.i.i = load ptr, ptr %.114.i.i, align 8, !tbaa !333 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.val32.i16.i.i = load ptr, ptr %.val.i12.i, align 8, !tbaa !265
  %i.id = getelementptr i8, ptr %.val.i12.i, i64 8 ; 2 uses
  %.val33.i17.i.i = load i64, ptr %i.id, align 8, !tbaa !160
  call fastcc void @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_0clEPKNS3_7SectionE"(ptr dead_on_unwind noalias writable align 8 %3, ptr %.val32.i16.i.i, i64 %.val33.i17.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.val.i18.i.i = load ptr, ptr %.114.val.i.i, align 8, !tbaa !265
  %i.ie = getelementptr i8, ptr %.114.val.i.i, i64 8 ; 2 uses
  %.val31.i19.i.i = load i64, ptr %i.ie, align 8, !tbaa !160
  call fastcc void @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_0clEPKNS3_7SectionE"(ptr dead_on_unwind noalias writable align 8 %4, ptr %.val.i18.i.i, i64 %.val31.i19.i.i)
  %i.if = load i32, ptr %i.j, align 8, !tbaa !98  ; 3 uses
  %i.ig = load i32, ptr %i.l, align 8, !tbaa !98  ; 2 uses
  %.not.i20.i.i = icmp eq i32 %i.if, %i.ig
  br i1 %.not.i20.i.i, label %bb.bf, label %.split44.i.i

.split44.i.i:                                     ; preds = %.preheader.i.i
  %i.ih = icmp slt i32 %i.if, %i.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.ih, label %.preheader.i.i.backedge, label %.loopexit.i.i

bb.bf:                                            ; preds = %.preheader.i.i
  switch i32 %i.if, label %bb.bk [
    i32 0, label %bb.bg
    i32 2, label %bb.bi
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.ii = load i8, ptr %3, align 8, !tbaa !366, !range !96, !noundef !68
  %i.ij = trunc nuw i8 %i.ii to i1                ; 3 uses
  %i.ik = load i8, ptr %4, align 8, !range !96
  %i.il = trunc nuw i8 %i.ik to i1                ; 2 uses
  %or.cond.i38.i.i = select i1 %i.ij, i1 %i.il, i1 false
  br i1 %or.cond.i38.i.i, label %.split46.i.i, label %bb.bh

.split46.i.i:                                     ; preds = %bb.bg
  %i.im = load i64, ptr %i.k, align 8, !tbaa !160
  %i.in = load i64, ptr %i.m, align 8, !tbaa !160
  %i.io = icmp ult i64 %i.im, %i.in
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.io, label %.preheader.i.i.backedge, label %.loopexit.i.i

bb.bh:                                            ; preds = %bb.bg
  %brmerge.i39.i.i = select i1 %i.ij, i1 true, i1 %i.il
  br i1 %brmerge.i39.i.i, label %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit41.i.i", label %bb.bk

bb.bi:                                            ; preds = %bb.bf
  %i.ip = load i8, ptr %3, align 8, !tbaa !366, !range !96, !noundef !68
  %i.iq = trunc nuw i8 %i.ip to i1                ; 3 uses
  %i.ir = load i8, ptr %4, align 8, !range !96
  %i.is = trunc nuw i8 %i.ir to i1                ; 2 uses
  %or.cond30.i22.i.i = select i1 %i.iq, i1 %i.is, i1 false
  br i1 %or.cond30.i22.i.i, label %.split45.i.i, label %bb.bj

.split45.i.i:                                     ; preds = %bb.bi
  %i.it = load i64, ptr %i.k, align 8, !tbaa !160
  %i.iu = load i64, ptr %i.m, align 8, !tbaa !160
  %i.iv = icmp ugt i64 %i.it, %i.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.iv, label %.preheader.i.i.backedge, label %.loopexit.i.i

bb.bj:                                            ; preds = %bb.bi
  %brmerge1.i23.i.i = select i1 %i.iq, i1 true, i1 %i.is
  br i1 %brmerge1.i23.i.i, label %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit41.i.i", label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh, %bb.bf
  %.sroa.2.0.copyload.i.i25.i.i = load i64, ptr %i.id, align 8, !tbaa !160 ; 2 uses
  %.sroa.2.0.copyload.i36.i26.i.i = load i64, ptr %i.ie, align 8, !tbaa !160 ; 2 uses
  %.sroa.speculated.i.i.i27.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i36.i26.i.i, i64 %.sroa.2.0.copyload.i.i25.i.i) ; 2 uses
  %i.iw = icmp eq i64 %.sroa.speculated.i.i.i27.i.i, 0
  br i1 %i.iw, label %.thread.i.i.i37.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28.i.i: ; preds = %bb.bk
  %.sroa.0.0.copyload.i34.i29.i.i = load ptr, ptr %.114.val.i.i, align 8, !tbaa !265
  %.sroa.0.0.copyload.i.i30.i.i = load ptr, ptr %.val.i12.i, align 8, !tbaa !265
  %i.ix = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i30.i.i, ptr noundef %.sroa.0.0.copyload.i34.i29.i.i, i64 noundef %.sroa.speculated.i.i.i27.i.i) #26
  %.fr.i.i.i31.i.i = freeze i32 %i.ix             ; 2 uses
  %.not.not.i.i.i32.i.i = icmp eq i32 %.fr.i.i.i31.i.i, 0
  br i1 %.not.not.i.i.i32.i.i, label %.thread.i.i.i37.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i35.i.i

.thread.i.i.i37.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28.i.i, %bb.bk
  %i.iy = icmp ult i64 %.sroa.2.0.copyload.i.i25.i.i, %.sroa.2.0.copyload.i36.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.iy, label %.preheader.i.i.backedge, label %.loopexit.i.i

.preheader.i.i.backedge:                          ; preds = %.thread.i.i.i37.i.i, %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit41.i.i", %_ZN4llvmltENS_9StringRefES0_.exit.i35.i.i, %.split45.i.i, %.split46.i.i, %.split44.i.i
  br label %.preheader.i.i, !llvm.loop !2208

_ZN4llvmltENS_9StringRefES0_.exit.i35.i.i:        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i28.i.i
  %i.iz = icmp slt i32 %.fr.i.i.i31.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.iz, label %.preheader.i.i.backedge, label %.loopexit.i.i

"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit41.i.i": ; preds = %bb.bj, %bb.bh
  %.0.i21.in.i.i = phi i1 [ %i.ij, %bb.bh ], [ %i.iq, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.0.i21.in.i.i, label %.loopexit.i.i, label %.preheader.i.i.backedge

.loopexit.i.i:                                    ; preds = %"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_.exit41.i.i", %_ZN4llvmltENS_9StringRefES0_.exit.i35.i.i, %.split45.i.i, %.split46.i.i, %.split44.i.i, %.thread.i.i.i37.i.i
  %i.ja = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ja, label %bb.bl, label %"_ZSt27__unguarded_partition_pivotIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEET_SH_SH_T0_.exit"

bb.bl:                                            ; preds = %.loopexit.i.i
  %i.jb = load ptr, ptr %.1.i.i, align 8, !tbaa !333
  %i.jc = load ptr, ptr %.114.i.i, align 8, !tbaa !333
  store ptr %i.jc, ptr %.1.i.i, align 8, !tbaa !333
  store ptr %i.jb, ptr %.114.i.i, align 8, !tbaa !333
  %i.jd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %"_ZSt22__move_median_to_firstIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !2209

"_ZSt27__unguarded_partition_pivotIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEET_SH_SH_T0_.exit": ; preds = %.loopexit.i.i
  tail call fastcc void @"_ZSt16__introsort_loopIPPN4llvm7jitlink7SectionElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.01152, i64 noundef %i.gm)
  %i.je = ptrtoint ptr %.1.i.i to i64
  %i.jf = sub i64 %i.je, %i.a                     ; 3 uses
  %i.jg = icmp sgt i64 %i.jf, 128
  br i1 %i.jg, label %bb.b, label %"_ZSt14__partial_sortIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !2202

"_ZSt14__partial_sortIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIPPN4llvm7jitlink7SectionEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS1_9LinkGraphERNS8_8JITDylibEbE3$_1EEEvT_SH_SH_RT0_.exit.i21.i", %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_1clEPKNS3_7SectionESB_"(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.798", align 8    ; 7 uses
  %3 = alloca %"class.std::tuple.798", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %.val32 = load ptr, ptr %0, align 8, !tbaa !265
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val33 = load i64, ptr %i.a, align 8, !tbaa !160
  call fastcc void @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_0clEPKNS3_7SectionE"(ptr dead_on_unwind noalias writable align 8 %2, ptr %.val32, i64 %.val33)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.val = load ptr, ptr %1, align 8, !tbaa !265
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val31 = load i64, ptr %i.d, align 8, !tbaa !160
  call fastcc void @"_ZZN4llvm3orc14ELFNixPlatform20ELFNixPlatformPlugin20registerFiniSectionsERNS_7jitlink9LinkGraphERNS0_8JITDylibEbENK3$_0clEPKNS3_7SectionE"(ptr dead_on_unwind noalias writable align 8 %3, ptr %.val, i64 %.val31)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !98   ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq i32 %i.g, %i.h
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.g, %i.h
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  switch i32 %i.g, label %bb.j [
    i32 0, label %bb.d
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %2, align 8, !tbaa !366, !range !96, !noundef !68
  %i.k = trunc nuw i8 %i.j to i1                  ; 3 uses
  %i.l = load i8, ptr %3, align 8, !range !96
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %or.cond = select i1 %i.k, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.c, align 8, !tbaa !160
  %i.o = load i64, ptr %i.f, align 8, !tbaa !160
  %i.p = icmp ult i64 %i.n, %i.o
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %brmerge = select i1 %i.k, i1 true, i1 %i.m
  %not.3 = xor i1 %i.k, true
  br i1 %brmerge, label %bb.l, label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.q = load i8, ptr %2, align 8, !tbaa !366, !range !96, !noundef !68
  %i.r = trunc nuw i8 %i.q to i1                  ; 3 uses
  %i.s = load i8, ptr %3, align 8, !range !96
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %or.cond30 = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr %i.c, align 8, !tbaa !160
  %i.v = load i64, ptr %i.f, align 8, !tbaa !160
  %i.w = icmp ugt i64 %i.u, %i.v
  br label %bb.l
end_hunk_0
