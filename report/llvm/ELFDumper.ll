Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFDumper?download=true
inline.NumInlined: 48625
inline.NumDeleted: 9679
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 236
begin_hunk_0_@_ZN4llvm12function_refIFNS_5ErrorERKNS_6object13Elf_Note_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEbEE11callback_fnIZN12_GLOBAL__N_112GNUELFDumperIS6_E10printNotesEvEUlS9_bE_EES1_lS9_b:bb.a
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !1016, !noalias !7177
  %i.yl = ptrtoint ptr %i.yk to i64
  %i.ym = ptrtoint ptr %i.yi to i64
  %i.yn = sub i64 %i.yl, %i.ym
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.yn) #32, !noalias !7177
  br label %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit

bb.ds:                                            ; preds = %_ZL13printCoreNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEvRNS0_11raw_ostreamERK8CoreNote.exit
  %i.yo = load ptr, ptr %23, align 8, !tbaa !346, !noalias !7177 ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.yo, null
  br i1 %.not.i.i3, label %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.ds
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !250, !noalias !7177
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !noalias !7177
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(8) %i.yo) #31, !noalias !7177, !inline_history !72
  br label %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit

_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit:            ; preds = %bb.dq, %bb.dr, %bb.ds, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !7177
  br label %_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit

_ZN4llvmeqENS_9StringRefES0_.exit175.i:           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit93.i
  %bcmp.i174.i = call i32 @bcmp(ptr %.sroa.0.0.i.i, ptr nonnull @.str.481, i64 %.sroa.4.0.i.i), !noalias !7177
  %i.ys = icmp eq i32 %bcmp.i174.i, 0
  br i1 %i.ys, label %bb.dt, label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

bb.dt:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit175.i
  %i.yt = load ptr, ptr %i.n, align 8, !tbaa !374, !noalias !7177, !nonnull !248, !align !338
  %i.yu = call fastcc noundef zeroext i1 @_ZL16printAndroidNoteRN4llvm11raw_ostreamEjNS_8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(48) %i.yt, i32 noundef %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.i63.i, i64 %i.l), !noalias !7177
  br i1 %i.yu, label %_ZN4llvm5ErrorD2Ev.exit177.i, label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

_ZN4llvm5ErrorD2Ev.exit177.i:                     ; preds = %bb.dt
  store ptr null, ptr %0, align 8, !tbaa !348, !alias.scope !7177
  br label %_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit

_ZNSt14_Optional_baseI11FreeBSDNoteLb0ELb0EED2Ev.exit183.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31, !noalias !7177
  br label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

.critedge58.i:                                    ; preds = %bb.be
  %i.yv = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !349, !noalias !7177 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184.i: ; preds = %.critedge58.i
  %i.yz = load i64, ptr %i.yx, align 8, !tbaa !270, !noalias !7177
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.za) #32, !noalias !7177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i: ; preds = %.critedge58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184.i
  %i.zb = load ptr, ptr %21, align 8, !tbaa !349, !noalias !7177 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.zd = icmp eq ptr %i.zb, %i.zc
  br i1 %i.zd, label %_ZN7AMDNoteD2Ev.exit189.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i186.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i186.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !270, !noalias !7177
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.zf) #32, !noalias !7177
  br label %_ZN7AMDNoteD2Ev.exit189.i

_ZN7AMDNoteD2Ev.exit189.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31, !noalias !7177
  br label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

.critedge60.i:                                    ; preds = %bb.bm
  %i.zg = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !349, !noalias !7177 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190.i: ; preds = %.critedge60.i
  %i.zk = load i64, ptr %i.zi, align 8, !tbaa !270, !noalias !7177
  %i.zl = add i64 %i.zk, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zl) #32, !noalias !7177
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i: ; preds = %.critedge60.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190.i
  %i.zm = load ptr, ptr %22, align 8, !tbaa !349, !noalias !7177 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.zo = icmp eq ptr %i.zm, %i.zn
  br i1 %i.zo, label %_ZN10AMDGPUNoteD2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i192.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i192.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i
  %i.zp = load i64, ptr %i.zn, align 8, !tbaa !270, !noalias !7177
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zq) #32, !noalias !7177
  br label %_ZN10AMDGPUNoteD2Ev.exit195.i

_ZN10AMDGPUNoteD2Ev.exit195.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i192.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31, !noalias !7177
  br label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i: ; preds = %_ZN10AMDGPUNoteD2Ev.exit195.i, %_ZN7AMDNoteD2Ev.exit189.i, %_ZNSt14_Optional_baseI11FreeBSDNoteLb0ELb0EED2Ev.exit183.i, %bb.dt, %_ZN4llvmeqENS_9StringRefES0_.exit175.i, %_ZN4llvmeqENS_9StringRefES0_.exit168.i, %bb.bu, %_ZN4llvmeqENS_9StringRefES0_.exit155.i, %_ZN4llvmeqENS_9StringRefES0_.exit132.i, %_ZN4llvmeqENS_9StringRefES0_.exit111.i, %bb.r, %_ZN4llvm11raw_ostreamlsEc.exit75.i
  br i1 %.not.i62.i, label %_ZN4llvm5ErrorD2Ev.exit207.i, label %bb.du

bb.du:                                            ; preds = %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i
  %i.zr = load ptr, ptr %i.n, align 8, !tbaa !374, !noalias !7177, !nonnull !248, !align !338 ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !371, !noalias !7177
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 32 ; 3 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !372, !noalias !7177 ; 2 uses
  %i.zw = ptrtoint ptr %i.zt to i64
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = icmp ult i64 %i.zy, 20
  br i1 %i.zz, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aaa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.zr, ptr noundef nonnull @.str.482, i64 noundef 20) #31, !noalias !7177 ; 0 uses
  br label %.lr.ph.i

bb.dw:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.zv, ptr noundef nonnull align 1 dereferenceable(20) @.str.482, i64 20, i1 false), !noalias !7177
  %i.aab = load ptr, ptr %i.zu, align 8, !tbaa !372, !noalias !7177
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 20
  store ptr %i.aac, ptr %i.zu, align 8, !tbaa !372, !noalias !7177
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dw, %bb.dv
  %i.aad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.aae = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.aaf = ptrtoint ptr %11 to i64
  br label %bb.dz

._crit_edge.i:                                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206.i
  %i.aag = load ptr, ptr %i.n, align 8, !tbaa !374, !noalias !7177, !nonnull !248, !align !338 ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 32 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !372, !noalias !7177 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !371, !noalias !7177
  %.not.i200.i = icmp ult ptr %i.aai, %i.aak
  br i1 %.not.i200.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i
  %i.aal = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aag, i8 noundef zeroext 10) #31, !noalias !7177 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit207.i

bb.dy:                                            ; preds = %._crit_edge.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  store ptr %i.aam, ptr %i.aah, align 8, !tbaa !372, !noalias !7177
  store i8 10, ptr %i.aai, align 1, !tbaa !270, !noalias !7177
  br label %_ZN4llvm5ErrorD2Ev.exit207.i

bb.dz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206.i, %.lr.ph.i
  %.0105.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.aay, %_ZN4llvm11raw_ostreamlsEPKc.exit206.i ] ; 2 uses
  %i.aan = load i8, ptr %.0105.i, align 1, !tbaa !270, !noalias !7177
  %i.aao = load ptr, ptr %i.n, align 8, !tbaa !374, !noalias !7177, !nonnull !248, !align !338 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !371, !noalias !7177
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 32 ; 3 uses
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !372, !noalias !7177 ; 2 uses
  %i.aat = icmp eq ptr %i.aaq, %i.aas
  br i1 %i.aat, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.aau = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aao, ptr noundef nonnull @.str.226, i64 noundef 1) #31, !noalias !7177
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206.i

bb.eb:                                            ; preds = %bb.dz
  store i8 32, ptr %i.aas, align 1, !noalias !7177
  %i.aav = load ptr, ptr %i.aar, align 8, !tbaa !372, !noalias !7177
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 1
  store ptr %i.aaw, ptr %i.aar, align 8, !tbaa !372, !noalias !7177
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206.i

_ZN4llvm11raw_ostreamlsEPKc.exit206.i:            ; preds = %bb.eb, %bb.ea
  %.0.i.i205.i = phi ptr [ %i.aau, %bb.ea ], [ %i.aao, %bb.eb ]
  store ptr @.str.483, ptr %25, align 8, !tbaa !881, !alias.scope !7192, !noalias !7177
  store i8 %i.aan, ptr %i.aae, align 8, !tbaa !865, !alias.scope !7192, !noalias !7177
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31, !noalias !7177
  store ptr %25, ptr %11, align 8, !tbaa !883, !noalias !7177
  %i.aax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i205.i, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJhEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.aaf) #31, !noalias !7177 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !7177
  %i.aay = getelementptr inbounds nuw i8, ptr %.0105.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.aay, %i.aad
  br i1 %.not.i, label %._crit_edge.i, label %bb.dz

_ZN4llvm5ErrorD2Ev.exit207.i:                     ; preds = %bb.dy, %bb.dx, %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i
  store ptr null, ptr %0, align 8, !tbaa !348, !alias.scope !7177
  br label %_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit

_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb0EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %_ZNSt14_Optional_baseI11FreeBSDNoteLb0ELb0EED2Ev.exit.i, %_ZN7AMDNoteD2Ev.exit.i, %_ZN10AMDGPUNoteD2Ev.exit.i, %_ZN4llvm5ErrorD2Ev.exit163.i, %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit177.i, %_ZN4llvm5ErrorD2Ev.exit207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_Z15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !998, !nonnull !248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 1, !tbaa !270 ; 14 uses
  %.0.copyload.i.i.i.i = load i32, ptr %i.a, align 1 ; 2 uses
  %.not.i = icmp eq i32 %.0.copyload.i.i.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 5 uses
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.c ; 7 uses
  %narrow.i = tail call i32 @llvm.usub.sat.i32(i32 %.0.copyload.i.i.i.i, i32 1) ; 7 uses
  %.sroa.4.0.i = zext i32 %narrow.i to i64        ; 7 uses
  %.not.i38 = icmp eq i32 %narrow.i, 3
  br i1 %.not.i38, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %bb.b

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.473, i64 %.sroa.4.0.i)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %.preheader.preheader, label %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread

.preheader.preheader:                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %switch.tableidx = add i32 %.sroa.0.0.copyload.i, -1 ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 5
  br i1 %i.e, label %switch.lookup, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup:                                    ; preds = %.preheader.preheader
  %narrow801 = mul nuw nsw i32 %switch.tableidx, 24
  %switch.idx.mult = zext nneg i32 %narrow801 to i64
  %.0108.i.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL12GNUNoteTypes, i64 %switch.idx.mult ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0108.i.ptr.le, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0108.i.ptr.le, i64 16
  %.sroa.32.0.copyload.i = load i64, ptr %.sroa.32.0..sroa_idx.i, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i43 = icmp eq i32 %narrow.i, 7            ; 3 uses
  br i1 %.not.i43, label %_ZN4llvmeqENS_9StringRefES0_.exit46, label %_ZN4llvmeqENS_9StringRefES0_.exit46.thread

_ZN4llvmeqENS_9StringRefES0_.exit46:              ; preds = %bb.b
  %bcmp.i45 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.474, i64 %.sroa.4.0.i)
  %i.g = icmp eq i32 %bcmp.i45, 0
  %i.h = icmp eq i32 %1, 4                        ; 2 uses
  br i1 %i.g, label %bb.c, label %.thread313

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46
  br i1 %i.h, label %.preheader400.preheader, label %.preheader401.preheader

