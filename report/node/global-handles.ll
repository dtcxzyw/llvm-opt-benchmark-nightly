Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/global-handles?download=true
inline.NumInlined: 969
inline.NumDeleted: 547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal14EternalHandles6CreateEPNS0_7IsolateENS0_6TaggedINS0_6ObjectEEEPi:bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  %i.c = ashr i32 %i.b, 8
  %i.d = and i32 %i.b, 255                        ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #19 ; 3 uses
  %i.i = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.g, i64 256, ptr nonnull %i.h) #21, !srcloc !54 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.l, align 8
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.k, align 8
  br label %_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  store ptr %i.h, ptr %i.ac, align 8
  %i.ad = icmp sgt i64 %i.t, 0
  br i1 %i.ad, label %bb.g, label %_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPmSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPmSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.af = load ptr, ptr %i.m, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ah) #20
  br label %_ZNSt6vectorIPmSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPmSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPmSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ab, ptr %i.j, align 8
  store ptr %i.ae, ptr %i.k, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.ai, ptr %i.m, align 8
  br label %_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit:     ; preds = %_ZNSt6vectorIPmSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = sext i32 %i.c to i64
  %i.al = load ptr, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.d to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ao
  store i64 %2, ptr %i.ap, align 8
  %i.aq = and i64 %2, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit
  %i.as = and i64 %2, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 262144
  %i.au = and i64 %.sroa.0.0.copyload.i, 24
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %.not.i9 = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i32, ptr %0, align 8
  store i32 %i.ba, ptr %i.ax, align 4
  %i.bb = load ptr, ptr %i.aw, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bc, ptr %i.aw, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 5 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775804
  br i1 %i.bh, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bi = ashr exact i64 %i.bg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i10, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 2305843009213693951)
  %i.bm = select i1 %i.bk, i64 2305843009213693951, i64 %i.bl ; 3 uses
  %.not.i.i.i11 = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i11)
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #19 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bg ; 2 uses
  %i.bq = load i32, ptr %0, align 8
  store i32 %i.bq, ptr %i.bp, align 4
  %i.br = icmp sgt i64 %i.bg, 0
  br i1 %i.br, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.not.i17.i.i12 = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i12, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bt = load ptr, ptr %i.ay, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bv) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bo, ptr %i.av, align 8
  store ptr %i.bs, ptr %i.aw, align 8
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bw, ptr %i.ay, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIPmSaIS0_EE9push_backERKS0_.exit, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.j, %_ZN2v88internal10HeapLayout17InYoungGenerationENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bx = load i32, ptr %0, align 8               ; 2 uses
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %0, align 8
  store i32 %i.bx, ptr %3, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13GlobalHandles4Node26CollectPhantomCallbackDataEPSt6vectorISt4pairIPS2_NS1_22PendingPhantomCallbackEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 24
  %i.d = icmp eq i8 %i.c, 8
  br i1 %i.d, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1                     ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp ugt i16 %i.l, 302
  br i1 %i.m, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit

bb.c:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.n = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 4 uses
  %i.o = add i64 %i.n, 7
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load atomic volatile i8, ptr %i.p monotonic, align 1 ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 3
  %i.t = icmp eq i8 %i.q, 0
  br i1 %i.t, label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add i64 %i.n, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2 ; 2 uses
  %i.x = icmp eq i16 %i.w, 1057
  br i1 %i.x, label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add i64 %i.n, 13
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i8, ptr %i.z monotonic, align 1
  %i.ab = icmp slt i8 %i.aa, 0
  %i.ac = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.w, i1 noundef zeroext %i.ab) #21
  br label %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.i

_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.i: ; preds = %bb.e, %bb.d
  %i.ad = phi i32 [ %i.ac, %bb.e ], [ 24, %bb.d ]
  %i.ae = sub nsw i32 %i.s, %i.ad
  %i.af = ashr i32 %i.ae, 3
  %i.ag = load atomic volatile i8, ptr %i.p monotonic, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i64 %i.n, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i8, ptr %i.aj monotonic, align 1
  %i.al = zext i8 %i.ak to i32
  %.neg.i.i.i = sub nsw i32 %i.af, %i.ah
  %i.am = add nsw i32 %.neg.i.i.i, %i.al          ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.i
  %.not.i.not = icmp eq i32 %i.am, 1
  %i.ao = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 2 uses
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 1057
  br i1 %i.as, label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add i64 %i.ao, 13
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i8, ptr %i.au monotonic, align 1
  %i.aw = icmp slt i8 %i.av, 0
  %i.ax = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %i.ar, i1 noundef zeroext %i.aw) #21
  %2 = sext i32 %i.ax to i64
  br label %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i

