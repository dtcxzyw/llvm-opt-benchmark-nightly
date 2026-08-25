Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugFrameDataSubsection?download=true
begin_hunk_0_@_ZN4llvm18BinaryStreamReader9readArrayINS_8codeview9FrameDataEEENS_5ErrorERNS_16FixedStreamArrayIT_EEj:bb.a

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i21
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #16
  br label %_ZN4llvm16FixedStreamArrayINS_8codeview9FrameDataEEaSERKS3_.exit25

_ZN4llvm16FixedStreamArrayINS_8codeview9FrameDataEEaSERKS3_.exit25: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i21, %bb.w
  store ptr %i.aa, ptr %i.ax, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  br i1 %.not.i.i.i.i.i11, label %_ZN4llvm5ErrorD2Ev.exit32, label %bb.x

.sink.split:                                      ; preds = %_ZN4llvm16FixedStreamArrayINS_8codeview9FrameDataEEC2ENS_15BinaryStreamRefE.exit, %_ZN4llvm16FixedStreamArrayINS_8codeview9FrameDataEEaSERKS3_.exit25.thread60
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_ZN4llvm16FixedStreamArrayINS_8codeview9FrameDataEEaSERKS3_.exit25
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 8 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bp, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !59
  %i.bu = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #16, !inline_history !69
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #16, !inline_history !69
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i27 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i27, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

