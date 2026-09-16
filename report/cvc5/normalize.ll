Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/normalize?download=true
inline.NumInlined: 4351
inline.NumDeleted: 1781
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_T0_T1_":bb.a

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.bq = load i64, ptr %i.ax, align 8, !tbaa !56 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %.not21.i.i.i = icmp eq ptr %0, %i.bb
  br i1 %.not21.i.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i, label %bb.h, !prof !81

bb.h:                                             ; preds = %bb.g
  switch i64 %i.bq, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !57
  store i8 %i.bs, ptr %i.bd, align 8, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bt = load i64, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !57
  %.pre.i.i.i16 = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  store ptr %i.bo, ptr %i.bb, align 8, !tbaa !58
  %i.bv = load i64, ptr %i.ax, align 8, !tbaa !56
  store i64 %i.bv, ptr %i.bl, align 8, !tbaa !56
  %i.bw = load i64, ptr %i.aw, align 8, !tbaa !57
  store i64 %i.bw, ptr %i.bd, align 8, !tbaa !57
  store ptr %i.aw, ptr %0, align 8, !tbaa !58
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.g
  %i.bx = phi ptr [ %.pre.i.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.aw, %bb.k ], [ %i.bo, %bb.g ]
  store i64 0, ptr %i.ax, align 8, !tbaa !56
  store i8 0, ptr %i.bx, align 1, !tbaa !57
  %i.by = load i32, ptr %i.g, align 8, !tbaa !93
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !266
  %i.bz = ptrtoint ptr %i.bb to i64
  %i.ca = sub i64 %i.bz, %i.a                     ; 2 uses
  %i.cb = sdiv exact i64 %i.ca, 40
  store ptr %i.ay, ptr %4, align 8, !tbaa !53
  %i.cc = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.at
  br i1 %i.cd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.l:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !56 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.cg, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i
  store ptr %i.cc, ptr %4, align 8, !tbaa !58
  %i.ch = load i64, ptr %i.at, align 8, !tbaa !57
  store i64 %i.ch, ptr %i.ay, align 8, !tbaa !57
  %.pre5.i = load i64, ptr %i.au, align 8, !tbaa !56
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.l
  %i.ci = phi i64 [ %i.ce, %bb.l ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ]
  store i64 %i.ci, ptr %i.az, align 8, !tbaa !56
  store ptr %i.at, ptr %3, align 8, !tbaa !58
  store i64 0, ptr %i.au, align 8, !tbaa !56
  store i8 0, ptr %i.at, align 8, !tbaa !57
  %i.cj = load i32, ptr %i.av, align 8, !tbaa !266
  store i32 %i.cj, ptr %i.ba, align 8, !tbaa !266
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_T0_ST_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.cb, ptr noundef align 8 %4)
  %i.ck = load ptr, ptr %4, align 8, !tbaa !58    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ay
  br i1 %i.cl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i
  %i.cm = load i64, ptr %i.ay, align 8, !tbaa !57
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #24
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.co = load ptr, ptr %3, align 8, !tbaa !58    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.at
  br i1 %i.cp, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i
  %i.cq = load i64, ptr %i.at, align 8, !tbaa !57
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #24
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_RT0_.exit": ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cs = icmp sgt i64 %i.ca, 40
  br i1 %i.cs, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_T0_.exit", !llvm.loop !526

