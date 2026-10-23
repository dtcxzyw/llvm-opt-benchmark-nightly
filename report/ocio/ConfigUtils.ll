Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/ConfigUtils?download=true
inline.NumInlined: 1159
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils32getReferenceSpaceFromLinearSpaceERKSt10shared_ptrIKNS_6ConfigEEPKcRKS1_IKNS_10ColorSpaceEES6_:bb.a
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ax, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ay, ptr noundef nonnull @.str.3)
          to label %bb.w unwind label %bb.k

bb.w:                                             ; preds = %.thread59
  %i.az = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, float noundef 1.000000e-03)
          to label %bb.x unwind label %bb.l

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !37  ; 8 uses
  %.not.i.i.2 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.2, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.2 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.2, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.bb, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2

bb.ab:                                            ; preds = %bb.z
  %i.bh = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.2 = phi i32 [ %i.be, %bb.aa ], [ %i.bh, %bb.ab ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.2, 1
  br i1 %i.bi, label %bb.ac, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, !prof !44

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

bb.ad:                                            ; preds = %bb.y
  store i32 0, ptr %i.bb, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !40
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #21, !inline_history !7
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2: ; preds = %bb.ad, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.2, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.az, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2
  %.not.3 = icmp eq i64 %indvars.iv, 3
  br i1 %.not.3, label %.thread63, label %.thread61

.thread61:                                        ; preds = %bb.v, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.bq = load ptr, ptr %2, align 8, !tbaa !30
  %i.br = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #21
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.br, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.bs, ptr noundef nonnull @.str.4)
          to label %bb.af unwind label %bb.k

bb.af:                                            ; preds = %.thread61
  %i.bt = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, float noundef 1.000000e-03)
          to label %bb.ag unwind label %bb.l

bb.ag:                                            ; preds = %bb.af
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !37  ; 8 uses
  %.not.i.i.3 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.3, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.3 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.3, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ca = add nsw i32 %i.by, -1
  store i32 %i.ca, ptr %i.bv, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3

bb.ak:                                            ; preds = %bb.ai
  %i.cb = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.3 = phi i32 [ %i.by, %bb.aj ], [ %i.cb, %bb.ak ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.3, 1
  br i1 %i.cc, label %bb.al, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, !prof !44

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

bb.am:                                            ; preds = %bb.ah
  store i32 0, ptr %i.bv, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !40
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !42
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #21, !inline_history !7
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !42
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3: ; preds = %bb.am, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.3, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %i.bt, label %.thread, label %bb.an

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3
  %.not.4 = icmp eq i64 %indvars.iv, 4
  br i1 %.not.4, label %.thread, label %.thread63

.thread63:                                        ; preds = %bb.ae, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ck = load ptr, ptr %2, align 8, !tbaa !30
  %i.cl = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #21
  %i.cm = load ptr, ptr %i.f, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cl, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.cm, ptr noundef nonnull @.str.5)
          to label %bb.ao unwind label %bb.k

bb.ao:                                            ; preds = %.thread63
  %i.cn = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, float noundef 1.000000e-03)
          to label %bb.ap unwind label %bb.l

bb.ap:                                            ; preds = %bb.ao
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !37  ; 8 uses
  %.not.i.i.4 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.4, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.4 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.4, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %i.cp, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4

