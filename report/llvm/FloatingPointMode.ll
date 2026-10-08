Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FloatingPointMode?download=true
inline.NumInlined: 121
inline.NumDeleted: 40
begin_hunk_0_@_ZN4llvm4fnegENS_11FPClassTestE:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 1024) i32 @_ZN4llvm12inverse_fabsENS_11FPClassTestE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 3                            ; 2 uses
  %i.b = and i32 %0, 64
  %.not = icmp eq i32 %i.b, 0
  %i.c = or disjoint i32 %i.a, 96
  %spec.select = select i1 %.not, i32 %i.a, i32 %i.c ; 2 uses
  %i.d = and i32 %0, 128
  %.not5 = icmp eq i32 %i.d, 0
  %i.e = or disjoint i32 %spec.select, 144
  %.1 = select i1 %.not5, i32 %spec.select, i32 %i.e ; 2 uses
  %i.f = and i32 %0, 256
  %.not6 = icmp eq i32 %i.f, 0
  %i.g = or disjoint i32 %.1, 264
  %.2 = select i1 %.not6, i32 %.1, i32 %i.g       ; 2 uses
  %i.h = and i32 %0, 512
  %.not7 = icmp eq i32 %i.h, 0
  %i.i = or i32 %.2, 516
  %.3 = select i1 %.not7, i32 %.2, i32 %i.i
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 1024) i32 @_ZN4llvm12unknown_signENS_11FPClassTestE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 3                            ; 2 uses
  %i.b = and i32 %0, 96
  %.not = icmp eq i32 %i.b, 0
  %i.c = or disjoint i32 %i.a, 96
  %spec.select = select i1 %.not, i32 %i.a, i32 %i.c ; 2 uses
  %i.d = and i32 %0, 144
  %.not5 = icmp eq i32 %i.d, 0
  %i.e = or disjoint i32 %spec.select, 144
  %.1 = select i1 %.not5, i32 %spec.select, i32 %i.e ; 2 uses
  %i.f = and i32 %0, 264
  %.not6 = icmp eq i32 %i.f, 0
  %i.g = or disjoint i32 %.1, 264
  %.2 = select i1 %.not6, i32 %.1, i32 %i.g       ; 2 uses
  %i.h = and i32 %0, 516
  %.not7 = icmp eq i32 %i.h, 0
  %i.i = or i32 %.2, 516
  %.3 = select i1 %.not7, i32 %.2, i32 %i.i
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamENS_11FPClassTestE(ptr noundef nonnull returned align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %.not.i = icmp ult ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 40) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !14
  store i8 40, ptr %i.b, align 1, !tbaa !16
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %bb.d, label %.preheader

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 5
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str, i64 noundef 5) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store ptr %i.p, ptr %i.a, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.p
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !15
  %.not.i18 = icmp ult ptr %i.q, %i.r
  br i1 %.not.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef zeroext 41) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %i.a, align 8, !tbaa !14
  store i8 41, ptr %i.q, align 1, !tbaa !16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.preheader:                                       ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.p
  %.017.idx44 = phi i64 [ %.017.add, %bb.p ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 2 uses
  %.043 = phi i32 [ %.1, %bb.p ], [ %1, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.sroa.034.042 = phi i1 [ %.sroa.034.1, %bb.p ], [ true, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 4 uses
  %.017.ptr = getelementptr inbounds nuw i8, ptr @_ZL13NoFPClassName, i64 %.017.idx44 ; 3 uses
  %.sroa.0.0.copyload28 = load i32, ptr %.017.ptr, align 8 ; 3 uses
  %.sroa.629.0..017.ptr.sroa_idx = getelementptr inbounds nuw i8, ptr %.017.ptr, i64 8
  %.sroa.629.0.copyload = load ptr, ptr %.sroa.629.0..017.ptr.sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..017.ptr.sroa_idx = getelementptr inbounds nuw i8, ptr %.017.ptr, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..017.ptr.sroa_idx, align 8 ; 5 uses
  %i.u = and i32 %.sroa.0.0.copyload28, %.043
  %i.v = icmp eq i32 %i.u, %.sroa.0.0.copyload28
  br i1 %i.v, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit, label %bb.p

_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit:   ; preds = %.preheader
  %not. = xor i1 %.sroa.034.042, true
  %spec.select41 = zext i1 %not. to i64           ; 4 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, %spec.select41
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  %spec.select = select i1 %.sroa.034.042, ptr @.str.2, ptr @.str.1
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %spec.select, i64 noundef %spec.select41) #5 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit
  br i1 %.sroa.034.042, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 @.str.1, i64 %spec.select41, i1 false)
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %spec.select41 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.j, %bb.k, %bb.l
  %i.af = phi ptr [ %.pre, %bb.j ], [ %i.ae, %bb.l ], [ %i.x, %bb.k ] ; 2 uses
  %.0.i22 = phi ptr [ %i.ac, %bb.j ], [ %0, %bb.l ], [ %0, %bb.k ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i22, i64 32 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ugt i64 %.sroa.7.0.copyload, %i.al
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i22, ptr noundef %.sroa.629.0.copyload, i64 noundef %.sroa.7.0.copyload) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit25

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %.not.i23 = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %.not.i23, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit25, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.sroa.629.0.copyload, i64 %.sroa.7.0.copyload, i1 false)
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.7.0.copyload
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit25

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit25:    ; preds = %bb.m, %bb.n, %bb.o
  %i.aq = and i32 %.sroa.0.0.copyload28, 1023
  %i.ar = xor i32 %i.aq, 1023
  %i.as = and i32 %i.ar, %.043
  br label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit25, %.preheader
  %.sroa.034.1 = phi i1 [ false, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit25 ], [ %.sroa.034.042, %.preheader ]
  %.1 = phi i32 [ %i.as, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit25 ], [ %.043, %.preheader ]
  %.017.add = add nuw nsw i64 %.017.idx44, 24     ; 2 uses
  %.not = icmp eq i64 %.017.add, 384
  br i1 %.not, label %bb.g, label %.preheader

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %.sroa.01.0.copyload = load i16, ptr %0, align 1 ; 7 uses
  %.sroa.0.0.extract.trunc.i = zext i16 %.sroa.01.0.copyload to i32
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = sext i8 %i.b to i32
  %sext.i = shl i32 %.sroa.0.0.extract.trunc.i, 24
  %i.d = ashr exact i32 %sext.i, 24
  %i.e = icmp eq i32 %i.d, %i.c
  %3 = trunc i16 %.sroa.01.0.copyload to i8       ; 3 uses
  %4 = lshr i16 %.sroa.01.0.copyload, 8           ; 2 uses
  br i1 %i.e, label %_ZNK4llvm12DenormalModeeqES0_.exit, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

