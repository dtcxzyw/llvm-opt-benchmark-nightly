Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmCurve?download=true
inline.NumInlined: 1256
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK4gdcm5Curve24GetTypeOfDataDescriptionEv:bb.a

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %.split.preheader
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.35, i64 %i.i)
  %i.aj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aj, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.3

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.1: ; preds = %.split.preheader
  %bcmp.i.i.1 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.37, i64 %i.i)
  %i.ak = icmp eq i32 %bcmp.i.i.1, 0
  br i1 %i.ak, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.2

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.2: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.1
  %bcmp.i.i.2 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.39, i64 %i.i)
  %i.al = icmp eq i32 %bcmp.i.i.2, 0
  br i1 %i.al, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.4

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.3: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %bcmp.i.i.3 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.41, i64 %i.i)
  %i.am = icmp eq i32 %bcmp.i.i.3, 0
  br i1 %i.am, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.7

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.4: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.2
  %bcmp.i.i.4 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.43, i64 %i.i)
  %i.an = icmp eq i32 %bcmp.i.i.4, 0
  br i1 %i.an, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.5

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.5: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.4
  %bcmp.i.i.5 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.45, i64 %i.i)
  %i.ao = icmp eq i32 %bcmp.i.i.5, 0
  br i1 %i.ao, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.6

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.6: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.5
  %bcmp.i.i.6 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.47, i64 %i.i)
  %i.ap = icmp eq i32 %bcmp.i.i.6, 0
  br i1 %i.ap, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.9

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.7: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.3
  %bcmp.i.i.7 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.49, i64 %i.i)
  %i.aq = icmp eq i32 %bcmp.i.i.7, 0
  br i1 %i.aq, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.thread.11

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.8: ; preds = %.split.preheader
  %bcmp.i.i.8 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.51, i64 %i.i)
  %i.ar = icmp eq i32 %bcmp.i.i.8, 0
  br i1 %i.ar, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.thread.11

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.9: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.6
  %bcmp.i.i.9 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.53, i64 %i.i)
  %i.as = icmp eq i32 %bcmp.i.i.9, 0
  br i1 %i.as, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.11

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.10: ; preds = %.split.preheader
  %bcmp.i.i.10 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.55, i64 %i.i)
  %i.at = icmp eq i32 %bcmp.i.i.10, 0
  br i1 %i.at, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.thread.11

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.11: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.9
  %bcmp.i.i.11 = tail call i32 @bcmp(ptr nonnull %i.k, ptr nonnull @.str.57, i64 %i.i)
  %i.au = icmp eq i32 %bcmp.i.i.11, 0
  br i1 %i.au, label %.split14.us, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.thread.11

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.thread.11: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.11, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.7, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.10, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.8, %.split.us.preheader, %.split.preheader, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.8, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.10, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.7, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.11
  br label %.split14.us

.split14.us:                                      ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.1, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.2, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.3, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.4, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.5, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.6, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.7, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.8, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.9, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.10, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.11, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.thread.11, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.1, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.2, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.3, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.4, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.5, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.6, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.7, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.8, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.9, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.10, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.11
  %.us-phi = phi i64 [ 6, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.6 ], [ 0, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us ], [ 6, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.6 ], [ 1, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.1 ], [ 11, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.11 ], [ 2, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.2 ], [ 8, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.8 ], [ 3, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.3 ], [ 10, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.10 ], [ 4, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.4 ], [ 7, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.7 ], [ 5, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.5 ], [ 9, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.us.9 ], [ 12, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.thread.11 ], [ 0, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit ], [ 1, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.1 ], [ 11, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.11 ], [ 2, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.2 ], [ 8, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.8 ], [ 3, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.3 ], [ 10, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.10 ], [ 4, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.4 ], [ 7, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.7 ], [ 5, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.5 ], [ 9, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit.9 ]
  %i.av = getelementptr inbounds nuw [16 x i8], ptr @_ZN4gdcmL21TypeOfDataDescriptionE, i64 %.us-phi
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  ret ptr %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZNK4gdcm5Curve26GetDataValueRepresentationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i16, ptr %i.c, align 8, !tbaa !45
  ret i16 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm5Curve22GetCurveDataDescriptorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4gdcm5Curve7IsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = icmp eq ptr %i.d, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZN4gdcm5Curve6DecodeERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS1_13basic_ostreamIcS4_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 356, ptr noundef nonnull @.str.2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 411, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #27
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.k = load i16, ptr %i.j, align 8, !tbaa !69
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 114
  %i.n = load i16, ptr %i.m, align 2, !tbaa !73
  %i.o = zext i16 %i.n to i32
  %i.p = mul i32 %1, %i.o
  %i.q = add i32 %i.p, %i.l
  %i.r = uitofp i32 %i.q to double
  ret double %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4gdcm5Curve11GetAsPointsEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i16, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %switch156 = icmp ult i16 %i.d, 5
  br i1 %switch156, label %bb.d, label %_ZN4gdcm12getsizeofrepEt.exit

_ZN4gdcm12getsizeofrepEt.exit:                    ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 419, ptr noundef nonnull @.str.2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN4gdcm12getsizeofrepEt.exit
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.c:                                             ; preds = %_ZN4gdcm12getsizeofrepEt.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j                   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !40   ; 19 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i16, ptr %i.s, align 4, !tbaa !33   ; 26 uses
  %i.u = zext i16 %i.t to i64                     ; 23 uses
  br i1 %i.k, label %switch.lookup, label %switch.lookup325