bb.at:                                            ; preds = %bb.ar
  %i.cv = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.4 = phi i32 [ %i.cs, %bb.as ], [ %i.cv, %bb.at ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.4, 1
  br i1 %i.cw, label %bb.au, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, !prof !44

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4

bb.av:                                            ; preds = %bb.aq
  store i32 0, ptr %i.cp, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !40
  %i.cy = load ptr, ptr %i.co, align 8, !tbaa !42
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #21, !inline_history !7
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !42
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4: ; preds = %bb.av, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.4, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.cn, label %.thread, label %.preheader

.thread:                                          ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.an
  %spec.select = phi i32 [ 4, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4 ], [ 0, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1 ], [ 2, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2 ], [ 3, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3 ], [ -1, %bb.an ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %spec.select
}

declare void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.13") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 5) i32 @_ZN16OpenColorIO_v2_511ConfigUtils30getReferenceSpaceFromSRGBSpaceERKSt10shared_ptrIKNS_6ConfigEEPKcRKS1_IKNS_10ColorSpaceEES6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.4", align 8 ; 11 uses
  %5 = alloca %"class.std::shared_ptr.4", align 16 ; 11 uses
  %6 = alloca %"class.std::shared_ptr.4", align 16 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.19", align 8 ; 7 uses
  %8 = alloca %"class.std::vector", align 8       ; 12 uses
  %9 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 8 uses
  %10 = alloca %"class.OpenColorIO_v2_5::PackedImageDesc", align 8 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.13", align 8 ; 8 uses
  %12 = alloca %"class.std::shared_ptr.10", align 8 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.13", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = load ptr, ptr %2, align 8, !tbaa !30
  call void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0) #21
  %i.b = load ptr, ptr %5, align 16, !tbaa !54    ; 2 uses
  %.not127 = icmp eq ptr %i.b, null
  br i1 %.not127, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 4, !tbaa !43
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.c
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !37 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.l = load atomic i64, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 4294967297
  %i.n = trunc i64 %i.l to i32                    ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.k, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !40
  %i.p = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21, !inline_history !145
  %i.s = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21, !inline_history !145
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i9.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i9.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.n, -1
  store i32 %i.w, ptr %i.k, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.n, %bb.g ], [ %i.x, %bb.h ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.y, label %bb.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !44

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #21
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.e, ptr %i.c, align 8, !tbaa !37
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSERKS3_.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.z = load ptr, ptr %2, align 8, !tbaa !30
  call void @_ZNK16OpenColorIO_v2_510ColorSpace12getTransformENS_19ColorSpaceDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.4") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef 1) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load <2 x ptr>, ptr %6, align 16, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 8 uses
  store <2 x ptr> %i.ac, ptr %5, align 16, !tbaa !55
  %.not.i.i.i.i61 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i61, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ae, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !40
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !1
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !1
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.n ], [ %i.ar, %bb.o ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.p, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit, !prof !44

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 8 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEaSEOS3_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.au, align 8, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !40
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #21, !inline_history !2
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #21, !inline_history !2
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i62 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_511ConfigUtils30getReferenceSpaceFromSRGBSpaceERKSt10shared_ptrIKNS_6ConfigEEPKcRKS1_IKNS_10ColorSpaceEES6_:bb.a

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.gd = load ptr, ptr %2, align 8, !tbaa !30
  %i.ge = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gd) #21
  invoke void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ge, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
          to label %bb.cb unwind label %bb.bp

bb.cb:                                            ; preds = %bb.ca
  %i.gf = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(24) %8, float noundef 1.000000e-03)
          to label %bb.cc unwind label %bb.bq

bb.cc:                                            ; preds = %bb.cb
  %i.gg = load ptr, ptr %i.en, align 8, !tbaa !37 ; 8 uses
  %.not.i.i80.2 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i80.2, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 4 uses
  %i.gi = load atomic i64, ptr %i.gh acquire, align 8 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 4294967297
  %i.gk = trunc i64 %i.gi to i32                  ; 2 uses
  br i1 %i.gj, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i81.2 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i81.2, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gm = add nsw i32 %i.gk, -1
  store i32 %i.gm, ptr %i.gh, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.2

bb.cg:                                            ; preds = %bb.ce
  %i.gn = atomicrmw volatile add ptr %i.gh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.2

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.2: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i83.2 = phi i32 [ %i.gk, %bb.cf ], [ %i.gn, %bb.cg ]
  %i.go = icmp eq i32 %.0.i.i.i.i83.2, 1
  br i1 %i.go, label %bb.ch, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, !prof !44

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.2
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

bb.ci:                                            ; preds = %bb.cd
  store i32 0, ptr %i.gh, align 8, !tbaa !39
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store i32 0, ptr %i.gp, align 4, !tbaa !40
  %i.gq = load ptr, ptr %i.gg, align 8, !tbaa !42
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #21, !inline_history !7
  %i.gt = load ptr, ptr %i.gg, align 8, !tbaa !42
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gg) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2: ; preds = %bb.ci, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.2, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %i.gf, label %.loopexit, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.gw = load ptr, ptr %2, align 8, !tbaa !30
  %i.gx = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gw) #21
  invoke void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.gx, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
          to label %bb.ck unwind label %bb.bp

bb.ck:                                            ; preds = %bb.cj
  %i.gy = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(24) %8, float noundef 1.000000e-03)
          to label %bb.cl unwind label %bb.bq

bb.cl:                                            ; preds = %bb.ck
  %i.gz = load ptr, ptr %i.en, align 8, !tbaa !37 ; 8 uses
  %.not.i.i80.3 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i80.3, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i81.3 = icmp eq i8 %i.he, 0
  br i1 %.not.i.i.i81.3, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hf = add nsw i32 %i.hd, -1
  store i32 %i.hf, ptr %i.ha, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.3