.lr.ph70:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2869 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02968 = phi i64 [ %i.cu, %bb.b ], [ %2, %.lr.ph ]
  %i.ct = phi i64 [ %i.eb, %bb.b ], [ %i.c, %.lr.ph ]
  %i.cu = add nsw i64 %.02968, -1                 ; 3 uses
  %i.cv = udiv i64 %i.ct, 80
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %storemerge2869, i64 -40 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !266 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 32     ; 5 uses
  %.val1.i.i.i = load i32, ptr %i.cy, align 8, !tbaa !266 ; 3 uses
  %i.cz = icmp sgt i32 %.val.i.i.i, %.val1.i.i.i
  %i.da = getelementptr i8, ptr %storemerge2869, i64 -8 ; 5 uses
  %.val1.i27.i.i = load i32, ptr %i.da, align 8, !tbaa !266 ; 4 uses
  br i1 %i.cz, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph70
  %i.db = icmp sgt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cw) #23
  %i.dc = load i32, ptr %i.g, align 8, !tbaa !93
  %i.dd = load i32, ptr %i.cy, align 8, !tbaa !93
  store i32 %i.dd, ptr %i.g, align 8, !tbaa !93
  store i32 %i.dc, ptr %i.cy, align 8, !tbaa !93
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.de = icmp sgt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cx) #23
  %i.df = load i32, ptr %i.g, align 8, !tbaa !93
  %i.dg = load i32, ptr %i.da, align 8, !tbaa !93
  store i32 %i.dg, ptr %i.g, align 8, !tbaa !93
  store i32 %i.df, ptr %i.da, align 8, !tbaa !93
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.e) #23
  %i.dh = load i32, ptr %i.g, align 8, !tbaa !93
  %i.di = load i32, ptr %i.f, align 8, !tbaa !93
  store i32 %i.di, ptr %i.g, align 8, !tbaa !93
  store i32 %i.dh, ptr %i.f, align 8, !tbaa !93
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph70
  %i.dj = icmp sgt i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.e) #23
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !93
  %i.dl = load i32, ptr %i.f, align 8, !tbaa !93
  store i32 %i.dl, ptr %i.g, align 8, !tbaa !93
  store i32 %i.dk, ptr %i.f, align 8, !tbaa !93
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.dm = icmp sgt i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cx) #23
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !93
  %i.do = load i32, ptr %i.da, align 8, !tbaa !93
  store i32 %i.do, ptr %i.g, align 8, !tbaa !93
  store i32 %i.dn, ptr %i.da, align 8, !tbaa !93
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %i.cw) #23
  %i.dp = load i32, ptr %i.g, align 8, !tbaa !93
  %i.dq = load i32, ptr %i.cy, align 8, !tbaa !93
  store i32 %i.dq, ptr %i.g, align 8, !tbaa !93
  store i32 %i.dp, ptr %i.cy, align 8, !tbaa !93
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader", %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.dt, %bb.y ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2869, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %i.g, align 8, !tbaa !266 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i" ], [ %i.dt, %bb.w ] ; 9 uses
  %i.dr = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32
  %.val.i.i14.i = load i32, ptr %i.dr, align 8, !tbaa !266
  %i.ds = icmp sgt i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 40 ; 2 uses
  br i1 %i.ds, label %bb.w, label %.preheader.i.i.preheader, !llvm.loop !527

.preheader.i.i.preheader:                         ; preds = %bb.w
  %7 = getelementptr i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 4 uses
  %i.du = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i32, ptr %i.du, align 8, !tbaa !266
  %i.dv = icmp sgt i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dv, label %.preheader.i.i, label %bb.x, !llvm.loop !528

bb.x:                                             ; preds = %.preheader.i.i
  %i.dw = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dw, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEET_SS_SS_T0_.exit"

bb.y:                                             ; preds = %bb.x
  %i.dx = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.1.i.i) #23
  %i.dy = load i32, ptr %7, align 4, !tbaa !93
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !93
  store i32 %i.dz, ptr %7, align 4, !tbaa !93
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !93
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_SS_T0_.exit.i", !llvm.loop !529

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEET_SS_SS_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2869, i64 noundef %i.cu)
  %i.ea = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.eb = sub i64 %i.ea, %i.a                     ; 3 uses
  %i.ec = icmp sgt i64 %i.eb, 640
  br i1 %i.ec, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_T0_.exit", !llvm.loop !524

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEET_SS_SS_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_SS_SS_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN4cvc58internal13preprocessing6passes9Normalize11getNodeInfoERKNSI_12NodeTemplateILb1EEEE3$_0EEEvT_T0_ST_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.383", align 8    ; 11 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.051, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i32, ptr %i.i, align 8, !tbaa !266
  %i.j = getelementptr i8, ptr %i.h, i64 32
  %.val1.i = load i32, ptr %i.j, align 8, !tbaa !266
  %i.k = icmp sgt i32 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds [40 x i8], ptr %0, i64 %spec.select ; 10 uses
  %i.m = getelementptr inbounds [40 x i8], ptr %0, i64 %.051 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !58   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !56   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %.not21.i.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit, label %bb.c, !prof !81

bb.c:                                             ; preds = %bb.b
  switch i64 %i.u, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.q, align 1, !tbaa !57
  store i8 %i.w, ptr %i.n, align 1, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.x = load i64, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !56
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !57
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !58
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.m, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !57
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !57
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !57
  store ptr %i.q, ptr %i.m, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !57
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !58
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !57
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.r, ptr %i.l, align 8, !tbaa !58
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %i.ai = phi ptr [ %i.n, %bb.f ], [ %i.r, %bb.g ], [ %i.q, %bb.b ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !56
  store i8 0, ptr %i.ai, align 1, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !93
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %i.al, ptr %i.am, align 8, !tbaa !266
  %i.an = icmp slt i64 %spec.select, %i.b
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !530

._crit_edge:                                      ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit ] ; 6 uses
  %i.ao = and i64 %2, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.aq = add nsw i64 %2, -2
  %i.ar = ashr exact i64 %i.aq, 1
  %i.as = icmp eq i64 %.0.lcssa, %i.ar
  br i1 %i.as, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.at = shl nsw i64 %.0.lcssa, 1
  %i.au = or disjoint i64 %i.at, 1                ; 3 uses
  %i.av = getelementptr inbounds [40 x i8], ptr %0, i64 %i.au ; 10 uses
  %i.aw = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa ; 9 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !58 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 6 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb                ; 2 uses
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.i
  br i1 %i.bc, label %bb.j, label %.thread.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25: ; preds = %bb.i
  br i1 %i.bc, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !56 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %.not21.i.i28 = icmp eq i64 %i.au, %.0.lcssa
  br i1 %.not21.i.i28, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit33, label %bb.k, !prof !81