_ZNK4llvm12DenormalModeeqES0_.exit:               ; preds = %bb.a
  %.sroa.2.0.extract.trunc.i = zext nneg i16 %4 to i32
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %6 = load i8, ptr %5, align 1, !tbaa !20
  %7 = sext i8 %6 to i32
  %sext1.i = shl nuw i32 %.sroa.2.0.extract.trunc.i, 24
  %8 = ashr exact i32 %sext1.i, 24
  %9 = icmp eq i32 %8, %7
  br i1 %9, label %bb.b, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit
  %i.f = icmp ult i8 %3, 4
  br i1 %i.f, label %switch.lookup, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

switch.lookup:                                    ; preds = %bb.b
  %.mask76 = and i16 %.sroa.01.0.copyload, 3
  %i.i = zext nneg i16 %.mask76 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.10, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64       ; 4 uses
  %.mask77 = and i16 %.sroa.01.0.copyload, 3
  %i.j = zext nneg i16 %.mask77 to i64
  %switch.gep43.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.11, i64 %i.j
  %switch.load44.a = load ptr, ptr %switch.gep43.a, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, %switch.ext
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %switch.lookup
  %i.s = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %switch.load44.a, i64 noundef %switch.ext) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.d:                                             ; preds = %switch.lookup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %switch.load44.a, i64 %switch.ext, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %switch.ext
  store ptr %i.u, ptr %i.m, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.d, %bb.c, %.thread.i
  %i.v = phi ptr [ %i.m, %bb.c ], [ %i.h, %.thread.i ], [ %i.m, %bb.d ] ; 5 uses
  %i.w = phi ptr [ %i.k, %bb.c ], [ %i.g, %.thread.i ], [ %i.k, %bb.d ] ; 2 uses
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = load i8, ptr %0, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.i, label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !14  ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !15
  %.not.i9.i = icmp ult ptr %i.aa, %i.ab
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 124) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !14
  store i8 124, ptr %i.aa, align 1, !tbaa !16
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.h, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20  ; 3 uses
  %i.ag = icmp ult i8 %i.af, 4
  br i1 %i.ag, label %switch.lookup45, label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit

switch.lookup45:                                  ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.ah = zext nneg i8 %i.af to i64
  %switch.gep46.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.10, i64 %i.ah
  %switch.load47.a = load i8, ptr %switch.gep46.a, align 1
  %switch.ext48 = zext i8 %switch.load47.a to i64 ; 4 uses
  %i.ai = zext nneg i8 %i.af to i64
  %switch.gep49.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.11, i64 %i.ai
  %switch.load50.a = load ptr, ptr %switch.gep49.a, align 8 ; 2 uses
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !14  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, %switch.ext48
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %switch.lookup45
  %i.ap = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %switch.load50.a, i64 noundef %switch.ext48) #5 ; 0 uses
  br label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit

bb.j:                                             ; preds = %switch.lookup45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %switch.load50.a, i64 %switch.ext48, i1 false)
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %switch.ext48
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !14
  br label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %bb.a, %_ZNK4llvm12DenormalModeeqES0_.exit
  %10 = icmp ne i8 %3, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %11 = icmp ne i16 %4, 0
  %or.cond = or i1 %10, %11
  br i1 %or.cond, label %_ZNK4llvm12DenormalModeneES0_.exit.thread, label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZNK4llvm12DenormalModeneES0_.exit.thread:        ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  %i.at = icmp ult i8 %3, 4
  br i1 %i.at, label %switch.lookup51, label %.thread.i19

.thread.i19:                                      ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i12

switch.lookup51:                                  ; preds = %_ZNK4llvm12DenormalModeneES0_.exit.thread
  %.mask = and i16 %.sroa.01.0.copyload, 3
  %i.aw = zext nneg i16 %.mask to i64
  %switch.gep52.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.10, i64 %i.aw
  %switch.load53.a = load i8, ptr %switch.gep52.a, align 1
  %switch.ext54 = zext i8 %switch.load53.a to i64 ; 4 uses
  %.mask75 = and i16 %.sroa.01.0.copyload, 3
  %i.ax = zext nneg i16 %.mask75 to i64
  %switch.gep55.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.11, i64 %i.ax
  %switch.load56.a = load ptr, ptr %switch.gep55.a, align 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ult i64 %i.be, %switch.ext54
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %switch.lookup51
  %i.bg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %switch.load56.a, i64 noundef %switch.ext54) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i12

bb.l:                                             ; preds = %switch.lookup51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %switch.load56.a, i64 %switch.ext54, i1 false)
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %switch.ext54
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i12

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i12:  ; preds = %bb.l, %bb.k, %.thread.i19
  %i.bj = phi ptr [ %i.ba, %bb.k ], [ %i.av, %.thread.i19 ], [ %i.ba, %bb.l ] ; 5 uses
  %i.bk = phi ptr [ %i.ay, %bb.k ], [ %i.au, %.thread.i19 ], [ %i.ay, %bb.l ] ; 2 uses
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i12
  %i.bl = load i8, ptr %i.as, align 1, !tbaa !20
  %i.bm = load i8, ptr %0, align 1, !tbaa !19
  %.not.i18 = icmp eq i8 %i.bl, %i.bm
  br i1 %.not.i18, label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i12
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 3 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !15
  %.not.i9.i13 = icmp ult ptr %i.bn, %i.bo
  br i1 %.not.i9.i13, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 124) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i14

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bq, ptr %i.bj, align 8, !tbaa !14
  store i8 124, ptr %i.bn, align 1, !tbaa !16
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i14