_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i: ; preds = %bb.g, %bb.f
  %3 = phi i64 [ %2, %bb.g ], [ 24, %bb.f ]
  %4 = add i64 %i.g, %3
  %5 = inttoptr i64 %4 to ptr
  %6 = load i64, ptr %5, align 8                  ; 2 uses
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  %i.ay = inttoptr i64 %6 to ptr
  %.sroa.019.2.peel = select i1 %8, ptr %i.ay, ptr null ; 2 uses
  br i1 %.not.i.not, label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i
  %9 = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 2 uses
  %10 = add i64 %9, 11
  %i.az = inttoptr i64 %10 to ptr
  %11 = load atomic volatile i16, ptr %i.az monotonic, align 2 ; 2 uses
  %12 = icmp eq i16 %11, 1057
  br i1 %12, label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add i64 %9, 13
  %13 = inttoptr i64 %indvars.iv.next.i to ptr
  %14 = load atomic volatile i8, ptr %13 monotonic, align 1
  %15 = icmp slt i8 %14, 0
  %16 = tail call noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext %11, i1 noundef zeroext %15) #21
  %17 = add nsw i32 %16, 8
  %18 = sext i32 %17 to i64
  br label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit.loopexit

_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit.loopexit: ; preds = %bb.i, %bb.h
  %19 = phi i64 [ %18, %bb.i ], [ 32, %bb.h ]
  %20 = add i64 %i.g, %19
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 8                ; 2 uses
  %23 = and i64 %22, 1
  %24 = icmp eq i64 %23, 0
  %25 = inttoptr i64 %22 to ptr
  %.sroa.520.2.peel35 = select i1 %24, ptr %25, ptr null
  br label %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit

_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit: ; preds = %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i, %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit.loopexit, %bb.b, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.i, %bb.c, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit, %bb.a
  %.sroa.520.0 = phi ptr [ null, %bb.b ], [ null, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.i ], [ %.sroa.520.2.peel35, %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit.loopexit ], [ null, %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i ] ; 2 uses
  %.sroa.019.0 = phi ptr [ null, %bb.b ], [ null, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit ], [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZNK2v88internal8JSObject21GetEmbedderFieldCountEv.exit.i ], [ %.sroa.019.2.peel, %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit.loopexit ], [ %.sroa.019.2.peel, %_ZN2v88internal8JSObject22GetEmbedderFieldOffsetEi.exit.i ] ; 2 uses
  store i64 51729, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not.i.i = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit
  store ptr %0, ptr %i.bf, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bb, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bd, ptr %.sroa.610.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %.sroa.019.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %.sroa.520.0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr %i.bj, ptr %i.be, align 8
  br label %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE9push_backEOS7_.exit

bb.k:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121ExtractInternalFieldsENS0_6TaggedINS0_8JSObjectEEEPPvi.exit
  %i.bk = load ptr, ptr %1, align 8               ; 5 uses
  %i.bl = ptrtoint ptr %i.bf to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.l, label %_ZNKSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bp = sdiv exact i64 %i.bn, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 230584300921369395)
  %i.bt = select i1 %i.br, i64 230584300921369395, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = mul nuw nsw i64 %i.bt, 40
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #19 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 5 uses
  store ptr %0, ptr %i.bw, align 8
  %.sroa.57.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bb, ptr %.sroa.57.0..sroa_idx8, align 8
  %.sroa.610.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bd, ptr %.sroa.610.0..sroa_idx11, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %.sroa.019.0, ptr %.sroa.7.0..sroa_idx13, align 8
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %.sroa.520.0, ptr %.sroa.8.0..sroa_idx15, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bf
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %_ZNKSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !59
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.bf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !58