.preheader401.preheader:                          ; preds = %bb.c
  %switch.tableidx792 = add i32 %.sroa.0.0.copyload.i, -1 ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx792, 4
  br i1 %i.i, label %switch.lookup793, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.preheader400.preheader:                          ; preds = %bb.c
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit.fold.split815 [
    i32 7, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58
    i32 8, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split
    i32 9, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542
    i32 10, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit
    i32 11, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543
    i32 12, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544
    i32 13, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545
    i32 14, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546
    i32 15, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547
    i32 16, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548
    i32 1, label %bb.d
    i32 2, label %.fold.split549
    i32 3, label %.fold.split550
    i32 4, label %.fold.split551
    i32 6, label %.fold.split552
    i32 17, label %.fold.split556
    i32 18, label %.fold.split557
    i32 256, label %.fold.split558
    i32 258, label %.fold.split559
    i32 259, label %.fold.split560
    i32 260, label %.fold.split561
    i32 261, label %.fold.split562
    i32 262, label %.fold.split563
    i32 263, label %.fold.split564
    i32 264, label %.fold.split565
    i32 265, label %.fold.split566
    i32 266, label %.fold.split567
    i32 267, label %.fold.split568
    i32 268, label %.fold.split569
    i32 269, label %.fold.split570
    i32 270, label %.fold.split571
    i32 271, label %.fold.split572
    i32 512, label %.fold.split573
    i32 513, label %.fold.split574
    i32 514, label %.fold.split575
    i32 768, label %.fold.split576
    i32 769, label %.fold.split577
    i32 770, label %.fold.split578
    i32 771, label %.fold.split579
    i32 772, label %.fold.split580
    i32 773, label %.fold.split581
    i32 774, label %.fold.split582
    i32 775, label %.fold.split583
    i32 776, label %.fold.split584
    i32 777, label %.fold.split585
    i32 778, label %.fold.split586
    i32 779, label %.fold.split587
    i32 780, label %.fold.split588
    i32 1024, label %.fold.split589
    i32 1025, label %.fold.split590
    i32 1026, label %.fold.split591
    i32 1027, label %.fold.split592
    i32 1029, label %.fold.split593
    i32 1030, label %.fold.split594
    i32 1033, label %.fold.split595
    i32 1035, label %.fold.split596
    i32 1036, label %.fold.split597
    i32 1037, label %.fold.split598
    i32 1038, label %.fold.split599
    i32 1039, label %.fold.split600
    i32 1040, label %.fold.split601
    i32 1179208773, label %.fold.split602
    i32 1189489535, label %.fold.split603
    i32 1397311305, label %.fold.split604
  ]

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58: ; preds = %.preheader400.preheader, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split
  %.0108.i47.idx.lcssa = phi i64 [ 0, %.preheader400.preheader ], [ 168, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546 ], [ 24, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split ], [ 192, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547 ], [ 48, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542 ], [ 96, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543 ], [ 120, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544 ], [ 144, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545 ], [ 216, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548 ]
  %.0108.i47.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL20FreeBSDCoreNoteTypes, i64 %.0108.i47.idx.lcssa ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0108.i47.ptr.le, i64 8
  %.sroa.01.0.copyload.i55 = load ptr, ptr %i.j, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %.0108.i47.ptr.le, i64 16
  %.sroa.32.0.copyload.i57 = load i64, ptr %.sroa.32.0..sroa_idx.i56, align 8, !tbaa !340 ; 2 uses
  %i.k = icmp eq i64 %.sroa.32.0.copyload.i57, 0
  br i1 %i.k, label %.critedge.i61.4, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge.i61.4:                                  ; preds = %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58
  %switch.tableidx802 = add i32 %.sroa.0.0.copyload.i, -10 ; 3 uses
  %i.l = icmp ult i32 %switch.tableidx802, 7
  %switch.maskindex = trunc i32 %switch.tableidx802 to i8
  %switch.shifted = lshr i8 77, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup804, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.fold.split549:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split550:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split551:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split552:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split556:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split557:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split558:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split559:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split560:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split561:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split562:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split563:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split564:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split565:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split566:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split567:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split568:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split569:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split570:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split571:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split572:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split573:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split574:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split575:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split576:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split577:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split578:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split579:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split580:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split581:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split582:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split583:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split584:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split585:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split586:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split587:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split588:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split589:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split590:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split591:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split592:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split593:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split594:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split595:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split596:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split597:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split598:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split599:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split600:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split601:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split602:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split603:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split604:                                   ; preds = %.preheader400.preheader
  br label %bb.d

switch.lookup804:                                 ; preds = %.critedge.i61.4
  %i.m = zext nneg i32 %switch.tableidx802 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Z15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEj, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup804, %.preheader400.preheader, %.fold.split604, %.fold.split603, %.fold.split602, %.fold.split601, %.fold.split600, %.fold.split599, %.fold.split598, %.fold.split597, %.fold.split596, %.fold.split595, %.fold.split594, %.fold.split593, %.fold.split592, %.fold.split591, %.fold.split590, %.fold.split589, %.fold.split588, %.fold.split587, %.fold.split586, %.fold.split585, %.fold.split584, %.fold.split583, %.fold.split582, %.fold.split581, %.fold.split580, %.fold.split579, %.fold.split578, %.fold.split577, %.fold.split576, %.fold.split575, %.fold.split574, %.fold.split573, %.fold.split572, %.fold.split571, %.fold.split570, %.fold.split569, %.fold.split568, %.fold.split567, %.fold.split566, %.fold.split565, %.fold.split564, %.fold.split563, %.fold.split562, %.fold.split561, %.fold.split560, %.fold.split559, %.fold.split558, %.fold.split557, %.fold.split556, %.fold.split552, %.fold.split551, %.fold.split550, %.fold.split549
  %.0108.i59.idx.lcssa = phi i64 [ 0, %.preheader400.preheader ], [ 1344, %.fold.split603 ], [ 24, %.fold.split549 ], [ 48, %.fold.split550 ], [ 72, %.fold.split551 ], [ %switch.ext, %switch.lookup804 ], [ 96, %.fold.split552 ], [ 1368, %.fold.split604 ], [ 1320, %.fold.split602 ], [ 1296, %.fold.split601 ], [ 216, %.fold.split556 ], [ 240, %.fold.split557 ], [ 264, %.fold.split558 ], [ 288, %.fold.split559 ], [ 312, %.fold.split560 ], [ 336, %.fold.split561 ], [ 360, %.fold.split562 ], [ 384, %.fold.split563 ], [ 408, %.fold.split564 ], [ 432, %.fold.split565 ], [ 456, %.fold.split566 ], [ 480, %.fold.split567 ], [ 504, %.fold.split568 ], [ 528, %.fold.split569 ], [ 552, %.fold.split570 ], [ 576, %.fold.split571 ], [ 600, %.fold.split572 ], [ 624, %.fold.split573 ], [ 648, %.fold.split574 ], [ 672, %.fold.split575 ], [ 696, %.fold.split576 ], [ 720, %.fold.split577 ], [ 744, %.fold.split578 ], [ 768, %.fold.split579 ], [ 792, %.fold.split580 ], [ 816, %.fold.split581 ], [ 840, %.fold.split582 ], [ 864, %.fold.split583 ], [ 888, %.fold.split584 ], [ 912, %.fold.split585 ], [ 936, %.fold.split586 ], [ 960, %.fold.split587 ], [ 984, %.fold.split588 ], [ 1008, %.fold.split589 ], [ 1032, %.fold.split590 ], [ 1056, %.fold.split591 ], [ 1080, %.fold.split592 ], [ 1104, %.fold.split593 ], [ 1128, %.fold.split594 ], [ 1152, %.fold.split595 ], [ 1176, %.fold.split596 ], [ 1200, %.fold.split597 ], [ 1224, %.fold.split598 ], [ 1248, %.fold.split599 ], [ 1272, %.fold.split600 ]
  %.0108.i59.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL13CoreNoteTypes, i64 %.0108.i59.idx.lcssa ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0108.i59.ptr.le, i64 8
  %.sroa.01.0.copyload.i67 = load ptr, ptr %i.n, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %.0108.i59.ptr.le, i64 16
  %.sroa.32.0.copyload.i69 = load i64, ptr %.sroa.32.0..sroa_idx.i68, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup793:                                 ; preds = %.preheader401.preheader
  %narrow800 = mul nuw nsw i32 %switch.tableidx792, 24
  %switch.idx.mult795 = zext nneg i32 %narrow800 to i64
  %.0108.i71.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL16FreeBSDNoteTypes, i64 %switch.idx.mult795 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0108.i71.ptr.le, i64 8
  %.sroa.01.0.copyload.i79 = load ptr, ptr %i.o, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.0108.i71.ptr.le, i64 16
  %.sroa.32.0.copyload.i81 = load i64, ptr %.sroa.32.0..sroa_idx.i80, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

_ZN4llvmeqENS_9StringRefES0_.exit46.thread:       ; preds = %bb.b
  %i.p = icmp eq i32 %1, 4                        ; 3 uses
  br i1 %i.p, label %bb.e, label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.q = icmp eq i32 %1, 4
  %bcmp.i141 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.476, i64 %.sroa.4.0.i)
  %i.r = icmp eq i32 %bcmp.i141, 0
  br i1 %i.r, label %.preheader393.preheader, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread

.preheader393.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread
  %switch.tableidx805 = add i32 %.sroa.0.0.copyload.i, -1 ; 3 uses
  %i.s = icmp ult i32 %switch.tableidx805, 12
  %switch.maskindex808 = trunc i32 %switch.tableidx805 to i16
  %switch.shifted809 = lshr i16 3591, %switch.maskindex808
  %switch.lobit810 = trunc i16 %switch.shifted809 to i1
  %or.cond816 = select i1 %i.s, i1 %switch.lobit810, i1 false
  br i1 %or.cond816, label %switch.lookup807, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.thread313:                                       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46
  br i1 %i.h, label %_ZNK4llvm9StringRef11starts_withES0_.exit113, label %_ZN4llvmeqENS_9StringRefES0_.exit193.thread537

bb.e:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread
  %.not.i84 = icmp ult i32 %narrow.i, 11
  br i1 %.not.i84, label %bb.g, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.e
  %i.t = load i64, ptr %i.c, align 1
  %i.u = xor i64 %i.t, 4840600298881049934
  %i.v = getelementptr i8, ptr %i.c, i64 3
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 4995142086648156994
  %i.y = or i64 %i.u, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.preheader410.preheader, label %_ZNK4llvm9StringRef11starts_withES0_.exit113

.preheader410.preheader:                          ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit.fold.split815 [
    i32 1, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit
    i32 2, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97
    i32 24, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split
    i32 3, label %.fold.split608
    i32 4, label %.fold.split609
    i32 6, label %.fold.split610
    i32 10, label %.fold.split611
    i32 12, label %.fold.split612
    i32 13, label %.fold.split613
    i32 16, label %.fold.split614
    i32 17, label %.fold.split615
    i32 18, label %.fold.split616
    i32 256, label %.fold.split617
    i32 258, label %.fold.split618
    i32 259, label %.fold.split619
    i32 260, label %.fold.split620
    i32 261, label %.fold.split621
    i32 262, label %.fold.split622
    i32 263, label %.fold.split623
    i32 264, label %.fold.split624
    i32 265, label %.fold.split625
    i32 266, label %.fold.split626
    i32 267, label %.fold.split627
    i32 268, label %.fold.split628
    i32 269, label %.fold.split629
    i32 270, label %.fold.split630
    i32 271, label %.fold.split631
    i32 512, label %.fold.split632
    i32 513, label %.fold.split633
    i32 514, label %.fold.split634
    i32 768, label %.fold.split635
    i32 769, label %.fold.split636
    i32 770, label %.fold.split637
    i32 771, label %.fold.split638
    i32 772, label %.fold.split639
    i32 773, label %.fold.split640
    i32 774, label %.fold.split641
    i32 775, label %.fold.split642
    i32 776, label %.fold.split643
    i32 777, label %.fold.split644
    i32 778, label %.fold.split645
    i32 779, label %.fold.split646
    i32 780, label %.fold.split647
    i32 1024, label %.fold.split648
    i32 1025, label %.fold.split649
    i32 1026, label %.fold.split650
    i32 1027, label %.fold.split651
    i32 1029, label %.fold.split652
    i32 1030, label %.fold.split653
    i32 1033, label %.fold.split654
    i32 1035, label %.fold.split655
    i32 1036, label %.fold.split656
    i32 1037, label %.fold.split657
    i32 1038, label %.fold.split658
    i32 1039, label %.fold.split659
    i32 1040, label %.fold.split660
    i32 1179208773, label %.fold.split661
    i32 1189489535, label %.fold.split662
    i32 1397311305, label %.fold.split663
  ]

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split: ; preds = %.preheader410.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97: ; preds = %.preheader410.preheader, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split
  %.0108.i86.idx.lcssa = phi i64 [ 24, %.preheader410.preheader ], [ 48, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split ]
  %.0108.i86.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL19NetBSDCoreNoteTypes, i64 %.0108.i86.idx.lcssa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0108.i86.ptr.le, i64 8
  %.sroa.01.0.copyload.i94 = load ptr, ptr %i.ac, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %.0108.i86.ptr.le, i64 16
  %.sroa.32.0.copyload.i96 = load i64, ptr %.sroa.32.0..sroa_idx.i95, align 8, !tbaa !340 ; 2 uses
  %i.ad = icmp eq i64 %.sroa.32.0.copyload.i96, 0
  br i1 %i.ad, label %.critedge.i100, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge.i100:                                   ; preds = %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 2, label %bb.f
    i32 3, label %.fold.split608
    i32 4, label %.fold.split609
    i32 6, label %.fold.split610
    i32 10, label %.fold.split611
    i32 12, label %.fold.split612
    i32 13, label %.fold.split613
    i32 16, label %.fold.split614
    i32 17, label %.fold.split615
    i32 18, label %.fold.split616
    i32 256, label %.fold.split617
    i32 258, label %.fold.split618
    i32 259, label %.fold.split619
    i32 260, label %.fold.split620
    i32 261, label %.fold.split621
    i32 262, label %.fold.split622
    i32 263, label %.fold.split623
    i32 264, label %.fold.split624
    i32 265, label %.fold.split625
    i32 266, label %.fold.split626
    i32 267, label %.fold.split627
    i32 268, label %.fold.split628
    i32 269, label %.fold.split629
    i32 270, label %.fold.split630
    i32 271, label %.fold.split631
    i32 512, label %.fold.split632
    i32 513, label %.fold.split633
    i32 514, label %.fold.split634
    i32 768, label %.fold.split635
    i32 769, label %.fold.split636
    i32 770, label %.fold.split637
    i32 771, label %.fold.split638
    i32 772, label %.fold.split639
    i32 773, label %.fold.split640
    i32 774, label %.fold.split641
    i32 775, label %.fold.split642
    i32 776, label %.fold.split643
    i32 777, label %.fold.split644
    i32 778, label %.fold.split645
    i32 779, label %.fold.split646
    i32 780, label %.fold.split647
    i32 1024, label %.fold.split648
    i32 1025, label %.fold.split649
    i32 1026, label %.fold.split650
    i32 1027, label %.fold.split651
    i32 1029, label %.fold.split652
    i32 1030, label %.fold.split653
    i32 1033, label %.fold.split654
    i32 1035, label %.fold.split655
    i32 1036, label %.fold.split656
    i32 1037, label %.fold.split657
    i32 1038, label %.fold.split658
    i32 1039, label %.fold.split659
    i32 1040, label %.fold.split660
    i32 1179208773, label %.fold.split661
    i32 1189489535, label %.fold.split662
    i32 1397311305, label %.fold.split663
  ]