bb.ab:                                            ; preds = %bb.z
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i29 = phi i32 [ %i.bs, %bb.aa ], [ %i.cc, %bb.ab ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i29, 1
  br i1 %i.cd, label %bb.ac, label %bb.ad, !prof !62

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i28, %bb.ac
  %i.ce = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.bp, align 8, !tbaa !57
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !59
  %i.ci = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #16, !inline_history !70
  %i.cl = load ptr, ptr %i.aa, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #16, !inline_history !70
  br label %_ZN4llvm5ErrorD2Ev.exit32

bb.af:                                            ; preds = %bb.ad
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i31 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i31, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.bp, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cq = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i = phi i32 [ %i.cg, %bb.ag ], [ %i.cq, %bb.ah ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.ai, label %_ZN4llvm5ErrorD2Ev.exit32, !prof !62

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #16
  br label %_ZN4llvm5ErrorD2Ev.exit32

_ZN4llvm5ErrorD2Ev.exit32:                        ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ae, %_ZN4llvm16FixedStreamArrayINS_8codeview9FrameDataEEaSERKS3_.exit25.thread, %_ZN4llvm16FixedStreamArrayINS_8codeview9FrameDataEEaSERKS3_.exit25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store ptr null, ptr %0, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZN4llvm5ErrorD2Ev.exit32
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i33 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i33, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cu, align 8, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !59
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16, !inline_history !70
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16, !inline_history !70
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37

bb.al:                                            ; preds = %bb.aj
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i34 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i34, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

bb.an:                                            ; preds = %bb.al
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i36 = phi i32 [ %i.cx, %bb.am ], [ %i.dh, %bb.an ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i36, 1
  br i1 %i.di, label %bb.ao, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, !prof !62

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #16
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37: ; preds = %.critedge, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i35, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit37, %bb.j, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8codeview27DebugFrameDataSubsectionRef10initializeENS_15BinaryStreamRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 8 uses
  %4 = alloca %"class.llvm::BinaryStreamRef", align 16 ; 4 uses
  %5 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !71
  store <2 x ptr> %i.d, ptr %4, align 16, !tbaa !71
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !61
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !61
  br label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit

_ZN4llvm15BinaryStreamRefC2ERKS0_.exit:           ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @_ZN4llvm18BinaryStreamReaderC1ENS_15BinaryStreamRefE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 8 dereferenceable(48) %4) #16
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.m, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !59
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #16, !inline_history !70
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #16, !inline_history !70
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.j, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, !prof !62

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #16
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit: ; preds = %_ZN4llvm15BinaryStreamRefC2ERKS0_.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %5, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !71
  store <2 x ptr> %i.ag, ptr %i.ab, align 8, !tbaa !71
  %.not.i.i.i.i.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i1, label %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !61
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !61
  br label %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit

bb.m:                                             ; preds = %bb.k
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit

_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit:        ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, %bb.l, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !30
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !30
  call void @_ZN4llvm8codeview27DebugFrameDataSubsectionRef10initializeENS_18BinaryStreamReaderE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull align 8 dereferenceable(64) %5)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %5, align 8, !tbaa !26
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i2, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.as, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !59
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #16, !inline_history !72
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #16, !inline_history !72
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i3 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.av, %bb.q ], [ %i.bf, %bb.r ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.s, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit, !prof !62

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #16, !inline_history !73
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit

_ZN4llvm18BinaryStreamReaderD2Ev.exit:            ; preds = %_ZN4llvm18BinaryStreamReaderC2ERKS0_.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %3, align 8, !tbaa !26
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !56 ; 8 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i4, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit8, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm18BinaryStreamReaderD2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bi, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !59
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #16, !inline_history !72
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #16, !inline_history !72
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit8

bb.v:                                             ; preds = %bb.t
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i5 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i5, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

bb.x:                                             ; preds = %bb.v
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i7 = phi i32 [ %i.bl, %bb.w ], [ %i.bv, %bb.x ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i7, 1
  br i1 %i.bw, label %bb.y, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit8, !prof !62

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #16, !inline_history !73
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit8

_ZN4llvm18BinaryStreamReaderD2Ev.exit8:           ; preds = %_ZN4llvm18BinaryStreamReaderD2Ev.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

declare void @_ZN4llvm18BinaryStreamReaderC1ENS_15BinaryStreamRefE(ptr noundef nonnull align 8 dereferenceable(64), ptr nofree noundef align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_ZNK4llvm8codeview24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterE:bb.a
  %.val.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.019.i.ptr.i.i.i.i.i, align 1 ; 4 uses
  %.val1.i.i.i.i.i.i.i = load i32, ptr %.sroa.017.0, align 1
  %i.ad = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i
  br i1 %i.ad, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.019.i.ptr.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !96
  %i.ae = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i.i, 32
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !97

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.017.0, i64 %.sroa.0.019.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.af, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.017.0, i64 32, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.017.0, ptr noundef nonnull align 1 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(28) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !98
  %.val2.i10.i.i.i.i.i.i.i = load i32, ptr %.pn18.i.i.i.i.i.i, align 1
  %i.ag = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i10.i.i.i.i.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn18.i.i.i.i.i.i, %bb.k ] ; 4 uses
  %.sroa.06.011.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.011.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.012.i.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 1
  %i.ah = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !99

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.sroa.06.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.k ], [ %.sroa.0.012.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  store i32 %.val.i.i.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i, align 1, !tbaa !53
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  br label %bb.l

bb.l:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i.i.i
  %.sroa.0.019.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i, 512
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i": ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 512 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ai, %.sroa.10.0
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_8codeview9FrameDataESaIS3_EEZNKS2_24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterEE3$_0EEvOT_T0_.exit.thread36", label %.lr.ph.i13.i.i.i.i.i

.lr.ph.i13.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i16.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.al, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i16.i.i.i.i.i" ], [ %i.ai, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.07.i.i.i.i.i.i, align 1, !tbaa !53 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i12.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(28) %.sroa.5.0..sroa_idx.i.i14.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !98
  %.sroa.0.09.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -32 ; 2 uses
  %.val2.i10.i.i15.i.i.i.i.i = load i32, ptr %.sroa.0.09.i.i.i.i.i.i.i, align 1
  %i.aj = icmp ult i32 %.sroa.03.0.copyload.i.i.i.i.i.i.i, %.val2.i10.i.i15.i.i.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i20.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i16.i.i.i.i.i"

.lr.ph.i.i20.i.i.i.i.i:                           ; preds = %.lr.ph.i13.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i
  %.sroa.0.012.i.i21.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i23.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ] ; 4 uses
  %.sroa.06.011.i.i22.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i21.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.011.i.i22.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.012.i.i21.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i23.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i21.i.i.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i24.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i23.i.i.i.i.i, align 1
  %i.ak = icmp ult i32 %.sroa.03.0.copyload.i.i.i.i.i.i.i, %.val2.i.i.i24.i.i.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i20.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i16.i.i.i.i.i", !llvm.loop !99

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i16.i.i.i.i.i": ; preds = %.lr.ph.i.i20.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i
  %.sroa.06.0.lcssa.i.i17.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i13.i.i.i.i.i ], [ %.sroa.0.012.i.i21.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i17.i.i.i.i.i, align 1, !tbaa !53
  %.sroa.5.0..sroa_idx5.i.i18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i17.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.5.0..sroa_idx5.i.i18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i12.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i19.i.i.i.i.i = icmp eq ptr %i.al, %.sroa.10.0
  br i1 %.not.i19.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_8codeview9FrameDataESaIS3_EEZNKS2_24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterEE3$_0EEvOT_T0_.exit.thread36", label %.lr.ph.i13.i.i.i.i.i, !llvm.loop !102

bb.m:                                             ; preds = %bb.g
  %.not17.i28.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i.i, %.sroa.10.0
  br i1 %.not17.i28.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_8codeview9FrameDataESaIS3_EEZNKS2_24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterEE3$_0EEvOT_T0_.exit.thread36", label %.lr.ph.i29.i.i.i.i.i

.lr.ph.i29.i.i.i.i.i:                             ; preds = %bb.m, %bb.s
  %.sroa.0.019.i30.i.i.i.i.i = phi ptr [ %.sroa.0.0.i39.i.i.i.i.i, %bb.s ], [ %scevgep.i.i.i.i.i, %bb.m ] ; 7 uses
  %.pn18.i31.i.i.i.i.i = phi ptr [ %.sroa.0.019.i30.i.i.i.i.i, %bb.s ], [ %.sroa.017.0, %bb.m ] ; 5 uses
  %.val.i.i32.i.i.i.i.i = load i32, ptr %.sroa.0.019.i30.i.i.i.i.i, align 1 ; 4 uses
  %.val1.i.i33.i.i.i.i.i = load i32, ptr %.sroa.017.0, align 1
  %i.am = icmp ult i32 %.val.i.i32.i.i.i.i.i, %.val1.i.i33.i.i.i.i.i
  br i1 %i.am, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.lr.ph.i29.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.019.i30.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !96
  %i.an = ptrtoint ptr %.sroa.0.019.i30.i.i.i.i.i to i64
  %i.ao = sub i64 %i.an, %.pre23                  ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 5                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 1
  br i1 %i.aq, label %bb.o, label %bb.p, !prof !97

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn18.i31.i.i.i.i.i, i64 64
  %i.as = sub nsw i64 0, %i.ap
  %i.at = getelementptr inbounds [32 x i8], ptr %i.ar, i64 %i.as
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.017.0, i64 %i.ao, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i46.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.au = icmp eq i64 %i.ao, 32
  br i1 %i.au, label %bb.q, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i46.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %.pn18.i31.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.017.0, i64 32, i1 false), !tbaa.struct !96
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i46.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i46.i.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.017.0, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i29.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i25.i.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i34.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i31.i.i.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i25.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(28) %.sroa.5.0..sroa_idx.i.i34.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !98
  %.val2.i10.i.i35.i.i.i.i.i = load i32, ptr %.pn18.i31.i.i.i.i.i, align 1
  %i.aw = icmp ult i32 %.val.i.i32.i.i.i.i.i, %.val2.i10.i.i35.i.i.i.i.i
  br i1 %i.aw, label %.lr.ph.i.i41.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i36.i.i.i.i.i"