_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %_ZNKSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40
  %.not.i23.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  %i.ca = load ptr, ptr %i.bg, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cc) #20
  br label %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  store ptr %i.bv, ptr %1, align 8
  store ptr %i.bz, ptr %i.be, align 8
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cd, ptr %i.bg, align 8
  br label %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.j, %_ZNSt6vectorISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i
  %i.ce = load i8, ptr %i.a, align 1
  %i.cf = or i8 %i.ce, 3
  store i8 %i.cf, ptr %i.a, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare noundef i32 @_ZN2v88internal8JSObject13GetHeaderSizeENS0_12InstanceTypeEb(i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

declare i64 @_ZN2v84base9TimeTicks3NowEv() local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !inline_history !60
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.172) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #20
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN2v88internal12StatsCounter22SetupPtrFromStatsTableEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.172) #22
  unreachable

_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #20
  br label %_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIPN2v88internal13GlobalHandles4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN2v88internal13GlobalHandles4NodeEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN2v88internal13GlobalHandles4NodeESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 88
  store i8 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.b = load ptr, ptr %.val, align 8
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef %i.b) #21
  call void @_ZN2v88internal13GlobalHandles32InvokeSecondPassPhantomCallbacksEv(ptr noundef nonnull align 8 dereferenceable(104) %.val)
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal13GlobalHandles31PostGarbageCollectionProcessingENS1_15GCCallbackFlagsEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{ptr @_ZN2v88internal13GlobalHandles22PendingPhantomCallback6InvokeEPNS0_7IsolateENS2_14InvocationTypeE}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, i1 false, !"_ZSt11make_uniqueIN2v88internal13GlobalHandles9NodeSpaceINS2_4NodeEEEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!14 = distinct !{!14, !13, !"_ZSt11make_uniqueIN2v88internal13GlobalHandles9NodeSpaceINS2_4NodeEEEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!15 = !{!14}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, i1 false, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!19 = distinct !{!19, !18, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!20 = !{!19}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, i1 false, !"_ZSt19__relocate_object_aIN2v88internal13GlobalHandles22PendingPhantomCallbackES3_SaIS3_EEvPT_PT0_RT1_"}
!23 = distinct !{!23, !22, !"_ZSt19__relocate_object_aIN2v88internal13GlobalHandles22PendingPhantomCallbackES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !22, !"_ZSt19__relocate_object_aIN2v88internal13GlobalHandles22PendingPhantomCallbackES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !9}
!26 = !{!24, !23}
!27 = distinct !{!27, i1 false, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE"}
!28 = distinct !{!28, !27, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE: argument 0"}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = distinct !{null, null, null}
!32 = distinct !{null, null}
!33 = distinct !{null}
!34 = distinct !{null, null, null}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!28}
!38 = distinct !{!38, i1 false, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!39 = distinct !{!39, !38, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!40 = !{!39}
!41 = distinct !{!41, i1 false, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!42 = distinct !{!42, !41, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!43 = !{!42}
!44 = distinct !{!44, i1 false, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!45 = distinct !{!45, !44, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!46 = !{!45}
!47 = distinct !{!47, i1 false, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!48 = distinct !{!48, !47, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!49 = !{!48}
!50 = !{ptr @_ZN2v88internal13GlobalHandles28ApplyPersistentHandleVisitorEPNS_23PersistentHandleVisitorEPNS1_4NodeE}
!51 = distinct !{!51, i1 false, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv"}
!52 = distinct !{!52, !51, !"_ZN2v88internal13GlobalHandles9NodeSpaceINS1_4NodeEE5beginEv: argument 0"}
!53 = !{!52}
!54 = !{i64 17125277}
!55 = distinct !{!55, i1 false, !"_ZSt19__relocate_object_aISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEES7_SaIS7_EEvPT_PT0_RT1_"}
!56 = distinct !{!56, !55, !"_ZSt19__relocate_object_aISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!57 = distinct !{!57, !55, !"_ZSt19__relocate_object_aISt4pairIPN2v88internal13GlobalHandles4NodeENS3_22PendingPhantomCallbackEES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!58 = distinct !{!58, !9}
!59 = !{!57, !56}
!60 = distinct !{null}
end_hunk_0
