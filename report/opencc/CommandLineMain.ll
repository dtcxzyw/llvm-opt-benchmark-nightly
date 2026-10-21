Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/CommandLineMain?download=true
inline.NumInlined: 2961
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj1EE6Uint64Em:bb.a
  %i.am = load ptr, ptr %0, align 8, !tbaa !181   ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !129
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !130
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp sgt i64 %i.ap, %i.aw
  br i1 %i.ax, label %bb.j, label %_ZN9rapidjson10PutReserveINS_4UTF8IcEENS_12CrtAllocatorEEEvRNS_19GenericStringBufferIT_T0_EEm.exit.i, !prof !92

bb.j:                                             ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj1EE6PrefixENS_4TypeE.exit
  call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i64 noundef %i.ap)
  br label %_ZN9rapidjson10PutReserveINS_4UTF8IcEENS_12CrtAllocatorEEEvRNS_19GenericStringBufferIT_T0_EEm.exit.i

_ZN9rapidjson10PutReserveINS_4UTF8IcEENS_12CrtAllocatorEEEvRNS_19GenericStringBufferIT_T0_EEm.exit.i: ; preds = %bb.j, %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj1EE6PrefixENS_4TypeE.exit
  %.not6.i1 = icmp eq ptr %i.a, %i.al
  br i1 %.not6.i1, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj1EE11WriteUint64Em.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN9rapidjson10PutReserveINS_4UTF8IcEENS_12CrtAllocatorEEEvRNS_19GenericStringBufferIT_T0_EEm.exit.i
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !181
  %i.az = load i8, ptr %.07.i.prol, align 1, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !130 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !130
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !344

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = sub i64 %i.ao, %i.an
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj1EE11WriteUint64Em.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !181
  %i.bh = load i8, ptr %.07.i, align 1, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !130 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !130
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.bm = load ptr, ptr %0, align 8, !tbaa !181
  %i.bn = load i8, ptr %i.bl, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !130 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !130
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  %i.bs = load ptr, ptr %0, align 8, !tbaa !181
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !130 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !130
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %.07.i, i64 3
  %i.by = load ptr, ptr %0, align 8, !tbaa !181
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !130 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !130
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 2 uses
  %.not.i2.3 = icmp eq ptr %i.cd, %i.al
  br i1 %.not.i2.3, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj1EE11WriteUint64Em.exit, label %.lr.ph.i, !llvm.loop !345

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj1EE11WriteUint64Em.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %_ZN9rapidjson10PutReserveINS_4UTF8IcEENS_12CrtAllocatorEEEvRNS_19GenericStringBufferIT_T0_EEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z24ConvertAmbiguitiesStreamP8_IO_FILES0_(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.opencc::AmbiguityStream", align 8 ; 10 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %5 = alloca %"struct.opencc::AmbiguityStream::Chunk", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"struct.opencc::AmbiguityStream::Chunk", align 8 ; 15 uses
  %9 = alloca %"class.rapidjson::GenericStringBuffer", align 8 ; 12 uses
  %10 = alloca %"class.rapidjson::Writer", align 8 ; 23 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1048576, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @converter, i64 8), align 8, !tbaa !168 ; 2 uses
  %i.h = load <2 x ptr>, ptr @converter, align 16, !tbaa !177
  store <2 x ptr> %i.h, ptr %4, align 16, !tbaa !177
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6opencc9ConverterEEC2ERKS2_.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.i, align 4, !tbaa !39
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !39
  br label %_ZNSt10shared_ptrIN6opencc9ConverterEEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6opencc9ConverterEEC2ERKS2_.exit

_ZNSt10shared_ptrIN6opencc9ConverterEEC2ERKS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.b, %bb.c
  invoke void @_ZN6opencc15AmbiguityStreamC1ESt10shared_ptrINS_9ConverterEEm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %4, i64 noundef 16)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZNSt10shared_ptrIN6opencc9ConverterEEC2ERKS2_.exit
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !168  ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !171
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !15
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34, !inline_history !15
  br label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i58 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i58, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #34
  br label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0127 = phi i64 [ 0, %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 2 uses
  %.0123 = phi i64 [ 0, %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ] ; 2 uses
  %i.am = call i32 @feof(ptr noundef %0) #34
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %2, align 8, !tbaa !46
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !45
  %i.ap = call i64 @fread(ptr noundef nonnull %i.an, i64 noundef 1, i64 noundef %i.ao, ptr noundef %0) ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.o

bb.m:                                             ; preds = %_ZNSt10shared_ptrIN6opencc9ConverterEEC2ERKS2_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #34
  br label %bb.br

bb.n:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.o:                                             ; preds = %bb.l
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !143
  %i.au = add i64 %i.at, %i.ap
  store i64 %i.au, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !143
  %i.av = load ptr, ptr %2, align 8, !tbaa !46
  invoke void @_Z42WarnIfStreamChunkContainsVariationSelectorPKcm(ptr noundef %i.av, i64 noundef %i.ap)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.aw = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !45
  %i.ay = icmp ult i64 %i.ap, %i.ax
  br i1 %i.ay, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.az = call i32 @feof(ptr noundef %0) #34
  %.not140 = icmp eq i32 %i.az, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  br i1 %.not140, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load ptr, ptr %2, align 8, !tbaa !46
  invoke void @_ZN6opencc15AmbiguityStream6FinishESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.ap, ptr %i.ba)
          to label %bb.t unwind label %bb.y

