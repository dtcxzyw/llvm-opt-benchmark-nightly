Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZNSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKPNS0_10ObjectFileIS2_EES_ISC_SaISC_EEEEEEvNS9_IPS4_S6_EET_SK_St20forward_iterator_tag:bb.a
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !298
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !717
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ay = icmp eq i64 %i.n, 8
  %i.az = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.b, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 6 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bc, 9223372036854775804     ; 3 uses
  %i.be = and i64 %i.bc, 3
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bi ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep91, align 8, !tbaa !298
  %wide.load92 = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !298
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !717
  store <2 x ptr> %wide.load92, ptr %i.bk, align 8, !tbaa !717
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !2948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ] ; 3 uses
  %i.bm = load ptr, ptr %.0910.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !298
  store ptr %i.bm, ptr %.0811.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !717
  %i.bn = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.1, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !298
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !717
  %i.br = icmp eq i64 %.012.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i.i.i.2, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !298
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !717
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = sub nuw nsw i64 %i.e, %i.o
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bv ; 5 uses
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !718
  %i.bx = icmp sgt i64 %i.n, 8
  br i1 %i.bx, label %bb.k, label %bb.l, !prof !985

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bw, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !718
  br label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit
  br i1 %i.ay, label %bb.m, label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %1, align 8, !tbaa !717
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !717
  br label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43

_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43: ; preds = %bb.k, %bb.l, %bb.m
  %i.bz = phi ptr [ %.pre, %bb.k ], [ %i.bw, %bb.l ], [ %i.bw, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.n
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !718
  %i.cb = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i45.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i45.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43
  %min.iters.check96 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check96, label %.lr.ph.i.i.i.i.i45, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph.i.i.i.i.i45.preheader
  %n.vec98 = and i64 %i.cb, 9223372036854775804   ; 3 uses
  %i.cd = and i64 %i.cb, 3
  %i.ce = shl i64 %n.vec98, 3                     ; 2 uses
  %i.cf = getelementptr i8, ptr %1, i64 %i.ce
  %i.cg = getelementptr i8, ptr %2, i64 %i.ce
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 2 uses
  %i.ch = shl i64 %index100, 3                    ; 2 uses
  %next.gep101 = getelementptr i8, ptr %1, i64 %i.ch ; 2 uses
  %next.gep102 = getelementptr i8, ptr %2, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load103 = load <2 x ptr>, ptr %next.gep102, align 8, !tbaa !298
  %wide.load104 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !298
  %i.cj = getelementptr i8, ptr %next.gep101, i64 16
  store <2 x ptr> %wide.load103, ptr %next.gep101, align 8, !tbaa !717
  store <2 x ptr> %wide.load104, ptr %i.cj, align 8, !tbaa !717
  %index.next105 = add nuw i64 %index100, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.ck, label %middle.block106, label %vector.body99, !llvm.loop !2949

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %i.cb, %n.vec98
  br i1 %cmp.n107, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit, label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %middle.block106, %.lr.ph.i.i.i.i.i45.preheader
  %.012.i.i.i.i.i46.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.cd, %middle.block106 ] ; 2 uses
  %.0811.i.i.i.i.i47.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.cf, %middle.block106 ] ; 3 uses
  %.0910.i.i.i.i.i48.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.cg, %middle.block106 ] ; 3 uses
  %i.cl = load ptr, ptr %.0910.i.i.i.i.i48.ph, align 8, !tbaa !298
  store ptr %i.cl, ptr %.0811.i.i.i.i.i47.ph, align 8, !tbaa !717
  %i.cm = icmp samesign ugt i64 %.012.i.i.i.i.i46.ph, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i45.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i45.1:                             ; preds = %.lr.ph.i.i.i.i.i45
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i47.ph, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i48.ph, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !298
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !717
  %i.cq = icmp eq i64 %.012.i.i.i.i.i46.ph, 3
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i45.2, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i45.2:                             ; preds = %.lr.ph.i.i.i.i.i45.1
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i47.ph, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i48.ph, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !298
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !717
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