_ZN4llvm11raw_ostreamlsEc.exit.i14:               ; preds = %bb.p, %bb.o
  %i.br = load i8, ptr %i.as, align 1, !tbaa !20  ; 3 uses
  %i.bs = icmp ult i8 %i.br, 4
  br i1 %i.bs, label %switch.lookup57, label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit20

switch.lookup57:                                  ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i14
  %i.bt = zext nneg i8 %i.br to i64
  %switch.gep58.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.10, i64 %i.bt
  %switch.load59.a = load i8, ptr %switch.gep58.a, align 1
  %switch.ext60 = zext i8 %switch.load59.a to i64 ; 4 uses
  %i.bu = zext nneg i8 %i.br to i64
  %switch.gep61.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.11, i64 %i.bu
  %switch.load62.a = load ptr, ptr %switch.gep61.a, align 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bw = load ptr, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, %switch.ext60
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %switch.lookup57
  %i.cb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %switch.load62.a, i64 noundef %switch.ext60) #5 ; 0 uses
  br label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit20

bb.r:                                             ; preds = %switch.lookup57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %switch.load62.a, i64 %switch.ext60, i1 false)
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %switch.ext60
  store ptr %i.cd, ptr %i.bj, align 8, !tbaa !14
  br label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit20

_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit20: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i14, %bb.m, %bb.q, %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !14 ; 2 uses
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = icmp ult i64 %i.ck, 2
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit20
  %i.cm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3, i64 noundef 2) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.t:                                             ; preds = %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit20
  store i16 8236, ptr %i.ch, align 1
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store ptr %i.co, ptr %i.cg, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %bb.t, %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 11 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp ult i64 %i.cv, 7
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.cx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.4, i64 noundef 7) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cs, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 7
  store ptr %i.cz, ptr %i.cr, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit25

_ZN4llvm11raw_ostreamlsEPKc.exit25:               ; preds = %bb.u, %bb.v
  %i.da = load i8, ptr %i.a, align 1, !tbaa !19   ; 3 uses
  %i.db = icmp ult i8 %i.da, 4
  br i1 %i.db, label %switch.lookup63, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i29

switch.lookup63:                                  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25
  %i.dc = zext nneg i8 %i.da to i64
  %switch.gep64.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.10, i64 %i.dc
  %switch.load65.a = load i8, ptr %switch.gep64.a, align 1
  %switch.ext66 = zext i8 %switch.load65.a to i64 ; 4 uses
  %i.dd = zext nneg i8 %i.da to i64
  %switch.gep67.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.11, i64 %i.dd
  %switch.load68.a = load ptr, ptr %switch.gep67.a, align 8 ; 2 uses
  %i.de = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.df = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp ult i64 %i.di, %switch.ext66
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %switch.lookup63
  %i.dk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %switch.load68.a, i64 noundef %switch.ext66) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i29

bb.x:                                             ; preds = %switch.lookup63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.df, ptr noundef nonnull align 1 dereferenceable(1) %switch.load68.a, i64 %switch.ext66, i1 false)
  %i.dl = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %switch.ext66
  store ptr %i.dm, ptr %i.cr, align 8, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i29

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i29:  ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit25, %bb.x, %bb.w
  br i1 %2, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i29
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.dn = load i8, ptr %12, align 1, !tbaa !20
  %i.do = load i8, ptr %i.a, align 1, !tbaa !19
  %.not.i35 = icmp eq i8 %i.dn, %i.do
  br i1 %.not.i35, label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i29
  %i.dp = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 3 uses
  %i.dq = load ptr, ptr %i.cp, align 8, !tbaa !15
  %.not.i9.i30 = icmp ult ptr %i.dp, %i.dq
  br i1 %.not.i9.i30, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 124) #5 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i31