bb.s:                                             ; preds = %.thread, %bb.q
  %i.bb = load ptr, ptr %2, align 8, !tbaa !46
  invoke void @_ZN6opencc15AmbiguityStream12ConvertChunkESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %i.ap, ptr %i.bb)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bc = phi i1 [ false, %bb.s ], [ true, %bb.r ]
  %i.bd = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.be = sub nsw i64 %i.bd, %i.aw
  %i.bf = sitofp i64 %i.be to double
  %i.bg = fdiv double %i.bf, 1.000000e+06
  %i.bh = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 8), align 8, !tbaa !140
  %i.bi = fadd double %i.bh, %i.bg
  store double %i.bi, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 8), align 8, !tbaa !140
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.bk = add i64 %i.bj, %.0123                   ; 2 uses
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !347
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !191
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 24
  %i.br = add i64 %i.bq, %.0127                   ; 2 uses
  %i.bs = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.bt = invoke noundef i64 @_Z26WriteAmbiguityChunkRecordsRKN6opencc15AmbiguityStream5ChunkEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef %1)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.t
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.bw = load i8, ptr @noFlush, align 1, !tbaa !149, !range !37, !noundef !38
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc
  %i.by = call i32 @fflush(ptr noundef %1)        ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc
  %i.bz = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.ca = sub nsw i64 %i.bz, %i.bs
  %i.cb = sitofp i64 %i.ca to double
  %i.cc = fdiv double %i.cb, 1.000000e+06
  %i.cd = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !141
  %i.ce = fadd double %i.cd, %i.cc
  store double %i.ce, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !141
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !42 ; 3 uses
  %i.cg = load ptr, ptr %i.ai, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.cf, %bb.v ] ; 3 uses
  %i.ch = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !47
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %i.cm, %i.cg
  br i1 %.not.i.i.i.i59, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ah, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.v
  %i.cn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cf, %bb.v ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !173
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cr) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.w, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cs = load ptr, ptr %i.af, align 8, !tbaa !191 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ct = load ptr, ptr %i.ak, align 8, !tbaa !192
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #36
  br label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i: ; preds = %bb.x, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cx = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.al
  br i1 %i.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i
  %i.cz = load i64, ptr %i.al, align 8, !tbaa !47
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.y:                                             ; preds = %bb.s, %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6opencc15AmbiguityStream5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %5) #34
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %i.bc, label %bb.ap, label %bb.k

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.z ], [ %i.db, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bq

.loopexit:                                        ; preds = %bb.l
  %i.dd = call i32 @ferror(ptr noundef %0) #34
  %.not212 = icmp eq i32 %i.dd, 0
  br i1 %.not212, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.de = call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6opencc9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN6opencc9ExceptionE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #35
          to label %bb.bs unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dh = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !47
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.0, label %bb.af, label %bb.bq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.0, label %bb.af, label %bb.bq

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn53139 = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.de) #34
  br label %bb.bq

bb.ag:                                            ; preds = %bb.k, %.loopexit
  %i.dm = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  invoke void @_ZN6opencc15AmbiguityStream6FinishEv(ptr dead_on_unwind nonnull writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.dn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.do = sub nsw i64 %i.dn, %i.dm
  %i.dp = sitofp i64 %i.do to double
  %i.dq = fdiv double %i.dp, 1.000000e+06
  %i.dr = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 8), align 8, !tbaa !140
  %i.ds = fadd double %i.dr, %i.dq
  store double %i.ds, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 8), align 8, !tbaa !140
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !45
  %i.dv = add i64 %i.du, %.0123
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !347
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !191
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 24
  %i.ee = add i64 %i.ed, %.0127
  %i.ef = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.eg = invoke noundef i64 @_Z26WriteAmbiguityChunkRecordsRKN6opencc15AmbiguityStream5ChunkEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %1)
          to label %.noexc62 unwind label %bb.an

