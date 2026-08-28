Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/relationSynthesiser?download=true
inline.NumInlined: 1251
inline.NumDeleted: 373
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSt18__prev_permutationISt13_Bit_iteratorN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_(ptr %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %2
  %i.b = icmp eq i32 %1, %3
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %_ZSt9__reverseISt13_Bit_iteratorEvT_S1_St26random_access_iterator_tag.exit.thread, label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.a
  %i.d = add i32 %1, 1
  %i.e = icmp eq i32 %1, 63                       ; 2 uses
  %spec.select = select i1 %i.e, i32 0, i32 %i.d
  %spec.select84.idx = select i1 %i.e, i64 8, i64 0
  %spec.select84.a = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select84.idx
  %i.f = icmp eq ptr %spec.select84.a, %2
  %i.g = icmp eq i32 %spec.select, %3
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %_ZSt9__reverseISt13_Bit_iteratorEvT_S1_St26random_access_iterator_tag.exit.thread, label %_ZNSt13_Bit_iteratormmEv.exit

_ZNSt13_Bit_iteratormmEv.exit:                    ; preds = %_ZNSt13_Bit_iteratorppEv.exit
  %i.i = add i32 %3, -1
  %i.j = icmp eq i32 %3, 0                        ; 2 uses
  %spec.select85.a = select i1 %i.j, i32 63, i32 %i.i
  %spec.select86.idx = select i1 %i.j, i64 -8, i64 0
  %spec.select86.a = getelementptr inbounds i8, ptr %2, i64 %spec.select86.idx
  br label %_ZNSt13_Bit_iteratormmEv.exit31.a

_ZNSt13_Bit_iteratormmEv.exit31.a:                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread, %_ZNSt13_Bit_iteratormmEv.exit
  %.sroa.16.0 = phi i32 [ %spec.select85.a, %_ZNSt13_Bit_iteratormmEv.exit ], [ %spec.select87.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread ] ; 5 uses
  %.sroa.057.0 = phi ptr [ %spec.select86.a, %_ZNSt13_Bit_iteratormmEv.exit ], [ %spec.select88.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread ] ; 4 uses
  %i.k = add i32 %.sroa.16.0, -1
  %i.l = icmp eq i32 %.sroa.16.0, 0               ; 2 uses
  %spec.select87.a = select i1 %i.l, i32 63, i32 %i.k ; 3 uses
  %spec.select88.idx = select i1 %i.l, i64 -8, i64 0
  %spec.select88.a = getelementptr inbounds i8, ptr %.sroa.057.0, i64 %spec.select88.idx ; 4 uses
  %i.m = zext nneg i32 %.sroa.16.0 to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = load i64, ptr %.sroa.057.0, align 8, !tbaa !54
  %i.p = and i64 %i.o, %i.n
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit: ; preds = %_ZNSt13_Bit_iteratormmEv.exit31.a
  %i.q = zext nneg i32 %spec.select87.a to i64
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = load i64, ptr %spec.select88.a, align 8, !tbaa !54 ; 2 uses
  %i.t = and i64 %i.s, %i.r
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread, label %_ZNSt13_Bit_iteratormmEv.exit32

_ZNSt13_Bit_iteratormmEv.exit32:                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit, %_ZNSt13_Bit_iteratormmEv.exit32
  %.sroa.7.0 = phi i32 [ %spec.select89.a, %_ZNSt13_Bit_iteratormmEv.exit32 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %spec.select90, %_ZNSt13_Bit_iteratormmEv.exit32 ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit ]
  %i.u = add i32 %.sroa.7.0, -1
  %i.v = icmp eq i32 %.sroa.7.0, 0                ; 2 uses
  %spec.select89.a = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select90.idx = select i1 %i.v, i64 -8, i64 0
  %spec.select90 = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %spec.select90.idx ; 4 uses
  %i.w = zext nneg i32 %spec.select89.a to i64
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = load i64, ptr %spec.select90, align 8, !tbaa !54
  %i.z = and i64 %i.x, %i.y
  %.not.i.i33 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i33, label %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit, label %_ZNSt13_Bit_iteratormmEv.exit32, !llvm.loop !253

_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit:  ; preds = %_ZNSt13_Bit_iteratormmEv.exit32
  %i.aa = xor i64 %i.r, -1
  %i.ab = and i64 %i.s, %i.aa
  store i64 %i.ab, ptr %spec.select88.a, align 8, !tbaa !54
  %i.ac = load i64, ptr %spec.select90, align 8, !tbaa !54
  %i.ad = or i64 %i.ac, %i.x
  store i64 %i.ad, ptr %spec.select90, align 8, !tbaa !54
  %i.ae = icmp eq ptr %.sroa.057.0, %2
  %i.af = icmp eq i32 %.sroa.16.0, %3
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZSt9__reverseISt13_Bit_iteratorEvT_S1_St26random_access_iterator_tag.exit.thread, label %_ZNSt13_Bit_iteratormmEv.exit.i

_ZNSt13_Bit_iteratormmEv.exit.i:                  ; preds = %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i
  %.sroa.8.2.sink24.i = phi i32 [ %.sroa.8.2.i, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i ], [ %3, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit ] ; 2 uses
  %.sroa.0.0.sink.i = phi ptr [ %.sroa.0.2.i, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i ], [ %2, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit ]
  %.sroa.6.0.i = phi i32 [ %spec.select20.i, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i ], [ %.sroa.16.0, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit ] ; 4 uses
  %.sroa.012.0.i = phi ptr [ %spec.select21.i, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i ], [ %.sroa.057.0, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit ] ; 5 uses
  %i.ah = add i32 %.sroa.8.2.sink24.i, -1
  %i.ai = icmp eq i32 %.sroa.8.2.sink24.i, 0      ; 2 uses
  %.sroa.8.2.i = select i1 %i.ai, i32 63, i32 %i.ah ; 3 uses
  %.sroa.0.2.idx.i = select i1 %i.ai, i64 -8, i64 0
  %.sroa.0.2.i = getelementptr inbounds i8, ptr %.sroa.0.0.sink.i, i64 %.sroa.0.2.idx.i ; 7 uses
  %i.aj = icmp ult ptr %.sroa.012.0.i, %.sroa.0.2.i
  br i1 %i.aj, label %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i
  %i.ak = icmp eq ptr %.sroa.012.0.i, %.sroa.0.2.i
  %i.al = icmp ult i32 %.sroa.6.0.i, %.sroa.8.2.i
  %or.cond.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i, label %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i, label %_ZSt9__reverseISt13_Bit_iteratorEvT_S1_St26random_access_iterator_tag.exit.thread

_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i:  ; preds = %bb.b, %_ZNSt13_Bit_iteratormmEv.exit.i
  %i.am = zext nneg i32 %.sroa.6.0.i to i64
  %i.an = shl nuw i64 1, %i.am                    ; 3 uses
  %i.ao = zext nneg i32 %.sroa.8.2.i to i64
  %i.ap = shl nuw i64 1, %i.ao                    ; 3 uses
  %i.aq = load i64, ptr %.sroa.012.0.i, align 8, !tbaa !54 ; 3 uses
  %i.ar = and i64 %i.aq, %i.an
  %.not.i.i.i36 = icmp eq i64 %i.ar, 0
  %i.as = load i64, ptr %.sroa.0.2.i, align 8, !tbaa !54
  %i.at = and i64 %i.as, %i.ap
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  %i.au = or i64 %i.aq, %i.an
  %i.av = xor i64 %i.an, -1
  %i.aw = and i64 %i.aq, %i.av
  %storemerge.i.i.i = select i1 %.not.i.i.i.i, i64 %i.aw, i64 %i.au
  store i64 %storemerge.i.i.i, ptr %.sroa.012.0.i, align 8, !tbaa !54
  br i1 %.not.i.i.i36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i
  %i.ax = load i64, ptr %.sroa.0.2.i, align 8, !tbaa !54
  %i.ay = or i64 %i.ax, %i.ap
  br label %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i

bb.d:                                             ; preds = %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i
  %i.az = xor i64 %i.ap, -1
  %i.ba = load i64, ptr %.sroa.0.2.i, align 8, !tbaa !54
  %i.bb = and i64 %i.ba, %i.az
  br label %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i

_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i: ; preds = %bb.d, %bb.c
  %storemerge9.i.i.i = phi i64 [ %i.bb, %bb.d ], [ %i.ay, %bb.c ]
  store i64 %storemerge9.i.i.i, ptr %.sroa.0.2.i, align 8, !tbaa !54
  %i.bc = add i32 %.sroa.6.0.i, 1
  %i.bd = icmp eq i32 %.sroa.6.0.i, 63            ; 2 uses
  %spec.select20.i = select i1 %i.bd, i32 0, i32 %i.bc
  %spec.select21.idx.i = select i1 %i.bd, i64 8, i64 0
  %spec.select21.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 %spec.select21.idx.i
  br label %_ZNSt13_Bit_iteratormmEv.exit.i, !llvm.loop !254

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread: ; preds = %_ZNSt13_Bit_iteratormmEv.exit31.a, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit
  %i.be = icmp eq ptr %spec.select88.a, %0
  %i.bf = icmp eq i32 %spec.select87.a, %1
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %_ZNSt13_Bit_iteratormmEv.exit.i37, label %_ZNSt13_Bit_iteratormmEv.exit31.a, !llvm.loop !255

_ZNSt13_Bit_iteratormmEv.exit.i37:                ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50
  %.sroa.8.2.sink24.i38 = phi i32 [ %.sroa.8.2.i42, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread ] ; 2 uses
  %.sroa.0.0.sink.i39 = phi ptr [ %.sroa.0.2.i44, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50 ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread ]
  %.sroa.6.0.i40 = phi i32 [ %spec.select20.i52, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread ] ; 4 uses
  %.sroa.012.0.i41 = phi ptr [ %spec.select21.i54, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50 ], [ %0, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclISt13_Bit_iteratorS3_EEbT_T0_.exit.thread ] ; 5 uses
  %i.bh = add i32 %.sroa.8.2.sink24.i38, -1
  %i.bi = icmp eq i32 %.sroa.8.2.sink24.i38, 0    ; 2 uses
  %.sroa.8.2.i42 = select i1 %i.bi, i32 63, i32 %i.bh ; 3 uses
  %.sroa.0.2.idx.i43 = select i1 %i.bi, i64 -8, i64 0
  %.sroa.0.2.i44 = getelementptr inbounds i8, ptr %.sroa.0.0.sink.i39, i64 %.sroa.0.2.idx.i43 ; 7 uses
  %i.bj = icmp ult ptr %.sroa.012.0.i41, %.sroa.0.2.i44
  br i1 %i.bj, label %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i46, label %bb.e

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i37
  %i.bk = icmp eq ptr %.sroa.012.0.i41, %.sroa.0.2.i44
  %i.bl = icmp ult i32 %.sroa.6.0.i40, %.sroa.8.2.i42
  %or.cond.i45 = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond.i45, label %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i46, label %_ZSt9__reverseISt13_Bit_iteratorEvT_S1_St26random_access_iterator_tag.exit.thread

_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i46: ; preds = %bb.e, %_ZNSt13_Bit_iteratormmEv.exit.i37
  %i.bm = zext nneg i32 %.sroa.6.0.i40 to i64
  %i.bn = shl nuw i64 1, %i.bm                    ; 3 uses
  %i.bo = zext nneg i32 %.sroa.8.2.i42 to i64
  %i.bp = shl nuw i64 1, %i.bo                    ; 3 uses
  %i.bq = load i64, ptr %.sroa.012.0.i41, align 8, !tbaa !54 ; 3 uses
  %i.br = and i64 %i.bq, %i.bn
  %.not.i.i.i47 = icmp eq i64 %i.br, 0
  %i.bs = load i64, ptr %.sroa.0.2.i44, align 8, !tbaa !54
  %i.bt = and i64 %i.bs, %i.bp
  %.not.i.i.i.i48 = icmp eq i64 %i.bt, 0
  %i.bu = or i64 %i.bq, %i.bn
  %i.bv = xor i64 %i.bn, -1
  %i.bw = and i64 %i.bq, %i.bv
  %storemerge.i.i.i49 = select i1 %.not.i.i.i.i48, i64 %i.bw, i64 %i.bu
  store i64 %storemerge.i.i.i49, ptr %.sroa.012.0.i41, align 8, !tbaa !54
  br i1 %.not.i.i.i47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i46
  %i.bx = load i64, ptr %.sroa.0.2.i44, align 8, !tbaa !54
  %i.by = or i64 %i.bx, %i.bp
  br label %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50

bb.g:                                             ; preds = %_ZStltRKSt18_Bit_iterator_baseS1_.exit.thread.i46
  %i.bz = xor i64 %i.bp, -1
  %i.ca = load i64, ptr %.sroa.0.2.i44, align 8, !tbaa !54
  %i.cb = and i64 %i.ca, %i.bz
  br label %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50

_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit.i50: ; preds = %bb.g, %bb.f
  %storemerge9.i.i.i51 = phi i64 [ %i.cb, %bb.g ], [ %i.by, %bb.f ]
  store i64 %storemerge9.i.i.i51, ptr %.sroa.0.2.i44, align 8, !tbaa !54
  %i.cc = add i32 %.sroa.6.0.i40, 1
  %i.cd = icmp eq i32 %.sroa.6.0.i40, 63          ; 2 uses
  %spec.select20.i52 = select i1 %i.cd, i32 0, i32 %i.cc
  %spec.select21.idx.i53 = select i1 %i.cd, i64 8, i64 0
  %spec.select21.i54 = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i41, i64 %spec.select21.idx.i53
  br label %_ZNSt13_Bit_iteratormmEv.exit.i37, !llvm.loop !254

_ZSt9__reverseISt13_Bit_iteratorEvT_S1_St26random_access_iterator_tag.exit.thread: ; preds = %bb.b, %bb.e, %_ZNSt13_Bit_iteratorppEv.exit, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %_ZNSt13_Bit_iteratorppEv.exit ], [ false, %bb.e ], [ true, %_ZSt9iter_swapISt13_Bit_iteratorS0_EvT_T0_.exit ], [ true, %bb.b ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN5eSLIM10SubcircuitE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 40}
!12 = !{!"_ZTSN5eSLIM19RelationSynthesiserE", !13, i64 0, !9, i64 32, !5, i64 40, !20, i64 48, !25, i64 72, !25, i64 96, !30, i64 120, !31, i64 128, !32, i64 136, !5, i64 144, !33, i64 152, !25, i64 176, !25, i64 200}
!13 = !{!"_ZTSN5eSLIM13CadicalSolverE", !14, i64 0, !15, i64 8}
!14 = !{!"double", !6, i64 0}
!15 = !{!"_ZTSN7CaDiCaL6SolverE", !16, i64 0, !16, i64 1, !17, i64 4, !18, i64 8, !19, i64 16}
!16 = !{!"bool", !6, i64 0}
!17 = !{!"_ZTSN7CaDiCaL5StateE", !6, i64 0}
!18 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !10, i64 0}
!19 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !10, i64 0}
!20 = !{!"_ZTSSt6vectorIiSaIiEE", !21, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p1 int", !10, i64 0}
!25 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !10, i64 0}
!30 = !{!"p1 _ZTSN5eSLIM8RelationE", !10, i64 0}
!31 = !{!"p1 _ZTSN5eSLIM11eSLIMConfigE", !10, i64 0}
!32 = !{!"p1 _ZTSN5eSLIM8eSLIMLogE", !10, i64 0}
!33 = !{!"_ZTSSt6vectorIS_IS_IiSaIiEESaIS1_EESaIS3_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IiSaIiEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !10, i64 0}
!38 = !{!30, !30, i64 0}
!39 = !{!31, !31, i64 0}
!40 = !{!32, !32, i64 0}
!41 = !{!12, !5, i64 144}
!42 = !{!12, !32, i64 136}
!43 = !{}
!44 = !{i64 8}
!45 = !{!23, !24, i64 0}
!46 = !{!5, !5, i64 0}
!47 = !{!12, !31, i64 128}
!48 = !{!49, !5, i64 88}
!49 = !{!"_ZTSN5eSLIM11eSLIMConfigE", !16, i64 0, !5, i64 4, !16, i64 8, !16, i64 9, !16, i64 10, !16, i64 11, !16, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !14, i64 48, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !14, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !14, i64 96, !5, i64 104, !16, i64 108, !16, i64 109, !5, i64 112, !5, i64 116, !5, i64 120}
!50 = !{!49, !5, i64 80}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 long", !10, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"long", !6, i64 0}
!56 = !{!49, !5, i64 84}
!57 = !{!58, !53, i64 0}
!58 = !{!"_ZTSSt18_Bit_iterator_base", !53, i64 0, !5, i64 8}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{!61, !60}
!62 = !{!13, !14, i64 0}
!63 = !{!64, !14, i64 248}
!64 = !{!"_ZTSN5eSLIM8eSLIMLogE", !5, i64 0, !14, i64 8, !14, i64 16, !5, i64 24, !20, i64 32, !20, i64 56, !20, i64 80, !65, i64 104, !20, i64 128, !65, i64 152, !20, i64 176, !68, i64 200, !20, i64 224, !14, i64 248, !14, i64 256, !55, i64 264, !14, i64 272, !14, i64 280, !55, i64 288}
!65 = !{!"_ZTSSt6vectorImSaImEE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseImSaImEE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !52, i64 0}
!68 = !{!"_ZTSSt6vectorIdSaIdEE", !69, i64 0}
!69 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !71, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!72 = !{!"p1 double", !10, i64 0}
!73 = !{!14, !14, i64 0}
!74 = !{!64, !14, i64 256}
!75 = !{!64, !55, i64 264}
!76 = !{!23, !24, i64 8}
!77 = !{!23, !24, i64 16}
!78 = distinct !{!78, !60}
!79 = !{!12, !9, i64 32}
!80 = distinct !{!80, !60}
!81 = !{!28, !29, i64 0}
!82 = distinct !{!82, !60}
!83 = distinct !{!83, !60}
!84 = distinct !{!84, !60}
!85 = distinct !{!85, !60}
!86 = distinct !{!86, !60}
!87 = !{!29, !29, i64 0}
!88 = distinct !{!88, !60}
!89 = !{!28, !29, i64 16}
!90 = !{!28, !29, i64 8}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!93 = distinct !{!93, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!94 = !{!95}
!95 = distinct !{!95, !93, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!96 = !{!24, !24, i64 0}
!97 = distinct !{!97, !60}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!100 = distinct !{!100, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!101 = !{!102}
!102 = distinct !{!102, !100, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!105 = distinct !{!105, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!108 = !{!36, !37, i64 16}
!109 = !{!36, !37, i64 0}
!110 = !{!36, !37, i64 8}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZSt19__relocate_object_aISt6vectorIS0_IiSaIiEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!113 = distinct !{!113, !"_ZSt19__relocate_object_aISt6vectorIS0_IiSaIiEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_ZSt19__relocate_object_aISt6vectorIS0_IiSaIiEESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!116 = distinct !{!116, !60}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!119 = distinct !{!119, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!120 = !{!121}
!121 = distinct !{!121, !119, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj: argument 0"}
!124 = distinct !{!124, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj"}
!125 = distinct !{!125, !60}
!126 = !{!49, !5, i64 4}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj: argument 0"}
!129 = distinct !{!129, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj"}
!130 = !{!12, !30, i64 120}
!131 = !{!132, !133, i64 0}
!132 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IbSaIbEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!133 = !{!"p1 _ZTSSt6vectorIS_IbSaIbEESaIS1_EE", !10, i64 0}
!134 = !{!135, !136, i64 8}
!135 = !{!"_ZTSNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!136 = !{!"p1 _ZTSSt6vectorIbSaIbEE", !10, i64 0}
!137 = !{!135, !136, i64 0}
!138 = !{!139, !5, i64 24}
!139 = !{!"_ZTSN5eSLIM8RelationE", !140, i64 0, !5, i64 24, !16, i64 28}
!140 = !{!"_ZTSSt6vectorIS_IS_IbSaIbEESaIS1_EESaIS3_EE", !141, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_IbSaIbEESaIS2_EESaIS4_EE", !142, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_IbSaIbEESaIS2_EESaIS4_EE12_Vector_implE", !132, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj: argument 0"}
!145 = distinct !{!145, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj"}
!146 = distinct !{!146, !60}
!147 = distinct !{!147, !60}
!148 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!149 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!152 = distinct !{!152, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZSt19__relocate_object_aISt6vectorIiSaIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!155 = distinct !{!155, !60}
!156 = distinct !{!156, !60}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj: argument 0"}
!159 = distinct !{!159, !"_ZN5eSLIM19RelationSynthesiser20getNewVariableVectorEj"}
!160 = distinct !{!160, !60}
!161 = distinct !{!161, !60}
end_hunk_0
