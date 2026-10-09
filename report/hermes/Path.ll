Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Path?download=true
inline.NumInlined: 1790
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh3sys2fs8TempFile6createERKNS_5TwineEj:bb.a
  %i.ak = or i64 %i.aj, 1
  %i.al = inttoptr i64 %i.ak to ptr
  store ptr null, ptr %9, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.al, ptr %4, align 8, !tbaa !87
  call void @_ZN4llvh12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  store ptr null, ptr %3, align 8, !tbaa !87
  %i.am = load ptr, ptr %4, align 8, !tbaa !87
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN4llvh12consumeErrorENS_5ErrorE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #30, !inline_history !254
  br label %_ZN4llvh12consumeErrorENS_5ErrorE.exit

_ZN4llvh12consumeErrorENS_5ErrorE.exit:           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.au = load ptr, ptr %9, align 8, !tbaa !87
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -2                       ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZN4llvh5ErrorD2Ev.exit13, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh12consumeErrorENS_5ErrorE.exit
  %i.ay = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #30, !inline_history !1
  br label %_ZN4llvh5ErrorD2Ev.exit13

_ZN4llvh5ErrorD2Ev.exit13:                        ; preds = %bb.i, %_ZN4llvh12consumeErrorENS_5ErrorE.exit
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %10, i32 1, ptr nonnull %i.bc) #30
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = or i8 %i.be, 1
  store i8 %i.bf, ptr %i.bd, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.bg = load ptr, ptr %10, align 8, !tbaa !87, !noalias !261
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, -2
  %i.bj = inttoptr i64 %i.bi to ptr
  store ptr %i.bj, ptr %0, align 8, !tbaa !88, !alias.scope !261
  store ptr null, ptr %10, align 8, !tbaa !87, !noalias !261
  br label %bb.p

bb.j:                                             ; preds = %_ZN4llvh3sys2fs8TempFileC2ENS_9StringRefEi.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = and i8 %i.bl, -2
  store i8 %i.bm, ptr %i.bk, align 8
  store i8 0, ptr %0, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !38
  store i8 0, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 -1, ptr %i.bq, align 8, !tbaa !102
  %i.br = load ptr, ptr %i.t, align 8, !tbaa !37  ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.u
  br i1 %i.bs, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !38 ; 5 uses
  %i.bv = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bv)
  %.not21.i.i.i.i = icmp eq ptr %8, %0
  br i1 %.not21.i.i.i.i, label %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit, label %bb.l, !prof !45

bb.l:                                             ; preds = %bb.k
  switch i64 %i.bu, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !15
  store i8 %i.bw, ptr %i.bo, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 1 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !15
  br label %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit

bb.o:                                             ; preds = %bb.j
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bz = load <2 x i64>, ptr %i.by, align 8, !tbaa !15
  store <2 x i64> %i.bz, ptr %i.bp, align 8, !tbaa !15
  store ptr %i.u, ptr %i.t, align 8, !tbaa !37
  br label %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit

_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i, %bb.o
  %i.ca = phi ptr [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i ], [ %i.u, %bb.o ], [ %i.br, %bb.k ]
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.cb, align 8, !tbaa !38
  store i8 0, ptr %i.ca, align 1, !tbaa !15
  %i.cc = load i32, ptr %i.ag, align 8, !tbaa !102
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !102
  store i8 1, ptr %8, align 8, !tbaa !101
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvh8ExpectedINS_3sys2fs8TempFileEEC2IS3_EEOT_PNSt9enable_ifIXsr3std14is_convertibleIS6_S3_EE5valueEvE4typeE.exit, %_ZN4llvh5ErrorD2Ev.exit13
  %i.cd = load ptr, ptr %i.t, align 8, !tbaa !37  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.u
  br i1 %i.ce, label %_ZN4llvh3sys2fs8TempFileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !15
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZN4llvh3sys2fs8TempFileD2Ev.exit

_ZN4llvh3sys2fs8TempFileD2Ev.exit:                ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.q

bb.q:                                             ; preds = %_ZN4llvh5ErrorD2Ev.exit, %_ZN4llvh3sys2fs8TempFileD2Ev.exit
  %i.ch = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.c
  br i1 %i.ci, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef %i.ch) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  ret void
}

declare noundef zeroext i1 @_ZN4llvh3sys18RemoveFileOnSignalENS_9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr, i64, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #17

declare noundef i64 @_ZNK4llvh9StringRef12find_last_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #9

declare noundef i32 @_ZN4llvh3sys7Process15GetRandomNumberEv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind
declare ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertIPcvEES3_S3_T_S4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 17 uses
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !30
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 %i.o, %i.g
  %i.q = icmp ugt i64 %i.l, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %i.l, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.r, i64 noundef 1) #30
  %.pre7.pre.i = load i32, ptr %i.e, align 8, !tbaa !29
  %.pre57.pre = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre57 = phi ptr [ %.pre57.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = zext i32 %.pre7.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.pre57, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !29
  %.pre56 = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit: ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %.pre57, %bb.d ], [ %.pre56, %bb.e ]
  %i.w = phi i32 [ %.pre7.i, %bb.d ], [ %.pre.i, %bb.e ]
  %i.x = trunc i64 %i.l to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.a
  %4 = sub i64 0, %i.l
  %i.aa = add i64 %i.l, %i.g                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 1) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !28
  %.pre54.a = load i32, ptr %i.e, align 8, !tbaa !29 ; 2 uses
  %.pre59 = zext i32 %.pre54.a to i64
  br label %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit

_ZN4llvh15SmallVectorImplIcE7reserveEm.exit:      ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %i.g, %bb.f ], [ %.pre59, %bb.g ] ; 7 uses
  %i.ag = phi i32 [ %i.f, %bb.f ], [ %.pre54.a, %bb.g ]
  %i.ah = phi ptr [ %i.a, %bb.f ], [ %.pre, %bb.g ] ; 5 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d ; 16 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre-phi ; 4 uses
  %gepdiff = sub nsw i64 %.pre-phi, %i.d          ; 14 uses
  %.not = icmp ult i64 %gepdiff, %i.l
  br i1 %.not, label %bb.t, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %4 ; 2 uses
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.an = zext i32 %i.am to i64
  %i.ao = sub nsw i64 %i.an, %.pre-phi
  %i.ap = icmp ugt i64 %i.l, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = add i64 %i.l, %.pre-phi
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ar, i64 noundef %i.aq, i64 noundef 1) #30
  %.pre.i44 = load i32, ptr %i.e, align 8, !tbaa !29
  %.pre10.i = zext i32 %.pre.i44 to i64
  %.pre55 = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi ptr [ %.pre55, %bb.i ], [ %i.ah, %bb.h ]
  %.pre-phi.i = phi i64 [ %.pre10.i, %bb.i ], [ %.pre-phi, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pre-phi.i ; 2 uses
  %i.au = icmp sgt i64 %i.l, 1                    ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l, !prof !39

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.al, i64 %i.l, i1 false)
  br label %_ZN4llvh15SmallVectorImplIcE6appendISt13move_iteratorIPcEvEEvT_S6_.exit

bb.l:                                             ; preds = %bb.j
  %i.av = icmp eq i64 %i.l, 1
  br i1 %i.av, label %bb.m, label %_ZN4llvh15SmallVectorImplIcE6appendISt13move_iteratorIPcEvEEvT_S6_.exit

bb.m:                                             ; preds = %bb.l
  %i.aw = load i8, ptr %i.al, align 1, !tbaa !15
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !15
  br label %_ZN4llvh15SmallVectorImplIcE6appendISt13move_iteratorIPcEvEEvT_S6_.exit

_ZN4llvh15SmallVectorImplIcE6appendISt13move_iteratorIPcEvEEvT_S6_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !29
  %i.ay = trunc i64 %i.l to i32
  %i.az = add i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.e, align 8, !tbaa !29
  %5 = add i64 %i.d, %i.l
  %gepdiff48 = sub i64 %.pre-phi, %5              ; 4 uses
  %i.ba = icmp sgt i64 %gepdiff48, 1
  br i1 %i.ba, label %bb.n, label %bb.o, !prof !39

bb.n:                                             ; preds = %_ZN4llvh15SmallVectorImplIcE6appendISt13move_iteratorIPcEvEEvT_S6_.exit
  %i.bb = sub nsw i64 0, %gepdiff48
  %i.bc = getelementptr inbounds i8, ptr %i.ak, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.aj, i64 %gepdiff48, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %_ZN4llvh15SmallVectorImplIcE6appendISt13move_iteratorIPcEvEEvT_S6_.exit
  %i.bd = icmp eq i64 %gepdiff48, 1
  br i1 %i.bd, label %bb.p, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds i8, ptr %i.ak, i64 -1
  %i.bf = load i8, ptr %i.aj, align 1, !tbaa !15
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !15
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.n, %bb.o, %bb.p
  br i1 %i.au, label %bb.q, label %bb.r, !prof !39

bb.q:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.r:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.bg = icmp eq i64 %i.l, 1
  br i1 %i.bg, label %bb.s, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.s:                                             ; preds = %bb.r
  %i.bh = load i8, ptr %2, align 1, !tbaa !15
  store i8 %i.bh, ptr %i.aj, align 1, !tbaa !15
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