.fold.split608:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split609:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split610:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split611:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split612:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split613:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split614:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split615:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split616:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split617:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split618:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split619:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split620:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split621:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split622:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split623:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split624:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split625:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split626:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split627:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split628:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split629:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split630:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split631:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split632:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split633:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split634:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split635:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split636:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split637:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split638:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split639:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split640:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split641:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split642:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split643:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split644:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split645:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split646:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split647:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split648:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split649:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split650:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split651:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split652:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split653:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split654:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split655:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split656:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split657:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split658:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split659:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split660:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split661:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split662:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split663:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i100, %.fold.split663, %.fold.split662, %.fold.split661, %.fold.split660, %.fold.split659, %.fold.split658, %.fold.split657, %.fold.split656, %.fold.split655, %.fold.split654, %.fold.split653, %.fold.split652, %.fold.split651, %.fold.split650, %.fold.split649, %.fold.split648, %.fold.split647, %.fold.split646, %.fold.split645, %.fold.split644, %.fold.split643, %.fold.split642, %.fold.split641, %.fold.split640, %.fold.split639, %.fold.split638, %.fold.split637, %.fold.split636, %.fold.split635, %.fold.split634, %.fold.split633, %.fold.split632, %.fold.split631, %.fold.split630, %.fold.split629, %.fold.split628, %.fold.split627, %.fold.split626, %.fold.split625, %.fold.split624, %.fold.split623, %.fold.split622, %.fold.split621, %.fold.split620, %.fold.split619, %.fold.split618, %.fold.split617, %.fold.split616, %.fold.split615, %.fold.split614, %.fold.split613, %.fold.split612, %.fold.split611, %.fold.split610, %.fold.split609, %.fold.split608
  %.0108.i98.idx.lcssa = phi i64 [ 1368, %.fold.split663 ], [ 24, %.critedge.i100 ], [ 1344, %.fold.split662 ], [ 48, %.fold.split608 ], [ 72, %.fold.split609 ], [ 96, %.fold.split610 ], [ 120, %.fold.split611 ], [ 144, %.fold.split612 ], [ 168, %.fold.split613 ], [ 192, %.fold.split614 ], [ 216, %.fold.split615 ], [ 240, %.fold.split616 ], [ 264, %.fold.split617 ], [ 288, %.fold.split618 ], [ 312, %.fold.split619 ], [ 336, %.fold.split620 ], [ 360, %.fold.split621 ], [ 384, %.fold.split622 ], [ 408, %.fold.split623 ], [ 432, %.fold.split624 ], [ 456, %.fold.split625 ], [ 480, %.fold.split626 ], [ 504, %.fold.split627 ], [ 528, %.fold.split628 ], [ 552, %.fold.split629 ], [ 576, %.fold.split630 ], [ 600, %.fold.split631 ], [ 624, %.fold.split632 ], [ 648, %.fold.split633 ], [ 672, %.fold.split634 ], [ 696, %.fold.split635 ], [ 720, %.fold.split636 ], [ 744, %.fold.split637 ], [ 768, %.fold.split638 ], [ 792, %.fold.split639 ], [ 816, %.fold.split640 ], [ 840, %.fold.split641 ], [ 864, %.fold.split642 ], [ 888, %.fold.split643 ], [ 912, %.fold.split644 ], [ 936, %.fold.split645 ], [ 960, %.fold.split646 ], [ 984, %.fold.split647 ], [ 1008, %.fold.split648 ], [ 1032, %.fold.split649 ], [ 1056, %.fold.split650 ], [ 1080, %.fold.split651 ], [ 1104, %.fold.split652 ], [ 1128, %.fold.split653 ], [ 1152, %.fold.split654 ], [ 1176, %.fold.split655 ], [ 1200, %.fold.split656 ], [ 1224, %.fold.split657 ], [ 1248, %.fold.split658 ], [ 1272, %.fold.split659 ], [ 1296, %.fold.split660 ], [ 1320, %.fold.split661 ]
  %.0108.i98.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL13CoreNoteTypes, i64 %.0108.i98.idx.lcssa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0108.i98.ptr.le, i64 8
  %.sroa.01.0.copyload.i106 = load ptr, ptr %i.ae, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %.0108.i98.ptr.le, i64 16
  %.sroa.32.0.copyload.i108 = load i64, ptr %.sroa.32.0..sroa_idx.i107, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.g:                                             ; preds = %bb.e
  %.not.i111 = icmp samesign ult i32 %narrow.i, 7
  br i1 %.not.i111, label %.critedge, label %_ZNK4llvm9StringRef11starts_withES0_.exit113

_ZNK4llvm9StringRef11starts_withES0_.exit113:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %.thread313, %bb.g
  %i.af = load i32, ptr %i.c, align 1
  %i.ag = xor i32 %i.af, 1852141647
  %i.ah = getelementptr i8, ptr %i.c, i64 3
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = xor i32 %i.ai, 1146307182
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.preheader404.preheader, label %.thread352

.preheader404.preheader:                          ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit113
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit.fold.split815 [
    i32 10, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit
    i32 11, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125
    i32 20, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split
    i32 21, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664
    i32 23, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665
    i32 1, label %bb.h
    i32 2, label %.fold.split666
    i32 3, label %.fold.split667
    i32 4, label %.fold.split668
    i32 6, label %.fold.split669
    i32 12, label %.fold.split670
    i32 13, label %.fold.split671
    i32 16, label %.fold.split672
    i32 17, label %.fold.split673
    i32 18, label %.fold.split674
    i32 256, label %.fold.split675
    i32 258, label %.fold.split676
    i32 259, label %.fold.split677
    i32 260, label %.fold.split678
    i32 261, label %.fold.split679
    i32 262, label %.fold.split680
    i32 263, label %.fold.split681
    i32 264, label %.fold.split682
    i32 265, label %.fold.split683
    i32 266, label %.fold.split684
    i32 267, label %.fold.split685
    i32 268, label %.fold.split686
    i32 269, label %.fold.split687
    i32 270, label %.fold.split688
    i32 271, label %.fold.split689
    i32 512, label %.fold.split690
    i32 513, label %.fold.split691
    i32 514, label %.fold.split692
    i32 768, label %.fold.split693
    i32 769, label %.fold.split694
    i32 770, label %.fold.split695
    i32 771, label %.fold.split696
    i32 772, label %.fold.split697
    i32 773, label %.fold.split698
    i32 774, label %.fold.split699
    i32 775, label %.fold.split700
    i32 776, label %.fold.split701
    i32 777, label %.fold.split702
    i32 778, label %.fold.split703
    i32 779, label %.fold.split704
    i32 780, label %.fold.split705
    i32 1024, label %.fold.split706
    i32 1025, label %.fold.split707
    i32 1026, label %.fold.split708
    i32 1027, label %.fold.split709
    i32 1029, label %.fold.split710
    i32 1030, label %.fold.split711
    i32 1033, label %.fold.split712
    i32 1035, label %.fold.split713
    i32 1036, label %.fold.split714
    i32 1037, label %.fold.split715
    i32 1038, label %.fold.split716
    i32 1039, label %.fold.split717
    i32 1040, label %.fold.split718
    i32 1179208773, label %.fold.split719
    i32 1189489535, label %.fold.split720
    i32 1397311305, label %.fold.split721
  ]

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split: ; preds = %.preheader404.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664: ; preds = %.preheader404.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665: ; preds = %.preheader404.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125: ; preds = %.preheader404.preheader, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split
  %.0108.i114.idx.lcssa = phi i64 [ 72, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664 ], [ 24, %.preheader404.preheader ], [ 48, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split ], [ 96, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665 ]
  %.0108.i114.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL20OpenBSDCoreNoteTypes, i64 %.0108.i114.idx.lcssa ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0108.i114.ptr.le, i64 8
  %.sroa.01.0.copyload.i122 = load ptr, ptr %i.ao, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %.0108.i114.ptr.le, i64 16
  %.sroa.32.0.copyload.i124 = load i64, ptr %.sroa.32.0..sroa_idx.i123, align 8, !tbaa !340 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.32.0.copyload.i124, 0
  br i1 %i.ap, label %.critedge.i128.5, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge.i128.5:                                 ; preds = %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 12, label %.fold.split670
    i32 13, label %bb.h
    i32 16, label %.fold.split672
    i32 17, label %.fold.split673
    i32 18, label %.fold.split674
    i32 256, label %.fold.split675
    i32 258, label %.fold.split676
    i32 259, label %.fold.split677
    i32 260, label %.fold.split678
    i32 261, label %.fold.split679
    i32 262, label %.fold.split680
    i32 263, label %.fold.split681
    i32 264, label %.fold.split682
    i32 265, label %.fold.split683
    i32 266, label %.fold.split684
    i32 267, label %.fold.split685
    i32 268, label %.fold.split686
    i32 269, label %.fold.split687
    i32 270, label %.fold.split688
    i32 271, label %.fold.split689
    i32 512, label %.fold.split690
    i32 513, label %.fold.split691
    i32 514, label %.fold.split692
    i32 768, label %.fold.split693
    i32 769, label %.fold.split694
    i32 770, label %.fold.split695
    i32 771, label %.fold.split696
    i32 772, label %.fold.split697
    i32 773, label %.fold.split698
    i32 774, label %.fold.split699
    i32 775, label %.fold.split700
    i32 776, label %.fold.split701
    i32 777, label %.fold.split702
    i32 778, label %.fold.split703
    i32 779, label %.fold.split704
    i32 780, label %.fold.split705
    i32 1024, label %.fold.split706
    i32 1025, label %.fold.split707
    i32 1026, label %.fold.split708
    i32 1027, label %.fold.split709
    i32 1029, label %.fold.split710
    i32 1030, label %.fold.split711
    i32 1033, label %.fold.split712
    i32 1035, label %.fold.split713
    i32 1036, label %.fold.split714
    i32 1037, label %.fold.split715
    i32 1038, label %.fold.split716
    i32 1039, label %.fold.split717
    i32 1040, label %.fold.split718
    i32 1179208773, label %.fold.split719
    i32 1189489535, label %.fold.split720
    i32 1397311305, label %.fold.split721
  ]

.fold.split666:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split667:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split668:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split669:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split670:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split671:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split672:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split673:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split674:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split675:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split676:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split677:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split678:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split679:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split680:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split681:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split682:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split683:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split684:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split685:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split686:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split687:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split688:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split689:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split690:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split691:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split692:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split693:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split694:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split695:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split696:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split697:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split698:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split699:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split700:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split701:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split702:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split703:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split704:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split705:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split706:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split707:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split708:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split709:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split710:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split711:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split712:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split713:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split714:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split715:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split716:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split717:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split718:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split719:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split720:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split721:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