bb.n:                                             ; preds = %bb.b
  %i.cu = load ptr, ptr %0, align 8, !tbaa !711   ; 5 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 4 uses
  %i.cw = sub i64 %i.k, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 4 uses
  %i.cy = sub nsw i64 1152921504606846975, %i.cx
  %i.cz = icmp ult i64 %i.cy, %i.e
  br i1 %i.cz, label %bb.o, label %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.183) #37
  unreachable

_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.e)
  %i.da = add nsw i64 %.sroa.speculated.i, %i.cx  ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cx
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #36
  br label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.dg = phi ptr [ %i.df, %bb.p ], [ null, %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.dh = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.di = sub i64 %i.dh, %i.cv                    ; 4 uses
  %i.dj = icmp sgt i64 %i.di, 8
  br i1 %i.dj, label %bb.q, label %bb.r, !prof !985

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dg, ptr align 8 %i.cu, i64 %i.di, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit
  %i.dk = icmp eq i64 %i.di, 8
  br i1 %i.dk, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !717
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !717
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.dm = getelementptr i8, ptr %i.dg, i64 %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dm, ptr align 8 %2, i64 %i.d, i1 false), !tbaa !671
  %i.dn = add i64 %i.d, %i.dh
  %4 = add i64 %i.dn, 8
  %i.do = sub i64 %4, %i.cv
  %5 = getelementptr i8, ptr %i.dg, i64 %i.do
  %scevgep = getelementptr i8, ptr %5, i64 -8     ; 3 uses
  %i.dp = sub i64 %i.k, %i.dh                     ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, 8
  br i1 %i.dq, label %bb.t, label %bb.u, !prof !985

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %1, i64 %i.dp, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.dr = icmp eq i64 %i.dp, 8
  br i1 %i.dr, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56

bb.v:                                             ; preds = %bb.u
  %i.ds = load ptr, ptr %1, align 8, !tbaa !717
  store ptr %i.ds, ptr %scevgep, align 8, !tbaa !717
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56

