Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/relocatable.cc.X86_64?download=true
inline.NumInlined: 1279
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0
@_ZN4mold7Counter9instancesE = linkonce_odr dso_local global { { ptr, ptr, ptr } } zeroinitializer, comdat, align 8
@_ZGVN4mold7Counter9instancesE = linkonce_odr dso_local global i64 0, comdat($_ZN4mold7Counter9instancesE), align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4mold10OutputEhdrINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold10OutputEhdrINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold10OutputEhdrINS_6X86_64EED0Ev, ptr @_ZN4mold10OutputEhdrINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold10OutputEhdrINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold5ChunkINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"EHDR\00", align 1
@_ZTIN4mold10OutputEhdrINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold10OutputEhdrINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4mold10OutputEhdrINS_6X86_64EEE = linkonce_odr dso_local constant [33 x i8] c"N4mold10OutputEhdrINS_6X86_64EEE\00", comdat, align 1
@_ZTIN4mold5ChunkINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4mold5ChunkINS_6X86_64EEE = linkonce_odr dso_local constant [27 x i8] c"N4mold5ChunkINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold5ChunkINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold5ChunkINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold5ChunkINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@_ZTVN4mold10OutputShdrINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold10OutputShdrINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold10OutputShdrINS_6X86_64EED0Ev, ptr @_ZN4mold10OutputShdrINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold10OutputShdrINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold5ChunkINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"SHDR\00", align 1
@_ZTIN4mold10OutputShdrINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold10OutputShdrINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold10OutputShdrINS_6X86_64EEE = linkonce_odr dso_local constant [33 x i8] c"N4mold10OutputShdrINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold14EhFrameSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold14EhFrameSectionINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold14EhFrameSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold14EhFrameSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold5ChunkINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@_ZTIN4mold14EhFrameSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold14EhFrameSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold14EhFrameSectionINS_6X86_64EEE = linkonce_odr dso_local constant [37 x i8] c"N4mold14EhFrameSectionINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold19EhFrameRelocSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold19EhFrameRelocSectionINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold19EhFrameRelocSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold19EhFrameRelocSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold19EhFrameRelocSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c".rela.eh_frame\00", align 1
@_ZTIN4mold19EhFrameRelocSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold19EhFrameRelocSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold19EhFrameRelocSectionINS_6X86_64EEE = linkonce_odr dso_local constant [42 x i8] c"N4mold19EhFrameRelocSectionINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold13SFrameSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold13SFrameSectionINS_6X86_64EEE, ptr @_ZN4mold13SFrameSectionINS_6X86_64EED2Ev, ptr @_ZN4mold13SFrameSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold13SFrameSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold5ChunkINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c".sframe\00", align 1
@_ZTIN4mold13SFrameSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold13SFrameSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold13SFrameSectionINS_6X86_64EEE = linkonce_odr dso_local constant [36 x i8] c"N4mold13SFrameSectionINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold18SFrameRelocSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold18SFrameRelocSectionINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold18SFrameRelocSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold18SFrameRelocSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold18SFrameRelocSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c".rela.sframe\00", align 1
@_ZTIN4mold18SFrameRelocSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold18SFrameRelocSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold18SFrameRelocSectionINS_6X86_64EEE = linkonce_odr dso_local constant [41 x i8] c"N4mold18SFrameRelocSectionINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold13StrtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold13StrtabSectionINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold13StrtabSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold13StrtabSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold13StrtabSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@_ZTIN4mold13StrtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold13StrtabSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold13StrtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant [36 x i8] c"N4mold13StrtabSectionINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold13SymtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold13SymtabSectionINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold13SymtabSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold13SymtabSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold13SymtabSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@_ZTIN4mold13SymtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold13SymtabSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold13SymtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant [36 x i8] c"N4mold13SymtabSectionINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold15ShstrtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold15ShstrtabSectionINS_6X86_64EEE, ptr @_ZN4mold5ChunkINS_6X86_64EED2Ev, ptr @_ZN4mold15ShstrtabSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold15ShstrtabSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold15ShstrtabSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c".shstrtab\00", align 1
@_ZTIN4mold15ShstrtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold15ShstrtabSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold15ShstrtabSectionINS_6X86_64EEE = linkonce_odr dso_local constant [38 x i8] c"N4mold15ShstrtabSectionINS_6X86_64EEE\00", comdat, align 1
@_ZTVN4mold19NotePropertySectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold19NotePropertySectionINS_6X86_64EEE, ptr @_ZN4mold19NotePropertySectionINS_6X86_64EED2Ev, ptr @_ZN4mold19NotePropertySectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold19NotePropertySectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold19NotePropertySectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c".note.gnu.property\00", align 1
@_ZTIN4mold19NotePropertySectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold19NotePropertySectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold19NotePropertySectionINS_6X86_64EEE = linkonce_odr dso_local constant [42 x i8] c"N4mold19NotePropertySectionINS_6X86_64EEE\00", comdat, align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"r_claim_unresolved_symbols\00", align 1
@_ZTVN3tbb6detail2d119wait_context_vertexE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2d119wait_context_vertexE, ptr @_ZN3tbb6detail2d119wait_context_vertex7reserveEj, ptr @_ZN3tbb6detail2d119wait_context_vertex7releaseEj, ptr @_ZN3tbb6detail2d119wait_context_vertexD2Ev, ptr @_ZN3tbb6detail2d119wait_context_vertexD0Ev] }, comdat, align 8
@_ZTIN3tbb6detail2d119wait_context_vertexE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d119wait_context_vertexE, ptr @_ZTIN3tbb6detail2d126wait_tree_vertex_interfaceE }, comdat, align 8
@_ZTSN3tbb6detail2d119wait_context_vertexE = linkonce_odr dso_local constant [38 x i8] c"N3tbb6detail2d119wait_context_vertexE\00", comdat, align 1
@_ZTIN3tbb6detail2d126wait_tree_vertex_interfaceE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d126wait_tree_vertex_interfaceE }, comdat, align 8
@_ZTSN3tbb6detail2d126wait_tree_vertex_interfaceE = linkonce_odr dso_local constant [45 x i8] c"N3tbb6detail2d126wait_tree_vertex_interfaceE\00", comdat, align 1
@_ZTVN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE = internal constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE, ptr @_ZN3tbb6detail2d14taskD2Ev, ptr @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagED0Ev, ptr @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagE7executeERNS0_2d114execution_dataE, ptr @_ZN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_E6cancelERNS0_2d114execution_dataE] }, align 8
@_ZTIN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE, ptr @_ZTIN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_EE }, align 8
@_ZTSN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE = internal constant [228 x i8] c"N3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE\00", align 1
@_ZTIN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_EE, ptr @_ZTIN3tbb6detail2d14taskE }, align 8
@_ZTSN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_EE = internal constant [203 x i8] c"N3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_EE\00", align 1
@_ZTIN3tbb6detail2d14taskE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d14taskE, i32 0, i32 1, ptr @_ZTIN3tbb6detail2d111task_traitsE, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN3tbb6detail2d14taskE = linkonce_odr dso_local constant [22 x i8] c"N3tbb6detail2d14taskE\00", comdat, align 1
@_ZTIN3tbb6detail2d111task_traitsE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d111task_traitsE }, comdat, align 8
@_ZTSN3tbb6detail2d111task_traitsE = linkonce_odr dso_local constant [30 x i8] c"N3tbb6detail2d111task_traitsE\00", comdat, align 1
@_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE = internal constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, ptr @_ZN3tbb6detail2d14taskD2Ev, ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEED0Ev, ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE, ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE] }, align 8
@_ZTIN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, ptr @_ZTIN3tbb6detail2d14taskE }, align 8
@_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE = internal constant [272 x i8] c"N3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE\00", align 1
@_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty = linkonce_odr dso_local local_unnamed_addr constant %"struct.mold::ElfSym" zeroinitializer, comdat, align 1
@_ZN4mold20discarded_comdat_symINS_6X86_64EEE = linkonce_odr dso_local local_unnamed_addr global ptr null, comdat, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"create_comdat_group_sections\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE = internal constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE, ptr @_ZN3tbb6detail2d14taskD2Ev, ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEED0Ev, ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE, ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE] }, align 8
@_ZTIN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE, ptr @_ZTIN3tbb6detail2d14taskE }, align 8
@_ZTSN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE = internal constant [189 x i8] c"N3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE\00", align 1
@_ZTVN4mold18ComdatGroupSectionINS_6X86_64EEE = linkonce_odr dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN4mold18ComdatGroupSectionINS_6X86_64EEE, ptr @_ZN4mold18ComdatGroupSectionINS_6X86_64EED2Ev, ptr @_ZN4mold18ComdatGroupSectionINS_6X86_64EED0Ev, ptr @_ZN4mold5ChunkINS_6X86_64EE9is_headerEv, ptr @_ZN4mold5ChunkINS_6X86_64EE7to_osecEv, ptr @_ZN4mold5ChunkINS_6X86_64EE12to_reloc_secEv, ptr @_ZN4mold5ChunkINS_6X86_64EE20compute_section_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold18ComdatGroupSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE8write_toERNS_7ContextIS1_EEPh, ptr @_ZN4mold18ComdatGroupSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE15get_num_dynrelsERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE16get_relr_offsetsERNS_7ContextIS1_EE, ptr @_ZNK4mold5ChunkINS_6X86_64EE13write_dynrelsERNS_7ContextIS1_EEPNS_6ElfRelIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE19compute_symtab_sizeERNS_7ContextIS1_EE, ptr @_ZN4mold5ChunkINS_6X86_64EE15populate_symtabERNS_7ContextIS1_EE] }, comdat, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c".group\00", align 1
@_ZTIN4mold18ComdatGroupSectionINS_6X86_64EEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4mold18ComdatGroupSectionINS_6X86_64EEE, ptr @_ZTIN4mold5ChunkINS_6X86_64EEE }, comdat, align 8
@_ZTSN4mold18ComdatGroupSectionINS_6X86_64EEE = linkonce_odr dso_local constant [41 x i8] c"N4mold18ComdatGroupSectionINS_6X86_64EEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4mold7Counter9instancesE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4mold7Counter9instancesE], section "llvm.metadata"

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN4mold7Counter9instancesE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN4mold7Counter9instancesE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN4mold7Counter9instancesE) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev, ptr nonnull @_ZN4mold7Counter9instancesE, ptr nonnull @__dso_handle) #9 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN4mold7Counter9instancesE) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #15
  br label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold15combine_objectsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
