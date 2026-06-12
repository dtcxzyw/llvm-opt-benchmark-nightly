inline.NumInlined: 224
inline.NumDeleted: 124
begin_hunk_0_@_ZN6Assimp3FBX8TokenizeERSt6vectorIPKNS0_5TokenESaIS4_EEPKcRNS_14StackAllocatorE:bb.a
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i139

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i139: ; preds = %bb.ax, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i136
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.not.i17.i.i.i140 = icmp eq ptr %i.es, null
  br i1 %.not.i17.i.i.i140, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i141, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i139
  tail call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ev) #18
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i141

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i141: ; preds = %bb.ay, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i139
  store ptr %i.fd, ptr %i.f, align 8
  store ptr %i.fg, ptr %i.e, align 8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.fh, ptr %i.g, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit142

bb.az:                                            ; preds = %bb.as
  %i.fi = load ptr, ptr %i.e, align 8
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.eh
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit142

_ZN6Assimp14StackAllocator8AllocateEm.exit142:    ; preds = %bb.au, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i141, %bb.az
  %storemerge.i132 = phi i64 [ %i.ei, %bb.az ], [ 40, %bb.au ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i141 ]
  %.0.i133 = phi ptr [ %i.fl, %bb.az ], [ %i.en, %bb.au ], [ %i.en, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i141 ] ; 7 uses
  store i64 %storemerge.i132, ptr %i.d, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.084, i64 1
  store ptr %.084, ptr %.0.i133, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i133, i64 8
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i133, i64 16
  store i32 4, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i133, i64 24
  %i.fq = zext i32 %i.l to i64
  store i64 %i.fq, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i133, i64 32
  store i32 %i.m, ptr %i.fr, align 8
  %i.fs = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ft = load ptr, ptr %i.i, align 8
  %.not.i.i143 = icmp eq ptr %i.fs, %i.ft
  br i1 %.not.i.i143, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit142
  store ptr %.0.i133, ptr %i.fs, align 8
  %i.fu = load ptr, ptr %i.h, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fv, ptr %i.h, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

bb.bb:                                            ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit142
  %i.fw = load ptr, ptr %0, align 8               ; 4 uses
  %i.fx = ptrtoint ptr %i.fs to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 6 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775800
  br i1 %i.ga, label %bb.bc, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i144

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #17
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i144: ; preds = %bb.bb
  %i.gb = ashr exact i64 %i.fz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i145 = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i.i.i145, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = tail call i64 @llvm.umin.i64(i64 %i.gc, i64 1152921504606846975)
  %i.gf = select i1 %i.gd, i64 1152921504606846975, i64 %i.ge ; 3 uses
  %.not.i.i.i.i146 = icmp ne i64 %i.gf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i146)
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %i.gh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #19 ; 4 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.fz ; 2 uses
  store ptr %.0.i133, ptr %i.gi, align 8
  %i.gj = icmp sgt i64 %i.fz, 0
  br i1 %i.gj, label %bb.bd, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i147

bb.bd:                                            ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr align 8 %i.fw, i64 %i.fz, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i147

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i147: ; preds = %bb.bd, %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.not.i17.i.i.i148 = icmp eq ptr %i.fw, null
  br i1 %.not.i17.i.i.i148, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i147
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fz) #18
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149: ; preds = %bb.be, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i147
  store ptr %i.gh, ptr %0, align 8
  store ptr %i.gk, ptr %i.h, align 8
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.gl, ptr %i.i, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

bb.bf:                                            ; preds = %bb.h
  %i.gm = trunc nuw i8 %.087 to i1
  br i1 %i.gm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_116ProcessDataTokenERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorERPKcSD_jjNS0_9TokenTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 5, i1 noundef zeroext true)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.l, i32 noundef %i.m) #17
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.bl:                                            ; preds = %bb.bi
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %5, align 8               ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.bl
  %i.gs = load i64, ptr %i.gq, align 8
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.bk ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %i.go, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.bn

