Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VTEmitter?download=true
inline.NumInlined: 606
inline.NumDeleted: 252
begin_hunk_0_@_ZN4llvm8TableGen7Emitter8OptClassIN12_GLOBAL__N_19VTEmitterEE3runENS_9StringRefERKNS_12RecordKeeperE:bb.a
  %i.abb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.64, i64 noundef 25) #14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76.i.i

bb.et:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.aag, ptr noundef nonnull align 1 dereferenceable(25) @.str.64, i64 25, i1 false)
  %i.abc = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 25
  store ptr %i.abd, ptr %i.ax, align 8, !tbaa !46
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit76.i.i:           ; preds = %bb.et, %bb.es
  %.0.i.i75.i.i = phi ptr [ %i.abb, %bb.es ], [ %6, %bb.et ]
  %i.abe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i75.i.i, i64 noundef %i.xw) #14 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !45
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 32 ; 3 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !46 ; 2 uses
  %i.abj = icmp eq ptr %i.abg, %i.abi
  br i1 %i.abj, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit76.i.i
  %i.abk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.abe, ptr noundef nonnull @.str.47, i64 noundef 1) #14 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit67.i.i

bb.ev:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit76.i.i
  store i8 41, ptr %i.abi, align 1
  %i.abl = load ptr, ptr %i.abh, align 8, !tbaa !46
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 1
  store ptr %i.abm, ptr %i.abh, align 8, !tbaa !46
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit67.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit67.i.i:           ; preds = %bb.ev, %bb.eu, %bb.eq, %bb.ep, %bb.ej, %bb.ei
  br i1 %i.vk, label %bb.ew, label %_ZL19vTtoGetLlvmTyStringRN4llvm11raw_ostreamEPKNS_6RecordE.exit.i

bb.ew:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit67.i.i
  %i.abn = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.abo = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = sub i64 %i.abp, %i.abq
  %i.abs = icmp ult i64 %i.abr, 2
  br i1 %i.abs, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.abt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.30, i64 noundef 2) #14
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i.i

bb.ey:                                            ; preds = %bb.ew
  store i16 8236, ptr %i.abo, align 1
  %i.abu = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 2
  store ptr %i.abv, ptr %i.ax, align 8, !tbaa !46
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit82.i.i:           ; preds = %bb.ey, %bb.ex
  %.0.i.i81.i.i = phi ptr [ %i.abt, %bb.ex ], [ %6, %bb.ey ]
  %i.abw = call noundef i64 @_ZNK4llvm6Record13getValueAsIntENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.tx, ptr nonnull @.str.14, i64 5) #14
  %i.abx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i81.i.i, i64 noundef %i.abw) #14 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 24
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !45
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 32 ; 3 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !46 ; 2 uses
  %i.acc = icmp eq ptr %i.abz, %i.acb
  br i1 %i.acc, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82.i.i
  %i.acd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.abx, ptr noundef nonnull @.str.47, i64 noundef 1) #14 ; 0 uses
  br label %_ZL19vTtoGetLlvmTyStringRN4llvm11raw_ostreamEPKNS_6RecordE.exit.i

bb.fa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82.i.i
  store i8 41, ptr %i.acb, align 1
  %i.ace = load ptr, ptr %i.aca, align 8, !tbaa !46
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 1
  store ptr %i.acf, ptr %i.aca, align 8, !tbaa !46
  br label %_ZL19vTtoGetLlvmTyStringRN4llvm11raw_ostreamEPKNS_6RecordE.exit.i

_ZL19vTtoGetLlvmTyStringRN4llvm11raw_ostreamEPKNS_6RecordE.exit.i: ; preds = %bb.fa, %bb.ez, %_ZN4llvm11raw_ostreamlsEPKc.exit67.i.i, %bb.dp, %bb.do
  %i.acg = load ptr, ptr %i.av, align 8, !tbaa !45
  %i.ach = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.aci = ptrtoint ptr %i.acg to i64
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = sub i64 %i.aci, %i.acj
  %i.acl = icmp ult i64 %i.ack, 2
  br i1 %i.acl, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %_ZL19vTtoGetLlvmTyStringRN4llvm11raw_ostreamEPKNS_6RecordE.exit.i
  %i.acm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.33, i64 noundef 2) #14 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit303.i