.lr.ph.i.i41.i.i.i.i.i:                           ; preds = %bb.r, %.lr.ph.i.i41.i.i.i.i.i
  %.sroa.0.012.i.i42.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i44.i.i.i.i.i, %.lr.ph.i.i41.i.i.i.i.i ], [ %.pn18.i31.i.i.i.i.i, %bb.r ] ; 4 uses
  %.sroa.06.011.i.i43.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i42.i.i.i.i.i, %.lr.ph.i.i41.i.i.i.i.i ], [ %.sroa.0.019.i30.i.i.i.i.i, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.06.011.i.i43.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(32) %.sroa.0.012.i.i42.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !96
  %.sroa.0.0.i.i44.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i42.i.i.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i45.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i44.i.i.i.i.i, align 1
  %i.ax = icmp ult i32 %.val.i.i32.i.i.i.i.i, %.val2.i.i.i45.i.i.i.i.i
  br i1 %i.ax, label %.lr.ph.i.i41.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i36.i.i.i.i.i", !llvm.loop !99

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i36.i.i.i.i.i": ; preds = %.lr.ph.i.i41.i.i.i.i.i, %bb.r
  %.sroa.06.0.lcssa.i.i37.i.i.i.i.i = phi ptr [ %.sroa.0.019.i30.i.i.i.i.i, %bb.r ], [ %.sroa.0.012.i.i42.i.i.i.i.i, %.lr.ph.i.i41.i.i.i.i.i ] ; 2 uses
  store i32 %.val.i.i32.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i37.i.i.i.i.i, align 1, !tbaa !53
  %.sroa.5.0..sroa_idx5.i.i38.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i37.i.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %.sroa.5.0..sroa_idx5.i.i38.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i25.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !98
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i25.i.i.i.i.i)
  br label %bb.s