bb.a:
  %1 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %2 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 11 uses
  %4 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.443", align 8   ; 10 uses
  %7 = alloca %class.anon.448, align 8            ; 5 uses
  %8 = alloca %"class.tbb::detail::d1::wait_context_vertex", align 8 ; 6 uses
  %9 = alloca %"class.tbb::detail::d2::for_each_root_task", align 64 ; 10 uses
  %10 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  %11 = alloca %"class.mold::Timer", align 8      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %class.anon.315, align 1           ; 3 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @_ZN4mold22create_output_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) #9
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.e, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold10OutputEhdrINS_6X86_64EEE, i64 16), ptr %i.a, align 8, !tbaa !14
  store i64 4, ptr %i.b, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 64, ptr %i.g, align 8
  store i64 8, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13192 ; 23 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 13200 ; 34 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13208 ; 33 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.j, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !26   ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #16 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %i.a, ptr %i.z, align 8, !tbaa !24
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !26
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12976 ; 11 uses
  %i.ah = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12968 ; 23 uses
  %i.aj = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !27
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputEhdrIS1_EEEEDaS6_.exit.i

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i.i
  %i.al = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !27 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputEhdrIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputEhdrIS1_EEEEDaS6_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12920 ; 12 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.ah), !noalias !27
  store ptr %i.a, ptr %i.an, align 8, !tbaa !24, !noalias !27
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13824
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !32
  %i.ap = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 12 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, i8 0, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.at, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold10OutputShdrINS_6X86_64EEE, i64 16), ptr %i.ap, align 8, !tbaa !14
  store i64 4, ptr %i.aq, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr @.str.3, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i64 1, ptr %i.av, align 8
  store i64 8, ptr %i.ar, align 8
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i12.i = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i.i12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputEhdrIS1_EEEEDaS6_.exit.i
  store ptr %i.ap, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i13.i

bb.i:                                             ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputEhdrIS1_EEEEDaS6_.exit.i
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.j, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i14.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i14.i: ; preds = %bb.i
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i15.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i.i15.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i.i16.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i16.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #16 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %i.ap, ptr %i.bl, align 8, !tbaa !24
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.k, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i17.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i14.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i17.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i17.i: ; preds = %bb.k, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i14.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i.i.i18.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i.i18.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i19.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i17.i
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bq) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i19.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i19.i: ; preds = %bb.l, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i17.i
  store ptr %i.bk, ptr %i.h, align 8, !tbaa !26
  store ptr %i.bn, ptr %i.i, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.br, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i13.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i13.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i19.i, %bb.h
  %i.bs = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !304
  %i.bt = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !304
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputShdrIS1_EEEEDaS6_.exit.i

bb.m:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i13.i
  %i.bv = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !304 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputShdrIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputShdrIS1_EEEEDaS6_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i13.i
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.bs), !noalias !304
  store ptr %i.ap, ptr %i.bw, align 8, !tbaa !24, !noalias !304
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 13832
  store ptr %i.ap, ptr %i.bx, align 8, !tbaa !309
  %i.by = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 13 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, i8 0, i64 48, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.cc, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold14EhFrameSectionINS_6X86_64EEE, i64 16), ptr %i.by, align 8, !tbaa !14
  store i64 9, ptr %i.bz, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr @.str.4, ptr %.sroa.4.0..sroa_idx.i21.i, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  store i32 1, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 2, ptr %i.cf, align 8
  store i64 8, ptr %i.ca, align 8
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.ch = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i22.i = icmp eq ptr %i.cg, %i.ch
  br i1 %.not.i.i.i22.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputShdrIS1_EEEEDaS6_.exit.i
  store ptr %i.by, ptr %i.cg, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ci, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i23.i

bb.o:                                             ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_10OutputShdrIS1_EEEEDaS6_.exit.i
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 5 uses
  %i.cn = icmp eq i64 %i.cm, 9223372036854775800
  br i1 %i.cn, label %bb.p, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i24.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i24.i: ; preds = %bb.o
  %i.co = ashr exact i64 %i.cm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i25.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 1)
  %i.cp = add nsw i64 %.sroa.speculated.i.i.i.i.i25.i, %i.co ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.co
  %i.cr = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 1152921504606846975)
  %i.cs = select i1 %i.cq, i64 1152921504606846975, i64 %i.cr ; 3 uses
  %.not.i.i.i.i.i26.i = icmp ne i64 %i.cs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i26.i)
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #16 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 %i.cm ; 2 uses
  store ptr %i.by, ptr %i.cv, align 8, !tbaa !24
  %i.cw = icmp sgt i64 %i.cm, 0
  br i1 %i.cw, label %bb.q, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i27.i

bb.q:                                             ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i24.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %i.cj, i64 %i.cm, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i27.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i27.i: ; preds = %bb.q, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i24.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.not.i17.i.i.i.i28.i = icmp eq ptr %i.cj, null
  br i1 %.not.i17.i.i.i.i28.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i29.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i27.i
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = sub i64 %i.cz, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.da) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i29.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i29.i: ; preds = %bb.r, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i27.i
  store ptr %i.cu, ptr %i.h, align 8, !tbaa !26
  store ptr %i.cx, ptr %i.i, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cs
  store ptr %i.db, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i23.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i23.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i29.i, %bb.n
  %i.dc = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !310
  %i.dd = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !310
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.s, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_14EhFrameSectionIS1_EEEEDaS6_.exit.i

bb.s:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i23.i
  %i.df = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !310 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_14EhFrameSectionIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_14EhFrameSectionIS1_EEEEDaS6_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i23.i
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.dc), !noalias !310
  store ptr %i.by, ptr %i.dg, align 8, !tbaa !24, !noalias !310
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 13992 ; 2 uses
  store ptr %i.by, ptr %i.dh, align 8, !tbaa !315
  %i.di = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 14 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, i8 0, i64 48, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.do, i8 0, i64 50, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold19EhFrameRelocSectionINS_6X86_64EEE, i64 16), ptr %i.di, align 8, !tbaa !14
  store i64 14, ptr %i.dj, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr @.str.5, ptr %.sroa.4.0..sroa_idx.i31.i, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store i32 4, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i64 64, ptr %i.dq, align 8
  store i64 8, ptr %i.dk, align 8
  store i64 24, ptr %i.dm, align 8
  %i.dr = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.ds = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i32.i = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i.i.i32.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_14EhFrameSectionIS1_EEEEDaS6_.exit.i
  store ptr %i.di, ptr %i.dr, align 8, !tbaa !24
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dt, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i33.i

bb.u:                                             ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_14EhFrameSectionIS1_EEEEDaS6_.exit.i
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 5 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.v, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i34.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i34.i: ; preds = %bb.u
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i35.i = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i.i35.i, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = tail call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i.i.i36.i = icmp ne i64 %i.ed, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36.i)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #16 ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.dx ; 2 uses
  store ptr %i.di, ptr %i.eg, align 8, !tbaa !24
  %i.eh = icmp sgt i64 %i.dx, 0
  br i1 %i.eh, label %bb.w, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i37.i

bb.w:                                             ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i34.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr align 8 %i.du, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i37.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i37.i: ; preds = %bb.w, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i34.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.not.i17.i.i.i.i38.i = icmp eq ptr %i.du, null
  br i1 %.not.i17.i.i.i.i38.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i39.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i37.i
  %i.ej = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.el) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i39.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i39.i: ; preds = %bb.x, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i37.i
  store ptr %i.ef, ptr %i.h, align 8, !tbaa !26
  store ptr %i.ei, ptr %i.i, align 8, !tbaa !20
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.em, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i33.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i33.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i39.i, %bb.t
  %i.en = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !316
  %i.eo = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !316
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.y, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_19EhFrameRelocSectionIS1_EEEEDaS6_.exit.i

bb.y:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i33.i
  %i.eq = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !316 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_19EhFrameRelocSectionIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_19EhFrameRelocSectionIS1_EEEEDaS6_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i33.i
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.en), !noalias !316
  store ptr %i.di, ptr %i.er, align 8, !tbaa !24, !noalias !316
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 14008
  store ptr %i.di, ptr %i.es, align 8, !tbaa !321
  %i.et = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #16 ; 15 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, i8 0, i64 48, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.ex, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold13SFrameSectionINS_6X86_64EEE, i64 16), ptr %i.et, align 8, !tbaa !14
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 184
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ez, i8 0, i64 28, i1 false)
  store i64 7, ptr %i.eu, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store ptr @.str.6, ptr %.sroa.4.0..sroa_idx.i41.i, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 28
  store i32 1879048180, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store i64 2, ptr %i.fc, align 8
  store i64 8, ptr %i.ev, align 8
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.fe = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i42.i = icmp eq ptr %i.fd, %i.fe
  br i1 %.not.i.i.i42.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_19EhFrameRelocSectionIS1_EEEEDaS6_.exit.i
  store ptr %i.et, ptr %i.fd, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.ff, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i43.i

bb.aa:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_19EhFrameRelocSectionIS1_EEEEDaS6_.exit.i
  %i.fg = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 5 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775800
  br i1 %i.fk, label %bb.ab, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i44.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i44.i: ; preds = %bb.aa
  %i.fl = ashr exact i64 %i.fj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i45.i = tail call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i.i.i.i45.i, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = tail call i64 @llvm.umin.i64(i64 %i.fm, i64 1152921504606846975)
  %i.fp = select i1 %i.fn, i64 1152921504606846975, i64 %i.fo ; 3 uses
  %.not.i.i.i.i.i46.i = icmp ne i64 %i.fp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i46.i)
  %i.fq = shl nuw nsw i64 %i.fp, 3
  %i.fr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #16 ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 %i.fj ; 2 uses
  store ptr %i.et, ptr %i.fs, align 8, !tbaa !24
  %i.ft = icmp sgt i64 %i.fj, 0
  br i1 %i.ft, label %bb.ac, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i47.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i44.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fr, ptr align 8 %i.fg, i64 %i.fj, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i47.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i47.i: ; preds = %bb.ac, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i44.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.not.i17.i.i.i.i48.i = icmp eq ptr %i.fg, null
  br i1 %.not.i17.i.i.i.i48.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i49.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i47.i
  %i.fv = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = sub i64 %i.fw, %i.fi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fx) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i49.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i49.i: ; preds = %bb.ad, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i47.i
  store ptr %i.fr, ptr %i.h, align 8, !tbaa !26
  store ptr %i.fu, ptr %i.i, align 8, !tbaa !20
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.fy, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i43.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i43.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i49.i, %bb.z
  %i.fz = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !322
  %i.ga = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !322
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.ae, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SFrameSectionIS1_EEEEDaS6_.exit.i