bb.k:                                             ; preds = %bb.j
  switch i64 %i.be, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %i.ba, align 1, !tbaa !57
  store i8 %i.bg, ptr %i.ax, align 1, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ba, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !56
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !57
  %.pre.i.i30 = load ptr, ptr %i.av, align 8, !tbaa !58
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit33

.thread.i.i32:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !56
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !56
  %i.bo = load i64, ptr %i.bb, align 8, !tbaa !57
  store i64 %i.bo, ptr %i.ay, align 8, !tbaa !57
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_:bb.a
  %i.k = load i32, ptr %0, align 4, !tbaa !93
  store i32 %i.k, ptr %i.i, align 4, !tbaa !93
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !93
  %i.x = load i32, ptr %i.v, align 4, !tbaa !93
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !93
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !93
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !40

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !93
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !93
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !93 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !93
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !41

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.ar, align 4, !tbaa !93
  %i.as = icmp sgt i64 %i.m, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !630

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !93  ; 5 uses
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !93 ; 5 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !93 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load i32, ptr %0, align 4, !tbaa !93
  store i32 %i.az, ptr %0, align 4, !tbaa !93
  store i32 %i.bd, ptr %i.aw, align 4, !tbaa !93
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = icmp slt i32 %i.ay, %i.bb
  %i.bf = load i32, ptr %0, align 4, !tbaa !93    ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.bb, ptr %0, align 4, !tbaa !93
  store i32 %i.bf, ptr %i.ax, align 4, !tbaa !93
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ay, ptr %0, align 4, !tbaa !93
  store i32 %i.bf, ptr %i.f, align 4, !tbaa !93
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.bg = icmp slt i32 %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %0, align 4, !tbaa !93
  store i32 %i.ay, ptr %0, align 4, !tbaa !93
  store i32 %i.bh, ptr %i.f, align 4, !tbaa !93
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = icmp slt i32 %i.az, %i.bb
  %i.bj = load i32, ptr %0, align 4, !tbaa !93    ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.bb, ptr %0, align 4, !tbaa !93
  store i32 %i.bj, ptr %i.ax, align 4, !tbaa !93
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.az, ptr %0, align 4, !tbaa !93
  store i32 %i.bj, ptr %i.aw, align 4, !tbaa !93
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !93    ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !93 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !631

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !93 ; 2 uses
  %i.bp = icmp slt i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !632

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.sroa.010.1.i.i, align 4, !tbaa !93
  store i32 %i.bl, ptr %.sroa.0.1.i.i, align 4, !tbaa !93
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !633

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 16
  br i1 %i.bu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !629

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i.a, label %bb.g

.lr.ph.i.a:                                       ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i.a
  %.sroa.0.018.i.idx = phi i64 [ 4, %.lr.ph.i.a ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i.a ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i32, ptr %.sroa.0.018.i.ptr, align 4, !tbaa !93 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !80

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !93
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.pn17.i, align 4, !tbaa !93 ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i32 %i.l, ptr %.sroa.04.08.i.i, align 4, !tbaa !93
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !93 ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !634

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !93
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !635

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.05.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.p = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !93 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !93 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.s = phi i32 [ %i.t, %.lr.ph.i.i8 ], [ %i.q, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i32 %i.s, ptr %.sroa.04.08.i.i10, align 4, !tbaa !93
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -4 ; 2 uses
  %i.t = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !93 ; 2 uses
  %i.u = icmp slt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !634

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i32 %i.p, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i7 = icmp eq ptr %i.v, %1
  br i1 %.not.i7, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !636

bb.g:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not16.i14
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %bb.g ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %bb.g ] ; 4 uses
  %i.x = load i32, ptr %.sroa.0.018.i16, align 4, !tbaa !93 ; 4 uses
  %i.y = load i32, ptr %0, align 4, !tbaa !93     ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.aa = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !80

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 8
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ab, 4
  br i1 %i.ah, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 4
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !93
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aj = load i32, ptr %.pn17.i17, align 4, !tbaa !93 ; 2 uses
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i22 ], [ %i.aj, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i32 %i.al, ptr %.sroa.04.08.i.i24, align 4, !tbaa !93
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !93 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !634

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.x, ptr %.sink.i19, align 4, !tbaa !93
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !635

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !93   ; 2 uses
  %i.r = icmp slt i64 %.08.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.u, align 4, !tbaa !93
  %i.y = load i32, ptr %i.w, align 4, !tbaa !93
  %i.z = icmp slt i32 %i.x, %i.y
  %spec.select.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !93
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !93
  %i.ad = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ad, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !40

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ae = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ae, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !93 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.q
  br i1 %i.ah, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

end_hunk_1
