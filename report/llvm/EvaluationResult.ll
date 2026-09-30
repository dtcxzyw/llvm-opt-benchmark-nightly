Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EvaluationResult?download=true
inline.NumInlined: 1054
inline.NumDeleted: 696
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang6interp16EvaluationResult23checkDynamicAllocationsERNS0_11InterpStateERKNS0_7ContextERKNS0_7PointerENS0_10SourceInfoE:bb.a
  %i.bw = zext i8 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bw
  store i64 %i.bn, ptr %i.bx, align 8, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bz = zext i8 %i.bv to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  store i8 2, ptr %i.ca, align 1, !tbaa !20
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i8, ptr %i.cb, align 8, !tbaa !93  ; 2 uses
  %i.ce = add i8 %i.cd, 1
  store i8 %i.ce, ptr %i.cb, align 8, !tbaa !93
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf
  store i64 %i.av, ptr %i.cg, align 8, !tbaa !76
  br label %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31

_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31: ; preds = %_ZNK5clang6interp7Pointer14isArrayElementEv.exit, %_ZNK5clang17PartialDiagnosticlsIbEERKS0_RKT_.exit.i29
  %i.ch = load ptr, ptr %i.t, align 8, !tbaa !21
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ch, align 8
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i, -3
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #15
  %i.cl = call ptr @_ZN5clang6interp5State4NoteENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(34) %1, i32 %i.ck, i32 noundef 2417) #16 ; 0 uses
  %.pre46 = load ptr, ptr %i.d, align 8, !tbaa !48
  br label %.critedge25

.critedge25:                                      ; preds = %bb.c, %bb.b, %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31
  %i.cm = phi ptr [ %.pre46, %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31 ], [ %i.o, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.not40 = phi i1 [ false, %_ZN5clang18OptionalDiagnosticlsIbEERS0_RKT_.exit31 ], [ true, %bb.b ], [ true, %bb.c ]
  %i.cn = icmp eq ptr %i.cm, %i.e
  br i1 %i.cn, label %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %.critedge25
  call void @free(ptr noundef %i.cm) #16
  br label %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i: ; preds = %bb.k, %.critedge25
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !108 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i
  %i.cr = load ptr, ptr %5, align 8, !tbaa !109
  %i.cs = zext i32 %i.cp to i64                   ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = add nuw nsw i64 %i.cs, 31
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = and i64 %i.cv, 1073741820
  %i.cx = add nuw nsw i64 %i.cw, %i.ct
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cr, i64 noundef %i.cx, i64 noundef 8) #16
  br label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit

_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKN5clang6interp5BlockELj0EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit
  %.4 = phi i1 [ %.not40, %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef byval(%"struct.clang::interp::PtrView") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %3 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %4 = alloca %"class.clang::interp::Pointer", align 8 ; 8 uses
  %5 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %6 = alloca %"class.clang::interp::Pointer", align 8 ; 10 uses
  %7 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %8 = alloca %"struct.clang::interp::PtrView", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView6isLiveEv.exit

_ZNK5clang6interp7PtrView6isLiveEv.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !19
  %i.d = and i8 %i.c, 10
  %or.cond = icmp eq i8 %i.d, 0
  br i1 %or.cond, label %bb.b, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.b:                                             ; preds = %_ZNK5clang6interp7PtrView6isLiveEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !39   ; 4 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31
  %i.j = icmp eq i32 %i.f, %i.i
  br i1 %i.j, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !101
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread: ; preds = %bb.b
  %i.n = zext i32 %i.f to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104
  %i.y = zext i32 %i.x to i64
  %i.z = icmp ugt i64 %i.v, %i.y
  br i1 %i.z, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.i

_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !104
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.i:       ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !101
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = zext i32 %i.f to i64                    ; 3 uses
  %.not.i.i = icmp eq i64 %i.v, %i.aj
  br i1 %.not.i.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i: ; preds = %_ZNK5clang6interp7PtrView18isUnknownSizeArrayEv.exit.i.thread
  %i.ak = zext i32 %i.f to i64                    ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !101
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not.i5.i = icmp eq i64 %i.ab, %i.ak
  br i1 %.not.i5.i, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i: ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i
  %i.ar = phi i64 [ %i.v, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ab, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.as = phi i64 [ %i.ai, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.aq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.at = phi i64 [ %i.aj, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ak, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.i.i3.i = phi ptr [ %i.g, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.an, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !103
  %.not1.i.i = icmp eq ptr %i.av, null
  %..i.i = select i1 %.not1.i.i, i64 -8, i64 -16
  br label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit:   ; preds = %_ZNK5clang6interp7PtrView7getSizeEv.exit.i, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i
  %i.aw = phi i64 [ %i.ar, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.v, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ab, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.ax = phi i64 [ %i.at, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.aj, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.ak, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.ay = phi i64 [ %i.as, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ %i.ai, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ %i.aq, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %.0.neg.i.i = phi i64 [ %..i.i, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.i.i ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.i ], [ 0, %_ZNK5clang6interp7PtrView7getSizeEv.exit.thread.i ]
  %i.az = sub nsw i64 %i.aw, %i.ax
  %i.ba = add nsw i64 %i.az, %.0.neg.i.i
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = icmp eq i64 %i.ay, %i.bb
  br i1 %i.bc, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107

_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit
  %i.bd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang6interp5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %0), !noalias !207
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.bd, 1
  %i.be = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.be, label %bb.c, label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit

bb.c:                                             ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !49 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !98
  %.not.i.i58 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i58, label %bb.e, label %bb.d, !prof !99

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang6interp5BlockELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef %i.bg)
  br label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.bg, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !49
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !49
  br label %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit

_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit: ; preds = %_ZNK5clang6interp7PtrView12isOnePastEndEv.exit.thread107, %bb.d, %bb.e
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !31
  %i.bv = icmp eq i32 %i.bq, %i.bu                ; 2 uses
  br i1 %i.bv, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit

_ZNK5clang6interp7PtrView12getFieldDescEv.exit:   ; preds = %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit
  %i.bw = zext i32 %i.bq to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread

_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread: ; preds = %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit
  %.0.i59111 = phi ptr [ %i.bz, %_ZNK5clang6interp7PtrView12getFieldDescEv.exit ], [ %i.bs, %_ZN4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE6insertERKS5_.exit ] ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !35 ; 6 uses
  %.not50 = icmp eq ptr %i.cb, null
  br i1 %.not50, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 562
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !110, !range !71, !noundef !72
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.g, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !49 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %.idx = shl nuw nsw i64 %i.cj, 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx
  %.not51126 = icmp eq i32 %i.ci, 0
  br i1 %.not51126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.h

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 280
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 288
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !49 ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %.idx132 = mul nuw nsw i64 %i.cq, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx132
  %.not52128 = icmp eq i32 %i.cp, 0
  br i1 %.not52128, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %.lr.ph131

.lr.ph131:                                        ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %.046127 = phi ptr [ %i.cg, %.lr.ph ], [ %i.df, %bb.j ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.046127, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !100
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 562
  %i.cw = load i8, ptr %i.cv, align 2, !tbaa !110, !range !71, !noundef !72
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %.046127, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !95
  %i.da = load i64, ptr %i.cl, align 8, !tbaa !41, !noalias !208
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.cz, %i.db                    ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !38, !noalias !208
  %i.de = zext i32 %i.dc to i64
  store ptr %i.dd, ptr %2, align 8, !tbaa !74
  store i32 %i.dc, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !75
  store i64 %i.de, ptr %.sroa.5101.0..sroa_idx, align 8, !tbaa !76
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %.046127, i64 32 ; 2 uses
  %.not51 = icmp eq ptr %i.df, %i.ck
  br i1 %.not51, label %._crit_edge, label %bb.h

bb.k:                                             ; preds = %.lr.ph131, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread
  %.045129 = phi ptr [ %i.cn, %.lr.ph131 ], [ %i.ee, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.045129, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !209 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 53
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !73, !range !71, !noundef !72
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8            ; 3 uses
  %.not.i.i62 = icmp ne ptr %i.dm, null
  %or.cond.not.i.i = select i1 %i.dk, i1 true, i1 %.not.i.i62
  br i1 %or.cond.not.i.i, label %bb.l, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i: ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !111 ; 2 uses
  %.not11.i = icmp eq i8 %i.do, -1
  br i1 %.not11.i, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not.i7.i = icmp eq ptr %i.dq, null
  %i.dr = select i1 %i.dk, i1 %.not.i7.i, i1 false
  br i1 %i.dr, label %._crit_edge.i, label %bb.n

._crit_edge.i:                                    ; preds = %bb.l
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !111
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i
  %i.ds = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.do, %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i ]
  %i.dt = icmp eq i8 %i.ds, 13
  br i1 %i.dt, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread113, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not.i63 = icmp eq ptr %i.dm, null
  br i1 %.not.i63, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit

_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit: ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 562
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !110, !range !71, !noundef !72
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread113, label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread

_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread113: ; preds = %bb.m, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.045129, i64 16
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !52
  %i.dz = load i64, ptr %i.cs, align 8, !tbaa !41, !noalias !210
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = add i32 %i.dy, %i.ea                    ; 2 uses
  %i.ec = load ptr, ptr %0, align 8, !tbaa !38, !noalias !210
  %i.ed = zext i32 %i.eb to i64
  store ptr %i.ec, ptr %3, align 8, !tbaa !74
  store i32 %i.eb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !75
  store i64 %i.ed, ptr %.sroa.595.0..sroa_idx, align 8, !tbaa !76
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread

_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread: ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit.i, %bb.n, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit, %_ZN5clang6interpL10isOrHasPtrEPKNS0_10DescriptorE.exit.thread113
  %i.ee = getelementptr inbounds nuw i8, ptr %.045129, i64 24 ; 2 uses
  %.not52 = icmp eq ptr %i.ee, %i.cr
  br i1 %.not52, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %bb.k

.critedge:                                        ; preds = %_ZNK5clang6interp7PtrView12getFieldDescEv.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 53
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !73, !range !71, !noundef !72
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.t, label %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit

_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit: ; preds = %.critedge
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 48
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !111
  %cond = icmp eq i8 %i.ej, 13
  br i1 %cond, label %bb.o, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.o:                                             ; preds = %_ZNK5clang6interp10Descriptor11isPrimitiveEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %.pre = zext i32 %i.bq to i64                   ; 3 uses
  br i1 %i.bv, label %_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %i.br, i64 %.pre
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit

_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i.i = phi ptr [ %i.em, %bb.p ], [ %i.bs, %bb.o ]
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 53
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !73, !range !71, !noundef !72
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp eq i64 %i.er, %.pre
  %9 = select i1 %i.ep, i1 %i.es, i1 false
  %10 = getelementptr inbounds nuw i8, ptr %i.br, i64 %.pre
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.et = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  %.0.i66 = select i1 %9, ptr %11, ptr %i.eu
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %.0.i66) #16
  %i.ev = call fastcc noundef zeroext i1 @"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE"(ptr noundef nonnull align 8 dereferenceable(48) %4)
  br i1 %i.ev, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !20
  %i.ey = call noundef zeroext i1 @_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.ex)
  br i1 %i.ey, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !20, !noalias !211
  store ptr %i.ez, ptr %5, align 8, !tbaa !38, !alias.scope !211
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !20, !noalias !211
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !39, !alias.scope !211
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fe = load i64, ptr %4, align 8, !tbaa !40, !noalias !211
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !41, !alias.scope !211
  call fastcc void @_ZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEE(ptr noundef nonnull byval(%"struct.clang::interp::PtrView") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %_ZNK5clang6interp7PtrView5derefINS0_7PointerEEERT_v.exit
  call void @_ZN5clang6interp7PointerD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

bb.t:                                             ; preds = %.critedge
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %.not.i66 = icmp eq ptr %i.fg, null
  br i1 %.not.i66, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 48
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !111
  %i.fj = icmp eq i8 %i.fi, 13
  br i1 %i.fj, label %.preheader, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread

.preheader:                                       ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 20
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i59111, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.v

bb.v:                                             ; preds = %.preheader, %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit
  %.044 = phi i32 [ %i.iz, %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit ], [ 0, %.preheader ] ; 3 uses
  %i.ft = load i32, ptr %i.fk, align 4, !tbaa !101 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, -1
  br i1 %i.fu, label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fv = load i32, ptr %i.fl, align 8, !tbaa !102
  %i.fw = udiv i32 %i.ft, %i.fv
  br label %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit

_ZNK5clang6interp10Descriptor11getNumElemsEv.exit: ; preds = %bb.v, %bb.w
  %i.fx = phi i32 [ %i.fw, %bb.w ], [ 0, %bb.v ]
  %.not54 = icmp eq i32 %.044, %i.fx
  br i1 %.not54, label %_ZNK5clang6interp7PtrView6isLiveEv.exit.thread, label %bb.x

bb.x:                                             ; preds = %_ZNK5clang6interp10Descriptor11getNumElemsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.fy = load i32, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  %i.fz = load ptr, ptr %0, align 8, !tbaa !38    ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !31
  %i.gd = icmp eq i32 %i.fy, %i.gc
  br i1 %i.gd, label %_ZNK5clang6interp7PtrView4elemINS0_7PointerEEERT_j.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ge = zext i32 %i.fy to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !34
  br label %_ZNK5clang6interp7PtrView4elemINS0_7PointerEEERT_j.exit

_ZNK5clang6interp7PtrView4elemINS0_7PointerEEERT_j.exit: ; preds = %bb.x, %bb.y
  %.0.i.i67 = phi ptr [ %i.gh, %bb.y ], [ %i.ga, %bb.x ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 16
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !102
  %i.gk = mul i32 %i.gj, %.044
  %i.gl = add i32 %i.fy, 8
  %i.gm = add i32 %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.go = zext i32 %i.gm to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  call void @_ZN5clang6interp7PointerC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.gp) #16
  %i.gq = load i32, ptr %i.fm, align 8, !tbaa !12
  %i.gr = icmp eq i32 %i.gq, 1
  br i1 %i.gr, label %bb.z, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit

bb.z:                                             ; preds = %_ZNK5clang6interp7PtrView4elemINS0_7PointerEEERT_j.exit
  %i.gs = load ptr, ptr %i.fn, align 8, !tbaa !20, !noalias !212 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %_ZNK5clang6interp7Pointer6isLiveEv.exit.i

_ZNK5clang6interp7Pointer6isLiveEv.exit.i:        ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !19
  %i.gv = and i8 %i.gu, 10
  %or.cond.i = icmp eq i8 %i.gv, 0
  br i1 %or.cond.i, label %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i.i, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit

_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i.i: ; preds = %_ZNK5clang6interp7Pointer6isLiveEv.exit.i
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !21 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 54
  %i.gy = load i8, ptr %i.gx, align 2, !tbaa !112, !range !71, !noundef !72
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.i

_ZNK5clang6interp7Pointer16isDereferencableEv.exit.i: ; preds = %_ZNK5clang6interp7Pointer18isConstexprUnknownEv.exit.i.i
  %i.ha = load i64, ptr %6, align 8, !tbaa !40
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !104
  %i.hd = zext i32 %i.hc to i64
  %i.he = icmp ugt i64 %i.ha, %i.hd
  %cond.fr.i.i = freeze i1 %i.he
  br i1 %cond.fr.i.i, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i

_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i:    ; preds = %_ZNK5clang6interp7Pointer16isDereferencableEv.exit.i
  %i.hf = load i32, ptr %i.fo, align 8, !tbaa !20, !noalias !213 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !31
  %i.hi = icmp eq i32 %i.hf, %i.hh
  br i1 %i.hi, label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %i.hj = zext i32 %i.hf to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !34
  br label %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i

_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i: ; preds = %bb.aa, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i
  %.0.i.i.i68 = phi ptr [ %i.hm, %bb.aa ], [ %i.gw, %_ZNK5clang6interp7Pointer6isRootEv.exit.i.i.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i.i68, i64 20
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !101
  %i.hp = icmp eq i32 %i.ho, -1
  br i1 %i.hp, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE.exit"

"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE.exit": ; preds = %_ZNK5clang6interp7Pointer18isUnknownSizeArrayEv.exit.i
  %i.hq = call noundef zeroext i1 @_ZNK5clang6interp7Pointer12isOnePastEndEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
  br i1 %i.hq, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %bb.ab

bb.ab:                                            ; preds = %"_ZZN5clang6interpL13collectBlocksENS0_7PtrViewERN4llvm9SetVectorIPKNS0_5BlockENS2_11SmallVectorIS6_Lj0EEENS2_8DenseSetIS6_NS2_12DenseMapInfoIS6_vEEEELj0EEEENK3$_0clERKNS0_7PointerE.exit"
  %i.hr = load ptr, ptr %i.fn, align 8, !tbaa !20 ; 3 uses
  %i.hs = load ptr, ptr %1, align 8, !tbaa !109, !noalias !214
  %i.ht = load ptr, ptr %i.fp, align 8, !tbaa !113, !noalias !214 ; 2 uses
  %i.hu = load i32, ptr %i.fq, align 4, !tbaa !108, !noalias !214 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hw = add i32 %i.hu, -1                       ; 2 uses
  %i.hx = ptrtoint ptr %i.hr to i64
  %i.hy = mul i64 %i.hx, -4658895280553007687     ; 2 uses
  %i.hz = lshr i64 %i.hy, 31
  %i.ia = xor i64 %i.hz, %i.hy
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = and i32 %i.hw, %i.ib                    ; 3 uses
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %i.ie = lshr i64 %i.id, 5
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !75
  %i.ih = and i32 %i.ic, 31
  %i.ii = lshr i32 %i.ig, %i.ih
  %i.ij = trunc i32 %i.ii to i1
  br i1 %i.ij, label %.lr.ph.i.i.i.i.i, label %.loopexit, !prof !114

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %bb.ad
  %i.ik = phi i64 [ %i.iq, %bb.ad ], [ %i.id, %bb.ac ]
  %.019.i.i.i.i.i = phi i32 [ %i.ip, %bb.ad ], [ %i.ic, %bb.ac ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !74
  %i.in = icmp eq ptr %i.hr, %i.im
  br i1 %i.in, label %_ZNK4llvm9SetVectorIPKN5clang6interp5BlockENS_11SmallVectorIS5_Lj0EEENS_8DenseSetIS5_NS_12DenseMapInfoIS5_vEEEELj0EE8containsES5_.exit, label %bb.ad, !prof !99

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.io = add nuw i32 %.019.i.i.i.i.i, 1
  %i.ip = and i32 %i.io, %i.hw                    ; 3 uses
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = lshr i64 %i.iq, 5
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !75
  %i.iu = and i32 %i.ip, 31
  %i.iv = lshr i32 %i.it, %i.iu
  %i.iw = trunc i32 %i.iv to i1
  br i1 %i.iw, label %.lr.ph.i.i.i.i.i, label %.loopexit, !prof !115

.loopexit:                                        ; preds = %bb.ad, %bb.ab, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
end_hunk_0