bb.t:                                             ; preds = %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  %i.bi = trunc i64 %i.l to i32
  %i.bj = add i32 %i.ag, %i.bi                    ; 2 uses
  store i32 %i.bj, ptr %i.e, align 8, !tbaa !29
  %.not.i.i45 = icmp samesign eq i64 %i.d, %.pre-phi
  br i1 %.not.i.i45, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bk
  %i.bm = sub nsw i64 0, %gepdiff
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.aj, i64 %gepdiff, i1 false)
  %min.iters.check = icmp ult i64 %gepdiff, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bo = add i64 %i.ai, %i.b
  %i.bp = add i64 %i.c, %i.k
  %i.bq = sub i64 %i.bp, %i.bo
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check65 = icmp ult i64 %gepdiff, 32
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %gepdiff, 28
  %n.vec = and i64 %gepdiff, -32                  ; 5 uses
  %i.bs = getelementptr i8, ptr %i.aj, i64 %n.vec
  %i.bt = and i64 %gepdiff, 31
  %i.bu = getelementptr i8, ptr %2, i64 %n.vec    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %index ; 2 uses
  %next.gep66 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep66, align 1, !tbaa !15
  %wide.load67 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !15
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !15
  store <16 x i8> %wide.load67, ptr %i.bw, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %gepdiff, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !266

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %gepdiff, -4                 ; 4 uses
  %i.by = getelementptr i8, ptr %i.aj, i64 %n.vec70
  %i.bz = and i64 %gepdiff, 3
  %i.ca = getelementptr i8, ptr %2, i64 %n.vec70  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 3 uses
  %next.gep72.a = getelementptr i8, ptr %i.aj, i64 %index71
  %next.gep73 = getelementptr i8, ptr %2, i64 %index71
  %wide.load74 = load <4 x i8>, ptr %next.gep73, align 1, !tbaa !15
  store <4 x i8> %wide.load74, ptr %next.gep72.a, align 1, !tbaa !15
  %index.next75 = add nuw i64 %index71, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.cb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !263

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %gepdiff, %n.vec70
  br i1 %cmp.n76, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.053.ph = phi ptr [ %i.aj, %iter.check ], [ %i.aj, %vector.memcheck ], [ %i.bs, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ] ; 2 uses
  %.03852.ph = phi i64 [ %gepdiff, %iter.check ], [ %gepdiff, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ] ; 4 uses
  %.04051.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.bu, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 2 uses
  %i.cc = add i64 %.03852.ph, -1
  %xtraiter = and i64 %.03852.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.053.prol = phi ptr [ %i.ce, %.lr.ph.prol ], [ %.053.ph, %.lr.ph.preheader ] ; 2 uses
  %.03852.prol = phi i64 [ %i.cg, %.lr.ph.prol ], [ %.03852.ph, %.lr.ph.preheader ]
  %.04051.prol = phi ptr [ %i.cf, %.lr.ph.prol ], [ %.04051.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cd = load i8, ptr %.04051.prol, align 1, !tbaa !15
  store i8 %i.cd, ptr %.053.prol, align 1, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %.053.prol, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04051.prol, i64 1 ; 3 uses
  %i.cg = add i64 %.03852.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !264

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.cf, %.lr.ph.prol ]
  %.053.unr = phi ptr [ %.053.ph, %.lr.ph.preheader ], [ %i.ce, %.lr.ph.prol ]
  %.03852.unr = phi i64 [ %.03852.ph, %.lr.ph.preheader ], [ %i.cg, %.lr.ph.prol ]
  %.04051.unr = phi ptr [ %.04051.ph, %.lr.ph.preheader ], [ %i.cf, %.lr.ph.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.t
  %.040.lcssa = phi ptr [ %2, %bb.t ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.not.i = icmp eq ptr %.040.lcssa, %3
  br i1 %.not.i, label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.ci = ptrtoint ptr %.040.lcssa to i64
  %i.cj = sub i64 %i.j, %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %.040.lcssa, i64 %i.cj, i1 false)
  br label %_ZSt4copyIPcS0_ET0_T_S2_S1_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.053 = phi ptr [ %i.dg, %.lr.ph ], [ %.053.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03852 = phi i64 [ %i.di, %.lr.ph ], [ %.03852.unr, %.lr.ph.prol.loopexit ]
  %.04051 = phi ptr [ %i.dh, %.lr.ph ], [ %.04051.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ck = load i8, ptr %.04051, align 1, !tbaa !15
  store i8 %i.ck, ptr %.053, align 1, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %.053, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.04051, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !15
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %.053, i64 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.04051, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !15
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %.053, i64 3
  %i.cs = getelementptr inbounds nuw i8, ptr %.04051, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %.053, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.04051, i64 4
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !15
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %.053, i64 5
  %i.cy = getelementptr inbounds nuw i8, ptr %.04051, i64 5
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !15
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %.053, i64 6
  %i.db = getelementptr inbounds nuw i8, ptr %.04051, i64 6
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !15
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %.053, i64 7
  %i.de = getelementptr inbounds nuw i8, ptr %.04051, i64 7
  %i.df = load i8, ptr %i.de, align 1, !tbaa !15
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %.053, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.04051, i64 8 ; 2 uses
  %i.di = add i64 %.03852, -8                     ; 2 uses
  %.not43.7 = icmp eq i64 %i.di, 0
  br i1 %.not43.7, label %._crit_edge, label %.lr.ph, !llvm.loop !265

_ZSt4copyIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.u, %._crit_edge, %bb.s, %bb.r, %bb.q, %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit
  %.1 = phi ptr [ %i.z, %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit ], [ %i.aj, %bb.s ], [ %i.aj, %bb.q ], [ %i.aj, %bb.r ], [ %i.aj, %._crit_edge ], [ %i.aj, %bb.u ]
  ret ptr %.1
}
end_hunk_0