bb.cp:                                            ; preds = %bb.cn
  %i.hg = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.3: ; preds = %bb.cp, %bb.co
  %.0.i.i.i.i83.3 = phi i32 [ %i.hd, %bb.co ], [ %i.hg, %bb.cp ]
  %i.hh = icmp eq i32 %.0.i.i.i.i83.3, 1
  br i1 %i.hh, label %bb.cq, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3, !prof !44

bb.cq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

bb.cr:                                            ; preds = %bb.cm
  store i32 0, ptr %i.ha, align 8, !tbaa !39
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.hi, align 4, !tbaa !40
  %i.hj = load ptr, ptr %i.gz, align 8, !tbaa !42
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #21, !inline_history !7
  %i.hm = load ptr, ptr %i.gz, align 8, !tbaa !42
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3: ; preds = %bb.cr, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.3, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br i1 %i.gy, label %.loopexit, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.hp = load ptr, ptr %2, align 8, !tbaa !30
  %i.hq = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hp) #21
  invoke void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.hq, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5)
          to label %bb.ct unwind label %bb.bp

bb.ct:                                            ; preds = %bb.cs
  %i.hr = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(24) %8, float noundef 1.000000e-03)
          to label %bb.cu unwind label %bb.bq

bb.cu:                                            ; preds = %bb.ct
  %i.hs = load ptr, ptr %i.en, align 8, !tbaa !37 ; 8 uses
  %.not.i.i80.4 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i80.4, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 4 uses
  %i.hu = load atomic i64, ptr %i.ht acquire, align 8 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 4294967297
  %i.hw = trunc i64 %i.hu to i32                  ; 2 uses
  br i1 %i.hv, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i81.4 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i81.4, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hy = add nsw i32 %i.hw, -1
  store i32 %i.hy, ptr %i.ht, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.4

bb.cy:                                            ; preds = %bb.cw
  %i.hz = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.4: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i83.4 = phi i32 [ %i.hw, %bb.cx ], [ %i.hz, %bb.cy ]
  %i.ia = icmp eq i32 %.0.i.i.i.i83.4, 1
  br i1 %i.ia, label %bb.cz, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, !prof !44

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.4
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4

bb.da:                                            ; preds = %bb.cv
  store i32 0, ptr %i.ht, align 8, !tbaa !39
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !40
  %i.ic = load ptr, ptr %i.hs, align 8, !tbaa !42
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #21, !inline_history !7
  %i.if = load ptr, ptr %i.hs, align 8, !tbaa !42
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4: ; preds = %bb.da, %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i82.4, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %spec.select = select i1 %i.hr, i32 4, i32 -1
  br label %.loopexit

bb.db:                                            ; preds = %bb.bq, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.bq ], [ %i.fi, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.di

.loopexit:                                        ; preds = %bb.bd, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3
  %i.ii = phi ptr [ %i.em, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3 ], [ %i.em, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2 ], [ %i.em, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.em, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1 ], [ %i.em, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4 ], [ %i.dj, %bb.bd ]
  %i.ij = phi ptr [ %i.el, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3 ], [ %i.el, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2 ], [ %i.el, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.el, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1 ], [ %i.el, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4 ], [ %i.dh, %bb.bd ]
  %.4 = phi i32 [ 3, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.3 ], [ 2, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.2 ], [ 0, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1 ], [ %spec.select, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.4 ], [ -1, %bb.bd ]
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !37 ; 8 uses
  %.not.i.i84 = icmp eq ptr %i.il, null
  br i1 %.not.i.i84, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %.loopexit
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 4 uses
  %i.in = load atomic i64, ptr %i.im acquire, align 8 ; 2 uses
  %i.io = icmp eq i64 %i.in, 4294967297
  %i.ip = trunc i64 %i.in to i32                  ; 2 uses
  br i1 %i.io, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.im, align 8, !tbaa !39
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  store i32 0, ptr %i.iq, align 4, !tbaa !40
  %i.ir = load ptr, ptr %i.il, align 8, !tbaa !42
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(16) %i.il) #21, !inline_history !3
  %i.iu = load ptr, ptr %i.il, align 8, !tbaa !42
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8
  call void %i.iw(ptr noundef nonnull align 8 dereferenceable(16) %i.il) #21, !inline_history !3
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.de:                                            ; preds = %bb.dc
  %i.ix = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i85 = icmp eq i8 %i.ix, 0
  br i1 %.not.i.i.i85, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.iy = add nsw i32 %i.ip, -1
  store i32 %i.iy, ptr %i.im, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86