.noexc62:                                         ; preds = %bb.ah
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.ei = add i64 %i.eh, %i.eg
  store i64 %i.ei, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.ej = load i8, ptr @noFlush, align 1, !tbaa !149, !range !37, !noundef !38
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc62
  %i.el = call i32 @fflush(ptr noundef %1)        ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.noexc62
  %i.em = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.en = sub nsw i64 %i.em, %i.ef
  %i.eo = sitofp i64 %i.en to double
  %i.ep = fdiv double %i.eo, 1.000000e+06
  %i.eq = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !141
  %i.er = fadd double %i.eq, %i.ep
  store double %i.er, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !141
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !42 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i.i64 = icmp eq ptr %i.et, %i.ev
  br i1 %.not4.i.i.i.i64, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i72, label %.lr.ph.i.i.i.i65

.lr.ph.i.i.i.i65:                                 ; preds = %bb.aj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68
  %.05.i.i.i.i66 = phi ptr [ %i.fb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68 ], [ %i.et, %bb.aj ] ; 3 uses
  %i.ew = load ptr, ptr %.05.i.i.i.i66, align 8, !tbaa !46 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67: ; preds = %.lr.ph.i.i.i.i65
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !47
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68: ; preds = %.lr.ph.i.i.i.i65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i67
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66, i64 32 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.fb, %i.ev
  br i1 %.not.i.i.i.i69, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i70, label %.lr.ph.i.i.i.i65, !llvm.loop !13

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i70: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i68
  %.pr.i.i71 = load ptr, ptr %i.es, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i72

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i72: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i70, %bb.aj
  %i.fc = phi ptr [ %.pr.i.i71, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i70 ], [ %i.et, %bb.aj ] ; 3 uses
  %.not.i.i1.i.i73 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i1.i.i73, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i74, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i72
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !173
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fc to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fh) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i74

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i74: ; preds = %bb.ak, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i72
  %i.fi = load ptr, ptr %i.dw, align 8, !tbaa !191 ; 3 uses
  %.not.i.i.i1.i75 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i1.i75, label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i76, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i74
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !192
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fi to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fn) #36
  br label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i76

_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i76: ; preds = %bb.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i74
  %i.fo = load ptr, ptr %8, align 8, !tbaa !46    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i76
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !47
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #36
  br label %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit80

_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit80:     ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.ap