_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56: ; preds = %bb.t, %bb.u, %bb.v
  %i.dt = getelementptr inbounds i8, ptr %scevgep, i64 %i.dp
  %.not.i57 = icmp eq ptr %i.cu, null
  br i1 %.not.i57, label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !712
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dw) #34
  br label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56, %bb.w
  store ptr %i.dg, ptr %0, align 8, !tbaa !711
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !718
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dd
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !712
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10ObjectFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit: ; preds = %.lr.ph.i.i.i.i.i45, %.lr.ph.i.i.i.i.i45.1, %.lr.ph.i.i.i.i.i45.2, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %middle.block106, %middle.block122, %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43, %_ZSt13move_backwardIPPN4mold9InputFileINS0_6X86_64EEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKPNS0_10SharedFileIS2_EES_ISC_SaISC_EEEEEEvNS9_IPS4_S6_EET_SK_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !712
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !718  ; 12 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.k, %i.m                       ; 7 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 0, %i.e
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = icmp sgt i64 %i.d, 8
  br i1 %i.t, label %bb.e, label %bb.f, !prof !985

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr nonnull align 8 %i.r, i64 %i.d, i1 false)
  %.pre73 = load ptr, ptr %i.h, align 8, !tbaa !718
  br label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.d, 8
  br i1 %i.u, label %bb.g, label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !717
  store ptr %i.v, ptr %i.i, align 8, !tbaa !717
  br label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.w = phi ptr [ %.pre73, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.d
  store ptr %i.x, ptr %i.h, align 8, !tbaa !718
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !985

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %1, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIPPN4mold9InputFileINS0_6X86_64EEES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.ad = icmp eq i64 %i.y, 8
  br i1 %i.ad, label %bb.j, label %_ZSt13move_backwardIPPN4mold9InputFileINS0_6X86_64EEES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.af = load ptr, ptr %1, align 8, !tbaa !717
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !717
  br label %_ZSt13move_backwardIPPN4mold9InputFileINS0_6X86_64EEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPPN4mold9InputFileINS0_6X86_64EEES5_ET0_T_S7_S6_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ag = icmp sgt i64 %i.e, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt13move_backwardIPPN4mold9InputFileINS0_6X86_64EEES5_ET0_T_S7_S6_.exit
  %min.iters.check112 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check112, label %.lr.ph.i.i.i.i.i, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec114 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.ah = and i64 %i.e, 3
  %i.ai = shl i64 %n.vec114, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr i8, ptr %2, i64 %i.ai
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.al = shl i64 %index116, 3                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %1, i64 %i.al ; 2 uses
  %next.gep118 = getelementptr i8, ptr %2, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <2 x ptr>, ptr %next.gep118, align 8, !tbaa !919
  %wide.load120 = load <2 x ptr>, ptr %i.am, align 8, !tbaa !919
  %i.an = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x ptr> %wide.load119, ptr %next.gep117, align 8, !tbaa !717
  store <2 x ptr> %wide.load120, ptr %i.an, align 8, !tbaa !717
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ao, label %middle.block122, label %vector.body115, !llvm.loop !2950

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.e, %n.vec114
  br i1 %cmp.n123, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %middle.block122, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block122 ] ; 2 uses
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block122 ] ; 3 uses
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ak, %middle.block122 ] ; 3 uses
  %i.ap = load ptr, ptr %.0910.i.i.i.i.i.ph, align 8, !tbaa !919
  store ptr %i.ap, ptr %.0811.i.i.i.i.i.ph, align 8, !tbaa !717
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i.ph, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !919
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !717
  %i.au = icmp eq i64 %.012.i.i.i.i.i.ph, 3
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.2, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !919
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !717
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ay = icmp eq i64 %i.n, 8
  %i.az = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.b, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 6 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bc, 9223372036854775804     ; 3 uses
  %i.be = and i64 %i.bc, 3
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bi ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep91, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep91, align 8, !tbaa !919
  %wide.load92 = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !919
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !717
  store <2 x ptr> %wide.load92, ptr %i.bk, align 8, !tbaa !717
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !2951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ] ; 3 uses
  %i.bm = load ptr, ptr %.0910.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !919
  store ptr %i.bm, ptr %.0811.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !717
  %i.bn = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i.1, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !919
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !717
  %i.br = icmp eq i64 %.012.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.br, label %.lr.ph.i.i.i.i.i.i.i.i.2, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !919
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !717
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = sub nuw nsw i64 %i.e, %i.o
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bv ; 5 uses
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !718
  %i.bx = icmp sgt i64 %i.n, 8
  br i1 %i.bx, label %bb.k, label %bb.l, !prof !985

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bw, ptr align 8 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !718
  br label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEEPPNS2_9InputFileIS4_EESF_ET0_T_SI_SH_RSaIT1_E.exit
  br i1 %i.ay, label %bb.m, label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %1, align 8, !tbaa !717
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !717
  br label %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43

_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43: ; preds = %bb.k, %bb.l, %bb.m
  %i.bz = phi ptr [ %.pre, %bb.k ], [ %i.bw, %bb.l ], [ %i.bw, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.n
  store ptr %i.ca, ptr %i.h, align 8, !tbaa !718
  %i.cb = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i45.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i45.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43
  %min.iters.check96 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check96, label %.lr.ph.i.i.i.i.i45, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph.i.i.i.i.i45.preheader
  %n.vec98 = and i64 %i.cb, 9223372036854775804   ; 3 uses
  %i.cd = and i64 %i.cb, 3
  %i.ce = shl i64 %n.vec98, 3                     ; 2 uses
  %i.cf = getelementptr i8, ptr %1, i64 %i.ce
  %i.cg = getelementptr i8, ptr %2, i64 %i.ce
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next105, %vector.body99 ] ; 2 uses
  %i.ch = shl i64 %index100, 3                    ; 2 uses
  %next.gep101 = getelementptr i8, ptr %1, i64 %i.ch ; 2 uses
  %next.gep102 = getelementptr i8, ptr %2, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep102, i64 16
  %wide.load103 = load <2 x ptr>, ptr %next.gep102, align 8, !tbaa !919
  %wide.load104 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !919
  %i.cj = getelementptr i8, ptr %next.gep101, i64 16
  store <2 x ptr> %wide.load103, ptr %next.gep101, align 8, !tbaa !717
  store <2 x ptr> %wide.load104, ptr %i.cj, align 8, !tbaa !717
  %index.next105 = add nuw i64 %index100, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next105, %n.vec98
  br i1 %i.ck, label %middle.block106, label %vector.body99, !llvm.loop !2952