switch.lookup:                                    ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !32   ; 4 uses
  %i.x = zext i16 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, %i.u
  %i.z = zext nneg i16 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4gdcm5Curve11GetAsPointsEPf.1, i64 %i.z
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.aa = mul nuw nsw i64 %i.y, %switch.ext
  %i.ab = icmp eq i64 %i.r, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.e

default.unreachable274:                           ; preds = %bb.aq
  unreachable

bb.e:                                             ; preds = %switch.lookup
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

switch.lookup325:                                 ; preds = %bb.d
  %i.ae = zext nneg i16 %i.d to i64
  %switch.gep326 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4gdcm5Curve11GetAsPointsEPf.1, i64 %i.ae
  %switch.load327 = load i8, ptr %switch.gep326, align 1
  %switch.ext328 = zext i8 %switch.load327 to i64
  %i.af = mul nuw nsw i64 %switch.ext328, %i.u
  %i.ag = icmp eq i64 %i.r, %i.af
  br i1 %i.ag, label %.thread, label %bb.h

bb.h:                                             ; preds = %switch.lookup325
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @.str.2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %switch.lookup
  %.off = add i16 %i.w, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.ai, label %bb.l

.thread:                                          ; preds = %switch.lookup325
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !32 ; 4 uses
  %.off149 = add i16 %i.ak, -1
  %switch150 = icmp ult i16 %.off149, 2
  br i1 %switch150, label %.thread151, label %bb.l

.thread151:                                       ; preds = %.thread
  %i.al = zext nneg i16 %i.ak to i32              ; 2 uses
  %i.am = ptrtoint ptr %i.j to i64
  %i.an = ptrtoint ptr %i.h to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = zext nneg i16 %i.ak to i64
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.r, label %bb.o

bb.l:                                             ; preds = %.thread, %bb.k
  %i.as = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @.str.2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.o:                                             ; preds = %.thread151
  %i.au = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @.str.2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.r:                                             ; preds = %.thread151
  %i.aw = icmp eq i64 %i.ao, 4
  br i1 %i.aw, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 437, ptr noundef nonnull @.str.2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.v:                                             ; preds = %bb.r
  %i.az = load i16, ptr %i.h, align 2, !tbaa !51  ; 2 uses
  %i.ba = icmp eq i16 %i.az, 0                    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !51 ; 2 uses
  br i1 %i.ba, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bd = icmp eq i16 %i.bc, 1
  br i1 %i.bd, label %bb.am, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 440, ptr noundef nonnull @.str.2)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.aa:                                            ; preds = %bb.v
  %i.bg = icmp eq i16 %i.bc, 0
  br i1 %i.bg, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bh = icmp eq i16 %i.az, 1
  br i1 %i.bh, label %bb.am, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @.str.2)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.af:                                            ; preds = %bb.aa
  %i.bk = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @.str.2)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ai:                                            ; preds = %bb.k
  %i.bm = zext nneg i16 %i.w to i32
  %i.bn = shl nuw nsw i64 %i.u, 1
  %i.bo = icmp samesign eq i64 %i.r, %i.bn
  br i1 %i.bo, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 457, ptr noundef nonnull @.str.2)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.am:                                            ; preds = %bb.ab, %bb.w
  %.ph152 = xor i1 %i.ba, true
  %i.br = zext i16 %i.t to i32
  %i.bs = mul nuw nsw i32 %i.br, %i.al
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = icmp samesign eq i64 %i.r, %i.bt
  br i1 %i.bu, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 461, ptr noundef nonnull @.str.2)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.aq:                                            ; preds = %bb.am, %bb.ai
  %i.bx = phi i1 [ %.ph152, %bb.am ], [ false, %bb.ai ]
  %i.by = phi i1 [ %i.ba, %bb.am ], [ false, %bb.ai ] ; 2 uses
  %i.bz = phi i16 [ %i.ak, %bb.am ], [ %i.w, %bb.ai ] ; 5 uses
  %i.ca = phi i32 [ %i.al, %bb.am ], [ %i.bm, %bb.ai ] ; 4 uses
  %.not201 = icmp eq i16 %i.t, 0                  ; 6 uses
  switch i16 %i.d, label %default.unreachable274 [
    i16 0, label %bb.ar
    i16 1, label %.preheader168
    i16 2, label %.preheader170
    i16 3, label %.preheader172
    i16 4, label %.preheader174
  ]

.preheader174:                                    ; preds = %bb.aq
  br i1 %.not201, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader174
  %i.cb = icmp samesign ugt i16 %i.bz, 1          ; 3 uses
  %i.cc = zext nneg i32 %i.ca to i64              ; 3 uses
  %wide.trip.count = zext i16 %i.t to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cd = icmp eq i16 %i.t, 1
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %bb.bp

.preheader172:                                    ; preds = %bb.aq
  br i1 %.not201, label %.loopexit, label %.lr.ph178

.lr.ph178:                                        ; preds = %.preheader172
  %i.ce = icmp samesign ugt i16 %i.bz, 1          ; 3 uses
  %i.cf = zext nneg i32 %i.ca to i64              ; 3 uses
  %xtraiter342 = and i64 %i.u, 1
  %i.cg = icmp eq i16 %i.t, 1
  br i1 %i.cg, label %.epil.preheader341, label %.lr.ph178.new

.lr.ph178.new:                                    ; preds = %.lr.ph178
  %unroll_iter345 = and i64 %i.u, 65534
  br label %bb.bk

.preheader170:                                    ; preds = %bb.aq
  br i1 %.not201, label %.loopexit, label %.lr.ph180