bb.ae:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i43.i
  %i.gc = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !322 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SFrameSectionIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SFrameSectionIS1_EEEEDaS6_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i43.i
  %i.gd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.fz), !noalias !322
  store ptr %i.et, ptr %i.gd, align 8, !tbaa !24, !noalias !322
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 14016 ; 2 uses
  store ptr %i.et, ptr %i.ge, align 8, !tbaa !327
  %i.gf = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 14 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gi, i8 0, i64 48, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 144
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.gl, i8 0, i64 50, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gk, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold18SFrameRelocSectionINS_6X86_64EEE, i64 16), ptr %i.gf, align 8, !tbaa !14
  store i64 12, ptr %i.gg, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i51.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr @.str.7, ptr %.sroa.4.0..sroa_idx.i51.i, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store i32 4, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store i64 64, ptr %i.gn, align 8
  store i64 8, ptr %i.gh, align 8
  store i64 24, ptr %i.gj, align 8
  %i.go = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.gp = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i52.i = icmp eq ptr %i.go, %i.gp
  br i1 %.not.i.i.i52.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SFrameSectionIS1_EEEEDaS6_.exit.i
  store ptr %i.gf, ptr %i.go, align 8, !tbaa !24
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gq, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i53.i

bb.ag:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SFrameSectionIS1_EEEEDaS6_.exit.i
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775800
  br i1 %i.gv, label %bb.ah, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i54.i

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i54.i: ; preds = %bb.ag
  %i.gw = ashr exact i64 %i.gu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i55.i = tail call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i.i.i55.i, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = tail call i64 @llvm.umin.i64(i64 %i.gx, i64 1152921504606846975)
  %i.ha = select i1 %i.gy, i64 1152921504606846975, i64 %i.gz ; 3 uses
  %.not.i.i.i.i.i56.i = icmp ne i64 %i.ha, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i56.i)
  %i.hb = shl nuw nsw i64 %i.ha, 3
  %i.hc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #16 ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store ptr %i.gf, ptr %i.hd, align 8, !tbaa !24
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.ai, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i57.i

bb.ai:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i54.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hc, ptr align 8 %i.gr, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i57.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i57.i: ; preds = %bb.ai, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i54.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %.not.i17.i.i.i.i58.i = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i.i.i58.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i59.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i57.i
  %i.hg = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hi) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i59.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i59.i: ; preds = %bb.aj, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i57.i
  store ptr %i.hc, ptr %i.h, align 8, !tbaa !26
  store ptr %i.hf, ptr %i.i, align 8, !tbaa !20
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hj, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i53.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i53.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i59.i, %bb.af
  %i.hk = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !328
  %i.hl = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !328
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.ak, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_18SFrameRelocSectionIS1_EEEEDaS6_.exit.i

bb.ak:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i53.i
  %i.hn = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !328 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_18SFrameRelocSectionIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_18SFrameRelocSectionIS1_EEEEDaS6_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i53.i
  %i.ho = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.hk), !noalias !328
  store ptr %i.gf, ptr %i.ho, align 8, !tbaa !24, !noalias !328
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 14024
  store ptr %i.gf, ptr %i.hp, align 8, !tbaa !333
  %i.hq = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 12 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ht, i8 0, i64 48, i1 false)
  store i64 1, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.hu, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hv, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold13StrtabSectionINS_6X86_64EEE, i64 16), ptr %i.hq, align 8, !tbaa !14
  store i64 7, ptr %i.hr, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i61.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store ptr @.str.8, ptr %.sroa.4.0..sroa_idx.i61.i, align 8, !tbaa !18
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  store i32 3, ptr %i.hw, align 4
  %i.hx = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.hy = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i62.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not.i.i.i62.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_18SFrameRelocSectionIS1_EEEEDaS6_.exit.i
  store ptr %i.hq, ptr %i.hx, align 8, !tbaa !24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.hz, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i63.i

bb.am:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_18SFrameRelocSectionIS1_EEEEDaS6_.exit.i
  %i.ia = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = sub i64 %i.ib, %i.ic                    ; 5 uses
  %i.ie = icmp eq i64 %i.id, 9223372036854775800
  br i1 %i.ie, label %bb.an, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i64.i

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i64.i: ; preds = %bb.am
  %i.if = ashr exact i64 %i.id, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i65.i = tail call i64 @llvm.umax.i64(i64 %i.if, i64 1)
  %i.ig = add nsw i64 %.sroa.speculated.i.i.i.i.i65.i, %i.if ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %i.if
  %i.ii = tail call i64 @llvm.umin.i64(i64 %i.ig, i64 1152921504606846975)
  %i.ij = select i1 %i.ih, i64 1152921504606846975, i64 %i.ii ; 3 uses
  %.not.i.i.i.i.i66.i = icmp ne i64 %i.ij, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i66.i)
  %i.ik = shl nuw nsw i64 %i.ij, 3
  %i.il = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ik) #16 ; 4 uses
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 %i.id ; 2 uses
  store ptr %i.hq, ptr %i.im, align 8, !tbaa !24
  %i.in = icmp sgt i64 %i.id, 0
  br i1 %i.in, label %bb.ao, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i67.i

bb.ao:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i64.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.il, ptr align 8 %i.ia, i64 %i.id, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i67.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i67.i: ; preds = %bb.ao, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i64.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.not.i17.i.i.i.i68.i = icmp eq ptr %i.ia, null
  br i1 %.not.i17.i.i.i.i68.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i69.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i67.i
  %i.ip = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = sub i64 %i.iq, %i.ic
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.ir) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i69.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i69.i: ; preds = %bb.ap, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i67.i
  store ptr %i.il, ptr %i.h, align 8, !tbaa !26
  store ptr %i.io, ptr %i.i, align 8, !tbaa !20
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ij
  store ptr %i.is, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i63.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i63.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i69.i, %bb.al
  %i.it = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !334
  %i.iu = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !334
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %bb.aq, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13StrtabSectionIS1_EEEEDaS6_.exit.i

bb.aq:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i63.i
  %i.iw = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !334 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13StrtabSectionIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13StrtabSectionIS1_EEEEDaS6_.exit.i: ; preds = %bb.aq, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i63.i
  %i.ix = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.it), !noalias !334
  store ptr %i.hq, ptr %i.ix, align 8, !tbaa !24, !noalias !334
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 13904
  store ptr %i.hq, ptr %i.iy, align 8, !tbaa !339
  %i.iz = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 13 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 72
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.jc, i8 0, i64 48, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 80
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 144
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.jf, i8 0, i64 50, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.je, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold13SymtabSectionINS_6X86_64EEE, i64 16), ptr %i.iz, align 8, !tbaa !14
  store i64 7, ptr %i.ja, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i71.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr @.str.9, ptr %.sroa.4.0..sroa_idx.i71.i, align 8, !tbaa !18
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 28
  store i32 2, ptr %i.jg, align 4
  store i64 24, ptr %i.jd, align 8
  store i64 8, ptr %i.jb, align 8
  %i.jh = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.ji = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i72.i = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i.i.i72.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13StrtabSectionIS1_EEEEDaS6_.exit.i
  store ptr %i.iz, ptr %i.jh, align 8, !tbaa !24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %i.jj, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i73.i

bb.as:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13StrtabSectionIS1_EEEEDaS6_.exit.i
  %i.jk = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775800
  br i1 %i.jo, label %bb.at, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i74.i

bb.at:                                            ; preds = %bb.as
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i74.i: ; preds = %bb.as
  %i.jp = ashr exact i64 %i.jn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i75.i = tail call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add nsw i64 %.sroa.speculated.i.i.i.i.i75.i, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = tail call i64 @llvm.umin.i64(i64 %i.jq, i64 1152921504606846975)
  %i.jt = select i1 %i.jr, i64 1152921504606846975, i64 %i.js ; 3 uses
  %.not.i.i.i.i.i76.i = icmp ne i64 %i.jt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i76.i)
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #16 ; 4 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store ptr %i.iz, ptr %i.jw, align 8, !tbaa !24
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.au, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i77.i

bb.au:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i74.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i77.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i77.i: ; preds = %bb.au, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i74.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.not.i17.i.i.i.i78.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i.i.i78.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i79.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i77.i
  %i.jz = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = sub i64 %i.ka, %i.jm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.kb) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i79.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i79.i: ; preds = %bb.av, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i77.i
  store ptr %i.jv, ptr %i.h, align 8, !tbaa !26
  store ptr %i.jy, ptr %i.i, align 8, !tbaa !20
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jt
  store ptr %i.kc, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i73.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i73.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i79.i, %bb.ar
  %i.kd = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !340
  %i.ke = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !340
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %bb.aw, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SymtabSectionIS1_EEEEDaS6_.exit.i

bb.aw:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i73.i
  %i.kg = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !340 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SymtabSectionIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SymtabSectionIS1_EEEEDaS6_.exit.i: ; preds = %bb.aw, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i73.i
  %i.kh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.kd), !noalias !340
  store ptr %i.iz, ptr %i.kh, align 8, !tbaa !24, !noalias !340
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 13968
  store ptr %i.iz, ptr %i.ki, align 8, !tbaa !345
  %i.kj = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #16 ; 12 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 72
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.km, i8 0, i64 48, i1 false)
  store i64 1, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 80
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.kn, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ko, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold15ShstrtabSectionINS_6X86_64EEE, i64 16), ptr %i.kj, align 8, !tbaa !14
  store i64 9, ptr %i.kk, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i81.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store ptr @.str.10, ptr %.sroa.4.0..sroa_idx.i81.i, align 8, !tbaa !18
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 28
  store i32 3, ptr %i.kp, align 4
  %i.kq = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.kr = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i82.i = icmp eq ptr %i.kq, %i.kr
  br i1 %.not.i.i.i82.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SymtabSectionIS1_EEEEDaS6_.exit.i
  store ptr %i.kj, ptr %i.kq, align 8, !tbaa !24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store ptr %i.ks, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i83.i