bb.am:                                            ; preds = %bb.ag
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ah
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6opencc15AmbiguityStream5ChunkD2Ev(ptr noundef nonnull align 8 dead_on_return(81) dereferenceable(81) %8) #34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn45.pn = phi { ptr, i32 } [ %i.fu, %bb.an ], [ %i.ft, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.bq

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit80
  %.3130 = phi i64 [ %i.ee, %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit80 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.3126 = phi i64 [ %i.dv, %_ZN6opencc15AmbiguityStream5ChunkD2Ev.exit80 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i64 40, i1 false)
  store i64 256, ptr %i.fw, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %9, ptr %10, align 8, !tbaa !121
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fx, i8 0, i64 40, i1 false)
  store i64 512, ptr %i.fz, align 8, !tbaa !118
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i32 324, ptr %i.ga, align 8, !tbaa !122
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 60
  store i8 0, ptr %i.gb, align 4, !tbaa !123
  %i.gc = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11StartObjectEv(ptr noundef nonnull align 8 dereferenceable(61) %10)
          to label %bb.aq unwind label %bb.bl     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store ptr @.str.39, ptr %i.a, align 8, !tbaa !150
  %i.gd = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyERKPKc(ptr noundef nonnull align 8 dereferenceable(61) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ar unwind label %bb.bh     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.ge = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11StartObjectEv(ptr noundef nonnull align 8 dereferenceable(61) %10)
          to label %bb.as unwind label %bb.bl     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store ptr @.str.29, ptr %i.b, align 8, !tbaa !150
  %i.gf = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyERKPKc(ptr noundef nonnull align 8 dereferenceable(61) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.at unwind label %bb.bi     ; 0 uses

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.gg = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6Uint64Em(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %.3126)
          to label %bb.au unwind label %bb.bl     ; 0 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store ptr @.str.22, ptr %i.c, align 8, !tbaa !150
  %i.gh = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyERKPKc(ptr noundef nonnull align 8 dereferenceable(61) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.av unwind label %bb.bj     ; 0 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.gi = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6Uint64Em(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %.3130)
          to label %bb.aw unwind label %bb.bl     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  store ptr @.str.40, ptr %i.d, align 8, !tbaa !150
  %i.gj = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyERKPKc(ptr noundef nonnull align 8 dereferenceable(61) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ax unwind label %bb.bk     ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.gk = invoke noundef i64 @_ZNK6opencc15AmbiguityStream11SourceCountEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ay unwind label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.gl = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6Uint64Em(ptr noundef nonnull align 8 dereferenceable(61) %10, i64 noundef %i.gk)
          to label %bb.az unwind label %bb.bl     ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 4 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !130
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -16
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !130
  %i.gp = load ptr, ptr %10, align 8, !tbaa !121  ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !129
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 24 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !130 ; 2 uses
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = icmp slt i64 %i.gw, 1
  br i1 %i.gx, label %bb.ba, label %bb.bb, !prof !92

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gp, i64 noundef 1)
          to label %.noexc81 unwind label %bb.bl

.noexc81:                                         ; preds = %bb.ba
  %.pre.i.i.i = load ptr, ptr %i.gs, align 8, !tbaa !130
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc81, %bb.az
  %i.gy = phi ptr [ %i.gt, %bb.az ], [ %.pre.i.i.i, %.noexc81 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  store ptr %i.gz, ptr %i.gs, align 8, !tbaa !130
  store i8 125, ptr %i.gy, align 1, !tbaa !47
  %i.ha = load ptr, ptr %i.gm, align 8, !tbaa !130
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -16
  store ptr %i.hb, ptr %i.gm, align 8, !tbaa !130
  %i.hc = load ptr, ptr %10, align 8, !tbaa !121  ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !129
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 24 ; 3 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !130 ; 2 uses
  %i.hh = ptrtoint ptr %i.he to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = icmp slt i64 %i.hj, 1
  br i1 %i.hk, label %bb.bc, label %bb.bd, !prof !92

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, i64 noundef 1)
          to label %.noexc83 unwind label %bb.bl

.noexc83:                                         ; preds = %bb.bc
  %.pre.i.i.i82 = load ptr, ptr %i.hf, align 8, !tbaa !130
  br label %bb.bd

bb.bd:                                            ; preds = %.noexc83, %bb.bb
  %i.hl = phi ptr [ %i.hg, %bb.bb ], [ %.pre.i.i.i82, %.noexc83 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  store ptr %i.hm, ptr %i.hf, align 8, !tbaa !130
  store i8 125, ptr %i.hl, align 1, !tbaa !47
  %i.hn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !129
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !130 ; 2 uses
  %i.hs = ptrtoint ptr %i.hp to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = icmp slt i64 %i.hu, 1
  br i1 %i.hv, label %bb.be, label %bb.bf, !prof !92

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 noundef 1)
          to label %.noexc85 unwind label %bb.bl

.noexc85:                                         ; preds = %bb.be
  %.pre.i = load ptr, ptr %i.hq, align 8, !tbaa !130
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc85, %bb.bd
  %i.hw = phi ptr [ %i.hr, %bb.bd ], [ %.pre.i, %.noexc85 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store ptr %i.hx, ptr %i.hq, align 8, !tbaa !130
  store i8 0, ptr %i.hw, align 1, !tbaa !47
  %i.hy = load ptr, ptr %i.hq, align 8, !tbaa !130
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 -1
  store ptr %i.hz, ptr %i.hq, align 8, !tbaa !130
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !145
  %i.ic = call i32 @fputs(ptr noundef %i.ib, ptr noundef %1) ; 0 uses
  %i.id = call i32 @fputc(i32 noundef 10, ptr noundef %1) ; 0 uses
  %i.ie = load ptr, ptr %i.hq, align 8, !tbaa !130
  %i.if = load ptr, ptr %i.ia, align 8, !tbaa !145
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.ij = add i64 %i.ig, 1
  %i.ik = sub i64 %i.ij, %i.ih
  %i.il = add i64 %i.ik, %i.ii
  store i64 %i.il, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.im = load i8, ptr @noFlush, align 1, !tbaa !149, !range !37, !noundef !38
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.io = call i32 @fflush(ptr noundef %1)        ; 0 uses
  br label %bb.bm

bb.bh:                                            ; preds = %bb.aq
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.bp

bb.bi:                                            ; preds = %bb.as
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.bp

bb.bj:                                            ; preds = %bb.au
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.bp

bb.bk:                                            ; preds = %bb.aw
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  br label %bb.bp

bb.bl:                                            ; preds = %bb.ap, %bb.ar, %bb.at, %bb.av, %bb.ax, %bb.ay, %bb.ba, %bb.bc, %bb.be
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

end_hunk_0