bb.fc:                                            ; preds = %_ZL19vTtoGetLlvmTyStringRN4llvm11raw_ostreamEPKNS_6RecordE.exit.i
  store i16 2601, ptr %i.ach, align 1
  %i.acn = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 2
  store ptr %i.aco, ptr %i.ax, align 8, !tbaa !46
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit303.i

_ZN4llvm11raw_ostreamlsEPKc.exit303.i:            ; preds = %bb.fc, %bb.fb, %bb.da, %_ZN4llvm11raw_ostreamlsEPKc.exit255.i
  %.sroa.010.0.add.i = add nuw nsw i64 %.sroa.010.0.idx112.i, 8 ; 2 uses
  %.not102.i = icmp eq i64 %.sroa.010.0.add.i, 4096
  br i1 %.not102.i, label %bb.cw, label %_ZN4llvm11raw_ostreamlsEPKc.exit255.i

_ZN12_GLOBAL__N_19VTEmitter3runERN4llvm11raw_ostreamE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit287.i, %bb.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 4096) #17
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.acp, ptr %0, align 8, !tbaa !8
  %i.acq = load ptr, ptr %5, align 8, !tbaa !87   ; 2 uses
  %i.acr = icmp eq ptr %i.acq, %i.a
  br i1 %i.acr, label %bb.fd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.fd:                                            ; preds = %_ZN12_GLOBAL__N_19VTEmitter3runERN4llvm11raw_ostreamE.exit
  %i.acs = load i64, ptr %i.b, align 8, !tbaa !12 ; 3 uses
  %i.act = icmp ult i64 %i.acs, 16
  call void @llvm.assume(i1 %i.act)
  %i.acu = add nuw nsw i64 %i.acs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.acu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN12_GLOBAL__N_19VTEmitter3runERN4llvm11raw_ostreamE.exit
  store ptr %i.acq, ptr %0, align 8, !tbaa !87
  %i.acv = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.acv, ptr %i.acp, align 8, !tbaa !15
  %.pre = load i64, ptr %i.b, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.acw = phi i64 [ %i.acs, %bb.fd ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.acx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.acw, ptr %i.acx, align 8, !tbaa !12
  store ptr %i.a, ptr %5, align 8, !tbaa !87
  store i64 0, ptr %i.b, align 8, !tbaa !12
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.acz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acy, i8 0, i64 24, i1 false)
  store ptr %i.acz, ptr %i.ada, align 8, !tbaa !42
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.acz, ptr %i.adb, align 8, !tbaa !43
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.adc, align 8, !tbaa !44
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.add = load ptr, ptr %5, align 8, !tbaa !87   ; 2 uses
  %i.ade = icmp eq ptr %i.add, %i.a
  br i1 %i.ade, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.adf = load i64, ptr %i.a, align 8, !tbaa !15
  %i.adg = add i64 %i.adf, 1
  call void @_ZdlPvm(ptr noundef %i.add, i64 noundef %i.adg) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

declare void @_ZN4llvm8TableGen7Emitter3OptC2ENS_9StringRefENS1_3FnTES3_b(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, ptr, ptr, ptr noundef byval(%"class.llvm::StringRef") align 8, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #5

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4llvm20emitSourceFileHeaderENS_9StringRefERNS_11raw_ostreamERKNS_12RecordKeeperE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240), ptr, i64) local_unnamed_addr #3

declare { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm6Record13getValueAsBitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

declare noundef i64 @_ZNK4llvm6Record13getValueAsIntENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN12_GLOBAL__N_19VTEmitter3runERN4llvm11raw_ostreamEENK3$_0clEPKcNS1_9StringRefEb"(ptr %.0.val, ptr noundef %0, ptr %1, i64 %2, i1 noundef zeroext %3) unnamed_addr #6 align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %3, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.a, %bb.c ], [ 0, %bb.b ] ; 22 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 6 uses
  %.not5.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not5.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i ], [ %.val.i.i.i, %_ZN4llvm9StringRefC2EPKc.exit ] ; 5 uses
  %.086.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i ], [ %i.c, %_ZN4llvm9StringRefC2EPKc.exit ]
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %.sroa.22.0.copyload.i.i.i.i.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #16
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.f            ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.g = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.0.0.i
  br i1 %i.g, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.h = icmp slt i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i, %.thread.i.i.i.i.i.i.i
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i, %.thread.i.i.i.i.i.i.i
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i.i ], [ 16, %.thread.i.i.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.086.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i.i ], [ %.07.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.07.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i ] ; 9 uses
  %i.i = getelementptr i8, ptr %.07.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !89