bb.dg:                                            ; preds = %bb.de
  %i.iz = atomicrmw volatile add ptr %i.im, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86: ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i87 = phi i32 [ %i.ip, %bb.df ], [ %i.iz, %bb.dg ]
  %i.ja = icmp eq i32 %.0.i.i.i.i87, 1
  br i1 %i.ja, label %bb.dh, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.dh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.il) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit, %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i86, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.dk

bb.di:                                            ; preds = %bb.db, %bb.bg
  %i.jb = phi ptr [ %i.em, %bb.db ], [ %i.dj, %bb.bg ]
  %.pre.pre.pre.pre.pre.pre = phi ptr [ %i.el, %bb.db ], [ %i.dh, %bb.bg ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.db ], [ %i.eq, %bb.bg ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #21
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.ba
  %i.jc = phi ptr [ %i.jb, %bb.di ], [ %i.dj, %bb.ba ]
  %.pre.pre.pre.pre.pre = phi ptr [ %.pre.pre.pre.pre.pre.pre, %bb.di ], [ %i.dh, %bb.ba ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.di ], [ %i.dx, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.dr

bb.dk:                                            ; preds = %bb.at, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jd = phi ptr [ %i.ii, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.dj, %bb.at ]
  %i.je = phi ptr [ %i.ij, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.dh, %bb.at ] ; 2 uses
  %.5 = phi i32 [ %.4, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_512CPUProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ -1, %bb.at ]
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !37 ; 8 uses
  %.not.i.i88 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i88, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 4 uses
  %i.ji = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, 4294967297
  %i.jk = trunc i64 %i.ji to i32                  ; 2 uses
  br i1 %i.jj, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.jh, align 8, !tbaa !39
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jl, align 4, !tbaa !40
  %i.jm = load ptr, ptr %i.jg, align 8, !tbaa !42
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #21, !inline_history !7
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !42
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #21, !inline_history !7
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.dn:                                            ; preds = %bb.dl
  %i.js = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i89 = icmp eq i8 %i.js, 0
  br i1 %.not.i.i.i89, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jt = add nsw i32 %i.jk, -1
  store i32 %i.jt, ptr %i.jh, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

bb.dp:                                            ; preds = %bb.dn
  %i.ju = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90: ; preds = %bb.dp, %bb.do
  %.0.i.i.i.i91 = phi i32 [ %i.jk, %bb.do ], [ %i.ju, %bb.dp ]
  %i.jv = icmp eq i32 %.0.i.i.i.i91, 1
  br i1 %i.jv, label %bb.dq, label %_ZNSt6vectorIfSaIfEED2Ev.exit, !prof !44

bb.dq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.dk, %bb.dm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 72) #23
  %i.jw = ptrtoint ptr %i.jd to i64
  %i.jx = ptrtoint ptr %i.je to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jy) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dj, %bb.aw
  %i.jz = phi ptr [ %i.jc, %bb.dj ], [ %i.dj, %bb.aw ]
  %.pre.pre.pre.pre = phi ptr [ %.pre.pre.pre.pre.pre, %bb.dj ], [ %i.dh, %bb.aw ]
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.dj ], [ %i.dt, %bb.aw ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #21
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.av
  %i.ka = phi ptr [ %i.jz, %bb.dr ], [ %i.dj, %bb.av ]
  %.pre.pre.pre = phi ptr [ %.pre.pre.pre.pre, %bb.dr ], [ %i.dh, %bb.av ]
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dr ], [ %i.ds, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #21
  br label %bb.dt

bb.dt:                                            ; preds = %bb.au, %bb.ds
  %i.kb = phi ptr [ %i.ka, %bb.ds ], [ %i.dj, %bb.au ]
  %.pre.pre = phi ptr [ %.pre.pre.pre, %bb.ds ], [ %i.dh, %bb.au ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ds ], [ %i.dr, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN16OpenColorIO_v2_515PackedImageDescD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 72) #23
  %.not.i.i.i101 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIfSaIfEED2Ev.exit103, label %bb.du

bb.du:                                            ; preds = %.thread168, %.thread, %bb.dt
  %14 = phi ptr [ %i.dj, %.thread ], [ %i.kb, %bb.dt ], [ %i.dj, %.thread168 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn167 = phi { ptr, i32 } [ %i.dp, %.thread ], [ %.pn.pn.pn.pn.pn.pn, %bb.dt ], [ %i.dq, %.thread168 ]
  %i.kc = phi ptr [ %i.dh, %.thread ], [ %.pre.pre, %bb.dt ], [ %i.dh, %.thread168 ] ; 2 uses
  %i.kd = ptrtoint ptr %14 to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kf) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit103

_ZNSt6vectorIfSaIfEED2Ev.exit103:                 ; preds = %bb.du, %bb.dt, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.di, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ], [ %.pn.pn.pn.pn.pn.pn, %bb.dt ], [ %.pn.pn.pn.pn.pn.pn.pn.pn167, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ei

bb.dv:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.6 = phi i32 [ %.5, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ -1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !37 ; 8 uses
  %.not.i.i104 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i104, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit108, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 4 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 4294967297
  %i.kl = trunc i64 %i.kj to i32                  ; 2 uses
  br i1 %i.kk, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr %i.ki, align 8, !tbaa !39
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  store i32 0, ptr %i.km, align 4, !tbaa !40
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !42
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #21, !inline_history !2
  %i.kq = load ptr, ptr %i.kh, align 8, !tbaa !42
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #21, !inline_history !2
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit108

bb.dy:                                            ; preds = %bb.dw
  %i.kt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i105 = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i105, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i106

bb.ea:                                            ; preds = %bb.dy
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i106

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i106: ; preds = %bb.ea, %bb.dz
  %.0.i.i.i.i107 = phi i32 [ %i.kl, %bb.dz ], [ %i.kv, %bb.ea ]
  %i.kw = icmp eq i32 %.0.i.i.i.i107, 1
  br i1 %i.kw, label %bb.eb, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit108, !prof !44

bb.eb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i106
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit108

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit108: ; preds = %bb.dv, %bb.dx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i106, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !37 ; 8 uses
  %.not.i.i109 = icmp eq ptr %i.ky, null
  br i1 %.not.i.i109, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit108
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 4 uses
  %i.la = load atomic i64, ptr %i.kz acquire, align 8 ; 2 uses
  %i.lb = icmp eq i64 %i.la, 4294967297
  %i.lc = trunc i64 %i.la to i32                  ; 2 uses
  br i1 %i.lb, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i32 0, ptr %i.kz, align 8, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i32 0, ptr %i.ld, align 4, !tbaa !40
  %i.le = load ptr, ptr %i.ky, align 8, !tbaa !42
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.lg(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #21, !inline_history !2
  %i.lh = load ptr, ptr %i.ky, align 8, !tbaa !42
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #21, !inline_history !2
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113

bb.ee:                                            ; preds = %bb.ec
  %i.lk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i110 = icmp eq i8 %i.lk, 0
  br i1 %.not.i.i.i110, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ll = add nsw i32 %i.lc, -1
  store i32 %i.ll, ptr %i.kz, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111

bb.eg:                                            ; preds = %bb.ee
  %i.lm = atomicrmw volatile add ptr %i.kz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111: ; preds = %bb.eg, %bb.ef
  %.0.i.i.i.i112 = phi i32 [ %i.lc, %bb.ef ], [ %i.lm, %bb.eg ]
  %i.ln = icmp eq i32 %.0.i.i.i.i112, 1
  br i1 %i.ln, label %bb.eh, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113, !prof !44

bb.eh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ky) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit113: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit108, %bb.ed, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i111, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.6

bb.ei:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit103, %bb.ao
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit103 ], [ %i.dg, %bb.ao ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_9TransformEENS_18TransformDirectionE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.13") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ConfigUtils24IdentifyInterchangeSpaceEPPKcS3_RKSt10shared_ptrIKNS_6ConfigEES2_S9_S2_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.OpenColorIO_v2_5::ConfigUtils::SuspendCacheGuard", align 8 ; 9 uses
  %12 = alloca %"class.OpenColorIO_v2_5::ConfigUtils::SuspendCacheGuard", align 8 ; 9 uses
  %13 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils42GetInterchangeRolesForColorSpaceConversionEPPKcS3_RNS_18ReferenceSpaceTypeERKSt10shared_ptrIKNS_6ConfigEES2_SB_S2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5)
  br i1 %i.b, label %bb.cr, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.c = load ptr, ptr %4, align 8, !tbaa !27
  call void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %5)
  %i.d = load ptr, ptr %6, align 8, !tbaa !30
  %i.e = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #21
  %i.f = icmp eq i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !40
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21, !inline_history !0
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_511ConfigUtils25IdentifyBuiltinColorSpaceERKSt10shared_ptrIKNS_6ConfigEES6_PKc:bb.a