.lr.ph180:                                        ; preds = %.preheader170
  %i.ch = icmp samesign ugt i16 %i.bz, 1          ; 3 uses
  %i.ci = zext nneg i32 %i.ca to i64              ; 3 uses
  %xtraiter348 = and i64 %i.u, 1
  %i.cj = icmp eq i16 %i.t, 1
  br i1 %i.cj, label %.epil.preheader347, label %.lr.ph180.new

.lr.ph180.new:                                    ; preds = %.lr.ph180
  %unroll_iter351 = and i64 %i.u, 65534
  br label %bb.bf

.preheader168:                                    ; preds = %bb.aq
  br i1 %.not201, label %.loopexit, label %.lr.ph182

.lr.ph182:                                        ; preds = %.preheader168
  %i.ck = icmp samesign ugt i16 %i.bz, 1          ; 3 uses
  %i.cl = zext nneg i32 %i.ca to i64              ; 3 uses
  %xtraiter354 = and i64 %i.u, 1
  %i.cm = icmp eq i16 %i.t, 1
  br i1 %i.cm, label %.epil.preheader353, label %.lr.ph182.new

.lr.ph182.new:                                    ; preds = %.lr.ph182
  %unroll_iter357 = and i64 %i.u, 65534
  br label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.by, label %.preheader164, label %.preheader166

.preheader166:                                    ; preds = %bb.ar
  br i1 %.not201, label %.loopexit165, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %.preheader166
  %wide.trip.count234 = zext i16 %i.t to i64
  %min.iters.check = icmp ult i16 %i.t, 4
  br i1 %min.iters.check, label %.lr.ph184.preheader334, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.u, 65532                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index
  %wide.load = load <4 x i16>, ptr %i.cn, align 2, !tbaa !51
  %i.co = uitofp <4 x i16> %wide.load to <4 x float> ; 4 uses
  %i.cp = mul nuw nsw i64 %index, 12
  %i.cq = mul nuw i64 %index, 12
  %i.cr = mul nuw i64 %index, 12
  %i.cs = mul nuw i64 %index, 12
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 36
  %i.da = extractelement <4 x float> %i.co, i64 0
  store float %i.da, ptr %i.ct, align 4, !tbaa !116
  %i.db = extractelement <4 x float> %i.co, i64 1
  store float %i.db, ptr %i.cv, align 4, !tbaa !116
  %i.dc = extractelement <4 x float> %i.co, i64 2
  store float %i.dc, ptr %i.cx, align 4, !tbaa !116
  %i.dd = extractelement <4 x float> %i.co, i64 3
  store float %i.dd, ptr %i.cz, align 4, !tbaa !116
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br i1 %cmp.n, label %.loopexit165, label %.lr.ph184.preheader334

.lr.ph184.preheader334:                           ; preds = %.lr.ph184.preheader, %middle.block
  %indvars.iv231.ph = phi i64 [ 0, %.lr.ph184.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph184

.preheader164:                                    ; preds = %bb.ar
  br i1 %.not201, label %.loopexit165, label %.lr.ph186

.lr.ph186:                                        ; preds = %.preheader164
  br i1 %i.k, label %bb.as, label %.lr.ph186.split

.lr.ph186.split:                                  ; preds = %.lr.ph186
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 114
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !69
  %i.di = load i16, ptr %i.df, align 2, !tbaa !73
  %i.dj = zext i16 %i.di to i64                   ; 3 uses
  %i.dk = zext i16 %i.dh to i64                   ; 3 uses
  %xtraiter359 = and i64 %i.u, 1
  %i.dl = icmp eq i16 %i.t, 1
  br i1 %i.dl, label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit.epil.preheader, label %.lr.ph186.split.new

.lr.ph186.split.new:                              ; preds = %.lr.ph186.split
  %unroll_iter362 = and i64 %i.u, 65534
  br label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit

_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit: ; preds = %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit, %.lr.ph186.split.new
  %indvars.iv236 = phi i64 [ 0, %.lr.ph186.split.new ], [ %indvars.iv.next237.1, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit ] ; 4 uses
  %niter363 = phi i64 [ 0, %.lr.ph186.split.new ], [ %niter363.next.1, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit ]
  %i.dm = mul nuw nsw i64 %indvars.iv236, %i.dj
  %i.dn = add nuw nsw i64 %i.dm, %i.dk
  %i.do = trunc nuw i64 %i.dn to i32
  %i.dp = uitofp i32 %i.do to float
  %.idx279 = mul nuw nsw i64 %indvars.iv236, 12
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx279
  store float %i.dp, ptr %i.dq, align 4, !tbaa !116
  %indvars.iv.next237 = or disjoint i64 %indvars.iv236, 1 ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv.next237, %i.dj
  %i.ds = add nuw nsw i64 %i.dr, %i.dk
  %i.dt = trunc nuw i64 %i.ds to i32
  %i.du = uitofp i32 %i.dt to float
  %.idx279.1 = mul nuw nsw i64 %indvars.iv.next237, 12
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx279.1
  store float %i.du, ptr %i.dv, align 4, !tbaa !116
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv236, 2 ; 2 uses
  %niter363.next.1 = add i64 %niter363, 2         ; 2 uses
  %niter363.ncmp.1 = icmp eq i64 %niter363.next.1, %unroll_iter362
  br i1 %niter363.ncmp.1, label %.loopexit165.loopexit.unr-lcssa, label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit, !llvm.loop !99

bb.as:                                            ; preds = %.lr.ph186
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.dw, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 411, ptr noundef nonnull @.str.2)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.j, %bb.n, %bb.al, %bb.ap, %bb.ah, %bb.ae, %bb.z, %bb.u, %bb.q, %bb.ax, %bb.au
  %.sink294 = phi ptr [ %i.e, %bb.c ], [ %i.ac, %bb.g ], [ %i.ah, %bb.j ], [ %i.as, %bb.n ], [ %i.bp, %bb.al ], [ %i.bv, %bb.ap ], [ %i.bk, %bb.ah ], [ %i.bi, %bb.ae ], [ %i.be, %bb.z ], [ %i.ax, %bb.u ], [ %i.au, %bb.q ], [ %i.fm, %bb.ax ], [ %i.dw, %bb.au ]
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.ad, %bb.g ], [ %i.ai, %bb.j ], [ %i.at, %bb.n ], [ %i.bq, %bb.al ], [ %i.bw, %bb.ap ], [ %i.bl, %bb.ah ], [ %i.bj, %bb.ae ], [ %i.bf, %bb.z ], [ %i.ay, %bb.u ], [ %i.av, %bb.q ], [ %i.fn, %bb.ax ], [ %i.dx, %bb.au ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink294) #27
  resume { ptr, i32 } %common.resume.op