bb.ay:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_13SymtabSectionIS1_EEEEDaS6_.exit.i
  %i.kt = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = ptrtoint ptr %i.kt to i64               ; 2 uses
  %i.kw = sub i64 %i.ku, %i.kv                    ; 5 uses
  %i.kx = icmp eq i64 %i.kw, 9223372036854775800
  br i1 %i.kx, label %bb.az, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i84.i

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i84.i: ; preds = %bb.ay
  %i.ky = ashr exact i64 %i.kw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i85.i = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 1)
  %i.kz = add nsw i64 %.sroa.speculated.i.i.i.i.i85.i, %i.ky ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.ky
  %i.lb = tail call i64 @llvm.umin.i64(i64 %i.kz, i64 1152921504606846975)
  %i.lc = select i1 %i.la, i64 1152921504606846975, i64 %i.lb ; 3 uses
  %.not.i.i.i.i.i86.i = icmp ne i64 %i.lc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i86.i)
  %i.ld = shl nuw nsw i64 %i.lc, 3
  %i.le = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ld) #16 ; 4 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 %i.kw ; 2 uses
  store ptr %i.kj, ptr %i.lf, align 8, !tbaa !24
  %i.lg = icmp sgt i64 %i.kw, 0
  br i1 %i.lg, label %bb.ba, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i87.i

bb.ba:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i84.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.le, ptr align 8 %i.kt, i64 %i.kw, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i87.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i87.i: ; preds = %bb.ba, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i84.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.not.i17.i.i.i.i88.i = icmp eq ptr %i.kt, null
  br i1 %.not.i17.i.i.i.i88.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i89.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i87.i
  %i.li = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = sub i64 %i.lj, %i.kv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.lk) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i89.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i89.i: ; preds = %bb.bb, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i87.i
  store ptr %i.le, ptr %i.h, align 8, !tbaa !26
  store ptr %i.lh, ptr %i.i, align 8, !tbaa !20
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lc
  store ptr %i.ll, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i83.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i83.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i89.i, %bb.ax
  %i.lm = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !346
  %i.ln = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !346
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %bb.bc, label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_15ShstrtabSectionIS1_EEEEDaS6_.exit.i

bb.bc:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i83.i
  %i.lp = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !346 ; 0 uses
  br label %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_15ShstrtabSectionIS1_EEEEDaS6_.exit.i

_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_15ShstrtabSectionIS1_EEEEDaS6_.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i83.i
  %i.lq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.lm), !noalias !346
  store ptr %i.kj, ptr %i.lq, align 8, !tbaa !24, !noalias !346
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 13944
  store ptr %i.kj, ptr %i.lr, align 8, !tbaa !351
  %i.ls = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #16 ; 14 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 72
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lv, i8 0, i64 48, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 80
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %i.lw, i8 0, i64 58, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lx, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold19NotePropertySectionINS_6X86_64EEE, i64 16), ptr %i.ls, align 8, !tbaa !14
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ly, i8 0, i64 24, i1 false)
  store i64 18, ptr %i.lt, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store ptr @.str.11, ptr %.sroa.4.0..sroa_idx.i91.i, align 8, !tbaa !18
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 28
  store i32 7, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  store i64 2, ptr %i.ma, align 8
  store i64 8, ptr %i.lu, align 8
  %i.mb = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.mc = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i.i92.i = icmp eq ptr %i.mb, %i.mc
  br i1 %.not.i.i.i92.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_15ShstrtabSectionIS1_EEEEDaS6_.exit.i
  store ptr %i.ls, ptr %i.mb, align 8, !tbaa !24
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.md, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i93.i

bb.be:                                            ; preds = %_ZZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPS3_E_clINS_15ShstrtabSectionIS1_EEEEDaS6_.exit.i
  %i.me = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.mf = ptrtoint ptr %i.mb to i64
  %i.mg = ptrtoint ptr %i.me to i64               ; 2 uses
  %i.mh = sub i64 %i.mf, %i.mg                    ; 5 uses
  %i.mi = icmp eq i64 %i.mh, 9223372036854775800
  br i1 %i.mi, label %bb.bf, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i94.i

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i94.i: ; preds = %bb.be
  %i.mj = ashr exact i64 %i.mh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i95.i = tail call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.mk = add nsw i64 %.sroa.speculated.i.i.i.i.i95.i, %i.mj ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %i.mj
  %i.mm = tail call i64 @llvm.umin.i64(i64 %i.mk, i64 1152921504606846975)
  %i.mn = select i1 %i.ml, i64 1152921504606846975, i64 %i.mm ; 3 uses
  %.not.i.i.i.i.i96.i = icmp ne i64 %i.mn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i96.i)
  %i.mo = shl nuw nsw i64 %i.mn, 3
  %i.mp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mo) #16 ; 4 uses
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 %i.mh ; 2 uses
  store ptr %i.ls, ptr %i.mq, align 8, !tbaa !24
  %i.mr = icmp sgt i64 %i.mh, 0
  br i1 %i.mr, label %bb.bg, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i97.i

bb.bg:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i94.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mp, ptr align 8 %i.me, i64 %i.mh, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i97.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i97.i: ; preds = %bb.bg, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i94.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %.not.i17.i.i.i.i98.i = icmp eq ptr %i.me, null
  br i1 %.not.i17.i.i.i.i98.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i99.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i97.i
  %i.mt = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = sub i64 %i.mu, %i.mg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef %i.mv) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i99.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i99.i: ; preds = %bb.bh, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i97.i
  store ptr %i.mp, ptr %i.h, align 8, !tbaa !26
  store ptr %i.ms, ptr %i.i, align 8, !tbaa !20
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mn
  store ptr %i.mw, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i93.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i93.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i99.i, %bb.bd
  %i.mx = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !352
  %i.my = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !352
  %i.mz = icmp eq i64 %i.my, 0
  br i1 %i.mz, label %bb.bi, label %_ZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE.exit

bb.bi:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i93.i
  %i.na = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !352 ; 0 uses
  br label %_ZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE.exit

_ZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE.exit: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i93.i, %bb.bi
  %i.nb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.am, i64 noundef %i.mx), !noalias !352
  store ptr %i.ls, ptr %i.nb, align 8, !tbaa !24, !noalias !352
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 14440
  store ptr %i.ls, ptr %i.nc, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.nd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.nd, ptr %12, align 8, !tbaa !358
  %i.ne = call noalias noundef nonnull dereferenceable(27) ptr @_Znwm(i64 noundef 27) #16 ; 3 uses
  store ptr %i.ne, ptr %12, align 8, !tbaa !359
  store i64 26, ptr %i.nd, align 8, !tbaa !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ne, ptr noundef nonnull align 1 dereferenceable(26) @.str.12, i64 26, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 26, ptr %i.nf, align 8, !tbaa !361
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 26
  store i8 0, ptr %i.ng, align 1, !tbaa !360
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %12, ptr noundef null)
  %i.nh = load ptr, ptr %12, align 8, !tbaa !359  ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.nd
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE.exit
  %i.nj = load i64, ptr %i.nd, align 8, !tbaa !360
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4moldL27r_create_synthetic_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 13088 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #9
  %.val.i = load ptr, ptr %i.nl, align 8, !tbaa !362 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 13096 ; 3 uses
  %.val2.i = load ptr, ptr %i.nm, align 8, !tbaa !362 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.nn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.nn, align 8, !tbaa !363
  %i.no = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.np = getelementptr inbounds nuw i8, ptr %10, i64 15
  %i.nq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.nr = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nq, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.nr, align 8, !tbaa !365
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.no, align 4, !tbaa !360
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %10) #9
  %i.ns = icmp eq ptr %.val.i, %.val2.i
  br i1 %i.ns, label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d119wait_context_vertexE, i64 16), ptr %8, align 8, !tbaa !14
  %i.nt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.nt, align 8, !tbaa !381
  %i.nu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.nu, align 8, !tbaa !383
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.nv = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.nv, i8 0, i64 56, i1 false)
  %i.nw = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr %.val.i, ptr %i.nw, align 64, !tbaa !362
  %i.nx = getelementptr inbounds nuw i8, ptr %9, i64 72
  store ptr %.val2.i, ptr %i.nx, align 8, !tbaa !362
  %i.ny = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %8, ptr %i.ny, align 16, !tbaa !384
  %i.nz = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %10, ptr %i.nz, align 8, !tbaa !386
  %i.oa = getelementptr inbounds nuw i8, ptr %9, i64 96
  store ptr %13, ptr %i.oa, align 32, !tbaa !388
  %i.ob = atomicrmw add ptr %i.nu, i64 1 seq_cst, align 8
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ob, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bk, label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.oc = ptrtoint ptr %i.nt to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.oc) #9
  br label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i

_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i: ; preds = %bb.bk, %bb.bj
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_S9_St26random_access_iterator_tagEE, i64 16), ptr %9, align 64, !tbaa !14
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.nt, ptr noundef nonnull align 8 dereferenceable(128) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit.i.i.i

_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit.i.i.i: ; preds = %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.od = load atomic i8, ptr %i.np monotonic, align 1
  %i.oe = icmp eq i8 %i.od, -1
  br i1 %i.oe, label %_ZN4moldL26r_claim_unresolved_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit.i.i.i
  call void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %10) #9
  br label %_ZN4moldL26r_claim_unresolved_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE.exit

_ZN4moldL26r_claim_unresolved_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE.exit: ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L26r_claim_unresolved_symbolsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit.i.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  %i.of = load ptr, ptr %11, align 8, !tbaa !389
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.of) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @_ZN4mold21compute_section_sizesINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) #9
  call void @_ZN4mold20sort_output_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) #9
  call void @_ZN4mold20create_output_symtabINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) #9
  %i.og = load ptr, ptr %i.dh, align 8, !tbaa !315
  call void @_ZN4mold14EhFrameSectionINS_6X86_64EE9constructERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.og, ptr noundef nonnull align 8 dereferenceable(14448) %0) #9
  %i.oh = load ptr, ptr %i.ge, align 8, !tbaa !327
  call void @_ZN4mold13SFrameSectionINS_6X86_64EE9constructERNS_7ContextIS1_EEQ15supports_sframeIT_E(ptr noundef nonnull align 8 dereferenceable(240) %i.oh, ptr noundef nonnull align 8 dereferenceable(14448) %0) #9
  call void @_ZN4mold21create_reloc_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.oi, ptr %5, align 8, !tbaa !358
  %i.oj = call noalias noundef nonnull dereferenceable(29) ptr @_Znwm(i64 noundef 29) #16 ; 3 uses
  store ptr %i.oj, ptr %5, align 8, !tbaa !359
  store i64 28, ptr %i.oi, align 8, !tbaa !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.oj, ptr noundef nonnull align 1 dereferenceable(28) @.str.14, i64 28, i1 false)
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 28, ptr %i.ok, align 8, !tbaa !361
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 28
  store i8 0, ptr %i.ol, align 1, !tbaa !360
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null)
  %i.om = load ptr, ptr %5, align 8, !tbaa !359   ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.oi
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %_ZN4moldL26r_claim_unresolved_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE.exit
  %i.oo = load i64, ptr %i.oi, align 8, !tbaa !360
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32: ; preds = %_ZN4moldL26r_claim_unresolved_symbolsINS_6X86_64EEEvRNS_7ContextIT_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.oq = load ptr, ptr %i.nm, align 8, !tbaa !392 ; 2 uses
  %i.or = load ptr, ptr %i.nl, align 8, !tbaa !393 ; 2 uses
  %i.os = ptrtoint ptr %i.oq to i64               ; 3 uses
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = ashr exact i64 %i.ou, 3                 ; 3 uses
  %i.ow = icmp ugt i64 %i.ov, 384307168202282325
  br i1 %i.ow, label %bb.bm, label %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #17
  unreachable