bb.bm:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.gu = load ptr, ptr %i.a, align 8
  %.not107 = icmp eq ptr %i.gu, null
  br i1 %.not107, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.bm
  call fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_116ProcessDataTokenERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorERPKcSD_jjNS0_9TokenTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 2, i1 noundef zeroext false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.h
  store ptr %.084, ptr %i.b, align 8
  %i.gv = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not106 = icmp eq ptr %i.gv, null
  %spec.store.select = select i1 %.not106, ptr %.084, ptr %i.gv
  store ptr %spec.store.select, ptr %i.a, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149, %bb.ba, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i130, %bb.al, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.y, %.preheader.preheader, %bb.bm, %bb.f, %bb.g, %bb.d, %bb.bg, %bb.p, %bb.o
  %i.gw = phi i32 [ %i.l, %bb.bg ], [ %.082, %bb.d ], [ %i.l, %bb.f ], [ %i.l, %bb.o ], [ %i.l, %bb.p ], [ %i.l, %.preheader.preheader ], [ %i.l, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.l, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i130 ], [ %i.l, %bb.g ], [ %i.l, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %i.l, %bb.ba ], [ %i.l, %bb.bm ], [ %i.l, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149 ], [ %i.l, %bb.y ], [ %i.l, %bb.al ]
  %i.gx = phi i32 [ %i.m, %bb.bg ], [ %.097, %bb.d ], [ %i.m, %bb.f ], [ %i.m, %bb.o ], [ %i.m, %bb.p ], [ %i.m, %.preheader.preheader ], [ %i.m, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.m, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i130 ], [ %i.m, %bb.g ], [ %i.m, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %i.m, %bb.ba ], [ %i.m, %bb.bm ], [ %i.m, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149 ], [ %i.m, %bb.y ], [ %i.m, %bb.al ]
  %.296 = phi i1 [ false, %bb.bg ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.o ], [ true, %bb.p ], [ false, %.preheader.preheader ], [ false, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ false, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i130 ], [ false, %bb.g ], [ false, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ false, %bb.ba ], [ false, %bb.bm ], [ false, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149 ], [ false, %bb.y ], [ false, %bb.al ]
  %.293 = phi i1 [ false, %bb.bg ], [ %.091, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ false, %bb.p ], [ false, %.preheader.preheader ], [ false, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ false, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i130 ], [ false, %bb.g ], [ false, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ false, %bb.ba ], [ false, %bb.bm ], [ false, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149 ], [ false, %bb.y ], [ false, %bb.al ]
  %.390 = phi i8 [ 1, %bb.bg ], [ %.087, %bb.d ], [ %.087, %bb.f ], [ %.087, %bb.o ], [ %.087, %bb.p ], [ 0, %.preheader.preheader ], [ %.087, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.087, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i130 ], [ 0, %bb.g ], [ 1, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %.087, %bb.ba ], [ 0, %bb.bm ], [ %.087, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i149 ], [ %.087, %bb.y ], [ %.087, %bb.al ]
  %i.gy = load i8, ptr %.084, align 1
  %i.gz = icmp eq i8 %i.gy, 9
  %i.ha = select i1 %i.gz, i32 4, i32 1
  %i.hb = add i32 %i.ha, %i.gx
  %i.hc = getelementptr inbounds nuw i8, ptr %.084, i64 1
  br label %bb.b, !llvm.loop !3

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %.pn103.pn
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #2

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_116ProcessDataTokenERSt6vectorIPKNS0_5TokenESaIS5_EERNS_14StackAllocatorERPKcSD_jjNS0_9TokenTypeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 2, 6) %6, i1 noundef zeroext %7) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  %14 = load ptr, ptr %3, align 8                 ; 3 uses
  %.not37.a = icmp eq ptr %14, null
  %or.cond = select i1 %.not, i1 true, i1 %.not37.a
  br i1 %or.cond, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 1
  %.not3959 = icmp eq ptr %i.a, %i.b
  br i1 %.not3959, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.not82 = icmp eq i8 %.03460, %i.e
  br i1 %.not82, label %._crit_edge.thread, label %bb.h