bb.au:                                            ; preds = %bb.as
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.ph184:                                        ; preds = %.lr.ph184.preheader334, %.lr.ph184
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %.lr.ph184 ], [ %indvars.iv231.ph, %.lr.ph184.preheader334 ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv231
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !51
  %i.ea = uitofp i16 %i.dz to float
  %.idx278 = mul nuw nsw i64 %indvars.iv231, 12
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx278
  store float %i.ea, ptr %i.eb, align 4, !tbaa !116
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %.loopexit165, label %.lr.ph184, !llvm.loop !100

.loopexit165.loopexit.unr-lcssa:                  ; preds = %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit
  %lcmp.mod360.not = icmp eq i64 %xtraiter359, 0
  br i1 %lcmp.mod360.not, label %.loopexit165, label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit.epil.preheader

_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit.epil.preheader: ; preds = %.loopexit165.loopexit.unr-lcssa, %.lr.ph186.split
  %indvars.iv236.epil.init = phi i64 [ 0, %.lr.ph186.split ], [ %indvars.iv.next237.1, %.loopexit165.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod361 = trunc i16 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod361)
  %i.ec = mul nuw nsw i64 %indvars.iv236.epil.init, %i.dj
  %i.ed = add nuw nsw i64 %i.ec, %i.dk
  %i.ee = trunc nuw i64 %i.ed to i32
  %i.ef = uitofp i32 %i.ee to float
  %.idx279.epil = mul nuw nsw i64 %indvars.iv236.epil.init, 12
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx279.epil
  store float %i.ef, ptr %i.eg, align 4, !tbaa !116
  br label %.loopexit165

.loopexit165:                                     ; preds = %.lr.ph184, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit.epil.preheader, %.loopexit165.loopexit.unr-lcssa, %middle.block, %.preheader166, %.preheader164
  br i1 %i.bx, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.loopexit165
  %.not205 = icmp eq i16 %i.t, 0
  br i1 %.not205, label %.loopexit, label %.lr.ph194

.lr.ph194:                                        ; preds = %.preheader
  br i1 %i.k, label %bb.av, label %.lr.ph194.split

.lr.ph194.split:                                  ; preds = %.lr.ph194
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 114
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ej = load i16, ptr %i.ei, align 8, !tbaa !69
  %i.ek = load i16, ptr %i.eh, align 2, !tbaa !73
  %i.el = zext i16 %i.ek to i64                   ; 5 uses
  %i.em = zext i16 %i.ej to i64                   ; 5 uses
  %xtraiter369 = and i64 %i.u, 3                  ; 3 uses
  %i.en = icmp ult i16 %i.t, 4
  br i1 %i.en, label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil.preheader, label %.lr.ph194.split.new

.lr.ph194.split.new:                              ; preds = %.lr.ph194.split
  %unroll_iter373 = and i64 %i.u, 65532
  br label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146

_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146: ; preds = %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146, %.lr.ph194.split.new
  %indvars.iv256 = phi i64 [ 0, %.lr.ph194.split.new ], [ %indvars.iv.next257.3, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146 ] ; 6 uses
  %niter374 = phi i64 [ 0, %.lr.ph194.split.new ], [ %niter374.next.3, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146 ]
  %i.eo = mul nuw nsw i64 %indvars.iv256, %i.el
  %i.ep = add nuw nsw i64 %i.eo, %i.em
  %i.eq = trunc nuw i64 %i.ep to i32
  %i.er = uitofp i32 %i.eq to float
  %.idx283 = mul nuw nsw i64 %indvars.iv256, 12
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %.idx283
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store float %i.er, ptr %i.et, align 4, !tbaa !116
  %indvars.iv.next257 = or disjoint i64 %indvars.iv256, 1 ; 2 uses
  %i.eu = mul nuw nsw i64 %indvars.iv.next257, %i.el
  %i.ev = add nuw nsw i64 %i.eu, %i.em
  %i.ew = trunc nuw i64 %i.ev to i32
  %i.ex = uitofp i32 %i.ew to float
  %.idx283.1 = mul nuw nsw i64 %indvars.iv.next257, 12
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %.idx283.1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store float %i.ex, ptr %i.ez, align 4, !tbaa !116
  %indvars.iv.next257.1 = or disjoint i64 %indvars.iv256, 2 ; 2 uses
  %i.fa = mul nuw nsw i64 %indvars.iv.next257.1, %i.el
  %i.fb = add nuw nsw i64 %i.fa, %i.em
  %i.fc = trunc nuw i64 %i.fb to i32
  %i.fd = uitofp i32 %i.fc to float
  %.idx283.2 = mul nuw nsw i64 %indvars.iv.next257.1, 12
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %.idx283.2
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store float %i.fd, ptr %i.ff, align 4, !tbaa !116
  %indvars.iv.next257.2 = or disjoint i64 %indvars.iv256, 3 ; 2 uses
  %i.fg = mul nuw nsw i64 %indvars.iv.next257.2, %i.el
  %i.fh = add nuw nsw i64 %i.fg, %i.em
  %i.fi = trunc nuw i64 %i.fh to i32
  %i.fj = uitofp i32 %i.fi to float
  %.idx283.3 = mul nuw nsw i64 %indvars.iv.next257.2, 12
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %.idx283.3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store float %i.fj, ptr %i.fl, align 4, !tbaa !116
  %indvars.iv.next257.3 = add nuw nsw i64 %indvars.iv256, 4 ; 2 uses
  %niter374.next.3 = add i64 %niter374, 4         ; 2 uses
  %niter374.ncmp.3 = icmp eq i64 %niter374.next.3, %unroll_iter373
  br i1 %niter374.ncmp.3, label %.lr.ph196.preheader.loopexit.unr-lcssa, label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146, !llvm.loop !101

bb.av:                                            ; preds = %.lr.ph194
  %i.fm = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.fm, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 411, ptr noundef nonnull @.str.2)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #28
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ay:                                            ; preds = %.loopexit165
  %i.fo = icmp eq i16 %i.bz, 2                    ; 2 uses
  %or.cond = and i1 %i.k, %i.fo
  br i1 %or.cond, label %.preheader158, label %bb.az