bb.n:                                             ; preds = %bb.m
  %i.t = invoke noundef ptr @_ZN16OpenColorIO_v2_511ConfigUtils16getDataSpaceNameERKSt10shared_ptrIKNS_6ConfigEE(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.o unwind label %bb.t       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %.not81 = icmp eq i8 %i.u, 0
  br i1 %.not81, label %bb.p, label %bb.cq

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.25, i64 noundef 87)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %bb.q
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.x = load ptr, ptr %7, align 8, !tbaa !34
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef %i.x)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.cy unwind label %bb.w

bb.t:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.u:                                             ; preds = %bb.p
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.x

bb.w:                                             ; preds = %bb.s, %bb.r
  %.043 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ad = load ptr, ptr %7, align 8, !tbaa !34    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.w
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !35
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.043, label %bb.x, label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %.043, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %.pn82128 = phi { ptr, i32 } [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.thread ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  call void @__cxa_free_exception(ptr %i.w) #21
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.x, %bb.v
  %.pn82.pn = phi { ptr, i32 } [ %.pn82128, %bb.x ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.aa, %bb.v ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %bb.y ], [ %i.z, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.cx

bb.aa:                                            ; preds = %bb.m
  %i.ai = load ptr, ptr %3, align 8, !tbaa !30
  %i.aj = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr null, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_511ConfigUtils24IdentifyInterchangeSpaceEPPKcS3_RKSt10shared_ptrIKNS_6ConfigEES2_S9_S2_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.ak = load ptr, ptr %0, align 8, !tbaa !27    ; 5 uses
  store ptr %i.ak, ptr %8, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !37 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !37
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !43
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.as = atomicrmw volatile add ptr %i.ao, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !27
  %.pre = load ptr, ptr %8, align 8, !tbaa !27
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit: ; preds = %bb.ab, %bb.ad, %bb.ae
  %i.at = phi ptr [ %i.ak, %bb.ab ], [ %i.ak, %bb.ad ], [ %.pre, %bb.ae ]
  %i.au = phi ptr [ %i.ak, %bb.ab ], [ %i.ak, %bb.ad ], [ %.pre.i, %bb.ae ]
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aw = call noundef i32 @_ZNK16OpenColorIO_v2_56Config22getProcessorCacheFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #21
  store i32 %i.aw, ptr %i.av, align 8, !tbaa !79
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i32 noundef 0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ax = load ptr, ptr %1, align 8, !tbaa !27    ; 5 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !37
  %.not.i.i.i.i93 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i93, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit96, label %bb.af

bb.af:                                            ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i94 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i94, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !43
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !43
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit96

bb.ah:                                            ; preds = %bb.af
  %i.bf = atomicrmw volatile add ptr %i.bb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i95 = load ptr, ptr %1, align 8, !tbaa !27
  %.pre138 = load ptr, ptr %9, align 8, !tbaa !27
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit96

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit96: ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit, %bb.ag, %bb.ah
  %i.bg = phi ptr [ %i.ax, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit ], [ %i.ax, %bb.ag ], [ %.pre138, %bb.ah ]
  %i.bh = phi ptr [ %i.ax, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit ], [ %i.ax, %bb.ag ], [ %.pre.i95, %bb.ah ]
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bj = call noundef i32 @_ZNK16OpenColorIO_v2_56Config22getProcessorCacheFlagsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) #21
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !79
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i32 noundef 0) #21
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35
  %.not = icmp eq i8 %i.bl, 0
  br i1 %.not, label %bb.bq, label %bb.ai