_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.j, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !86 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.k, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8, !tbaa !85
  %i.m = tail call i32 @memcmp(ptr noundef %0, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #16
  %.fr.i.i.i.i = freeze i32 %i.m                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i

.thread.i.i.i.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %bb.d
  %i.n = icmp ult i64 %.sroa.0.0.i, %.sroa.2.0.copyload.i.i
  br i1 %i.n, label %.critedge.i, label %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11try_emplaceIJEEES9_ISt17_Rb_tree_iteratorISB_EbEOS1_DpOT_.exit

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.o = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.o, label %.critedge.i, label %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11try_emplaceIJEEES9_ISt17_Rb_tree_iteratorISB_EbEOS1_DpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i, %.thread.i.i.i.i, %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i, %_ZN4llvm9StringRefC2EPKc.exit
  %i.p = phi i1 [ true, %_ZN4llvm9StringRefC2EPKc.exit ], [ false, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i ], [ true, %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i ], [ false, %.thread.i.i.i.i ]
  %.08.lcssa.i.i.i35.i = phi ptr [ %i.c, %_ZN4llvm9StringRefC2EPKc.exit ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11lower_boundERSA_.exit.i ], [ %.19.i.i.i.i, %.thread.i.i.i.i ] ; 12 uses
  %i.q = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #15 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %0, ptr %i.r, align 8, !tbaa !85
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 40, i1 false)
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.critedge.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %.val12.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !44
  %.not.i.i.i17.i = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %.not.i.i.i17.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88   ; 4 uses
  %.sroa.22.0..sroa_idx.i.i.i.i18.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.22.0.copyload.i.i.i.i19.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i18.i, align 8, !tbaa !86 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %.sroa.22.0.copyload.i.i.i.i19.i) ; 2 uses
  %i.w = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i20.i, 0
  br i1 %i.w, label %.thread.i.i.i.i.i.i26.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.01.0.copyload.i.i.i.i22.i = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.y = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i22.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i20.i) #16
  %.fr.i.i.i.i.i.i23.i = freeze i32 %i.y          ; 2 uses
  %.not.not.i.i.i.i.i.i24.i = icmp eq i32 %.fr.i.i.i.i.i.i23.i, 0
  br i1 %.not.not.i.i.i.i.i.i24.i, label %.thread.i.i.i.i.i.i26.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i25.i

.thread.i.i.i.i.i.i26.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21.i, %bb.f
  %i.z = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i19.i, %.sroa.0.0.i
  br i1 %i.z, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i25.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21.i
  %i.aa = icmp slt i32 %.fr.i.i.i.i.i.i23.i, 0
  br i1 %i.aa, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i

bb.g:                                             ; preds = %.critedge.i
  %.sroa.2.0..sroa_idx.i21.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i35.i, i64 40
  %.sroa.2.0.copyload.i22.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i21.i.i.i.i, align 8, !tbaa !86 ; 4 uses
  %.sroa.speculated.i.i.i23.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i22.i.i.i.i, i64 %.sroa.0.0.i) ; 3 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i23.i.i.i.i, 0
  br i1 %i.ab, label %.thread.i.i.i32.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i24.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i24.i.i.i.i: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i35.i, i64 32
  %.sroa.0.0.copyload.i25.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !85 ; 2 uses
  %i.ad = tail call i32 @memcmp(ptr noundef readonly %0, ptr noundef %.sroa.0.0.copyload.i25.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i23.i.i.i.i) #16
  %.fr.i.i.i27.i.i.i.i = freeze i32 %i.ad         ; 2 uses
  %.not.not.i.i.i28.i.i.i.i = icmp eq i32 %.fr.i.i.i27.i.i.i.i, 0
  br i1 %.not.not.i.i.i28.i.i.i.i, label %.thread.i.i.i32.thread.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.i.i.i.i

.thread.i.i.i32.i.i.i.i:                          ; preds = %bb.g
  %i.ae = icmp ult i64 %.sroa.0.0.i, %.sroa.2.0.copyload.i22.i.i.i.i
  br i1 %i.ae, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i, label %.thread.i.i.i62.i.i.i.i