.preheader158:                                    ; preds = %bb.ay
  %.not204 = icmp eq i16 %i.t, 0
  br i1 %.not204, label %.loopexit, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %.preheader158
  %wide.trip.count254 = zext i16 %i.t to i64
  %min.iters.check315 = icmp ult i16 %i.t, 4
  br i1 %min.iters.check315, label %.lr.ph192.preheader329, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph192.preheader
  %n.vec317 = and i64 %i.u, 65532                 ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next321, %vector.body318 ] ; 6 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index319
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %wide.load320 = load <4 x i16>, ptr %i.fq, align 2, !tbaa !51
  %i.fr = uitofp <4 x i16> %wide.load320 to <4 x float> ; 4 uses
  %i.fs = mul nuw nsw i64 %index319, 12
  %i.ft = mul nuw i64 %index319, 12
  %i.fu = mul nuw i64 %index319, 12
  %i.fv = mul nuw i64 %index319, 12
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 %i.ft
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 28
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.ge = extractelement <4 x float> %i.fr, i64 0
  store float %i.ge, ptr %i.ga, align 4, !tbaa !116
  %i.gf = extractelement <4 x float> %i.fr, i64 1
  store float %i.gf, ptr %i.gb, align 4, !tbaa !116
  %i.gg = extractelement <4 x float> %i.fr, i64 2
  store float %i.gg, ptr %i.gc, align 4, !tbaa !116
  %i.gh = extractelement <4 x float> %i.fr, i64 3
  store float %i.gh, ptr %i.gd, align 4, !tbaa !116
  %index.next321 = add nuw i64 %index319, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next321, %n.vec317
  br i1 %i.gi, label %middle.block322, label %vector.body318, !llvm.loop !102

middle.block322:                                  ; preds = %vector.body318
  %cmp.n323 = icmp eq i64 %n.vec317, %i.u
  br i1 %cmp.n323, label %.lr.ph196.preheader, label %.lr.ph192.preheader329

.lr.ph192.preheader329:                           ; preds = %.lr.ph192.preheader, %middle.block322
  %indvars.iv251.ph = phi i64 [ 0, %.lr.ph192.preheader ], [ %n.vec317, %middle.block322 ]
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192.preheader329, %.lr.ph192
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.lr.ph192 ], [ %indvars.iv251.ph, %.lr.ph192.preheader329 ] ; 2 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 3 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next252
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !51
  %i.gl = uitofp i16 %i.gk to float
  %.idx282 = mul nuw nsw i64 %indvars.iv251, 12
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 %.idx282
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store float %i.gl, ptr %i.gn, align 4, !tbaa !116
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %.lr.ph196.preheader, label %.lr.ph192, !llvm.loop !103

bb.az:                                            ; preds = %bb.ay
  %or.cond3 = and i1 %i.by, %i.fo
  %.not203 = icmp eq i16 %i.t, 0                  ; 2 uses
  br i1 %or.cond3, label %.preheader160, label %.preheader162

.preheader162:                                    ; preds = %bb.az
  br i1 %.not203, label %.loopexit, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %.preheader162
  %xtraiter364 = and i64 %i.u, 7                  ; 3 uses
  %i.go = icmp ult i16 %i.t, 8
  br i1 %i.go, label %.lr.ph188.epil.preheader, label %.lr.ph188.preheader.new

.lr.ph188.preheader.new:                          ; preds = %.lr.ph188.preheader
  %unroll_iter367 = and i64 %i.u, 65528
  br label %.lr.ph188

.preheader160:                                    ; preds = %bb.az
  br i1 %.not203, label %.loopexit, label %.lr.ph190.preheader

.lr.ph190.preheader:                              ; preds = %.preheader160
  %wide.trip.count249 = zext i16 %i.t to i64
  %min.iters.check304 = icmp ult i16 %i.t, 4
  br i1 %min.iters.check304, label %.lr.ph190.preheader331, label %vector.ph305

