Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUBaseInfo?download=true
inline.NumInlined: 2337
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4llvm6AMDGPU7IsaInfo24getOccupancyWithNumSGPRsEjjjjj:bb.a
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = sub i32 %0, %i.b
  %i.d = udiv i32 %i.c, %3
  %i.e = add i32 %i.d, %i.b
  %i.f = mul i32 %i.e, %3
  %i.g = add i32 %i.f, %4                         ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = udiv i32 %2, %i.g                        ; 2 uses
  %i.i = icmp ugt i32 %i.g, %2
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %i.k = icmp ult i32 %1, %i.j
  %..i.i.val = select i1 %i.i, i32 1, i32 %i.h
  %.pre = select i1 %i.k, i32 %1, i32 %..i.i.val
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i32 [ %.pre, %bb.b ], [ %1, %bb.a ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 801) i32 @_ZN4llvm6AMDGPU7IsaInfo24getOccupancyWithNumSGPRsERKNS_15MCSubtargetInfoEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = and i64 %i.b, 8
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.f = and i64 %i.e, 1188950301625810944
  %or.cond.i.i = icmp eq i64 %i.f, 0
  br i1 %or.cond.i.i, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i

_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i: ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  %i.h = and i64 %i.b, 2
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.i, %i.g
  br i1 %i.j, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i, label %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit

_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i: ; preds = %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i, %bb.b
  %i.k = and i64 %i.e, 144115188075855872
  %.not3.i = icmp eq i64 %i.k, 0
  %i.l = select i1 %.not3.i, i32 20, i32 16
  br label %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit

_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit: ; preds = %bb.a, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i
  %.0.i = phi i32 [ 8, %bb.a ], [ %i.l, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i ], [ 10, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !188
  %i.q = tail call { i64, i32 } @_ZN4llvm6AMDGPU13getIsaVersionENS_9StringRefE(ptr %i.n, i64 %i.p) #30
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.q, 0
  %.sroa.03.0.extract.trunc.i = trunc i64 %.fca.0.extract.i to i32
  %i.r = icmp ult i32 %.sroa.03.0.extract.trunc.i, 10
  br i1 %i.r, label %bb.c, label %_ZN4llvm6AMDGPU7IsaInfo24getOccupancyWithNumSGPRsEjjjjj.exit

bb.c:                                             ; preds = %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.t = load i64, ptr %i.o, align 8, !tbaa !188
  %i.u = tail call { i64, i32 } @_ZN4llvm6AMDGPU13getIsaVersionENS_9StringRefE(ptr %i.s, i64 %i.t) #30
  %.fca.0.extract.i8 = extractvalue { i64, i32 } %i.u, 0
  %i.v = and i64 %.fca.0.extract.i8, 4294967288
  %.not.i9 = icmp eq i64 %i.v, 0
  %..i = select i1 %.not.i9, i32 512, i32 800     ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.x = load i64, ptr %i.o, align 8, !tbaa !188
  %i.y = tail call { i64, i32 } @_ZN4llvm6AMDGPU13getIsaVersionENS_9StringRefE(ptr %i.w, i64 %i.x) #30
  %.fca.0.extract.i10 = extractvalue { i64, i32 } %i.y, 0
  %.sroa.03.0.extract.trunc.i11 = trunc i64 %.fca.0.extract.i10 to i32 ; 2 uses
  %i.z = icmp ugt i32 %.sroa.03.0.extract.trunc.i11, 9
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !50
  %i.ac = and i64 %i.ab, 8589934592
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN4llvm6AMDGPU7IsaInfo19getSGPRAllocGranuleERKNS_15MCSubtargetInfoE.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !188
  %i.af = tail call { i64, i32 } @_ZN4llvm6AMDGPU13getIsaVersionENS_9StringRefE(ptr %i.ad, i64 %i.ae) #30
  %.fca.0.extract.i.i = extractvalue { i64, i32 } %i.af, 0
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %.fca.0.extract.i.i to i32 ; 2 uses
  %i.ag = icmp ugt i32 %.sroa.03.0.extract.trunc.i.i, 9
  %i.ah = icmp ugt i32 %.sroa.03.0.extract.trunc.i.i, 7
  %..i.i = select i1 %i.ah, i32 102, i32 104
  %.0.i.i = select i1 %i.ag, i32 106, i32 %..i.i
  br label %_ZN4llvm6AMDGPU7IsaInfo19getSGPRAllocGranuleERKNS_15MCSubtargetInfoE.exit

bb.f:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ult i32 %.sroa.03.0.extract.trunc.i11, 8
  %..i12 = select i1 %.inv.i, i32 8, i32 16
  br label %_ZN4llvm6AMDGPU7IsaInfo19getSGPRAllocGranuleERKNS_15MCSubtargetInfoE.exit

_ZN4llvm6AMDGPU7IsaInfo19getSGPRAllocGranuleERKNS_15MCSubtargetInfoE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i13 = phi i32 [ %..i12, %bb.f ], [ %.0.i.i, %bb.e ], [ 96, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val = load i64, ptr %i.ai, align 8, !tbaa !50
  %.not.i14 = icmp sgt i64 %.val, -1
  %i.aj = select i1 %.not.i14, i32 0, i32 16
  %i.ak = icmp ne i32 %1, 0
  %i.al = zext i1 %i.ak to i32                    ; 2 uses
  %i.am = sub i32 %1, %i.al
  %i.an = udiv i32 %i.am, %.0.i13
  %i.ao = add nuw nsw i32 %i.an, %i.al
  %i.ap = mul i32 %i.ao, %.0.i13
  %i.aq = add i32 %i.ap, %i.aj                    ; 3 uses
  %.not.i15 = icmp eq i32 %i.aq, 0
  br i1 %.not.i15, label %_ZN4llvm6AMDGPU7IsaInfo24getOccupancyWithNumSGPRsEjjjjj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm6AMDGPU7IsaInfo19getSGPRAllocGranuleERKNS_15MCSubtargetInfoE.exit
  %i.ar = udiv i32 %..i, %i.aq                    ; 2 uses
  %i.as = icmp ugt i32 %i.aq, %..i
  %i.at = icmp samesign ugt i32 %i.ar, %.0.i
  %..i.i.val.i = select i1 %i.as, i32 1, i32 %i.ar
  %.pre.i = select i1 %i.at, i32 %.0.i, i32 %..i.i.val.i
  br label %_ZN4llvm6AMDGPU7IsaInfo24getOccupancyWithNumSGPRsEjjjjj.exit

_ZN4llvm6AMDGPU7IsaInfo24getOccupancyWithNumSGPRsEjjjjj.exit: ; preds = %bb.g, %_ZN4llvm6AMDGPU7IsaInfo19getSGPRAllocGranuleERKNS_15MCSubtargetInfoE.exit, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit
  %.0 = phi i32 [ %.0.i, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit ], [ %.pre.i, %bb.g ], [ %.0.i, %_ZN4llvm6AMDGPU7IsaInfo19getSGPRAllocGranuleERKNS_15MCSubtargetInfoE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 1025) i32 @_ZN4llvm6AMDGPU7IsaInfo14getMinNumVGPRsERKNS_15MCSubtargetInfoEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
tailrecurse.peel.begin:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 8
  %.not.i = icmp eq i64 %i.c, 0                   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1188950301625810944
  %or.cond.i.i = icmp ne i64 %i.g, 0              ; 6 uses
  %i.h = icmp slt i64 %i.f, 0
  %i.i = and i64 %i.b, 2
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.j, %i.h                         ; 6 uses
  %i.l = and i64 %i.f, 144115188075855872
  %.not3.i = icmp eq i64 %i.l, 0                  ; 5 uses
  %i.m = select i1 %.not3.i, i32 20, i32 16       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.o = load i64, ptr %i.n, align 8
  %i.p = and i64 %i.o, 8589934592
  %.not6.i = icmp eq i64 %i.p, 0                  ; 7 uses
  %i.q = load i64, ptr %i.d, align 8              ; 2 uses
  %i.r = and i64 %i.q, 16
  %.not7.i = icmp eq i64 %i.r, 0                  ; 7 uses
  %i.s = select i1 %.not6.i, i16 768, i16 1536
  %i.t = select i1 %.not6.i, i16 512, i16 1024
  %.0.i38 = select i1 %.not7.i, i16 %i.t, i16 %i.s ; 2 uses
  %i.u = and i64 %i.q, 8
  %.not.i7.i = icmp eq i64 %i.u, 0
  %i.v = select i1 %.not6.i, i32 512, i32 1024    ; 3 uses
  %.0.i.i = select i1 %.not.i7.i, i32 256, i32 %i.v ; 2 uses
  %i.w = select i1 %.not6.i, i32 12, i32 24       ; 4 uses
  %i.x = select i1 %.not6.i, i32 8, i32 16        ; 4 uses
  %i.y = select i1 %.not6.i, i32 4, i32 8         ; 4 uses
  %i.z = select i1 %.not6.i, i32 768, i32 1536    ; 2 uses
  %i.aa = icmp eq i32 %2, 0
  br i1 %i.aa, label %bb.a, label %.loopexit

bb.a:                                             ; preds = %tailrecurse.peel.begin
  br i1 %.not.i, label %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.peel, label %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel

_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel: ; preds = %bb.a
  %.not3456.peel = icmp ult i32 %1, 8
  br i1 %.not3456.peel, label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.peel, label %.loopexit

_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.peel: ; preds = %bb.a
  %brmerge.peel = select i1 %or.cond.i.i, i1 true, i1 %i.k ; 2 uses
  %.0.i.peel = select i1 %brmerge.peel, i32 %i.m, i32 10 ; 2 uses
  %.not34.peel = icmp ult i32 %1, %.0.i.peel
  br i1 %.not34.peel, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.peel
  %..peel = select i1 %.not3.i, i32 %i.y, i32 %i.x
  %spec.select.peel = select i1 %.not7.i, i32 %..peel, i32 %i.w
  %i.ab = trunc nuw nsw i32 %.0.i.peel to i16
  %i.ac = select i1 %brmerge.peel, i16 %.0.i38, i16 256
  br label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.peel

_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.peel: ; preds = %bb.b, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel
  %.0.i4071.peel = phi i32 [ %.0.i.i, %bb.b ], [ 512, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel ] ; 2 uses
  %.0.i57596270.peel = phi i16 [ %i.ab, %bb.b ], [ 8, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel ]
  %.1.i6469.peel = phi i16 [ %i.ac, %bb.b ], [ 512, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel ] ; 3 uses
  %.1.i41.peel = phi i32 [ %spec.select.peel, %bb.b ], [ 8, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel ] ; 3 uses
  %.rhs.trunc.peel = trunc nuw nsw i32 %1 to i16  ; 2 uses
  %i.ad = udiv i16 %.1.i6469.peel, %.rhs.trunc.peel ; 2 uses
  %.zext.peel = zext nneg i16 %i.ad to i32
  %.rhs.trunc73.peel = trunc nuw nsw i32 %.1.i41.peel to i16 ; 2 uses
  %i.ae = urem i16 %i.ad, %.rhs.trunc73.peel
  %.zext74.peel = zext nneg i16 %i.ae to i32
  %3 = sub nuw nsw i32 %.zext.peel, %.zext74.peel ; 2 uses
  %i.af = udiv i16 %.1.i6469.peel, %.0.i57596270.peel ; 2 uses
  %.zext77.peel = zext nneg i16 %i.af to i32
  %.lhs.trunc78.peel = trunc nuw i16 %i.af to i8
  %.rhs.trunc79.peel = trunc nuw nsw i32 %.1.i41.peel to i8
  %i.ag = urem i8 %.lhs.trunc78.peel, %.rhs.trunc79.peel
  %.zext80.peel = zext nneg i8 %i.ag to i32
  %i.ah = sub nsw i32 %.zext77.peel, %.zext80.peel
  %i.ai = icmp eq i32 %3, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.peel
  br i1 %.not.i, label %bb.d, label %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel

bb.d:                                             ; preds = %bb.c
  %.98.peel = select i1 %.not3.i, i32 %i.y, i32 %i.x
  %.1.i.ph.i.peel = select i1 %.not7.i, i32 %.98.peel, i32 %i.w
  %brmerge99.peel = select i1 %or.cond.i.i, i1 true, i1 %i.k
  %.0.i9.i.peel = select i1 %.not7.i, i32 %i.v, i32 %i.z
  %i.aj = select i1 %or.cond.i.i, i1 true, i1 %i.k
  %spec.select100.peel = select i1 %i.aj, i32 %i.m, i32 10
  %spec.select101.peel = select i1 %brmerge99.peel, i32 %.0.i9.i.peel, i32 256
  br label %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel

_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel: ; preds = %bb.d, %bb.c
  %.0.i19.i.peel = phi i32 [ %spec.select100.peel, %bb.d ], [ 8, %bb.c ]
  %.1.i1317.i.peel = phi i32 [ %.1.i.ph.i.peel, %bb.d ], [ 8, %bb.c ] ; 2 uses
  %.1.i6.i.peel = phi i32 [ %spec.select101.peel, %bb.d ], [ 512, %bb.c ] ; 2 uses
  %i.ak = trunc nuw nsw i32 %.0.i4071.peel to i16
  %.lhs.trunc87.peel = add nsw i16 %i.ak, -1
  %.rhs.trunc88.peel = trunc nuw nsw i32 %.1.i1317.i.peel to i16
  %i.al = udiv i16 %.lhs.trunc87.peel, %.rhs.trunc88.peel
  %.zext89.peel = zext nneg i16 %i.al to i32
  %i.am = add nuw nsw i32 %.zext89.peel, 1
  %i.an = mul nuw nsw i32 %i.am, %.1.i1317.i.peel ; 2 uses
  %.lhs.trunc90.peel = trunc nuw nsw i32 %.1.i6.i.peel to i16
  %.rhs.trunc91.peel = trunc nuw nsw i32 %i.an to i16
  %i.ao = udiv i16 %.lhs.trunc90.peel, %.rhs.trunc91.peel
  %.zext92.peel = zext nneg i16 %i.ao to i32
  %i.ap = icmp samesign ugt i32 %i.an, %.1.i6.i.peel
  %i.aq = tail call i32 @llvm.umin.i32(i32 %.0.i19.i.peel, i32 %.zext92.peel)
  %.sroa.speculated.i.i.peel = select i1 %i.ap, i32 1, i32 %i.aq ; 2 uses
  %i.ar = icmp samesign ult i32 %1, %.sroa.speculated.i.i.peel
  br i1 %i.ar, label %tailrecurse.peel.next, label %.loopexit104

tailrecurse.peel.next:                            ; preds = %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel
  %brmerge = select i1 %or.cond.i.i, i1 true, i1 %i.k ; 2 uses
  %.0.i = select i1 %brmerge, i32 %i.m, i32 10    ; 2 uses
  %. = select i1 %.not3.i, i32 %i.y, i32 %i.x
  %spec.select = select i1 %.not7.i, i32 %., i32 %i.w
  %i.as = trunc nuw nsw i32 %.0.i to i16
  %i.at = select i1 %brmerge, i16 %.0.i38, i16 256
  %.98 = select i1 %.not3.i, i32 %i.y, i32 %i.x
  %.1.i.ph.i = select i1 %.not7.i, i32 %.98, i32 %i.w
  %brmerge99 = select i1 %or.cond.i.i, i1 true, i1 %i.k
  %.0.i9.i = select i1 %.not7.i, i32 %i.v, i32 %i.z
  %i.au = select i1 %or.cond.i.i, i1 true, i1 %i.k
  %spec.select100 = select i1 %i.au, i32 %i.m, i32 10
  %spec.select101 = select i1 %brmerge99, i32 %.0.i9.i, i32 256
  %.0.i19.i = select i1 %.not.i, i32 %spec.select100, i32 8
  %.1.i1317.i = select i1 %.not.i, i32 %.1.i.ph.i, i32 8 ; 2 uses
  %.1.i6.i = select i1 %.not.i, i32 %spec.select101, i32 512 ; 2 uses
  %.rhs.trunc88 = trunc nuw nsw i32 %.1.i1317.i to i16
  %.lhs.trunc90 = trunc nuw nsw i32 %.1.i6.i to i16
  br label %bb.e

bb.e:                                             ; preds = %tailrecurse.peel.next, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i
  %.tr94 = phi i32 [ %.sroa.speculated.i.i.peel, %tailrecurse.peel.next ], [ %.sroa.speculated.i.i, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i ] ; 4 uses
  br i1 %.not.i, label %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit, label %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread

_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit: ; preds = %bb.e
  %.not34 = icmp ult i32 %.tr94, %.0.i
  br i1 %.not34, label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit, label %.loopexit

_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread: ; preds = %bb.e
  %.not3456 = icmp ult i32 %.tr94, 8
  br i1 %.not3456, label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit, label %.loopexit

_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit: ; preds = %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread
  %.0.i4071 = phi i32 [ 512, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread ], [ %.0.i.i, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit ] ; 2 uses
  %.0.i57596270 = phi i16 [ 8, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread ], [ %i.as, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit ]
  %.1.i6469 = phi i16 [ 512, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread ], [ %i.at, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit ] ; 3 uses
  %.1.i41 = phi i32 [ 8, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread ], [ %spec.select, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit ] ; 3 uses
  %.rhs.trunc = trunc nsw i32 %.tr94 to i16       ; 2 uses
  %i.av = udiv i16 %.1.i6469, %.rhs.trunc         ; 2 uses
  %.zext = zext nneg i16 %i.av to i32
  %.rhs.trunc73 = trunc nuw nsw i32 %.1.i41 to i16 ; 2 uses
  %i.aw = urem i16 %i.av, %.rhs.trunc73
  %.zext74 = zext nneg i16 %i.aw to i32
  %4 = sub nuw nsw i32 %.zext, %.zext74           ; 2 uses
  %i.ax = udiv i16 %.1.i6469, %.0.i57596270       ; 2 uses
  %.zext77 = zext nneg i16 %i.ax to i32
  %.lhs.trunc78 = trunc nuw i16 %i.ax to i8
  %.rhs.trunc79 = trunc nuw nsw i32 %.1.i41 to i8
  %i.ay = urem i8 %.lhs.trunc78, %.rhs.trunc79
  %.zext80 = zext nneg i8 %i.ay to i32
  %i.az = sub nsw i32 %.zext77, %.zext80
  %i.ba = icmp eq i32 %4, %i.az
  br i1 %i.ba, label %.loopexit, label %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i

_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i: ; preds = %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit
  %i.bb = trunc nuw nsw i32 %.0.i4071 to i16
  %.lhs.trunc87 = add nsw i16 %i.bb, -1
  %i.bc = udiv i16 %.lhs.trunc87, %.rhs.trunc88
  %narrow = add nuw nsw i16 %i.bc, 1
  %i.bd = zext i16 %narrow to i32
  %i.be = mul nuw nsw i32 %.1.i1317.i, %i.bd      ; 2 uses
  %.rhs.trunc91 = trunc nuw nsw i32 %i.be to i16
  %i.bf = udiv i16 %.lhs.trunc90, %.rhs.trunc91
  %.zext92 = zext nneg i16 %i.bf to i32
  %i.bg = icmp samesign ugt i32 %i.be, %.1.i6.i
  %i.bh = tail call i32 @llvm.umin.i32(i32 %.0.i19.i, i32 %.zext92)
  %.sroa.speculated.i.i = select i1 %i.bg, i32 1, i32 %i.bh ; 2 uses
  %i.bi = icmp samesign ult i32 %.tr94, %.sroa.speculated.i.i
  br i1 %i.bi, label %bb.e, label %.loopexit104, !llvm.loop !345

.loopexit104:                                     ; preds = %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel
  %.rhs.trunc85.pre-phi = phi i16 [ %.rhs.trunc73.peel, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel ], [ %.rhs.trunc73, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i ]
  %.pre-phi = phi i16 [ %.rhs.trunc.peel, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel ], [ %.rhs.trunc, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i ]
  %.0.i4071.lcssa = phi i32 [ %.0.i4071.peel, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel ], [ %.0.i4071, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i ]
  %.1.i6469.lcssa = phi i16 [ %.1.i6469.peel, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel ], [ %.1.i6469, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i ]
  %.1.i41.lcssa = phi i32 [ %.1.i41.peel, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel ], [ %.1.i41, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i ]
  %.lcssa = phi i32 [ %3, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i.peel ], [ %4, %_ZN4llvm6AMDGPU7IsaInfo16getTotalNumVGPRsERKNS_15MCSubtargetInfoE.exit.i ]
  %.rhs.trunc82 = add i16 %.pre-phi, 1
  %i.bj = udiv i16 %.1.i6469.lcssa, %.rhs.trunc82 ; 2 uses
  %.zext83 = zext nneg i16 %i.bj to i32
  %i.bk = urem i16 %i.bj, %.rhs.trunc85.pre-phi
  %.zext86 = zext nneg i16 %i.bk to i32
  %5 = sub nuw nsw i32 %.zext83, %.zext86
  %i.bl = sub nsw i32 %.lcssa, %.1.i41.lcssa
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %5, i32 %i.bl)
  %i.bm = add nuw nsw i32 %.sroa.speculated, 1
  %.sroa.speculated47 = tail call i32 @llvm.umin.i32(i32 %.0.i4071.lcssa, i32 %i.bm)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit, %tailrecurse.peel.begin, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.peel, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.peel, %.loopexit104
  %.3 = phi i32 [ %.sroa.speculated47, %.loopexit104 ], [ 0, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.peel ], [ 0, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread.peel ], [ 0, %tailrecurse.peel.begin ], [ 0, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.peel ], [ 0, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit ], [ 0, %_ZN4llvm6AMDGPU7IsaInfo16getMaxWavesPerEUERKNS_15MCSubtargetInfoE.exit.thread ], [ 0, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, -7) i32 @_ZN4llvm6AMDGPU7IsaInfo14getMaxNumVGPRsERKNS_15MCSubtargetInfoEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %i.d = and i64 %i.c, 8
  %.not.i12 = icmp eq i64 %i.d, 0                 ; 2 uses
  br i1 %.not, label %.split9, label %.split

.split:                                           ; preds = %bb.a
  br i1 %.not.i12, label %bb.b, label %_ZN4llvm6AMDGPU7IsaInfo22getAddressableNumVGPRsERKNS_15MCSubtargetInfoEj.exit

bb.b:                                             ; preds = %.split
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = and i64 %i.f, 1188950301625810944
  %or.cond.i.i = icmp eq i64 %i.g, 0
  br i1 %or.cond.i.i, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i

_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i: ; preds = %bb.b
  %i.h = icmp slt i64 %i.f, 0
  %i.i = and i64 %i.c, 2
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.j, %i.h
  br i1 %i.k, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i, label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.i

_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i: ; preds = %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50
  %i.n = and i64 %i.m, 8589934592
  %.not6.i = icmp eq i64 %i.n, 0                  ; 2 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !50
  %i.p = and i64 %i.o, 16
  %.not7.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not6.i, i32 768, i32 1536
  %i.r = select i1 %.not6.i, i32 512, i32 1024
  %.0.i = select i1 %.not7.i, i32 %i.r, i32 %i.q
  br label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.i

_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.i: ; preds = %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i
  %.1.i.ph = phi i32 [ 256, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i ], [ %.0.i, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i ]
  %i.s = shl i32 %2, 3
  br label %_ZN4llvm6AMDGPU7IsaInfo22getAddressableNumVGPRsERKNS_15MCSubtargetInfoEj.exit

.split9:                                          ; preds = %bb.a
  br i1 %.not.i12, label %bb.c, label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit

bb.c:                                             ; preds = %.split9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 3 uses
  %i.v = and i64 %i.u, 1188950301625810944
  %or.cond.i.i14 = icmp eq i64 %i.v, 0
  br i1 %or.cond.i.i14, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i15

_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19: ; preds = %bb.c
  %i.w = icmp slt i64 %i.u, 0
  %i.x = and i64 %i.c, 2
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.y, %i.w
  br i1 %i.z, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i15, label %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19._crit_edge

_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19._crit_edge: ; preds = %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre39 = load i64, ptr %i.a, align 8, !tbaa !50
  %.pre40 = and i64 %.pre, 8589934592
  br label %bb.d

_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i15: ; preds = %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !50
  %i.ac = and i64 %i.ab, 8589934592               ; 2 uses
  %.not6.i16 = icmp eq i64 %i.ac, 0               ; 2 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.ae = and i64 %i.ad, 16
  %.not7.i17 = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not6.i16, i32 768, i32 1536
  %i.ag = select i1 %.not6.i16, i32 512, i32 1024
  %.0.i18 = select i1 %.not7.i17, i32 %i.ag, i32 %i.af
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19._crit_edge, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i15
  %.pre-phi = phi i64 [ %.pre40, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19._crit_edge ], [ %i.ac, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i15 ]
  %i.ah = phi i64 [ %.pre39, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19._crit_edge ], [ %i.ad, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i15 ] ; 2 uses
  %.1.i13.ph = phi i32 [ 256, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.i19._crit_edge ], [ %.0.i18, %_ZN4llvm6AMDGPU11isGFX10PlusERKNS_15MCSubtargetInfoE.exit.thread.i15 ]
  %i.ai = udiv i32 %.1.i13.ph, %1                 ; 2 uses
  %.not38 = icmp eq i64 %.pre-phi, 0              ; 4 uses
  %i.aj = and i64 %i.ah, 16
  %.not12.i = icmp eq i64 %i.aj, 0
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = select i1 %.not38, i16 12, i16 24
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.al = and i64 %i.u, 144115188075855872
  %.not13.i = icmp eq i64 %i.al, 0
  br i1 %.not13.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = select i1 %.not38, i16 8, i16 16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.an = select i1 %.not38, i16 4, i16 8
  br label %bb.i

_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit: ; preds = %.split9
  %i.ao = udiv i32 512, %1
  %i.ap = and i32 %i.ao, 1016
  br label %_ZN4llvm6AMDGPU7IsaInfo22getAddressableNumVGPRsERKNS_15MCSubtargetInfoEj.exit

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h
  %.1.i21.ph = phi i16 [ %i.am, %bb.g ], [ %i.ak, %bb.e ], [ %i.an, %bb.h ]
  %.lhs.trunc = trunc nuw nsw i32 %i.ai to i16
  %i.aq = urem i16 %.lhs.trunc, %.1.i21.ph
  %.zext = zext nneg i16 %i.aq to i32
  %i.ar = sub nsw i32 %i.ai, %.zext
  %i.as = and i64 %i.ah, 8
  %.not.i7.i24 = icmp eq i64 %i.as, 0
  %i.at = select i1 %.not38, i32 512, i32 1024
  %.0.i.i26 = select i1 %.not.i7.i24, i32 256, i32 %i.at
  br label %_ZN4llvm6AMDGPU7IsaInfo22getAddressableNumVGPRsERKNS_15MCSubtargetInfoEj.exit

_ZN4llvm6AMDGPU7IsaInfo22getAddressableNumVGPRsERKNS_15MCSubtargetInfoEj.exit: ; preds = %bb.i, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.i, %.split
  %.0 = phi i32 [ %.1.i.ph, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.i ], [ 512, %.split ], [ %i.ar, %bb.i ], [ %i.ap, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit ]
  %phi.call = phi i32 [ %i.s, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit.i ], [ 512, %.split ], [ %.0.i.i26, %bb.i ], [ 512, %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %phi.call, i32 %.0)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 1073741824) i32 @_ZN4llvm6AMDGPU7IsaInfo23getEncodedNumVGPRBlocksERKNS_15MCSubtargetInfoEjSt8optionalIbE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, i32 noundef %1, i16 %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = and i64 %i.b, 8
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN4llvm6AMDGPU7IsaInfo22getVGPREncodingGranuleERKNS_15MCSubtargetInfoESt8optionalIbE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = and i16 %2, 256
  %.not5.i = icmp eq i16 %i.e, 0
  %i.f = trunc i16 %2 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 8589934592
  %i.j = icmp ne i64 %i.i, 0
  %i.k = select i1 %.not5.i, i1 %i.j, i1 %i.f     ; 2 uses
  %i.l = load i64, ptr %i.d, align 8, !tbaa !50
  %i.m = and i64 %i.l, 8
  %.not6.i = icmp eq i64 %i.m, 0
  %i.n = select i1 %i.k, i32 16, i32 8
  %i.o = select i1 %i.k, i32 8, i32 4
  %.0.i = select i1 %.not6.i, i32 %i.o, i32 %i.n
  br label %_ZN4llvm6AMDGPU7IsaInfo22getVGPREncodingGranuleERKNS_15MCSubtargetInfoESt8optionalIbE.exit

_ZN4llvm6AMDGPU7IsaInfo22getVGPREncodingGranuleERKNS_15MCSubtargetInfoESt8optionalIbE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.b ], [ 8, %bb.a ]
  %i.p = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 1)
  %i.q = udiv i32 %i.p, %.1.i
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 1, 0) i32 @_ZN4llvm6AMDGPU7IsaInfo25getAllocatedNumVGPRBlocksERKNS_15MCSubtargetInfoEjjSt8optionalIbE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, i32 noundef %1, i32 noundef %2, i16 %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  %i.d = and i64 %i.c, 8
  %.not10.i = icmp eq i64 %i.d, 0
  br i1 %.not10.i, label %bb.b, label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvm6AMDGPU7IsaInfo19getVGPRAllocGranuleERKNS_15MCSubtargetInfoEjSt8optionalIbE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = and i16 %3, 256
  %.not11.i = icmp eq i16 %i.e, 0
  %i.f = trunc i16 %3 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 8589934592
  %i.j = icmp ne i64 %i.i, 0
  %i.k = select i1 %.not11.i, i1 %i.j, i1 %i.f    ; 3 uses
end_hunk_0