.thread.i.i.i32.thread.i.i.i.i:                   ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i24.i.i.i.i
  %i.af = icmp ult i64 %.sroa.0.0.i, %.sroa.2.0.copyload.i22.i.i.i.i
  br i1 %i.af, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i54.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i24.i.i.i.i
  %i.ag = icmp slt i32 %.fr.i.i.i27.i.i.i.i, 0
  br i1 %i.ag, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i54.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.i.i.i.i, %.thread.i.i.i32.thread.i.i.i.i, %.thread.i.i.i32.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !88 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %.08.lcssa.i.i.i35.i
  br i1 %i.aj, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i35.i) #16 ; 4 uses
  %.sroa.22.0..sroa_idx.i34.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %.sroa.22.0.copyload.i35.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i34.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.sroa.speculated.i.i.i38.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %.sroa.22.0.copyload.i35.i.i.i.i) ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated.i.i.i38.i.i.i.i, 0
  br i1 %i.al, label %.thread.i.i.i47.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i39.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i39.i.i.i.i: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.01.0.copyload.i41.i.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !85
  %i.an = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i41.i.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i38.i.i.i.i) #16
  %.fr.i.i.i42.i.i.i.i = freeze i32 %i.an         ; 2 uses
  %.not.not.i.i.i43.i.i.i.i = icmp eq i32 %.fr.i.i.i42.i.i.i.i, 0
  br i1 %.not.not.i.i.i43.i.i.i.i, label %.thread.i.i.i47.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.i.i.i.i

.thread.i.i.i47.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i39.i.i.i.i, %bb.h
  %i.ao = icmp ult i64 %.sroa.22.0.copyload.i35.i.i.i.i, %.sroa.0.0.i
  br i1 %i.ao, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.thread31.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i39.i.i.i.i
  %i.ap = icmp slt i32 %.fr.i.i.i42.i.i.i.i, 0
  br i1 %i.ap, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.thread31.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.thread31.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.i.i.i.i, %.thread.i.i.i47.i.i.i.i
  %i.aq = getelementptr i8, ptr %i.ak, i64 24
  %.val10.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.ar = icmp eq ptr %.val10.i.i.i.i, null       ; 2 uses
  %spec.select.i.i.i16.i = select i1 %i.ar, ptr null, ptr %.08.lcssa.i.i.i35.i
  %spec.select43.i.i.i.i = select i1 %i.ar, ptr %i.ak, ptr %.08.lcssa.i.i.i35.i
  br label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i54.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.i.i.i.i, %.thread.i.i.i32.thread.i.i.i.i
  %i.as = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i25.i.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i23.i.i.i.i) #16
  %.fr.i.i.i57.i.i.i.i = freeze i32 %i.as         ; 2 uses
  %.not.not.i.i.i58.i.i.i.i = icmp eq i32 %.fr.i.i.i57.i.i.i.i, 0
  br i1 %.not.not.i.i.i58.i.i.i.i, label %.thread.i.i.i62.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.i.i.i.i

.thread.i.i.i62.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i54.i.i.i.i, %.thread.i.i.i32.i.i.i.i
  %i.at = icmp ult i64 %.sroa.2.0.copyload.i22.i.i.i.i, %.sroa.0.0.i
  br i1 %i.at, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.thread35.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread10.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i54.i.i.i.i
  %i.au = icmp slt i32 %.fr.i.i.i57.i.i.i.i, 0
  br i1 %i.au, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.thread35.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread10.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.thread35.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.i.i.i.i, %.thread.i.i.i62.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !88 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.08.lcssa.i.i.i35.i
  br i1 %i.ax, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.thread35.i.i.i.i
  %i.ay = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i35.i) #16 ; 4 uses
  %.sroa.2.0..sroa_idx.i66.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.2.0.copyload.i67.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i66.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.sroa.speculated.i.i.i68.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i67.i.i.i.i, i64 %.sroa.0.0.i) ; 2 uses
  %i.az = icmp eq i64 %.sroa.speculated.i.i.i68.i.i.i.i, 0
  br i1 %i.az, label %.thread.i.i.i77.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i69.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i69.i.i.i.i: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %.sroa.0.0.copyload.i70.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !85
  %i.bb = tail call i32 @memcmp(ptr noundef readonly %0, ptr noundef %.sroa.0.0.copyload.i70.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i68.i.i.i.i) #16
  %.fr.i.i.i72.i.i.i.i = freeze i32 %i.bb         ; 2 uses
  %.not.not.i.i.i73.i.i.i.i = icmp eq i32 %.fr.i.i.i72.i.i.i.i, 0
  br i1 %.not.not.i.i.i73.i.i.i.i, label %.thread.i.i.i77.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.i.i.i.i