_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i32
  store i64 0, ptr %6, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.oq, %i.or
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EEC2EmRKS7_.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.ox = mul nuw nsw i64 %i.ov, 24               ; 3 uses
  %i.oy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ox) #16 ; 5 uses
  store ptr %i.oy, ptr %6, align 8, !tbaa !394
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %i.oy, i64 %i.ov
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.oy, i8 0, i64 %i.ox, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.oy, i64 %i.ox
  %.pre.i = load ptr, ptr %i.nm, align 8, !tbaa !392
  %.pre39.i.a = load ptr, ptr %i.nl, align 8, !tbaa !393
end_hunk_0
begin_hunk_1_@_ZN4mold15combine_objectsINS_6X86_64EEEvRNS_7ContextIT_EE:bb.a
  br label %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EEC2EmRKS7_.exit.i

_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EEC2EmRKS7_.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %.pre-phi46.i = phi i64 [ %.pre45.i, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.os, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ]
  %.pre-phi.i = phi i64 [ %.pre44.i.a, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.os, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ]
  %i.pa = phi ptr [ %i.oy, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ]
  %.sink.i.i = phi ptr [ %i.oz, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ] ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sink.i.i, ptr %i.pc, align 8, !tbaa !397
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.pb, align 8, !tbaa !398
  %i.pd = sub i64 %.pre-phi.i, %.pre-phi46.i
  %i.pe = ashr exact i64 %i.pd, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store ptr %0, ptr %7, align 8, !tbaa !399
  %i.pf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %6, ptr %i.pf, align 8, !tbaa !401
  %i.pg = icmp sgt i64 %i.pe, 0
  br i1 %i.pg, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSE_RSG_RNS1_18task_group_contextE.exit.i.i.i.i.i, label %_ZN3tbb6detail2d112parallel_forIlZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.i

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSE_RSG_RNS1_18task_group_contextE.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EEC2EmRKS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ph, align 8, !tbaa !363
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pk, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.pl, align 8, !tbaa !365
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.pi, align 4, !tbaa !360
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store ptr null, ptr %1, align 8, !tbaa !403
  %i.pm = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 192) #9 ; 14 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.pn, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.pm, align 64, !tbaa !14
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 64
  store i64 %i.pe, ptr %i.po, align 64, !tbaa !16
  %.sroa.52.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 72
  store i64 0, ptr %.sroa.52.0..sroa_idx.i.i.i, align 8, !tbaa !16
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 80
  store i64 1, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !tbaa !16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 88
  store ptr %7, ptr %i.pp, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 96
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 32
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 104
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 112 ; 2 uses
  store ptr null, ptr %i.pq, align 16, !tbaa !406
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 120
  %i.ps = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null) #9
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 128
  store i32 0, ptr %i.pu, align 64, !tbaa !417
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pm, i64 132
  store i8 5, ptr %i.pv, align 4, !tbaa !418
  %i.pw = shl nsw i64 %i.pt, 1
  %i.px = and i64 %i.pw, 9223372036854775806
  store i64 %i.px, ptr %i.pr, align 8, !tbaa !419
  %i.py = getelementptr inbounds nuw i8, ptr %i.pm, i64 136
  %i.pz = load i64, ptr %1, align 8, !tbaa !420
  store i64 %i.pz, ptr %i.py, align 8, !tbaa !420
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr null, ptr %2, align 8, !tbaa !421
  %i.qa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.qa, align 8, !tbaa !423
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i64 1, ptr %i.qb, align 8, !tbaa !381
  %i.qc = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %i.qc, align 8, !tbaa !383
  store ptr %2, ptr %i.pq, align 16, !tbaa !406
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.pm, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.qb, ptr noundef nonnull align 8 dereferenceable(128) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.qd = load atomic i8, ptr %i.pj monotonic, align 1
  %i.qe = icmp eq i8 %i.qd, -1
  br i1 %i.qe, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEEEvRKSA_RKT0_RKNS1_16auto_partitionerE.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSE_RSG_RNS1_18task_group_contextE.exit.i.i.i.i.i
  call void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %3) #9
  br label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEEEvRKSA_RKT0_RKNS1_16auto_partitionerE.exit.i.i.i

_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEEEvRKSA_RKT0_RKNS1_16auto_partitionerE.exit.i.i.i: ; preds = %bb.bn, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE3runERKS4_RKSE_RSG_RNS1_18task_group_contextE.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.pre40.i.a = load ptr, ptr %6, align 8, !tbaa !424
  %.pre41.i.a = load ptr, ptr %i.pb, align 8, !tbaa !424
  br label %_ZN3tbb6detail2d112parallel_forIlZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.i

_ZN3tbb6detail2d112parallel_forIlZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.i: ; preds = %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEEEvRKSA_RKT0_RKNS1_16auto_partitionerE.exit.i.i.i, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EEC2EmRKS7_.exit.i
  %i.qf = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EEC2EmRKS7_.exit.i ], [ %.pre41.i.a, %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEEEvRKSA_RKT0_RKNS1_16auto_partitionerE.exit.i.i.i ] ; 3 uses
  %i.qg = phi ptr [ %i.pa, %_ZNSt6vectorIS_IPN4mold5ChunkINS0_6X86_64EEESaIS4_EESaIS6_EEC2EmRKS7_.exit.i ], [ %.pre40.i.a, %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEEEvRKSA_RKT0_RKNS1_16auto_partitionerE.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.qh = icmp eq ptr %i.qg, %i.qf
  br i1 %i.qh, label %._crit_edge38.i, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %_ZN3tbb6detail2d112parallel_forIlZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.i
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 12936 ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 12944 ; 5 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 12984
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 12952
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 12960
  br label %bb.bq

._crit_edge38.loopexit.i:                         ; preds = %._crit_edge.i
  %.pre42.i.a = load ptr, ptr %6, align 8, !tbaa !394
  %.pre43.i = load ptr, ptr %i.pb, align 8, !tbaa !398
  br label %._crit_edge38.i

._crit_edge38.i:                                  ; preds = %._crit_edge38.loopexit.i, %_ZN3tbb6detail2d112parallel_forIlZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.i
  %i.qn = phi ptr [ %.pre43.i, %._crit_edge38.loopexit.i ], [ %i.qf, %_ZN3tbb6detail2d112parallel_forIlZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.i ] ; 2 uses
  %i.qo = phi ptr [ %.pre42.i.a, %._crit_edge38.loopexit.i ], [ %i.qg, %_ZN3tbb6detail2d112parallel_forIlZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_EEvS7_S7_RKT0_.exit.i ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.qo, %i.qn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge38.i, %_ZSt8_DestroyISt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.qv, %_ZSt8_DestroyISt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i.i ], [ %i.qo, %._crit_edge38.i ] ; 3 uses
  %i.qp = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !23
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %i.qp to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.qu) #15
  br label %_ZSt8_DestroyISt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i.i: ; preds = %bb.bo, %.lr.ph.i.i.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.qv, %i.qn
  br i1 %.not.i.i.i.i33, label %_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !425

_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !394
  br label %_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i.i

_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i.i, %._crit_edge38.i
  %i.qw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exitthread-pre-split.i.i ], [ %i.qo, %._crit_edge38.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.qw, null
  br i1 %.not.i.i1.i.i, label %_ZN4moldL28create_comdat_group_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN4mold5ChunkINS1_6X86_64EEESaIS5_EEEvT_S9_.exit.i.i
  %i.qx = load ptr, ptr %i.pc, align 8, !tbaa !397
  %i.qy = ptrtoint ptr %i.qx to i64
  %i.qz = ptrtoint ptr %i.qw to i64
  %i.ra = sub i64 %i.qy, %i.qz
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.ra) #15
  br label %_ZN4moldL28create_comdat_group_sectionsINS_6X86_64EEEvRNS_7ContextIT_EE.exit

bb.bq:                                            ; preds = %._crit_edge.i, %.lr.ph37.i
  %.sroa.025.036.i = phi ptr [ %i.qg, %.lr.ph37.i ], [ %i.rf, %._crit_edge.i ] ; 3 uses
  %i.rb = load ptr, ptr %.sroa.025.036.i, align 8, !tbaa !427 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.sroa.025.036.i, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !427 ; 2 uses
  %i.re = icmp eq ptr %i.rb, %i.rd
  br i1 %i.re, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m.exit.i, %bb.bq
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.025.036.i, i64 24 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.qf
  br i1 %i.rg, label %._crit_edge38.loopexit.i, label %bb.bq

.lr.ph.i:                                         ; preds = %bb.bq, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m.exit.i
  %.sroa.021.035.i = phi ptr [ %i.uv, %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m.exit.i ], [ %i.rb, %bb.bq ] ; 2 uses
  %i.rh = load ptr, ptr %.sroa.021.035.i, align 8, !tbaa !24 ; 3 uses
  %i.ri = load ptr, ptr %i.i, align 8, !tbaa !20  ; 4 uses
  %i.rj = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not.i.i = icmp eq ptr %i.ri, %i.rj
  br i1 %.not.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !24
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  store ptr %i.rk, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i