vector.ph305:                                     ; preds = %.lr.ph190.preheader
  %n.vec306 = and i64 %i.u, 65532                 ; 3 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next310, %vector.body307 ] ; 6 uses
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index308
  %wide.load309 = load <4 x i16>, ptr %i.gp, align 2, !tbaa !51
  %i.gq = uitofp <4 x i16> %wide.load309 to <4 x float> ; 4 uses
  %i.gr = mul nuw nsw i64 %index308, 12
  %i.gs = mul nuw i64 %index308, 12
  %i.gt = mul nuw i64 %index308, 12
  %i.gu = mul nuw i64 %index308, 12
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 %i.gr
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 %i.gs
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gu
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 28
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hd = extractelement <4 x float> %i.gq, i64 0
  store float %i.hd, ptr %i.gz, align 4, !tbaa !116
  %i.he = extractelement <4 x float> %i.gq, i64 1
  store float %i.he, ptr %i.ha, align 4, !tbaa !116
  %i.hf = extractelement <4 x float> %i.gq, i64 2
  store float %i.hf, ptr %i.hb, align 4, !tbaa !116
  %i.hg = extractelement <4 x float> %i.gq, i64 3
  store float %i.hg, ptr %i.hc, align 4, !tbaa !116
  %index.next310 = add nuw i64 %index308, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next310, %n.vec306
  br i1 %i.hh, label %middle.block311, label %vector.body307, !llvm.loop !104

middle.block311:                                  ; preds = %vector.body307
  %cmp.n312 = icmp eq i64 %n.vec306, %i.u
  br i1 %cmp.n312, label %.lr.ph196.preheader, label %.lr.ph190.preheader331

.lr.ph190.preheader331:                           ; preds = %.lr.ph190.preheader, %middle.block311
  %indvars.iv246.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec306, %middle.block311 ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader331, %.lr.ph190
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %.lr.ph190 ], [ %indvars.iv246.ph, %.lr.ph190.preheader331 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv246
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !51
  %i.hk = uitofp i16 %i.hj to float
  %.idx281 = mul nuw nsw i64 %indvars.iv246, 12
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 %.idx281
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  store float %i.hk, ptr %i.hm, align 4, !tbaa !116
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %.lr.ph196.preheader, label %.lr.ph190, !llvm.loop !105

.lr.ph188:                                        ; preds = %.lr.ph188, %.lr.ph188.preheader.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph188.preheader.new ], [ %indvars.iv.next242.7, %.lr.ph188 ] ; 9 uses
  %niter368 = phi i64 [ 0, %.lr.ph188.preheader.new ], [ %niter368.next.7, %.lr.ph188 ]
  %.idx280 = mul nuw nsw i64 %indvars.iv241, 12
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 %.idx280
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store float 0.000000e+00, ptr %i.ho, align 4, !tbaa !116
  %i.hp = mul nuw i64 %indvars.iv241, 12
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store float 0.000000e+00, ptr %i.hr, align 4, !tbaa !116
  %i.hs = mul nuw i64 %indvars.iv241, 12
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  store float 0.000000e+00, ptr %i.hu, align 4, !tbaa !116
  %i.hv = mul nuw i64 %indvars.iv241, 12
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 40
  store float 0.000000e+00, ptr %i.hx, align 4, !tbaa !116
  %i.hy = mul nuw i64 %indvars.iv241, 12
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 52
  store float 0.000000e+00, ptr %i.ia, align 4, !tbaa !116
  %i.ib = mul nuw i64 %indvars.iv241, 12
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  store float 0.000000e+00, ptr %i.id, align 4, !tbaa !116
  %i.ie = mul nuw i64 %indvars.iv241, 12
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 76
  store float 0.000000e+00, ptr %i.ig, align 4, !tbaa !116
  %i.ih = mul nuw i64 %indvars.iv241, 12
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 88
  store float 0.000000e+00, ptr %i.ij, align 4, !tbaa !116
  %indvars.iv.next242.7 = add nuw nsw i64 %indvars.iv241, 8 ; 2 uses
  %niter368.next.7 = add i64 %niter368, 8         ; 2 uses
  %niter368.ncmp.7 = icmp eq i64 %niter368.next.7, %unroll_iter367
  br i1 %niter368.ncmp.7, label %.lr.ph196.preheader.loopexit333.unr-lcssa, label %.lr.ph188, !llvm.loop !106

.lr.ph196.preheader.loopexit.unr-lcssa:           ; preds = %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146
  %lcmp.mod371.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod371.not, label %.lr.ph196.preheader, label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil.preheader

_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil.preheader: ; preds = %.lr.ph196.preheader.loopexit.unr-lcssa, %.lr.ph194.split
  %indvars.iv256.epil.init = phi i64 [ 0, %.lr.ph194.split ], [ %indvars.iv.next257.3, %.lr.ph196.preheader.loopexit.unr-lcssa ]
  %lcmp.mod372 = icmp ne i64 %xtraiter369, 0
  tail call void @llvm.assume(i1 %lcmp.mod372)
  br label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil

_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil: ; preds = %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil.preheader
  %indvars.iv256.epil = phi i64 [ %indvars.iv256.epil.init, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil.preheader ], [ %indvars.iv.next257.epil, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil ] ; 3 uses
  %epil.iter370 = phi i64 [ 0, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil.preheader ], [ %epil.iter370.next, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil ]
  %i.ik = mul nuw nsw i64 %indvars.iv256.epil, %i.el
  %i.il = add nuw nsw i64 %i.ik, %i.em
  %i.im = trunc nuw i64 %i.il to i32
  %i.in = uitofp i32 %i.im to float
  %.idx283.epil = mul nuw nsw i64 %indvars.iv256.epil, 12
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %.idx283.epil
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store float %i.in, ptr %i.ip, align 4, !tbaa !116
  %indvars.iv.next257.epil = add nuw nsw i64 %indvars.iv256.epil, 1
  %epil.iter370.next = add i64 %epil.iter370, 1   ; 2 uses
  %epil.iter370.cmp.not = icmp eq i64 %epil.iter370.next, %xtraiter369
  br i1 %epil.iter370.cmp.not, label %.lr.ph196.preheader, label %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil, !llvm.loop !107