.thread.i.i.i77.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i69.i.i.i.i, %bb.i
  %i.bc = icmp ult i64 %.sroa.0.0.i, %.sroa.2.0.copyload.i67.i.i.i.i
  br i1 %i.bc, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.thread39.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i69.i.i.i.i
  %i.bd = icmp slt i32 %.fr.i.i.i72.i.i.i.i, 0
  br i1 %i.bd, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.thread39.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.thread39.i.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.i.i.i.i, %.thread.i.i.i77.i.i.i.i
  %i.be = getelementptr i8, ptr %.08.lcssa.i.i.i35.i, i64 24
  %.val.i10.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !91
  %i.bf = icmp eq ptr %.val.i10.i.i.i, null       ; 2 uses
  %spec.select46.i.i.i.i = select i1 %i.bf, ptr null, ptr %i.ay
  %spec.select47.i.i.i.i = select i1 %i.bf, ptr %.08.lcssa.i.i.i35.i, ptr %i.ay
  br label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.i.i.i.i, %.thread.i.i.i77.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.i.i.i.i, %.thread.i.i.i47.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i25.i, %.thread.i.i.i.i.i.i26.i, %bb.e
  %.01120.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !88 ; 2 uses
  %.not21.i.i.i = icmp eq ptr %.01120.i.i.i, null
  br i1 %.not21.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i, %.lr.ph.i.i.i.backedge
  %.01122.i.i.i = phi ptr [ %.01122.i.i.i.be, %.lr.ph.i.i.i.backedge ], [ %.01120.i.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i ] ; 7 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01122.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !86 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.0.0.i) ; 3 uses
  %i.bg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.01122.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !85
  %i.bi = tail call i32 @memcmp(ptr noundef readonly %0, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16
  %.fr.i.i.i.i.i.i = freeze i32 %i.bi             ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bj = icmp ult i64 %.sroa.0.0.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.bj, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.bk = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.bk, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i, %.thread.i.i.i.i.i.i
  %i.bl = getelementptr i8, ptr %.01122.i.i.i, i64 16
  %.011.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !88 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %.011.i.i.i, null
  br i1 %.not.i6.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.backedge

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i, %.thread.i.i.i.i.i.i
  %i.bm = getelementptr i8, ptr %.01122.i.i.i, i64 24
  %.011.i2.i.i = load ptr, ptr %i.bm, align 8, !tbaa !88 ; 2 uses
  %.not.i63.i.i = icmp eq ptr %.011.i2.i.i, null
  br i1 %.not.i63.i.i, label %._crit_edge.i.thread.i.i, label %.lr.ph.i.i.i.backedge

.lr.ph.i.i.i.backedge:                            ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.i.i
  %.01122.i.i.i.be = phi ptr [ %.011.i2.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i ], [ %.011.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.i.i ]
  br label %.lr.ph.i.i.i, !llvm.loop !92

._crit_edge.thread.i.i.i:                         ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i
  %.010.lcssa27.i.i.i = phi ptr [ %i.c, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.sink.split.i.i.i ], [ %.01122.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.i.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i15.i = load ptr, ptr %i.bn, align 8, !tbaa !42
  %i.bo = icmp eq ptr %.010.lcssa27.i.i.i, %.val.i.i15.i
  br i1 %i.bo, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa27.i.i.i) #16 ; 2 uses
  %.sroa.22.0..sroa_idx.i14.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %.sroa.22.0.copyload.i15.i.pre.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i14.i.phi.trans.insert.i.i, align 8, !tbaa !86 ; 2 uses
  %.pre.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 %.sroa.22.0.copyload.i15.i.pre.i.i)
  br label %._crit_edge.i.thread.i.i