bb.h:                                             ; preds = %.preheader404.preheader, %.critedge.i128.5, %.fold.split721, %.fold.split720, %.fold.split719, %.fold.split718, %.fold.split717, %.fold.split716, %.fold.split715, %.fold.split714, %.fold.split713, %.fold.split712, %.fold.split711, %.fold.split710, %.fold.split709, %.fold.split708, %.fold.split707, %.fold.split706, %.fold.split705, %.fold.split704, %.fold.split703, %.fold.split702, %.fold.split701, %.fold.split700, %.fold.split699, %.fold.split698, %.fold.split697, %.fold.split696, %.fold.split695, %.fold.split694, %.fold.split693, %.fold.split692, %.fold.split691, %.fold.split690, %.fold.split689, %.fold.split688, %.fold.split687, %.fold.split686, %.fold.split685, %.fold.split684, %.fold.split683, %.fold.split682, %.fold.split681, %.fold.split680, %.fold.split679, %.fold.split678, %.fold.split677, %.fold.split676, %.fold.split675, %.fold.split674, %.fold.split673, %.fold.split672, %.fold.split671, %.fold.split670, %.fold.split669, %.fold.split668, %.fold.split667, %.fold.split666
  %.0108.i126.idx.lcssa = phi i64 [ 0, %.preheader404.preheader ], [ 1344, %.fold.split720 ], [ 24, %.fold.split666 ], [ 48, %.fold.split667 ], [ 72, %.fold.split668 ], [ 1368, %.fold.split721 ], [ 96, %.fold.split669 ], [ 168, %.critedge.i128.5 ], [ 168, %.fold.split671 ], [ 192, %.fold.split672 ], [ 216, %.fold.split673 ], [ 240, %.fold.split674 ], [ 264, %.fold.split675 ], [ 288, %.fold.split676 ], [ 312, %.fold.split677 ], [ 336, %.fold.split678 ], [ 360, %.fold.split679 ], [ 384, %.fold.split680 ], [ 408, %.fold.split681 ], [ 432, %.fold.split682 ], [ 456, %.fold.split683 ], [ 480, %.fold.split684 ], [ 504, %.fold.split685 ], [ 528, %.fold.split686 ], [ 552, %.fold.split687 ], [ 576, %.fold.split688 ], [ 600, %.fold.split689 ], [ 624, %.fold.split690 ], [ 648, %.fold.split691 ], [ 672, %.fold.split692 ], [ 696, %.fold.split693 ], [ 720, %.fold.split694 ], [ 744, %.fold.split695 ], [ 768, %.fold.split696 ], [ 792, %.fold.split697 ], [ 816, %.fold.split698 ], [ 840, %.fold.split699 ], [ 864, %.fold.split700 ], [ 888, %.fold.split701 ], [ 912, %.fold.split702 ], [ 936, %.fold.split703 ], [ 960, %.fold.split704 ], [ 984, %.fold.split705 ], [ 1008, %.fold.split706 ], [ 1032, %.fold.split707 ], [ 1056, %.fold.split708 ], [ 1080, %.fold.split709 ], [ 1104, %.fold.split710 ], [ 1128, %.fold.split711 ], [ 1152, %.fold.split712 ], [ 1176, %.fold.split713 ], [ 1200, %.fold.split714 ], [ 1224, %.fold.split715 ], [ 1248, %.fold.split716 ], [ 1272, %.fold.split717 ], [ 1296, %.fold.split718 ], [ 1320, %.fold.split719 ], [ 144, %.fold.split670 ]
  %.0108.i126.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL13CoreNoteTypes, i64 %.0108.i126.idx.lcssa ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0108.i126.ptr.le, i64 8
  %.sroa.01.0.copyload.i134 = load ptr, ptr %i.aq, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %.0108.i126.ptr.le, i64 16
  %.sroa.32.0.copyload.i136 = load i64, ptr %.sroa.32.0..sroa_idx.i135, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup807:                                 ; preds = %.preheader393.preheader
  %i.ar = zext nneg i32 %switch.tableidx805 to i64
  %switch.gep811 = getelementptr inbounds nuw i8, ptr @switch.table._Z15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE0ELb1EEEENS0_9StringRefERKNT_4NoteEj, i64 %i.ar
  %switch.load812 = load i8, ptr %switch.gep811, align 1
  %switch.ext813 = zext i8 %switch.load812 to i64
  %.0108.i143.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL12AMDNoteTypes, i64 %switch.ext813 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0108.i143.ptr.le, i64 8
  %.sroa.01.0.copyload.i151 = load ptr, ptr %i.as, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %.0108.i143.ptr.le, i64 16
  %.sroa.32.0.copyload.i153 = load i64, ptr %.sroa.32.0..sroa_idx.i152, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread, %bb.g
  %.not.i156 = icmp eq i32 %narrow.i, 6
  br i1 %.not.i156, label %_ZN4llvmeqENS_9StringRefES0_.exit159, label %.thread352

_ZN4llvmeqENS_9StringRefES0_.exit159:             ; preds = %.critedge
  %bcmp.i158 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.478, i64 %.sroa.4.0.i)
  %i.at = icmp eq i32 %bcmp.i158, 0
  br i1 %i.at, label %.preheader407.preheader, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread

.preheader407.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit159
  %.not11.i161 = icmp eq i32 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %spec.select = select i1 %.not11.i161, ptr @.str.577, ptr @.str.19
  %spec.select727 = select i1 %.not11.i161, i64 36, i64 0
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.thread352:                                       ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit113, %.critedge
  %.ph356 = phi i1 [ %i.p, %.critedge ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit113 ] ; 2 uses
  %.not.i173 = icmp eq i32 %narrow.i, 14
  br i1 %.not.i173, label %_ZN4llvmeqENS_9StringRefES0_.exit176, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread

_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread, %_ZN4llvmeqENS_9StringRefES0_.exit159
  %.ph368.ph = phi i1 [ %i.p, %_ZN4llvmeqENS_9StringRefES0_.exit159 ], [ %i.q, %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread ]
  br i1 %.ph368.ph, label %bb.l, label %.thread

_ZN4llvmeqENS_9StringRefES0_.exit176.thread:      ; preds = %.thread352
  br i1 %.not.i43, label %_ZN4llvmeqENS_9StringRefES0_.exit193, label %_ZN4llvmeqENS_9StringRefES0_.exit193.thread

_ZN4llvmeqENS_9StringRefES0_.exit176:             ; preds = %.thread352
  %bcmp.i175 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.479, i64 %.sroa.4.0.i)
  %i.au = icmp eq i32 %bcmp.i175, 0
  br i1 %i.au, label %.preheader405.preheader, label %bb.i

.preheader405.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176
  %switch.tableidx796 = add i32 %.sroa.0.0.copyload.i, -1 ; 2 uses
  %i.av = icmp ult i32 %switch.tableidx796, 3
  br i1 %i.av, label %switch.lookup797, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup797:                                 ; preds = %.preheader405.preheader
  %narrow = mul nuw nsw i32 %switch.tableidx796, 24
  %switch.idx.mult799 = zext nneg i32 %narrow to i64
  %.0108.i177.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL23LLVMOMPOFFLOADNoteTypes, i64 %switch.idx.mult799 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0108.i177.ptr.le, i64 8
  %.sroa.01.0.copyload.i185 = load ptr, ptr %i.aw, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %.0108.i177.ptr.le, i64 16
  %.sroa.32.0.copyload.i187 = load i64, ptr %.sroa.32.0..sroa_idx.i186, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.i:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176
  br i1 %.not.i43, label %_ZN4llvmeqENS_9StringRefES0_.exit193, label %_ZN4llvmeqENS_9StringRefES0_.exit193.thread

_ZN4llvmeqENS_9StringRefES0_.exit193.thread:      ; preds = %bb.i, %_ZN4llvmeqENS_9StringRefES0_.exit176.thread
  br i1 %.ph356, label %bb.l, label %.thread

_ZN4llvmeqENS_9StringRefES0_.exit193:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176.thread, %bb.i
  %bcmp.i192 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.481, i64 %.sroa.4.0.i)
  %i.ax = icmp eq i32 %bcmp.i192, 0
  br i1 %i.ax, label %.preheader395.preheader, label %bb.k

_ZN4llvmeqENS_9StringRefES0_.exit193.thread537:   ; preds = %.thread313
  %bcmp.i192538 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.481, i64 %.sroa.4.0.i)
  %i.ay = icmp eq i32 %bcmp.i192538, 0
  br i1 %i.ay, label %.preheader395.preheader, label %.thread

.preheader395.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit193.thread537, %_ZN4llvmeqENS_9StringRefES0_.exit193
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 1, label %bb.j
    i32 3, label %.fold.split730
    i32 4, label %.fold.split731
  ]

.fold.split730:                                   ; preds = %.preheader395.preheader
  br label %bb.j

.fold.split731:                                   ; preds = %.preheader395.preheader
  br label %bb.j

bb.j:                                             ; preds = %.preheader395.preheader, %.fold.split731, %.fold.split730
  %.0108.i194.idx.lcssa = phi i64 [ 0, %.preheader395.preheader ], [ 24, %.fold.split730 ], [ 48, %.fold.split731 ]
  %.0108.i194.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL16AndroidNoteTypes, i64 %.0108.i194.idx.lcssa ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108.i194.ptr.le, i64 8
  %.sroa.01.0.copyload.i202 = load ptr, ptr %i.az, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %.0108.i194.ptr.le, i64 16
  %.sroa.32.0.copyload.i204 = load i64, ptr %.sroa.32.0..sroa_idx.i203, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.k:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit193
  br i1 %.ph356, label %bb.l, label %.thread

bb.l:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread, %_ZN4llvmeqENS_9StringRefES0_.exit193.thread, %bb.k
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb0EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 1, label %bb.m
    i32 2, label %.fold.split732
    i32 3, label %.fold.split733
    i32 4, label %.fold.split734
    i32 6, label %.fold.split735
    i32 10, label %.fold.split736
    i32 12, label %.fold.split737
    i32 13, label %.fold.split738
    i32 16, label %.fold.split739
    i32 17, label %.fold.split740
    i32 18, label %.fold.split741
    i32 256, label %.fold.split742
    i32 258, label %.fold.split743
    i32 259, label %.fold.split744
    i32 260, label %.fold.split745
    i32 261, label %.fold.split746
    i32 262, label %.fold.split747
    i32 263, label %.fold.split748
    i32 264, label %.fold.split749
    i32 265, label %.fold.split750
    i32 266, label %.fold.split751
    i32 267, label %.fold.split752
    i32 268, label %.fold.split753
    i32 269, label %.fold.split754
    i32 270, label %.fold.split755
    i32 271, label %.fold.split756
    i32 512, label %.fold.split757
    i32 513, label %.fold.split758
    i32 514, label %.fold.split759
    i32 768, label %.fold.split760
    i32 769, label %.fold.split761
    i32 770, label %.fold.split762
    i32 771, label %.fold.split763
    i32 772, label %.fold.split764
    i32 773, label %.fold.split765
    i32 774, label %.fold.split766
    i32 775, label %.fold.split767
    i32 776, label %.fold.split768
    i32 777, label %.fold.split769
    i32 778, label %.fold.split770
    i32 779, label %.fold.split771
    i32 780, label %.fold.split772
    i32 1024, label %.fold.split773
    i32 1025, label %.fold.split774
    i32 1026, label %.fold.split775
    i32 1027, label %.fold.split776
    i32 1029, label %.fold.split777
    i32 1030, label %.fold.split778
    i32 1033, label %.fold.split779
    i32 1035, label %.fold.split780
    i32 1036, label %.fold.split781
    i32 1037, label %.fold.split782
    i32 1038, label %.fold.split783
    i32 1039, label %.fold.split784
    i32 1040, label %.fold.split785
    i32 1179208773, label %.fold.split786
    i32 1189489535, label %.fold.split787
    i32 1397311305, label %.fold.split788
  ]

.fold.split732:                                   ; preds = %bb.l
  br label %bb.m

.fold.split733:                                   ; preds = %bb.l
  br label %bb.m

.fold.split734:                                   ; preds = %bb.l
  br label %bb.m

.fold.split735:                                   ; preds = %bb.l
  br label %bb.m

.fold.split736:                                   ; preds = %bb.l
  br label %bb.m

.fold.split737:                                   ; preds = %bb.l
  br label %bb.m

.fold.split738:                                   ; preds = %bb.l
  br label %bb.m

.fold.split739:                                   ; preds = %bb.l
  br label %bb.m

.fold.split740:                                   ; preds = %bb.l
  br label %bb.m

.fold.split741:                                   ; preds = %bb.l
  br label %bb.m

.fold.split742:                                   ; preds = %bb.l
  br label %bb.m

.fold.split743:                                   ; preds = %bb.l
  br label %bb.m

.fold.split744:                                   ; preds = %bb.l
  br label %bb.m

.fold.split745:                                   ; preds = %bb.l
  br label %bb.m

.fold.split746:                                   ; preds = %bb.l
  br label %bb.m

.fold.split747:                                   ; preds = %bb.l
  br label %bb.m

.fold.split748:                                   ; preds = %bb.l
  br label %bb.m

.fold.split749:                                   ; preds = %bb.l
  br label %bb.m

.fold.split750:                                   ; preds = %bb.l
  br label %bb.m

.fold.split751:                                   ; preds = %bb.l
  br label %bb.m

.fold.split752:                                   ; preds = %bb.l
  br label %bb.m

.fold.split753:                                   ; preds = %bb.l
  br label %bb.m

.fold.split754:                                   ; preds = %bb.l
  br label %bb.m

.fold.split755:                                   ; preds = %bb.l
  br label %bb.m

.fold.split756:                                   ; preds = %bb.l
  br label %bb.m

.fold.split757:                                   ; preds = %bb.l
  br label %bb.m

.fold.split758:                                   ; preds = %bb.l
  br label %bb.m

.fold.split759:                                   ; preds = %bb.l
  br label %bb.m

.fold.split760:                                   ; preds = %bb.l
  br label %bb.m

.fold.split761:                                   ; preds = %bb.l
  br label %bb.m

.fold.split762:                                   ; preds = %bb.l
  br label %bb.m

.fold.split763:                                   ; preds = %bb.l
  br label %bb.m

.fold.split764:                                   ; preds = %bb.l
  br label %bb.m

.fold.split765:                                   ; preds = %bb.l
  br label %bb.m

.fold.split766:                                   ; preds = %bb.l
  br label %bb.m

.fold.split767:                                   ; preds = %bb.l
  br label %bb.m

.fold.split768:                                   ; preds = %bb.l
  br label %bb.m
end_hunk_0
begin_hunk_1_@_ZN4llvm12function_refIFNS_5ErrorERKNS_6object13Elf_Note_ImplINS2_7ELFTypeILNS_10endiannessE1ELb1EEEEEbEE11callback_fnIZN12_GLOBAL__N_112GNUELFDumperIS6_E10printNotesEvEUlS9_bE_EES1_lS9_b:bb.a
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !1016, !noalias !21252
  %i.yl = ptrtoint ptr %i.yk to i64
  %i.ym = ptrtoint ptr %i.yi to i64
  %i.yn = sub i64 %i.yl, %i.ym
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef %i.yn) #32, !noalias !21252
  br label %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit

bb.ds:                                            ; preds = %_ZL13printCoreNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEvRNS0_11raw_ostreamERK8CoreNote.exit
  %i.yo = load ptr, ptr %23, align 8, !tbaa !346, !noalias !21252 ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.yo, null
  br i1 %.not.i.i3, label %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.ds
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !250, !noalias !21252
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !noalias !21252
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(8) %i.yo) #31, !noalias !21252, !inline_history !72
  br label %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit

_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit:            ; preds = %bb.dq, %bb.dr, %bb.ds, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31, !noalias !21252
  br label %_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit

_ZN4llvmeqENS_9StringRefES0_.exit175.i:           ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit93.i
  %bcmp.i174.i = call i32 @bcmp(ptr %.sroa.0.0.i.i, ptr nonnull @.str.481, i64 %.sroa.4.0.i.i), !noalias !21252
  %i.ys = icmp eq i32 %bcmp.i174.i, 0
  br i1 %i.ys, label %bb.dt, label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

bb.dt:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit175.i
  %i.yt = load ptr, ptr %i.n, align 8, !tbaa !1442, !noalias !21252, !nonnull !248, !align !338
  %i.yu = call fastcc noundef zeroext i1 @_ZL16printAndroidNoteRN4llvm11raw_ostreamEjNS_8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(48) %i.yt, i32 noundef %.sroa.0.0.copyload.i.i, ptr %.sroa.0.0.i63.i, i64 %i.l), !noalias !21252
  br i1 %i.yu, label %_ZN4llvm5ErrorD2Ev.exit177.i, label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

_ZN4llvm5ErrorD2Ev.exit177.i:                     ; preds = %bb.dt
  store ptr null, ptr %0, align 8, !tbaa !348, !alias.scope !21252
  br label %_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit

_ZNSt14_Optional_baseI11FreeBSDNoteLb0ELb0EED2Ev.exit183.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31, !noalias !21252
  br label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

.critedge58.i:                                    ; preds = %bb.be
  %i.yv = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !349, !noalias !21252 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184.i: ; preds = %.critedge58.i
  %i.yz = load i64, ptr %i.yx, align 8, !tbaa !270, !noalias !21252
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.za) #32, !noalias !21252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i: ; preds = %.critedge58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i184.i
  %i.zb = load ptr, ptr %21, align 8, !tbaa !349, !noalias !21252 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.zd = icmp eq ptr %i.zb, %i.zc
  br i1 %i.zd, label %_ZN7AMDNoteD2Ev.exit189.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i186.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i186.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !270, !noalias !21252
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.zf) #32, !noalias !21252
  br label %_ZN7AMDNoteD2Ev.exit189.i

_ZN7AMDNoteD2Ev.exit189.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i185.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31, !noalias !21252
  br label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

.critedge60.i:                                    ; preds = %bb.bm
  %i.zg = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !349, !noalias !21252 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 2 uses
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190.i: ; preds = %.critedge60.i
  %i.zk = load i64, ptr %i.zi, align 8, !tbaa !270, !noalias !21252
  %i.zl = add i64 %i.zk, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zl) #32, !noalias !21252
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i: ; preds = %.critedge60.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190.i
  %i.zm = load ptr, ptr %22, align 8, !tbaa !349, !noalias !21252 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.zo = icmp eq ptr %i.zm, %i.zn
  br i1 %i.zo, label %_ZN10AMDGPUNoteD2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i192.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i192.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i
  %i.zp = load i64, ptr %i.zn, align 8, !tbaa !270, !noalias !21252
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zm, i64 noundef %i.zq) #32, !noalias !21252
  br label %_ZN10AMDGPUNoteD2Ev.exit195.i

_ZN10AMDGPUNoteD2Ev.exit195.i:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i191.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i192.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31, !noalias !21252
  br label %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i

_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i: ; preds = %_ZN10AMDGPUNoteD2Ev.exit195.i, %_ZN7AMDNoteD2Ev.exit189.i, %_ZNSt14_Optional_baseI11FreeBSDNoteLb0ELb0EED2Ev.exit183.i, %bb.dt, %_ZN4llvmeqENS_9StringRefES0_.exit175.i, %_ZN4llvmeqENS_9StringRefES0_.exit168.i, %bb.bu, %_ZN4llvmeqENS_9StringRefES0_.exit155.i, %_ZN4llvmeqENS_9StringRefES0_.exit132.i, %_ZN4llvmeqENS_9StringRefES0_.exit111.i, %bb.r, %_ZN4llvm11raw_ostreamlsEc.exit75.i
  br i1 %.not.i62.i, label %_ZN4llvm5ErrorD2Ev.exit207.i, label %bb.du

bb.du:                                            ; preds = %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i
  %i.zr = load ptr, ptr %i.n, align 8, !tbaa !1442, !noalias !21252, !nonnull !248, !align !338 ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !371, !noalias !21252
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 32 ; 3 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !372, !noalias !21252 ; 2 uses
  %i.zw = ptrtoint ptr %i.zt to i64
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = icmp ult i64 %i.zy, 20
  br i1 %i.zz, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aaa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.zr, ptr noundef nonnull @.str.482, i64 noundef 20) #31, !noalias !21252 ; 0 uses
  br label %.lr.ph.i

bb.dw:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.zv, ptr noundef nonnull align 1 dereferenceable(20) @.str.482, i64 20, i1 false), !noalias !21252
  %i.aab = load ptr, ptr %i.zu, align 8, !tbaa !372, !noalias !21252
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 20
  store ptr %i.aac, ptr %i.zu, align 8, !tbaa !372, !noalias !21252
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dw, %bb.dv
  %i.aad = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.aae = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.aaf = ptrtoint ptr %11 to i64
  br label %bb.dz

._crit_edge.i:                                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206.i
  %i.aag = load ptr, ptr %i.n, align 8, !tbaa !1442, !noalias !21252, !nonnull !248, !align !338 ; 3 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 32 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !372, !noalias !21252 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !371, !noalias !21252
  %.not.i200.i = icmp ult ptr %i.aai, %i.aak
  br i1 %.not.i200.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i
  %i.aal = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.aag, i8 noundef zeroext 10) #31, !noalias !21252 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit207.i

bb.dy:                                            ; preds = %._crit_edge.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 1
  store ptr %i.aam, ptr %i.aah, align 8, !tbaa !372, !noalias !21252
  store i8 10, ptr %i.aai, align 1, !tbaa !270, !noalias !21252
  br label %_ZN4llvm5ErrorD2Ev.exit207.i

bb.dz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit206.i, %.lr.ph.i
  %.0105.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.aay, %_ZN4llvm11raw_ostreamlsEPKc.exit206.i ] ; 2 uses
  %i.aan = load i8, ptr %.0105.i, align 1, !tbaa !270, !noalias !21252
  %i.aao = load ptr, ptr %i.n, align 8, !tbaa !1442, !noalias !21252, !nonnull !248, !align !338 ; 4 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !371, !noalias !21252
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 32 ; 3 uses
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !372, !noalias !21252 ; 2 uses
  %i.aat = icmp eq ptr %i.aaq, %i.aas
  br i1 %i.aat, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.aau = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aao, ptr noundef nonnull @.str.226, i64 noundef 1) #31, !noalias !21252
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206.i

bb.eb:                                            ; preds = %bb.dz
  store i8 32, ptr %i.aas, align 1, !noalias !21252
  %i.aav = load ptr, ptr %i.aar, align 8, !tbaa !372, !noalias !21252
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 1
  store ptr %i.aaw, ptr %i.aar, align 8, !tbaa !372, !noalias !21252
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit206.i

_ZN4llvm11raw_ostreamlsEPKc.exit206.i:            ; preds = %bb.eb, %bb.ea
  %.0.i.i205.i = phi ptr [ %i.aau, %bb.ea ], [ %i.aao, %bb.eb ]
  store ptr @.str.483, ptr %25, align 8, !tbaa !881, !alias.scope !21267, !noalias !21252
  store i8 %i.aan, ptr %i.aae, align 8, !tbaa !865, !alias.scope !21267, !noalias !21252
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31, !noalias !21252
  store ptr %25, ptr %11, align 8, !tbaa !883, !noalias !21252
  %i.aax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i205.i, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJhEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.aaf) #31, !noalias !21252 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !21252
  %i.aay = getelementptr inbounds nuw i8, ptr %.0105.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.aay, %i.aad
  br i1 %.not.i, label %._crit_edge.i, label %bb.dz

_ZN4llvm5ErrorD2Ev.exit207.i:                     ; preds = %bb.dy, %bb.dx, %_ZL12printGNUNoteIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEEbRNS0_11raw_ostreamEjNS0_8ArrayRefIhEENT_4HalfE.exit.i
  store ptr null, ptr %0, align 8, !tbaa !348, !alias.scope !21252
  br label %_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit

_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE1ELb1EEEE10printNotesEvENKUlRKNS2_13Elf_Note_ImplIS5_EEbE_clESA_b.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i, %_ZNSt14_Optional_baseI11FreeBSDNoteLb0ELb0EED2Ev.exit.i, %_ZN7AMDNoteD2Ev.exit.i, %_ZN10AMDGPUNoteD2Ev.exit.i, %_ZN4llvm5ErrorD2Ev.exit163.i, %_ZN4llvm8ExpectedI8CoreNoteED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit177.i, %_ZN4llvm5ErrorD2Ev.exit207.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_Z15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1573, !nonnull !248 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 1, !tbaa !270 ; 14 uses
  %.0.copyload.i.i.i.i = load i32, ptr %i.a, align 1 ; 2 uses
  %.not.i = icmp eq i32 %.0.copyload.i.i.i.i, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 5 uses
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.c ; 7 uses
  %narrow.i = tail call i32 @llvm.usub.sat.i32(i32 %.0.copyload.i.i.i.i, i32 1) ; 7 uses
  %.sroa.4.0.i = zext i32 %narrow.i to i64        ; 7 uses
  %.not.i38 = icmp eq i32 %narrow.i, 3
  br i1 %.not.i38, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %bb.b

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.473, i64 %.sroa.4.0.i)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %.preheader.preheader, label %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread

.preheader.preheader:                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %switch.tableidx = add i32 %.sroa.0.0.copyload.i, -1 ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 5
  br i1 %i.e, label %switch.lookup, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup:                                    ; preds = %.preheader.preheader
  %narrow801 = mul nuw nsw i32 %switch.tableidx, 24
  %switch.idx.mult = zext nneg i32 %narrow801 to i64
  %.0108.i.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL12GNUNoteTypes, i64 %switch.idx.mult ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0108.i.ptr.le, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0108.i.ptr.le, i64 16
  %.sroa.32.0.copyload.i = load i64, ptr %.sroa.32.0..sroa_idx.i, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i43 = icmp eq i32 %narrow.i, 7            ; 3 uses
  br i1 %.not.i43, label %_ZN4llvmeqENS_9StringRefES0_.exit46, label %_ZN4llvmeqENS_9StringRefES0_.exit46.thread

_ZN4llvmeqENS_9StringRefES0_.exit46:              ; preds = %bb.b
  %bcmp.i45 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.474, i64 %.sroa.4.0.i)
  %i.g = icmp eq i32 %bcmp.i45, 0
  %i.h = icmp eq i32 %1, 4                        ; 2 uses
  br i1 %i.g, label %bb.c, label %.thread313

bb.c:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46
  br i1 %i.h, label %.preheader400.preheader, label %.preheader401.preheader

.preheader401.preheader:                          ; preds = %bb.c
  %switch.tableidx792 = add i32 %.sroa.0.0.copyload.i, -1 ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx792, 4
  br i1 %i.i, label %switch.lookup793, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.preheader400.preheader:                          ; preds = %bb.c
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit.fold.split815 [
    i32 7, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58
    i32 8, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split
    i32 9, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542
    i32 10, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit
    i32 11, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543
    i32 12, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544
    i32 13, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545
    i32 14, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546
    i32 15, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547
    i32 16, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548
    i32 1, label %bb.d
    i32 2, label %.fold.split549
    i32 3, label %.fold.split550
    i32 4, label %.fold.split551
    i32 6, label %.fold.split552
    i32 17, label %.fold.split556
    i32 18, label %.fold.split557
    i32 256, label %.fold.split558
    i32 258, label %.fold.split559
    i32 259, label %.fold.split560
    i32 260, label %.fold.split561
    i32 261, label %.fold.split562
    i32 262, label %.fold.split563
    i32 263, label %.fold.split564
    i32 264, label %.fold.split565
    i32 265, label %.fold.split566
    i32 266, label %.fold.split567
    i32 267, label %.fold.split568
    i32 268, label %.fold.split569
    i32 269, label %.fold.split570
    i32 270, label %.fold.split571
    i32 271, label %.fold.split572
    i32 512, label %.fold.split573
    i32 513, label %.fold.split574
    i32 514, label %.fold.split575
    i32 768, label %.fold.split576
    i32 769, label %.fold.split577
    i32 770, label %.fold.split578
    i32 771, label %.fold.split579
    i32 772, label %.fold.split580
    i32 773, label %.fold.split581
    i32 774, label %.fold.split582
    i32 775, label %.fold.split583
    i32 776, label %.fold.split584
    i32 777, label %.fold.split585
    i32 778, label %.fold.split586
    i32 779, label %.fold.split587
    i32 780, label %.fold.split588
    i32 1024, label %.fold.split589
    i32 1025, label %.fold.split590
    i32 1026, label %.fold.split591
    i32 1027, label %.fold.split592
    i32 1029, label %.fold.split593
    i32 1030, label %.fold.split594
    i32 1033, label %.fold.split595
    i32 1035, label %.fold.split596
    i32 1036, label %.fold.split597
    i32 1037, label %.fold.split598
    i32 1038, label %.fold.split599
    i32 1039, label %.fold.split600
    i32 1040, label %.fold.split601
    i32 1179208773, label %.fold.split602
    i32 1189489535, label %.fold.split603
    i32 1397311305, label %.fold.split604
  ]

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548: ; preds = %.preheader400.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58: ; preds = %.preheader400.preheader, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split
  %.0108.i47.idx.lcssa = phi i64 [ 0, %.preheader400.preheader ], [ 168, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split546 ], [ 24, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split ], [ 192, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split547 ], [ 48, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split542 ], [ 96, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split543 ], [ 120, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split544 ], [ 144, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split545 ], [ 216, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58.fold.split548 ]
  %.0108.i47.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL20FreeBSDCoreNoteTypes, i64 %.0108.i47.idx.lcssa ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0108.i47.ptr.le, i64 8
  %.sroa.01.0.copyload.i55 = load ptr, ptr %i.j, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %.0108.i47.ptr.le, i64 16
  %.sroa.32.0.copyload.i57 = load i64, ptr %.sroa.32.0..sroa_idx.i56, align 8, !tbaa !340 ; 2 uses
  %i.k = icmp eq i64 %.sroa.32.0.copyload.i57, 0
  br i1 %i.k, label %.critedge.i61.4, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge.i61.4:                                  ; preds = %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit58
  %switch.tableidx802 = add i32 %.sroa.0.0.copyload.i, -10 ; 3 uses
  %i.l = icmp ult i32 %switch.tableidx802, 7
  %switch.maskindex = trunc i32 %switch.tableidx802 to i8
  %switch.shifted = lshr i8 77, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.l, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup804, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.fold.split549:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split550:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split551:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split552:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split556:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split557:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split558:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split559:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split560:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split561:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split562:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split563:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split564:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split565:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split566:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split567:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split568:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split569:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split570:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split571:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split572:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split573:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split574:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split575:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split576:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split577:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split578:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split579:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split580:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split581:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split582:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split583:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split584:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split585:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split586:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split587:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split588:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split589:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split590:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split591:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split592:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split593:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split594:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split595:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split596:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split597:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split598:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split599:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split600:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split601:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split602:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split603:                                   ; preds = %.preheader400.preheader
  br label %bb.d