middle.block106:                                  ; preds = %vector.body99
  %cmp.n107 = icmp eq i64 %i.cb, %n.vec98
  br i1 %cmp.n107, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit, label %.lr.ph.i.i.i.i.i45

.lr.ph.i.i.i.i.i45:                               ; preds = %middle.block106, %.lr.ph.i.i.i.i.i45.preheader
  %.012.i.i.i.i.i46.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.cd, %middle.block106 ] ; 2 uses
  %.0811.i.i.i.i.i47.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.cf, %middle.block106 ] ; 3 uses
  %.0910.i.i.i.i.i48.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i45.preheader ], [ %i.cg, %middle.block106 ] ; 3 uses
  %i.cl = load ptr, ptr %.0910.i.i.i.i.i48.ph, align 8, !tbaa !919
  store ptr %i.cl, ptr %.0811.i.i.i.i.i47.ph, align 8, !tbaa !717
  %i.cm = icmp samesign ugt i64 %.012.i.i.i.i.i46.ph, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i45.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i45.1:                             ; preds = %.lr.ph.i.i.i.i.i45
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i47.ph, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i48.ph, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !919
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !717
  %i.cq = icmp eq i64 %.012.i.i.i.i.i46.ph, 3
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i45.2, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

.lr.ph.i.i.i.i.i45.2:                             ; preds = %.lr.ph.i.i.i.i.i45.1
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i47.ph, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i48.ph, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !919
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !717
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

bb.n:                                             ; preds = %bb.b
  %i.cu = load ptr, ptr %0, align 8, !tbaa !711   ; 5 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 4 uses
  %i.cw = sub i64 %i.k, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 4 uses
  %i.cy = sub nsw i64 1152921504606846975, %i.cx
  %i.cz = icmp ult i64 %i.cy, %i.e
  br i1 %i.cz, label %bb.o, label %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.183) #37
  unreachable

_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %i.e)
  %i.da = add nsw i64 %.sroa.speculated.i, %i.cx  ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cx
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #36
  br label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.p
  %i.dg = phi ptr [ %i.df, %bb.p ], [ null, %_ZNKSt6vectorIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.dh = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.di = sub i64 %i.dh, %i.cv                    ; 4 uses
  %i.dj = icmp sgt i64 %i.di, 8
  br i1 %i.dj, label %bb.q, label %bb.r, !prof !985

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dg, ptr align 8 %i.cu, i64 %i.di, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE11_M_allocateEm.exit
  %i.dk = icmp eq i64 %i.di, 8
  br i1 %i.dk, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !717
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !717
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.dm = getelementptr i8, ptr %i.dg, i64 %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dm, ptr align 8 %2, i64 %i.d, i1 false), !tbaa !671
  %i.dn = add i64 %i.d, %i.dh
  %4 = add i64 %i.dn, 8
  %i.do = sub i64 %4, %i.cv
  %5 = getelementptr i8, ptr %i.dg, i64 %i.do
  %scevgep = getelementptr i8, ptr %5, i64 -8     ; 3 uses
  %i.dp = sub i64 %i.k, %i.dh                     ; 4 uses
  %i.dq = icmp sgt i64 %i.dp, 8
  br i1 %i.dq, label %bb.t, label %bb.u, !prof !985