._crit_edge.i.thread.i.i:                         ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i, %bb.j
  %.sroa.speculated.i.i.i18.i.pre-phi.i.i = phi i64 [ %.pre.i.i, %bb.j ], [ %.sroa.speculated.i.i.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i ] ; 2 uses
  %.sroa.22.0.copyload.i15.i.i.i = phi i64 [ %.sroa.22.0.copyload.i15.i.pre.i.i, %bb.j ], [ %.sroa.2.0.copyload.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i ]
  %.010.lcssa26.i.i.i = phi ptr [ %.010.lcssa27.i.i.i, %bb.j ], [ %.01122.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi ptr [ %i.bp, %bb.j ], [ %.01122.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread13.i.thread.i.i ] ; 3 uses
  %i.bq = icmp eq i64 %.sroa.speculated.i.i.i18.i.pre-phi.i.i, 0
  br i1 %i.bq, label %.thread.i.i.i27.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i19.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i19.i.i.i: ; preds = %._crit_edge.i.thread.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 32
  %.sroa.01.0.copyload.i21.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !85
  %i.bs = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i21.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i18.i.pre-phi.i.i) #16
  %.fr.i.i.i22.i.i.i = freeze i32 %i.bs           ; 2 uses
  %.not.not.i.i.i23.i.i.i = icmp eq i32 %.fr.i.i.i22.i.i.i, 0
  br i1 %.not.not.i.i.i23.i.i.i, label %.thread.i.i.i27.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i.i.i