bb.s:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i36.i.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i46.i.i.i.i.i
  %.sroa.0.0.i39.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i30.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i40.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i39.i.i.i.i.i, %.sroa.10.0
  br i1 %.not.i40.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorINS_8codeview9FrameDataESaIS3_EEZNKS2_24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterEE3$_0EEvOT_T0_.exit.thread36", label %.lr.ph.i29.i.i.i.i.i, !llvm.loop !101

"_ZN4llvm4sortIRSt6vectorINS_8codeview9FrameDataESaIS3_EEZNKS2_24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterEE3$_0EEvOT_T0_.exit.thread36": ; preds = %bb.s, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_T0_.exit.i16.i.i.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm8codeview9FrameDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_24DebugFrameDataSubsection6commitERNS2_18BinaryStreamWriterEE3$_0EEEvT_SH_T0_.exit.i.i.i.i.i", %bb.m
  %i.ay = icmp ugt i64 %.pre25, 4294967264
  br i1 %i.ay, label %_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread, label %_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit

_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread: ; preds = %"_ZN4llvm4sortIRSt6vectorINS_8codeview9FrameDataESaIS3_EEZNKS2_24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterEE3$_0EEvOT_T0_.exit.thread36"
  %i.az = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #17, !noalias !103 ; 2 uses
  call void @_ZN4llvm17BinaryStreamErrorC1ENS_17stream_error_codeE(ptr noundef nonnull align 8 dereferenceable(44) %i.az, i32 noundef 2) #16, !noalias !103
  br label %.critedge.sink.split

_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit: ; preds = %"_ZN4llvm4sortIRSt6vectorINS_8codeview9FrameDataESaIS3_EEZNKS2_24DebugFrameDataSubsection6commitERNS_18BinaryStreamWriterEE3$_0EEvOT_T0_.exit.thread36"
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr %.sroa.017.0, i64 %.pre25) #16
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  %.not20 = icmp eq ptr %.pr, null
  br i1 %.not20, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEvEET_SB_RKS3_.exit, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread
  %.sink = phi ptr [ %i.az, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit.thread ], [ null, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit ], [ null, %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EEC2IN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEvEET_SB_RKS3_.exit ]
  store ptr %.sink, ptr %0, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN4llvm18BinaryStreamWriter10writeArrayINS_8codeview9FrameDataEEENS_5ErrorENS_8ArrayRefIT_EE.exit
  %.not.i.i.i13 = icmp eq ptr %.sroa.017.0, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.critedge
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.017.0, i64 noundef %.pre25) #19
  br label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EED2Ev.exit: ; preds = %bb.t, %.critedge, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8codeview24DebugFrameDataSubsection12addFrameDataERKNS0_9FrameDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !96
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.g, ptr %i.b, align 8, !tbaa !74
  br label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !77   ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775776
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNKSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 5                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 288230376151711743)
  %i.q = select i1 %i.o, i64 288230376151711743, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 5
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #17 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !96
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #19
  br label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8, !tbaa !77
  store ptr %i.v, ptr %i.b, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.d, align 8, !tbaa !110
  br label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8codeview24DebugFrameDataSubsectionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm8codeview9FrameDataESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4llvm8codeview15DebugSubsectionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8codeview24DebugFrameDataSubsectionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8codeview24DebugFrameDataSubsectionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #19
  br label %_ZN4llvm8codeview24DebugFrameDataSubsectionD2Ev.exit

_ZN4llvm8codeview24DebugFrameDataSubsectionD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4llvm8codeview15DebugSubsectionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(40) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !111
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !61   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !inline_history !111
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !59
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !72
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !72
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !61
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !73
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit

_ZN4llvm18BinaryStreamReaderD2Ev.exit:            ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN4llvm8codeview15DebugSubsectionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12)) unnamed_addr #8

declare void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm8codeview15CVErrorCategoryEv() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11StringErrorD2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm11StringErrorE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !53
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8codeview13CodeViewErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm11StringErrorE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_1