.fold.split604:                                   ; preds = %.preheader400.preheader
  br label %bb.d

switch.lookup804:                                 ; preds = %.critedge.i61.4
  %i.m = zext nneg i32 %switch.tableidx802 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._Z15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEj, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup804, %.preheader400.preheader, %.fold.split604, %.fold.split603, %.fold.split602, %.fold.split601, %.fold.split600, %.fold.split599, %.fold.split598, %.fold.split597, %.fold.split596, %.fold.split595, %.fold.split594, %.fold.split593, %.fold.split592, %.fold.split591, %.fold.split590, %.fold.split589, %.fold.split588, %.fold.split587, %.fold.split586, %.fold.split585, %.fold.split584, %.fold.split583, %.fold.split582, %.fold.split581, %.fold.split580, %.fold.split579, %.fold.split578, %.fold.split577, %.fold.split576, %.fold.split575, %.fold.split574, %.fold.split573, %.fold.split572, %.fold.split571, %.fold.split570, %.fold.split569, %.fold.split568, %.fold.split567, %.fold.split566, %.fold.split565, %.fold.split564, %.fold.split563, %.fold.split562, %.fold.split561, %.fold.split560, %.fold.split559, %.fold.split558, %.fold.split557, %.fold.split556, %.fold.split552, %.fold.split551, %.fold.split550, %.fold.split549
  %.0108.i59.idx.lcssa = phi i64 [ 0, %.preheader400.preheader ], [ 1344, %.fold.split603 ], [ 24, %.fold.split549 ], [ 48, %.fold.split550 ], [ 72, %.fold.split551 ], [ %switch.ext, %switch.lookup804 ], [ 96, %.fold.split552 ], [ 1368, %.fold.split604 ], [ 1320, %.fold.split602 ], [ 1296, %.fold.split601 ], [ 216, %.fold.split556 ], [ 240, %.fold.split557 ], [ 264, %.fold.split558 ], [ 288, %.fold.split559 ], [ 312, %.fold.split560 ], [ 336, %.fold.split561 ], [ 360, %.fold.split562 ], [ 384, %.fold.split563 ], [ 408, %.fold.split564 ], [ 432, %.fold.split565 ], [ 456, %.fold.split566 ], [ 480, %.fold.split567 ], [ 504, %.fold.split568 ], [ 528, %.fold.split569 ], [ 552, %.fold.split570 ], [ 576, %.fold.split571 ], [ 600, %.fold.split572 ], [ 624, %.fold.split573 ], [ 648, %.fold.split574 ], [ 672, %.fold.split575 ], [ 696, %.fold.split576 ], [ 720, %.fold.split577 ], [ 744, %.fold.split578 ], [ 768, %.fold.split579 ], [ 792, %.fold.split580 ], [ 816, %.fold.split581 ], [ 840, %.fold.split582 ], [ 864, %.fold.split583 ], [ 888, %.fold.split584 ], [ 912, %.fold.split585 ], [ 936, %.fold.split586 ], [ 960, %.fold.split587 ], [ 984, %.fold.split588 ], [ 1008, %.fold.split589 ], [ 1032, %.fold.split590 ], [ 1056, %.fold.split591 ], [ 1080, %.fold.split592 ], [ 1104, %.fold.split593 ], [ 1128, %.fold.split594 ], [ 1152, %.fold.split595 ], [ 1176, %.fold.split596 ], [ 1200, %.fold.split597 ], [ 1224, %.fold.split598 ], [ 1248, %.fold.split599 ], [ 1272, %.fold.split600 ]
  %.0108.i59.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL13CoreNoteTypes, i64 %.0108.i59.idx.lcssa ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0108.i59.ptr.le, i64 8
  %.sroa.01.0.copyload.i67 = load ptr, ptr %i.n, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %.0108.i59.ptr.le, i64 16
  %.sroa.32.0.copyload.i69 = load i64, ptr %.sroa.32.0..sroa_idx.i68, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup793:                                 ; preds = %.preheader401.preheader
  %narrow800 = mul nuw nsw i32 %switch.tableidx792, 24
  %switch.idx.mult795 = zext nneg i32 %narrow800 to i64
  %.0108.i71.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL16FreeBSDNoteTypes, i64 %switch.idx.mult795 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0108.i71.ptr.le, i64 8
  %.sroa.01.0.copyload.i79 = load ptr, ptr %i.o, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.0108.i71.ptr.le, i64 16
  %.sroa.32.0.copyload.i81 = load i64, ptr %.sroa.32.0..sroa_idx.i80, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

_ZN4llvmeqENS_9StringRefES0_.exit46.thread:       ; preds = %bb.b
  %i.p = icmp eq i32 %1, 4                        ; 3 uses
  br i1 %i.p, label %bb.e, label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.q = icmp eq i32 %1, 4
  %bcmp.i141 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.476, i64 %.sroa.4.0.i)
  %i.r = icmp eq i32 %bcmp.i141, 0
  br i1 %i.r, label %.preheader393.preheader, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread

.preheader393.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread
  %switch.tableidx805 = add i32 %.sroa.0.0.copyload.i, -1 ; 3 uses
  %i.s = icmp ult i32 %switch.tableidx805, 12
  %switch.maskindex808 = trunc i32 %switch.tableidx805 to i16
  %switch.shifted809 = lshr i16 3591, %switch.maskindex808
  %switch.lobit810 = trunc i16 %switch.shifted809 to i1
  %or.cond816 = select i1 %i.s, i1 %switch.lobit810, i1 false
  br i1 %or.cond816, label %switch.lookup807, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.thread313:                                       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46
  br i1 %i.h, label %_ZNK4llvm9StringRef11starts_withES0_.exit113, label %_ZN4llvmeqENS_9StringRefES0_.exit193.thread537

bb.e:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread
  %.not.i84 = icmp ult i32 %narrow.i, 11
  br i1 %.not.i84, label %bb.g, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.e
  %i.t = load i64, ptr %i.c, align 1
  %i.u = xor i64 %i.t, 4840600298881049934
  %i.v = getelementptr i8, ptr %i.c, i64 3
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 4995142086648156994
  %i.y = or i64 %i.u, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.preheader410.preheader, label %_ZNK4llvm9StringRef11starts_withES0_.exit113

.preheader410.preheader:                          ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit.fold.split815 [
    i32 1, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit
    i32 2, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97
    i32 24, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split
    i32 3, label %.fold.split608
    i32 4, label %.fold.split609
    i32 6, label %.fold.split610
    i32 10, label %.fold.split611
    i32 12, label %.fold.split612
    i32 13, label %.fold.split613
    i32 16, label %.fold.split614
    i32 17, label %.fold.split615
    i32 18, label %.fold.split616
    i32 256, label %.fold.split617
    i32 258, label %.fold.split618
    i32 259, label %.fold.split619
    i32 260, label %.fold.split620
    i32 261, label %.fold.split621
    i32 262, label %.fold.split622
    i32 263, label %.fold.split623
    i32 264, label %.fold.split624
    i32 265, label %.fold.split625
    i32 266, label %.fold.split626
    i32 267, label %.fold.split627
    i32 268, label %.fold.split628
    i32 269, label %.fold.split629
    i32 270, label %.fold.split630
    i32 271, label %.fold.split631
    i32 512, label %.fold.split632
    i32 513, label %.fold.split633
    i32 514, label %.fold.split634
    i32 768, label %.fold.split635
    i32 769, label %.fold.split636
    i32 770, label %.fold.split637
    i32 771, label %.fold.split638
    i32 772, label %.fold.split639
    i32 773, label %.fold.split640
    i32 774, label %.fold.split641
    i32 775, label %.fold.split642
    i32 776, label %.fold.split643
    i32 777, label %.fold.split644
    i32 778, label %.fold.split645
    i32 779, label %.fold.split646
    i32 780, label %.fold.split647
    i32 1024, label %.fold.split648
    i32 1025, label %.fold.split649
    i32 1026, label %.fold.split650
    i32 1027, label %.fold.split651
    i32 1029, label %.fold.split652
    i32 1030, label %.fold.split653
    i32 1033, label %.fold.split654
    i32 1035, label %.fold.split655
    i32 1036, label %.fold.split656
    i32 1037, label %.fold.split657
    i32 1038, label %.fold.split658
    i32 1039, label %.fold.split659
    i32 1040, label %.fold.split660
    i32 1179208773, label %.fold.split661
    i32 1189489535, label %.fold.split662
    i32 1397311305, label %.fold.split663
  ]

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split: ; preds = %.preheader410.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97: ; preds = %.preheader410.preheader, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split
  %.0108.i86.idx.lcssa = phi i64 [ 24, %.preheader410.preheader ], [ 48, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97.fold.split ]
  %.0108.i86.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL19NetBSDCoreNoteTypes, i64 %.0108.i86.idx.lcssa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0108.i86.ptr.le, i64 8
  %.sroa.01.0.copyload.i94 = load ptr, ptr %i.ac, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %.0108.i86.ptr.le, i64 16
  %.sroa.32.0.copyload.i96 = load i64, ptr %.sroa.32.0..sroa_idx.i95, align 8, !tbaa !340 ; 2 uses
  %i.ad = icmp eq i64 %.sroa.32.0.copyload.i96, 0
  br i1 %i.ad, label %.critedge.i100, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge.i100:                                   ; preds = %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit97
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 2, label %bb.f
    i32 3, label %.fold.split608
    i32 4, label %.fold.split609
    i32 6, label %.fold.split610
    i32 10, label %.fold.split611
    i32 12, label %.fold.split612
    i32 13, label %.fold.split613
    i32 16, label %.fold.split614
    i32 17, label %.fold.split615
    i32 18, label %.fold.split616
    i32 256, label %.fold.split617
    i32 258, label %.fold.split618
    i32 259, label %.fold.split619
    i32 260, label %.fold.split620
    i32 261, label %.fold.split621
    i32 262, label %.fold.split622
    i32 263, label %.fold.split623
    i32 264, label %.fold.split624
    i32 265, label %.fold.split625
    i32 266, label %.fold.split626
    i32 267, label %.fold.split627
    i32 268, label %.fold.split628
    i32 269, label %.fold.split629
    i32 270, label %.fold.split630
    i32 271, label %.fold.split631
    i32 512, label %.fold.split632
    i32 513, label %.fold.split633
    i32 514, label %.fold.split634
    i32 768, label %.fold.split635
    i32 769, label %.fold.split636
    i32 770, label %.fold.split637
    i32 771, label %.fold.split638
    i32 772, label %.fold.split639
    i32 773, label %.fold.split640
    i32 774, label %.fold.split641
    i32 775, label %.fold.split642
    i32 776, label %.fold.split643
    i32 777, label %.fold.split644
    i32 778, label %.fold.split645
    i32 779, label %.fold.split646
    i32 780, label %.fold.split647
    i32 1024, label %.fold.split648
    i32 1025, label %.fold.split649
    i32 1026, label %.fold.split650
    i32 1027, label %.fold.split651
    i32 1029, label %.fold.split652
    i32 1030, label %.fold.split653
    i32 1033, label %.fold.split654
    i32 1035, label %.fold.split655
    i32 1036, label %.fold.split656
    i32 1037, label %.fold.split657
    i32 1038, label %.fold.split658
    i32 1039, label %.fold.split659
    i32 1040, label %.fold.split660
    i32 1179208773, label %.fold.split661
    i32 1189489535, label %.fold.split662
    i32 1397311305, label %.fold.split663
  ]