bb.ai:                                            ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bm = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24
          to label %bb.aj unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ; 6 uses

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i:           ; preds = %bb.ai
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit105

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.bm, ptr %10, align 8, !tbaa !59
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 80 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.bm, ptr noundef nonnull align 4 dereferenceable(80) @constinit.26, i64 80, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !58
  %i.br = load ptr, ptr %0, align 8, !tbaa !27
  %i.bs = invoke noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %.preheader unwind label %.thread ; 2 uses

.preheader:                                       ; preds = %bb.aj
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph, label %.split.thread

.split.thread:                                    ; preds = %.preheader
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 80) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.bq

.lr.ph:                                           ; preds = %.preheader
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.al

bb.ak:                                            ; preds = %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

.thread:                                          ; preds = %bb.aj
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.al:                                            ; preds = %.lr.ph, %bb.bl
  %.032134 = phi i32 [ 0, %.lr.ph ], [ %i.dq, %bb.bl ] ; 2 uses
  %.033133 = phi ptr [ undef, %.lr.ph ], [ %.2, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bw = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.bx = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i32 noundef %.032134)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.bx)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.by = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils31excludeColorSpaceFromHeuristicsERKSt10shared_ptrIKNS_10ColorSpaceEENS_18ReferenceSpaceTypeEb(ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.aj, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  br i1 %i.by, label %bb.be, label %bb.ar

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.aq:                                            ; preds = %bb.an
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.cb = load ptr, ptr %11, align 8, !tbaa !30
  %i.cc = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #21
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !22
  invoke void @_ZN16OpenColorIO_v2_56Config23GetProcessorFromConfigsERKSt10shared_ptrIKS0_EPKcS7_S5_S7_S7_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cc, ptr noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %i.ce)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.cf = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(24) %10, float noundef 5.000000e-03)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  br i1 %i.cf, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.cg = load ptr, ptr %11, align 8, !tbaa !30
  %i.ch = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cg) #21
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aw:                                            ; preds = %bb.as
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #21
  br label %bb.bm