.lr.ph196.preheader.loopexit333.unr-lcssa:        ; preds = %.lr.ph188
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph196.preheader, label %.lr.ph188.epil.preheader

.lr.ph188.epil.preheader:                         ; preds = %.lr.ph196.preheader.loopexit333.unr-lcssa, %.lr.ph188.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph188.preheader ], [ %indvars.iv.next242.7, %.lr.ph196.preheader.loopexit333.unr-lcssa ]
  %lcmp.mod366 = icmp ne i64 %xtraiter364, 0
  tail call void @llvm.assume(i1 %lcmp.mod366)
  br label %.lr.ph188.epil

.lr.ph188.epil:                                   ; preds = %.lr.ph188.epil, %.lr.ph188.epil.preheader
  %indvars.iv241.epil = phi i64 [ %indvars.iv241.epil.init, %.lr.ph188.epil.preheader ], [ %indvars.iv.next242.epil, %.lr.ph188.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph188.epil.preheader ], [ %epil.iter.next, %.lr.ph188.epil ]
  %.idx280.epil = mul nuw nsw i64 %indvars.iv241.epil, 12
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 %.idx280.epil
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store float 0.000000e+00, ptr %i.ir, align 4, !tbaa !116
  %indvars.iv.next242.epil = add nuw nsw i64 %indvars.iv241.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter364
  br i1 %epil.iter.cmp.not, label %.lr.ph196.preheader, label %.lr.ph188.epil, !llvm.loop !108

.lr.ph196.preheader:                              ; preds = %.lr.ph196.preheader.loopexit333.unr-lcssa, %.lr.ph188.epil, %.lr.ph190, %.lr.ph192, %.lr.ph196.preheader.loopexit.unr-lcssa, %_ZNK4gdcm5Curve28ComputeValueFromStartAndStepEj.exit146.epil, %middle.block311, %middle.block322
  %xtraiter375 = and i64 %i.u, 7                  ; 3 uses
  %i.is = add i16 %i.t, -1
  %i.it = icmp ult i16 %i.is, 7
  br i1 %i.it, label %.lr.ph196.epil.preheader, label %.lr.ph196.preheader.new

.lr.ph196.preheader.new:                          ; preds = %.lr.ph196.preheader
  %unroll_iter379 = and i64 %i.u, 65528
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %.lr.ph196, %.lr.ph196.preheader.new
  %indvars.iv261 = phi i64 [ 0, %.lr.ph196.preheader.new ], [ %indvars.iv.next262.7, %.lr.ph196 ] ; 9 uses
  %niter380 = phi i64 [ 0, %.lr.ph196.preheader.new ], [ %niter380.next.7, %.lr.ph196 ]
  %.idx284 = mul nuw nsw i64 %indvars.iv261, 12
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 %.idx284
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store float 0.000000e+00, ptr %i.iv, align 4, !tbaa !116
  %i.iw = mul nuw i64 %indvars.iv261, 12
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 20
  store float 0.000000e+00, ptr %i.iy, align 4, !tbaa !116
  %i.iz = mul nuw i64 %indvars.iv261, 12
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store float 0.000000e+00, ptr %i.jb, align 4, !tbaa !116
  %i.jc = mul nuw i64 %indvars.iv261, 12
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 44
  store float 0.000000e+00, ptr %i.je, align 4, !tbaa !116
  %i.jf = mul nuw i64 %indvars.iv261, 12
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  store float 0.000000e+00, ptr %i.jh, align 4, !tbaa !116
  %i.ji = mul nuw i64 %indvars.iv261, 12
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 68
  store float 0.000000e+00, ptr %i.jk, align 4, !tbaa !116
  %i.jl = mul nuw i64 %indvars.iv261, 12
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 80
  store float 0.000000e+00, ptr %i.jn, align 4, !tbaa !116
  %i.jo = mul nuw i64 %indvars.iv261, 12
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 92
  store float 0.000000e+00, ptr %i.jq, align 4, !tbaa !116
  %indvars.iv.next262.7 = add nuw nsw i64 %indvars.iv261, 8 ; 2 uses
  %niter380.next.7 = add i64 %niter380, 8         ; 2 uses
  %niter380.ncmp.7 = icmp eq i64 %niter380.next.7, %unroll_iter379
  br i1 %niter380.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph196, !llvm.loop !109