.fold.split608:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split609:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split610:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split611:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split612:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split613:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split614:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split615:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split616:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split617:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split618:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split619:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split620:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split621:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split622:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split623:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split624:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split625:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split626:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split627:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split628:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split629:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split630:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split631:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split632:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split633:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split634:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split635:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split636:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split637:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split638:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split639:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split640:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split641:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split642:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split643:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split644:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split645:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split646:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split647:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split648:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split649:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split650:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split651:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split652:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split653:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split654:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split655:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split656:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split657:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split658:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split659:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split660:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split661:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split662:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

.fold.split663:                                   ; preds = %.preheader410.preheader, %.critedge.i100
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i100, %.fold.split663, %.fold.split662, %.fold.split661, %.fold.split660, %.fold.split659, %.fold.split658, %.fold.split657, %.fold.split656, %.fold.split655, %.fold.split654, %.fold.split653, %.fold.split652, %.fold.split651, %.fold.split650, %.fold.split649, %.fold.split648, %.fold.split647, %.fold.split646, %.fold.split645, %.fold.split644, %.fold.split643, %.fold.split642, %.fold.split641, %.fold.split640, %.fold.split639, %.fold.split638, %.fold.split637, %.fold.split636, %.fold.split635, %.fold.split634, %.fold.split633, %.fold.split632, %.fold.split631, %.fold.split630, %.fold.split629, %.fold.split628, %.fold.split627, %.fold.split626, %.fold.split625, %.fold.split624, %.fold.split623, %.fold.split622, %.fold.split621, %.fold.split620, %.fold.split619, %.fold.split618, %.fold.split617, %.fold.split616, %.fold.split615, %.fold.split614, %.fold.split613, %.fold.split612, %.fold.split611, %.fold.split610, %.fold.split609, %.fold.split608
  %.0108.i98.idx.lcssa = phi i64 [ 1368, %.fold.split663 ], [ 24, %.critedge.i100 ], [ 1344, %.fold.split662 ], [ 48, %.fold.split608 ], [ 72, %.fold.split609 ], [ 96, %.fold.split610 ], [ 120, %.fold.split611 ], [ 144, %.fold.split612 ], [ 168, %.fold.split613 ], [ 192, %.fold.split614 ], [ 216, %.fold.split615 ], [ 240, %.fold.split616 ], [ 264, %.fold.split617 ], [ 288, %.fold.split618 ], [ 312, %.fold.split619 ], [ 336, %.fold.split620 ], [ 360, %.fold.split621 ], [ 384, %.fold.split622 ], [ 408, %.fold.split623 ], [ 432, %.fold.split624 ], [ 456, %.fold.split625 ], [ 480, %.fold.split626 ], [ 504, %.fold.split627 ], [ 528, %.fold.split628 ], [ 552, %.fold.split629 ], [ 576, %.fold.split630 ], [ 600, %.fold.split631 ], [ 624, %.fold.split632 ], [ 648, %.fold.split633 ], [ 672, %.fold.split634 ], [ 696, %.fold.split635 ], [ 720, %.fold.split636 ], [ 744, %.fold.split637 ], [ 768, %.fold.split638 ], [ 792, %.fold.split639 ], [ 816, %.fold.split640 ], [ 840, %.fold.split641 ], [ 864, %.fold.split642 ], [ 888, %.fold.split643 ], [ 912, %.fold.split644 ], [ 936, %.fold.split645 ], [ 960, %.fold.split646 ], [ 984, %.fold.split647 ], [ 1008, %.fold.split648 ], [ 1032, %.fold.split649 ], [ 1056, %.fold.split650 ], [ 1080, %.fold.split651 ], [ 1104, %.fold.split652 ], [ 1128, %.fold.split653 ], [ 1152, %.fold.split654 ], [ 1176, %.fold.split655 ], [ 1200, %.fold.split656 ], [ 1224, %.fold.split657 ], [ 1248, %.fold.split658 ], [ 1272, %.fold.split659 ], [ 1296, %.fold.split660 ], [ 1320, %.fold.split661 ]
  %.0108.i98.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL13CoreNoteTypes, i64 %.0108.i98.idx.lcssa ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0108.i98.ptr.le, i64 8
  %.sroa.01.0.copyload.i106 = load ptr, ptr %i.ae, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %.0108.i98.ptr.le, i64 16
  %.sroa.32.0.copyload.i108 = load i64, ptr %.sroa.32.0..sroa_idx.i107, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.g:                                             ; preds = %bb.e
  %.not.i111 = icmp samesign ult i32 %narrow.i, 7
  br i1 %.not.i111, label %.critedge, label %_ZNK4llvm9StringRef11starts_withES0_.exit113

_ZNK4llvm9StringRef11starts_withES0_.exit113:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %.thread313, %bb.g
  %i.af = load i32, ptr %i.c, align 1
  %i.ag = xor i32 %i.af, 1852141647
  %i.ah = getelementptr i8, ptr %i.c, i64 3
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = xor i32 %i.ai, 1146307182
  %i.ak = or i32 %i.ag, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.preheader404.preheader, label %.thread352

.preheader404.preheader:                          ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit113
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit.fold.split815 [
    i32 10, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit
    i32 11, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125
    i32 20, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split
    i32 21, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664
    i32 23, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665
    i32 1, label %bb.h
    i32 2, label %.fold.split666
    i32 3, label %.fold.split667
    i32 4, label %.fold.split668
    i32 6, label %.fold.split669
    i32 12, label %.fold.split670
    i32 13, label %.fold.split671
    i32 16, label %.fold.split672
    i32 17, label %.fold.split673
    i32 18, label %.fold.split674
    i32 256, label %.fold.split675
    i32 258, label %.fold.split676
    i32 259, label %.fold.split677
    i32 260, label %.fold.split678
    i32 261, label %.fold.split679
    i32 262, label %.fold.split680
    i32 263, label %.fold.split681
    i32 264, label %.fold.split682
    i32 265, label %.fold.split683
    i32 266, label %.fold.split684
    i32 267, label %.fold.split685
    i32 268, label %.fold.split686
    i32 269, label %.fold.split687
    i32 270, label %.fold.split688
    i32 271, label %.fold.split689
    i32 512, label %.fold.split690
    i32 513, label %.fold.split691
    i32 514, label %.fold.split692
    i32 768, label %.fold.split693
    i32 769, label %.fold.split694
    i32 770, label %.fold.split695
    i32 771, label %.fold.split696
    i32 772, label %.fold.split697
    i32 773, label %.fold.split698
    i32 774, label %.fold.split699
    i32 775, label %.fold.split700
    i32 776, label %.fold.split701
    i32 777, label %.fold.split702
    i32 778, label %.fold.split703
    i32 779, label %.fold.split704
    i32 780, label %.fold.split705
    i32 1024, label %.fold.split706
    i32 1025, label %.fold.split707
    i32 1026, label %.fold.split708
    i32 1027, label %.fold.split709
    i32 1029, label %.fold.split710
    i32 1030, label %.fold.split711
    i32 1033, label %.fold.split712
    i32 1035, label %.fold.split713
    i32 1036, label %.fold.split714
    i32 1037, label %.fold.split715
    i32 1038, label %.fold.split716
    i32 1039, label %.fold.split717
    i32 1040, label %.fold.split718
    i32 1179208773, label %.fold.split719
    i32 1189489535, label %.fold.split720
    i32 1397311305, label %.fold.split721
  ]

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split: ; preds = %.preheader404.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664: ; preds = %.preheader404.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665: ; preds = %.preheader404.preheader
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125

_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125: ; preds = %.preheader404.preheader, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split
  %.0108.i114.idx.lcssa = phi i64 [ 72, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split664 ], [ 24, %.preheader404.preheader ], [ 48, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split ], [ 96, %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125.fold.split665 ]
  %.0108.i114.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL20OpenBSDCoreNoteTypes, i64 %.0108.i114.idx.lcssa ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0108.i114.ptr.le, i64 8
  %.sroa.01.0.copyload.i122 = load ptr, ptr %i.ao, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %.0108.i114.ptr.le, i64 16
  %.sroa.32.0.copyload.i124 = load i64, ptr %.sroa.32.0..sroa_idx.i123, align 8, !tbaa !340 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.32.0.copyload.i124, 0
  br i1 %i.ap, label %.critedge.i128.5, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge.i128.5:                                 ; preds = %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit125
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 12, label %.fold.split670
    i32 13, label %bb.h
    i32 16, label %.fold.split672
    i32 17, label %.fold.split673
    i32 18, label %.fold.split674
    i32 256, label %.fold.split675
    i32 258, label %.fold.split676
    i32 259, label %.fold.split677
    i32 260, label %.fold.split678
    i32 261, label %.fold.split679
    i32 262, label %.fold.split680
    i32 263, label %.fold.split681
    i32 264, label %.fold.split682
    i32 265, label %.fold.split683
    i32 266, label %.fold.split684
    i32 267, label %.fold.split685
    i32 268, label %.fold.split686
    i32 269, label %.fold.split687
    i32 270, label %.fold.split688
    i32 271, label %.fold.split689
    i32 512, label %.fold.split690
    i32 513, label %.fold.split691
    i32 514, label %.fold.split692
    i32 768, label %.fold.split693
    i32 769, label %.fold.split694
    i32 770, label %.fold.split695
    i32 771, label %.fold.split696
    i32 772, label %.fold.split697
    i32 773, label %.fold.split698
    i32 774, label %.fold.split699
    i32 775, label %.fold.split700
    i32 776, label %.fold.split701
    i32 777, label %.fold.split702
    i32 778, label %.fold.split703
    i32 779, label %.fold.split704
    i32 780, label %.fold.split705
    i32 1024, label %.fold.split706
    i32 1025, label %.fold.split707
    i32 1026, label %.fold.split708
    i32 1027, label %.fold.split709
    i32 1029, label %.fold.split710
    i32 1030, label %.fold.split711
    i32 1033, label %.fold.split712
    i32 1035, label %.fold.split713
    i32 1036, label %.fold.split714
    i32 1037, label %.fold.split715
    i32 1038, label %.fold.split716
    i32 1039, label %.fold.split717
    i32 1040, label %.fold.split718
    i32 1179208773, label %.fold.split719
    i32 1189489535, label %.fold.split720
    i32 1397311305, label %.fold.split721
  ]

.fold.split666:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split667:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split668:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split669:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split670:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split671:                                   ; preds = %.preheader404.preheader
  br label %bb.h

.fold.split672:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split673:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split674:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split675:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split676:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split677:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split678:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split679:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split680:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split681:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split682:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split683:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split684:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split685:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split686:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split687:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split688:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split689:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split690:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split691:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split692:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split693:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split694:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split695:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split696:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split697:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split698:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split699:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split700:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split701:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split702:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split703:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split704:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split705:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split706:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split707:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split708:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split709:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split710:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split711:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split712:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split713:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split714:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split715:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split716:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split717:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split718:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split719:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split720:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

.fold.split721:                                   ; preds = %.preheader404.preheader, %.critedge.i128.5
  br label %bb.h