bb.bs:                                            ; preds = %.lr.ph.i
  %i.rl = load ptr, ptr %i.h, align 8, !tbaa !26  ; 4 uses
  %i.rm = ptrtoint ptr %i.ri to i64
  %i.rn = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.ro = sub i64 %i.rm, %i.rn                    ; 5 uses
  %i.rp = icmp eq i64 %i.ro, 9223372036854775800
  br i1 %i.rp, label %bb.bt, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bs
  %i.rq = ashr exact i64 %i.ro, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rq, i64 1)
  %i.rr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.rq ; 2 uses
  %i.rs = icmp ult i64 %i.rr, %i.rq
  %i.rt = call i64 @llvm.umin.i64(i64 %i.rr, i64 1152921504606846975)
  %i.ru = select i1 %i.rs, i64 1152921504606846975, i64 %i.rt ; 3 uses
  %.not.i.i.i11.i = icmp ne i64 %i.ru, 0
  call void @llvm.assume(i1 %.not.i.i.i11.i)
  %i.rv = shl nuw nsw i64 %i.ru, 3
  %i.rw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #16 ; 4 uses
  %i.rx = getelementptr inbounds i8, ptr %i.rw, i64 %i.ro ; 2 uses
  store ptr %i.rh, ptr %i.rx, align 8, !tbaa !24
  %i.ry = icmp sgt i64 %i.ro, 0
  br i1 %i.ry, label %bb.bu, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.bu:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rw, ptr align 8 %i.rl, i64 %i.ro, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.bu, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.rl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.sa = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = sub i64 %i.sb, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.sc) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.bv, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.rw, ptr %i.h, align 8, !tbaa !26
  store ptr %i.rz, ptr %i.i, align 8, !tbaa !20
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.ru
  store ptr %i.sd, ptr %i.k, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.br
  %i.se = atomicrmw add ptr %i.ag, i64 1 seq_cst, align 8, !noalias !428 ; 6 uses
  %i.sf = load atomic i64, ptr %i.ai monotonic, align 8, !noalias !428
  %i.sg = icmp eq i64 %i.sf, 0
  br i1 %i.sg, label %bb.bw, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i

bb.bw:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i
  %i.sh = cmpxchg ptr %i.ai, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !428 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i: ; preds = %bb.bw, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backERKS4_.exit.i
  %i.si = or i64 %i.se, 1
  %i.sj = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.si, i1 true) ; 3 uses
  %i.sk = xor i64 %i.sj, 63                       ; 3 uses
  %i.sl = load atomic ptr, ptr %i.qi acquire, align 8, !noalias !428 ; 4 uses
  %i.sm = icmp eq ptr %i.sl, %i.qj
  %i.sn = add i64 %i.se, -8
  %i.so = icmp ult i64 %i.sn, -9
  %or.cond.i.i.i = and i1 %i.so, %i.sm
  br i1 %or.cond.i.i.i, label %bb.bx, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_Emm.exit.i.i

bb.bx:                                            ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit.i
  %i.sp = icmp ult i64 %i.se, 9
  br i1 %i.sp, label %.lr.ph.i.i.i15.i, label %.preheader.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EEZNS1_18spin_wait_while_eqISB_SB_EET_RKSt6atomicISD_ET0_St12memory_orderEUlSB_E_EESD_SH_SI_SJ_.exit.i.i.i.i
  %i.sq = load atomic ptr, ptr %i.qi acquire, align 8, !noalias !428
  %.not.i.i.i16.i = icmp eq ptr %i.sq, %i.qj
  br i1 %.not.i.i.i16.i, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE19allocate_long_tableEPKSt6atomicIPSA_Em.exit.i.i.i, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE19allocate_long_tableEPKSt6atomicIPSA_Em.exit.thread.i.i.i

.lr.ph.i.i.i15.i:                                 ; preds = %bb.bx, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EEZNS1_18spin_wait_while_eqISB_SB_EET_RKSt6atomicISD_ET0_St12memory_orderEUlSB_E_EESD_SH_SI_SJ_.exit.i.i.i.i
  %.01924.i.i.i.i = phi i64 [ %i.te, %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EEZNS1_18spin_wait_while_eqISB_SB_EET_RKSt6atomicISD_ET0_St12memory_orderEUlSB_E_EESD_SH_SI_SJ_.exit.i.i.i.i ], [ 0, %bb.bx ] ; 2 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %.01924.i.i.i.i ; 2 uses
  %i.ss = load atomic ptr, ptr %i.sr acquire, align 8, !noalias !428
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %.lr.ph.i.i.i.i17.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EEZNS1_18spin_wait_while_eqISB_SB_EET_RKSt6atomicISD_ET0_St12memory_orderEUlSB_E_EESD_SH_SI_SJ_.exit.i.i.i.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i15.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i
  %.sroa.0.09.us.i.i.i.i.i = phi i32 [ %.sroa.0.1.us.i.i.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i15.i ] ; 8 uses
  %i.su = icmp slt i32 %.sroa.0.09.us.i.i.i.i.i, 17
  br i1 %i.su, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i.i17.i
  %i.sv = call noundef i32 @sched_yield() #9, !noalias !428 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i

bb.bz:                                            ; preds = %.lr.ph.i.i.i.i17.i
  %i.sw = icmp sgt i32 %.sroa.0.09.us.i.i.i.i.i, 0
  br i1 %i.sw, label %.lr.ph.i.i.us.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i.preheader:                ; preds = %bb.bz
  %xtraiter119 = and i32 %.sroa.0.09.us.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod120.not = icmp eq i32 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.i.i.prol

.lr.ph.i.i.us.i.i.i.i.i.prol:                     ; preds = %.lr.ph.i.i.us.i.i.i.i.i.preheader, %.lr.ph.i.i.us.i.i.i.i.i.prol
  %.01.i.i.us.i.i.i.i.i.prol = phi i32 [ %i.sx, %.lr.ph.i.i.us.i.i.i.i.i.prol ], [ %.sroa.0.09.us.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ]
  %prol.iter121 = phi i32 [ %prol.iter121.next, %.lr.ph.i.i.us.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.us.i.i.i.i.i.preheader ]
  %i.sx = add nsw i32 %.01.i.i.us.i.i.i.i.i.prol, -1 ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !428
  %prol.iter121.next = add i32 %prol.iter121, 1   ; 2 uses
  %prol.iter121.cmp.not = icmp eq i32 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.us.i.i.i.i.i.prol, !llvm.loop !433

.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit:            ; preds = %.lr.ph.i.i.us.i.i.i.i.i.prol, %.lr.ph.i.i.us.i.i.i.i.i.preheader
  %.01.i.i.us.i.i.i.i.i.unr = phi i32 [ %.sroa.0.09.us.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.preheader ], [ %i.sx, %.lr.ph.i.i.us.i.i.i.i.i.prol ]
  %i.sy = icmp ult i32 %.sroa.0.09.us.i.i.i.i.i, 8
  br i1 %i.sy, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i.i.i
  %.01.i.i.us.i.i.i.i.i = phi i32 [ %i.sz, %.lr.ph.i.i.us.i.i.i.i.i ], [ %.01.i.i.us.i.i.i.i.i.unr, %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  %i.sz = add nsw i32 %.01.i.i.us.i.i.i.i.i, -8
  call void @llvm.x86.sse2.pause(), !noalias !428
  %i.ta = icmp sgt i32 %.01.i.i.us.i.i.i.i.i, 8
  br i1 %i.ta, label %.lr.ph.i.i.us.i.i.i.i.i, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i.i.i, !llvm.loop !435

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i.i.i: ; preds = %.lr.ph.i.i.us.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.us.i.i.i.i.i, %bb.bz
  %i.tb = shl i32 %.sroa.0.09.us.i.i.i.i.i, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i.i.i, %bb.by
  %.sroa.0.1.us.i.i.i.i.i = phi i32 [ %i.tb, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i.i.i.i.i ], [ %.sroa.0.09.us.i.i.i.i.i, %bb.by ]
  %i.tc = load atomic ptr, ptr %i.sr acquire, align 8, !noalias !428
  %i.td = icmp eq ptr %i.tc, null
  br i1 %i.td, label %.lr.ph.i.i.i.i17.i, label %_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EEZNS1_18spin_wait_while_eqISB_SB_EET_RKSt6atomicISD_ET0_St12memory_orderEUlSB_E_EESD_SH_SI_SJ_.exit.i.i.i.i, !llvm.loop !436

_ZN3tbb6detail2d015spin_wait_whileIPSt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EEZNS1_18spin_wait_while_eqISB_SB_EET_RKSt6atomicISD_ET0_St12memory_orderEUlSB_E_EESD_SH_SI_SJ_.exit.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i.i.i.i.i, %.lr.ph.i.i.i15.i
  %i.te = add i64 %.01924.i.i.i.i, 1              ; 2 uses
  %i.tf = shl nuw i64 1, %i.te
  %i.tg = and i64 %i.tf, -2
  %i.th = icmp ult i64 %i.tg, %i.se
  br i1 %i.th, label %.lr.ph.i.i.i15.i, label %._crit_edge.i.i.i.i, !llvm.loop !437

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE19allocate_long_tableEPKSt6atomicIPSA_Em.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.ti = call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 512) #9, !noalias !428 ; 7 uses
  %i.tj = load atomic ptr, ptr %i.qj monotonic, align 8, !noalias !428
  store ptr %i.tj, ptr %i.ti, align 8, !tbaa !438, !noalias !428
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tl = load atomic ptr, ptr %i.ql monotonic, align 8, !noalias !428
  store ptr %i.tl, ptr %i.tk, align 8, !tbaa !438, !noalias !428
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tn = load atomic ptr, ptr %i.qm monotonic, align 8, !noalias !428
  store ptr %i.tn, ptr %i.tm, align 8, !tbaa !438, !noalias !428
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ti, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %scevgep.i.i.i.i, i8 0, i64 488, i1 false), !tbaa !438, !noalias !428
  %i.to = cmpxchg ptr %i.qi, ptr %i.sl, ptr %i.ti release acquire, align 8, !noalias !428 ; 2 uses
  %i.tp = extractvalue { ptr, i1 } %i.to, 1
  br i1 %i.tp, label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_Emm.exit.i.i, label %bb.ca

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE19allocate_long_tableEPKSt6atomicIPSA_Em.exit.thread.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.tq = cmpxchg ptr %i.qi, ptr %i.sl, ptr null release acquire, align 8, !noalias !428
  %i.tr = extractvalue { ptr, i1 } %i.tq, 0
  br label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_Emm.exit.i.i