bb.ab:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.ds, ptr %i.cr, align 8, !tbaa !14
  store i8 124, ptr %i.dp, align 1, !tbaa !16
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i31

_ZN4llvm11raw_ostreamlsEc.exit.i31:               ; preds = %bb.ab, %bb.aa
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.dt = load i8, ptr %13, align 1, !tbaa !20    ; 3 uses
  %i.du = icmp ult i8 %i.dt, 4
  br i1 %i.du, label %switch.lookup69, label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit

switch.lookup69:                                  ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i31
  %i.dv = zext nneg i8 %i.dt to i64
  %switch.gep70.a = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.10, i64 %i.dv
  %switch.load71.a = load i8, ptr %switch.gep70.a, align 1
  %switch.ext72 = zext i8 %switch.load71.a to i64 ; 4 uses
  %i.dw = zext nneg i8 %i.dt to i64
  %switch.gep73 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13DenormalFPEnv5printERNS_11raw_ostreamEb.11, i64 %i.dw
  %switch.load74 = load ptr, ptr %switch.gep73, align 8 ; 2 uses
  %i.dx = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ult i64 %i.eb, %switch.ext72
  br i1 %i.ec, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %switch.lookup69
  %i.ed = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %switch.load74, i64 noundef %switch.ext72) #5 ; 0 uses
  br label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit

bb.ad:                                            ; preds = %switch.lookup69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dy, ptr noundef nonnull align 1 dereferenceable(1) %switch.load74, i64 %switch.ext72, i1 false)
  %i.ee = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %switch.ext72
  store ptr %i.ef, ptr %i.cr, align 8, !tbaa !14
  br label %_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit

_ZNK4llvm12DenormalMode5printERNS_11raw_ostreamEbb.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i31, %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.ad, %bb.ac, %bb.y, %bb.j, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm26cannotOrderStrictlyGreaterENS_11FPClassTestES0_b(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 1020                         ; 2 uses
  %i.b = and i32 %1, 1020                         ; 3 uses
  %i.c = icmp eq i32 %i.a, 0
  %i.d = icmp eq i32 %i.b, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %i.b
  %i.f = and i32 %i.b, %i.e                       ; 2 uses
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false) ; 2 uses
  %i.h = lshr exact i32 -2147483648, %i.g
  %i.i = icmp ne i32 %i.f, 32
  %i.j = icmp ne i32 %i.g, 26
  %i.k = select i1 %2, i1 true, i1 %i.i
  %.011.i = select i1 %i.k, i32 %i.f, i32 64      ; 3 uses
  %i.l = or i1 %2, %i.j
  %.0.i = select i1 %i.l, i32 %i.h, i32 64        ; 2 uses
  %i.m = icmp samesign ugt i32 %.011.i, %.0.i
  br i1 %i.m, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %.011.i, %.0.i
  br i1 %i.n, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %.011.i, 612
  %i.p = icmp ne i32 %i.o, 0
  br label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit

_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ %i.p, %bb.d ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm28cannotOrderStrictlyGreaterEqENS_11FPClassTestES0_b(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 1020                         ; 2 uses
  %i.b = and i32 %1, 1020                         ; 3 uses
  %i.c = icmp eq i32 %i.a, 0
  %i.d = icmp eq i32 %i.b, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %i.b
  %i.f = and i32 %i.b, %i.e                       ; 2 uses
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false) ; 2 uses
  %i.h = lshr exact i32 -2147483648, %i.g
  %i.i = icmp ne i32 %i.f, 32
  %i.j = icmp ne i32 %i.g, 26
  %i.k = select i1 %2, i1 true, i1 %i.i
  %.011.i = select i1 %i.k, i32 %i.f, i32 64
  %i.l = or i1 %2, %i.j
  %.0.i = select i1 %i.l, i32 %i.h, i32 64
  %i.m = icmp samesign ugt i32 %.011.i, %.0.i
  br label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit

_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit: ; preds = %bb.b, %bb.a
  %.1.i = phi i1 [ true, %bb.a ], [ %i.m, %bb.b ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm23cannotOrderStrictlyLessENS_11FPClassTestES0_b(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1020                         ; 2 uses
  %i.b = and i32 %0, 1020                         ; 3 uses
  %i.c = icmp eq i32 %i.a, 0
  %i.d = icmp eq i32 %i.b, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %i.b
  %i.f = and i32 %i.b, %i.e                       ; 2 uses
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false) ; 2 uses
  %i.h = lshr exact i32 -2147483648, %i.g
  %i.i = icmp ne i32 %i.f, 32
  %i.j = icmp ne i32 %i.g, 26
  %i.k = select i1 %2, i1 true, i1 %i.i
  %.011.i = select i1 %i.k, i32 %i.f, i32 64      ; 3 uses
  %i.l = or i1 %2, %i.j
  %.0.i = select i1 %i.l, i32 %i.h, i32 64        ; 2 uses
  %i.m = icmp samesign ugt i32 %.011.i, %.0.i
  br i1 %i.m, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %.011.i, %.0.i
  br i1 %i.n, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %.011.i, 612
  %i.p = icmp ne i32 %i.o, 0
  br label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit

_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ true, %bb.b ], [ %i.p, %bb.d ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm25cannotOrderStrictlyLessEqENS_11FPClassTestES0_b(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1020                         ; 2 uses
  %i.b = and i32 %0, 1020                         ; 3 uses
  %i.c = icmp eq i32 %i.a, 0
  %i.d = icmp eq i32 %i.b, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 0, %i.b
  %i.f = and i32 %i.b, %i.e                       ; 2 uses
  %i.g = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 false) ; 2 uses
  %i.h = lshr exact i32 -2147483648, %i.g
  %i.i = icmp ne i32 %i.f, 32
  %i.j = icmp ne i32 %i.g, 26
  %i.k = select i1 %2, i1 true, i1 %i.i
  %.011.i = select i1 %i.k, i32 %i.f, i32 64
  %i.l = or i1 %2, %i.j
  %.0.i = select i1 %i.l, i32 %i.h, i32 64
  %i.m = icmp samesign ugt i32 %.011.i, %.0.i
  br label %_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit

_ZL30cannotOrderStrictlyGreaterImplN4llvm11FPClassTestES0_bb.exit: ; preds = %bb.b, %bb.a
  %.1.i = phi i1 [ true, %bb.a ], [ %i.m, %bb.b ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 1021) i32 @_ZN4llvm19orderedStrictlyLessENS_11FPClassTestEb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 1020
  %i.b = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 false)
  %i.c = sub nuw nsw i32 32, %i.b
  %i.d = lshr i32 -1, %i.c                        ; 2 uses
  %.not = icmp ugt i32 %i.d, 95
  %or.cond = or i1 %1, %.not
  %.0.v = select i1 %or.cond, i32 1020, i32 924
  %.0 = and i32 %.0.v, %i.d
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 1021) i32 @_ZN4llvm22orderedStrictlyGreaterENS_11FPClassTestEb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %i.b = icmp eq i32 %0, 0
  %i.c = lshr i32 -1, %i.a
  %i.d = and i32 %i.c, 1020
  %i.e = xor i32 %i.d, 1020
  %i.f = select i1 %i.b, i32 1020, i32 %i.e       ; 3 uses
  %i.g = and i32 %i.f, 96
  %.not = icmp eq i32 %i.g, 96
  %or.cond = or i1 %1, %.not
  %i.h = and i32 %i.f, 924
  %.0 = select i1 %or.cond, i32 %i.f, i32 %i.h
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #3
end_hunk_0