bb.h:                                             ; preds = %.preheader404.preheader, %.critedge.i128.5, %.fold.split721, %.fold.split720, %.fold.split719, %.fold.split718, %.fold.split717, %.fold.split716, %.fold.split715, %.fold.split714, %.fold.split713, %.fold.split712, %.fold.split711, %.fold.split710, %.fold.split709, %.fold.split708, %.fold.split707, %.fold.split706, %.fold.split705, %.fold.split704, %.fold.split703, %.fold.split702, %.fold.split701, %.fold.split700, %.fold.split699, %.fold.split698, %.fold.split697, %.fold.split696, %.fold.split695, %.fold.split694, %.fold.split693, %.fold.split692, %.fold.split691, %.fold.split690, %.fold.split689, %.fold.split688, %.fold.split687, %.fold.split686, %.fold.split685, %.fold.split684, %.fold.split683, %.fold.split682, %.fold.split681, %.fold.split680, %.fold.split679, %.fold.split678, %.fold.split677, %.fold.split676, %.fold.split675, %.fold.split674, %.fold.split673, %.fold.split672, %.fold.split671, %.fold.split670, %.fold.split669, %.fold.split668, %.fold.split667, %.fold.split666
  %.0108.i126.idx.lcssa = phi i64 [ 0, %.preheader404.preheader ], [ 1344, %.fold.split720 ], [ 24, %.fold.split666 ], [ 48, %.fold.split667 ], [ 72, %.fold.split668 ], [ 1368, %.fold.split721 ], [ 96, %.fold.split669 ], [ 168, %.critedge.i128.5 ], [ 168, %.fold.split671 ], [ 192, %.fold.split672 ], [ 216, %.fold.split673 ], [ 240, %.fold.split674 ], [ 264, %.fold.split675 ], [ 288, %.fold.split676 ], [ 312, %.fold.split677 ], [ 336, %.fold.split678 ], [ 360, %.fold.split679 ], [ 384, %.fold.split680 ], [ 408, %.fold.split681 ], [ 432, %.fold.split682 ], [ 456, %.fold.split683 ], [ 480, %.fold.split684 ], [ 504, %.fold.split685 ], [ 528, %.fold.split686 ], [ 552, %.fold.split687 ], [ 576, %.fold.split688 ], [ 600, %.fold.split689 ], [ 624, %.fold.split690 ], [ 648, %.fold.split691 ], [ 672, %.fold.split692 ], [ 696, %.fold.split693 ], [ 720, %.fold.split694 ], [ 744, %.fold.split695 ], [ 768, %.fold.split696 ], [ 792, %.fold.split697 ], [ 816, %.fold.split698 ], [ 840, %.fold.split699 ], [ 864, %.fold.split700 ], [ 888, %.fold.split701 ], [ 912, %.fold.split702 ], [ 936, %.fold.split703 ], [ 960, %.fold.split704 ], [ 984, %.fold.split705 ], [ 1008, %.fold.split706 ], [ 1032, %.fold.split707 ], [ 1056, %.fold.split708 ], [ 1080, %.fold.split709 ], [ 1104, %.fold.split710 ], [ 1128, %.fold.split711 ], [ 1152, %.fold.split712 ], [ 1176, %.fold.split713 ], [ 1200, %.fold.split714 ], [ 1224, %.fold.split715 ], [ 1248, %.fold.split716 ], [ 1272, %.fold.split717 ], [ 1296, %.fold.split718 ], [ 1320, %.fold.split719 ], [ 144, %.fold.split670 ]
  %.0108.i126.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL13CoreNoteTypes, i64 %.0108.i126.idx.lcssa ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0108.i126.ptr.le, i64 8
  %.sroa.01.0.copyload.i134 = load ptr, ptr %i.aq, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %.0108.i126.ptr.le, i64 16
  %.sroa.32.0.copyload.i136 = load i64, ptr %.sroa.32.0..sroa_idx.i135, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup807:                                 ; preds = %.preheader393.preheader
  %i.ar = zext nneg i32 %switch.tableidx805 to i64
  %switch.gep811 = getelementptr inbounds nuw i8, ptr @switch.table._Z15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE0ELb1EEEENS0_9StringRefERKNT_4NoteEj, i64 %i.ar
  %switch.load812 = load i8, ptr %switch.gep811, align 1
  %switch.ext813 = zext i8 %switch.load812 to i64
  %.0108.i143.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL12AMDNoteTypes, i64 %switch.ext813 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0108.i143.ptr.le, i64 8
  %.sroa.01.0.copyload.i151 = load ptr, ptr %i.as, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %.0108.i143.ptr.le, i64 16
  %.sroa.32.0.copyload.i153 = load i64, ptr %.sroa.32.0..sroa_idx.i152, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.critedge:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread, %bb.g
  %.not.i156 = icmp eq i32 %narrow.i, 6
  br i1 %.not.i156, label %_ZN4llvmeqENS_9StringRefES0_.exit159, label %.thread352

_ZN4llvmeqENS_9StringRefES0_.exit159:             ; preds = %.critedge
  %bcmp.i158 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.478, i64 %.sroa.4.0.i)
  %i.at = icmp eq i32 %bcmp.i158, 0
  br i1 %i.at, label %.preheader407.preheader, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread

.preheader407.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit159
  %.not11.i161 = icmp eq i32 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %spec.select = select i1 %.not11.i161, ptr @.str.577, ptr @.str.19
  %spec.select727 = select i1 %.not11.i161, i64 36, i64 0
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

.thread352:                                       ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit113, %.critedge
  %.ph356 = phi i1 [ %i.p, %.critedge ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit113 ] ; 2 uses
  %.not.i173 = icmp eq i32 %narrow.i, 14
  br i1 %.not.i173, label %_ZN4llvmeqENS_9StringRefES0_.exit176, label %_ZN4llvmeqENS_9StringRefES0_.exit176.thread

_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread, %_ZN4llvmeqENS_9StringRefES0_.exit159
  %.ph368.ph = phi i1 [ %i.p, %_ZN4llvmeqENS_9StringRefES0_.exit159 ], [ %i.q, %_ZN4llvmeqENS_9StringRefES0_.exit46.thread.thread ]
  br i1 %.ph368.ph, label %bb.l, label %.thread

_ZN4llvmeqENS_9StringRefES0_.exit176.thread:      ; preds = %.thread352
  br i1 %.not.i43, label %_ZN4llvmeqENS_9StringRefES0_.exit193, label %_ZN4llvmeqENS_9StringRefES0_.exit193.thread

_ZN4llvmeqENS_9StringRefES0_.exit176:             ; preds = %.thread352
  %bcmp.i175 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.479, i64 %.sroa.4.0.i)
  %i.au = icmp eq i32 %bcmp.i175, 0
  br i1 %i.au, label %.preheader405.preheader, label %bb.i

.preheader405.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176
  %switch.tableidx796 = add i32 %.sroa.0.0.copyload.i, -1 ; 2 uses
  %i.av = icmp ult i32 %switch.tableidx796, 3
  br i1 %i.av, label %switch.lookup797, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

switch.lookup797:                                 ; preds = %.preheader405.preheader
  %narrow = mul nuw nsw i32 %switch.tableidx796, 24
  %switch.idx.mult799 = zext nneg i32 %narrow to i64
  %.0108.i177.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL23LLVMOMPOFFLOADNoteTypes, i64 %switch.idx.mult799 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0108.i177.ptr.le, i64 8
  %.sroa.01.0.copyload.i185 = load ptr, ptr %i.aw, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %.0108.i177.ptr.le, i64 16
  %.sroa.32.0.copyload.i187 = load i64, ptr %.sroa.32.0..sroa_idx.i186, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.i:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176
  br i1 %.not.i43, label %_ZN4llvmeqENS_9StringRefES0_.exit193, label %_ZN4llvmeqENS_9StringRefES0_.exit193.thread

_ZN4llvmeqENS_9StringRefES0_.exit193.thread:      ; preds = %bb.i, %_ZN4llvmeqENS_9StringRefES0_.exit176.thread
  br i1 %.ph356, label %bb.l, label %.thread

_ZN4llvmeqENS_9StringRefES0_.exit193:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176.thread, %bb.i
  %bcmp.i192 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.481, i64 %.sroa.4.0.i)
  %i.ax = icmp eq i32 %bcmp.i192, 0
  br i1 %i.ax, label %.preheader395.preheader, label %bb.k

_ZN4llvmeqENS_9StringRefES0_.exit193.thread537:   ; preds = %.thread313
  %bcmp.i192538 = tail call i32 @bcmp(ptr %.sroa.0.0.i, ptr nonnull @.str.481, i64 %.sroa.4.0.i)
  %i.ay = icmp eq i32 %bcmp.i192538, 0
  br i1 %i.ay, label %.preheader395.preheader, label %.thread

.preheader395.preheader:                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit193.thread537, %_ZN4llvmeqENS_9StringRefES0_.exit193
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 1, label %bb.j
    i32 3, label %.fold.split730
    i32 4, label %.fold.split731
  ]

.fold.split730:                                   ; preds = %.preheader395.preheader
  br label %bb.j

.fold.split731:                                   ; preds = %.preheader395.preheader
  br label %bb.j

bb.j:                                             ; preds = %.preheader395.preheader, %.fold.split731, %.fold.split730
  %.0108.i194.idx.lcssa = phi i64 [ 0, %.preheader395.preheader ], [ 24, %.fold.split730 ], [ 48, %.fold.split731 ]
  %.0108.i194.ptr.le = getelementptr inbounds nuw i8, ptr @_ZL16AndroidNoteTypes, i64 %.0108.i194.idx.lcssa ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0108.i194.ptr.le, i64 8
  %.sroa.01.0.copyload.i202 = load ptr, ptr %i.az, align 8, !tbaa !355
  %.sroa.32.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %.0108.i194.ptr.le, i64 16
  %.sroa.32.0.copyload.i204 = load i64, ptr %.sroa.32.0..sroa_idx.i203, align 8, !tbaa !340
  br label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit

bb.k:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit193
  br i1 %.ph356, label %bb.l, label %.thread

bb.l:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit176.thread.thread, %_ZN4llvmeqENS_9StringRefES0_.exit193.thread, %bb.k
  switch i32 %.sroa.0.0.copyload.i, label %_ZZ15getNoteTypeNameIN4llvm6object7ELFTypeILNS0_10endiannessE1ELb1EEEENS0_9StringRefERKNT_4NoteEjENKUlNS0_8ArrayRefIN12_GLOBAL__N_112_GLOBAL__N_18NoteTypeEEEE_clESE_.exit [
    i32 1, label %bb.m
    i32 2, label %.fold.split732
    i32 3, label %.fold.split733
    i32 4, label %.fold.split734
    i32 6, label %.fold.split735
    i32 10, label %.fold.split736
    i32 12, label %.fold.split737
    i32 13, label %.fold.split738
    i32 16, label %.fold.split739
    i32 17, label %.fold.split740
    i32 18, label %.fold.split741
    i32 256, label %.fold.split742
    i32 258, label %.fold.split743
    i32 259, label %.fold.split744
    i32 260, label %.fold.split745
    i32 261, label %.fold.split746
    i32 262, label %.fold.split747
    i32 263, label %.fold.split748
    i32 264, label %.fold.split749
    i32 265, label %.fold.split750
    i32 266, label %.fold.split751
    i32 267, label %.fold.split752
    i32 268, label %.fold.split753
    i32 269, label %.fold.split754
    i32 270, label %.fold.split755
    i32 271, label %.fold.split756
    i32 512, label %.fold.split757
    i32 513, label %.fold.split758
    i32 514, label %.fold.split759
    i32 768, label %.fold.split760
    i32 769, label %.fold.split761
    i32 770, label %.fold.split762
    i32 771, label %.fold.split763
    i32 772, label %.fold.split764
    i32 773, label %.fold.split765
    i32 774, label %.fold.split766
    i32 775, label %.fold.split767
    i32 776, label %.fold.split768
    i32 777, label %.fold.split769
    i32 778, label %.fold.split770
    i32 779, label %.fold.split771
    i32 780, label %.fold.split772
    i32 1024, label %.fold.split773
    i32 1025, label %.fold.split774
    i32 1026, label %.fold.split775
    i32 1027, label %.fold.split776
    i32 1029, label %.fold.split777
    i32 1030, label %.fold.split778
    i32 1033, label %.fold.split779
    i32 1035, label %.fold.split780
    i32 1036, label %.fold.split781
    i32 1037, label %.fold.split782
    i32 1038, label %.fold.split783
    i32 1039, label %.fold.split784
    i32 1040, label %.fold.split785
    i32 1179208773, label %.fold.split786
    i32 1189489535, label %.fold.split787
    i32 1397311305, label %.fold.split788
  ]

.fold.split732:                                   ; preds = %bb.l
  br label %bb.m

.fold.split733:                                   ; preds = %bb.l
  br label %bb.m

.fold.split734:                                   ; preds = %bb.l
  br label %bb.m

.fold.split735:                                   ; preds = %bb.l
  br label %bb.m

.fold.split736:                                   ; preds = %bb.l
  br label %bb.m

.fold.split737:                                   ; preds = %bb.l
  br label %bb.m

.fold.split738:                                   ; preds = %bb.l
  br label %bb.m

.fold.split739:                                   ; preds = %bb.l
  br label %bb.m

.fold.split740:                                   ; preds = %bb.l
  br label %bb.m

.fold.split741:                                   ; preds = %bb.l
  br label %bb.m

.fold.split742:                                   ; preds = %bb.l
  br label %bb.m

.fold.split743:                                   ; preds = %bb.l
  br label %bb.m

.fold.split744:                                   ; preds = %bb.l
  br label %bb.m

.fold.split745:                                   ; preds = %bb.l
  br label %bb.m

.fold.split746:                                   ; preds = %bb.l
  br label %bb.m

.fold.split747:                                   ; preds = %bb.l
  br label %bb.m

.fold.split748:                                   ; preds = %bb.l
  br label %bb.m

.fold.split749:                                   ; preds = %bb.l
  br label %bb.m

.fold.split750:                                   ; preds = %bb.l
  br label %bb.m

.fold.split751:                                   ; preds = %bb.l
  br label %bb.m

.fold.split752:                                   ; preds = %bb.l
  br label %bb.m

.fold.split753:                                   ; preds = %bb.l
  br label %bb.m

.fold.split754:                                   ; preds = %bb.l
  br label %bb.m

.fold.split755:                                   ; preds = %bb.l
  br label %bb.m

.fold.split756:                                   ; preds = %bb.l
  br label %bb.m

.fold.split757:                                   ; preds = %bb.l
  br label %bb.m

.fold.split758:                                   ; preds = %bb.l
  br label %bb.m

.fold.split759:                                   ; preds = %bb.l
  br label %bb.m

.fold.split760:                                   ; preds = %bb.l
  br label %bb.m

.fold.split761:                                   ; preds = %bb.l
  br label %bb.m

.fold.split762:                                   ; preds = %bb.l
  br label %bb.m

.fold.split763:                                   ; preds = %bb.l
  br label %bb.m

.fold.split764:                                   ; preds = %bb.l
  br label %bb.m

.fold.split765:                                   ; preds = %bb.l
  br label %bb.m

.fold.split766:                                   ; preds = %bb.l
  br label %bb.m

.fold.split767:                                   ; preds = %bb.l
  br label %bb.m

.fold.split768:                                   ; preds = %bb.l
  br label %bb.m
end_hunk_1