bb.t:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %1, i64 %i.dp, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.dr = icmp eq i64 %i.dp, 8
  br i1 %i.dr, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56

bb.v:                                             ; preds = %bb.u
  %i.ds = load ptr, ptr %1, align 8, !tbaa !717
  store ptr %i.ds, ptr %scevgep, align 8, !tbaa !717
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56

_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56: ; preds = %bb.t, %bb.u, %bb.v
  %i.dt = getelementptr inbounds i8, ptr %scevgep, i64 %i.dp
  %.not.i57 = icmp eq ptr %i.cu, null
  br i1 %.not.i57, label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56
  %i.du = load ptr, ptr %i.f, align 8, !tbaa !712
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dw) #34
  br label %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit56, %bb.w
  store ptr %i.dg, ptr %0, align 8, !tbaa !711
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !718
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dd
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !712
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS1_IPPNS2_9InputFileIS4_EES9_ISF_SaISF_EEEEET0_T_SL_SK_.exit: ; preds = %.lr.ph.i.i.i.i.i45, %.lr.ph.i.i.i.i.i45.1, %.lr.ph.i.i.i.i.i45.2, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %middle.block106, %middle.block122, %_ZSt22__uninitialized_move_aIPPN4mold9InputFileINS0_6X86_64EEES5_SaIS4_EET0_T_S8_S7_RT1_.exit43, %_ZSt13move_backwardIPPN4mold9InputFileINS0_6X86_64EEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIPN4mold9InputFileINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::wait_context_vertex", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d2::for_each_root_task", align 64 ; 10 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !688
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.e, align 8, !tbaa !702
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.b, align 4, !tbaa !176
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #16
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d119wait_context_vertexE, i64 16), ptr %3, align 8, !tbaa !169
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.g, align 8, !tbaa !704
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !705
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.j, align 64, !tbaa !686
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %1, ptr %i.k, align 8, !tbaa !686
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %3, ptr %i.l, align 16, !tbaa !707
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %5, ptr %i.m, align 8, !tbaa !709
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %2, ptr %i.n, align 32, !tbaa !671
  %i.o = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.g to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.p) #16
  br label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i

_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i: ; preds = %bb.c, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE, i64 16), ptr %4, align 64, !tbaa !169
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit

_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit: ; preds = %bb.a, %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i
  %i.q = load atomic i8, ptr %i.c monotonic, align 1
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit
  call void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #16
  br label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119wait_context_vertexD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119wait_context_vertex7reserveEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = atomicrmw add ptr %i.b, i64 %i.a seq_cst, align 8
  %i.d = sub nsw i64 0, %i.a
  %.not.i.i = icmp eq i64 %i.c, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZN3tbb6detail2d112wait_context7reserveEj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.f) #16
  br label %_ZN3tbb6detail2d112wait_context7reserveEj.exit

_ZN3tbb6detail2d112wait_context7reserveEj.exit:   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119wait_context_vertex7releaseEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = atomicrmw sub ptr %i.b, i64 %i.a seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.c, %i.a
  br i1 %.not.i.i, label %bb.b, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = ptrtoint ptr %i.d to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.e) #16
  br label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119wait_context_vertexD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagED0Ev(ptr noundef nonnull align 64 dereferenceable(105) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #34
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_15resolve_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagE7executeERNS0_2d114execution_dataE(ptr noundef nonnull align 64 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 64, !tbaa !686 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !686 ; 2 uses
  %.not.i.i.not = icmp eq ptr %.sroa.01.0.copyload, %.sroa.02.0.copyload
  br i1 %.not.i.i.not, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_15resolve_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEEEvRKSL_RKT0_RNS1_18task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.01.0.copyload to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = ashr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2953, !nonnull !598, !align !599 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 32, !tbaa !2954, !nonnull !598, !align !599
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !730
  %i.k = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192) #16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold9InputFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_15resolve_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.k, align 64, !tbaa !169
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %i.f, ptr %i.m, align 64, !tbaa !593
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !593
end_hunk_0