bb.ax:                                            ; preds = %bb.at, %bb.au
  %.040 = phi i32 [ 1, %bb.au ], [ 0, %bb.at ]
  %.134 = phi ptr [ %i.ch, %bb.au ], [ %.033133, %bb.at ]
  %i.ck = load ptr, ptr %15, align 8, !tbaa !37   ; 8 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.cl, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !40
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #21, !inline_history !7
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #21, !inline_history !7
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.co, %bb.bb ], [ %i.cy, %bb.bc ]
  %i.cz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cz, label %bb.bd, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ax, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.be

bb.be:                                            ; preds = %bb.ao, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.141 = phi i32 [ %.040, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 4, %bb.ao ] ; 2 uses
  %.2 = phi ptr [ %.134, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.033133, %bb.ao ] ; 2 uses
  %i.da = load ptr, ptr %16, align 8, !tbaa !37   ; 8 uses
  %.not.i.i97 = icmp eq ptr %i.da, null
  br i1 %.not.i.i97, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.db, align 8, !tbaa !39
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !40
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !42
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #21, !inline_history !0
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i98 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i98, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99

bb.bj:                                            ; preds = %bb.bh
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i100 = phi i32 [ %i.de, %bb.bi ], [ %i.do, %bb.bj ]
  %i.dp = icmp eq i32 %.0.i.i.i.i100, 1
  br i1 %i.dp, label %bb.bk, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.be, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i99, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  switch i32 %.141, label %.split [
    i32 0, label %bb.bl
    i32 4, label %bb.bl
  ]

bb.bl:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dq = add nuw nsw i32 %.032134, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.dq, %i.bs
  br i1 %exitcond.not, label %.split, label %bb.al, !llvm.loop !150

bb.bm:                                            ; preds = %bb.aw, %bb.av
  %.pn68 = phi { ptr, i32 } [ %i.cj, %bb.aw ], [ %i.ci, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.aq
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.bm ], [ %i.ca, %bb.aq ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #21
  br label %bb.bo

.split:                                           ; preds = %bb.bl, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.242.ph = phi i32 [ %.141, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 2, %bb.bl ]
  %17 = and i32 %.242.ph, -3
  %18 = icmp eq i32 %17, 0
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 80) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br i1 %18, label %bb.bq, label %bb.cb