bb.ba:                                            ; preds = %bb.be, %.lr.ph182.new
  %indvars.iv226 = phi i64 [ 0, %.lr.ph182.new ], [ %indvars.iv.next227.1, %bb.be ] ; 4 uses
  %niter358 = phi i64 [ 0, %.lr.ph182.new ], [ %niter358.next.1, %bb.be ]
  %i.jr = mul nuw nsw i64 %indvars.iv226, %i.cl
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.jr ; 2 uses
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !51
  %i.ju = sitofp i16 %i.jt to float
  %.idx277 = mul nuw nsw i64 %indvars.iv226, 12
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx277 ; 3 uses
  store float %i.ju, ptr %i.jv, align 4, !tbaa !116
  br i1 %i.ck, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !51
  %i.jy = sitofp i16 %i.jx to float
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.sink = phi float [ %i.jy, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store float %.sink, ptr %i.jz, align 4, !tbaa !116
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store float 0.000000e+00, ptr %i.ka, align 4, !tbaa !116
  %indvars.iv.next227 = or disjoint i64 %indvars.iv226, 1 ; 2 uses
  %i.kb = mul nuw nsw i64 %indvars.iv.next227, %i.cl
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.kb ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !51
  %i.ke = sitofp i16 %i.kd to float
  %.idx277.1 = mul nuw nsw i64 %indvars.iv.next227, 12
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 %.idx277.1 ; 3 uses
  store float %i.ke, ptr %i.kf, align 4, !tbaa !116
  br i1 %i.ck, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !51
  %i.ki = sitofp i16 %i.kh to float
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink.1 = phi float [ %i.ki, %bb.bd ], [ 0.000000e+00, %bb.bc ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store float %.sink.1, ptr %i.kj, align 4, !tbaa !116
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store float 0.000000e+00, ptr %i.kk, align 4, !tbaa !116
  %indvars.iv.next227.1 = add nuw nsw i64 %indvars.iv226, 2 ; 2 uses
  %niter358.next.1 = add i64 %niter358, 2         ; 2 uses
  %niter358.ncmp.1 = icmp eq i64 %niter358.next.1, %unroll_iter357
  br i1 %niter358.ncmp.1, label %.loopexit.loopexit336.unr-lcssa, label %bb.ba, !llvm.loop !110

bb.bf:                                            ; preds = %bb.bj, %.lr.ph180.new
  %indvars.iv221 = phi i64 [ 0, %.lr.ph180.new ], [ %indvars.iv.next222.1, %bb.bj ] ; 4 uses
  %niter352 = phi i64 [ 0, %.lr.ph180.new ], [ %niter352.next.1, %bb.bj ]
  %i.kl = mul nuw nsw i64 %indvars.iv221, %i.ci
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.kl ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !116
  %.idx276 = mul nuw nsw i64 %indvars.iv221, 12
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 %.idx276 ; 3 uses
  store float %i.kn, ptr %i.ko, align 4, !tbaa !116
  br i1 %i.ch, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !116
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.sink266 = phi float [ %i.kq, %bb.bg ], [ 0.000000e+00, %bb.bf ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  store float %.sink266, ptr %i.kr, align 4, !tbaa !116
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store float 0.000000e+00, ptr %i.ks, align 4, !tbaa !116
  %indvars.iv.next222 = or disjoint i64 %indvars.iv221, 1 ; 2 uses
  %i.kt = mul nuw nsw i64 %indvars.iv.next222, %i.ci
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.kt ; 2 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !116
  %.idx276.1 = mul nuw nsw i64 %indvars.iv.next222, 12
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx276.1 ; 3 uses
  store float %i.kv, ptr %i.kw, align 4, !tbaa !116
  br i1 %i.ch, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !116
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink266.1 = phi float [ %i.ky, %bb.bi ], [ 0.000000e+00, %bb.bh ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store float %.sink266.1, ptr %i.kz, align 4, !tbaa !116
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store float 0.000000e+00, ptr %i.la, align 4, !tbaa !116
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %niter352.next.1 = add i64 %niter352, 2         ; 2 uses
  %niter352.ncmp.1 = icmp eq i64 %niter352.next.1, %unroll_iter351
  br i1 %niter352.ncmp.1, label %.loopexit.loopexit337.unr-lcssa, label %bb.bf, !llvm.loop !111

bb.bk:                                            ; preds = %bb.bo, %.lr.ph178.new
  %indvars.iv216 = phi i64 [ 0, %.lr.ph178.new ], [ %indvars.iv.next217.1, %bb.bo ] ; 4 uses
  %niter346 = phi i64 [ 0, %.lr.ph178.new ], [ %niter346.next.1, %bb.bo ]
  %i.lb = mul nuw nsw i64 %indvars.iv216, %i.cf
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.lb ; 2 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !118
  %i.le = fptrunc double %i.ld to float
  %.idx275 = mul nuw nsw i64 %indvars.iv216, 12
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 %.idx275 ; 3 uses
  store float %i.le, ptr %i.lf, align 4, !tbaa !116
  br i1 %i.ce, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !118
  %i.li = fptrunc double %i.lh to float
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.sink267 = phi float [ %i.li, %bb.bl ], [ 0.000000e+00, %bb.bk ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store float %.sink267, ptr %i.lj, align 4, !tbaa !116
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store float 0.000000e+00, ptr %i.lk, align 4, !tbaa !116
  %indvars.iv.next217 = or disjoint i64 %indvars.iv216, 1 ; 2 uses
  %i.ll = mul nuw nsw i64 %indvars.iv.next217, %i.cf
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ll ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !118
  %i.lo = fptrunc double %i.ln to float
  %.idx275.1 = mul nuw nsw i64 %indvars.iv.next217, 12
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx275.1 ; 3 uses
  store float %i.lo, ptr %i.lp, align 4, !tbaa !116
  br i1 %i.ce, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !118
  %i.ls = fptrunc double %i.lr to float
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sink267.1 = phi float [ %i.ls, %bb.bn ], [ 0.000000e+00, %bb.bm ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  store float %.sink267.1, ptr %i.lt, align 4, !tbaa !116
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store float 0.000000e+00, ptr %i.lu, align 4, !tbaa !116
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %niter346.next.1 = add i64 %niter346, 2         ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %.loopexit.loopexit338.unr-lcssa, label %bb.bk, !llvm.loop !112

bb.bp:                                            ; preds = %bb.bt, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.bt ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.bt ]
  %i.lv = mul nuw nsw i64 %indvars.iv, %i.cc
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.lv ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !80
  %i.ly = sitofp i32 %i.lx to float
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
end_hunk_0