bb.ca:                                            ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE19allocate_long_tableEPKSt6atomicIPSA_Em.exit.i.i.i
  %i.ts = extractvalue { ptr, i1 } %i.to, 0
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.ti) #9, !noalias !428
  br label %_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_Emm.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.bx, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i ], [ 1, %bb.bx ] ; 8 uses
  %i.tt = load atomic i8, ptr %i.qk monotonic, align 8, !range !440, !noalias !428, !noundef !441
  %i.tu = trunc nuw i8 %i.tt to i1
  br i1 %i.tu, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.preheader.i.i.i
  call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #9, !noalias !428
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.preheader.i.i.i
  %i.tv = icmp slt i32 %.sroa.0.0.i.i.i, 17
  br i1 %i.tv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.tw = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.tw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.cd
  %xtraiter = and i32 %.sroa.0.0.i.i.i, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.01.i.i.i.i.i.prol = phi i32 [ %i.tx, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.tx = add nsw i32 %.01.i.i.i.i.i.prol, -1     ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !428
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !442

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.tx, %.lr.ph.i.i.i.i.i.prol ]
  %i.ty = icmp ult i32 %.sroa.0.0.i.i.i, 8
  br i1 %i.ty, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01.i.i.i.i.i = phi i32 [ %i.tz, %.lr.ph.i.i.i.i.i ], [ %.01.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
  call void @llvm.x86.sse2.pause(), !noalias !428
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.e = load ptr, ptr %0, align 64, !tbaa !14
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #9, !inline_history !607
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !421 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !420
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #9
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !608  ; 2 uses
  %i.d = icmp slt i64 %.8.val, %.0.val
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOSK_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 32, !tbaa !609
  %i.g = mul nsw i64 %i.c, %.8.val
  %i.h = add nsw i64 %i.f, %i.g
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.03.i.i.i.i.i = phi i64 [ %i.gn, %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i ], [ %.8.val, %.lr.ph.preheader.i.i.i.i.i ]
  %storemerge2.i.i.i.i.i = phi i64 [ %i.go, %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !610, !nonnull !441, !align !464 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !611, !nonnull !441, !align !464
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 13088
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !393
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge2.i.i.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !551  ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 592
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !613  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 600
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !613  ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i

.lr.ph91.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 448 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 360 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 368 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i
  %.sroa.073.089.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph91.i.i.i.i.i.i.i.i.i.i ], [ %i.gl, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.073.089.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr %.sroa.073.089.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !615
  %i.ae = sext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !617
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.af, i64 %i.ae ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ah, align 1
  %i.ai = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !578
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !579 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sext i32 %i.al to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = add nsw i64 %i.ao, %i.am
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.aq
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !618
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !619
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.0.copyload.i5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 1
  %.idx.i.i.i.i.i.i.i.i.i.i = and i64 %.0.copyload.i5.i.i.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.az = icmp eq i64 %.idx.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.az, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.c
  %.sroa.056.082.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.061.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %.sroa.061.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %.sroa.10.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.17.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %.sroa.17.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !621, !nonnull !441, !align !464
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !394
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %storemerge2.i.i.i.i.i ; 4 uses
  %i.bd = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #16 ; 16 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i8 0, i64 48, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.bj, i8 0, i64 50, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold18ComdatGroupSectionINS_6X86_64EEE, i64 16), ptr %i.bd, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 184
  store ptr %i.ar, ptr %i.bk, align 8, !tbaa !585
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 192
  store ptr %.sroa.061.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  store ptr %.sroa.10.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  store ptr %.sroa.17.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 8, !tbaa !23
  store i64 6, ptr %i.be, align 8, !tbaa !16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr @.str.16, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  store i32 17, ptr %i.bo, align 4
  store i64 4, ptr %i.bh, align 8
  store i64 4, ptr %i.bf, align 8
  %i.bp = ptrtoint ptr %.sroa.10.0.lcssa.i.i.i.i.i.i.i.i.i.i to i64
  %i.bq = ptrtoint ptr %.sroa.061.0.lcssa.i.i.i.i.i.i.i.i.i.i to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 1
  %i.bt = add nsw i64 %i.bs, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.by
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bd, ptr %i.bw, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !20
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 4 uses
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 5 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.f, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #16 ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cd ; 2 uses
  store ptr %i.bd, ptr %i.cm, align 8, !tbaa !24
  %i.cn = icmp sgt i64 %i.cd, 0
  br i1 %i.cn, label %bb.g, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr align 8 %i.ca, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !23
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cr) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.cl, ptr %i.bc, align 8, !tbaa !26
  store ptr %i.co, ptr %i.bv, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.cs, ptr %i.bx, align 8, !tbaa !23
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %.sroa.056.086.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.056.0.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.056.082.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.17.085.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.17.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.10.084.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.061.083.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.061.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ] ; 10 uses
  %.0.copyload.i25.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.056.086.i.i.i.i.i.i.i.i.i.i, align 1
  %i.ct = zext i32 %.0.copyload.i25.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.cu = load ptr, ptr %i.t, align 8, !tbaa !617
  %i.cv = getelementptr inbounds nuw [64 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.0.copyload.i26.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cw, align 1
  %i.cx = icmp eq i32 %.0.copyload.i26.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.cx, label %bb.i, label %bb.t

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 44
  %.0.copyload.i27.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cy, align 1
  %i.cz = zext i32 %.0.copyload.i27.i.i.i.i.i.i.i.i.i.i to i64
  %i.da = load ptr, ptr %i.w, align 8, !tbaa !622
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !624 ; 2 uses
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.dc, 0
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i)
  %i.dd = add nsw i32 %i.dc, -1
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = load ptr, ptr %i.x, align 8, !tbaa !625, !noalias !629 ; 2 uses
  %i.dg = load ptr, ptr %i.y, align 8, !tbaa !632, !noalias !629
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !633, !noalias !629
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 80
  %i.dm = add nsw i64 %i.dl, %i.de                ; 5 uses
  %i.dn = icmp sgt i64 %i.dm, -1
  br i1 %i.dn, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.do = icmp samesign ult i64 %i.dm, 6
  br i1 %i.do, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw [80 x i8], ptr %i.df, i64 %i.de
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.dq = udiv i64 %i.dm, 6
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.dr = xor i64 %i.dm, -1
  %i.ds = udiv i64 %i.dr, 6
  %i.dt = xor i64 %i.ds, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.du = phi i64 [ %i.dq, %bb.l ], [ %i.dt, %bb.m ] ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !634, !noalias !629
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul i64 %i.du, -480
  %i.dx = getelementptr i8, ptr %i.dw, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = getelementptr [80 x i8], ptr %i.dx, i64 %i.dm
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.i.i.i.i.i.i.i.i.i.i

_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %bb.k ], [ %i.dy, %bb.n ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !635
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 232
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !638 ; 2 uses
  %.not.i.i28.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.10.084.i.i.i.i.i.i.i.i.i.i, %.sroa.17.085.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i28.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ec, ptr %.sroa.10.084.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !24
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.10.084.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.i.i.i.i.i.i.i.i.i.i
  %i.ee = ptrtoint ptr %.sroa.17.085.i.i.i.i.i.i.i.i.i.i to i64
  %i.ef = ptrtoint ptr %.sroa.061.083.i.i.i.i.i.i.i.i.i.i to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 6 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775800
  br i1 %i.eh, label %bb.q, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i29.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i29.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.ei = ashr exact i64 %i.eg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i30.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i.i30.i.i.i.i.i.i.i.i.i.i, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 1152921504606846975)
  %i.em = select i1 %i.ek, i64 1152921504606846975, i64 %i.el ; 3 uses
  %.not.i.i.i.i31.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.em, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i31.i.i.i.i.i.i.i.i.i.i)
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #16 ; 4 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.eg ; 2 uses
  store ptr %i.ec, ptr %i.ep, align 8, !tbaa !24
  %i.eq = icmp sgt i64 %i.eg, 0
  br i1 %i.eq, label %bb.r, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i32.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i29.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eo, ptr align 8 %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i32.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i32.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i29.i.i.i.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.not.i17.i.i.i33.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i17.i.i.i33.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i34.i.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i32.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.eg) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i34.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i34.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i32.i.i.i.i.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.em
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.et = load ptr, ptr %i.w, align 8, !tbaa !622
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ct
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !624 ; 2 uses
  %or.cond.i36.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ev, 0
  tail call void @llvm.assume(i1 %or.cond.i36.i.i.i.i.i.i.i.i.i.i)
  %i.ew = add nsw i32 %i.ev, -1
  %i.ex = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.ey = load ptr, ptr %i.x, align 8, !tbaa !625, !noalias !640 ; 2 uses
  %i.ez = load ptr, ptr %i.y, align 8, !tbaa !632, !noalias !640
  %i.fa = load ptr, ptr %i.z, align 8, !tbaa !633, !noalias !640
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = sdiv exact i64 %i.fd, 80
  %i.ff = add nsw i64 %i.fe, %i.ex                ; 5 uses
  %i.fg = icmp sgt i64 %i.ff, -1
  br i1 %i.fg, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.fh = icmp samesign ult i64 %i.ff, 6
  br i1 %i.fh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw [80 x i8], ptr %i.ey, i64 %i.ex
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit39.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.fj = udiv i64 %i.ff, 6
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.fk = xor i64 %i.ff, -1
  %i.fl = udiv i64 %i.fk, 6
  %i.fm = xor i64 %i.fl, -1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fn = phi i64 [ %i.fj, %bb.w ], [ %i.fm, %bb.x ] ; 2 uses
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !634, !noalias !640
  %.idx.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i = mul i64 %i.fn, -480
  %i.fq = getelementptr i8, ptr %i.fp, i64 %.idx.i.i.i.i.i37.i.i.i.i.i.i.i.i.i.i
  %i.fr = getelementptr [80 x i8], ptr %i.fq, i64 %i.ff
  br label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit39.i.i.i.i.i.i.i.i.i.i