.lr.ph:                                           ; preds = %.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit
  %.03361 = phi ptr [ %i.m, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %i.a, %.preheader ] ; 3 uses
  %.03460 = phi i8 [ %spec.select, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ 0, %.preheader ] ; 3 uses
  %i.c = load i8, ptr %.03361, align 1            ; 2 uses
  %i.d = icmp eq i8 %i.c, 34
  %i.e = zext i1 %i.d to i8                       ; 3 uses
  %spec.select = xor i8 %.03460, %i.e
  %.not57 = icmp eq i8 %.03460, %i.e
  br i1 %.not57, label %bb.b, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.c, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
    i8 0, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %4, i32 noundef %5) #17
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %8, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn42 = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ae

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.b, %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.03361, i64 1
  %.not39 = icmp eq ptr %.03361, %14
  br i1 %.not39, label %._crit_edge, label %.lr.ph, !llvm.loop !5

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %4, i32 noundef %5) #17
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.l:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %10, align 8               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.l
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.k
  %.pn40 = phi { ptr, i32 } [ %i.n, %bb.k ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.o, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.ae

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = add i64 %i.v, 40                         ; 2 uses
  %i.x = load i64, ptr %1, align 8                ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  br i1 %i.y, label %bb.m, label %bb.s

bb.m:                                             ; preds = %._crit_edge.thread
  %i.z = shl i64 %i.x, 1
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.z, i64 40)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 67108864) ; 2 uses
  store i64 %.sroa.speculated.i, ptr %1, align 8
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #19 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ab, ptr %i.ae, align 8
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.ad, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ak = ptrtoint ptr %i.ae to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.p, label %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #17
  unreachable

_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.ao = ashr exact i64 %i.am, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975)
  %i.as = select i1 %i.aq, i64 1152921504606846975, i64 %i.ar ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #19 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.am ; 2 uses
  store ptr %i.ab, ptr %i.av, align 8
  %i.aw = icmp sgt i64 %i.am, 0
  br i1 %i.aw, label %bb.q, label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIPhSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #18
  br label %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIPhSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.au, ptr %i.ac, align 8
  store ptr %i.ax, ptr %i.ad, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  store ptr %i.ay, ptr %i.af, align 8
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit

bb.s:                                             ; preds = %._crit_edge.thread
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.v
  br label %_ZN6Assimp14StackAllocator8AllocateEm.exit

_ZN6Assimp14StackAllocator8AllocateEm.exit:       ; preds = %bb.n, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.s
  %storemerge.i = phi i64 [ %i.w, %bb.s ], [ 40, %bb.n ], [ 40, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ]
  %.0.i = phi ptr [ %i.bd, %bb.s ], [ %i.ab, %bb.n ], [ %i.ab, %_ZNSt6vectorIPhSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 7 uses
  store i64 %storemerge.i, ptr %i.u, align 8
  %i.be = load ptr, ptr %2, align 8
  %i.bf = load ptr, ptr %3, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.be, ptr %.0.i, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 %6, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.bk = zext i32 %4 to i64
  store i64 %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i32 %5, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not.i.i49 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i.i49, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit
  store ptr %.0.i, ptr %i.bn, align 8
  %i.bq = load ptr, ptr %i.bm, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.bm, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

bb.u:                                             ; preds = %_ZN6Assimp14StackAllocator8AllocateEm.exit
  %i.bs = load ptr, ptr %0, align 8               ; 4 uses
  %i.bt = ptrtoint ptr %i.bn to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.v, label %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #17
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.u
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i50 = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i50, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i.i.i51 = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i51)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #19 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store ptr %.0.i, ptr %i.ce, align 8
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.w, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.bs, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.w, %_ZNKSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.not.i17.i.i.i52 = icmp eq ptr %i.bs, null
  br i1 %.not.i17.i.i.i52, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #18
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.cd, ptr %0, align 8
  store ptr %i.cg, ptr %i.bm, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ch, ptr %i.bo, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

bb.y:                                             ; preds = %bb.a
  br i1 %7, label %bb.z, label %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %4, i32 noundef %5) #17
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.ad:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %12, align 8              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.ad
  %i.cn = load i64, ptr %i.cl, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.ac ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.cj, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.ae

_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX5TokenESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.t, %bb.y
  store ptr null, ptr %3, align 8
  store ptr null, ptr %2, align 8
  ret void

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  resume { ptr, i32 } %.pn42.pn.pn
}

; Function Attrs: mustprogress noreturn uwtable
define internal fastcc void @_ZN6Assimp3FBX12_GLOBAL__N_113TokenizeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZN6Assimp3FBX4Util20GetLineAndColumnTextB5cxx11Ejj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn11 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn10 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn11, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn10

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN6Assimp3FBX4Util20GetLineAndColumnTextB5cxx11Ejj(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA13_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS6_ERA13_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
end_hunk_0