bb.bo:                                            ; preds = %bb.ap, %bb.bn
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %bb.bn ], [ %i.bz, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.thread
  %.pn68.pn.pn.pn169 = phi { ptr, i32 } [ %i.bv, %.thread ], [ %.pn68.pn.pn, %bb.bo ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 80) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit105

_ZNSt6vectorIfSaIfEED2Ev.exit105:                 ; preds = %bb.bp, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ], [ %.pn68.pn.pn.pn169, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.co

bb.bq:                                            ; preds = %.split.thread, %.split, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardC2ERKSt10shared_ptrIKNS_6ConfigEE.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.27, i64 noundef 77)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %bb.br
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %2)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.24, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %bb.bw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %bb.bs
  %i.du = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.dv = load ptr, ptr %14, align 8, !tbaa !34
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef %i.dv)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #22
          to label %bb.cy unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bq
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bs, %bb.br, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu, %bb.bt
  %.0 = phi i1 [ false, %bb.bu ], [ true, %bb.bt ] ; 2 uses
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ea = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bx
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !35
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.by, label %bb.bz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.0, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %.pn75131 = phi { ptr, i32 } [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.thread ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  call void @__cxa_free_exception(ptr %i.du) #21
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.by, %bb.bw
  %.pn75.pn = phi { ptr, i32 } [ %.pn75131, %bb.by ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %i.dx, %bb.bw ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #21
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bv
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn75.pn, %bb.bz ], [ %i.dw, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.co

bb.cb:                                            ; preds = %.split
  %i.ef = load ptr, ptr %9, align 8, !tbaa !27
  %i.eg = load i32, ptr %i.bi, align 8, !tbaa !79
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i32 noundef %i.eg) #21
  %i.eh = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i111 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i111, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 4 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  %i.el = trunc i64 %i.ej to i32                  ; 2 uses
  br i1 %i.ek, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.ei, align 8, !tbaa !39
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i32 0, ptr %i.em, align 4, !tbaa !40
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !42
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #21, !inline_history !9
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #21, !inline_history !9
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit

bb.ce:                                            ; preds = %bb.cc
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i112 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i112, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.eu = add nsw i32 %i.el, -1
  store i32 %i.eu, ptr %i.ei, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.ev = atomicrmw volatile add ptr %i.ei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i = phi i32 [ %i.el, %bb.cf ], [ %i.ev, %bb.cg ]
  %i.ew = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ew, label %bb.ch, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit, !prof !44

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eh) #21
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit: ; preds = %bb.cb, %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.ex = load ptr, ptr %8, align 8, !tbaa !27
  %i.ey = load i32, ptr %i.av, align 8, !tbaa !79
  call void @_ZNK16OpenColorIO_v2_56Config22setProcessorCacheFlagsENS_19ProcessorCacheFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i32 noundef %i.ey) #21
  %i.ez = load ptr, ptr %i.al, align 8, !tbaa !37 ; 8 uses
  %.not.i.i.i113 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i113, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit117, label %bb.ci

bb.ci:                                            ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.fa, align 8, !tbaa !39
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !40
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !42
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #21, !inline_history !9
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !42
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #21, !inline_history !9
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit117

bb.ck:                                            ; preds = %bb.ci
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i114 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i114, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i115

bb.cm:                                            ; preds = %bb.ck
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i115: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i116 = phi i32 [ %i.fd, %bb.cl ], [ %i.fn, %bb.cm ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i116, 1
  br i1 %i.fo, label %bb.cn, label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit117, !prof !44

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #21
  br label %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit117

_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit117: ; preds = %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit, %bb.cj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i115, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.cq

bb.co:                                            ; preds = %bb.ca, %_ZNSt6vectorIfSaIfEED2Ev.exit105
  %.pn75.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn, %bb.ca ], [ %.pn68.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit105 ]
  call void @_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ak
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn.pn, %bb.co ], [ %i.bu, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.cx

bb.cq:                                            ; preds = %bb.o, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit117
  %.4 = phi ptr [ %.2, %_ZN16OpenColorIO_v2_511ConfigUtils17SuspendCacheGuardD2Ev.exit117 ], [ %i.t, %bb.o ]
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !37 ; 8 uses
  %.not.i.i118 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i118, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.fr, align 8, !tbaa !39
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !40
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !42
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #21, !inline_history !0
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !42
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122

bb.ct:                                            ; preds = %bb.cr
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i119 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i119, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120

bb.cv:                                            ; preds = %bb.ct
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i121 = phi i32 [ %i.fu, %bb.cu ], [ %i.ge, %bb.cv ]
  %i.gf = icmp eq i32 %.0.i.i.i.i121, 1
  br i1 %i.gf, label %bb.cw, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122, !prof !44

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #21
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit122: ; preds = %bb.cq, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret ptr %.4

bb.cx:                                            ; preds = %bb.t, %bb.z, %bb.cp, %bb.l
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.l ], [ %.pn75.pn.pn.pn.pn, %bb.cp ], [ %.pn82.pn.pn, %bb.z ], [ %i.y, %bb.t ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn

bb.cy:                                            ; preds = %bb.bu, %bb.s, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ConfigUtils17simplifyTransformERKSt10shared_ptrIKNS_14GroupTransformEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.4") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.13", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.4", align 16 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.13", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.16", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN16OpenColorIO_v2_56Config9CreateRawEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
end_hunk_2