_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit39.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.v
  %.0.i38.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fi, %bb.v ], [ %i.fr, %bb.y ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i38.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !635 ; 2 uses
  %.not.i.i40.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.10.084.i.i.i.i.i.i.i.i.i.i, %.sroa.17.085.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i40.i.i.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit39.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ft, ptr %.sroa.10.084.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !24
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.10.084.i.i.i.i.i.i.i.i.i.i, i64 8
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit39.i.i.i.i.i.i.i.i.i.i
  %i.fv = ptrtoint ptr %.sroa.17.085.i.i.i.i.i.i.i.i.i.i to i64
  %i.fw = ptrtoint ptr %.sroa.061.083.i.i.i.i.i.i.i.i.i.i to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 6 uses
  %i.fy = icmp eq i64 %i.fx, 9223372036854775800
  br i1 %i.fy, label %bb.ab, label %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.fz = ashr exact i64 %i.fx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i42.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fz, i64 1)
  %i.ga = add nsw i64 %.sroa.speculated.i.i.i.i42.i.i.i.i.i.i.i.i.i.i, %i.fz ; 2 uses
  %i.gb = icmp ult i64 %i.ga, %i.fz
  %i.gc = tail call i64 @llvm.umin.i64(i64 %i.ga, i64 1152921504606846975)
  %i.gd = select i1 %i.gb, i64 1152921504606846975, i64 %i.gc ; 3 uses
  %.not.i.i.i.i43.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.gd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i43.i.i.i.i.i.i.i.i.i.i)
  %i.ge = shl nuw nsw i64 %i.gd, 3
  %i.gf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ge) #16 ; 4 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fx ; 2 uses
  store ptr %i.ft, ptr %i.gg, align 8, !tbaa !24
  %i.gh = icmp sgt i64 %i.fx, 0
  br i1 %i.gh, label %bb.ac, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gf, ptr align 8 %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %_ZNKSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i41.i.i.i.i.i.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.not.i17.i.i.i45.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i17.i.i.i45.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46.i.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fx) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i44.i.i.i.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gd
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46.i.i.i.i.i.i.i.i.i.i, %bb.z, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i34.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.061.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.eo, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i34.i.i.i.i.i.i.i.i.i.i ], [ %i.gf, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.061.083.i.i.i.i.i.i.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.10.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ed, %bb.o ], [ %i.er, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i34.i.i.i.i.i.i.i.i.i.i ], [ %i.gi, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46.i.i.i.i.i.i.i.i.i.i ], [ %i.fu, %bb.z ] ; 2 uses
  %.sroa.17.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.17.085.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.es, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i34.i.i.i.i.i.i.i.i.i.i ], [ %i.gj, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i46.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.17.085.i.i.i.i.i.i.i.i.i.i, %bb.z ] ; 2 uses
  %.sroa.056.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.056.086.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.gk = icmp eq ptr %.sroa.056.0.i.i.i.i.i.i.i.i.i.i, %i.ay
  br i1 %i.gk, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.b
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.073.089.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.r
  br i1 %i.gm, label %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i, label %bb.b

_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.gn = add i64 %.03.i.i.i.i.i, 1               ; 2 uses
  %i.go = add nsw i64 %storemerge2.i.i.i.i.i, %i.c
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gn, %.0.val
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOSK_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !643

_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOSK_.exit: ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold18ComdatGroupSectionINS_6X86_64EED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold18ComdatGroupSectionINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold5ChunkINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !474  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4mold5ChunkINS_6X86_64EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !475
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #15, !inline_history !476
  br label %_ZN4mold5ChunkINS_6X86_64EED2Ev.exit

_ZN4mold5ChunkINS_6X86_64EED2Ev.exit:             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold18ComdatGroupSectionINS_6X86_64EED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold18ComdatGroupSectionINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15, !inline_history !644
  br label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4mold5ChunkINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !474  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4mold18ComdatGroupSectionINS_6X86_64EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !475
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #15, !inline_history !645
  br label %_ZN4mold18ComdatGroupSectionINS_6X86_64EED2Ev.exit

_ZN4mold18ComdatGroupSectionINS_6X86_64EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #15
  ret void
}

declare void @_ZN4mold18ComdatGroupSectionINS_6X86_64EE8copy_bufERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(14448)) unnamed_addr #3

declare void @_ZN4mold18ComdatGroupSectionINS_6X86_64EE11update_shdrERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(14448)) unnamed_addr #3

declare void @_ZN4mold7cleanupEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #14

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p2 _ZTSN4mold7CounterE", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !10, i64 16}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"_ZTSNSt12_Vector_baseIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p2 _ZTSN4mold5ChunkINS_6X86_64EEE", !11, i64 0}
!23 = !{!21, !22, i64 16}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN4mold5ChunkINS_6X86_64EEE", !12, i64 0}
!26 = !{!21, !22, i64 0}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE21internal_emplace_backIJRPNS4_10OutputEhdrIS6_EEEEENS1_15vector_iteratorISD_SA_EEDpOT_: argument 0"}
!29 = distinct !{!29, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE21internal_emplace_backIJRPNS4_10OutputEhdrIS6_EEEEENS1_15vector_iteratorISD_SA_EEDpOT_"}
!30 = distinct !{!30, !31, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPNS4_10OutputEhdrIS6_EEEEENS1_15vector_iteratorISD_SA_EEDpOT_: argument 0"}
!31 = distinct !{!31, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold5ChunkINS4_6X86_64EEESt14default_deleteIS7_EENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPNS4_10OutputEhdrIS6_EEEEENS1_15vector_iteratorISD_SA_EEDpOT_"}
!32 = !{!33, !260, i64 13824}
!33 = !{!"_ZTSN4mold7ContextINS_6X86_64EEE", !34, i64 0, !127, i64 3992, !132, i64 4024, !137, i64 4048, !17, i64 4072, !17, i64 4080, !45, i64 4088, !17, i64 4096, !142, i64 4104, !153, i64 4176, !154, i64 4192, !168, i64 12488, !175, i64 12560, !182, i64 12632, !189, i64 12704, !196, i64 12776, !203, i64 12848, !210, i64 12920, !217, i64 12992, !122, i64 13064, !224, i64 13088, !229, i64 13112, !234, i64 13136, !235, i64 13144, !240, i64 13168, !19, i64 13176, !45, i64 13184, !247, i64 13192, !250, i64 13216, !250, i64 13217, !251, i64 13220, !254, i64 13224, !247, i64 13800, !260, i64 13824, !261, i64 13832, !262, i64 13840, !263, i64 13848, !264, i64 13856, !265, i64 13864, !266, i64 13872, !267, i64 13880, !268, i64 13888, !269, i64 13896, !270, i64 13904, !271, i64 13912, !272, i64 13920, !273, i64 13928, !274, i64 13936, !275, i64 13944, !276, i64 13952, !277, i64 13960, !278, i64 13968, !279, i64 13976, !280, i64 13984, !281, i64 13992, !282, i64 14000, !283, i64 14008, !284, i64 14016, !285, i64 14024, !286, i64 14032, !286, i64 14040, !287, i64 14048, !288, i64 14056, !289, i64 14064, !290, i64 14072, !291, i64 14080, !292, i64 14088, !293, i64 14096, !294, i64 14104, !295, i64 14112, !300, i64 14128, !300, i64 14144, !300, i64 14160, !300, i64 14176, !300, i64 14192, !17, i64 14208, !17, i64 14216, !17, i64 14224, !75, i64 14232, !75, i64 14240, !75, i64 14248, !75, i64 14256, !75, i64 14264, !75, i64 14272, !75, i64 14280, !75, i64 14288, !75, i64 14296, !75, i64 14304, !75, i64 14312, !75, i64 14320, !75, i64 14328, !75, i64 14336, !75, i64 14344, !75, i64 14352, !75, i64 14360, !75, i64 14368, !75, i64 14376, !75, i64 14384, !75, i64 14392, !75, i64 14400, !75, i64 14408, !75, i64 14416, !75, i64 14424, !75, i64 14432, !302, i64 14440}
!34 = !{!"_ZTSN4mold7ContextINS_6X86_64EEUt_E", !35, i64 0, !36, i64 8, !42, i64 48, !43, i64 56, !43, i64 1336, !73, i64 2616, !74, i64 2620, !75, i64 2624, !75, i64 2632, !75, i64 2640, !76, i64 2648, !45, i64 2652, !45, i64 2653, !45, i64 2654, !45, i64 2655, !45, i64 2656, !45, i64 2657, !45, i64 2658, !45, i64 2659, !45, i64 2660, !45, i64 2661, !45, i64 2662, !45, i64 2663, !45, i64 2664, !45, i64 2665, !45, i64 2666, !45, i64 2667, !45, i64 2668, !45, i64 2669, !45, i64 2670, !45, i64 2671, !45, i64 2672, !45, i64 2673, !45, i64 2674, !45, i64 2675, !45, i64 2676, !45, i64 2677, !45, i64 2678, !45, i64 2679, !45, i64 2680, !45, i64 2681, !45, i64 2682, !45, i64 2683, !45, i64 2684, !45, i64 2685, !45, i64 2686, !45, i64 2687, !45, i64 2688, !45, i64 2689, !45, i64 2690, !45, i64 2691, !45, i64 2692, !45, i64 2693, !45, i64 2694, !45, i64 2695, !45, i64 2696, !45, i64 2697, !45, i64 2698, !45, i64 2699, !45, i64 2700, !45, i64 2701, !45, i64 2702, !45, i64 2703, !45, i64 2704, !45, i64 2705, !45, i64 2706, !45, i64 2707, !45, i64 2708, !45, i64 2709, !45, i64 2710, !45, i64 2711, !45, i64 2712, !45, i64 2713, !45, i64 2714, !45, i64 2715, !45, i64 2716, !45, i64 2717, !45, i64 2718, !45, i64 2719, !45, i64 2720, !45, i64 2721, !45, i64 2722, !45, i64 2723, !45, i64 2724, !45, i64 2725, !45, i64 2726, !45, i64 2727, !45, i64 2728, !45, i64 2729, !17, i64 2736, !17, i64 2744, !17, i64 2752, !17, i64 2760, !17, i64 2768, !17, i64 2776, !77, i64 2784, !81, i64 2800, !86, i64 2832, !86, i64 2848, !90, i64 2864, !90, i64 2896, !90, i64 2928, !90, i64 2960, !90, i64 2992, !90, i64 3024, !90, i64 3056, !90, i64 3088, !90, i64 3120, !90, i64 3152, !90, i64 3184, !90, i64 3216, !90, i64 3248, !90, i64 3280, !90, i64 3312, !90, i64 3344, !92, i64 3376, !93, i64 3392, !93, i64 3448, !100, i64 3504, !100, i64 3560, !100, i64 3616, !100, i64 3672, !102, i64 3728, !107, i64 3752, !107, i64 3776, !112, i64 3800, !117, i64 3824, !117, i64 3848, !117, i64 3872, !122, i64 3896, !122, i64 3920, !122, i64 3944, !5, i64 3968, !17, i64 3976, !17, i64 3984}
end_hunk_2