.thread.i.i.i27.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i19.i.i.i, %._crit_edge.i.thread.i.i
  %i.bt = icmp ult i64 %.sroa.22.0.copyload.i15.i.i.i, %.sroa.0.0.i
  br i1 %i.bt, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread10.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i19.i.i.i
  %i.bu = icmp slt i32 %.fr.i.i.i22.i.i.i, 0
  br i1 %i.bu, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread10.i.i.i

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i.i.i, %.thread.i.i.i27.i.i.i, %._crit_edge.thread.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.thread39.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.thread35.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.thread31.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i25.i, %.thread.i.i.i.i.i.i26.i
  %.sroa.12.2.i8.i.i.i = phi ptr [ %.010.lcssa27.i.i.i, %._crit_edge.thread.i.i.i ], [ %spec.select43.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.thread31.i.i.i.i ], [ %spec.select47.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.thread39.i.i.i.i ], [ %i.v, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i25.i ], [ %i.v, %.thread.i.i.i.i.i.i26.i ], [ %.010.lcssa26.i.i.i, %.thread.i.i.i27.i.i.i ], [ %.010.lcssa26.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i.i.i ], [ %i.aw, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.thread35.i.i.i.i ] ; 5 uses
  %.sroa.021.2.i7.i.i.i = phi ptr [ null, %._crit_edge.thread.i.i.i ], [ %spec.select.i.i.i16.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit48.thread31.i.i.i.i ], [ %spec.select46.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit78.thread39.i.i.i.i ], [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i25.i ], [ null, %.thread.i.i.i.i.i.i26.i ], [ null, %.thread.i.i.i27.i.i.i ], [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i.i.i ], [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.thread35.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ne ptr %.sroa.021.2.i7.i.i.i, null
  %i.bv = icmp eq ptr %.sroa.12.2.i8.i.i.i, %i.c
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.bv
  br i1 %or.cond.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i.thread, label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 40
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !86 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.i) ; 2 uses
  %i.bw = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i8.i.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !85
  %i.by = tail call i32 @memcmp(ptr noundef %0, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #16
  %.fr.i.i.i.i.i.i.i.i = freeze i32 %i.by         ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i, 0
  %.inv.i.i.i.i.i.i.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.k
  %i.bz = icmp eq i64 %.sroa.0.0.i, %.sroa.2.0.copyload.i.i.i.i.i.i
  br i1 %i.bz, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.thread.i.i.i.i.i.i.i.i
  %i.ca = icmp ult i64 %.sroa.0.0.i, %.sroa.2.0.copyload.i.i.i.i.i.i
  %i.cb = select i1 %i.ca, i32 -1, i32 1
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i.i: ; preds = %bb.l, %.thread.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.l ], [ 0, %.thread.i.i.i.i.i.i.i.i ]
  %i.cc = icmp slt i32 %.1.i.i.i.i.i.i.i.i, 0
  br label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i.thread

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i.thread: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i
  %.sroa.12.2.i8.i.i.i26 = phi ptr [ %.sroa.12.2.i8.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i.i ], [ %.sroa.12.2.i8.i.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i ], [ %i.ai, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i ]
  %i.cd = phi i1 [ %i.cc, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i.i.i ], [ true, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i ], [ true, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit33.thread27.i.i.i.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cd, ptr noundef nonnull %i.q, ptr noundef nonnull %.sroa.12.2.i8.i.i.i26, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #14
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !44
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !44
  br label %bb.m

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i.i.i, %.thread.i.i.i27.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.i.i.i.i, %.thread.i.i.i62.i.i.i.i
  %.sroa.01.0.ph.i.i.i = phi ptr [ %.sroa.01.0.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit28.i.i.i ], [ %.08.lcssa.i.i.i35.i, %.thread.i.i.i62.i.i.i.i ], [ %.08.lcssa.i.i.i35.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit63.i.i.i.i ], [ %.sroa.01.0.i.i.i, %.thread.i.i.i27.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 88) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread10.i.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i.thread
  %.sroa.033.0.i.ph = phi ptr [ %i.q, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread.i.i.i.thread ], [ %.sroa.01.0.ph.i.i.i, %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_.exit.thread10.i.i.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i.ph, i64 48
  store ptr %1, ptr %i.ch, align 8, !tbaa !85
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i.ph, i64 56
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !86
  br label %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11try_emplaceIJEEES9_ISt17_Rb_tree_iteratorISB_EbEOS1_DpOT_.exit

_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE11try_emplaceIJEEES9_ISt17_Rb_tree_iteratorISB_EbEOS1_DpOT_.exit: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i, %.thread.i.i.i.i, %bb.m
  %.sroa.033.0.i11 = phi ptr [ %.sroa.033.0.i.ph, %bb.m ], [ %.19.i.i.i.i, %.thread.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i11, i64 64
  store ptr %1, ptr %i.ci, align 8, !tbaa !85
  %.sroa.3.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.sroa.033.0.i11, i64 72
  store i64 %2, ptr %.sroa.3.0..sroa_idx8, align 8, !tbaa !86
  br label %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread

bb.n:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  br label %_ZN4llvm9StringRefC2EPKc.exit18

_ZN4llvm9StringRefC2EPKc.exit18:                  ; preds = %bb.n, %bb.o
  %.sroa.0.0.i17 = phi i64 [ %i.cj, %bb.o ], [ 0, %bb.n ] ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %.val.i.i = load ptr, ptr %i.ck, align 8, !tbaa !41 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not5.i.i.i, label %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZN4llvm9StringRefC2EPKc.exit18, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i
  %.07.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i ], [ %.val.i.i, %_ZN4llvm9StringRefC2EPKc.exit18 ] ; 5 uses
  %.086.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i ], [ %i.cl, %_ZN4llvm9StringRefC2EPKc.exit18 ]
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i17, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.cm = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i20, 0
  br i1 %i.cm, label %.thread.i.i.i.i.i.i25, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i19
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !85
  %i.co = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef readonly %0, i64 noundef %.sroa.speculated.i.i.i.i.i.i20) #16
  %.fr.i.i.i.i.i.i22 = freeze i32 %i.co           ; 2 uses
  %.not.not.i.i.i.i.i.i23 = icmp eq i32 %.fr.i.i.i.i.i.i22, 0
  br i1 %.not.not.i.i.i.i.i.i23, label %.thread.i.i.i.i.i.i25, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i24

.thread.i.i.i.i.i.i25:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21, %.lr.ph.i.i.i19
  %i.cp = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.0.0.i17
  br i1 %i.cp, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i24: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i21
  %i.cq = icmp slt i32 %.fr.i.i.i.i.i.i22, 0
  br i1 %i.cq, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i24, %.thread.i.i.i.i.i.i25
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i24, %.thread.i.i.i.i.i.i25
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i ], [ 16, %.thread.i.i.i.i.i.i25 ], [ 16, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i24 ]
  %.19.i.i.i = phi ptr [ %.086.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread3.i.i.i ], [ %.07.i.i.i, %.thread.i.i.i.i.i.i25 ], [ %.07.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.i.i.i24 ] ; 5 uses
  %i.cr = getelementptr i8, ptr %.07.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.cr, align 8, !tbaa !88 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i19, !llvm.loop !89

_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_ZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread.i.i.i
  %i.cs = icmp eq ptr %.19.i.i.i, %i.cl
  br i1 %i.cs, label %_ZNSt3mapIN4llvm9StringRefEZN12_GLOBAL__N_19VTEmitter3runERNS0_11raw_ostreamEE7VTRangeSt4lessIS1_ESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread, label %bb.p
end_hunk_0
