Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 50
begin_hunk_0
@_ZGVZN4LIEF5MachO12BinaryParser19parse_load_commandsINS0_7details7MachO32EEENS_10ok_error_tEvE8ARCH_ERR = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN4LIEF5MachO12BinaryParser20parse_chained_importINS0_7details7MachO32EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamESA_E16MAX_BIND_ORDINAL = linkonce_odr hidden constant i32 16777215, comdat, align 4
@_ZZN4LIEF5MachO12BinaryParser15parse_fixup_segINS0_7details7MachO32EEENS_10ok_error_tERNS_10SpanStreamEjmjE7DPREFIX = linkonce_odr hidden constant [5 x i8] c"    \00", comdat, align 1
@_ZTVN4LIEF5MachO10ExportInfoE = external constant { [7 x ptr] }, align 8
@_ZTVN4LIEF5MachO6SymbolE = external constant { [14 x ptr] }, align 8
@.str.424 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E = private unnamed_addr constant [14 x i8] c"@       @ \08@@ ", align 1
@switch.table._ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_17LazyLoadDylibInfoE = private unnamed_addr constant [14 x i8] c"\08\08\04\04\04\08\08\08\08\08\08\08\08\08", align 8

@_ZN4LIEF5MachO12BinaryParserC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF5MachO12BinaryParserC2Ev
@_ZN4LIEF5MachO12BinaryParserD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4LIEF5MachO12BinaryParserD2Ev

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #2 section ".text.startup" comdat($_ZN3fmt3v1212format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 4294967300) i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.m = load i16, ptr %i.l, align 1, !tbaa !112  ; 6 uses
  %i.n = zext i16 %i.m to i32                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(552) %i.p) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %2, ptr %i.a, align 8, !tbaa !118
  %i.u = load i64, ptr %5, align 8                ; 6 uses
  %.not = icmp sgt i64 %i.u, -1
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = and i64 %i.u, 4611686018427387904
  %.not83 = icmp eq i64 %i.v, 0
  br i1 %.not83, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.w = icmp eq i16 %i.m, 12
  %.v = select i1 %i.w, i64 16777215, i64 65535
  %i.x = and i64 %i.u, %.v                        ; 3 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  store i32 %i.y, ptr %i.b, align 4, !tbaa !119
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !164 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !167
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !168 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %.not86 = icmp ult i64 %i.x, %i.ai
  br i1 %.not86, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !164 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !167
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !168
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  store i64 %i.as, ptr %i.c, align 8, !tbaa !118
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.at, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 3, ptr nonnull @.str, i64 37, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.x ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !175 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %1, ptr %i.aw, align 8, !tbaa !181
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 68
  store i32 %i.n, ptr %i.ax, align 4, !tbaa !186
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details33dyld_chained_ptr_arm64e_auth_bindE(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !164 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 160 ; 2 uses
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !175
  %i.bb = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !961 ; 3 uses
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.bb, ptr noundef nonnull align 8 dereferenceable(112) %i.ba) #26, !noalias !961
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 168 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !189 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 176 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !190
  %.not.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = ptrtoint ptr %i.bb to i64
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !192
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !189
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !193 ; 7 uses
  %i.bj = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i130 = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i130)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #27 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  %i.bv = ptrtoint ptr %i.bb to i64
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.bi, %i.bd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bw = add i64 %i.bj, -8
  %i.bx = sub i64 %i.bw, %i.bk                    ; 2 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.ca = shl i64 %n.vec, 3                       ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bi, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cd ; 2 uses
  %next.gep295 = getelementptr i8, ptr %i.bi, i64 %i.cd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.ce = getelementptr i8, ptr %next.gep295, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep295, align 8, !tbaa !192, !alias.scope !963
  %wide.load296 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !192, !alias.scope !963
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !962
  store <2 x i64> %wide.load296, ptr %i.cf, align 8, !tbaa !192, !alias.scope !962
  %18 = getelementptr i8, ptr %next.gep295, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep295, align 8, !tbaa !192, !alias.scope !963
  store <2 x ptr> splat (ptr null), ptr %18, align 8, !tbaa !192, !alias.scope !963
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !938

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader352

.lr.ph.i.i.i.i.preheader352:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader352, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader352 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader352 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.ch = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !192, !alias.scope !963
  store i64 %i.ch, ptr %.012.i.i.i.i, align 8, !tbaa !192, !alias.scope !962
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !192, !alias.scope !963
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i131 = icmp eq ptr %i.ci, %i.bd
  br i1 %.not.i.i.i.i131, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !939

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bt, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.cb, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cl = load ptr, ptr %i.be, align 8, !tbaa !190
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cn) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.i
  store ptr %i.bt, ptr %i.az, align 8, !tbaa !193
  store ptr %i.ck, ptr %i.bc, align 8, !tbaa !189
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.co, ptr %i.be, align 8, !tbaa !190
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.f
  %i.cp = load ptr, ptr %i.z, align 8, !tbaa !164
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !197
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !192 ; 6 uses
  %i.cu = load ptr, ptr %i.au, align 8, !tbaa !175 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !198
  store <2 x ptr> %i.cx, ptr %i.cw, align 8, !tbaa !198
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !199
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !199
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  store i32 %3, ptr %i.db, align 8, !tbaa !200
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store i64 %2, ptr %i.dc, align 8, !tbaa !201
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 88 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 96 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !204 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 104 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !205
  %.not.i.i90 = icmp eq ptr %i.df, %i.dh
  br i1 %.not.i.i90, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.ct, ptr %i.df, align 8, !tbaa !192
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.di, ptr %i.de, align 8, !tbaa !204
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !206 ; 4 uses
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 5 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775800
  br i1 %i.dn, label %bb.l, label %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.do = ashr exact i64 %i.dm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 1152921504606846975)
  %i.ds = select i1 %i.dq, i64 1152921504606846975, i64 %i.dr ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ds, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dt = shl nuw nsw i64 %i.ds, 3
  %i.du = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #27 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.dm ; 2 uses
  store ptr %i.ct, ptr %i.dv, align 8, !tbaa !192
  %i.dw = icmp sgt i64 %i.dm, 0
  br i1 %i.dw, label %bb.m, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr align 8 %i.dj, i64 %i.dm, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.dy = load ptr, ptr %i.dg, align 8, !tbaa !205
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.dl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.ea) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.du, ptr %i.dd, align 8, !tbaa !206
  store ptr %i.dx, ptr %i.de, align 8, !tbaa !204
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.eb, ptr %i.dg, align 8, !tbaa !205
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.j, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.ec = load ptr, ptr %i.cs, align 8, !tbaa !192
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !207 ; 3 uses
  %.not87 = icmp eq ptr %i.ee, null
  %i.ef = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %.not87, label %.critedge, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !117
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.ej(ptr noundef nonnull align 8 dereferenceable(56) %i.ee) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.el = tail call noundef i64 @_ZNK4LIEF5MachO7details23dyld_chained_ptr_arm64e20sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  store i64 %i.el, ptr %i.d, align 8, !tbaa !118
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSC_SE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.em, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 1, ptr nonnull @.str.1, i64 40, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eEE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.p

.critedge:                                        ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.en = tail call noundef i64 @_ZNK4LIEF5MachO7details23dyld_chained_ptr_arm64e20sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  store i64 %i.en, ptr %i.e, align 8, !tbaa !118
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.eo, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 1, ptr nonnull @.str.2, i64 54, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eEE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.ep = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.eq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 4, ptr nonnull @.str.3, i64 40, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge, %bb.d
  %.sroa.0242.0 = phi i64 [ 2, %.critedge ], [ 0, %bb.o ], [ 1, %bb.d ]
  %.sroa.5.0 = phi i64 [ 0, %.critedge ], [ 4294967296, %bb.o ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bc

bb.q:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.er = and i64 %i.u, 4294967295
  %i.es = add i64 %i.er, %i.t
  store i64 %i.es, ptr %i.f, align 8, !tbaa !118
  %i.et = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !964 ; 11 uses
  tail call void @_ZN4LIEF5MachO15RelocationFixupC1ENS0_23DYLD_CHAINED_PTR_FORMATEm(ptr noundef nonnull align 8 dereferenceable(88) %i.et, i32 noundef %i.n, i64 noundef %i.t) #26, !noalias !964
  tail call void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details35dyld_chained_ptr_arm64e_auth_rebaseE(ptr noundef nonnull align 8 dereferenceable(88) %i.et, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %2, ptr %i.eu, align 8, !tbaa !209
  %i.ev = load ptr, ptr %i.o, align 8, !tbaa !115 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 108
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !213
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 36
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !216
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store ptr %1, ptr %i.ez, align 8, !tbaa !217
  %switch.tableidx = add i16 %i.m, -1             ; 2 uses
  %i.fa = icmp ult i16 %switch.tableidx, 14
  br i1 %i.fa, label %switch.lookup, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

switch.lookup:                                    ; preds = %bb.q
  %i.fb = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E, i64 %i.fb
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %bb.q, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.q ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i8 %.0.i, ptr %i.fc, align 8, !tbaa !218
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  store i32 %3, ptr %i.fd, align 8, !tbaa !221
  %i.fe = tail call noundef ptr @_ZNK4LIEF5MachO6Binary28section_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ev, i64 noundef %2) #26 ; 2 uses
  %.not85 = icmp eq ptr %i.fe, null
  br i1 %.not85, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !222
  br label %bb.t

bb.s:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.fg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 4, ptr nonnull @.str.4, i64 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !223 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.fl = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.u ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.u ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !118
  %i.fo = icmp ult i64 %i.fn, %i.fl               ; 2 uses
  %.19.i.i.i = select i1 %i.fo, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.fo, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.u, !llvm.loop !0

_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.u
  %i.fp = icmp eq ptr %.19.i.i.i, %i.fk
  br i1 %i.fp, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !118
  %i.fs = icmp ult i64 %i.fl, %i.fr
  br i1 %i.fs, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !226
  %i.fv = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !227
  br label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.t, %bb.v, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.fw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fy, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 1, ptr nonnull @.str.5, i64 26, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eEE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !230 ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !231
  %.not.i.i91 = icmp eq ptr %i.gb, %i.gd
  br i1 %.not.i.i91, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.ge = ptrtoint ptr %i.et to i64
  store i64 %i.ge, ptr %i.gb, align 8, !tbaa !233
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %i.gf, ptr %i.ga, align 8, !tbaa !230
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit

bb.x:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !234 ; 7 uses
  %i.gh = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64               ; 3 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775800
  br i1 %i.gk, label %bb.y, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %i.gl = ashr exact i64 %i.gj, 3                 ; 3 uses
  %.sroa.speculated.i.i132 = call i64 @llvm.umax.i64(i64 %i.gl, i64 1)
  %i.gm = add nsw i64 %.sroa.speculated.i.i132, %i.gl ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gl
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 1152921504606846975)
  %i.gp = select i1 %i.gn, i64 1152921504606846975, i64 %i.go ; 3 uses
  %.not.i.i133 = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i133)
  %i.gq = shl nuw nsw i64 %i.gp, 3
  %i.gr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #27 ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gj
  %i.gt = ptrtoint ptr %i.et to i64
  store i64 %i.gt, ptr %i.gs, align 8, !tbaa !233
  %.not10.i.i.i.i134 = icmp eq ptr %i.gg, %i.gb
  br i1 %.not10.i.i.i.i134, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i135.preheader

.lr.ph.i.i.i.i135.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.gu = add i64 %i.gh, -8
  %i.gv = sub i64 %i.gu, %i.gi                    ; 2 uses
  %i.gw = lshr i64 %i.gv, 3
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check299 = icmp ult i64 %i.gv, 24
  br i1 %min.iters.check299, label %.lr.ph.i.i.i.i135.preheader350, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph.i.i.i.i135.preheader
  %n.vec301 = and i64 %i.gx, 4611686018427387900  ; 3 uses
  %i.gy = shl i64 %n.vec301, 3                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gr, i64 %i.gy  ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gg, i64 %i.gy
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next308, %vector.body302 ] ; 2 uses
  %i.hb = shl i64 %index303, 3                    ; 2 uses
  %next.gep304 = getelementptr i8, ptr %i.gr, i64 %i.hb ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.gg, i64 %i.hb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.hc = getelementptr i8, ptr %next.gep305, i64 16
  %wide.load306 = load <2 x i64>, ptr %next.gep305, align 8, !tbaa !233, !alias.scope !966
  %wide.load307 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !233, !alias.scope !966
  %i.hd = getelementptr i8, ptr %next.gep304, i64 16
  store <2 x i64> %wide.load306, ptr %next.gep304, align 8, !tbaa !233, !alias.scope !965
  store <2 x i64> %wide.load307, ptr %i.hd, align 8, !tbaa !233, !alias.scope !965
  %19 = getelementptr i8, ptr %next.gep305, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep305, align 8, !tbaa !233, !alias.scope !966
  store <2 x ptr> splat (ptr null), ptr %19, align 8, !tbaa !233, !alias.scope !966
  %index.next308 = add nuw i64 %index303, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.he, label %middle.block309, label %vector.body302, !llvm.loop !945

middle.block309:                                  ; preds = %vector.body302
  %cmp.n310 = icmp eq i64 %i.gx, %n.vec301
  br i1 %cmp.n310, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i135.preheader350

.lr.ph.i.i.i.i135.preheader350:                   ; preds = %.lr.ph.i.i.i.i135.preheader, %middle.block309
  %.012.i.i.i.i136.ph = phi ptr [ %i.gr, %.lr.ph.i.i.i.i135.preheader ], [ %i.gz, %middle.block309 ]
  %.0911.i.i.i.i137.ph = phi ptr [ %i.gg, %.lr.ph.i.i.i.i135.preheader ], [ %i.ha, %middle.block309 ]
  br label %.lr.ph.i.i.i.i135

.lr.ph.i.i.i.i135:                                ; preds = %.lr.ph.i.i.i.i135.preheader350, %.lr.ph.i.i.i.i135
  %.012.i.i.i.i136 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i135 ], [ %.012.i.i.i.i136.ph, %.lr.ph.i.i.i.i135.preheader350 ] ; 2 uses
  %.0911.i.i.i.i137 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i135 ], [ %.0911.i.i.i.i137.ph, %.lr.ph.i.i.i.i135.preheader350 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.hf = load i64, ptr %.0911.i.i.i.i137, align 8, !tbaa !233, !alias.scope !966
  store i64 %i.hf, ptr %.012.i.i.i.i136, align 8, !tbaa !233, !alias.scope !965
  store ptr null, ptr %.0911.i.i.i.i137, align 8, !tbaa !233, !alias.scope !966
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i137, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i136, i64 8 ; 2 uses
  %.not.i.i.i.i138 = icmp eq ptr %i.hg, %i.gb
  br i1 %.not.i.i.i.i138, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i135, !llvm.loop !946

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i135, %middle.block309, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i139 = phi ptr [ %i.gr, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.gz, %middle.block309 ], [ %i.hh, %.lr.ph.i.i.i.i135 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i139, i64 8
  %.not.i23.i146 = icmp eq ptr %i.gg, null
  br i1 %.not.i23.i146, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.hj = load ptr, ptr %i.gc, align 8, !tbaa !231
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.hk, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.hl) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.z
  store ptr %i.gr, ptr %i.fz, align 8, !tbaa !234
  store ptr %i.hi, ptr %i.ga, align 8, !tbaa !230
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.hm, ptr %i.gc, align 8, !tbaa !231
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.w, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.bc

bb.aa:                                            ; preds = %bb.a
  %.not79 = icmp samesign ult i64 %i.u, 4611686018427387904
  br i1 %.not79, label %bb.as, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.hn = icmp eq i16 %i.m, 12                    ; 2 uses
  %.v246 = select i1 %i.hn, i64 16777215, i64 65535
  %i.ho = and i64 %i.u, %.v246                    ; 3 uses
  %i.hp = trunc nuw nsw i64 %i.ho to i32
  store i32 %i.hp, ptr %i.g, align 4, !tbaa !119
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !164 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 136
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 144
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !167
  %i.hv = load ptr, ptr %i.hs, align 8, !tbaa !168 ; 2 uses
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 3
  %.not81 = icmp ult i64 %i.ho, %i.hz
  br i1 %.not81, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ia = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.ib = load ptr, ptr %i.hq, align 8, !tbaa !164 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 136
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 144
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !167
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !168
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = ashr exact i64 %i.ii, 3
  store i64 %i.ij, ptr %i.h, align 8, !tbaa !118
  %i.ik = load ptr, ptr %i.ia, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ik, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 3, ptr nonnull @.str, i64 37, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br label %bb.ar

bb.ad:                                            ; preds = %bb.ab
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ho ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !175 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %1, ptr %i.in, align 8, !tbaa !181
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 68
  store i32 %i.n, ptr %i.io, align 4, !tbaa !186
  br i1 %i.hn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details30dyld_chained_ptr_arm64e_bind24E(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details28dyld_chained_ptr_arm64e_bindE(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ip = load ptr, ptr %i.hq, align 8, !tbaa !164 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 160 ; 2 uses
  %i.ir = load ptr, ptr %i.il, align 8, !tbaa !175
  %i.is = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !967 ; 3 uses
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.is, ptr noundef nonnull align 8 dereferenceable(112) %i.ir) #26, !noalias !967
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 168 ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !189 ; 6 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 176 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !190
  %.not.i.i94 = icmp eq ptr %i.iu, %i.iw
  br i1 %.not.i.i94, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ix = ptrtoint ptr %i.is to i64
  store i64 %i.ix, ptr %i.iu, align 8, !tbaa !192
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store ptr %i.iy, ptr %i.it, align 8, !tbaa !189
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit98

bb.ai:                                            ; preds = %bb.ag
  %i.iz = load ptr, ptr %i.iq, align 8, !tbaa !193 ; 7 uses
  %i.ja = ptrtoint ptr %i.iu to i64               ; 2 uses
  %i.jb = ptrtoint ptr %i.iz to i64               ; 3 uses
  %i.jc = sub i64 %i.ja, %i.jb                    ; 3 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775800
  br i1 %i.jd, label %bb.aj, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147: ; preds = %bb.ai
  %i.je = ashr exact i64 %i.jc, 3                 ; 3 uses
  %.sroa.speculated.i.i148 = tail call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i148, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = tail call i64 @llvm.umin.i64(i64 %i.jf, i64 1152921504606846975)
  %i.ji = select i1 %i.jg, i64 1152921504606846975, i64 %i.jh ; 3 uses
  %.not.i.i149 = icmp ne i64 %i.ji, 0
  tail call void @llvm.assume(i1 %.not.i.i149)
  %i.jj = shl nuw nsw i64 %i.ji, 3
  %i.jk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #27 ; 7 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jc
  %i.jm = ptrtoint ptr %i.is to i64
  store i64 %i.jm, ptr %i.jl, align 8, !tbaa !192
  %.not10.i.i.i.i150 = icmp eq ptr %i.iz, %i.iu
  br i1 %.not10.i.i.i.i150, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162, label %.lr.ph.i.i.i.i151.preheader

.lr.ph.i.i.i.i151.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147
  %i.jn = add i64 %i.ja, -8
  %i.jo = sub i64 %i.jn, %i.jb                    ; 2 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check314 = icmp ult i64 %i.jo, 24
  br i1 %min.iters.check314, label %.lr.ph.i.i.i.i151.preheader348, label %vector.ph315

vector.ph315:                                     ; preds = %.lr.ph.i.i.i.i151.preheader
  %n.vec316 = and i64 %i.jq, 4611686018427387900  ; 3 uses
  %i.jr = shl i64 %n.vec316, 3                    ; 2 uses
  %i.js = getelementptr i8, ptr %i.jk, i64 %i.jr  ; 2 uses
  %i.jt = getelementptr i8, ptr %i.iz, i64 %i.jr
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next323, %vector.body317 ] ; 2 uses
  %i.ju = shl i64 %index318, 3                    ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.jk, i64 %i.ju ; 2 uses
  %next.gep320 = getelementptr i8, ptr %i.iz, i64 %i.ju ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.jv = getelementptr i8, ptr %next.gep320, i64 16
  %wide.load321 = load <2 x i64>, ptr %next.gep320, align 8, !tbaa !192, !alias.scope !969
  %wide.load322 = load <2 x i64>, ptr %i.jv, align 8, !tbaa !192, !alias.scope !969
  %i.jw = getelementptr i8, ptr %next.gep319, i64 16
  store <2 x i64> %wide.load321, ptr %next.gep319, align 8, !tbaa !192, !alias.scope !968
  store <2 x i64> %wide.load322, ptr %i.jw, align 8, !tbaa !192, !alias.scope !968
  %20 = getelementptr i8, ptr %next.gep320, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep320, align 8, !tbaa !192, !alias.scope !969
  store <2 x ptr> splat (ptr null), ptr %20, align 8, !tbaa !192, !alias.scope !969
  %index.next323 = add nuw i64 %index318, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next323, %n.vec316
  br i1 %i.jx, label %middle.block324, label %vector.body317, !llvm.loop !952

middle.block324:                                  ; preds = %vector.body317
  %cmp.n325 = icmp eq i64 %i.jq, %n.vec316
  br i1 %cmp.n325, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162, label %.lr.ph.i.i.i.i151.preheader348

.lr.ph.i.i.i.i151.preheader348:                   ; preds = %.lr.ph.i.i.i.i151.preheader, %middle.block324
  %.012.i.i.i.i152.ph = phi ptr [ %i.jk, %.lr.ph.i.i.i.i151.preheader ], [ %i.js, %middle.block324 ]
  %.0911.i.i.i.i153.ph = phi ptr [ %i.iz, %.lr.ph.i.i.i.i151.preheader ], [ %i.jt, %middle.block324 ]
  br label %.lr.ph.i.i.i.i151

.lr.ph.i.i.i.i151:                                ; preds = %.lr.ph.i.i.i.i151.preheader348, %.lr.ph.i.i.i.i151
  %.012.i.i.i.i152 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i151 ], [ %.012.i.i.i.i152.ph, %.lr.ph.i.i.i.i151.preheader348 ] ; 2 uses
  %.0911.i.i.i.i153 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i151 ], [ %.0911.i.i.i.i153.ph, %.lr.ph.i.i.i.i151.preheader348 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.jy = load i64, ptr %.0911.i.i.i.i153, align 8, !tbaa !192, !alias.scope !969
  store i64 %i.jy, ptr %.012.i.i.i.i152, align 8, !tbaa !192, !alias.scope !968
  store ptr null, ptr %.0911.i.i.i.i153, align 8, !tbaa !192, !alias.scope !969
  %i.jz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i153, i64 8 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i152, i64 8 ; 2 uses
  %.not.i.i.i.i154 = icmp eq ptr %i.jz, %i.iu
  br i1 %.not.i.i.i.i154, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162, label %.lr.ph.i.i.i.i151, !llvm.loop !953

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162: ; preds = %.lr.ph.i.i.i.i151, %middle.block324, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147
  %.0.lcssa.i.i.i.i156 = phi ptr [ %i.jk, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i147 ], [ %i.js, %middle.block324 ], [ %i.ka, %.lr.ph.i.i.i.i151 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i156, i64 8
  %.not.i23.i164 = icmp eq ptr %i.iz, null
  br i1 %.not.i23.i164, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit165, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162
  %i.kc = load ptr, ptr %i.iv, align 8, !tbaa !190
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.kd, %i.jb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.ke) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit165

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit165: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i162, %bb.ak
  store ptr %i.jk, ptr %i.iq, align 8, !tbaa !193
  store ptr %i.kb, ptr %i.it, align 8, !tbaa !189
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ji
  store ptr %i.kf, ptr %i.iv, align 8, !tbaa !190
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit98

_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit98: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit165, %bb.ah
  %i.kg = load ptr, ptr %i.hq, align 8, !tbaa !164
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 168
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !197
  %i.kj = getelementptr inbounds i8, ptr %i.ki, i64 -8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !192 ; 6 uses
  %i.kl = load ptr, ptr %i.il, align 8, !tbaa !175 ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.ko = load <2 x ptr>, ptr %i.km, align 8, !tbaa !198
  store <2 x ptr> %i.ko, ptr %i.kn, align 8, !tbaa !198
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !199
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 48
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !199
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kk, i64 72
  store i32 %3, ptr %i.ks, align 8, !tbaa !200
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  store i64 %2, ptr %i.kt, align 8, !tbaa !201
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 88 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 96 ; 3 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !204 ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kl, i64 104 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !205
  %.not.i.i99 = icmp eq ptr %i.kw, %i.ky
  br i1 %.not.i.i99, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit98
  store ptr %i.kk, ptr %i.kw, align 8, !tbaa !192
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr %i.kz, ptr %i.kv, align 8, !tbaa !204
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit106

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit98
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !206 ; 4 uses
  %i.lb = ptrtoint ptr %i.kw to i64
  %i.lc = ptrtoint ptr %i.la to i64               ; 2 uses
  %i.ld = sub i64 %i.lb, %i.lc                    ; 5 uses
  %i.le = icmp eq i64 %i.ld, 9223372036854775800
  br i1 %i.le, label %bb.an, label %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i100

bb.an:                                            ; preds = %bb.am
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i100: ; preds = %bb.am
  %i.lf = ashr exact i64 %i.ld, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i101 = tail call i64 @llvm.umax.i64(i64 %i.lf, i64 1)
  %i.lg = add nsw i64 %.sroa.speculated.i.i.i.i101, %i.lf ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.lf
  %i.li = tail call i64 @llvm.umin.i64(i64 %i.lg, i64 1152921504606846975)
  %i.lj = select i1 %i.lh, i64 1152921504606846975, i64 %i.li ; 3 uses
  %.not.i.i.i.i102 = icmp ne i64 %i.lj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i102)
  %i.lk = shl nuw nsw i64 %i.lj, 3
  %i.ll = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #27 ; 4 uses
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.ld ; 2 uses
  store ptr %i.kk, ptr %i.lm, align 8, !tbaa !192
  %i.ln = icmp sgt i64 %i.ld, 0
  br i1 %i.ln, label %bb.ao, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i103

bb.ao:                                            ; preds = %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i100
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr align 8 %i.la, i64 %i.ld, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i103

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i103: ; preds = %bb.ao, %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i100
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.not.i17.i.i.i104 = icmp eq ptr %i.la, null
  br i1 %.not.i17.i.i.i104, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i105, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i103
  %i.lp = load ptr, ptr %i.kx, align 8, !tbaa !205
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = sub i64 %i.lq, %i.lc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.lr) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i105

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i105: ; preds = %bb.ap, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i103
  store ptr %i.ll, ptr %i.ku, align 8, !tbaa !206
  store ptr %i.lo, ptr %i.kv, align 8, !tbaa !204
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lj
  store ptr %i.ls, ptr %i.kx, align 8, !tbaa !205
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit106

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit106: ; preds = %bb.al, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i105
  %i.lt = load ptr, ptr %i.kj, align 8, !tbaa !192
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !207 ; 3 uses
  %.not82 = icmp eq ptr %i.lv, null
  %i.lw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %.not82, label %.critedge89, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit106
  %i.ly = load ptr, ptr %i.lv, align 8, !tbaa !117
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.ma(ptr noundef nonnull align 8 dereferenceable(56) %i.lv) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.mc = tail call noundef i64 @_ZNK4LIEF5MachO7details23dyld_chained_ptr_arm64e20sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  store i64 %i.mc, ptr %i.i, align 8, !tbaa !118
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSC_SE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.md, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str.1, i64 40, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eEE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.mb, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.ar

.critedge89:                                      ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  %i.me = tail call noundef i64 @_ZNK4LIEF5MachO7details23dyld_chained_ptr_arm64e20sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  store i64 %i.me, ptr %i.j, align 8, !tbaa !118
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.mf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.2, i64 54, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eEE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %i.mg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.mh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.3, i64 40, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge89, %bb.ac
  %.sroa.0242.1 = phi i64 [ 2, %.critedge89 ], [ 0, %bb.aq ], [ 1, %bb.ac ]
  %.sroa.5.1 = phi i64 [ 0, %.critedge89 ], [ 4294967296, %bb.aq ], [ 0, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %bb.bc

bb.as:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  %i.mi = icmp eq i16 %i.m, 2
  %i.mj = tail call noundef i64 @_ZNK4LIEF5MachO7details23dyld_chained_ptr_arm64e13unpack_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.mk = select i1 %i.mi, i64 0, i64 %i.t
  %i.ml = add i64 %i.mj, %i.mk
  store i64 %i.ml, ptr %i.k, align 8, !tbaa !118
  %i.mm = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !970 ; 11 uses
  tail call void @_ZN4LIEF5MachO15RelocationFixupC1ENS0_23DYLD_CHAINED_PTR_FORMATEm(ptr noundef nonnull align 8 dereferenceable(88) %i.mm, i32 noundef %i.n, i64 noundef %i.t) #26, !noalias !970
  tail call void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details30dyld_chained_ptr_arm64e_rebaseE(ptr noundef nonnull align 8 dereferenceable(88) %i.mm, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store i64 %2, ptr %i.mn, align 8, !tbaa !209
  %i.mo = load ptr, ptr %i.o, align 8, !tbaa !115 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 108
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !213
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 36
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !216
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  store ptr %1, ptr %i.ms, align 8, !tbaa !217
  %switch.tableidx343 = add i16 %i.m, -1          ; 2 uses
  %i.mt = icmp ult i16 %switch.tableidx343, 14
  br i1 %i.mt, label %switch.lookup344, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit108

switch.lookup344:                                 ; preds = %bb.as
  %i.mu = zext nneg i16 %switch.tableidx343 to i64
  %switch.gep345 = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E, i64 %i.mu
  %switch.load346 = load i8, ptr %switch.gep345, align 1
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit108

_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit108: ; preds = %bb.as, %switch.lookup344
  %.0.i107 = phi i8 [ %switch.load346, %switch.lookup344 ], [ 0, %bb.as ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i8 %.0.i107, ptr %i.mv, align 8, !tbaa !218
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mm, i64 72
  store i32 %3, ptr %i.mw, align 8, !tbaa !221
  %i.mx = tail call noundef ptr @_ZNK4LIEF5MachO6Binary28section_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.mo, i64 noundef %2) #26 ; 2 uses
  %.not80 = icmp eq ptr %i.mx, null
  br i1 %.not80, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit108
  %i.my = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  store ptr %i.mx, ptr %i.my, align 8, !tbaa !222
  br label %bb.av

bb.au:                                            ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit108
  %i.mz = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.na, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.4, i64 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !223 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not10.i.i.i109 = icmp eq ptr %i.nc, null
  br i1 %.not10.i.i.i109, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121.thread, label %.lr.ph.i.i.i110

.lr.ph.i.i.i110:                                  ; preds = %bb.av
  %i.ne = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph.i.i.i110
  %.012.i.i.i111 = phi ptr [ %i.nc, %.lr.ph.i.i.i110 ], [ %.1.i.i.i116, %bb.aw ] ; 3 uses
  %.0811.i.i.i112 = phi ptr [ %i.nd, %.lr.ph.i.i.i110 ], [ %.19.i.i.i113, %bb.aw ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.012.i.i.i111, i64 32
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !118
  %i.nh = icmp ult i64 %i.ng, %i.ne               ; 2 uses
  %.19.i.i.i113 = select i1 %i.nh, ptr %.0811.i.i.i112, ptr %.012.i.i.i111 ; 4 uses
  %.1.in.v.i.i.i114 = select i1 %i.nh, i64 24, i64 16
  %.1.in.i.i.i115 = getelementptr inbounds nuw i8, ptr %.012.i.i.i111, i64 %.1.in.v.i.i.i114
  %.1.i.i.i116 = load ptr, ptr %.1.in.i.i.i115, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %.1.i.i.i116, null
  br i1 %.not.i.i.i117, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i118, label %bb.aw, !llvm.loop !0

_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i118: ; preds = %bb.aw
  %i.ni = icmp eq ptr %.19.i.i.i113, %i.nd
  br i1 %i.ni, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121.thread, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i118
  %i.nj = getelementptr inbounds nuw i8, ptr %.19.i.i.i113, i64 32
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !118
  %i.nl = icmp ult i64 %i.ne, %i.nk
  br i1 %i.nl, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121.thread, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121
  %i.nm = getelementptr inbounds nuw i8, ptr %.19.i.i.i113, i64 40
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !226
  %i.no = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  store ptr %i.nn, ptr %i.no, align 8, !tbaa !227
  br label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121.thread

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i118, %bb.av, %bb.ax, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121
  %i.np = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.nr = load ptr, ptr %i.np, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.nr, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 1, ptr nonnull @.str.5, i64 26, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_23dyld_chained_ptr_arm64eEE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.nq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !230 ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !231
  %.not.i.i122 = icmp eq ptr %i.nu, %i.nw
  br i1 %.not.i.i122, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121.thread
  %i.nx = ptrtoint ptr %i.mm to i64
  store i64 %i.nx, ptr %i.nu, align 8, !tbaa !233
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store ptr %i.ny, ptr %i.nt, align 8, !tbaa !230
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit129

bb.az:                                            ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit121.thread
  %i.nz = load ptr, ptr %i.ns, align 8, !tbaa !234 ; 7 uses
  %i.oa = ptrtoint ptr %i.nu to i64               ; 2 uses
  %i.ob = ptrtoint ptr %i.nz to i64               ; 3 uses
  %i.oc = sub i64 %i.oa, %i.ob                    ; 3 uses
  %i.od = icmp eq i64 %i.oc, 9223372036854775800
  br i1 %i.od, label %bb.ba, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i166

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i166: ; preds = %bb.az
  %i.oe = ashr exact i64 %i.oc, 3                 ; 3 uses
  %.sroa.speculated.i.i167 = call i64 @llvm.umax.i64(i64 %i.oe, i64 1)
  %i.of = add nsw i64 %.sroa.speculated.i.i167, %i.oe ; 2 uses
  %i.og = icmp ult i64 %i.of, %i.oe
  %i.oh = call i64 @llvm.umin.i64(i64 %i.of, i64 1152921504606846975)
  %i.oi = select i1 %i.og, i64 1152921504606846975, i64 %i.oh ; 3 uses
  %.not.i.i168 = icmp ne i64 %i.oi, 0
  call void @llvm.assume(i1 %.not.i.i168)
  %i.oj = shl nuw nsw i64 %i.oi, 3
  %i.ok = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oj) #27 ; 7 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oc
  %i.om = ptrtoint ptr %i.mm to i64
  store i64 %i.om, ptr %i.ol, align 8, !tbaa !233
  %.not10.i.i.i.i169 = icmp eq ptr %i.nz, %i.nu
  br i1 %.not10.i.i.i.i169, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i181, label %.lr.ph.i.i.i.i170.preheader

.lr.ph.i.i.i.i170.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i166
  %i.on = add i64 %i.oa, -8
  %i.oo = sub i64 %i.on, %i.ob                    ; 2 uses
  %i.op = lshr i64 %i.oo, 3
  %i.oq = add nuw nsw i64 %i.op, 1                ; 2 uses
  %min.iters.check329 = icmp ult i64 %i.oo, 24
  br i1 %min.iters.check329, label %.lr.ph.i.i.i.i170.preheader347, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph.i.i.i.i170.preheader
  %n.vec331 = and i64 %i.oq, 4611686018427387900  ; 3 uses
  %i.or = shl i64 %n.vec331, 3                    ; 2 uses
  %i.os = getelementptr i8, ptr %i.ok, i64 %i.or  ; 2 uses
  %i.ot = getelementptr i8, ptr %i.nz, i64 %i.or
  br label %vector.body332

vector.body332:                                   ; preds = %vector.body332, %vector.ph330
  %index333 = phi i64 [ 0, %vector.ph330 ], [ %index.next338, %vector.body332 ] ; 2 uses
  %i.ou = shl i64 %index333, 3                    ; 2 uses
  %next.gep334 = getelementptr i8, ptr %i.ok, i64 %i.ou ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.nz, i64 %i.ou ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.ov = getelementptr i8, ptr %next.gep335, i64 16
  %wide.load336 = load <2 x i64>, ptr %next.gep335, align 8, !tbaa !233, !alias.scope !972
  %wide.load337 = load <2 x i64>, ptr %i.ov, align 8, !tbaa !233, !alias.scope !972
  %i.ow = getelementptr i8, ptr %next.gep334, i64 16
  store <2 x i64> %wide.load336, ptr %next.gep334, align 8, !tbaa !233, !alias.scope !971
  store <2 x i64> %wide.load337, ptr %i.ow, align 8, !tbaa !233, !alias.scope !971
  %21 = getelementptr i8, ptr %next.gep335, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep335, align 8, !tbaa !233, !alias.scope !972
  store <2 x ptr> splat (ptr null), ptr %21, align 8, !tbaa !233, !alias.scope !972
  %index.next338 = add nuw i64 %index333, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next338, %n.vec331
  br i1 %i.ox, label %middle.block339, label %vector.body332, !llvm.loop !959

middle.block339:                                  ; preds = %vector.body332
  %cmp.n340 = icmp eq i64 %i.oq, %n.vec331
  br i1 %cmp.n340, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i181, label %.lr.ph.i.i.i.i170.preheader347

.lr.ph.i.i.i.i170.preheader347:                   ; preds = %.lr.ph.i.i.i.i170.preheader, %middle.block339
  %.012.i.i.i.i171.ph = phi ptr [ %i.ok, %.lr.ph.i.i.i.i170.preheader ], [ %i.os, %middle.block339 ]
  %.0911.i.i.i.i172.ph = phi ptr [ %i.nz, %.lr.ph.i.i.i.i170.preheader ], [ %i.ot, %middle.block339 ]
  br label %.lr.ph.i.i.i.i170

.lr.ph.i.i.i.i170:                                ; preds = %.lr.ph.i.i.i.i170.preheader347, %.lr.ph.i.i.i.i170
  %.012.i.i.i.i171 = phi ptr [ %i.pa, %.lr.ph.i.i.i.i170 ], [ %.012.i.i.i.i171.ph, %.lr.ph.i.i.i.i170.preheader347 ] ; 2 uses
  %.0911.i.i.i.i172 = phi ptr [ %i.oz, %.lr.ph.i.i.i.i170 ], [ %.0911.i.i.i.i172.ph, %.lr.ph.i.i.i.i170.preheader347 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.oy = load i64, ptr %.0911.i.i.i.i172, align 8, !tbaa !233, !alias.scope !972
  store i64 %i.oy, ptr %.012.i.i.i.i171, align 8, !tbaa !233, !alias.scope !971
  store ptr null, ptr %.0911.i.i.i.i172, align 8, !tbaa !233, !alias.scope !972
  %i.oz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i172, i64 8 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i171, i64 8 ; 2 uses
  %.not.i.i.i.i173 = icmp eq ptr %i.oz, %i.nu
  br i1 %.not.i.i.i.i173, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i181, label %.lr.ph.i.i.i.i170, !llvm.loop !960

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i181: ; preds = %.lr.ph.i.i.i.i170, %middle.block339, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i166
  %.0.lcssa.i.i.i.i175 = phi ptr [ %i.ok, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i166 ], [ %i.os, %middle.block339 ], [ %i.pa, %.lr.ph.i.i.i.i170 ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i175, i64 8
  %.not.i23.i183 = icmp eq ptr %i.nz, null
  br i1 %.not.i23.i183, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit184, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i181
  %i.pc = load ptr, ptr %i.nv, align 8, !tbaa !231
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = sub i64 %i.pd, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.pe) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit184

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit184: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i181, %bb.bb
  store ptr %i.ok, ptr %i.ns, align 8, !tbaa !234
  store ptr %i.pb, ptr %i.nt, align 8, !tbaa !230
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.ok, i64 %i.oi
  store ptr %i.pf, ptr %i.nv, align 8, !tbaa !231
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit129

_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit129: ; preds = %bb.ay, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit129, %bb.ar, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit, %bb.p
  %.sroa.0242.2 = phi i64 [ 0, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit129 ], [ %.sroa.0242.1, %bb.ar ], [ 0, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.0242.0, %bb.p ]
  %.sroa.5.2 = phi i64 [ 4294967296, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit129 ], [ %.sroa.5.1, %bb.ar ], [ 4294967296, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.5.0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.sroa.0242.0.insert.insert = or i64 %.sroa.5.2, %.sroa.0242.2
  ret i64 %.sroa.0242.0.insert.insert
}

declare hidden void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details33dyld_chained_ptr_arm64e_auth_bindE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF5MachO12BinaryParser9copy_fromERNS0_18ChainedBindingInfoES3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((8, 24), (48, 56)) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %i.a, align 8, !tbaa !198
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.e, ptr %i.f, align 8, !tbaa !199
  ret void
}

declare noundef i64 @_ZNK4LIEF5MachO7details23dyld_chained_ptr_arm64e20sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger3errIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !173
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare hidden void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details35dyld_chained_ptr_arm64e_auth_rebaseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger3errIJmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !173
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 4, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare hidden void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details30dyld_chained_ptr_arm64e_bind24E(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare hidden void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details28dyld_chained_ptr_arm64e_bindE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZNK4LIEF5MachO7details23dyld_chained_ptr_arm64e13unpack_targetEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare hidden void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details30dyld_chained_ptr_arm64e_rebaseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967297) i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic64E(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(22) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.h = load i16, ptr %i.g, align 1, !tbaa !112  ; 3 uses
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(552) %i.k) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.p = zext i32 %3 to i64
  %i.q = add i64 %i.o, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !118
  %i.r = load i64, ptr %5, align 8                ; 2 uses
  %.not = icmp sgt i64 %i.r, -1
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.s = and i64 %i.r, 16777215                   ; 3 uses
  store i64 %i.s, ptr %i.b, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !168  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %.not39 = icmp ult i64 %i.s, %i.ac
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !164 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !167
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !168
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  store i64 %i.am, ptr %i.c, align 8, !tbaa !118
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 3, ptr nonnull @.str, i64 37, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.s ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !175 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %1, ptr %i.aq, align 8, !tbaa !181
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  store i32 %i.i, ptr %i.ar, align 4, !tbaa !186
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details24dyld_chained_ptr_64_bindE(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !164 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 160 ; 2 uses
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !175
  %i.av = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !987 ; 3 uses
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(112) %i.au) #26, !noalias !987
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 168 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !189 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 176 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !190
  %.not.i.i = icmp eq ptr %i.ax, %i.az
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = ptrtoint ptr %i.av to i64
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !192
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !189
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !193 ; 7 uses
  %i.bd = ptrtoint ptr %i.ax to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i45 = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i45)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #27 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  %i.bp = ptrtoint ptr %i.av to i64
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.bc, %i.ax
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bq = add i64 %i.bd, -8
  %i.br = sub i64 %i.bq, %i.be                    ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bt, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bn, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bc, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.bx ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bc, i64 %i.bx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.by = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8, !tbaa !192, !alias.scope !989
  %wide.load112 = load <2 x i64>, ptr %i.by, align 8, !tbaa !192, !alias.scope !989
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !988
  store <2 x i64> %wide.load112, ptr %i.bz, align 8, !tbaa !192, !alias.scope !988
  %12 = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep111, align 8, !tbaa !192, !alias.scope !989
  store <2 x ptr> splat (ptr null), ptr %12, align 8, !tbaa !192, !alias.scope !989
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !978

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader130

.lr.ph.i.i.i.i.preheader130:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader130, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader130 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader130 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.cb = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !192, !alias.scope !989
  store i64 %i.cb, ptr %.012.i.i.i.i, align 8, !tbaa !192, !alias.scope !988
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !192, !alias.scope !989
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.cc, %i.ax
  br i1 %.not.i.i.i.i46, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !979

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bn, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bv, %middle.block ], [ %i.cd, %.lr.ph.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cf = load ptr, ptr %i.ay, align 8, !tbaa !190
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ch) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.bn, ptr %i.at, align 8, !tbaa !193
  store ptr %i.ce, ptr %i.aw, align 8, !tbaa !189
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.ci, ptr %i.ay, align 8, !tbaa !190
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.e
  %i.cj = load ptr, ptr %i.t, align 8, !tbaa !164
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 168
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !197
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !192 ; 6 uses
  %i.co = load ptr, ptr %i.ao, align 8, !tbaa !175 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !198
  store <2 x ptr> %i.cr, ptr %i.cq, align 8, !tbaa !198
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !199
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !199
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  store i32 %3, ptr %i.cv, align 8, !tbaa !200
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  store i64 %2, ptr %i.cw, align 8, !tbaa !201
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 88 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 96 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !204 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 104 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !205
  %.not.i.i41 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i.i41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.cn, ptr %i.cz, align 8, !tbaa !192
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !204
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !206 ; 4 uses
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 5 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.k, label %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #27 ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dg ; 2 uses
  store ptr %i.cn, ptr %i.dp, align 8, !tbaa !192
  %i.dq = icmp sgt i64 %i.dg, 0
  br i1 %i.dq, label %bb.l, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr align 8 %i.dd, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ds = load ptr, ptr %i.da, align 8, !tbaa !205
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.du) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.do, ptr %i.cx, align 8, !tbaa !206
  store ptr %i.dr, ptr %i.cy, align 8, !tbaa !204
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dv, ptr %i.da, align 8, !tbaa !205
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.i, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dw = load ptr, ptr %i.cm, align 8, !tbaa !192
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !207 ; 3 uses
  %.not40 = icmp eq ptr %i.dy, null
  %i.dz = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %.not40, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !117
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(56) %i.dy) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.ef = tail call noundef i64 @_ZNK4LIEF5MachO7details26dyld_chained_ptr_generic6420sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  store i64 %i.ef, ptr %i.d, align 8, !tbaa !118
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSC_SE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.eg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str.1, i64 40, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic64EE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.o

.critedge:                                        ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.eh = tail call noundef i64 @_ZNK4LIEF5MachO7details26dyld_chained_ptr_generic6420sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  store i64 %i.eh, ptr %i.e, align 8, !tbaa !118
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ei, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.2, i64 54, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic64EE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.ej = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ek, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.3, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge, %bb.c
  %i.el = phi i64 [ 2, %.critedge ], [ 4294967296, %bb.n ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.em = icmp eq i16 %i.h, 2
  %i.en = tail call noundef i64 @_ZNK4LIEF5MachO7details26dyld_chained_ptr_generic6413unpack_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.eo = select i1 %i.em, i64 0, i64 %i.o
  %i.ep = add i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.f, align 8, !tbaa !118
  %i.eq = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !990 ; 11 uses
  tail call void @_ZN4LIEF5MachO15RelocationFixupC1ENS0_23DYLD_CHAINED_PTR_FORMATEm(ptr noundef nonnull align 8 dereferenceable(88) %i.eq, i32 noundef %i.i, i64 noundef %i.o) #26, !noalias !990
  tail call void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details26dyld_chained_ptr_64_rebaseE(ptr noundef nonnull align 8 dereferenceable(88) %i.eq, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %2, ptr %i.er, align 8, !tbaa !209
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !115 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 108
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !213
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 36
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !216
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  store ptr %1, ptr %i.ew, align 8, !tbaa !217
  %switch.tableidx = add i16 %i.h, -1             ; 2 uses
  %i.ex = icmp ult i16 %switch.tableidx, 14
  br i1 %i.ex, label %switch.lookup, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

switch.lookup:                                    ; preds = %bb.p
  %i.ey = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E, i64 %i.ey
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %bb.p, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.p ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i8 %.0.i, ptr %i.ez, align 8, !tbaa !218
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  store i32 %3, ptr %i.fa, align 8, !tbaa !221
  %i.fb = tail call noundef ptr @_ZNK4LIEF5MachO6Binary28section_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.es, i64 noundef %i.q) #26 ; 2 uses
  %.not38 = icmp eq ptr %i.fb, null
  br i1 %.not38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !222
  br label %bb.s

bb.r:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.fd = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fe, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.4, i64 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !223 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s
  %i.fi = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.t ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.t ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !118
  %i.fl = icmp ult i64 %i.fk, %i.fi               ; 2 uses
  %.19.i.i.i = select i1 %i.fl, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.fl, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.t, !llvm.loop !0

_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.t
  %i.fm = icmp eq ptr %.19.i.i.i, %i.fh
  br i1 %i.fm, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !118
  %i.fp = icmp ult i64 %i.fi, %i.fo
  br i1 %i.fp, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !226
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !227
  br label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.s, %bb.u, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.ft = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fv, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 1, ptr nonnull @.str.5, i64 26, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic64EE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !230 ; 6 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !231
  %.not.i.i42 = icmp eq ptr %i.fy, %i.ga
  br i1 %.not.i.i42, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.gb = ptrtoint ptr %i.eq to i64
  store i64 %i.gb, ptr %i.fy, align 8, !tbaa !233
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.gc, ptr %i.fx, align 8, !tbaa !230
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit

bb.w:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !234 ; 7 uses
  %i.ge = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64               ; 3 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.gh, label %bb.x, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %i.gi = ashr exact i64 %i.gg, 3                 ; 3 uses
  %.sroa.speculated.i.i47 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gj = add nsw i64 %.sroa.speculated.i.i47, %i.gi ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gi
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gj, i64 1152921504606846975)
  %i.gm = select i1 %i.gk, i64 1152921504606846975, i64 %i.gl ; 3 uses
  %.not.i.i48 = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %.not.i.i48)
  %i.gn = shl nuw nsw i64 %i.gm, 3
  %i.go = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #27 ; 7 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg
  %i.gq = ptrtoint ptr %i.eq to i64
  store i64 %i.gq, ptr %i.gp, align 8, !tbaa !233
  %.not10.i.i.i.i49 = icmp eq ptr %i.gd, %i.fy
  br i1 %.not10.i.i.i.i49, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i50.preheader

.lr.ph.i.i.i.i50.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.gr = add i64 %i.ge, -8
  %i.gs = sub i64 %i.gr, %i.gf                    ; 2 uses
  %i.gt = lshr i64 %i.gs, 3
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check115 = icmp ult i64 %i.gs, 24
  br i1 %min.iters.check115, label %.lr.ph.i.i.i.i50.preheader129, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i.i.i.i50.preheader
  %n.vec117 = and i64 %i.gu, 4611686018427387900  ; 3 uses
  %i.gv = shl i64 %n.vec117, 3                    ; 2 uses
  %i.gw = getelementptr i8, ptr %i.go, i64 %i.gv  ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gd, i64 %i.gv
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 2 uses
  %i.gy = shl i64 %index119, 3                    ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.go, i64 %i.gy ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.gd, i64 %i.gy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.gz = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <2 x i64>, ptr %next.gep121, align 8, !tbaa !233, !alias.scope !992
  %wide.load123 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !233, !alias.scope !992
  %i.ha = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x i64> %wide.load122, ptr %next.gep120, align 8, !tbaa !233, !alias.scope !991
  store <2 x i64> %wide.load123, ptr %i.ha, align 8, !tbaa !233, !alias.scope !991
  %13 = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep121, align 8, !tbaa !233, !alias.scope !992
  store <2 x ptr> splat (ptr null), ptr %13, align 8, !tbaa !233, !alias.scope !992
  %index.next124 = add nuw i64 %index119, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.hb, label %middle.block125, label %vector.body118, !llvm.loop !985

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.gu, %n.vec117
  br i1 %cmp.n126, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i50.preheader129

.lr.ph.i.i.i.i50.preheader129:                    ; preds = %.lr.ph.i.i.i.i50.preheader, %middle.block125
  %.012.i.i.i.i51.ph = phi ptr [ %i.go, %.lr.ph.i.i.i.i50.preheader ], [ %i.gw, %middle.block125 ]
  %.0911.i.i.i.i52.ph = phi ptr [ %i.gd, %.lr.ph.i.i.i.i50.preheader ], [ %i.gx, %middle.block125 ]
  br label %.lr.ph.i.i.i.i50

.lr.ph.i.i.i.i50:                                 ; preds = %.lr.ph.i.i.i.i50.preheader129, %.lr.ph.i.i.i.i50
  %.012.i.i.i.i51 = phi ptr [ %i.he, %.lr.ph.i.i.i.i50 ], [ %.012.i.i.i.i51.ph, %.lr.ph.i.i.i.i50.preheader129 ] ; 2 uses
  %.0911.i.i.i.i52 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i50 ], [ %.0911.i.i.i.i52.ph, %.lr.ph.i.i.i.i50.preheader129 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !991)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.hc = load i64, ptr %.0911.i.i.i.i52, align 8, !tbaa !233, !alias.scope !992
  store i64 %i.hc, ptr %.012.i.i.i.i51, align 8, !tbaa !233, !alias.scope !991
  store ptr null, ptr %.0911.i.i.i.i52, align 8, !tbaa !233, !alias.scope !992
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i52, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.hd, %i.fy
  br i1 %.not.i.i.i.i53, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i50, !llvm.loop !986

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i50, %middle.block125, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i54 = phi ptr [ %i.go, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.gw, %middle.block125 ], [ %i.he, %.lr.ph.i.i.i.i50 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i54, i64 8
  %.not.i23.i61 = icmp eq ptr %i.gd, null
  br i1 %.not.i23.i61, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.hg = load ptr, ptr %i.fz, align 8, !tbaa !231
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.hi) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.y
  store ptr %i.go, ptr %i.fw, align 8, !tbaa !234
  store ptr %i.hf, ptr %i.fx, align 8, !tbaa !230
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm
  store ptr %i.hj, ptr %i.fz, align 8, !tbaa !231
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit, %bb.o
  %.sroa.088.0.insert.insert = phi i64 [ 4294967296, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit ], [ %i.el, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.sroa.088.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger4warnIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !173
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

declare hidden void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details24dyld_chained_ptr_64_bindE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZNK4LIEF5MachO7details26dyld_chained_ptr_generic6420sign_extended_addendEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZNK4LIEF5MachO7details26dyld_chained_ptr_generic6413unpack_targetEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare hidden void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details26dyld_chained_ptr_64_rebaseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 4294967297) i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(22) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.LIEF::MachO::details::dyld_chained_ptr_32_rebase", align 4 ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.h = load i16, ptr %i.g, align 1, !tbaa !112  ; 2 uses
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(552) %i.k) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.p = zext i32 %3 to i64
  %i.q = add i64 %i.o, %i.p
  store i64 %i.q, ptr %i.a, align 8, !tbaa !118
  %i.r = load i32, ptr %5, align 4                ; 4 uses
  %.not = icmp sgt i32 %i.r, -1
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !164  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !167
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !168  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %.not49 = icmp ugt i64 %i.ad, %i.t
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !164 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !167
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !168
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  store i64 %i.an, ptr %i.c, align 8, !tbaa !118
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ao, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %11, i32 noundef 3, ptr nonnull @.str, i64 37, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !175 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %1, ptr %i.ar, align 8, !tbaa !181
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 68
  store i32 %i.i, ptr %i.as, align 4, !tbaa !186
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details24dyld_chained_ptr_32_bindE(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %5) #26
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !164 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 160 ; 2 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !175
  %i.aw = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !1009 ; 3 uses
  tail call void @_ZN4LIEF5MachO18ChainedBindingInfoC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noundef nonnull align 8 dereferenceable(112) %i.av) #26, !noalias !1009
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 168 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !189 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 176 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !190
  %.not.i.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = ptrtoint ptr %i.aw to i64
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !192
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !189
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !193 ; 7 uses
  %i.be = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64               ; 3 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.bi = ashr exact i64 %i.bg, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 1152921504606846975)
  %i.bm = select i1 %i.bk, i64 1152921504606846975, i64 %i.bl ; 3 uses
  %.not.i.i65 = icmp ne i64 %i.bm, 0
  tail call void @llvm.assume(i1 %.not.i.i65)
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #27 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg
  %i.bq = ptrtoint ptr %i.aw to i64
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !192
  %.not10.i.i.i.i = icmp eq ptr %i.bd, %i.ay
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.br = add i64 %i.be, -8
  %i.bs = sub i64 %i.br, %i.bf                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bd, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.bd, i64 %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.bz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep142, align 8, !tbaa !192, !alias.scope !1011
  %wide.load143 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !192, !alias.scope !1011
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !1010
  store <2 x i64> %wide.load143, ptr %i.ca, align 8, !tbaa !192, !alias.scope !1010
  %13 = getelementptr i8, ptr %next.gep142, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep142, align 8, !tbaa !192, !alias.scope !1011
  store <2 x ptr> splat (ptr null), ptr %13, align 8, !tbaa !192, !alias.scope !1011
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !998

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader161

.lr.ph.i.i.i.i.preheader161:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader161, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader161 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader161 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.cc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !192, !alias.scope !1011
  store i64 %i.cc, ptr %.012.i.i.i.i, align 8, !tbaa !192, !alias.scope !1010
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !192, !alias.scope !1011
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.cd, %i.ay
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !999

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bo, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bw, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bd, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !190
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.ci) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.bo, ptr %i.au, align 8, !tbaa !193
  store ptr %i.cf, ptr %i.ax, align 8, !tbaa !189
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.cj, ptr %i.az, align 8, !tbaa !190
  br label %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.e
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !164
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 168
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !197
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !192 ; 6 uses
  %i.cp = load ptr, ptr %i.ap, align 8, !tbaa !175 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !198
  store <2 x ptr> %i.cs, ptr %i.cr, align 8, !tbaa !198
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !199
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !199
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  store i32 %3, ptr %i.cw, align 8, !tbaa !200
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store i64 %2, ptr %i.cx, align 8, !tbaa !201
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 88 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 96 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !204 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 104 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !205
  %.not.i.i51 = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i.i51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.co, ptr %i.da, align 8, !tbaa !192
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.dd, ptr %i.cz, align 8, !tbaa !204
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS2_EED2Ev.exit
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !206 ; 4 uses
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 5 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.k, label %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #27 ; 4 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store ptr %i.co, ptr %i.dq, align 8, !tbaa !192
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.l, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.dt = load ptr, ptr %i.db, align 8, !tbaa !205
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.dp, ptr %i.cy, align 8, !tbaa !206
  store ptr %i.ds, ptr %i.cz, align 8, !tbaa !204
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dw, ptr %i.db, align 8, !tbaa !205
  br label %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.i, %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.dx = load ptr, ptr %i.cn, align 8, !tbaa !192
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !207 ; 3 uses
  %.not50 = icmp eq ptr %i.dz, null
  %i.ea = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %.not50, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !117
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.ee(ptr noundef nonnull align 8 dereferenceable(56) %i.dz) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.eg = load i32, ptr %5, align 4
  %i.eh = lshr i32 %i.eg, 20
  %i.ei = and i32 %i.eh, 63
  store i32 %i.ei, ptr %i.d, align 4, !tbaa !119
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSC_RKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ej, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str.1, i64 40, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32EE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.o

.critedge:                                        ; preds = %_ZNSt6vectorIPN4LIEF5MachO18ChainedBindingInfoESaIS3_EE9push_backEOS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.ek = load i32, ptr %5, align 4
  %i.el = lshr i32 %i.ek, 20
  %i.em = and i32 %i.el, 63
  store i32 %i.em, ptr %i.e, align 4, !tbaa !119
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.en, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.2, i64 54, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32EE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.eo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ep, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.3, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge, %bb.c
  %i.eq = phi i64 [ 2, %.critedge ], [ 4294967296, %bb.n ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit64

bb.p:                                             ; preds = %bb.a
  %i.er = and i32 %i.r, 67108863                  ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.et = load i32, ptr %i.es, align 1, !tbaa !235 ; 2 uses
  %i.eu = icmp ugt i32 %i.er, %i.et
  br i1 %i.eu, label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit59

_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p
  %i.ev = add nuw nsw i32 %i.et, 67108864
  %i.ew = lshr i32 %i.ev, 1
  %i.ex = sub nsw i32 %i.er, %i.ew
  %i.ey = zext i32 %i.ex to i64
  %i.ez = zext nneg i32 %i.er to i64
  %i.fa = sub nsw i64 %i.ey, %i.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i32 %i.r, ptr %12, align 4
  %i.fb = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !1012 ; 3 uses
  tail call void @_ZN4LIEF5MachO15RelocationFixupC1ENS0_23DYLD_CHAINED_PTR_FORMATEm(ptr noundef nonnull align 8 dereferenceable(88) %i.fb, i32 noundef %i.i, i64 noundef %i.fa) #26, !noalias !1012
  call void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details26dyld_chained_ptr_32_rebaseE(ptr noundef nonnull align 8 dereferenceable(88) %i.fb, ptr noundef nonnull align 4 dereferenceable(4) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.q

_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit59: ; preds = %bb.p
  %i.fc = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !1013 ; 3 uses
  tail call void @_ZN4LIEF5MachO15RelocationFixupC1ENS0_23DYLD_CHAINED_PTR_FORMATEm(ptr noundef nonnull align 8 dereferenceable(88) %i.fc, i32 noundef %i.i, i64 noundef %i.o) #26, !noalias !1013
  tail call void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details26dyld_chained_ptr_32_rebaseE(ptr noundef nonnull align 8 dereferenceable(88) %i.fc, ptr noundef nonnull align 4 dereferenceable(4) %5) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit59, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit
  %.sroa.091.0 = phi ptr [ %i.fb, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit ], [ %i.fc, %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit59 ] ; 10 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 8
  store i64 %2, ptr %i.fd, align 8, !tbaa !209
  %i.fe = load ptr, ptr %i.j, align 8, !tbaa !115 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 108
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !213
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 36
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !216
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 48
  store ptr %1, ptr %i.fi, align 8, !tbaa !217
  %switch.tableidx = add i16 %i.h, -1             ; 2 uses
  %i.fj = icmp ult i16 %switch.tableidx, 14
  br i1 %i.fj, label %switch.lookup, label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

switch.lookup:                                    ; preds = %bb.q
  %i.fk = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32E, i64 %i.fk
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit

_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit: ; preds = %bb.q, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.q ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 16
  store i8 %.0.i, ptr %i.fl, align 8, !tbaa !218
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 72
  store i32 %3, ptr %i.fm, align 8, !tbaa !221
  %i.fn = load i64, ptr %i.a, align 8, !tbaa !118
  %i.fo = call noundef ptr @_ZNK4LIEF5MachO6Binary28section_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.fe, i64 noundef %i.fn) #26 ; 2 uses
  %.not48 = icmp eq ptr %i.fo, null
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 40
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !222
  br label %bb.t

bb.s:                                             ; preds = %_ZN4LIEF5MachO22ChainedPointerAnalysis6strideENS0_23DYLD_CHAINED_PTR_FORMATE.exit
  %i.fq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fr, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.4, i64 64, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !223 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ft, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.u ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.fu, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.u ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !118
  %i.fy = icmp ult i64 %i.fx, %i.fv               ; 2 uses
  %.19.i.i.i = select i1 %i.fy, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.fy, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %bb.u, !llvm.loop !0

_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %bb.u
  %i.fz = icmp eq ptr %.19.i.i.i, %i.fu
  br i1 %i.fz, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !118
  %i.gc = icmp ult i64 %i.fv, %i.gb
  br i1 %i.gc, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !226
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 24
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !227
  br label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.t, %bb.v, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.gg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.gi = call noundef i64 @_ZNK4LIEF5MachO15RelocationFixup6targetEv(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.091.0) #26
  store i64 %i.gi, ptr %i.f, align 8, !tbaa !118
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmSE_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.gj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 1, ptr nonnull @.str.5, i64 26, ptr noundef nonnull align 1 dereferenceable(11) @_ZZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_26dyld_chained_ptr_generic32EE7DPREFIX, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !230 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !231
  %.not.i.i60 = icmp eq ptr %i.gm, %i.go
  br i1 %.not.i.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.gp = ptrtoint ptr %.sroa.091.0 to i64
  store i64 %i.gp, ptr %i.gm, align 8, !tbaa !233
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gq, ptr %i.gl, align 8, !tbaa !230
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit64

bb.x:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !234 ; 7 uses
  %i.gs = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.gt = ptrtoint ptr %i.gr to i64               ; 3 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 3 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775800
  br i1 %i.gv, label %bb.y, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.x
  %i.gw = ashr exact i64 %i.gu, 3                 ; 3 uses
  %.sroa.speculated.i.i67 = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i67, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 1152921504606846975)
  %i.ha = select i1 %i.gy, i64 1152921504606846975, i64 %i.gz ; 3 uses
  %.not.i.i68 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i68)
  %i.hb = shl nuw nsw i64 %i.ha, 3
  %i.hc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #27 ; 7 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gu
  %i.he = ptrtoint ptr %.sroa.091.0 to i64
  store i64 %i.he, ptr %i.hd, align 8, !tbaa !233
  %.not10.i.i.i.i69 = icmp eq ptr %i.gr, %i.gm
  br i1 %.not10.i.i.i.i69, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i70.preheader

.lr.ph.i.i.i.i70.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.hf = add i64 %i.gs, -8
  %i.hg = sub i64 %i.hf, %i.gt                    ; 2 uses
  %i.hh = lshr i64 %i.hg, 3
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check146 = icmp ult i64 %i.hg, 24
  br i1 %min.iters.check146, label %.lr.ph.i.i.i.i70.preheader160, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.i.i.i.i70.preheader
  %n.vec148 = and i64 %i.hi, 4611686018427387900  ; 3 uses
  %i.hj = shl i64 %n.vec148, 3                    ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hc, i64 %i.hj  ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gr, i64 %i.hj
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.hm = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.hc, i64 %i.hm ; 2 uses
  %next.gep152 = getelementptr i8, ptr %i.gr, i64 %i.hm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.hn = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <2 x i64>, ptr %next.gep152, align 8, !tbaa !233, !alias.scope !1015
  %wide.load154 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !233, !alias.scope !1015
  %i.ho = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load153, ptr %next.gep151, align 8, !tbaa !233, !alias.scope !1014
  store <2 x i64> %wide.load154, ptr %i.ho, align 8, !tbaa !233, !alias.scope !1014
  %14 = getelementptr i8, ptr %next.gep152, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep152, align 8, !tbaa !233, !alias.scope !1015
  store <2 x ptr> splat (ptr null), ptr %14, align 8, !tbaa !233, !alias.scope !1015
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.hp, label %middle.block156, label %vector.body149, !llvm.loop !1007

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.hi, %n.vec148
  br i1 %cmp.n157, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i70.preheader160

.lr.ph.i.i.i.i70.preheader160:                    ; preds = %.lr.ph.i.i.i.i70.preheader, %middle.block156
  %.012.i.i.i.i71.ph = phi ptr [ %i.hc, %.lr.ph.i.i.i.i70.preheader ], [ %i.hk, %middle.block156 ]
  %.0911.i.i.i.i72.ph = phi ptr [ %i.gr, %.lr.ph.i.i.i.i70.preheader ], [ %i.hl, %middle.block156 ]
  br label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph.i.i.i.i70.preheader160, %.lr.ph.i.i.i.i70
  %.012.i.i.i.i71 = phi ptr [ %i.hs, %.lr.ph.i.i.i.i70 ], [ %.012.i.i.i.i71.ph, %.lr.ph.i.i.i.i70.preheader160 ] ; 2 uses
  %.0911.i.i.i.i72 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i70 ], [ %.0911.i.i.i.i72.ph, %.lr.ph.i.i.i.i70.preheader160 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.hq = load i64, ptr %.0911.i.i.i.i72, align 8, !tbaa !233, !alias.scope !1015
  store i64 %i.hq, ptr %.012.i.i.i.i71, align 8, !tbaa !233, !alias.scope !1014
  store ptr null, ptr %.0911.i.i.i.i72, align 8, !tbaa !233, !alias.scope !1015
  %i.hr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i72, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i71, i64 8 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.hr, %i.gm
  br i1 %.not.i.i.i.i73, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i70, !llvm.loop !1008

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i70, %middle.block156, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i74 = phi ptr [ %i.hc, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.hk, %middle.block156 ], [ %i.hs, %.lr.ph.i.i.i.i70 ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i74, i64 8
  %.not.i23.i81 = icmp eq ptr %i.gr, null
  br i1 %.not.i23.i81, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.hu = load ptr, ptr %i.gn, align 8, !tbaa !231
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.hv, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hw) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.z
  store ptr %i.hc, ptr %i.gk, align 8, !tbaa !234
  store ptr %i.ht, ptr %i.gl, align 8, !tbaa !230
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hx, ptr %i.gn, align 8, !tbaa !231
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit64

_ZNSt10unique_ptrIN4LIEF5MachO15RelocationFixupESt14default_deleteIS2_EED2Ev.exit64: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.w, %bb.o
  %.sroa.3.1 = phi i64 [ %i.eq, %bb.o ], [ 4294967296, %bb.w ], [ 4294967296, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.sroa.3.1
}

declare hidden void @_ZN4LIEF5MachO18ChainedBindingInfo3setERKNS0_7details24dyld_chained_ptr_32_bindE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare hidden void @_ZN4LIEF5MachO15RelocationFixup3setERKNS0_7details26dyld_chained_ptr_32_rebaseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i64 @_ZNK4LIEF5MachO15RelocationFixup6targetEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4LIEF5MachO12BinaryParser16do_chained_fixupERNS0_14SegmentCommandEmjRKNS0_7details30dyld_chained_starts_in_segmentERKNS4_33dyld_chained_ptr_arm64e_segmentedE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(216) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(22) %4, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.6, i64 41)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i64 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger3errIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !173
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 4, ptr nonnull %1, i64 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF5MachO12BinaryParserC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ParserC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF5MachO12BinaryParserE, i64 16), ptr %0, align 8, !tbaa !117
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i32 -17958193, ptr %i.b, align 8, !tbaa !236
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.c, align 4, !tbaa !237
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i32 16843009, ptr %i.d, align 1
  store i8 0, ptr %i.e, align 1, !tbaa !1016
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 0, ptr %i.f, align 2, !tbaa !1017
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !238
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.h, align 8, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.g, ptr %i.i, align 8, !tbaa !239
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.g, ptr %i.j, align 8, !tbaa !240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.k, align 8, !tbaa !241
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.m, ptr %i.l, align 8, !tbaa !242
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 1, ptr %i.n, align 8, !tbaa !243
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !244
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.s, align 8, !tbaa !223
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.r, ptr %i.t, align 8, !tbaa !239
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.r, ptr %i.u, align 8, !tbaa !240
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !238
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.x, align 8, !tbaa !223
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store ptr %i.w, ptr %i.y, align 8, !tbaa !239
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.w, ptr %i.z, align 8, !tbaa !240
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN4LIEF6ParserC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF5MachO12BinaryParserD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF5MachO12BinaryParserE, i64 16), ptr %0, align 8, !tbaa !117
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !223
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !245  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !246
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !223
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !247  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4LIEF5MachO6SymbolEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.q, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4LIEF5MachO6SymbolEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i ], [ %i.p, %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EED2Ev.exit ] ; 4 uses
  %i.q = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !248 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !252  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4LIEF5MachO6SymbolEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !253
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4LIEF5MachO6SymbolEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4LIEF5MachO6SymbolEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 56) #29
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser19parse_load_commandsINS0_7details7MachO64EEENS_10ok_error_tEv:bb.a
  %i.lh = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 5 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !331, !noalias !1762 ; 2 uses
  store i64 %.01991009, ptr %i.li, align 8, !tbaa !331, !noalias !1762
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #26, !noalias !1764
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %103, i8 0, i64 80, i1 false), !noalias !1764
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !117, !noalias !1764
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 96
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !1764
  %i.ln = call i64 %i.lm(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, ptr noundef nonnull %103, i64 noundef %.01991009, i64 noundef 80, i64 noundef 0) #26, !noalias !1764, !inline_history !1551
  %i.lo = and i64 %i.ln, 4294967296
  %.not.i.i234 = icmp eq i64 %i.lo, 0
  store i64 %.01991009, ptr %i.li, align 8, !tbaa !331, !noalias !1764
  br i1 %.not.i.i234, label %bb.bf, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lq = load i8, ptr %i.lp, align 8, !tbaa !332, !range !256, !noalias !1764, !noundef !257
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4LIEF11swap_endianINS_5MachO7details10section_64EEEvPT_(ptr noundef nonnull %103) #26, !noalias !1764
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %119, ptr noundef nonnull align 8 dereferenceable(80) %103, i64 80, i1 false), !tbaa.struct !1765
  store i8 1, ptr %i.fa, align 8, !tbaa !1767, !alias.scope !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26, !noalias !1764
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !331, !noalias !1762
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #26
  call void @_ZN4LIEF5MachO7Section6createERKNS0_7details10section_64E(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1638") align 8 %120, ptr noundef nonnull align 8 dereferenceable(80) %119) #26
  %i.ls = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 232 ; 2 uses
  %i.lu = load ptr, ptr %120, align 8, !tbaa !338 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 240 ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !600 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 248 ; 3 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !601
  %.not.i.i237 = icmp eq ptr %i.lw, %i.ly
  br i1 %.not.i.i237, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.lu, ptr %i.lw, align 8, !tbaa !338
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %i.lz, ptr %i.lv, align 8, !tbaa !600
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

bb.av:                                            ; preds = %bb.at
  %i.ma = load ptr, ptr %i.lt, align 8, !tbaa !602 ; 4 uses
  %i.mb = ptrtoint ptr %i.lw to i64
  %i.mc = ptrtoint ptr %i.ma to i64               ; 2 uses
  %i.md = sub i64 %i.mb, %i.mc                    ; 5 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775800
  br i1 %i.me, label %bb.aw, label %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.mf = ashr exact i64 %i.md, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 1152921504606846975)
  %i.mj = select i1 %i.mh, i64 1152921504606846975, i64 %i.mi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #27 ; 4 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.md ; 2 uses
  store ptr %i.lu, ptr %i.mm, align 8, !tbaa !338
  %i.mn = icmp sgt i64 %i.md, 0
  br i1 %i.mn, label %bb.ax, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.ax:                                            ; preds = %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ml, ptr align 8 %i.ma, i64 %i.md, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.ax, %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.mp = load ptr, ptr %i.lx, align 8, !tbaa !601
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = sub i64 %i.mq, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mr) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ml, ptr %i.lt, align 8, !tbaa !602
  store ptr %i.mo, ptr %i.lv, align 8, !tbaa !600
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj
  store ptr %i.ms, ptr %i.lx, align 8, !tbaa !601
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.au, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.mt = load ptr, ptr %120, align 8             ; 5 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !604
  %.not216 = icmp eq i64 %i.mv, 0
  %i.mw = ptrtoint ptr %i.mt to i64
  br i1 %.not216, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 116
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !606
  %trunc = trunc i32 %i.my to i8
  switch i8 %trunc, label %bb.ba [
    i8 1, label %bb.bb
    i8 18, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 56
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !607
  %i.nb = zext i32 %.11911010 to i64
  %spec.select931 = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.nb)
  %spec.select = trunc nuw i64 %spec.select931 to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.az, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %.2192 = phi i32 [ %.11911010, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ %spec.select, %bb.ba ], [ %.11911010, %bb.az ], [ %.11911010, %bb.az ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 160
  store ptr %.sroa.0772.0, ptr %i.nc, align 8, !tbaa !608
  %i.nd = load ptr, ptr %i.lf, align 8, !tbaa !609 ; 6 uses
  %i.ne = load ptr, ptr %i.lg, align 8, !tbaa !610
  %.not.i.i238 = icmp eq ptr %i.nd, %i.ne
  br i1 %.not.i.i238, label %bb.bc, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.bb
  store i64 %i.mw, ptr %i.nd, align 8, !tbaa !338
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr %i.nf, ptr %i.lf, align 8, !tbaa !609
  br label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ng = load ptr, ptr %i.le, align 8, !tbaa !611 ; 10 uses
  %i.nh = ptrtoint ptr %i.nd to i64               ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64               ; 3 uses
  %i.nj = sub i64 %i.nh, %i.ni                    ; 3 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775800
  br i1 %i.nk, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bc
  %i.nl = ashr exact i64 %i.nj, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 1152921504606846975)
  %i.np = select i1 %i.nn, i64 1152921504606846975, i64 %i.no ; 3 uses
  %.not.i.i586 = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i586)
  %i.nq = shl nuw nsw i64 %i.np, 3
  %i.nr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #27 ; 10 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nj
  %i.nt = load i64, ptr %120, align 8, !tbaa !338
  store i64 %i.nt, ptr %i.ns, align 8, !tbaa !338
  store ptr null, ptr %120, align 8, !tbaa !338
  %.not10.i.i.i.i = icmp eq ptr %i.ng, %i.nd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.nu = add i64 %i.nh, -8
  %i.nv = sub i64 %i.nu, %i.ni                    ; 3 uses
  %i.nw = lshr i64 %i.nv, 3
  %i.nx = add nuw nsw i64 %i.nw, 1                ; 2 uses
  %min.iters.check1360 = icmp ult i64 %i.nv, 56
  br i1 %min.iters.check1360, label %.lr.ph.i.i.i.i.preheader1378, label %vector.memcheck1361

vector.memcheck1361:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ny = and i64 %i.nv, -8
  %i.nz = add i64 %i.ny, 8                        ; 2 uses
  %i.oa = getelementptr i8, ptr %i.nr, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.ng, i64 %i.nz
  %bound01362 = icmp ult ptr %i.nr, %i.ob
  %bound11363 = icmp ult ptr %i.ng, %i.oa
  %found.conflict1364 = and i1 %bound01362, %bound11363
  br i1 %found.conflict1364, label %.lr.ph.i.i.i.i.preheader1378, label %vector.ph1365

vector.ph1365:                                    ; preds = %vector.memcheck1361
  %n.vec1366 = and i64 %i.nx, 4611686018427387900 ; 3 uses
  %i.oc = shl i64 %n.vec1366, 3                   ; 2 uses
  %i.od = getelementptr i8, ptr %i.nr, i64 %i.oc  ; 2 uses
  %i.oe = getelementptr i8, ptr %i.ng, i64 %i.oc
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1373, %vector.body1367 ] ; 2 uses
  %i.of = shl i64 %index1368, 3                   ; 2 uses
  %next.gep1369 = getelementptr i8, ptr %i.nr, i64 %i.of ; 2 uses
  %next.gep1370 = getelementptr i8, ptr %i.ng, i64 %i.of ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %i.og = getelementptr i8, ptr %next.gep1370, i64 16
  %wide.load1371 = load <2 x i64>, ptr %next.gep1370, align 8, !tbaa !338, !alias.scope !1770
  %wide.load1372 = load <2 x i64>, ptr %i.og, align 8, !tbaa !338, !alias.scope !1770
  %i.oh = getelementptr i8, ptr %next.gep1369, i64 16
  store <2 x i64> %wide.load1371, ptr %next.gep1369, align 8, !tbaa !338, !alias.scope !1771, !noalias !1772
  store <2 x i64> %wide.load1372, ptr %i.oh, align 8, !tbaa !338, !alias.scope !1771, !noalias !1772
  %173 = getelementptr i8, ptr %next.gep1370, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1370, align 8, !tbaa !338, !alias.scope !1770
  store <2 x ptr> splat (ptr null), ptr %173, align 8, !tbaa !338, !alias.scope !1770
  %index.next1373 = add nuw i64 %index1368, 4     ; 2 uses
  %i.oi = icmp eq i64 %index.next1373, %n.vec1366
  br i1 %i.oi, label %middle.block1374, label %vector.body1367, !llvm.loop !1558

middle.block1374:                                 ; preds = %vector.body1367
  %cmp.n1375 = icmp eq i64 %i.nx, %n.vec1366
  br i1 %cmp.n1375, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader1378

.lr.ph.i.i.i.i.preheader1378:                     ; preds = %vector.memcheck1361, %.lr.ph.i.i.i.i.preheader, %middle.block1374
  %.012.i.i.i.i.ph = phi ptr [ %i.nr, %vector.memcheck1361 ], [ %i.nr, %.lr.ph.i.i.i.i.preheader ], [ %i.od, %middle.block1374 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ng, %vector.memcheck1361 ], [ %i.ng, %.lr.ph.i.i.i.i.preheader ], [ %i.oe, %middle.block1374 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1378, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ol, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1378 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1378 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  %i.oj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !338, !alias.scope !1769
  store i64 %i.oj, ptr %.012.i.i.i.i, align 8, !tbaa !338, !alias.scope !1768
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !338, !alias.scope !1769
  %i.ok = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i587 = icmp eq ptr %i.ok, %i.nd
  br i1 %.not.i.i.i.i587, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1559

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block1374, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.nr, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.od, %middle.block1374 ], [ %i.ol, %.lr.ph.i.i.i.i ]
  %i.om = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ng, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.on = load ptr, ptr %i.lg, align 8, !tbaa !610
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = sub i64 %i.oo, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.op) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.nr, ptr %i.le, align 8, !tbaa !611
  store ptr %i.om, ptr %i.lf, align 8, !tbaa !609
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.np
  store ptr %i.oq, ptr %i.lg, align 8, !tbaa !610
  %.pr = load ptr, ptr %120, align 8, !tbaa !338  ; 3 uses
  %.not.i239 = icmp eq ptr %.pr, null
  br i1 %.not.i239, label %bb.bg, label %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.or = load ptr, ptr %.pr, align 8, !tbaa !117
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(192) %.pr) #26, !inline_history !48
  br label %bb.bg

bb.bf:                                            ; preds = %bb.aq
  store i32 1, ptr %119, align 8, !tbaa !380, !alias.scope !1764
  store i8 0, ptr %i.fa, align 8, !tbaa !1767, !alias.scope !1764
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26, !noalias !1764
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !331, !noalias !1762
  %i.ou = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %102)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ov, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %102, i32 noundef 4, ptr nonnull @.str.163, i64 28, ptr noundef nonnull align 8 dereferenceable(32) %i.ie, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #26
  br label %.loopexit

bb.bg:                                            ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread
  %i.ow = add i64 %.01991009, 80
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #26
  %i.ox = add nuw i64 %.02011008, 1               ; 2 uses
  %i.oy = load i64, ptr %i.j, align 8, !tbaa !118
  %i.oz = icmp ult i64 %i.ox, %i.oy
  br i1 %i.oz, label %bb.aq, label %.loopexit, !llvm.loop !1560

.loopexit:                                        ; preds = %bb.bg, %bb.ap, %bb.bf
  %.1191943 = phi i32 [ %.11911010, %bb.bf ], [ %.01901014, %bb.ap ], [ %.2192, %bb.bg ] ; 4 uses
  %i.pa = load i32, ptr %i.ks, align 8, !tbaa !599
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.loopexit
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0772.0, i64 104
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !416 ; 3 uses
  %.not219 = icmp eq i64 %i.pd, 0
  br i1 %.not219, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pe = load i64, ptr %i.jc, align 8, !tbaa !595
  %.not220 = icmp ne i64 %i.pe, 0
  %i.pf = zext i32 %.1191943 to i64
  %i.pg = icmp ult i64 %i.pd, %i.pf
  %or.cond909 = select i1 %.not220, i1 %i.pg, i1 false
  %i.ph = trunc nuw i64 %i.pd to i32
  %spec.select910 = select i1 %or.cond909, i32 %i.ph, i32 %.1191943
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %.loopexit
  %.5 = phi i32 [ %.1191943, %bb.bh ], [ %.1191943, %.loopexit ], [ %spec.select910, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.o
  %.sroa.0772.1 = phi ptr [ %.sroa.0772.0, %bb.bj ], [ null, %bb.o ]
  %.2196 = phi i64 [ %.1195, %bb.bj ], [ %.01941013, %bb.o ]
  %.6 = phi i32 [ %.5, %bb.bj ], [ %.01901014, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #26
  br label %bb.mb

bb.bl:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #26
  %i.pi = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 5 uses
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !331, !noalias !1773 ; 2 uses
  store i64 %.01015, ptr %i.pj, align 8, !tbaa !331, !noalias !1773
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #26, !noalias !1775
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %101, i8 0, i64 24, i1 false), !noalias !1775
  %i.pl = load ptr, ptr %i.pi, align 8, !tbaa !117, !noalias !1775
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 96
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !1775
  %i.po = call i64 %i.pn(ptr noundef nonnull align 8 dereferenceable(24) %i.pi, ptr noundef nonnull %101, i64 noundef %.01015, i64 noundef 24, i64 noundef 0) #26, !noalias !1775, !inline_history !49
  %i.pp = and i64 %i.po, 4294967296
  %.not.i.i240 = icmp eq i64 %i.pp, 0
  store i64 %.01015, ptr %i.pj, align 8, !tbaa !331, !noalias !1775
  br i1 %.not.i.i240, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pr = load i8, ptr %i.pq, align 8, !tbaa !332, !range !256, !noalias !1775, !noundef !257
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.bn, label %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4LIEF11swap_endianINS_5MachO7details13dylib_commandEEEvPT_(ptr noundef nonnull %101) #26, !noalias !1775
  br label %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit

bb.bo:                                            ; preds = %bb.bl
  store i32 1, ptr %121, align 4, !tbaa !380, !alias.scope !1775
  store i8 0, ptr %i.el, align 4, !tbaa !613, !alias.scope !1775
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #26, !noalias !1775
  store i64 %i.pk, ptr %i.pj, align 8, !tbaa !331, !noalias !1773
  %i.pt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %100)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %100, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.pu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %100, i32 noundef 4, ptr nonnull @.str.164, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %100)
  br label %bb.cl

_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %121, ptr noundef nonnull align 4 dereferenceable(24) %101, i64 24, i1 false), !tbaa.struct !614
  store i8 1, ptr %i.el, align 4, !tbaa !613, !alias.scope !1775
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #26, !noalias !1775
  store i64 %i.pk, ptr %i.pj, align 8, !tbaa !331, !noalias !1773
  %i.pv = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #27, !noalias !1776 ; 11 uses
  call void @_ZN4LIEF5MachO12DylibCommandC1ERKNS0_7details13dylib_commandE(ptr noundef nonnull align 8 dereferenceable(104) %i.pv, ptr noundef nonnull align 4 dereferenceable(24) %121) #26, !noalias !1776
  %i.pw = load i32, ptr %i.em, align 4, !tbaa !616
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #26
  %i.px = load ptr, ptr %i.ae, align 8, !tbaa !254
  %i.py = zext i32 %i.pw to i64
  %i.pz = add i64 %.01015, %i.py
  call void @_ZNK4LIEF12BinaryStream14peek_string_atB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.369") align 8 %122, ptr noundef nonnull align 8 dereferenceable(24) %i.px, i64 noundef %i.pz, i64 noundef -1) #26
  %i.qa = load i8, ptr %i.en, align 8, !tbaa !400, !range !256, !noundef !257
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit
  %i.qc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %99)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %99, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.qd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %99, i32 noundef 4, ptr nonnull @.str.165, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  br label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit263

bb.bq:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.eo, ptr %123, align 8, !tbaa !342
  %i.qe = load ptr, ptr %122, align 8, !tbaa !252 ; 2 uses
  %i.qf = load i64, ptr %i.ep, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.qf, ptr %i.b, align 8, !tbaa !118
  %i.qg = icmp ugt i64 %i.qf, 15
  br i1 %i.qg, label %bb.br, label %._crit_edge.i.i

bb.br:                                            ; preds = %bb.bq
  %i.qh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %123, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.qh, ptr %123, align 8, !tbaa !252
  %i.qi = load i64, ptr %i.b, align 8, !tbaa !118
  store i64 %i.qi, ptr %i.eo, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.bq
  %i.qj = phi ptr [ %i.qh, %bb.br ], [ %i.eo, %bb.bq ] ; 2 uses
  switch i64 %i.qf, label %bb.bt [
end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO12BinaryParser19parse_load_commandsINS0_7details7MachO64EEENS_10ok_error_tEv:bb.a
  %.sroa.0772.37 = phi ptr [ null, %bb.lq ], [ %i.bcq, %bb.lr ], [ %i.bcq, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #26
  br label %bb.mb

bb.lw:                                            ; preds = %bb.k
  %.02022.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !224 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.lw, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.lw ] ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !715 ; 2 uses
  %i.bdt = icmp ugt i64 %i.bds, %i.fr             ; 2 uses
  %.in.v.i.i.i = select i1 %i.bdt, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i577 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i577, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !73

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.bdt, label %._crit_edge.thread.i.i.i, label %bb.ly

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.lw
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.az, %bb.lw ] ; 4 uses
  %i.bdu = load ptr, ptr %i.bb, align 8, !tbaa !239
  %i.bdv = icmp eq ptr %.019.lcssa29.i.i.i, %i.bdu
  br i1 %i.bdv, label %select.unfold.i.i, label %bb.lx

bb.lx:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.bdw = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bdw, i64 32
  %.pre.i.i580 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !715
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %._crit_edge.i.i.i
  %i.bdx = phi i64 [ %.pre.i.i580, %bb.lx ], [ %i.bds, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.lx ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bdy = icmp ult i64 %i.bdx, %i.fr
  br i1 %i.bdy, label %select.unfold.i.i, label %.thread890

select.unfold.i.i:                                ; preds = %bb.ly, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ly ] ; 3 uses
  %i.bdz = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.az
  br i1 %i.bdz, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %select.unfold.i.i
  %i.bea = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.beb = load i64, ptr %i.bea, align 8, !tbaa !715
  %i.bec = icmp ugt i64 %i.beb, %i.fr
  br label %bb.ma

bb.ma:                                            ; preds = %select.unfold.i.i, %bb.lz
  %i.bed = phi i1 [ %i.bec, %bb.lz ], [ true, %select.unfold.i.i ]
  %i.bee = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 32
  store i64 %i.fr, ptr %i.bef, align 8, !tbaa !715
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bed, ptr noundef nonnull %i.bee, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.az) #26
  %i.beg = load i64, ptr %i.bd, align 8, !tbaa !241
  %i.beh = add i64 %i.beg, 1
  store i64 %i.beh, ptr %i.bd, align 8, !tbaa !241
  %i.bei = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  %i.bej = call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.fr) #26
  store ptr %i.bej, ptr %i.y, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  store i64 %i.fr, ptr %i.z, align 8, !tbaa !118
  %i.bek = load ptr, ptr %i.bei, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcRKmRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bek, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 3, ptr nonnull @.str.240, i64 43, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  br label %.thread890

.thread890:                                       ; preds = %bb.ly, %bb.ma
  %i.bel = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !1890 ; 5 uses
  call void @_ZN4LIEF5MachO11LoadCommandC2ERKNS0_7details12load_commandE(ptr noundef nonnull align 8 dereferenceable(64) %i.bel, ptr noundef nonnull align 4 dereferenceable(8) %114) #26, !noalias !1890
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO14UnknownCommandE, i64 16), ptr %i.bel, align 8, !tbaa !117, !noalias !1890
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 56
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bel, i64 32 ; 2 uses
  %i.beo = load i64, ptr %i.ben, align 8, !tbaa !716, !noalias !1890
  store i64 %i.beo, ptr %i.bem, align 8, !tbaa !718, !noalias !1890
  store i64 4293787649, ptr %i.ben, align 8, !tbaa !716, !noalias !1890
  br label %bb.mc

bb.mb:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit, %bb.lm, %bb.lh, %bb.lc, %bb.kx, %bb.ks, %bb.kb, %bb.jw, %bb.jh, %bb.ip, %bb.ik, %bb.id, %bb.hw, %bb.hp, %bb.hk, %bb.hf, %bb.ha, %bb.gv, %bb.gq, %bb.gl, %bb.gg, %bb.fr, %bb.fm, %bb.fh, %bb.fc, %bb.ex, %bb.es, %bb.en, %bb.ei, %bb.dm, %bb.cx, %bb.cs, %bb.cl, %bb.bk
  %.sroa.0772.38 = phi ptr [ %.sroa.0772.37, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0772.1, %bb.bk ], [ %.sroa.0772.2, %bb.cl ], [ %.sroa.0772.3, %bb.cs ], [ %.sroa.0772.4, %bb.cx ], [ %.sroa.0772.5, %bb.dm ], [ %.sroa.0772.6, %bb.ei ], [ %.sroa.0772.7, %bb.en ], [ %.sroa.0772.8, %bb.es ], [ %.sroa.0772.9, %bb.ex ], [ %.sroa.0772.10, %bb.fc ], [ %.sroa.0772.11, %bb.fh ], [ %.sroa.0772.12, %bb.fm ], [ %.sroa.0772.13, %bb.fr ], [ %.sroa.0772.14, %bb.gg ], [ %.sroa.0772.15, %bb.gl ], [ %.sroa.0772.16, %bb.gq ], [ %.sroa.0772.17, %bb.gv ], [ %.sroa.0772.18, %bb.ha ], [ %.sroa.0772.19, %bb.hf ], [ %.sroa.0772.20, %bb.hk ], [ %.sroa.0772.21, %bb.hp ], [ %.sroa.0772.23, %bb.hw ], [ %.sroa.0772.25, %bb.id ], [ %.sroa.0772.27, %bb.ik ], [ %.sroa.0772.28, %bb.ip ], [ %.sroa.0772.29, %bb.jh ], [ %.sroa.0772.30, %bb.jw ], [ %.sroa.0772.31, %bb.kb ], [ %.sroa.0772.32, %bb.ks ], [ %.sroa.0772.33, %bb.kx ], [ %.sroa.0772.34, %bb.lc ], [ %.sroa.0772.35, %bb.lh ], [ %.sroa.0772.36, %bb.lm ] ; 2 uses
  %.2835 = phi i64 [ %.08331012, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.08331012, %bb.bk ], [ %.08331012, %bb.cl ], [ %.08331012, %bb.cs ], [ %.08331012, %bb.cx ], [ %.08331012, %bb.dm ], [ %.08331012, %bb.ei ], [ %.08331012, %bb.en ], [ %.08331012, %bb.es ], [ %.08331012, %bb.ex ], [ %.08331012, %bb.fc ], [ %.08331012, %bb.fh ], [ %.08331012, %bb.fm ], [ %.08331012, %bb.fr ], [ %.08331012, %bb.gg ], [ %.08331012, %bb.gl ], [ %.08331012, %bb.gq ], [ %.08331012, %bb.gv ], [ %.08331012, %bb.ha ], [ %.08331012, %bb.hf ], [ %.08331012, %bb.hk ], [ %.08331012, %bb.hp ], [ %.08331012, %bb.hw ], [ %.08331012, %bb.id ], [ %.08331012, %bb.ik ], [ %.08331012, %bb.ip ], [ %.08331012, %bb.jh ], [ %.08331012, %bb.jw ], [ %.08331012, %bb.kb ], [ %.1834, %bb.ks ], [ %.08331012, %bb.kx ], [ %.08331012, %bb.lc ], [ %.08331012, %bb.lh ], [ %.08331012, %bb.lm ] ; 2 uses
  %.3197 = phi i64 [ %.01941013, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.2196, %bb.bk ], [ %.01941013, %bb.cl ], [ %.01941013, %bb.cs ], [ %.01941013, %bb.cx ], [ %.01941013, %bb.dm ], [ %.01941013, %bb.ei ], [ %.01941013, %bb.en ], [ %.01941013, %bb.es ], [ %.01941013, %bb.ex ], [ %.01941013, %bb.fc ], [ %.01941013, %bb.fh ], [ %.01941013, %bb.fm ], [ %.01941013, %bb.fr ], [ %.01941013, %bb.gg ], [ %.01941013, %bb.gl ], [ %.01941013, %bb.gq ], [ %.01941013, %bb.gv ], [ %.01941013, %bb.ha ], [ %.01941013, %bb.hf ], [ %.01941013, %bb.hk ], [ %.01941013, %bb.hp ], [ %.01941013, %bb.hw ], [ %.01941013, %bb.id ], [ %.01941013, %bb.ik ], [ %.01941013, %bb.ip ], [ %.01941013, %bb.jh ], [ %.01941013, %bb.jw ], [ %.01941013, %bb.kb ], [ %.01941013, %bb.ks ], [ %.01941013, %bb.kx ], [ %.01941013, %bb.lc ], [ %.01941013, %bb.lh ], [ %.01941013, %bb.lm ] ; 2 uses
  %.7 = phi i32 [ %.01901014, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.6, %bb.bk ], [ %.01901014, %bb.cl ], [ %.01901014, %bb.cs ], [ %.01901014, %bb.cx ], [ %.01901014, %bb.dm ], [ %.01901014, %bb.ei ], [ %.01901014, %bb.en ], [ %.01901014, %bb.es ], [ %.01901014, %bb.ex ], [ %.01901014, %bb.fc ], [ %.01901014, %bb.fh ], [ %.01901014, %bb.fm ], [ %.01901014, %bb.fr ], [ %.01901014, %bb.gg ], [ %.01901014, %bb.gl ], [ %.01901014, %bb.gq ], [ %.01901014, %bb.gv ], [ %.01901014, %bb.ha ], [ %.01901014, %bb.hf ], [ %.01901014, %bb.hk ], [ %.01901014, %bb.hp ], [ %.01901014, %bb.hw ], [ %.01901014, %bb.id ], [ %.01901014, %bb.ik ], [ %.01901014, %bb.ip ], [ %.01901014, %bb.jh ], [ %.01901014, %bb.jw ], [ %.01901014, %bb.kb ], [ %.01901014, %bb.ks ], [ %.01901014, %bb.kx ], [ %.01901014, %bb.lc ], [ %.01901014, %bb.lh ], [ %.01901014, %bb.lm ] ; 2 uses
  %.not932 = icmp eq ptr %.sroa.0772.38, null
  br i1 %.not932, label %bb.mj, label %bb.mc

bb.mc:                                            ; preds = %.thread890, %bb.mb
  %.7901 = phi i32 [ %.01901014, %.thread890 ], [ %.7, %bb.mb ] ; 2 uses
  %.3197899 = phi i64 [ %.01941013, %.thread890 ], [ %.3197, %bb.mb ] ; 2 uses
  %.2835897 = phi i64 [ %.08331012, %.thread890 ], [ %.2835, %bb.mb ] ; 2 uses
  %.sroa.0772.38895 = phi ptr [ %i.bel, %.thread890 ], [ %.sroa.0772.38, %bb.mb ] ; 5 uses
  %i.bep = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %.sroa.0772.38895, i64 8
  %i.ber = load i32, ptr %i.bl, align 4, !tbaa !720
  %i.bes = zext i32 %i.ber to i64
  %i.bet = load ptr, ptr %i.bep, align 8, !tbaa !117
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 24
  %i.bev = load ptr, ptr %i.beu, align 8
  %i.bew = call i64 %i.bev(ptr noundef nonnull align 8 dereferenceable(24) %i.bep, ptr noundef nonnull align 8 dereferenceable(24) %i.beq, i64 noundef %.01015, i64 noundef %i.bes, i64 noundef 0) #26
  %i.bex = and i64 %i.bew, 4294967296
  %.not934 = icmp eq i64 %i.bex, 0
  br i1 %.not934, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.bey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bez, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 4, ptr nonnull @.str.241, i64 43)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bfa = getelementptr inbounds nuw i8, ptr %.sroa.0772.38895, i64 40
  store i32 0, ptr %i.bfa, align 8, !tbaa !721
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc
  %i.bfb = getelementptr inbounds nuw i8, ptr %.sroa.0772.38895, i64 48
  store i64 %.01015, ptr %i.bfb, align 8, !tbaa !722
  %i.bfc = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 3 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 136 ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfc, i64 144 ; 3 uses
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !723 ; 6 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfc, i64 152 ; 3 uses
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !724
  %.not.i.i584 = icmp eq ptr %i.bff, %i.bfh
  br i1 %.not.i.i584, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bfi = ptrtoint ptr %.sroa.0772.38895 to i64
  store i64 %i.bfi, ptr %i.bff, align 8, !tbaa !726
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bff, i64 8
  store ptr %i.bfj, ptr %i.bfe, align 8, !tbaa !723
  br label %bb.mj

bb.mg:                                            ; preds = %bb.me
  %i.bfk = load ptr, ptr %i.bfd, align 8, !tbaa !727 ; 10 uses
  %i.bfl = ptrtoint ptr %i.bff to i64             ; 2 uses
  %i.bfm = ptrtoint ptr %i.bfk to i64             ; 3 uses
  %i.bfn = sub i64 %i.bfl, %i.bfm                 ; 3 uses
  %i.bfo = icmp eq i64 %i.bfn, 9223372036854775800
  br i1 %i.bfo, label %bb.mh, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.mh:                                            ; preds = %bb.mg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.mg
  %i.bfp = ashr exact i64 %i.bfn, 3               ; 3 uses
  %.sroa.speculated.i.i588 = call i64 @llvm.umax.i64(i64 %i.bfp, i64 1)
  %i.bfq = add nsw i64 %.sroa.speculated.i.i588, %i.bfp ; 2 uses
  %i.bfr = icmp ult i64 %i.bfq, %i.bfp
  %i.bfs = call i64 @llvm.umin.i64(i64 %i.bfq, i64 1152921504606846975)
  %i.bft = select i1 %i.bfr, i64 1152921504606846975, i64 %i.bfs ; 3 uses
  %.not.i.i589 = icmp ne i64 %i.bft, 0
  call void @llvm.assume(i1 %.not.i.i589)
  %i.bfu = shl nuw nsw i64 %i.bft, 3
  %i.bfv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfu) #27 ; 10 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bfn
  %i.bfx = ptrtoint ptr %.sroa.0772.38895 to i64
  store i64 %i.bfx, ptr %i.bfw, align 8, !tbaa !726
  %.not10.i.i.i.i590 = icmp eq ptr %i.bfk, %i.bff
  br i1 %.not10.i.i.i.i590, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i591.preheader

.lr.ph.i.i.i.i591.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bfy = add i64 %i.bfl, -8
  %i.bfz = sub i64 %i.bfy, %i.bfm                 ; 3 uses
  %i.bga = lshr i64 %i.bfz, 3
  %i.bgb = add nuw nsw i64 %i.bga, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bfz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i591.preheader1379, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i591.preheader
  %i.bgc = and i64 %i.bfz, -8
  %i.bgd = add i64 %i.bgc, 8                      ; 2 uses
  %i.bge = getelementptr i8, ptr %i.bfv, i64 %i.bgd
  %i.bgf = getelementptr i8, ptr %i.bfk, i64 %i.bgd
  %bound0 = icmp ult ptr %i.bfv, %i.bgf
  %bound1 = icmp ult ptr %i.bfk, %i.bge
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i591.preheader1379, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bgb, 4611686018427387900    ; 3 uses
  %i.bgg = shl i64 %n.vec, 3                      ; 2 uses
  %i.bgh = getelementptr i8, ptr %i.bfv, i64 %i.bgg ; 2 uses
  %i.bgi = getelementptr i8, ptr %i.bfk, i64 %i.bgg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bgj = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bfv, i64 %i.bgj ; 2 uses
  %next.gep1349 = getelementptr i8, ptr %i.bfk, i64 %i.bgj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %i.bgk = getelementptr i8, ptr %next.gep1349, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1349, align 8, !tbaa !726, !alias.scope !1893
  %wide.load1350 = load <2 x i64>, ptr %i.bgk, align 8, !tbaa !726, !alias.scope !1893
  %i.bgl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !726, !alias.scope !1894, !noalias !1895
  store <2 x i64> %wide.load1350, ptr %i.bgl, align 8, !tbaa !726, !alias.scope !1894, !noalias !1895
  %174 = getelementptr i8, ptr %next.gep1349, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1349, align 8, !tbaa !726, !alias.scope !1893
  store <2 x ptr> splat (ptr null), ptr %174, align 8, !tbaa !726, !alias.scope !1893
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bgm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bgm, label %middle.block, label %vector.body, !llvm.loop !1749

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bgb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i591.preheader1379

.lr.ph.i.i.i.i591.preheader1379:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i591.preheader, %middle.block
  %.012.i.i.i.i592.ph = phi ptr [ %i.bfv, %vector.memcheck ], [ %i.bfv, %.lr.ph.i.i.i.i591.preheader ], [ %i.bgh, %middle.block ]
  %.0911.i.i.i.i593.ph = phi ptr [ %i.bfk, %vector.memcheck ], [ %i.bfk, %.lr.ph.i.i.i.i591.preheader ], [ %i.bgi, %middle.block ]
  br label %.lr.ph.i.i.i.i591

.lr.ph.i.i.i.i591:                                ; preds = %.lr.ph.i.i.i.i591.preheader1379, %.lr.ph.i.i.i.i591
  %.012.i.i.i.i592 = phi ptr [ %i.bgp, %.lr.ph.i.i.i.i591 ], [ %.012.i.i.i.i592.ph, %.lr.ph.i.i.i.i591.preheader1379 ] ; 2 uses
  %.0911.i.i.i.i593 = phi ptr [ %i.bgo, %.lr.ph.i.i.i.i591 ], [ %.0911.i.i.i.i593.ph, %.lr.ph.i.i.i.i591.preheader1379 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %i.bgn = load i64, ptr %.0911.i.i.i.i593, align 8, !tbaa !726, !alias.scope !1892
  store i64 %i.bgn, ptr %.012.i.i.i.i592, align 8, !tbaa !726, !alias.scope !1891
  store ptr null, ptr %.0911.i.i.i.i593, align 8, !tbaa !726, !alias.scope !1892
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i593, i64 8 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i592, i64 8 ; 2 uses
  %.not.i.i.i.i594 = icmp eq ptr %i.bgo, %i.bff
  br i1 %.not.i.i.i.i594, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i591, !llvm.loop !1750

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i591, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i595 = phi ptr [ %i.bfv, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bgh, %middle.block ], [ %i.bgp, %.lr.ph.i.i.i.i591 ]
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i595, i64 8
  %.not.i23.i602 = icmp eq ptr %i.bfk, null
  br i1 %.not.i23.i602, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.mi

bb.mi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bgr = load ptr, ptr %i.bfg, align 8, !tbaa !724
  %i.bgs = ptrtoint ptr %i.bgr to i64
  %i.bgt = sub i64 %i.bgs, %i.bfm
  call void @_ZdlPvm(ptr noundef nonnull %i.bfk, i64 noundef %i.bgt) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.mi
  store ptr %i.bfv, ptr %i.bfd, align 8, !tbaa !727
  store ptr %i.bgq, ptr %i.bfe, align 8, !tbaa !723
  %i.bgu = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.bft
  store ptr %i.bgu, ptr %i.bfg, align 8, !tbaa !724
  br label %bb.mj

.thread902:                                       ; preds = %bb.j, %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details12load_commandEEENS_6resultIT_EEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #26
  br label %.loopexit937

bb.mj:                                            ; preds = %bb.mb, %bb.mf, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %.7900 = phi i32 [ %.7, %bb.mb ], [ %.7901, %bb.mf ], [ %.7901, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ] ; 2 uses
  %.3197898 = phi i64 [ %.3197, %bb.mb ], [ %.3197899, %bb.mf ], [ %.3197899, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %.2835896 = phi i64 [ %.2835, %bb.mb ], [ %.2835897, %bb.mf ], [ %.2835897, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.bgv = load i32, ptr %i.bl, align 4, !tbaa !720
  %i.bgw = zext i32 %i.bgv to i64
  %i.bgx = add i64 %.01015, %i.bgw                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #26
  %i.bgy = load i64, ptr %i.d, align 8, !tbaa !118
  %i.bgz = add i64 %i.bgy, 1                      ; 2 uses
  store i64 %i.bgz, ptr %i.d, align 8, !tbaa !118
  %i.bha = load i64, ptr %i.c, align 8, !tbaa !118
  %i.bhb = icmp ult i64 %i.bgz, %i.bha
  br i1 %i.bhb, label %bb.f, label %.loopexit937, !llvm.loop !1751

.loopexit937:                                     ; preds = %bb.mj, %bb.e, %.thread902
  %.0190975 = phi i32 [ %.01901014, %.thread902 ], [ -1, %bb.e ], [ %.7900, %bb.mj ]
  %.0963 = phi i64 [ %.01015, %.thread902 ], [ %i.ah, %bb.e ], [ %i.bgx, %bb.mj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.bhc = zext i32 %.0190975 to i64
  %i.bhd = sub i64 %i.bhc, %.0963
  %i.bhe = load ptr, ptr %i.ac, align 8, !tbaa !115
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 352
  store i64 %i.bhd, ptr %i.bhf, align 8, !tbaa !728
  %i.bhg = load ptr, ptr %i.ba, align 8, !tbaa !223
  call void @_ZNSt8_Rb_treeIN4LIEF5MachO11LoadCommand4TYPEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %113, ptr noundef %i.bhg)
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.mk

bb.mk:                                            ; preds = %.loopexit937, %bb.b
  %.sroa.2.0 = phi i64 [ 5, %bb.b ], [ 4294967301, %.loopexit937 ]
  ret i64 %.sroa.2.0
}

declare noundef ptr @_ZN4LIEF5MachO6Binary14symbol_commandEv(ptr noundef nonnull align 8 dereferenceable(552)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO64EEENS_10ok_error_tERNS0_13SymbolCommandE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::vector.156", align 8   ; 8 uses
  %10 = alloca %"class.std::vector.156", align 8  ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %12 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %13 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %14 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 1, ptr nonnull @.str.243, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !730
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.e, ptr %i.f, align 4, !tbaa !731
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !732
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.h, ptr %i.i, align 8, !tbaa !733
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !685, !range !256, !noundef !257
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 2 uses
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.o, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 10, ptr %i.p, align 8, !tbaa !343
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 0, ptr %i.q, align 2, !tbaa !253
  %i.r = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  %i.s = load ptr, ptr %7, align 8, !tbaa !252    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !734
  %i.w = zext i32 %i.v to i64
  %i.x = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.n, i64 noundef %i.w) #26
  br label %.critedge76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.y = load i64, ptr %i.o, align 8, !tbaa !253
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge76

.critedge76:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = phi ptr [ %i.x, %bb.b ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.ab = load i8, ptr %i.j, align 2, !tbaa !685, !range !256, !noundef !257
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !115 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i85, label %bb.c

._crit_edge.i.i85:                                ; preds = %.critedge76
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.af, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 10, ptr %i.ag, align 8, !tbaa !343
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i8 0, ptr %i.ah, align 2, !tbaa !253
  %i.ai = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  %i.aj = load ptr, ptr %8, align 8, !tbaa !252   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.af
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

bb.c:                                             ; preds = %.critedge76
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !735
  %i.an = zext i32 %i.am to i64
  %i.ao = call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, i64 noundef %i.an) #26
  br label %.critedge80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %._crit_edge.i.i85
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !253
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %._crit_edge.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge80

.critedge80:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.ar = phi ptr [ %i.ao, %bb.c ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ] ; 8 uses
  %i.as = icmp eq ptr %i.aa, null
  %i.at = icmp eq ptr %i.ar, null
  %or.cond = or i1 %i.as, %i.at
end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO12BinaryParser17parse_relocationsINS0_7details7MachO64EEENS_10ok_error_tERNS0_7SectionE:bb.a

bb.y:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !226
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !227
  br label %bb.ac

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.x, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.fj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fk, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.262, i64 49, ptr noundef nonnull align 4 dereferenceable(4) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.fl = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 240 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !600
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.eq to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3
  %i.fs = icmp ugt i64 %i.fr, %i.fl
  br i1 %i.fs, label %_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, label %bb.aa

_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit: ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fl
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !338 ; 3 uses
  store ptr %i.fu, ptr %i.dh, align 8, !tbaa !222
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !117
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(64) %i.fu) #26
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 1, ptr nonnull @.str.263, i64 11, ptr noundef nonnull align 8 dereferenceable(32) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ga = load ptr, ptr %22, align 8, !tbaa !252  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.bh
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit
  %i.gc = load i64, ptr %i.bh, align 8, !tbaa !253
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ge = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.gf = load ptr, ptr %1, align 8, !tbaa !117
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(64) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.gi = load i32, ptr %i.be, align 4
  %i.gj = and i32 %i.gi, 16777215
  store i32 %i.gj, ptr %i.h, align 4, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.gk = load ptr, ptr %i.fm, align 8, !tbaa !600
  %i.gl = load ptr, ptr %i.ep, align 8, !tbaa !602
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 3
  store i64 %i.gp, ptr %i.i, align 8, !tbaa !118
  %i.gq = load ptr, ptr %i.ge, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKjS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.gq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 2, ptr nonnull @.str.264, i64 77, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.gr = load ptr, ptr %23, align 8, !tbaa !252  ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.bg
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aa
  %i.gt = load i64, ptr %i.bg, align 8, !tbaa !253
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !331
  store i64 1, ptr %20, align 8
  store i8 0, ptr %.sroa.2.0..sroa_idx123, align 8
  %i.gv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.gw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 2, ptr nonnull @.str.259, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZNSt10unique_ptrIN4LIEF5MachO16RelocationObjectESt14default_deleteIS2_EED2Ev.exit71.thread

bb.ac:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %.pre170 = load ptr, ptr %i.dh, align 8, !tbaa !222
  %i.gx = icmp eq ptr %.pre170, null
  br i1 %i.gx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr %1, ptr %i.gy, align 8, !tbaa !222
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.ad, %bb.ac
  %.sroa.090.2190 = phi ptr [ %i.cp, %.thread ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.ac ] ; 3 uses
  %i.gz = load ptr, ptr %i.bd, align 8, !tbaa !115
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 108
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !213
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.090.2190, i64 36
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !216
  %i.hd = load ptr, ptr %i.bl, align 8, !tbaa !230 ; 6 uses
  %i.he = load ptr, ptr %i.bm, align 8, !tbaa !231
  %.not.i.i67 = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i.i67, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hf = ptrtoint ptr %.sroa.090.2190 to i64
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !233
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hg, ptr %i.bl, align 8, !tbaa !230
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.hh = load ptr, ptr %i.bk, align 8, !tbaa !234 ; 10 uses
  %i.hi = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64               ; 3 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 3 uses
  %i.hl = icmp eq i64 %i.hk, 9223372036854775800
  br i1 %i.hl, label %bb.ah, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ag
  %i.hm = ashr exact i64 %i.hk, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.hm, i64 1)
  %i.hn = add nsw i64 %.sroa.speculated.i.i, %i.hm ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hm
  %i.hp = call i64 @llvm.umin.i64(i64 %i.hn, i64 1152921504606846975)
  %i.hq = select i1 %i.ho, i64 1152921504606846975, i64 %i.hp ; 3 uses
  %.not.i.i72 = icmp ne i64 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i72)
  %i.hr = shl nuw nsw i64 %i.hq, 3
  %i.hs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #27 ; 10 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hk
  %i.hu = ptrtoint ptr %.sroa.090.2190 to i64
  store i64 %i.hu, ptr %i.ht, align 8, !tbaa !233
  %.not10.i.i.i.i = icmp eq ptr %i.hh, %i.hd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.hv = add i64 %i.hi, -8
  %i.hw = sub i64 %i.hv, %i.hj                    ; 3 uses
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hw, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader225, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.hz = and i64 %i.hw, -8
  %i.ia = add i64 %i.hz, 8                        ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hs, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.hh, i64 %i.ia
  %bound0 = icmp ult ptr %i.hs, %i.ic
  %bound1 = icmp ult ptr %i.hh, %i.ib
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader225, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, 4611686018427387900     ; 3 uses
  %i.id = shl i64 %n.vec, 3                       ; 2 uses
  %i.ie = getelementptr i8, ptr %i.hs, i64 %i.id  ; 2 uses
  %i.if = getelementptr i8, ptr %i.hh, i64 %i.id
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hs, i64 %i.ig ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.hh, i64 %i.ig ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.ih = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep222, align 8, !tbaa !233, !alias.scope !1919
  %wide.load223 = load <2 x i64>, ptr %i.ih, align 8, !tbaa !233, !alias.scope !1919
  %i.ii = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !233, !alias.scope !1920, !noalias !1921
  store <2 x i64> %wide.load223, ptr %i.ii, align 8, !tbaa !233, !alias.scope !1920, !noalias !1921
  %24 = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep222, align 8, !tbaa !233, !alias.scope !1919
  store <2 x ptr> splat (ptr null), ptr %24, align 8, !tbaa !233, !alias.scope !1919
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !1910

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader225

.lr.ph.i.i.i.i.preheader225:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.hs, %vector.memcheck ], [ %i.hs, %.lr.ph.i.i.i.i.preheader ], [ %i.ie, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.hh, %vector.memcheck ], [ %i.hh, %.lr.ph.i.i.i.i.preheader ], [ %i.if, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader225, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.im, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.il, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.ik = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !1918
  store i64 %i.ik, ptr %.012.i.i.i.i, align 8, !tbaa !233, !alias.scope !1917
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !1918
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.il, %i.hd
  br i1 %.not.i.i.i.i73, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1911

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.hs, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ie, %middle.block ], [ %i.im, %.lr.ph.i.i.i.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.hh, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.io = load ptr, ptr %i.bm, align 8, !tbaa !231
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = sub i64 %i.ip, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.iq) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.ai
  store ptr %i.hs, ptr %i.bk, align 8, !tbaa !234
  store ptr %i.in, ptr %i.bl, align 8, !tbaa !230
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hq
  store ptr %i.ir, ptr %i.bm, align 8, !tbaa !231
  br label %bb.aj

_ZNSt10unique_ptrIN4LIEF5MachO16RelocationObjectESt14default_deleteIS2_EED2Ev.exit71.thread: ; preds = %_ZNK4LIEF12BinaryStream4peekIiEENS_6resultIT_EEm.exit.thread, %bb.n, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %.loopexit

bb.aj:                                            ; preds = %bb.af, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.is = load i64, ptr %i.c, align 8, !tbaa !118
  %i.it = add i64 %i.is, 8                        ; 2 uses
  store i64 %i.it, ptr %i.c, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.iu = load i64, ptr %i.f, align 8, !tbaa !118
  %i.iv = add i64 %i.iu, 1                        ; 2 uses
  store i64 %i.iv, ptr %i.f, align 8, !tbaa !118
  %i.iw = load i64, ptr %i.d, align 8, !tbaa !118
  %i.ix = icmp ult i64 %i.iv, %i.iw
  br i1 %i.ix, label %bb.h, label %.loopexit, !llvm.loop !1912

.loopexit:                                        ; preds = %bb.aj, %bb.g, %_ZNSt10unique_ptrIN4LIEF5MachO16RelocationObjectESt14default_deleteIS2_EED2Ev.exit71.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.f
  %.sroa.2.0 = phi i64 [ 5, %bb.f ], [ 4294967301, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.2.1 = phi i64 [ 4294967301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.2.0, %bb.ak ]
  ret i64 %.sroa.2.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser22parse_dyldinfo_rebasesINS0_7details7MachO64EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 31 uses
  %11 = alloca %"class.LIEF::ref_iterator.2662", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.302, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.n = tail call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.m) #26 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.266, i64 35)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.s = load i32, ptr %i.r, align 4, !tbaa !119  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !119  ; 5 uses
  %i.v = icmp eq i32 %i.s, 0
  %i.w = icmp eq i32 %i.u, 0
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.bn, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.s, 0
  %i.y = icmp slt i32 %i.u, 0
  %or.cond3 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 3, ptr nonnull @.str.303, i64 41)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.bn

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !685, !range !256, !noundef !257
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.af, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 10, ptr %i.ag, align 8, !tbaa !343
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i8 0, ptr %i.ah, align 2, !tbaa !253
  %i.ai = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  %i.aj = load ptr, ptr %10, align 8, !tbaa !252  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.af
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = zext nneg i32 %i.s to i64
  %i.am = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, i64 noundef %i.al) #26
  br label %.critedge140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.an = load i64, ptr %i.af, align 8, !tbaa !253
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge140

.critedge140:                                     ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = phi ptr [ %i.am, %bb.g ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge140
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 3, ptr nonnull @.str.304, i64 55)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bn

bb.i:                                             ; preds = %.critedge140
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !329 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
end_hunk_3
begin_hunk_4_@_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO64EEENS_10ok_error_tEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph129, %._crit_edge
  %.sroa.483.0127 = phi ptr [ %i.g, %.lr.ph129 ], [ %i.ea, %._crit_edge ] ; 2 uses
  %.sroa.884.0126 = phi i64 [ 0, %.lr.ph129 ], [ %i.eb, %._crit_edge ]
  %i.r = load ptr, ptr %.sroa.483.0127, align 8, !tbaa !593 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !860, !noalias !1965 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !860, !noalias !1966 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not116121 = icmp eq ptr %i.v, %i.t
  br i1 %.not116121, label %._crit_edge, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %bb.c
  %i.aa = insertelement <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr poison>, ptr %i.r, i64 1
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.loopexit
  %.sroa.474.0123 = phi ptr [ %i.dy, %.loopexit ], [ %i.t, %.lr.ph124.preheader ] ; 2 uses
  %.sroa.8.0122 = phi i64 [ %i.dz, %.loopexit ], [ 0, %.lr.ph124.preheader ]
  %i.ab = load ptr, ptr %.sroa.474.0123, align 8, !tbaa !338 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !606
  %trunc = trunc i32 %i.ad to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %bb.d
    i8 6, label %.thread
    i8 7, label %.thread
    i8 16, label %.thread
    i8 20, label %.thread
  ]

bb.d:                                             ; preds = %.lr.ph124
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !861 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %.thread

.thread:                                          ; preds = %.lr.ph124, %.lr.ph124, %.lr.ph124, %.lr.ph124, %bb.d
  %i.ah = phi i32 [ %i.af, %bb.d ], [ 8, %.lr.ph124 ], [ 8, %.lr.ph124 ], [ 8, %.lr.ph124 ], [ 8, %.lr.ph124 ]
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %.not60118.not = icmp eq i64 %i.ao, 0
  br i1 %.not60118.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !862
  %i.ar = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.0120 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.l ] ; 3 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.aw = mul nuw i64 %.0120, %i.am
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = add nuw nsw i64 %.0120, %i.ar           ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !425 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %.not = icmp ult i64 %i.ay, %i.be
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !385 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !398
  %i.bj = lshr i16 %i.bi, 8                       ; 2 uses
  %i.bk = zext nneg i16 %i.bj to i32              ; 2 uses
  %i.bl = add nsw i16 %i.bj, -1
  %switch = icmp ult i16 %i.bl, 253
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bm = add nsw i32 %i.bk, -1
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !401
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !245 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = icmp ugt i64 %i.bt, %i.bn
  br i1 %i.bu, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !402
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.093 = phi ptr [ %i.bw, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bx = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !1967 ; 10 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bx) #26, !noalias !1967
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 0, ptr %i.by, align 8, !tbaa !863, !noalias !1967
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i8 0, ptr %i.bz, align 8, !tbaa !864, !noalias !1967
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store <2 x ptr> %i.aa, ptr %i.bx, align 8, !noalias !1967
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bg, ptr %i.cb, align 8, !tbaa !207, !noalias !1967
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 %i.bk, ptr %i.cc, align 8, !tbaa !865, !noalias !1967
  store ptr %.093, ptr %i.ca, align 8, !tbaa !199, !noalias !1967
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store i64 %i.ax, ptr %i.cd, align 8, !tbaa !201, !noalias !1967
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 448 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 456 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !866 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 464 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !867
  %.not.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ck = ptrtoint ptr %i.bx to i64
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !869
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !866
  br label %bb.l

bb.i:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !870 ; 10 uses
  %i.cn = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i63 = icmp ne i64 %i.cv, 0
  tail call void @llvm.assume(i1 %.not.i.i63)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #27 ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp
  %i.cz = ptrtoint ptr %i.bx to i64
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !869
  %.not10.i.i.i.i = icmp eq ptr %i.cm, %i.ch
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.da = add i64 %i.cn, -8
  %i.db = sub i64 %i.da, %i.co                    ; 3 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.db, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.de = and i64 %i.db, -8
  %i.df = add i64 %i.de, 8                        ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cx, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.cm, i64 %i.df
  %bound0 = icmp ult ptr %i.cx, %i.dh
  %bound1 = icmp ult ptr %i.cm, %i.dg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader151, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dd, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cx, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cm, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.dl ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.cm, i64 %i.dl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.dm = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep148, align 8, !tbaa !869, !alias.scope !1970
  %wide.load149 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !869, !alias.scope !1970
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !869, !alias.scope !1971, !noalias !1972
  store <2 x i64> %wide.load149, ptr %i.dn, align 8, !tbaa !869, !alias.scope !1971, !noalias !1972
  %1 = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep148, align 8, !tbaa !869, !alias.scope !1970
  store <2 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !869, !alias.scope !1970
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1960

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader151

.lr.ph.i.i.i.i.preheader151:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph.i.i.i.i.preheader ], [ %i.dj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader151, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader151 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader151 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.dp = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !1969
  store i64 %i.dp, ptr %.012.i.i.i.i, align 8, !tbaa !869, !alias.scope !1968
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !1969
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, %i.ch
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1961

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cx, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dj, %middle.block ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dt = load ptr, ptr %i.ci, align 8, !tbaa !867
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.k
  store ptr %i.cx, ptr %i.cf, align 8, !tbaa !870
  store ptr %i.ds, ptr %i.cg, align 8, !tbaa !866
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.dw, ptr %i.ci, align 8, !tbaa !867
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dx = add nuw nsw i64 %.0120, 1               ; 2 uses
  %.not60 = icmp samesign ult i64 %i.dx, %i.ao
  br i1 %.not60, label %bb.e, label %.loopexit, !llvm.loop !1962

.loopexit:                                        ; preds = %bb.l, %.thread, %bb.d, %.lr.ph124
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.474.0123, i64 8
  %i.dz = add nuw nsw i64 %.sroa.8.0122, 1        ; 2 uses
  %.not116 = icmp eq i64 %i.dz, %i.z
  br i1 %.not116, label %._crit_edge, label %.lr.ph124

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.483.0127, i64 8
  %i.eb = add nuw nsw i64 %.sroa.884.0126, 1      ; 2 uses
  %.not115 = icmp eq i64 %i.eb, %i.m
  br i1 %.not115, label %.critedge, label %bb.c

.critedge:                                        ; preds = %._crit_edge, %bb.e, %bb.b, %bb.a
  %.sroa.2.8 = phi i64 [ 4294967301, %bb.a ], [ 4294967301, %bb.b ], [ 5, %bb.e ], [ 4294967301, %._crit_edge ]
  ret i64 %.sroa.2.8
}

declare hidden void @_ZN4LIEF5MachO6HeaderC1INS0_7details14mach_header_64EEERKT_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(32)) unnamed_addr #3

declare noundef ptr @_ZN4LIEF5MachO9to_stringENS0_6Header8CPU_TYPEE(i32 noundef) local_unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details14mach_header_64EEEvPT_(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF6ObjectaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.1544", align 16 ; 5 uses
  %9 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !256, !noundef !257
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !440
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !428
  store i64 250, ptr %i.h, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.l = load ptr, ptr %5, align 8, !tbaa !260
  %i.m = ptrtoint ptr %i.l to i64
  store i64 %i.m, ptr %8, align 16
  %i.n = icmp eq i64 %4, 2
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %3, align 1
  %i.p = icmp ne i16 %i.o, 32123
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %8, align 16, !tbaa !253
  %i.s = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 2 uses
  %.not.i.i11 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i11, label %bb.e, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit: ; preds = %bb.d
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.s to ptr ; 3 uses
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i) #26
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.t
  %i.v = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef nonnull %i.u, ptr nonnull %7) ; 0 uses
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %3, ptr %6, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !434
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %7, ptr %i.x, align 8, !tbaa !431
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 12, ptr %i.y, align 8, !tbaa !577
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %8, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !253
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.z, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !252
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !343
  %i.ae = load ptr, ptr %7, align 8, !tbaa !428
  %i.af = load i64, ptr %i.j, align 8, !tbaa !429
  %i.ag = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #26
  store ptr %i.ab, ptr %9, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ad, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !118
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %2, ptr %i.ah, align 8, !tbaa !583
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !118
  %i.aj = load i8, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %._crit_edge.i.i.i, !prof !584

._crit_edge.i.i.i:                                ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.pre.i.i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !118
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

bb.g:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.al = call noundef i64 (i64, ...) @syscall(i64 noundef 186) #26 ; 2 uses
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  store i64 %i.al, ptr %i.am, align 8, !tbaa !118
  %i.an = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6spdlog7details2os9thread_idEvE3tid) ; 0 uses
  store i8 1, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit: ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ao = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.al, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !585
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %i.ae, ptr %i.as, align 8, !tbaa !260
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !118
  br i1 %i.c, label %bb.h, label %bb.i
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !572  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !2010

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !573  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8, !tbaa !874
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !573
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !873
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i64, ptr %i.p, align 8, !tbaa !118
  store i64 %i.r, ptr %i.q, align 8, !tbaa !118
  %i.s = load i32, ptr %1, align 8, !tbaa !2012
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !2012
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !875
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !572  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %i.x = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !572
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %.0.in41 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.042 = load ptr, ptr %.0.in41, align 8, !tbaa !573 ; 2 uses
  %.not2843 = icmp eq ptr %.042, null
  br i1 %.not2843, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.q
  %.045 = phi ptr [ %.0, %bb.q ], [ %.042, %bb.i ] ; 4 uses
  %.02744 = phi ptr [ %.sink.i.i32, %bb.q ], [ %.sink.i.i, %bb.i ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !874  ; 7 uses
  %.not.i.i.i30 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !875 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !874
  %.not9.i.i.i31 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i31, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !572
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ac, align 8, !tbaa !572
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !573 ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i33, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40, label %.preheader.i.i.i34

.preheader.i.i.i34:                               ; preds = %bb.l, %.preheader.i.i.i34
  %storemerge.i.i.i35 = phi ptr [ %i.ai, %.preheader.i.i.i34 ], [ %i.ag, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !572 ; 2 uses
  %.not11.i.i.i36 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i36, label %bb.m, label %.preheader.i.i.i34, !llvm.loop !2010

bb.m:                                             ; preds = %.preheader.i.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !573 ; 2 uses
  %.not12.i.i.i37 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i38 = select i1 %.not12.i.i.i37, ptr %storemerge.i.i.i35, ptr %i.ak
  store ptr %spec.store.select.i.i.i38, ptr %i.a, align 8, !tbaa !874
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.n:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !573
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.o:                                             ; preds = %bb.j
  store ptr null, ptr %3, align 8, !tbaa !873
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39: ; preds = %.lr.ph
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40: ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39
  %.sink.i.i32 = phi ptr [ %i.am, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39 ], [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 32
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !118
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !118
  %i.aq = load i32, ptr %.045, align 8, !tbaa !2012
  store i32 %i.aq, ptr %.sink.i.i32, align 8, !tbaa !2012
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.02744, i64 16
  store ptr %.sink.i.i32, ptr %i.as, align 8, !tbaa !573
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 8
  store ptr %.02744, ptr %i.at, align 8, !tbaa !875
  %i.au = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !572 ; 2 uses
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %i.aw = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !572
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !573 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !2011

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !876  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2026   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !115
  store i64 %i.r, ptr %i.q, align 8, !tbaa !115
  store ptr null, ptr %2, align 8, !tbaa !115
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !115, !alias.scope !2028
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !115, !alias.scope !2028
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !115, !alias.scope !2027
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !115, !alias.scope !2027
  %3 = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !115, !alias.scope !2028
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !115, !alias.scope !2028
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2016

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !115, !alias.scope !2028
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !115, !alias.scope !2027
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !115, !alias.scope !2028
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2017

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !115, !alias.scope !2031
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !115, !alias.scope !2031
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !115, !alias.scope !2032, !noalias !2033
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !115, !alias.scope !2032, !noalias !2033
  %4 = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !115, !alias.scope !2031
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !115, !alias.scope !2031
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !2024

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2030)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !115, !alias.scope !2030
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !115, !alias.scope !2029
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !115, !alias.scope !2030
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2025

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !877
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6BinaryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !2026
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !876
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !877
  ret void
}

declare void @_ZN4LIEF5MachO17DyldChainedFixupsC1ERKNS0_7details21linkedit_data_commandE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.2523", align 16 ; 7 uses
  %11 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !256, !noundef !257
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !440
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !428
  store i64 250, ptr %i.h, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  %i.l = load i32, ptr %5, align 4, !tbaa !119, !noalias !2036
  store i32 %i.l, ptr %10, align 16, !tbaa !253, !alias.scope !2036
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = load ptr, ptr %6, align 8, !tbaa !252
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !343
  store ptr %i.n, ptr %i.m, align 16, !tbaa !253
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.p, ptr %i.q, align 8, !tbaa !253
  %i.r = icmp eq i64 %4, 2
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.s = load i16, ptr %3, align 1
  %i.t = icmp ne i16 %i.s, 32123
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %10, align 16, !tbaa !253 ; 2 uses
  %i.w = trunc i128 %.sroa.0.0.copyload.sink66.i to i32 ; 4 uses
  %i.x = or i32 %i.w, 1
  %i.y = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.x, i1 true)
  %i.z = xor i32 %i.y, 31
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !118
  %i.ad = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  %i.ag = lshr i64 %i.af, 32
  %i.ah = trunc nuw i64 %i.ag to i32              ; 2 uses
  %i.ai = ashr i64 %i.af, 32                      ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, 250
  br i1 %i.aj, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ai, i64 375) ; 2 uses
  %i.ak = call noalias ptr @malloc(i64 noundef %spec.select.i) #31 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i29, label %bb.e, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %7, align 8, !tbaa !117
  %i.al = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.al) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.ak, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.d, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.am = phi ptr [ %i.ak, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.k, %bb.d ] ; 3 uses
  store i64 %i.ai, ptr %i.j, align 8, !tbaa !429
  %i.an = icmp ugt i32 %i.w, 99
  br i1 %i.an, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i13

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.ao, %.lr.ph.i.i.i ], [ %i.ah, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i32 [ %i.aw, %.lr.ph.i.i.i ], [ %i.w, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.ao = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = urem i32 %.01819.i.i.i, 100
  %i.as = shl nuw nsw i32 %i.ar, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2
  store i16 %i.av, ptr %i.aq, align 1
  %i.aw = udiv i32 %.01819.i.i.i, 100             ; 2 uses
  %i.ax = icmp ugt i32 %.01819.i.i.i, 9999
  br i1 %i.ax, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i13, !llvm.loop !11

._crit_edge.i.i.i13:                              ; preds = %.lr.ph.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread
  %.018.lcssa.i.i.i = phi i32 [ %i.w, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.aw, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.ah, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.ao, %.lr.ph.i.i.i ] ; 2 uses
  %i.ay = icmp samesign ugt i32 %.018.lcssa.i.i.i, 9
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i13
  %i.az = add i32 %.0.lcssa.i.i.i, -2
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ba
  %i.bc = shl nuw nsw i32 %.018.lcssa.i.i.i, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  store i16 %i.bf, ptr %i.bb, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i13
  %i.bg = trunc nuw nsw i32 %.018.lcssa.i.i.i to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = add i32 %.0.lcssa.i.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %3, ptr %8, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !118
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.bl, align 8, !tbaa !434
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %9, ptr %i.bm, align 8, !tbaa !431
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 210, ptr %i.bn, align 8, !tbaa !577
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %10, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !253
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr null, ptr %i.bo, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
end_hunk_5
begin_hunk_6_@_ZN4LIEF5MachO12BinaryParser12parse_symtabINS0_7details7MachO64EEENS_10ok_error_tERNS0_13SymbolCommandERNS_10SpanStreamES9_:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.249, i64 20, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.loopexit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i64 [ %i.u, %bb.c ], [ %.pre.i, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !2061
  store i8 1, ptr %i.l, align 8, !tbaa !2060, !alias.scope !2058
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !2058
  %i.af = add i64 %i.ae, 16
  store i64 %i.af, ptr %i.d, align 8, !tbaa !331, !noalias !2056
  %i.ag = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2062 ; 9 uses
  call void @_ZN4LIEF5MachO6SymbolC1ERKNS0_7details8nlist_64E(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %7) #26, !noalias !2062
  %i.ah = load i32, ptr %7, align 8, !tbaa !2064  ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ai = zext i32 %i.ah to i64
  call void @_ZNK4LIEF12BinaryStream14peek_string_atB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.369") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ai, i64 noundef -1) #26
  %i.aj = load i8, ptr %i.m, align 8, !tbaa !400, !range !256, !noundef !257
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store ptr %i.n, ptr %9, align 8, !tbaa !342
  %i.al = load ptr, ptr %8, align 8, !tbaa !252   ; 2 uses
  %i.am = load i64, ptr %i.o, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.am, ptr %i.a, align 8, !tbaa !118
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %bb.h, label %._crit_edge.i.i

bb.h:                                             ; preds = %bb.g
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ao, ptr %9, align 8, !tbaa !252
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.ap, ptr %i.n, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %i.ao, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  switch i64 %i.am, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !253
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.al, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.as = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  store i64 %i.as, ptr %i.p, align 8, !tbaa !343
  %i.at = load ptr, ptr %9, align 8, !tbaa !252
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 %9) #26
  %i.ay = load ptr, ptr %9, align 8, !tbaa !252   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.n
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !253
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %8)
  store ptr %i.ag, ptr %i.bc, align 8, !tbaa !385
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.bd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.250, i64 38, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i8, ptr %i.m, align 8, !tbaa !400, !range !256, !noundef !257
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.m, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %8, align 8, !tbaa !252   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.r
  br i1 %i.bi, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !253
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #29
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.m, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !117
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(56) %i.ag) #26
  store i64 %i.bo, ptr %i.c, align 8, !tbaa !118
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  store ptr %i.ag, ptr %i.bp, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !115 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 168 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !409 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 176 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !410
  %.not.i.i7 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i7, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = ptrtoint ptr %i.ag to i64
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !385
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !409
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !737 ; 10 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.q, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i8)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #27 ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %i.cl = ptrtoint ptr %i.ag to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !385
  %.not10.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cm = add i64 %i.bz, -8
  %i.cn = sub i64 %i.cm, %i.ca                    ; 3 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader31, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cq = and i64 %i.cn, -8
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cj, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cr
  %bound0 = icmp ult ptr %i.cj, %i.ct
  %bound1 = icmp ult ptr %i.by, %i.cs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  %i.cu = shl i64 %n.vec, 3                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cj, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.by, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.cx ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.by, i64 %i.cx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  %i.cy = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !385, !alias.scope !2067
  %wide.load29 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !385, !alias.scope !2067
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !385, !alias.scope !2068, !noalias !2069
  store <2 x i64> %wide.load29, ptr %i.cz, align 8, !tbaa !385, !alias.scope !2068, !noalias !2069
  %10 = getelementptr i8, ptr %next.gep28, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep28, align 8, !tbaa !385, !alias.scope !2067
  store <2 x ptr> splat (ptr null), ptr %10, align 8, !tbaa !385, !alias.scope !2067
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !2054

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader31

.lr.ph.i.i.i.i.preheader31:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader31, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader31 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  call void @llvm.experimental.noalias.scope.decl(metadata !2066)
  %i.db = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2066
  store i64 %i.db, ptr %.012.i.i.i.i, align 8, !tbaa !385, !alias.scope !2065
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2066
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %i.bt
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2055

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cj, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.cv, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !410
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dh) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.r
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !737
  store ptr %i.de, ptr %i.bs, align 8, !tbaa !409
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.di, ptr %i.bu, align 8, !tbaa !410
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !118
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.b, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !331
  %i.dm = load ptr, ptr %2, align 8, !tbaa !117
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef i64 %i.do(ptr noundef nonnull align 8 dereferenceable(24) %2) #26, !inline_history !5
  %i.dq = icmp ult i64 %i.dl, %i.dp
  br i1 %i.dq, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.a, %.thread
  %.sroa.2.2 = phi i64 [ 1, %.thread ], [ 4294967297, %bb.a ], [ 4294967297, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i64 %.sroa.2.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !118    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !118
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !118
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !118
  store i64 %i.n, ptr %i.m, align 8, !tbaa !2070
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !226
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !118
  %i.v = load i64, ptr %i.t, align 8, !tbaa !118
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !241
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !241
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #29
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOmEESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

declare void @_ZN4LIEF11swap_endianINS_5MachO7details8nlist_64EEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZN4LIEF5MachO6SymbolC1ERKNS0_7details8nlist_64E(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !241
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !118
  %i.i = load i64, ptr %2, align 8, !tbaa !118
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !224 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !118    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !118  ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !224 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2071

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_6
begin_hunk_7_@_ZN4LIEF5MachO12BinaryParser7do_bindINS0_7details7MachO64EEENS_10ok_error_tENS0_15DyldBindingInfo5CLASSEhhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEilbbPvm:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !401
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !245 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %.not22 = icmp ult i64 %i.ar, %i.aj
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr [8 x i8], ptr %i.an, i64 %i.aj
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !402
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.au, ptr %i.av, align 8, !tbaa !199
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.not79 = icmp eq ptr %i.ax, null
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !389
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !115
  %i.bc = tail call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.az, %bb.h ], [ %i.bc, %bb.i ] ; 3 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.0, ptr %i.bd, align 8, !tbaa !207
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !891
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bh = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2108 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bh, i8 0, i64 96, i1 false), !noalias !2108
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.bh) #26, !noalias !2108
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !342, !noalias !2108
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %i.bk, align 16, !tbaa !343, !noalias !2108
  store i8 0, ptr %i.bj, align 8, !tbaa !253, !noalias !2108
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !noalias !2108
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.bh, align 16, !tbaa !117, !noalias !2108
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false), !noalias !2108
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i32 2, ptr %i.bq, align 8, !tbaa !395
  store i8 0, ptr %i.bm, align 8, !tbaa !396
  store i8 0, ptr %i.bn, align 1, !tbaa !397
  store i16 0, ptr %i.bo, align 2, !tbaa !398
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.br, ptr %17, align 8, !tbaa !342
  %i.bs = load ptr, ptr %5, align 8, !tbaa !252   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !118
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %bb.m, label %._crit_edge.i.i

bb.m:                                             ; preds = %bb.l
  %i.bw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bw, ptr %17, align 8, !tbaa !252
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.l
  %i.by = phi ptr [ %i.bw, %bb.m ], [ %i.br, %bb.l ] ; 2 uses
  switch i64 %i.bu, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !253
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bs, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.n, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !343
  %i.cc = load ptr, ptr %17, align 8, !tbaa !252
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ce = load ptr, ptr %i.bh, align 16, !tbaa !117
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 %17) #26
  %i.ch = load ptr, ptr %17, align 8, !tbaa !252  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.br
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cj = load i64, ptr %i.br, align 8, !tbaa !253
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.bh, ptr %i.cl, align 8, !tbaa !207
  store ptr %i.ag, ptr %i.bp, align 16, !tbaa !891
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !115 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 160 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 168 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !409 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 176 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !410
  %.not.i.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = ptrtoint ptr %i.bh to i64
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !385
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !409
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !737 ; 7 uses
  %i.cw = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #27 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = ptrtoint ptr %i.bh to i64
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !385
  %.not10.i.i.i.i = icmp eq ptr %i.cv, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.dg, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cv, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dq ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.cv, i64 %i.dq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.dr = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep100, align 8, !tbaa !385, !alias.scope !2110
  %wide.load101 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !385, !alias.scope !2110
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !385, !alias.scope !2109
  store <2 x i64> %wide.load101, ptr %i.ds, align 8, !tbaa !385, !alias.scope !2109
  %18 = getelementptr i8, ptr %next.gep100, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep100, align 8, !tbaa !385, !alias.scope !2110
  store <2 x ptr> splat (ptr null), ptr %18, align 8, !tbaa !385, !alias.scope !2110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !2100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader119

.lr.ph.i.i.i.i.preheader119:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader119, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader119 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader119 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.du = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2110
  store i64 %i.du, ptr %.012.i.i.i.i, align 8, !tbaa !385, !alias.scope !2109
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2110
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dv, %i.cq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2101

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.do, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !410
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.ea) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.s
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !737
  store ptr %i.dx, ptr %i.cp, align 8, !tbaa !409
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.eb, ptr %i.cr, align 8, !tbaa !410
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.k
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !115
  %i.ee = call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ed) #26 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 200 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 208 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !892 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 216 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !893
  %.not.i.i24 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not.i.i24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = ptrtoint ptr %i.ag to i64
  store i64 %i.el, ptr %i.ei, align 8, !tbaa !895
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !892
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !896 ; 7 uses
  %i.eo = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64               ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %i.es = ashr exact i64 %i.eq, 3                 ; 3 uses
  %.sroa.speculated.i.i27 = call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i27, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 1152921504606846975)
  %i.ew = select i1 %i.eu, i64 1152921504606846975, i64 %i.ev ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.ew, 0
  call void @llvm.assume(i1 %.not.i.i28)
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #27 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  %i.fa = ptrtoint ptr %i.ag to i64
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !895
  %.not10.i.i.i.i29 = icmp eq ptr %i.en, %i.ei
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30.preheader

.lr.ph.i.i.i.i30.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.fb = add i64 %i.eo, -8
  %i.fc = sub i64 %i.fb, %i.ep                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check104 = icmp ult i64 %i.fc, 24
  br i1 %min.iters.check104, label %.lr.ph.i.i.i.i30.preheader118, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph.i.i.i.i30.preheader
  %n.vec106 = and i64 %i.fe, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec106, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ey, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.en, i64 %i.ff
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next113, %vector.body107 ] ; 2 uses
  %i.fi = shl i64 %index108, 3                    ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.ey, i64 %i.fi ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.en, i64 %i.fi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.fj = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load111 = load <2 x i64>, ptr %next.gep110, align 8, !tbaa !895, !alias.scope !2112
  %wide.load112 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !895, !alias.scope !2112
  %i.fk = getelementptr i8, ptr %next.gep109, i64 16
  store <2 x i64> %wide.load111, ptr %next.gep109, align 8, !tbaa !895, !alias.scope !2111
  store <2 x i64> %wide.load112, ptr %i.fk, align 8, !tbaa !895, !alias.scope !2111
  %19 = getelementptr i8, ptr %next.gep110, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep110, align 8, !tbaa !895, !alias.scope !2112
  store <2 x ptr> splat (ptr null), ptr %19, align 8, !tbaa !895, !alias.scope !2112
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.fl, label %middle.block114, label %vector.body107, !llvm.loop !2105

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %i.fe, %n.vec106
  br i1 %cmp.n115, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30.preheader118

.lr.ph.i.i.i.i30.preheader118:                    ; preds = %.lr.ph.i.i.i.i30.preheader, %middle.block114
  %.012.i.i.i.i31.ph = phi ptr [ %i.ey, %.lr.ph.i.i.i.i30.preheader ], [ %i.fg, %middle.block114 ]
  %.0911.i.i.i.i32.ph = phi ptr [ %i.en, %.lr.ph.i.i.i.i30.preheader ], [ %i.fh, %middle.block114 ]
  br label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph.i.i.i.i30.preheader118, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i30 ], [ %.012.i.i.i.i31.ph, %.lr.ph.i.i.i.i30.preheader118 ] ; 2 uses
  %.0911.i.i.i.i32 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i30 ], [ %.0911.i.i.i.i32.ph, %.lr.ph.i.i.i.i30.preheader118 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  %i.fm = load i64, ptr %.0911.i.i.i.i32, align 8, !tbaa !895, !alias.scope !2112
  store i64 %i.fm, ptr %.012.i.i.i.i31, align 8, !tbaa !895, !alias.scope !2111
  store ptr null, ptr %.0911.i.i.i.i32, align 8, !tbaa !895, !alias.scope !2112
  %i.fn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i32, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.fn, %i.ei
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30, !llvm.loop !2106

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i30, %middle.block114, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.ey, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.fg, %middle.block114 ], [ %i.fo, %.lr.ph.i.i.i.i30 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i34, i64 8
  %.not.i23.i41 = icmp eq ptr %i.en, null
  br i1 %.not.i23.i41, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.fq = load ptr, ptr %i.ej, align 8, !tbaa !893
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.fs) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.x
  store ptr %i.ey, ptr %i.eg, align 8, !tbaa !896
  store ptr %i.fp, ptr %i.eh, align 8, !tbaa !892
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.ft, ptr %i.ej, align 8, !tbaa !893
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.u
  %i.fu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.fv = call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_15DyldBindingInfo5CLASSE(i64 noundef %1) #26
  store ptr %i.fv, ptr %i.d, align 8, !tbaa !260
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 1, ptr nonnull @.str.288, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.fy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 4, ptr nonnull @.str.266, i64 35)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.ga = load ptr, ptr %i.ag, align 8, !tbaa !117
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #26, !inline_history !81
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i, %.thread, %bb.c
  %.sroa.4.1 = phi i64 [ 5, %bb.c ], [ 4294967298, %.thread ], [ 2, %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %.sroa.074.0.insert.insert = phi i64 [ %.sroa.4.1, %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit ], [ 5, %bb.b ]
  ret i64 %.sroa.074.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE9push_backEOS3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(50) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !889  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !890
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !342
  %i.f = load ptr, ptr %1, align 8, !tbaa !252    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !343  ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !252
  %i.m = load i64, ptr %i.g, align 8, !tbaa !253
  store i64 %i.m, ptr %i.e, align 8, !tbaa !253
  br label %_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i

_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !343
  store ptr %i.g, ptr %1, align 8, !tbaa !252
  store i64 0, ptr %i.n, align 8, !tbaa !343
  store i8 0, ptr %i.g, align 8, !tbaa !253
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.q, ptr noundef nonnull align 8 dereferenceable(18) %i.r, i64 18, i1 false)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !889
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %i.t, ptr %i.a, align 8, !tbaa !889
  br label %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !888 ; 5 uses
  %i.u = ptrtoint ptr %i.b to i64
  %i.v = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775800
  br i1 %i.x, label %bb.e, label %_ZNKSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.y = sdiv exact i64 %i.w, 56                  ; 3 uses
  %i.z = icmp eq ptr %i.b, %.val.i.i              ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.z, i64 1, i64 %i.y
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 164703072086692425)
  %i.ad = select i1 %i.ab, i64 164703072086692425, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = mul nuw nsw i64 %i.ad, 56
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #27 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !342
  %i.ai = load ptr, ptr %1, align 8, !tbaa !252   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !343 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !252
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !253
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !253
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !343
  br label %_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i.i

_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.aq = phi i64 [ %i.am, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !343
  store ptr %i.aj, ptr %1, align 8, !tbaa !252
  store i64 0, ptr %i.ar, align 8, !tbaa !343
  store i8 0, ptr %i.aj, align 8, !tbaa !253
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.at, ptr noundef nonnull align 8 dereferenceable(18) %i.au, i64 18, i1 false)
  br i1 %i.z, label %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit30.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i.i, %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.af, %_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i.i ] ; 6 uses
  %.092.i.i.i.i.i = phi ptr [ %i.bj, %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %.val.i.i, %_ZN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataC2EOS2_.exit.i.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  %i.av = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO64EEENS_10ok_error_tEhhmPv:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !223 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ar, %bb.f ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.as, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !118
  %i.av = icmp ult i64 %i.au, %i.x                ; 2 uses
  %.19.i.i.i = select i1 %i.av, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aw = icmp eq ptr %.19.i.i.i, %i.as
  br i1 %i.aw, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !118
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !226
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !227
  br label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.f, %bb.g, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  switch i8 %1, label %bb.k [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.i
    i8 102, label %bb.j
  ]

bb.h:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i8 64, ptr %i.bd, align 8, !tbaa !218
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i8 32, ptr %i.be, align 8, !tbaa !218
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i8 64, ptr %i.bf, align 8, !tbaa !218
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.bg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.291, i64 33, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !224 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.l
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !118 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i12
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i12 ], [ %.020.i.i.i, %bb.m ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !118 ; 2 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm               ; 2 uses
  %.in.v.i.i.i = select i1 %i.bn, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i13, label %._crit_edge.i.i.i, label %bb.m, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %bb.m
  br i1 %i.bn, label %._crit_edge.thread.i.i.i, label %bb.o

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.l
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.bj, %bb.l ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !239
  %i.bq = icmp eq ptr %.019.lcssa29.i.i.i, %i.bp
  br i1 %i.bq, label %select.unfold.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.br = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !118
  %.pre18.i.i = load i64, ptr %i.c, align 8, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %i.bs = phi i64 [ %.pre18.i.i, %bb.n ], [ %i.bk, %._crit_edge.i.i.i ]
  %i.bt = phi i64 [ %.pre.i.i, %bb.n ], [ %i.bm, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %select.unfold.i.i, label %bb.v

select.unfold.i.i:                                ; preds = %bb.o, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.o ] ; 3 uses
  %i.bv = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.bj
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !118
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !118
  %i.bz = icmp ult i64 %i.bx, %i.by
  br label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i, %bb.p
  %i.ca = phi i1 [ %i.bz, %bb.p ], [ true, %select.unfold.i.i ]
  %i.cb = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !118
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !118
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bj) #26
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !241
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !241
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 200 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !230 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 208 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !231
  %.not.i.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = ptrtoint ptr %i.ae to i64
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !233
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !230
  br label %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !234 ; 7 uses
  %i.cp = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.t, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i15)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #27 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %i.db = ptrtoint ptr %i.ae to i64
  store i64 %i.db, ptr %i.da, align 8, !tbaa !233
  %.not10.i.i.i.i = icmp eq ptr %i.co, %i.cj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dc = add i64 %i.cp, -8
  %i.dd = sub i64 %i.dc, %i.cq                    ; 2 uses
  %i.de = lshr i64 %i.dd, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dd, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.df, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cz, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.co, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.dj ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.co, i64 %i.dj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.dk = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep60, align 8, !tbaa !233, !alias.scope !2128
  %wide.load61 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !233, !alias.scope !2128
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !233, !alias.scope !2127
  store <2 x i64> %wide.load61, ptr %i.dl, align 8, !tbaa !233, !alias.scope !2127
  %10 = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep60, align 8, !tbaa !233, !alias.scope !2128
  store <2 x ptr> splat (ptr null), ptr %10, align 8, !tbaa !233, !alias.scope !2128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !2124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader63

.lr.ph.i.i.i.i.preheader63:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader63, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2127)
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.dn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !2128
  store i64 %i.dn, ptr %.012.i.i.i.i, align 8, !tbaa !233, !alias.scope !2127
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !2128
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.cj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2125

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cz, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dh, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.co, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !231
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.dt) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.u
  store ptr %i.cz, ptr %i.ch, align 8, !tbaa !234
  store ptr %i.dq, ptr %i.ci, align 8, !tbaa !230
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.du, ptr %i.ck, align 8, !tbaa !231
  br label %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %bb.o
  %i.dv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 1, ptr nonnull @.str.292, i64 55, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i: ; preds = %bb.e, %bb.v
  %.sroa.4.0 = phi i64 [ 2, %bb.e ], [ 4294967298, %bb.v ]
  %i.dx = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #26, !inline_history !83
  br label %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.r, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i, %bb.c
  %.sroa.4.1 = phi i64 [ 5, %bb.c ], [ %.sroa.4.0, %_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i ], [ 4294967298, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ 4294967298, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %.sroa.033.0.insert.insert = phi i64 [ %.sroa.4.1, %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit ], [ 5, %bb.b ]
  ret i64 %.sroa.033.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging6Logger4warnIJtmmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !173
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKtRKmS5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 3, ptr nonnull %1, i64 %i.b, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE7reserveEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #1 align 2 {
bb.a:
  %.val9 = load ptr, ptr %0, align 8, !tbaa !888
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8, !tbaa !890
  %i.b = ptrtoint ptr %.val10 to i64
  %i.c = ptrtoint ptr %.val9 to i64               ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 56
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_M_allocateEm.exit, label %bb.d

_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val8 = load ptr, ptr %i.g, align 8, !tbaa !889
  %i.h = ptrtoint ptr %.val8 to i64
  %i.i = sub i64 %i.h, %i.c
  %i.j = mul nuw nsw i64 %1, 56
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27 ; 4 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !888    ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !889  ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.03.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_M_allocateEm.exit ] ; 6 uses
  %.092.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.l, %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_M_allocateEm.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %i.n = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16 ; 3 uses
  store ptr %i.n, ptr %.03.i.i.i, align 8, !tbaa !342, !alias.scope !2132
  %i.o = load ptr, ptr %.092.i.i.i, align 8, !tbaa !252, !alias.scope !2133 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16 ; 5 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !343, !alias.scope !2133 ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.u, i1 false), !alias.scope !2134
  br label %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.o, ptr %.03.i.i.i, align 8, !tbaa !252, !alias.scope !2132
  %i.v = load i64, ptr %i.p, align 8, !tbaa !253, !alias.scope !2133
  store i64 %i.v, ptr %i.n, align 8, !tbaa !253, !alias.scope !2132
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !343, !alias.scope !2133
  br label %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.w = phi i64 [ %i.s, %bb.b ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !343, !alias.scope !2132
  store ptr %i.p, ptr %.092.i.i.i, align 8, !tbaa !252, !alias.scope !2133
  store i64 0, ptr %i.x, align 8, !tbaa !343, !alias.scope !2133
  store i8 0, ptr %i.p, align 8, !tbaa !253, !alias.scope !2133
  %i.z = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.z, ptr noundef nonnull align 8 dereferenceable(18) %i.aa, i64 18, i1 false), !alias.scope !2134
  %i.ab = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 56
  %.not.i.i.i = icmp eq ptr %i.ab, %i.m
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !82

_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataES3_SaIS3_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !888
  br label %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split, %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_M_allocateEm.exit
  %i.ad = phi ptr [ %.pr, %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split ], [ %i.l, %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i11 = icmp eq ptr %i.ad, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !890
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ah) #29
  br label %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !888
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !889
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !890
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4LIEF5MachO12_GLOBAL__N_116ThreadedBindDataESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

declare noundef ptr @_ZN4LIEF5MachO9to_stringENS0_15DyldBindingInfo5CLASSE(i64 noundef) local_unnamed_addr #3

declare void @_ZN4LIEF5MachO15DyldBindingInfoC1ENS1_5CLASSENS1_4TYPEEmlibbm(ptr noundef nonnull align 8 dereferenceable(96), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef) unnamed_addr #3

declare noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.2675", align 16 ; 9 uses
  %11 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
end_hunk_8
begin_hunk_9_@_ZN4LIEF5MachO12BinaryParser8do_fixupINS0_7details7MachO64EEENS_10ok_error_tENS0_19DYLD_CHAINED_FORMATEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElb:bb.a
  call void @_ZN6spdlog6logger4log_IJRKbEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 1, ptr nonnull @.str.348, i64 17, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 1, ptr nonnull @.str.349, i64 17, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %.not55 = icmp eq ptr %i.al, null
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !389
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !115
  %i.aq = call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.an, %bb.f ], [ %i.aq, %bb.g ] ; 5 uses
  %.not12 = icmp eq ptr %.0, null
  br i1 %.not12, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.0, ptr %i.ar, align 8, !tbaa !207
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.e, ptr %i.as, align 8, !tbaa !891
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 58
  %i.au = load i16, ptr %i.at, align 2, !tbaa !398
  %i.av = lshr i16 %i.au, 8
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !119
  %i.ay = icmp eq i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !199
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 80
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !915
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.be = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2169 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.be, i8 0, i64 96, i1 false), !noalias !2169
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.be) #26, !noalias !2169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !342, !noalias !2169
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.bh, align 16, !tbaa !343, !noalias !2169
  store i8 0, ptr %i.bg, align 8, !tbaa !253, !noalias !2169
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !noalias !2169
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.be, align 16, !tbaa !117, !noalias !2169
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false), !noalias !2169
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 0, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !199
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store ptr %i.bm, ptr %i.bn, align 16, !tbaa !915
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bo, ptr %11, align 8, !tbaa !342
  %i.bp = load ptr, ptr %3, align 8, !tbaa !252   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.br, ptr %i.a, align 8, !tbaa !118
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bt, ptr %11, align 8, !tbaa !252
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.bu, ptr %i.bo, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.bv = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %bb.k ] ; 2 uses
  switch i64 %i.br, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !253
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bp, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !343
  %i.bz = load ptr, ptr %11, align 8, !tbaa !252
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cb = load ptr, ptr %i.be, align 16, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 %11) #26
  %i.ce = load ptr, ptr %11, align 8, !tbaa !252  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bo
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cg = load i64, ptr %i.bo, align 8, !tbaa !253
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.be, ptr %i.ci, align 8, !tbaa !207
  store ptr %i.e, ptr %i.bk, align 16, !tbaa !891
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !115 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 168 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !409 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 176 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !410
  %.not.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = ptrtoint ptr %i.be to i64
  store i64 %i.cq, ptr %i.cn, align 8, !tbaa !385
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !409
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !737 ; 7 uses
  %i.ct = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 3 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.q, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i15)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #27 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  %i.df = ptrtoint ptr %i.be to i64
  store i64 %i.df, ptr %i.de, align 8, !tbaa !385
  %.not10.i.i.i.i = icmp eq ptr %i.cs, %i.cn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dg = add i64 %i.ct, -8
  %i.dh = sub i64 %i.dg, %i.cu                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dh, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.dj, 4611686018427387900     ; 3 uses
  %i.dk = shl i64 %n.vec, 3                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dd, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cs, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dn ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.cs, i64 %i.dn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  %i.do = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep73, align 8, !tbaa !385, !alias.scope !2171
  %wide.load74 = load <2 x i64>, ptr %i.do, align 8, !tbaa !385, !alias.scope !2171
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !385, !alias.scope !2170
  store <2 x i64> %wide.load74, ptr %i.dp, align 8, !tbaa !385, !alias.scope !2170
  %12 = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep73, align 8, !tbaa !385, !alias.scope !2171
  store <2 x ptr> splat (ptr null), ptr %12, align 8, !tbaa !385, !alias.scope !2171
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader92

.lr.ph.i.i.i.i.preheader92:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader92, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  %i.dr = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2171
  store i64 %i.dr, ptr %.012.i.i.i.i, align 8, !tbaa !385, !alias.scope !2170
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2171
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, %i.cn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2162

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dd, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dl, %middle.block ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dv = load ptr, ptr %i.co, align 8, !tbaa !410
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.dx) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.r
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !737
  store ptr %i.du, ptr %i.cm, align 8, !tbaa !409
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dy, ptr %i.co, align 8, !tbaa !410
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.i, %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !164 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 144 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !167 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 152 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !916
  %.not.i.i13 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i.i13, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.eg = ptrtoint ptr %i.e to i64
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !175
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !168 ; 7 uses
  %i.ej = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i16 = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i16, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #27 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  %i.ev = ptrtoint ptr %i.e to i64
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !175
  %.not10.i.i.i.i18 = icmp eq ptr %i.ei, %i.ed
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ew = add i64 %i.ej, -8
  %i.ex = sub i64 %i.ew, %i.ek                    ; 2 uses
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ex, 24
  br i1 %min.iters.check77, label %.lr.ph.i.i.i.i19.preheader91, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.i.i19.preheader
  %n.vec79 = and i64 %i.ez, 4611686018427387900   ; 3 uses
  %i.fa = shl i64 %n.vec79, 3                     ; 2 uses
  %i.fb = getelementptr i8, ptr %i.et, i64 %i.fa  ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ei, i64 %i.fa
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 2 uses
  %i.fd = shl i64 %index81, 3                     ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.et, i64 %i.fd ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.ei, i64 %i.fd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %i.fe = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load84 = load <2 x i64>, ptr %next.gep83, align 8, !tbaa !175, !alias.scope !2173
  %wide.load85 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !175, !alias.scope !2173
  %i.ff = getelementptr i8, ptr %next.gep82, i64 16
  store <2 x i64> %wide.load84, ptr %next.gep82, align 8, !tbaa !175, !alias.scope !2172
  store <2 x i64> %wide.load85, ptr %i.ff, align 8, !tbaa !175, !alias.scope !2172
  %13 = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep83, align 8, !tbaa !175, !alias.scope !2173
  store <2 x ptr> splat (ptr null), ptr %13, align 8, !tbaa !175, !alias.scope !2173
  %index.next86 = add nuw i64 %index81, 4         ; 2 uses
  %i.fg = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.fg, label %middle.block87, label %vector.body80, !llvm.loop !2166

middle.block87:                                   ; preds = %vector.body80
  %cmp.n88 = icmp eq i64 %i.ez, %n.vec79
  br i1 %cmp.n88, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader91

.lr.ph.i.i.i.i19.preheader91:                     ; preds = %.lr.ph.i.i.i.i19.preheader, %middle.block87
  %.012.i.i.i.i20.ph = phi ptr [ %i.et, %.lr.ph.i.i.i.i19.preheader ], [ %i.fb, %middle.block87 ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.ei, %.lr.ph.i.i.i.i19.preheader ], [ %i.fc, %middle.block87 ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader91, %.lr.ph.i.i.i.i19
  %.012.i.i.i.i20 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i19 ], [ %.012.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader91 ] ; 2 uses
  %.0911.i.i.i.i21 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i19 ], [ %.0911.i.i.i.i21.ph, %.lr.ph.i.i.i.i19.preheader91 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %i.fh = load i64, ptr %.0911.i.i.i.i21, align 8, !tbaa !175, !alias.scope !2173
  store i64 %i.fh, ptr %.012.i.i.i.i20, align 8, !tbaa !175, !alias.scope !2172
  store ptr null, ptr %.0911.i.i.i.i21, align 8, !tbaa !175, !alias.scope !2173
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i21, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.fi, %i.ed
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19, !llvm.loop !2167

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i19, %middle.block87, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i23 = phi ptr [ %i.et, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.fb, %middle.block87 ], [ %i.fj, %.lr.ph.i.i.i.i19 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i23, i64 8
  %.not.i23.i30 = icmp eq ptr %i.ei, null
  br i1 %.not.i23.i30, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.fl = load ptr, ptr %i.ee, align 8, !tbaa !916
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.fn) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.v
  store ptr %i.et, ptr %i.eb, align 8, !tbaa !168
  store ptr %i.fk, ptr %i.ec, align 8, !tbaa !167
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fo, ptr %i.ee, align 8, !tbaa !916
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKmRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %8 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %9 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %10 = alloca %"struct.fmt::v12::detail::format_arg_store.2798", align 16 ; 6 uses
  %11 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !256, !noundef !257
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !440
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !428
  store i64 250, ptr %i.h, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.l = load i64, ptr %5, align 8, !tbaa !118, !noalias !2176
  store i64 %i.l, ptr %10, align 16, !tbaa !253, !alias.scope !2176
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = load ptr, ptr %6, align 8, !tbaa !260, !noalias !2176
  store ptr %i.n, ptr %i.m, align 16, !tbaa !253, !alias.scope !2176
  %i.o = icmp eq i64 %4, 2
  br i1 %i.o, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = load i16, ptr %3, align 1
  %i.q = icmp ne i16 %i.p, 32123
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %10, align 16, !tbaa !253
  %i.t = trunc i128 %.sroa.0.0.copyload.sink66.i to i64 ; 5 uses
  %i.u = or i64 %i.t, 1
  %i.v = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !253   ; 2 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !118
  %i.ad = icmp ugt i64 %i.ac, %i.t
  %.neg.i.i.i.i = sext i1 %i.ad to i32
  %i.ae = add nsw i32 %.neg.i.i.i.i, %i.z         ; 4 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp ugt i32 %i.ae, 250
  br i1 %i.ag, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.af, i64 375) ; 2 uses
  %i.ah = call noalias ptr @malloc(i64 noundef %spec.select.i) #31 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i27, label %bb.e, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %7, align 8, !tbaa !117
  %i.ai = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.ai) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.ah, ptr %9, align 8, !tbaa !428
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.d, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.aj = phi ptr [ %i.ah, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.k, %bb.d ] ; 3 uses
  store i64 %i.af, ptr %i.j, align 8, !tbaa !429
  %i.ak = icmp ugt i64 %i.t, 99
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i13

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.al, %.lr.ph.i.i.i ], [ %i.ae, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i ], [ %i.t, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.al = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = urem i64 %.01819.i.i.i, 100
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  store i16 %i.ar, ptr %i.an, align 1
  %i.as = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.at = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.at, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i13, !llvm.loop !12

._crit_edge.i.i.i13:                              ; preds = %.lr.ph.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread
  %.018.lcssa.i.i.i = phi i64 [ %i.t, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.as, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.ae, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.al, %.lr.ph.i.i.i ] ; 2 uses
  %i.au = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i13
  %i.av = add i32 %.0.lcssa.i.i.i, -2
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aw
  %i.ay = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  store i16 %i.ba, ptr %i.ax, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i13
  %i.bb = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = add i32 %.0.lcssa.i.i.i, -1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.be
  store i8 %i.bc, ptr %i.bf, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %3, ptr %8, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !118
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !434
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %9, ptr %i.bh, align 8, !tbaa !431
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 196, ptr %i.bi, align 8, !tbaa !577
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %10, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !253
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr null, ptr %i.bj, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.g, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
end_hunk_9
begin_hunk_10_@_ZN4LIEF5MachO12BinaryParser19parse_load_commandsINS0_7details7MachO32EEENS_10ok_error_tEv:bb.a
  %i.lh = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 5 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !331, !noalias !2472 ; 2 uses
  store i64 %.01991009, ptr %i.li, align 8, !tbaa !331, !noalias !2472
  call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #26, !noalias !2474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %103, i8 0, i64 68, i1 false), !noalias !2474
  %i.lk = load ptr, ptr %i.lh, align 8, !tbaa !117, !noalias !2474
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 96
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !2474
  %i.ln = call i64 %i.lm(ptr noundef nonnull align 8 dereferenceable(24) %i.lh, ptr noundef nonnull %103, i64 noundef %.01991009, i64 noundef 68, i64 noundef 0) #26, !noalias !2474, !inline_history !2261
  %i.lo = and i64 %i.ln, 4294967296
  %.not.i.i234 = icmp eq i64 %i.lo, 0
  store i64 %.01991009, ptr %i.li, align 8, !tbaa !331, !noalias !2474
  br i1 %.not.i.i234, label %bb.bf, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lq = load i8, ptr %i.lp, align 8, !tbaa !332, !range !256, !noalias !2474, !noundef !257
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4LIEF11swap_endianINS_5MachO7details10section_32EEEvPT_(ptr noundef nonnull %103) #26, !noalias !2474
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(69) %119, ptr noundef nonnull align 4 dereferenceable(68) %103, i64 68, i1 false), !tbaa.struct !2475
  store i8 1, ptr %i.fa, align 4, !tbaa !2477, !alias.scope !2474
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26, !noalias !2474
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !331, !noalias !2472
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #26
  call void @_ZN4LIEF5MachO7Section6createERKNS0_7details10section_32E(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1638") align 8 %120, ptr noundef nonnull align 4 dereferenceable(68) %119) #26
  %i.ls = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 232 ; 2 uses
  %i.lu = load ptr, ptr %120, align 8, !tbaa !338 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 240 ; 3 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !600 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 248 ; 3 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !601
  %.not.i.i237 = icmp eq ptr %i.lw, %i.ly
  br i1 %.not.i.i237, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %i.lu, ptr %i.lw, align 8, !tbaa !338
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %i.lz, ptr %i.lv, align 8, !tbaa !600
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

bb.av:                                            ; preds = %bb.at
  %i.ma = load ptr, ptr %i.lt, align 8, !tbaa !602 ; 4 uses
  %i.mb = ptrtoint ptr %i.lw to i64
  %i.mc = ptrtoint ptr %i.ma to i64               ; 2 uses
  %i.md = sub i64 %i.mb, %i.mc                    ; 5 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775800
  br i1 %i.me, label %bb.aw, label %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.av
  %i.mf = ashr exact i64 %i.md, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 1152921504606846975)
  %i.mj = select i1 %i.mh, i64 1152921504606846975, i64 %i.mi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #27 ; 4 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.md ; 2 uses
  store ptr %i.lu, ptr %i.mm, align 8, !tbaa !338
  %i.mn = icmp sgt i64 %i.md, 0
  br i1 %i.mn, label %bb.ax, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.ax:                                            ; preds = %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ml, ptr align 8 %i.ma, i64 %i.md, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.ax, %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.mp = load ptr, ptr %i.lx, align 8, !tbaa !601
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = sub i64 %i.mq, %i.mc
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mr) #29
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ml, ptr %i.lt, align 8, !tbaa !602
  store ptr %i.mo, ptr %i.lv, align 8, !tbaa !600
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj
  store ptr %i.ms, ptr %i.lx, align 8, !tbaa !601
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.au, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.mt = load ptr, ptr %120, align 8             ; 5 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !604
  %.not216 = icmp eq i64 %i.mv, 0
  %i.mw = ptrtoint ptr %i.mt to i64
  br i1 %.not216, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 116
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !606
  %trunc = trunc i32 %i.my to i8
  switch i8 %trunc, label %bb.ba [
    i8 1, label %bb.bb
    i8 18, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 56
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !607
  %i.nb = zext i32 %.11911010 to i64
  %spec.select931 = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.nb)
  %spec.select = trunc nuw i64 %spec.select931 to i32
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.az, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %.2192 = phi i32 [ %.11911010, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ %spec.select, %bb.ba ], [ %.11911010, %bb.az ], [ %.11911010, %bb.az ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 160
  store ptr %.sroa.0772.0, ptr %i.nc, align 8, !tbaa !608
  %i.nd = load ptr, ptr %i.lf, align 8, !tbaa !609 ; 6 uses
  %i.ne = load ptr, ptr %i.lg, align 8, !tbaa !610
  %.not.i.i238 = icmp eq ptr %i.nd, %i.ne
  br i1 %.not.i.i238, label %bb.bc, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.bb
  store i64 %i.mw, ptr %i.nd, align 8, !tbaa !338
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr %i.nf, ptr %i.lf, align 8, !tbaa !609
  br label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.ng = load ptr, ptr %i.le, align 8, !tbaa !611 ; 10 uses
  %i.nh = ptrtoint ptr %i.nd to i64               ; 2 uses
  %i.ni = ptrtoint ptr %i.ng to i64               ; 3 uses
  %i.nj = sub i64 %i.nh, %i.ni                    ; 3 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775800
  br i1 %i.nk, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.bd:                                            ; preds = %bb.bc
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bc
  %i.nl = ashr exact i64 %i.nj, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 1152921504606846975)
  %i.np = select i1 %i.nn, i64 1152921504606846975, i64 %i.no ; 3 uses
  %.not.i.i586 = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i586)
  %i.nq = shl nuw nsw i64 %i.np, 3
  %i.nr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #27 ; 10 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nj
  %i.nt = load i64, ptr %120, align 8, !tbaa !338
  store i64 %i.nt, ptr %i.ns, align 8, !tbaa !338
  store ptr null, ptr %120, align 8, !tbaa !338
  %.not10.i.i.i.i = icmp eq ptr %i.ng, %i.nd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.nu = add i64 %i.nh, -8
  %i.nv = sub i64 %i.nu, %i.ni                    ; 3 uses
  %i.nw = lshr i64 %i.nv, 3
  %i.nx = add nuw nsw i64 %i.nw, 1                ; 2 uses
  %min.iters.check1360 = icmp ult i64 %i.nv, 56
  br i1 %min.iters.check1360, label %.lr.ph.i.i.i.i.preheader1378, label %vector.memcheck1361

vector.memcheck1361:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ny = and i64 %i.nv, -8
  %i.nz = add i64 %i.ny, 8                        ; 2 uses
  %i.oa = getelementptr i8, ptr %i.nr, i64 %i.nz
  %i.ob = getelementptr i8, ptr %i.ng, i64 %i.nz
  %bound01362 = icmp ult ptr %i.nr, %i.ob
  %bound11363 = icmp ult ptr %i.ng, %i.oa
  %found.conflict1364 = and i1 %bound01362, %bound11363
  br i1 %found.conflict1364, label %.lr.ph.i.i.i.i.preheader1378, label %vector.ph1365

vector.ph1365:                                    ; preds = %vector.memcheck1361
  %n.vec1366 = and i64 %i.nx, 4611686018427387900 ; 3 uses
  %i.oc = shl i64 %n.vec1366, 3                   ; 2 uses
  %i.od = getelementptr i8, ptr %i.nr, i64 %i.oc  ; 2 uses
  %i.oe = getelementptr i8, ptr %i.ng, i64 %i.oc
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1373, %vector.body1367 ] ; 2 uses
  %i.of = shl i64 %index1368, 3                   ; 2 uses
  %next.gep1369 = getelementptr i8, ptr %i.nr, i64 %i.of ; 2 uses
  %next.gep1370 = getelementptr i8, ptr %i.ng, i64 %i.of ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.og = getelementptr i8, ptr %next.gep1370, i64 16
  %wide.load1371 = load <2 x i64>, ptr %next.gep1370, align 8, !tbaa !338, !alias.scope !2480
  %wide.load1372 = load <2 x i64>, ptr %i.og, align 8, !tbaa !338, !alias.scope !2480
  %i.oh = getelementptr i8, ptr %next.gep1369, i64 16
  store <2 x i64> %wide.load1371, ptr %next.gep1369, align 8, !tbaa !338, !alias.scope !2481, !noalias !2482
  store <2 x i64> %wide.load1372, ptr %i.oh, align 8, !tbaa !338, !alias.scope !2481, !noalias !2482
  %173 = getelementptr i8, ptr %next.gep1370, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1370, align 8, !tbaa !338, !alias.scope !2480
  store <2 x ptr> splat (ptr null), ptr %173, align 8, !tbaa !338, !alias.scope !2480
  %index.next1373 = add nuw i64 %index1368, 4     ; 2 uses
  %i.oi = icmp eq i64 %index.next1373, %n.vec1366
  br i1 %i.oi, label %middle.block1374, label %vector.body1367, !llvm.loop !2268

middle.block1374:                                 ; preds = %vector.body1367
  %cmp.n1375 = icmp eq i64 %i.nx, %n.vec1366
  br i1 %cmp.n1375, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader1378

.lr.ph.i.i.i.i.preheader1378:                     ; preds = %vector.memcheck1361, %.lr.ph.i.i.i.i.preheader, %middle.block1374
  %.012.i.i.i.i.ph = phi ptr [ %i.nr, %vector.memcheck1361 ], [ %i.nr, %.lr.ph.i.i.i.i.preheader ], [ %i.od, %middle.block1374 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ng, %vector.memcheck1361 ], [ %i.ng, %.lr.ph.i.i.i.i.preheader ], [ %i.oe, %middle.block1374 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1378, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ol, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1378 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ok, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1378 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  %i.oj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !338, !alias.scope !2479
  store i64 %i.oj, ptr %.012.i.i.i.i, align 8, !tbaa !338, !alias.scope !2478
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !338, !alias.scope !2479
  %i.ok = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i587 = icmp eq ptr %i.ok, %i.nd
  br i1 %.not.i.i.i.i587, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2269

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block1374, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.nr, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.od, %middle.block1374 ], [ %i.ol, %.lr.ph.i.i.i.i ]
  %i.om = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ng, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.on = load ptr, ptr %i.lg, align 8, !tbaa !610
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = sub i64 %i.oo, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.op) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.nr, ptr %i.le, align 8, !tbaa !611
  store ptr %i.om, ptr %i.lf, align 8, !tbaa !609
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.np
  store ptr %i.oq, ptr %i.lg, align 8, !tbaa !610
  %.pr = load ptr, ptr %120, align 8, !tbaa !338  ; 3 uses
  %.not.i239 = icmp eq ptr %.pr, null
  br i1 %.not.i239, label %bb.bg, label %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.or = load ptr, ptr %.pr, align 8, !tbaa !117
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(192) %.pr) #26, !inline_history !48
  br label %bb.bg

bb.bf:                                            ; preds = %bb.aq
  store i32 1, ptr %119, align 4, !tbaa !380, !alias.scope !2474
  store i8 0, ptr %i.fa, align 4, !tbaa !2477, !alias.scope !2474
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #26, !noalias !2474
  store i64 %i.lj, ptr %i.li, align 8, !tbaa !331, !noalias !2472
  %i.ou = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %102)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ov, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %102, i32 noundef 4, ptr nonnull @.str.163, i64 28, ptr noundef nonnull align 8 dereferenceable(32) %i.ie, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #26
  br label %.loopexit

bb.bg:                                            ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO7SectionEEclEPS2_.exit.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO7SectionESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread
  %i.ow = add i64 %.01991009, 68
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #26
  %i.ox = add nuw i64 %.02011008, 1               ; 2 uses
  %i.oy = load i64, ptr %i.j, align 8, !tbaa !118
  %i.oz = icmp ult i64 %i.ox, %i.oy
  br i1 %i.oz, label %bb.aq, label %.loopexit, !llvm.loop !2270

.loopexit:                                        ; preds = %bb.bg, %bb.ap, %bb.bf
  %.1191943 = phi i32 [ %.11911010, %bb.bf ], [ %.01901014, %bb.ap ], [ %.2192, %bb.bg ] ; 4 uses
  %i.pa = load i32, ptr %i.ks, align 8, !tbaa !599
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %.loopexit
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0772.0, i64 104
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !416 ; 3 uses
  %.not219 = icmp eq i64 %i.pd, 0
  br i1 %.not219, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pe = load i64, ptr %i.jc, align 8, !tbaa !595
  %.not220 = icmp ne i64 %i.pe, 0
  %i.pf = zext i32 %.1191943 to i64
  %i.pg = icmp ult i64 %i.pd, %i.pf
  %or.cond909 = select i1 %.not220, i1 %i.pg, i1 false
  %i.ph = trunc nuw i64 %i.pd to i32
  %spec.select910 = select i1 %or.cond909, i32 %i.ph, i32 %.1191943
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %.loopexit
  %.5 = phi i32 [ %.1191943, %bb.bh ], [ %.1191943, %.loopexit ], [ %spec.select910, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.o
  %.sroa.0772.1 = phi ptr [ %.sroa.0772.0, %bb.bj ], [ null, %bb.o ]
  %.2196 = phi i64 [ %.1195, %bb.bj ], [ %.01941013, %bb.o ]
  %.6 = phi i32 [ %.5, %bb.bj ], [ %.01901014, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #26
  br label %bb.mb

bb.bl:                                            ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #26
  %i.pi = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 5 uses
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !331, !noalias !2483 ; 2 uses
  store i64 %.01015, ptr %i.pj, align 8, !tbaa !331, !noalias !2483
  call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #26, !noalias !2485
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %101, i8 0, i64 24, i1 false), !noalias !2485
  %i.pl = load ptr, ptr %i.pi, align 8, !tbaa !117, !noalias !2485
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 96
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !2485
  %i.po = call i64 %i.pn(ptr noundef nonnull align 8 dereferenceable(24) %i.pi, ptr noundef nonnull %101, i64 noundef %.01015, i64 noundef 24, i64 noundef 0) #26, !noalias !2485, !inline_history !49
  %i.pp = and i64 %i.po, 4294967296
  %.not.i.i240 = icmp eq i64 %i.pp, 0
  store i64 %.01015, ptr %i.pj, align 8, !tbaa !331, !noalias !2485
  br i1 %.not.i.i240, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pr = load i8, ptr %i.pq, align 8, !tbaa !332, !range !256, !noalias !2485, !noundef !257
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.bn, label %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN4LIEF11swap_endianINS_5MachO7details13dylib_commandEEEvPT_(ptr noundef nonnull %101) #26, !noalias !2485
  br label %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit

bb.bo:                                            ; preds = %bb.bl
  store i32 1, ptr %121, align 4, !tbaa !380, !alias.scope !2485
  store i8 0, ptr %i.el, align 4, !tbaa !613, !alias.scope !2485
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #26, !noalias !2485
  store i64 %i.pk, ptr %i.pj, align 8, !tbaa !331, !noalias !2483
  %i.pt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %100)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %100, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.pu, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %100, i32 noundef 4, ptr nonnull @.str.164, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %100)
  br label %bb.cl

_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %121, ptr noundef nonnull align 4 dereferenceable(24) %101, i64 24, i1 false), !tbaa.struct !614
  store i8 1, ptr %i.el, align 4, !tbaa !613, !alias.scope !2485
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #26, !noalias !2485
  store i64 %i.pk, ptr %i.pj, align 8, !tbaa !331, !noalias !2483
  %i.pv = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #27, !noalias !2486 ; 11 uses
  call void @_ZN4LIEF5MachO12DylibCommandC1ERKNS0_7details13dylib_commandE(ptr noundef nonnull align 8 dereferenceable(104) %i.pv, ptr noundef nonnull align 4 dereferenceable(24) %121) #26, !noalias !2486
  %i.pw = load i32, ptr %i.em, align 4, !tbaa !616
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #26
  %i.px = load ptr, ptr %i.ae, align 8, !tbaa !254
  %i.py = zext i32 %i.pw to i64
  %i.pz = add i64 %.01015, %i.py
  call void @_ZNK4LIEF12BinaryStream14peek_string_atB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.369") align 8 %122, ptr noundef nonnull align 8 dereferenceable(24) %i.px, i64 noundef %i.pz, i64 noundef -1) #26
  %i.qa = load i8, ptr %i.en, align 8, !tbaa !400, !range !256, !noundef !257
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit
  %i.qc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %99)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %99, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.qd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %99, i32 noundef 4, ptr nonnull @.str.165, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  br label %_ZNSt6vectorIPN4LIEF5MachO12DylibCommandESaIS3_EE9push_backERKS3_.exit263

bb.bq:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO12DylibCommandESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.eo, ptr %123, align 8, !tbaa !342
  %i.qe = load ptr, ptr %122, align 8, !tbaa !252 ; 2 uses
  %i.qf = load i64, ptr %i.ep, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.qf, ptr %i.b, align 8, !tbaa !118
  %i.qg = icmp ugt i64 %i.qf, 15
  br i1 %i.qg, label %bb.br, label %._crit_edge.i.i

bb.br:                                            ; preds = %bb.bq
  %i.qh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %123, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #26 ; 2 uses
  store ptr %i.qh, ptr %123, align 8, !tbaa !252
  %i.qi = load i64, ptr %i.b, align 8, !tbaa !118
  store i64 %i.qi, ptr %i.eo, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.br, %bb.bq
  %i.qj = phi ptr [ %i.qh, %bb.br ], [ %i.eo, %bb.bq ] ; 2 uses
  switch i64 %i.qf, label %bb.bt [
end_hunk_10
begin_hunk_11_@_ZN4LIEF5MachO12BinaryParser19parse_load_commandsINS0_7details7MachO32EEENS_10ok_error_tEv:bb.a
  %.sroa.0772.37 = phi ptr [ null, %bb.lq ], [ %i.bcq, %bb.lr ], [ %i.bcq, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #26
  br label %bb.mb

bb.lw:                                            ; preds = %bb.k
  %.02022.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !224 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.lw, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.lw ] ; 4 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !715 ; 2 uses
  %i.bdt = icmp ugt i64 %i.bds, %i.fr             ; 2 uses
  %.in.v.i.i.i = select i1 %i.bdt, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i577 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i577, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !73

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.bdt, label %._crit_edge.thread.i.i.i, label %bb.ly

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.lw
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.az, %bb.lw ] ; 4 uses
  %i.bdu = load ptr, ptr %i.bb, align 8, !tbaa !239
  %i.bdv = icmp eq ptr %.019.lcssa29.i.i.i, %i.bdu
  br i1 %i.bdv, label %select.unfold.i.i, label %bb.lx

bb.lx:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.bdw = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bdw, i64 32
  %.pre.i.i580 = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !715
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %._crit_edge.i.i.i
  %i.bdx = phi i64 [ %.pre.i.i580, %bb.lx ], [ %i.bds, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.lx ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bdy = icmp ult i64 %i.bdx, %i.fr
  br i1 %i.bdy, label %select.unfold.i.i, label %.thread890

select.unfold.i.i:                                ; preds = %bb.ly, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ly ] ; 3 uses
  %i.bdz = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.az
  br i1 %i.bdz, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %select.unfold.i.i
  %i.bea = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.beb = load i64, ptr %i.bea, align 8, !tbaa !715
  %i.bec = icmp ugt i64 %i.beb, %i.fr
  br label %bb.ma

bb.ma:                                            ; preds = %select.unfold.i.i, %bb.lz
  %i.bed = phi i1 [ %i.bec, %bb.lz ], [ true, %select.unfold.i.i ]
  %i.bee = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 32
  store i64 %i.fr, ptr %i.bef, align 8, !tbaa !715
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bed, ptr noundef nonnull %i.bee, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.az) #26
  %i.beg = load i64, ptr %i.bd, align 8, !tbaa !241
  %i.beh = add i64 %i.beg, 1
  store i64 %i.beh, ptr %i.bd, align 8, !tbaa !241
  %i.bei = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #26
  %i.bej = call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_11LoadCommand4TYPEE(i64 noundef %i.fr) #26
  store ptr %i.bej, ptr %i.y, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #26
  store i64 %i.fr, ptr %i.z, align 8, !tbaa !118
  %i.bek = load ptr, ptr %i.bei, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcRKmRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bek, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 3, ptr nonnull @.str.240, i64 43, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #26
  br label %.thread890

.thread890:                                       ; preds = %bb.ly, %bb.ma
  %i.bel = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !2600 ; 5 uses
  call void @_ZN4LIEF5MachO11LoadCommandC2ERKNS0_7details12load_commandE(ptr noundef nonnull align 8 dereferenceable(64) %i.bel, ptr noundef nonnull align 4 dereferenceable(8) %114) #26, !noalias !2600
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4LIEF5MachO14UnknownCommandE, i64 16), ptr %i.bel, align 8, !tbaa !117, !noalias !2600
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 56
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bel, i64 32 ; 2 uses
  %i.beo = load i64, ptr %i.ben, align 8, !tbaa !716, !noalias !2600
  store i64 %i.beo, ptr %i.bem, align 8, !tbaa !718, !noalias !2600
  store i64 4293787649, ptr %i.ben, align 8, !tbaa !716, !noalias !2600
  br label %bb.mc

bb.mb:                                            ; preds = %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit, %bb.lm, %bb.lh, %bb.lc, %bb.kx, %bb.ks, %bb.kb, %bb.jw, %bb.jh, %bb.ip, %bb.ik, %bb.id, %bb.hw, %bb.hp, %bb.hk, %bb.hf, %bb.ha, %bb.gv, %bb.gq, %bb.gl, %bb.gg, %bb.fr, %bb.fm, %bb.fh, %bb.fc, %bb.ex, %bb.es, %bb.en, %bb.ei, %bb.dm, %bb.cx, %bb.cs, %bb.cl, %bb.bk
  %.sroa.0772.38 = phi ptr [ %.sroa.0772.37, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0772.1, %bb.bk ], [ %.sroa.0772.2, %bb.cl ], [ %.sroa.0772.3, %bb.cs ], [ %.sroa.0772.4, %bb.cx ], [ %.sroa.0772.5, %bb.dm ], [ %.sroa.0772.6, %bb.ei ], [ %.sroa.0772.7, %bb.en ], [ %.sroa.0772.8, %bb.es ], [ %.sroa.0772.9, %bb.ex ], [ %.sroa.0772.10, %bb.fc ], [ %.sroa.0772.11, %bb.fh ], [ %.sroa.0772.12, %bb.fm ], [ %.sroa.0772.13, %bb.fr ], [ %.sroa.0772.14, %bb.gg ], [ %.sroa.0772.15, %bb.gl ], [ %.sroa.0772.16, %bb.gq ], [ %.sroa.0772.17, %bb.gv ], [ %.sroa.0772.18, %bb.ha ], [ %.sroa.0772.19, %bb.hf ], [ %.sroa.0772.20, %bb.hk ], [ %.sroa.0772.21, %bb.hp ], [ %.sroa.0772.23, %bb.hw ], [ %.sroa.0772.25, %bb.id ], [ %.sroa.0772.27, %bb.ik ], [ %.sroa.0772.28, %bb.ip ], [ %.sroa.0772.29, %bb.jh ], [ %.sroa.0772.30, %bb.jw ], [ %.sroa.0772.31, %bb.kb ], [ %.sroa.0772.32, %bb.ks ], [ %.sroa.0772.33, %bb.kx ], [ %.sroa.0772.34, %bb.lc ], [ %.sroa.0772.35, %bb.lh ], [ %.sroa.0772.36, %bb.lm ] ; 2 uses
  %.2835 = phi i64 [ %.08331012, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.08331012, %bb.bk ], [ %.08331012, %bb.cl ], [ %.08331012, %bb.cs ], [ %.08331012, %bb.cx ], [ %.08331012, %bb.dm ], [ %.08331012, %bb.ei ], [ %.08331012, %bb.en ], [ %.08331012, %bb.es ], [ %.08331012, %bb.ex ], [ %.08331012, %bb.fc ], [ %.08331012, %bb.fh ], [ %.08331012, %bb.fm ], [ %.08331012, %bb.fr ], [ %.08331012, %bb.gg ], [ %.08331012, %bb.gl ], [ %.08331012, %bb.gq ], [ %.08331012, %bb.gv ], [ %.08331012, %bb.ha ], [ %.08331012, %bb.hf ], [ %.08331012, %bb.hk ], [ %.08331012, %bb.hp ], [ %.08331012, %bb.hw ], [ %.08331012, %bb.id ], [ %.08331012, %bb.ik ], [ %.08331012, %bb.ip ], [ %.08331012, %bb.jh ], [ %.08331012, %bb.jw ], [ %.08331012, %bb.kb ], [ %.1834, %bb.ks ], [ %.08331012, %bb.kx ], [ %.08331012, %bb.lc ], [ %.08331012, %bb.lh ], [ %.08331012, %bb.lm ] ; 2 uses
  %.3197 = phi i64 [ %.01941013, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.2196, %bb.bk ], [ %.01941013, %bb.cl ], [ %.01941013, %bb.cs ], [ %.01941013, %bb.cx ], [ %.01941013, %bb.dm ], [ %.01941013, %bb.ei ], [ %.01941013, %bb.en ], [ %.01941013, %bb.es ], [ %.01941013, %bb.ex ], [ %.01941013, %bb.fc ], [ %.01941013, %bb.fh ], [ %.01941013, %bb.fm ], [ %.01941013, %bb.fr ], [ %.01941013, %bb.gg ], [ %.01941013, %bb.gl ], [ %.01941013, %bb.gq ], [ %.01941013, %bb.gv ], [ %.01941013, %bb.ha ], [ %.01941013, %bb.hf ], [ %.01941013, %bb.hk ], [ %.01941013, %bb.hp ], [ %.01941013, %bb.hw ], [ %.01941013, %bb.id ], [ %.01941013, %bb.ik ], [ %.01941013, %bb.ip ], [ %.01941013, %bb.jh ], [ %.01941013, %bb.jw ], [ %.01941013, %bb.kb ], [ %.01941013, %bb.ks ], [ %.01941013, %bb.kx ], [ %.01941013, %bb.lc ], [ %.01941013, %bb.lh ], [ %.01941013, %bb.lm ] ; 2 uses
  %.7 = phi i32 [ %.01901014, %_ZNSt6vectorIPN4LIEF5MachO17LazyLoadDylibInfoESaIS3_EE9push_backEOS3_.exit ], [ %.6, %bb.bk ], [ %.01901014, %bb.cl ], [ %.01901014, %bb.cs ], [ %.01901014, %bb.cx ], [ %.01901014, %bb.dm ], [ %.01901014, %bb.ei ], [ %.01901014, %bb.en ], [ %.01901014, %bb.es ], [ %.01901014, %bb.ex ], [ %.01901014, %bb.fc ], [ %.01901014, %bb.fh ], [ %.01901014, %bb.fm ], [ %.01901014, %bb.fr ], [ %.01901014, %bb.gg ], [ %.01901014, %bb.gl ], [ %.01901014, %bb.gq ], [ %.01901014, %bb.gv ], [ %.01901014, %bb.ha ], [ %.01901014, %bb.hf ], [ %.01901014, %bb.hk ], [ %.01901014, %bb.hp ], [ %.01901014, %bb.hw ], [ %.01901014, %bb.id ], [ %.01901014, %bb.ik ], [ %.01901014, %bb.ip ], [ %.01901014, %bb.jh ], [ %.01901014, %bb.jw ], [ %.01901014, %bb.kb ], [ %.01901014, %bb.ks ], [ %.01901014, %bb.kx ], [ %.01901014, %bb.lc ], [ %.01901014, %bb.lh ], [ %.01901014, %bb.lm ] ; 2 uses
  %.not932 = icmp eq ptr %.sroa.0772.38, null
  br i1 %.not932, label %bb.mj, label %bb.mc

bb.mc:                                            ; preds = %.thread890, %bb.mb
  %.7901 = phi i32 [ %.01901014, %.thread890 ], [ %.7, %bb.mb ] ; 2 uses
  %.3197899 = phi i64 [ %.01941013, %.thread890 ], [ %.3197, %bb.mb ] ; 2 uses
  %.2835897 = phi i64 [ %.08331012, %.thread890 ], [ %.2835, %bb.mb ] ; 2 uses
  %.sroa.0772.38895 = phi ptr [ %i.bel, %.thread890 ], [ %.sroa.0772.38, %bb.mb ] ; 5 uses
  %i.bep = load ptr, ptr %i.ae, align 8, !tbaa !254 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %.sroa.0772.38895, i64 8
  %i.ber = load i32, ptr %i.bl, align 4, !tbaa !720
  %i.bes = zext i32 %i.ber to i64
  %i.bet = load ptr, ptr %i.bep, align 8, !tbaa !117
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 24
  %i.bev = load ptr, ptr %i.beu, align 8
  %i.bew = call i64 %i.bev(ptr noundef nonnull align 8 dereferenceable(24) %i.bep, ptr noundef nonnull align 8 dereferenceable(24) %i.beq, i64 noundef %.01015, i64 noundef %i.bes, i64 noundef 0) #26
  %i.bex = and i64 %i.bew, 4294967296
  %.not934 = icmp eq i64 %i.bex, 0
  br i1 %.not934, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.bey = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bez, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 4, ptr nonnull @.str.241, i64 43)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bfa = getelementptr inbounds nuw i8, ptr %.sroa.0772.38895, i64 40
  store i32 0, ptr %i.bfa, align 8, !tbaa !721
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc
  %i.bfb = getelementptr inbounds nuw i8, ptr %.sroa.0772.38895, i64 48
  store i64 %.01015, ptr %i.bfb, align 8, !tbaa !722
  %i.bfc = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 3 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 136 ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfc, i64 144 ; 3 uses
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !723 ; 6 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfc, i64 152 ; 3 uses
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !724
  %.not.i.i584 = icmp eq ptr %i.bff, %i.bfh
  br i1 %.not.i.i584, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bfi = ptrtoint ptr %.sroa.0772.38895 to i64
  store i64 %i.bfi, ptr %i.bff, align 8, !tbaa !726
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bff, i64 8
  store ptr %i.bfj, ptr %i.bfe, align 8, !tbaa !723
  br label %bb.mj

bb.mg:                                            ; preds = %bb.me
  %i.bfk = load ptr, ptr %i.bfd, align 8, !tbaa !727 ; 10 uses
  %i.bfl = ptrtoint ptr %i.bff to i64             ; 2 uses
  %i.bfm = ptrtoint ptr %i.bfk to i64             ; 3 uses
  %i.bfn = sub i64 %i.bfl, %i.bfm                 ; 3 uses
  %i.bfo = icmp eq i64 %i.bfn, 9223372036854775800
  br i1 %i.bfo, label %bb.mh, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.mh:                                            ; preds = %bb.mg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.mg
  %i.bfp = ashr exact i64 %i.bfn, 3               ; 3 uses
  %.sroa.speculated.i.i588 = call i64 @llvm.umax.i64(i64 %i.bfp, i64 1)
  %i.bfq = add nsw i64 %.sroa.speculated.i.i588, %i.bfp ; 2 uses
  %i.bfr = icmp ult i64 %i.bfq, %i.bfp
  %i.bfs = call i64 @llvm.umin.i64(i64 %i.bfq, i64 1152921504606846975)
  %i.bft = select i1 %i.bfr, i64 1152921504606846975, i64 %i.bfs ; 3 uses
  %.not.i.i589 = icmp ne i64 %i.bft, 0
  call void @llvm.assume(i1 %.not.i.i589)
  %i.bfu = shl nuw nsw i64 %i.bft, 3
  %i.bfv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfu) #27 ; 10 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bfn
  %i.bfx = ptrtoint ptr %.sroa.0772.38895 to i64
  store i64 %i.bfx, ptr %i.bfw, align 8, !tbaa !726
  %.not10.i.i.i.i590 = icmp eq ptr %i.bfk, %i.bff
  br i1 %.not10.i.i.i.i590, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i591.preheader

.lr.ph.i.i.i.i591.preheader:                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bfy = add i64 %i.bfl, -8
  %i.bfz = sub i64 %i.bfy, %i.bfm                 ; 3 uses
  %i.bga = lshr i64 %i.bfz, 3
  %i.bgb = add nuw nsw i64 %i.bga, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bfz, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i591.preheader1379, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i591.preheader
  %i.bgc = and i64 %i.bfz, -8
  %i.bgd = add i64 %i.bgc, 8                      ; 2 uses
  %i.bge = getelementptr i8, ptr %i.bfv, i64 %i.bgd
  %i.bgf = getelementptr i8, ptr %i.bfk, i64 %i.bgd
  %bound0 = icmp ult ptr %i.bfv, %i.bgf
  %bound1 = icmp ult ptr %i.bfk, %i.bge
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i591.preheader1379, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bgb, 4611686018427387900    ; 3 uses
  %i.bgg = shl i64 %n.vec, 3                      ; 2 uses
  %i.bgh = getelementptr i8, ptr %i.bfv, i64 %i.bgg ; 2 uses
  %i.bgi = getelementptr i8, ptr %i.bfk, i64 %i.bgg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bgj = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bfv, i64 %i.bgj ; 2 uses
  %next.gep1349 = getelementptr i8, ptr %i.bfk, i64 %i.bgj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.bgk = getelementptr i8, ptr %next.gep1349, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1349, align 8, !tbaa !726, !alias.scope !2603
  %wide.load1350 = load <2 x i64>, ptr %i.bgk, align 8, !tbaa !726, !alias.scope !2603
  %i.bgl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !726, !alias.scope !2604, !noalias !2605
  store <2 x i64> %wide.load1350, ptr %i.bgl, align 8, !tbaa !726, !alias.scope !2604, !noalias !2605
  %174 = getelementptr i8, ptr %next.gep1349, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1349, align 8, !tbaa !726, !alias.scope !2603
  store <2 x ptr> splat (ptr null), ptr %174, align 8, !tbaa !726, !alias.scope !2603
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bgm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bgm, label %middle.block, label %vector.body, !llvm.loop !2459

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bgb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i591.preheader1379

.lr.ph.i.i.i.i591.preheader1379:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i591.preheader, %middle.block
  %.012.i.i.i.i592.ph = phi ptr [ %i.bfv, %vector.memcheck ], [ %i.bfv, %.lr.ph.i.i.i.i591.preheader ], [ %i.bgh, %middle.block ]
  %.0911.i.i.i.i593.ph = phi ptr [ %i.bfk, %vector.memcheck ], [ %i.bfk, %.lr.ph.i.i.i.i591.preheader ], [ %i.bgi, %middle.block ]
  br label %.lr.ph.i.i.i.i591

.lr.ph.i.i.i.i591:                                ; preds = %.lr.ph.i.i.i.i591.preheader1379, %.lr.ph.i.i.i.i591
  %.012.i.i.i.i592 = phi ptr [ %i.bgp, %.lr.ph.i.i.i.i591 ], [ %.012.i.i.i.i592.ph, %.lr.ph.i.i.i.i591.preheader1379 ] ; 2 uses
  %.0911.i.i.i.i593 = phi ptr [ %i.bgo, %.lr.ph.i.i.i.i591 ], [ %.0911.i.i.i.i593.ph, %.lr.ph.i.i.i.i591.preheader1379 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.bgn = load i64, ptr %.0911.i.i.i.i593, align 8, !tbaa !726, !alias.scope !2602
  store i64 %i.bgn, ptr %.012.i.i.i.i592, align 8, !tbaa !726, !alias.scope !2601
  store ptr null, ptr %.0911.i.i.i.i593, align 8, !tbaa !726, !alias.scope !2602
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i593, i64 8 ; 2 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i592, i64 8 ; 2 uses
  %.not.i.i.i.i594 = icmp eq ptr %i.bgo, %i.bff
  br i1 %.not.i.i.i.i594, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i591, !llvm.loop !2460

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i591, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i595 = phi ptr [ %i.bfv, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bgh, %middle.block ], [ %i.bgp, %.lr.ph.i.i.i.i591 ]
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i595, i64 8
  %.not.i23.i602 = icmp eq ptr %i.bfk, null
  br i1 %.not.i23.i602, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.mi

bb.mi:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bgr = load ptr, ptr %i.bfg, align 8, !tbaa !724
  %i.bgs = ptrtoint ptr %i.bgr to i64
  %i.bgt = sub i64 %i.bgs, %i.bfm
  call void @_ZdlPvm(ptr noundef nonnull %i.bfk, i64 noundef %i.bgt) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.mi
  store ptr %i.bfv, ptr %i.bfd, align 8, !tbaa !727
  store ptr %i.bgq, ptr %i.bfe, align 8, !tbaa !723
  %i.bgu = getelementptr inbounds nuw [8 x i8], ptr %i.bfv, i64 %i.bft
  store ptr %i.bgu, ptr %i.bfg, align 8, !tbaa !724
  br label %bb.mj

.thread902:                                       ; preds = %bb.j, %_ZNK4LIEF12BinaryStream4peekINS_5MachO7details12load_commandEEENS_6resultIT_EEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #26
  br label %.loopexit937

bb.mj:                                            ; preds = %bb.mb, %bb.mf, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %.7900 = phi i32 [ %.7, %bb.mb ], [ %.7901, %bb.mf ], [ %.7901, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ] ; 2 uses
  %.3197898 = phi i64 [ %.3197, %bb.mb ], [ %.3197899, %bb.mf ], [ %.3197899, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %.2835896 = phi i64 [ %.2835, %bb.mb ], [ %.2835897, %bb.mf ], [ %.2835897, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ]
  %i.bgv = load i32, ptr %i.bl, align 4, !tbaa !720
  %i.bgw = zext i32 %i.bgv to i64
  %i.bgx = add i64 %.01015, %i.bgw                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #26
  %i.bgy = load i64, ptr %i.d, align 8, !tbaa !118
  %i.bgz = add i64 %i.bgy, 1                      ; 2 uses
  store i64 %i.bgz, ptr %i.d, align 8, !tbaa !118
  %i.bha = load i64, ptr %i.c, align 8, !tbaa !118
  %i.bhb = icmp ult i64 %i.bgz, %i.bha
  br i1 %i.bhb, label %bb.f, label %.loopexit937, !llvm.loop !2461

.loopexit937:                                     ; preds = %bb.mj, %bb.e, %.thread902
  %.0190975 = phi i32 [ %.01901014, %.thread902 ], [ -1, %bb.e ], [ %.7900, %bb.mj ]
  %.0963 = phi i64 [ %.01015, %.thread902 ], [ %i.ah, %bb.e ], [ %i.bgx, %bb.mj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.bhc = zext i32 %.0190975 to i64
  %i.bhd = sub i64 %i.bhc, %.0963
  %i.bhe = load ptr, ptr %i.ac, align 8, !tbaa !115
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 352
  store i64 %i.bhd, ptr %i.bhf, align 8, !tbaa !728
  %i.bhg = load ptr, ptr %i.ba, align 8, !tbaa !223
  call void @_ZNSt8_Rb_treeIN4LIEF5MachO11LoadCommand4TYPEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %113, ptr noundef %i.bhg)
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.mk

bb.mk:                                            ; preds = %.loopexit937, %bb.b
  %.sroa.2.0 = phi i64 [ 5, %bb.b ], [ 4294967301, %.loopexit937 ]
  ret i64 %.sroa.2.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_13SymbolCommandE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::vector.156", align 8   ; 8 uses
  %10 = alloca %"class.std::vector.156", align 8  ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %12 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %13 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %14 = alloca %"class.LIEF::SpanStream", align 8 ; 9 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 1, ptr nonnull @.str.243, i64 29)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !730
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.e, ptr %i.f, align 4, !tbaa !731
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !732
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.h, ptr %i.i, align 8, !tbaa !733
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !tbaa !685, !range !256, !noundef !257
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 2 uses
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.o, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 10, ptr %i.p, align 8, !tbaa !343
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 0, ptr %i.q, align 2, !tbaa !253
  %i.r = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  %i.s = load ptr, ptr %7, align 8, !tbaa !252    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !734
  %i.w = zext i32 %i.v to i64
  %i.x = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.n, i64 noundef %i.w) #26
  br label %.critedge76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.y = load i64, ptr %i.o, align 8, !tbaa !253
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.z) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge76

.critedge76:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = phi ptr [ %i.x, %bb.b ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.ab = load i8, ptr %i.j, align 2, !tbaa !685, !range !256, !noundef !257
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !115 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i85, label %bb.c

._crit_edge.i.i85:                                ; preds = %.critedge76
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.af, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 10, ptr %i.ag, align 8, !tbaa !343
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 26
  store i8 0, ptr %i.ah, align 2, !tbaa !253
  %i.ai = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  %i.aj = load ptr, ptr %8, align 8, !tbaa !252   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.af
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

bb.c:                                             ; preds = %.critedge76
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !735
  %i.an = zext i32 %i.am to i64
  %i.ao = call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, i64 noundef %i.an) #26
  br label %.critedge80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %._crit_edge.i.i85
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !253
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %._crit_edge.i.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge80

.critedge80:                                      ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.ar = phi ptr [ %i.ao, %bb.c ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ] ; 8 uses
  %i.as = icmp eq ptr %i.aa, null
  %i.at = icmp eq ptr %i.ar, null
  %or.cond = or i1 %i.as, %i.at
  br i1 %or.cond, label %bb.d, label %bb.j

end_hunk_11
begin_hunk_12_@_ZN4LIEF5MachO12BinaryParser17parse_relocationsINS0_7details7MachO32EEENS_10ok_error_tERNS0_7SectionE:bb.a

bb.y:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !226
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !227
  br label %bb.ac

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.x, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.fj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKiEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fk, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.262, i64 49, ptr noundef nonnull align 4 dereferenceable(4) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.fl = zext nneg i32 %i.eu to i64              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 240 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !600
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.eq to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 3
  %i.fs = icmp ugt i64 %i.fr, %i.fl
  br i1 %i.fs, label %_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, label %bb.aa

_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit: ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fl
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !338 ; 3 uses
  store ptr %i.fu, ptr %i.dh, align 8, !tbaa !222
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !117
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(64) %i.fu) #26
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 1, ptr nonnull @.str.263, i64 11, ptr noundef nonnull align 8 dereferenceable(32) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ga = load ptr, ptr %22, align 8, !tbaa !252  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.bh
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit
  %i.gc = load i64, ptr %i.bh, align 8, !tbaa !253
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ge = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.gf = load ptr, ptr %1, align 8, !tbaa !117
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(64) %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  %i.gi = load i32, ptr %i.be, align 4
  %i.gj = and i32 %i.gi, 16777215
  store i32 %i.gj, ptr %i.h, align 4, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  %i.gk = load ptr, ptr %i.fm, align 8, !tbaa !600
  %i.gl = load ptr, ptr %i.ep, align 8, !tbaa !602
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 3
  store i64 %i.gp, ptr %i.i, align 8, !tbaa !118
  %i.gq = load ptr, ptr %i.ge, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKjS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.gq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %2, i32 noundef 2, ptr nonnull @.str.264, i64 77, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  %i.gr = load ptr, ptr %23, align 8, !tbaa !252  ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.bg
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aa
  %i.gt = load i64, ptr %i.bg, align 8, !tbaa !253
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !331
  store i64 1, ptr %20, align 8
  store i8 0, ptr %.sroa.2.0..sroa_idx123, align 8
  %i.gv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.gw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 2, ptr nonnull @.str.259, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %_ZNSt10unique_ptrIN4LIEF5MachO16RelocationObjectESt14default_deleteIS2_EED2Ev.exit71.thread

bb.ac:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %.pre170 = load ptr, ptr %i.dh, align 8, !tbaa !222
  %i.gx = icmp eq ptr %.pre170, null
  br i1 %i.gx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr %1, ptr %i.gy, align 8, !tbaa !222
  br label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.ad, %bb.ac
  %.sroa.090.2190 = phi ptr [ %i.cp, %.thread ], [ %i.dg, %bb.ad ], [ %i.dg, %bb.ac ] ; 3 uses
  %i.gz = load ptr, ptr %i.bd, align 8, !tbaa !115
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 108
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !213
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.090.2190, i64 36
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !216
  %i.hd = load ptr, ptr %i.bl, align 8, !tbaa !230 ; 6 uses
  %i.he = load ptr, ptr %i.bm, align 8, !tbaa !231
  %.not.i.i67 = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i.i67, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hf = ptrtoint ptr %.sroa.090.2190 to i64
  store i64 %i.hf, ptr %i.hd, align 8, !tbaa !233
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hg, ptr %i.bl, align 8, !tbaa !230
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.hh = load ptr, ptr %i.bk, align 8, !tbaa !234 ; 10 uses
  %i.hi = ptrtoint ptr %i.hd to i64               ; 2 uses
  %i.hj = ptrtoint ptr %i.hh to i64               ; 3 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 3 uses
  %i.hl = icmp eq i64 %i.hk, 9223372036854775800
  br i1 %i.hl, label %bb.ah, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ag
  %i.hm = ashr exact i64 %i.hk, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.hm, i64 1)
  %i.hn = add nsw i64 %.sroa.speculated.i.i, %i.hm ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.hm
  %i.hp = call i64 @llvm.umin.i64(i64 %i.hn, i64 1152921504606846975)
  %i.hq = select i1 %i.ho, i64 1152921504606846975, i64 %i.hp ; 3 uses
  %.not.i.i72 = icmp ne i64 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i72)
  %i.hr = shl nuw nsw i64 %i.hq, 3
  %i.hs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #27 ; 10 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hk
  %i.hu = ptrtoint ptr %.sroa.090.2190 to i64
  store i64 %i.hu, ptr %i.ht, align 8, !tbaa !233
  %.not10.i.i.i.i = icmp eq ptr %i.hh, %i.hd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.hv = add i64 %i.hi, -8
  %i.hw = sub i64 %i.hv, %i.hj                    ; 3 uses
  %i.hx = lshr i64 %i.hw, 3
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hw, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader225, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.hz = and i64 %i.hw, -8
  %i.ia = add i64 %i.hz, 8                        ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hs, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.hh, i64 %i.ia
  %bound0 = icmp ult ptr %i.hs, %i.ic
  %bound1 = icmp ult ptr %i.hh, %i.ib
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader225, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, 4611686018427387900     ; 3 uses
  %i.id = shl i64 %n.vec, 3                       ; 2 uses
  %i.ie = getelementptr i8, ptr %i.hs, i64 %i.id  ; 2 uses
  %i.if = getelementptr i8, ptr %i.hh, i64 %i.id
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hs, i64 %i.ig ; 2 uses
  %next.gep222 = getelementptr i8, ptr %i.hh, i64 %i.ig ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  %i.ih = getelementptr i8, ptr %next.gep222, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep222, align 8, !tbaa !233, !alias.scope !2629
  %wide.load223 = load <2 x i64>, ptr %i.ih, align 8, !tbaa !233, !alias.scope !2629
  %i.ii = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !233, !alias.scope !2630, !noalias !2631
  store <2 x i64> %wide.load223, ptr %i.ii, align 8, !tbaa !233, !alias.scope !2630, !noalias !2631
  %24 = getelementptr i8, ptr %next.gep222, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep222, align 8, !tbaa !233, !alias.scope !2629
  store <2 x ptr> splat (ptr null), ptr %24, align 8, !tbaa !233, !alias.scope !2629
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !2620

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader225

.lr.ph.i.i.i.i.preheader225:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.hs, %vector.memcheck ], [ %i.hs, %.lr.ph.i.i.i.i.preheader ], [ %i.ie, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.hh, %vector.memcheck ], [ %i.hh, %.lr.ph.i.i.i.i.preheader ], [ %i.if, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader225, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.im, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.il, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader225 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2627)
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  %i.ik = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !2628
  store i64 %i.ik, ptr %.012.i.i.i.i, align 8, !tbaa !233, !alias.scope !2627
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !2628
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.il, %i.hd
  br i1 %.not.i.i.i.i73, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2621

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.hs, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ie, %middle.block ], [ %i.im, %.lr.ph.i.i.i.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.hh, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.io = load ptr, ptr %i.bm, align 8, !tbaa !231
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = sub i64 %i.ip, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.iq) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.ai
  store ptr %i.hs, ptr %i.bk, align 8, !tbaa !234
  store ptr %i.in, ptr %i.bl, align 8, !tbaa !230
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hq
  store ptr %i.ir, ptr %i.bm, align 8, !tbaa !231
  br label %bb.aj

_ZNSt10unique_ptrIN4LIEF5MachO16RelocationObjectESt14default_deleteIS2_EED2Ev.exit71.thread: ; preds = %_ZNK4LIEF12BinaryStream4peekIiEENS_6resultIT_EEm.exit.thread, %bb.n, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %.loopexit

bb.aj:                                            ; preds = %bb.af, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.is = load i64, ptr %i.c, align 8, !tbaa !118
  %i.it = add i64 %i.is, 8                        ; 2 uses
  store i64 %i.it, ptr %i.c, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.iu = load i64, ptr %i.f, align 8, !tbaa !118
  %i.iv = add i64 %i.iu, 1                        ; 2 uses
  store i64 %i.iv, ptr %i.f, align 8, !tbaa !118
  %i.iw = load i64, ptr %i.d, align 8, !tbaa !118
  %i.ix = icmp ult i64 %i.iv, %i.iw
  br i1 %i.ix, label %bb.h, label %.loopexit, !llvm.loop !2622

.loopexit:                                        ; preds = %bb.aj, %bb.g, %_ZNSt10unique_ptrIN4LIEF5MachO16RelocationObjectESt14default_deleteIS2_EED2Ev.exit71.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.f
  %.sroa.2.0 = phi i64 [ 5, %bb.f ], [ 4294967301, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.2.1 = phi i64 [ 4294967301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.2.0, %bb.ak ]
  ret i64 %.sroa.2.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser22parse_dyldinfo_rebasesINS0_7details7MachO32EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 31 uses
  %11 = alloca %"class.LIEF::ref_iterator.2662", align 8 ; 12 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.k, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 1, ptr nonnull @.str.302, i64 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.n = tail call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.m) #26 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.q, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.266, i64 35)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.s = load i32, ptr %i.r, align 4, !tbaa !119  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !119  ; 5 uses
  %i.v = icmp eq i32 %i.s, 0
  %i.w = icmp eq i32 %i.u, 0
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.bn, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.s, 0
  %i.y = icmp slt i32 %i.u, 0
  %or.cond3 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 3, ptr nonnull @.str.303, i64 41)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.bn

bb.f:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !685, !range !256, !noundef !257
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !115 ; 2 uses
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.af, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 10, ptr %i.ag, align 8, !tbaa !343
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 26
  store i8 0, ptr %i.ah, align 2, !tbaa !253
  %i.ai = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  %i.aj = load ptr, ptr %10, align 8, !tbaa !252  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.af
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.al = zext nneg i32 %i.s to i64
  %i.am = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ae, i64 noundef %i.al) #26
  br label %.critedge140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.an = load i64, ptr %i.af, align 8, !tbaa !253
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.critedge140

.critedge140:                                     ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = phi ptr [ %i.am, %bb.g ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge140
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 3, ptr nonnull @.str.304, i64 55)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.bn

bb.i:                                             ; preds = %.critedge140
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !329 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 152
end_hunk_12
begin_hunk_13_@_ZN4LIEF5MachO12BinaryParser23infer_indirect_bindingsINS0_7details7MachO32EEENS_10ok_error_tEv:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph129, %._crit_edge
  %.sroa.483.0127 = phi ptr [ %i.g, %.lr.ph129 ], [ %i.ea, %._crit_edge ] ; 2 uses
  %.sroa.884.0126 = phi i64 [ 0, %.lr.ph129 ], [ %i.eb, %._crit_edge ]
  %i.r = load ptr, ptr %.sroa.483.0127, align 8, !tbaa !593 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !860, !noalias !2675 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !860, !noalias !2676 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3
  %.not116121 = icmp eq ptr %i.v, %i.t
  br i1 %.not116121, label %._crit_edge, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %bb.c
  %i.aa = insertelement <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4LIEF5MachO19IndirectBindingInfoE, i64 16), ptr poison>, ptr %i.r, i64 1
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %.loopexit
  %.sroa.474.0123 = phi ptr [ %i.dy, %.loopexit ], [ %i.t, %.lr.ph124.preheader ] ; 2 uses
  %.sroa.8.0122 = phi i64 [ %i.dz, %.loopexit ], [ 0, %.lr.ph124.preheader ]
  %i.ab = load ptr, ptr %.sroa.474.0123, align 8, !tbaa !338 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !606
  %trunc = trunc i32 %i.ad to i8
  switch i8 %trunc, label %.loopexit [
    i8 8, label %bb.d
    i8 6, label %.thread
    i8 7, label %.thread
    i8 16, label %.thread
    i8 20, label %.thread
  ]

bb.d:                                             ; preds = %.lr.ph124
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !861 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.loopexit, label %.thread

.thread:                                          ; preds = %.lr.ph124, %.lr.ph124, %.lr.ph124, %.lr.ph124, %bb.d
  %i.ah = phi i32 [ %i.af, %bb.d ], [ 4, %.lr.ph124 ], [ 4, %.lr.ph124 ], [ 4, %.lr.ph124 ], [ 4, %.lr.ph124 ]
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.am = zext i32 %i.ah to i64                   ; 2 uses
  %i.an = udiv i64 %i.al, %i.am
  %i.ao = and i64 %i.an, 4294967295               ; 2 uses
  %.not60118.not = icmp eq i64 %i.ao, 0
  br i1 %.not60118.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !862
  %i.ar = zext i32 %i.aq to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %.0120 = phi i64 [ 0, %.lr.ph ], [ %i.dx, %bb.l ] ; 3 uses
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #26
  %i.aw = mul nuw i64 %.0120, %i.am
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = add nuw nsw i64 %.0120, %i.ar           ; 2 uses
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !425 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %.not = icmp ult i64 %i.ay, %i.be
  br i1 %.not, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %.critedge

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !385 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !398
  %i.bj = lshr i16 %i.bi, 8                       ; 2 uses
  %i.bk = zext nneg i16 %i.bj to i32              ; 2 uses
  %i.bl = add nsw i16 %i.bj, -1
  %switch = icmp ult i16 %i.bl, 253
  br i1 %switch, label %bb.f, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.f:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bm = add nsw i32 %i.bk, -1
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !401
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !245 ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = icmp ugt i64 %i.bt, %i.bn
  br i1 %i.bu, label %bb.g, label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !402
  br label %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit

_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit: ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, %bb.f, %bb.g
  %.093 = phi ptr [ %i.bw, %bb.g ], [ null, %bb.f ], [ null, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO6SymbolESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bx = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #27, !noalias !2677 ; 10 uses
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bx) #26, !noalias !2677
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 0, ptr %i.by, align 8, !tbaa !863, !noalias !2677
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i8 0, ptr %i.bz, align 8, !tbaa !864, !noalias !2677
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store <2 x ptr> %i.aa, ptr %i.bx, align 8, !noalias !2677
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bg, ptr %i.cb, align 8, !tbaa !207, !noalias !2677
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 %i.bk, ptr %i.cc, align 8, !tbaa !865, !noalias !2677
  store ptr %.093, ptr %i.ca, align 8, !tbaa !199, !noalias !2677
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  store i64 %i.ax, ptr %i.cd, align 8, !tbaa !201, !noalias !2677
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !115 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 448 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 456 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !866 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 464 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !867
  %.not.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.ck = ptrtoint ptr %i.bx to i64
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !869
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !866
  br label %bb.l

bb.i:                                             ; preds = %_ZN4LIEF5MachO6Symbol22is_valid_index_ordinalEi.exit
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !870 ; 10 uses
  %i.cn = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i63 = icmp ne i64 %i.cv, 0
  tail call void @llvm.assume(i1 %.not.i.i63)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #27 ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cp
  %i.cz = ptrtoint ptr %i.bx to i64
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !869
  %.not10.i.i.i.i = icmp eq ptr %i.cm, %i.ch
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.da = add i64 %i.cn, -8
  %i.db = sub i64 %i.da, %i.co                    ; 3 uses
  %i.dc = lshr i64 %i.db, 3
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.db, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.de = and i64 %i.db, -8
  %i.df = add i64 %i.de, 8                        ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cx, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.cm, i64 %i.df
  %bound0 = icmp ult ptr %i.cx, %i.dh
  %bound1 = icmp ult ptr %i.cm, %i.dg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader151, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dd, 4611686018427387900     ; 3 uses
  %i.di = shl i64 %n.vec, 3                       ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cx, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cm, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.dl ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.cm, i64 %i.dl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  %i.dm = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep148, align 8, !tbaa !869, !alias.scope !2680
  %wide.load149 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !869, !alias.scope !2680
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !869, !alias.scope !2681, !noalias !2682
  store <2 x i64> %wide.load149, ptr %i.dn, align 8, !tbaa !869, !alias.scope !2681, !noalias !2682
  %1 = getelementptr i8, ptr %next.gep148, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep148, align 8, !tbaa !869, !alias.scope !2680
  store <2 x ptr> splat (ptr null), ptr %1, align 8, !tbaa !869, !alias.scope !2680
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !2670

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader151

.lr.ph.i.i.i.i.preheader151:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph.i.i.i.i.preheader ], [ %i.dj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.i.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader151, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader151 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader151 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  %i.dp = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !2679
  store i64 %i.dp, ptr %.012.i.i.i.i, align 8, !tbaa !869, !alias.scope !2678
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !869, !alias.scope !2679
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dq, %i.ch
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2671

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cx, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dj, %middle.block ], [ %i.dr, %.lr.ph.i.i.i.i ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dt = load ptr, ptr %i.ci, align 8, !tbaa !867
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dv) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.k
  store ptr %i.cx, ptr %i.cf, align 8, !tbaa !870
  store ptr %i.ds, ptr %i.cg, align 8, !tbaa !866
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.dw, ptr %i.ci, align 8, !tbaa !867
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dx = add nuw nsw i64 %.0120, 1               ; 2 uses
  %.not60 = icmp samesign ult i64 %i.dx, %i.ao
  br i1 %.not60, label %bb.e, label %.loopexit, !llvm.loop !2672

.loopexit:                                        ; preds = %bb.l, %.thread, %bb.d, %.lr.ph124
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.474.0123, i64 8
  %i.dz = add nuw nsw i64 %.sroa.8.0122, 1        ; 2 uses
  %.not116 = icmp eq i64 %i.dz, %i.z
  br i1 %.not116, label %._crit_edge, label %.lr.ph124

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.483.0127, i64 8
  %i.eb = add nuw nsw i64 %.sroa.884.0126, 1      ; 2 uses
  %.not115 = icmp eq i64 %i.eb, %i.m
  br i1 %.not115, label %.critedge, label %bb.c

.critedge:                                        ; preds = %._crit_edge, %bb.e, %bb.b, %bb.a
  %.sroa.2.8 = phi i64 [ 4294967301, %bb.a ], [ 4294967301, %bb.b ], [ 5, %bb.e ], [ 4294967301, %._crit_edge ]
  ret i64 %.sroa.2.8
}

declare hidden void @_ZN4LIEF5MachO6HeaderC1INS0_7details11mach_headerEEERKT_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(28)) unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details11mach_headerEEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZN4LIEF5MachO7Section6createERKNS0_7details10section_32E(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1638") align 8, ptr noundef nonnull align 4 dereferenceable(68)) local_unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details18segment_command_32EEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZN4LIEF5MachO14SegmentCommandC2ERKNS0_7details18segment_command_32E(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 4 dereferenceable(56)) unnamed_addr #3

declare void @_ZN4LIEF5MachO14SegmentCommandC1ERKNS0_7details18segment_command_32E(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 4 dereferenceable(56)) unnamed_addr #3

declare void @_ZN4LIEF11swap_endianINS_5MachO7details10section_32EEEvPT_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12parse_symtabINS0_7details7MachO32EEENS_10ok_error_tERNS0_13SymbolCommandERNS_10SpanStreamES9_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.LIEF::MachO::details::nlist_32", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.LIEF::result.3177", align 8 ; 8 uses
  %8 = alloca %"class.LIEF::result.369", align 8  ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !118
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !331
  %i.f = load ptr, ptr %2, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(24) %2) #26, !inline_history !5
  %i.j = icmp ult i64 %i.e, %i.i
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.t = load i64, ptr %i.d, align 8, !tbaa !331  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %i.u = load ptr, ptr %2, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call i64 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %6, i64 noundef %i.t, i64 noundef 12, i64 noundef 0) #26, !inline_history !2683
  %i.y = and i64 %i.x, 4294967296
  %.not.i.i = icmp eq i64 %i.y, 0
  store i64 %i.t, ptr %i.d, align 8, !tbaa !331
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit.thread, label %bb.c

_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store i64 1, ptr %7, align 8
  store i40 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.249, i64 20, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.k, align 8, !tbaa !332, !range !256, !noundef !257
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN4LIEF11swap_endianINS_5MachO7details8nlist_32EEEvPT_(ptr noundef nonnull %6) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !331
  br label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit: ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %i.t, %bb.c ], [ %.pre.i, %bb.d ]
  %.sroa.04.0.copyload.i.i = load i64, ptr %6, align 8
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ae = add i64 %i.ad, 12
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !331
  %i.af = zext i32 %.sroa.3.0.copyload.i.i to i64
  %i.ag = or disjoint i64 %i.af, 4294967296
  store i64 %.sroa.04.0.copyload.i.i, ptr %7, align 8
  %.sroa.2.0.extract.trunc = trunc nuw nsw i64 %i.ag to i40
  store i40 %.sroa.2.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ah = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2694 ; 9 uses
  call void @_ZN4LIEF5MachO6SymbolC1ERKNS0_7details8nlist_32E(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %7) #26, !noalias !2694
  %i.ai = load i32, ptr %7, align 8, !tbaa !2696  ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.aj = zext i32 %i.ai to i64
  call void @_ZNK4LIEF12BinaryStream14peek_string_atB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::result.369") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.aj, i64 noundef -1) #26
  %i.ak = load i8, ptr %i.l, align 8, !tbaa !400, !range !256, !noundef !257
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store ptr %i.m, ptr %9, align 8, !tbaa !342
  %i.am = load ptr, ptr %8, align 8, !tbaa !252   ; 2 uses
  %i.an = load i64, ptr %i.n, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.an, ptr %i.a, align 8, !tbaa !118
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %bb.g, label %._crit_edge.i.i

bb.g:                                             ; preds = %bb.f
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.ap, ptr %9, align 8, !tbaa !252
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.aq, ptr %i.m, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.g, %bb.f
  %i.ar = phi ptr [ %i.ap, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  switch i64 %i.an, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.am, align 1, !tbaa !253
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.at = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  store i64 %i.at, ptr %i.o, align 8, !tbaa !343
  %i.au = load ptr, ptr %9, align 8, !tbaa !252
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !117
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 %9) #26
  %i.az = load ptr, ptr %9, align 8, !tbaa !252   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.m
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !253
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %8)
  store ptr %i.ah, ptr %i.bd, align 8, !tbaa !385
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.be = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bf, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.250, i64 38, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i8, ptr %i.l, align 8, !tbaa !400, !range !256, !noundef !257
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %8, align 8, !tbaa !252   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.q
  br i1 %i.bj, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !253
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #29
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit: ; preds = %bb.l, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.m

bb.m:                                             ; preds = %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !117
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(56) %i.ah) #26
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !118
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEEixEOm(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  store ptr %i.ah, ptr %i.bq, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !115 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 160 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 168 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !409 ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 176 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !410
  %.not.i.i7 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not.i.i7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = ptrtoint ptr %i.ah to i64
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !385
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !409
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !737 ; 10 uses
  %i.ca = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cc = sub i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 9223372036854775800
  br i1 %i.cd, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.ce = ashr exact i64 %i.cc, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ce, i64 1)
  %i.cf = add nsw i64 %.sroa.speculated.i.i, %i.ce ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.ce
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cf, i64 1152921504606846975)
  %i.ci = select i1 %i.cg, i64 1152921504606846975, i64 %i.ch ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.ci, 0
  call void @llvm.assume(i1 %.not.i.i8)
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #27 ; 10 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  %i.cm = ptrtoint ptr %i.ah to i64
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !385
  %.not10.i.i.i.i = icmp eq ptr %i.bz, %i.bu
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cn = add i64 %i.ca, -8
  %i.co = sub i64 %i.cn, %i.cb                    ; 3 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.co, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cr = and i64 %i.co, -8
  %i.cs = add i64 %i.cr, 8                        ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ck, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.bz, i64 %i.cs
  %bound0 = icmp ult ptr %i.ck, %i.cu
  %bound1 = icmp ult ptr %i.bz, %i.ct
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, 4611686018427387900     ; 3 uses
  %i.cv = shl i64 %n.vec, 3                       ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bz, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cy ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.bz, i64 %i.cy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  %i.cz = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 8, !tbaa !385, !alias.scope !2699
  %wide.load34 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !385, !alias.scope !2699
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !385, !alias.scope !2700, !noalias !2701
  store <2 x i64> %wide.load34, ptr %i.da, align 8, !tbaa !385, !alias.scope !2700, !noalias !2701
  %10 = getelementptr i8, ptr %next.gep33, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep33, align 8, !tbaa !385, !alias.scope !2699
  store <2 x ptr> splat (ptr null), ptr %10, align 8, !tbaa !385, !alias.scope !2699
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !2692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader36

.lr.ph.i.i.i.i.preheader36:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader36, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader36 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  %i.dc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2698
  store i64 %i.dc, ptr %.012.i.i.i.i, align 8, !tbaa !385, !alias.scope !2697
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2698
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dd, %i.bu
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2693

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ck, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.cw, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dg = load ptr, ptr %i.bv, align 8, !tbaa !410
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.di) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.q
  store ptr %i.ck, ptr %i.bs, align 8, !tbaa !737
  store ptr %i.df, ptr %i.bt, align 8, !tbaa !409
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dj, ptr %i.bv, align 8, !tbaa !410
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit
  %i.dk = load i64, ptr %i.b, align 8, !tbaa !118
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.b, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.dm = load i64, ptr %i.d, align 8, !tbaa !331
  %i.dn = load ptr, ptr %2, align 8, !tbaa !117
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(24) %2) #26, !inline_history !5
  %i.dr = icmp ult i64 %i.dm, %i.dq
  br i1 %i.dr, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.a, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit.thread
  %.sroa.2.2 = phi i64 [ 1, %_ZNK4LIEF12BinaryStream4readINS_5MachO7details8nlist_32EEENS_6resultIT_EEv.exit.thread ], [ 4294967297, %bb.a ], [ 4294967297, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i64 %.sroa.2.2
}

declare void @_ZN4LIEF11swap_endianINS_5MachO7details8nlist_32EEEvPT_(ptr noundef) local_unnamed_addr #3

declare void @_ZN4LIEF5MachO6SymbolC1ERKNS0_7details8nlist_32E(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(12)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser27parse_dyldinfo_generic_bindINS0_7details7MachO32EEENS_10ok_error_tEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %3 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i64, align 8                      ; 24 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::vector.2657", align 8  ; 9 uses
  %9 = alloca %"class.LIEF::ref_iterator.2662", align 8 ; 13 uses
  %10 = alloca %"class.LIEF::result.369", align 8 ; 7 uses
  %11 = alloca %"struct.LIEF::MachO::(anonymous namespace)::ThreadedBindData", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.k = tail call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.j) #26 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.266, i64 35)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.bq

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.p = load i32, ptr %i.o, align 4, !tbaa !119  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.r = load i32, ptr %i.q, align 4, !tbaa !119  ; 4 uses
  %i.s = icmp eq i32 %i.p, 0
  %i.t = icmp eq i32 %i.r, 0
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %bb.bq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp slt i32 %i.p, 0
  %i.v = icmp slt i32 %i.r, 0
  %or.cond5 = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 3, ptr nonnull @.str.267, i64 41)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.bq

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.z = load i8, ptr %i.y, align 2, !tbaa !685, !range !256, !noundef !257
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  br i1 %i.aa, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ac, ptr noundef nonnull align 1 dereferenceable(10) @.str.26, i64 10, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.ad, align 8, !tbaa !343
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i8 0, ptr %i.ae, align 2, !tbaa !253
  %i.af = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  %i.ag = load ptr, ptr %6, align 8, !tbaa !252   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ai = zext nneg i32 %i.p to i64
  %i.aj = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ab, i64 noundef %i.ai) #26
  br label %.critedge211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !253
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.critedge211

.critedge211:                                     ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = phi ptr [ %i.aj, %bb.g ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge211
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ap, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %3, i32 noundef 3, ptr nonnull @.str.268, i64 61)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.bq

bb.i:                                             ; preds = %.critedge211
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !329 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !333
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = zext nneg i32 %i.p to i64               ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !416
  %i.ba = sub i64 %i.ax, %i.az                    ; 3 uses
  %i.bb = icmp ugt i64 %i.ba, %i.aw
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = zext nneg i32 %i.r to i64               ; 2 uses
  %i.bd = add i64 %i.ba, %i.bc
  %i.be = icmp ugt i64 %i.bd, %i.aw
end_hunk_13
begin_hunk_14_@_ZN4LIEF5MachO12BinaryParser7do_bindINS0_7details7MachO32EEENS_10ok_error_tENS0_15DyldBindingInfo5CLASSEhhmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEilbbPvm:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !401
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !245 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %.not22 = icmp ult i64 %i.ar, %i.aj
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr [8 x i8], ptr %i.an, i64 %i.aj
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !402
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.au, ptr %i.av, align 8, !tbaa !199
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 2 uses
  %.not79 = icmp eq ptr %i.ax, null
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !389
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !115
  %i.bc = tail call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.az, %bb.h ], [ %i.bc, %bb.i ] ; 3 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %.0, ptr %i.bd, align 8, !tbaa !207
  %i.be = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !891
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bf = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bg, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bh = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2729 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bh, i8 0, i64 96, i1 false), !noalias !2729
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.bh) #26, !noalias !2729
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !342, !noalias !2729
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %i.bk, align 16, !tbaa !343, !noalias !2729
  store i8 0, ptr %i.bj, align 8, !tbaa !253, !noalias !2729
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !noalias !2729
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.bh, align 16, !tbaa !117, !noalias !2729
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false), !noalias !2729
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i32 2, ptr %i.bq, align 8, !tbaa !395
  store i8 0, ptr %i.bm, align 8, !tbaa !396
  store i8 0, ptr %i.bn, align 1, !tbaa !397
  store i16 0, ptr %i.bo, align 2, !tbaa !398
  %i.br = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.br, ptr %17, align 8, !tbaa !342
  %i.bs = load ptr, ptr %5, align 8, !tbaa !252   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !118
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %bb.m, label %._crit_edge.i.i

bb.m:                                             ; preds = %bb.l
  %i.bw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bw, ptr %17, align 8, !tbaa !252
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m, %bb.l
  %i.by = phi ptr [ %i.bw, %bb.m ], [ %i.br, %bb.l ] ; 2 uses
  switch i64 %i.bu, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.bz = load i8, ptr %i.bs, align 1, !tbaa !253
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.o:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bs, i64 %i.bu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.n, %bb.o
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !343
  %i.cc = load ptr, ptr %17, align 8, !tbaa !252
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ca
  store i8 0, ptr %i.cd, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ce = load ptr, ptr %i.bh, align 16, !tbaa !117
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 %17) #26
  %i.ch = load ptr, ptr %17, align 8, !tbaa !252  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.br
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cj = load i64, ptr %i.br, align 8, !tbaa !253
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.bh, ptr %i.cl, align 8, !tbaa !207
  store ptr %i.ag, ptr %i.bp, align 16, !tbaa !891
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !115 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 160 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 168 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !409 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 176 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !410
  %.not.i.i = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = ptrtoint ptr %i.bh to i64
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !385
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !409
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !737 ; 7 uses
  %i.cw = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64               ; 3 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.de, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #27 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  %i.di = ptrtoint ptr %i.bh to i64
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !385
  %.not10.i.i.i.i = icmp eq ptr %i.cv, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dj = add i64 %i.cw, -8
  %i.dk = sub i64 %i.dj, %i.cx                    ; 2 uses
  %i.dl = lshr i64 %i.dk, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dk, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.dg, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cv, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dq ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.cv, i64 %i.dq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  %i.dr = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep100, align 8, !tbaa !385, !alias.scope !2731
  %wide.load101 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !385, !alias.scope !2731
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !385, !alias.scope !2730
  store <2 x i64> %wide.load101, ptr %i.ds, align 8, !tbaa !385, !alias.scope !2730
  %18 = getelementptr i8, ptr %next.gep100, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep100, align 8, !tbaa !385, !alias.scope !2731
  store <2 x ptr> splat (ptr null), ptr %18, align 8, !tbaa !385, !alias.scope !2731
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !2721

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader119

.lr.ph.i.i.i.i.preheader119:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader119, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader119 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader119 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2730)
  call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  %i.du = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2731
  store i64 %i.du, ptr %.012.i.i.i.i, align 8, !tbaa !385, !alias.scope !2730
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2731
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dv, %i.cq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2722

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.do, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cv, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dy = load ptr, ptr %i.cr, align 8, !tbaa !410
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.ea) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.s
  store ptr %i.dg, ptr %i.co, align 8, !tbaa !737
  store ptr %i.dx, ptr %i.cp, align 8, !tbaa !409
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.eb, ptr %i.cr, align 8, !tbaa !410
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.k
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !115
  %i.ee = call noundef ptr @_ZN4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.ed) #26 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 200 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 208 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !892 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 216 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !893
  %.not.i.i24 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not.i.i24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = ptrtoint ptr %i.ag to i64
  store i64 %i.el, ptr %i.ei, align 8, !tbaa !895
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !892
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !896 ; 7 uses
  %i.eo = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64               ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.v
  %i.es = ashr exact i64 %i.eq, 3                 ; 3 uses
  %.sroa.speculated.i.i27 = call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i27, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = call i64 @llvm.umin.i64(i64 %i.et, i64 1152921504606846975)
  %i.ew = select i1 %i.eu, i64 1152921504606846975, i64 %i.ev ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.ew, 0
  call void @llvm.assume(i1 %.not.i.i28)
  %i.ex = shl nuw nsw i64 %i.ew, 3
  %i.ey = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #27 ; 7 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  %i.fa = ptrtoint ptr %i.ag to i64
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !895
  %.not10.i.i.i.i29 = icmp eq ptr %i.en, %i.ei
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30.preheader

.lr.ph.i.i.i.i30.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.fb = add i64 %i.eo, -8
  %i.fc = sub i64 %i.fb, %i.ep                    ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check104 = icmp ult i64 %i.fc, 24
  br i1 %min.iters.check104, label %.lr.ph.i.i.i.i30.preheader118, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph.i.i.i.i30.preheader
  %n.vec106 = and i64 %i.fe, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec106, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ey, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.en, i64 %i.ff
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next113, %vector.body107 ] ; 2 uses
  %i.fi = shl i64 %index108, 3                    ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.ey, i64 %i.fi ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.en, i64 %i.fi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  %i.fj = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load111 = load <2 x i64>, ptr %next.gep110, align 8, !tbaa !895, !alias.scope !2733
  %wide.load112 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !895, !alias.scope !2733
  %i.fk = getelementptr i8, ptr %next.gep109, i64 16
  store <2 x i64> %wide.load111, ptr %next.gep109, align 8, !tbaa !895, !alias.scope !2732
  store <2 x i64> %wide.load112, ptr %i.fk, align 8, !tbaa !895, !alias.scope !2732
  %19 = getelementptr i8, ptr %next.gep110, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep110, align 8, !tbaa !895, !alias.scope !2733
  store <2 x ptr> splat (ptr null), ptr %19, align 8, !tbaa !895, !alias.scope !2733
  %index.next113 = add nuw i64 %index108, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.fl, label %middle.block114, label %vector.body107, !llvm.loop !2726

middle.block114:                                  ; preds = %vector.body107
  %cmp.n115 = icmp eq i64 %i.fe, %n.vec106
  br i1 %cmp.n115, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30.preheader118

.lr.ph.i.i.i.i30.preheader118:                    ; preds = %.lr.ph.i.i.i.i30.preheader, %middle.block114
  %.012.i.i.i.i31.ph = phi ptr [ %i.ey, %.lr.ph.i.i.i.i30.preheader ], [ %i.fg, %middle.block114 ]
  %.0911.i.i.i.i32.ph = phi ptr [ %i.en, %.lr.ph.i.i.i.i30.preheader ], [ %i.fh, %middle.block114 ]
  br label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph.i.i.i.i30.preheader118, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i30 ], [ %.012.i.i.i.i31.ph, %.lr.ph.i.i.i.i30.preheader118 ] ; 2 uses
  %.0911.i.i.i.i32 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i30 ], [ %.0911.i.i.i.i32.ph, %.lr.ph.i.i.i.i30.preheader118 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  %i.fm = load i64, ptr %.0911.i.i.i.i32, align 8, !tbaa !895, !alias.scope !2733
  store i64 %i.fm, ptr %.012.i.i.i.i31, align 8, !tbaa !895, !alias.scope !2732
  store ptr null, ptr %.0911.i.i.i.i32, align 8, !tbaa !895, !alias.scope !2733
  %i.fn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i32, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.fn, %i.ei
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i30, !llvm.loop !2727

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i30, %middle.block114, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.ey, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.fg, %middle.block114 ], [ %i.fo, %.lr.ph.i.i.i.i30 ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i34, i64 8
  %.not.i23.i41 = icmp eq ptr %i.en, null
  br i1 %.not.i23.i41, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.fq = load ptr, ptr %i.ej, align 8, !tbaa !893
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.fs) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.x
  store ptr %i.ey, ptr %i.eg, align 8, !tbaa !896
  store ptr %i.fp, ptr %i.eh, align 8, !tbaa !892
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.ft, ptr %i.ej, align 8, !tbaa !893
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.u
  %i.fu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.fv = call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_15DyldBindingInfo5CLASSE(i64 noundef %1) #26
  store ptr %i.fv, ptr %i.d, align 8, !tbaa !260
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %12, i32 noundef 1, ptr nonnull @.str.288, i64 10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.fy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fz, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 4, ptr nonnull @.str.266, i64 35)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.ga = load ptr, ptr %i.ag, align 8, !tbaa !117
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(96) %i.ag) #26, !inline_history !81
  br label %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i, %.thread, %bb.c
  %.sroa.4.1 = phi i64 [ 5, %bb.c ], [ 4294967298, %.thread ], [ 2, %_ZNKSt14default_deleteIN4LIEF5MachO15DyldBindingInfoEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %.sroa.074.0.insert.insert = phi i64 [ %.sroa.4.1, %_ZNSt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS2_EED2Ev.exit ], [ 5, %bb.b ]
  ret i64 %.sroa.074.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO32EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  store i8 %1, ptr %i.a, align 1, !tbaa !253
  store i8 %2, ptr %i.b, align 1, !tbaa !253
  %i.d = zext i8 %2 to i64                        ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !756, !nonnull !257, !align !482 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !590  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not = icmp ugt i64 %i.l, %i.d
  br i1 %.not, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.n, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.278, i64 18, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.w

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.02.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !752
  %i.p = ptrtoint ptr %.sroa.02.0.copyload.i to i64
  %i.q = sub i64 %i.p, %i.j
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !757
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !593  ; 6 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !752
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.q
  store ptr %i.u, ptr %i.o, align 8, !tbaa !757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.w = load i64, ptr %i.v, align 8, !tbaa !594  ; 2 uses
  %i.x = add i64 %i.w, %3                         ; 6 uses
  store i64 %i.x, ptr %i.c, align 8, !tbaa !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.z = load i64, ptr %i.y, align 8, !tbaa !884
  %i.aa = add i64 %i.z, %i.w
  %i.ab = icmp ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ac = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ad, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.290, i64 25, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO14SegmentCommandESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ae = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !2741 ; 13 uses
  tail call void @_ZN4LIEF5MachO10RelocationC2Emh(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 noundef %i.x, i8 noundef zeroext %1) #26, !noalias !2741
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4LIEF5MachO14RelocationDyldE, i64 16), ptr %i.ae, align 8, !tbaa !117, !noalias !2741
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !115 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 108
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !213
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %i.s, ptr %i.ak, align 8, !tbaa !217
  %i.al = tail call noundef ptr @_ZNK4LIEF5MachO6Binary28section_from_virtual_addressEm(ptr noundef nonnull align 8 dereferenceable(552) %i.ag, i64 noundef %i.x) #26 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ao, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.4, i64 64, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !222
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !223 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ar, %bb.f ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.as, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !118
  %i.av = icmp ult i64 %i.au, %i.x                ; 2 uses
  %.19.i.i.i = select i1 %i.av, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.av, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aw = icmp eq ptr %.19.i.i.i, %i.as
  br i1 %i.aw, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !118
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !226
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !227
  br label %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread

_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmPN4LIEF5MachO6SymbolEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.f, %bb.g, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit
  switch i8 %1, label %bb.k [
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.i
    i8 102, label %bb.j
  ]

bb.h:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i8 32, ptr %i.bd, align 8, !tbaa !218
  br label %bb.l

bb.i:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread, %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i8 32, ptr %i.be, align 8, !tbaa !218
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i8 32, ptr %i.bf, align 8, !tbaa !218
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt3mapImPN4LIEF5MachO6SymbolESt4lessImESaISt4pairIKmS3_EEE4findERS7_.exit.thread
  %i.bg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKhEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.291, i64 33, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !224 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.l
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !118 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i12
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i12 ], [ %.020.i.i.i, %bb.m ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !118 ; 2 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm               ; 2 uses
  %.in.v.i.i.i = select i1 %i.bn, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !224 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i13, label %._crit_edge.i.i.i, label %bb.m, !llvm.loop !7

._crit_edge.i.i.i:                                ; preds = %bb.m
  br i1 %i.bn, label %._crit_edge.thread.i.i.i, label %bb.o

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.l
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.bj, %bb.l ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !239
  %i.bq = icmp eq ptr %.019.lcssa29.i.i.i, %i.bp
  br i1 %i.bq, label %select.unfold.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.br = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !118
  %.pre18.i.i = load i64, ptr %i.c, align 8, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i
  %i.bs = phi i64 [ %.pre18.i.i, %bb.n ], [ %i.bk, %._crit_edge.i.i.i ]
  %i.bt = phi i64 [ %.pre.i.i, %bb.n ], [ %i.bm, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.n ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %select.unfold.i.i, label %bb.v

select.unfold.i.i:                                ; preds = %bb.o, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.o ] ; 3 uses
  %i.bv = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.bj
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %select.unfold.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !118
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !118
  %i.bz = icmp ult i64 %i.bx, %i.by
  br label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i, %bb.p
  %i.ca = phi i1 [ %i.bz, %bb.p ], [ true, %select.unfold.i.i ]
  %i.cb = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !118
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !118
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ca, ptr noundef nonnull %i.cb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bj) #26
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !241
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !241
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 200 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !230 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 208 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !231
  %.not.i.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = ptrtoint ptr %i.ae to i64
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !233
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !230
  br label %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !234 ; 7 uses
  %i.cp = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.t, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i15)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #27 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %i.db = ptrtoint ptr %i.ae to i64
  store i64 %i.db, ptr %i.da, align 8, !tbaa !233
  %.not10.i.i.i.i = icmp eq ptr %i.co, %i.cj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dc = add i64 %i.cp, -8
  %i.dd = sub i64 %i.dc, %i.cq                    ; 2 uses
  %i.de = lshr i64 %i.dd, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dd, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.df, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cz, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.co, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.dj ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.co, i64 %i.dj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %i.dk = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep60, align 8, !tbaa !233, !alias.scope !2743
  %wide.load61 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !233, !alias.scope !2743
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !233, !alias.scope !2742
  store <2 x i64> %wide.load61, ptr %i.dl, align 8, !tbaa !233, !alias.scope !2742
  %10 = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep60, align 8, !tbaa !233, !alias.scope !2743
  store <2 x ptr> splat (ptr null), ptr %10, align 8, !tbaa !233, !alias.scope !2743
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !2739

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader63

.lr.ph.i.i.i.i.preheader63:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader63, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.experimental.noalias.scope.decl(metadata !2743)
  %i.dn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !2743
  store i64 %i.dn, ptr %.012.i.i.i.i, align 8, !tbaa !233, !alias.scope !2742
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !233, !alias.scope !2743
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.cj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2740

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cz, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dh, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.co, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dr = load ptr, ptr %i.ck, align 8, !tbaa !231
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.dt) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.u
  store ptr %i.cz, ptr %i.ch, align 8, !tbaa !234
  store ptr %i.dq, ptr %i.ci, align 8, !tbaa !230
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.du, ptr %i.ck, align 8, !tbaa !231
  br label %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %bb.o
  %i.dv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dw, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 1, ptr nonnull @.str.292, i64 55, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i: ; preds = %bb.e, %bb.v
  %.sroa.4.0 = phi i64 [ 2, %bb.e ], [ 4294967298, %bb.v ]
  %i.dx = load ptr, ptr %i.ae, align 8, !tbaa !117
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #26, !inline_history !83
  br label %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.r, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i, %bb.c
  %.sroa.4.1 = phi i64 [ 5, %bb.c ], [ %.sroa.4.0, %_ZNKSt14default_deleteIN4LIEF5MachO14RelocationDyldEEclEPS2_.exit.i ], [ 4294967298, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ 4294967298, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %.sroa.033.0.insert.insert = phi i64 [ %.sroa.4.1, %_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit ], [ 5, %bb.b ]
  ret i64 %.sroa.033.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser20parse_chained_importINS0_7details7MachO32EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamESA_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 4 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.LIEF::MachO::details::dyld_chained_import_addend64", align 8 ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %10 = alloca %"struct.LIEF::MachO::details::dyld_chained_import_addend", align 8 ; 5 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"struct.LIEF::MachO::details::dyld_chained_import", align 4 ; 5 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %"class.LIEF::result.369", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %"class.LIEF::result.369", align 8 ; 12 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %22 = alloca %"class.LIEF::result.369", align 8 ; 12 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !897
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %2, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %2) #26
  %i.q = icmp ult i64 %i.p, %i.l
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !760
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %2, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(40) %2) #26
  %i.y = icmp ult i64 %i.x, %i.t
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 3, ptr nonnull @.str.336, i64 113)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.az

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !898 ; 4 uses
  %i.ad = icmp ugt i32 %i.ac, 16777214
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  tail call void @_ZN6spdlog6logger4log_IJRKjS3_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 3, ptr nonnull @.str.337, i64 79, ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN4LIEF5MachO12BinaryParser20parse_chained_importINS0_7details7MachO32EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamESA_E16MAX_BIND_ORDINAL)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  br label %bb.az

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !759
  switch i32 %i.ah, label %bb.ay [
    i32 1, label %bb.g
    i32 2, label %bb.u
    i32 3, label %bb.ai
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !897
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !118
  %.not166 = icmp eq i32 %i.ac, 0
  br i1 %.not166, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph163, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr %i.al, ptr %17, align 8, !tbaa !342
  store i64 0, ptr %i.am, align 8, !tbaa !343
  store i8 0, ptr %i.al, align 8, !tbaa !253
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !331 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i32 0, ptr %14, align 4
  %i.ar = load ptr, ptr %2, align 8, !tbaa !117
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i64 %i.at(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %14, i64 noundef %i.aq, i64 noundef 4, i64 noundef 0) #26, !inline_history !84
  %i.av = and i64 %i.au, 4294967296
  %.not.i.i = icmp eq i64 %i.av, 0
  %i.aw = load i32, ptr %14, align 4              ; 4 uses
  store i64 %i.aq, ptr %i.ak, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details19dyld_chained_importEEENS_6resultIT_EEv.exit.thread, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details19dyld_chained_importEEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readINS_5MachO7details19dyld_chained_importEEENS_6resultIT_EEv.exit: ; preds = %bb.h
  %i.ax = add i64 %i.aq, 4
  store i64 %i.ax, ptr %i.ak, align 8, !tbaa !331
  %i.ay = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !173
end_hunk_14
begin_hunk_15_@_ZN4LIEF5MachO12BinaryParser8do_fixupINS0_7details7MachO32EEENS_10ok_error_tENS0_19DYLD_CHAINED_FORMATEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElb:bb.a
  call void @_ZN6spdlog6logger4log_IJRKbEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ah, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 1, ptr nonnull @.str.348, i64 17, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ai = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aj, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 1, ptr nonnull @.str.349, i64 17, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %.not55 = icmp eq ptr %i.al, null
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !389
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !115
  %i.aq = call noundef ptr @_ZNK4LIEF5MachO6Binary10get_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.an, %bb.f ], [ %i.aq, %bb.g ] ; 5 uses
  %.not12 = icmp eq ptr %.0, null
  br i1 %.not12, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.0, ptr %i.ar, align 8, !tbaa !207
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 64
  store ptr %i.e, ptr %i.as, align 8, !tbaa !891
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 58
  %i.au = load i16, ptr %i.at, align 2, !tbaa !398
  %i.av = lshr i16 %i.au, 8
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !119
  %i.ay = icmp eq i32 %i.ax, %i.aw
  br i1 %i.ay, label %bb.j, label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !199
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 80
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !915
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 2, ptr nonnull @.str.287, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.be = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !2769 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.be, i8 0, i64 96, i1 false), !noalias !2769
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.be) #26, !noalias !2769
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !342, !noalias !2769
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.bh, align 16, !tbaa !343, !noalias !2769
  store i8 0, ptr %i.bg, align 8, !tbaa !253, !noalias !2769
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !noalias !2769
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4LIEF5MachO6SymbolE, i64 16), ptr %i.be, align 16, !tbaa !117, !noalias !2769
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bk, i8 0, i64 32, i1 false), !noalias !2769
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 0, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !199
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  store ptr %i.bm, ptr %i.bn, align 16, !tbaa !915
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.bo, ptr %11, align 8, !tbaa !342
  %i.bp = load ptr, ptr %3, align 8, !tbaa !252   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.br, ptr %i.a, align 8, !tbaa !118
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %bb.l, label %._crit_edge.i.i

bb.l:                                             ; preds = %bb.k
  %i.bt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.bt, ptr %11, align 8, !tbaa !252
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !118
  store i64 %i.bu, ptr %i.bo, align 8, !tbaa !253
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.bv = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %bb.k ] ; 2 uses
  switch i64 %i.br, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bw = load i8, ptr %i.bp, align 1, !tbaa !253
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !253
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.n:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bp, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.m, %bb.n
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !343
  %i.bz = load ptr, ptr %11, align 8, !tbaa !252
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bx
  store i8 0, ptr %i.ca, align 1, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cb = load ptr, ptr %i.be, align 16, !tbaa !117
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(56) %i.be, ptr noundef nonnull align 8 %11) #26
  %i.ce = load ptr, ptr %11, align 8, !tbaa !252  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bo
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cg = load i64, ptr %i.bo, align 8, !tbaa !253
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.be, ptr %i.ci, align 8, !tbaa !207
  store ptr %i.e, ptr %i.bk, align 16, !tbaa !891
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !115 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 160 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 168 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !409 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 176 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !410
  %.not.i.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = ptrtoint ptr %i.be to i64
  store i64 %i.cq, ptr %i.cn, align 8, !tbaa !385
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.cr, ptr %i.cm, align 8, !tbaa !409
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !737 ; 7 uses
  %i.ct = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 3 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.q, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i15)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #27 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cv
  %i.df = ptrtoint ptr %i.be to i64
  store i64 %i.df, ptr %i.de, align 8, !tbaa !385
  %.not10.i.i.i.i = icmp eq ptr %i.cs, %i.cn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dg = add i64 %i.ct, -8
  %i.dh = sub i64 %i.dg, %i.cu                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dh, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.dj, 4611686018427387900     ; 3 uses
  %i.dk = shl i64 %n.vec, 3                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dd, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cs, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dn ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.cs, i64 %i.dn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %i.do = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep73, align 8, !tbaa !385, !alias.scope !2771
  %wide.load74 = load <2 x i64>, ptr %i.do, align 8, !tbaa !385, !alias.scope !2771
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !385, !alias.scope !2770
  store <2 x i64> %wide.load74, ptr %i.dp, align 8, !tbaa !385, !alias.scope !2770
  %12 = getelementptr i8, ptr %next.gep73, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep73, align 8, !tbaa !385, !alias.scope !2771
  store <2 x ptr> splat (ptr null), ptr %12, align 8, !tbaa !385, !alias.scope !2771
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2761

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader92

.lr.ph.i.i.i.i.preheader92:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader92, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %i.dr = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2771
  store i64 %i.dr, ptr %.012.i.i.i.i, align 8, !tbaa !385, !alias.scope !2770
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !385, !alias.scope !2771
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ds, %i.cn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !2762

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dd, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dl, %middle.block ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cs, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dv = load ptr, ptr %i.co, align 8, !tbaa !410
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.dx) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.r
  store ptr %i.dd, ptr %i.cl, align 8, !tbaa !737
  store ptr %i.du, ptr %i.cm, align 8, !tbaa !409
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dy, ptr %i.co, align 8, !tbaa !410
  br label %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.i, %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !164 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 144 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !167 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 152 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !916
  %.not.i.i13 = icmp eq ptr %i.ed, %i.ef
  br i1 %.not.i.i13, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.eg = ptrtoint ptr %i.e to i64
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !175
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !167
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS2_EED2Ev.exit
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !168 ; 7 uses
  %i.ej = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 3 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i16 = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i16, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i17 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #27 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  %i.ev = ptrtoint ptr %i.e to i64
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !175
  %.not10.i.i.i.i18 = icmp eq ptr %i.ei, %i.ed
  br i1 %.not10.i.i.i.i18, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader

.lr.ph.i.i.i.i19.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ew = add i64 %i.ej, -8
  %i.ex = sub i64 %i.ew, %i.ek                    ; 2 uses
  %i.ey = lshr i64 %i.ex, 3
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ex, 24
  br i1 %min.iters.check77, label %.lr.ph.i.i.i.i19.preheader91, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph.i.i.i.i19.preheader
  %n.vec79 = and i64 %i.ez, 4611686018427387900   ; 3 uses
  %i.fa = shl i64 %n.vec79, 3                     ; 2 uses
  %i.fb = getelementptr i8, ptr %i.et, i64 %i.fa  ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ei, i64 %i.fa
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next86, %vector.body80 ] ; 2 uses
  %i.fd = shl i64 %index81, 3                     ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.et, i64 %i.fd ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.ei, i64 %i.fd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.fe = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load84 = load <2 x i64>, ptr %next.gep83, align 8, !tbaa !175, !alias.scope !2773
  %wide.load85 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !175, !alias.scope !2773
  %i.ff = getelementptr i8, ptr %next.gep82, i64 16
  store <2 x i64> %wide.load84, ptr %next.gep82, align 8, !tbaa !175, !alias.scope !2772
  store <2 x i64> %wide.load85, ptr %i.ff, align 8, !tbaa !175, !alias.scope !2772
  %13 = getelementptr i8, ptr %next.gep83, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep83, align 8, !tbaa !175, !alias.scope !2773
  store <2 x ptr> splat (ptr null), ptr %13, align 8, !tbaa !175, !alias.scope !2773
  %index.next86 = add nuw i64 %index81, 4         ; 2 uses
  %i.fg = icmp eq i64 %index.next86, %n.vec79
  br i1 %i.fg, label %middle.block87, label %vector.body80, !llvm.loop !2766

middle.block87:                                   ; preds = %vector.body80
  %cmp.n88 = icmp eq i64 %i.ez, %n.vec79
  br i1 %cmp.n88, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19.preheader91

.lr.ph.i.i.i.i19.preheader91:                     ; preds = %.lr.ph.i.i.i.i19.preheader, %middle.block87
  %.012.i.i.i.i20.ph = phi ptr [ %i.et, %.lr.ph.i.i.i.i19.preheader ], [ %i.fb, %middle.block87 ]
  %.0911.i.i.i.i21.ph = phi ptr [ %i.ei, %.lr.ph.i.i.i.i19.preheader ], [ %i.fc, %middle.block87 ]
  br label %.lr.ph.i.i.i.i19

.lr.ph.i.i.i.i19:                                 ; preds = %.lr.ph.i.i.i.i19.preheader91, %.lr.ph.i.i.i.i19
  %.012.i.i.i.i20 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i19 ], [ %.012.i.i.i.i20.ph, %.lr.ph.i.i.i.i19.preheader91 ] ; 2 uses
  %.0911.i.i.i.i21 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i19 ], [ %.0911.i.i.i.i21.ph, %.lr.ph.i.i.i.i19.preheader91 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.fh = load i64, ptr %.0911.i.i.i.i21, align 8, !tbaa !175, !alias.scope !2773
  store i64 %i.fh, ptr %.012.i.i.i.i20, align 8, !tbaa !175, !alias.scope !2772
  store ptr null, ptr %.0911.i.i.i.i21, align 8, !tbaa !175, !alias.scope !2773
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i21, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.fi, %i.ed
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i19, !llvm.loop !2767

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i19, %middle.block87, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i23 = phi ptr [ %i.et, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.fb, %middle.block87 ], [ %i.fj, %.lr.ph.i.i.i.i19 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i23, i64 8
  %.not.i23.i30 = icmp eq ptr %i.ei, null
  br i1 %.not.i23.i30, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.fl = load ptr, ptr %i.ee, align 8, !tbaa !916
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = sub i64 %i.fm, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.fn) #29
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.v
  store ptr %i.et, ptr %i.eb, align 8, !tbaa !168
  store ptr %i.fk, ptr %i.ec, align 8, !tbaa !167
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fo, ptr %i.ee, align 8, !tbaa !916
  br label %_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO22ChainedBindingInfoListESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.s
  ret i64 4294967296
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser15parse_fixup_segINS0_7details7MachO32EEENS_10ok_error_tERNS_10SpanStreamEjmj(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i16, align 2                      ; 7 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %12 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %15 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %18 = alloca %"struct.LIEF::MachO::details::dyld_chained_starts_in_segment", align 4 ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %19 = alloca %"struct.LIEF::MachO::details::dyld_chained_starts_in_segment", align 4 ; 12 uses
  %.sroa.7 = alloca [20 x i8], align 4            ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %"class.LIEF::SpanStream", align 8 ; 12 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %21 = alloca %"struct.LIEF::MachO::DyldChainedFixups::chained_starts_in_segment", align 8 ; 14 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i16, align 2                      ; 9 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  store i32 %4, ptr %i.c, align 4, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(552) %i.k) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !331, !noalias !2783 ; 2 uses
  store i64 %3, ptr %i.p, align 8, !tbaa !331, !noalias !2783
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26, !noalias !2784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(22) %18, i8 0, i64 22, i1 false), !noalias !2784
  %i.r = load ptr, ptr %1, align 8, !tbaa !117, !noalias !2784
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !noalias !2784
  %i.u = call i64 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %18, i64 noundef %3, i64 noundef 22, i64 noundef 0) #26, !noalias !2784, !inline_history !88
  %i.v = and i64 %i.u, 4294967296
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !2784
  store i64 %i.q, ptr %i.p, align 8, !tbaa !331, !noalias !2783
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.x = call noundef ptr @_Z9to_string11lief_errors(i32 noundef 1) #26
  store ptr %i.x, ptr %i.d, align 8, !tbaa !260
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.y, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %17, i32 noundef 3, ptr nonnull @.str.358, i64 53, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.sroa.062.0.copyload = load i32, ptr %18, align 4, !tbaa !119
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(18) %.sroa.7.0..sroa_idx, i64 18, i1 false), !tbaa.struct !917
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !2784
  store i64 %i.q, ptr %i.p, align 8, !tbaa !331, !noalias !2783
  store i32 %.sroa.062.0.copyload, ptr %19, align 4, !tbaa !119
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %.sroa.7.0..sroa_idx65, ptr noundef nonnull align 4 dereferenceable(18) %.sroa.7, i64 18, i1 false), !tbaa.struct !917
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !575, !noalias !2785 ; 2 uses
  %i.ab = icmp ugt i64 %3, %i.aa
  br i1 %i.ab, label %_ZNK4LIEF10SpanStream5sliceEm.exit, label %_ZNK4LIEF12BinaryStream4readINS_5MachO7details30dyld_chained_starts_in_segmentEEENS_6resultIT_EEv.exit

_ZNK4LIEF10SpanStream5sliceEm.exit:               ; preds = %bb.c
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.ad = call noundef ptr @_Z9to_string11lief_errors(i32 noundef 7) #26
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !260
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKjRKPKcEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ae, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 4, ptr nonnull @.str.359, i64 50, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.z

_ZNK4LIEF12BinaryStream4readINS_5MachO7details30dyld_chained_starts_in_segmentEEENS_6resultIT_EEv.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = sub nuw i64 %i.aa, %3                   ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !576, !noalias !2785 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 11 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %.sroa.960.8..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 3, ptr %.sroa.960.8..sroa_idx, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %20, align 8, !tbaa !117
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !260
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i64 %i.ag, ptr %.sroa.12.24..sroa_idx, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !254
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !332, !range !256, !noundef !257
  store i8 %i.ao, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !332
  %i.ap = icmp ugt i64 %i.ag, 21
  %i.aq = icmp ne ptr %i.ah, null
  %or.cond.not.i = select i1 %i.ap, i1 %i.aq, i1 false
  %spec.select = select i1 %or.cond.not.i, i64 22, i64 0
  store i64 %spec.select, ptr %i.aj, align 8, !tbaa !331, !noalias !2786
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA5_KcRKjEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.as, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %15, i32 noundef 1, ptr nonnull @.str.360, i64 24, ptr noundef nonnull align 1 dereferenceable(5) @_ZZN4LIEF5MachO12BinaryParser15parse_fixup_segINS0_7details7MachO32EEENS_10ok_error_tERNS_10SpanStreamEjmjE7DPREFIX, ptr noundef nonnull align 4 dereferenceable(4) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA5_KcRKtEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.au, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %14, i32 noundef 1, ptr nonnull @.str.361, i64 27, ptr noundef nonnull align 1 dereferenceable(5) @_ZZN4LIEF5MachO12BinaryParser15parse_fixup_segINS0_7details7MachO32EEENS_10ok_error_tERNS_10SpanStreamEjmjE7DPREFIX, ptr noundef nonnull align 2 dereferenceable(2) %.sroa.7.0..sroa_idx65)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.av = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !112
  %i.ay = zext i16 %i.ax to i32
  %i.az = call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef %i.ay) #26
  store ptr %i.az, ptr %i.f, align 8, !tbaa !260
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRA5_KcRKtRKPS2_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ba, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 1, ptr nonnull @.str.362, i64 29, ptr noundef nonnull align 1 dereferenceable(5) @_ZZN4LIEF5MachO12BinaryParser15parse_fixup_segINS0_7details7MachO32EEENS_10ok_error_tERNS_10SpanStreamEjmjE7DPREFIX, ptr noundef nonnull align 2 dereferenceable(2) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.bb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.142) #26
  %i.bc = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
end_hunk_15
begin_hunk_16_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !243
  store ptr %.0.i, ptr %0, align 8, !tbaa !242
  ret void
}

declare void @_ZN4LIEF11swap_endianIhEEvPT_(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !383
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !248 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !343
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !343
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !248 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !2791

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !343
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !252
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !248 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !2791

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !252
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !343
  %i.t = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911) #26 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !243  ; 3 uses
  %i.w = urem i64 %i.t, %i.v                      ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !242
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !928  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !248 ; 3 uses
  %i.ab = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ab                   ; 3 uses
  %i.ac = icmp eq i64 %.fr22.i.i, 0
  %i.ad = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !932 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.d, %bb.f
  %i.ae = phi i64 [ %i.al, %bb.f ], [ %.pre26.i.i, %bb.d ]
  %.0.us.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.aa, %bb.d ] ; 3 uses
  %i.af = icmp eq i64 %i.t, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

bb.e:                                             ; preds = %.split.us.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !343
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.e, %.split.us.i.i
  %i.aj = load ptr, ptr %.0.us.i.i, align 8, !tbaa !248 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !932 ; 2 uses
  %i.am = urem i64 %i.al, %i.v
  %.not19.us.i.i = icmp eq i64 %i.am, %i.w
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !100

.split.i.i:                                       ; preds = %bb.d, %bb.h
  %i.an = phi i64 [ %i.ax, %bb.h ], [ %.pre26.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.av, %bb.h ], [ %i.aa, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ap = icmp eq i64 %i.t, %i.an
  br i1 %i.ap, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !343
  %i.as = icmp eq i64 %.fr22.i.i, %i.ar
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !252
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %.fr22.i.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.av = load ptr, ptr %.0.i.i, align 8, !tbaa !248 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !932 ; 2 uses
  %i.ay = urem i64 %i.ax, %i.v
  %.not19.i.i = icmp eq i64 %i.ay, %i.w
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !100

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4LIEF5MachO6SymbolEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i, %bb.e, %bb.b, %bb.c
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.e ], [ null, %bb.f ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISD_Lb1EEE.exit.i.i ], [ null, %bb.h ], [ %.sroa.06.018.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit.thread10 ], [ %.sroa.06.018, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN4LIEF5MachO6SymbolEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISD_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !409  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !737    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !385
  store i64 %i.r, ptr %i.q, align 8, !tbaa !385
  store ptr null, ptr %2, align 8, !tbaa !385
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !385, !alias.scope !2806
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !385, !alias.scope !2806
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !385, !alias.scope !2805
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !385, !alias.scope !2805
  %3 = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !385, !alias.scope !2806
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !385, !alias.scope !2806
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !385, !alias.scope !2806
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !385, !alias.scope !2805
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !385, !alias.scope !2806
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2796

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !385, !alias.scope !2809
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !385, !alias.scope !2809
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !385, !alias.scope !2810, !noalias !2811
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !385, !alias.scope !2810, !noalias !2811
  %4 = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !385, !alias.scope !2809
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !385, !alias.scope !2809
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !2803

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !385, !alias.scope !2808
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !385, !alias.scope !2807
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !385, !alias.scope !2808
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2804

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !410
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO6SymbolESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !737
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !409
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !410
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !407    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !387
  store i64 %i.r, ptr %i.q, align 8, !tbaa !387
  store ptr null, ptr %2, align 8, !tbaa !387
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !387, !alias.scope !2826
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !387, !alias.scope !2826
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !387, !alias.scope !2825
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !387, !alias.scope !2825
  %3 = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !387, !alias.scope !2826
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !387, !alias.scope !2826
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2815

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2826)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !387, !alias.scope !2826
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !387, !alias.scope !2825
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !387, !alias.scope !2826
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2816

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !387, !alias.scope !2829
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !387, !alias.scope !2829
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !387, !alias.scope !2830, !noalias !2831
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !387, !alias.scope !2830, !noalias !2831
  %4 = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !387, !alias.scope !2829
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !387, !alias.scope !2829
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !2823

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !387, !alias.scope !2828
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !387, !alias.scope !2827
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !387, !alias.scope !2828
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2824

_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !406
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !407
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !408
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !406
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEEEvSE_T_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.not98 = icmp eq ptr %2, %3
  br i1 %.not98, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !406
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 27 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr i8, ptr %i.i, i64 %.idx    ; 7 uses
  %i.r = add i64 %i.b, -8
  %i.s = sub i64 %i.r, %i.c                       ; 3 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check166 = icmp ult i64 %i.s, 200
  br i1 %min.iters.check166, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck167

vector.memcheck167:                               ; preds = %bb.d
  %i.v = and i64 %i.s, -8                         ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = add i64 %i.v, %i.c
  %i.z = add i64 %i.y, 8
  %i.aa = sub i64 %i.z, %i.b
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.aa
  %bound0168 = icmp ult ptr %i.i, %i.ab
  %bound1169 = icmp ult ptr %i.q, %i.x
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck167
  %n.vec172 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.ac = shl i64 %n.vec172, 3                    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ac
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.af = shl i64 %index174, 3                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.q, i64 %i.af ; 4 uses
  %i.ag = getelementptr i8, ptr %next.gep176, i64 16
  %wide.load177 = load <2 x i64>, ptr %next.gep176, align 8, !tbaa !387, !alias.scope !2864
  %wide.load178 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !387, !alias.scope !2864
  %i.ah = getelementptr i8, ptr %next.gep175, i64 16
  store <2 x i64> %wide.load177, ptr %next.gep175, align 8, !tbaa !387, !alias.scope !2865, !noalias !2864
  store <2 x i64> %wide.load178, ptr %i.ah, align 8, !tbaa !387, !alias.scope !2865, !noalias !2864
  %4 = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep176, align 8, !tbaa !387, !alias.scope !2864
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !387, !alias.scope !2864
  %index.next179 = add nuw i64 %index174, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.ai, label %middle.block180, label %vector.body173, !llvm.loop !2835

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.u, %n.vec172
  br i1 %cmp.n181, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck167, %bb.d, %middle.block180
  %.09.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck167 ], [ %i.i, %bb.d ], [ %i.ad, %middle.block180 ]
  %.sroa.04.08.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck167 ], [ %i.q, %bb.d ], [ %i.ae, %middle.block180 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !387
  store i64 %i.aj, ptr %.09.i.i.i.i.i, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !387
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2836

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block180
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.am, ptr %i.h, align 8, !tbaa !408
  %i.an = ptrtoint ptr %i.q to i64
  %i.ao = sub i64 %i.an, %i.m
  %i.ap = ashr exact i64 %i.ao, 3                 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i43:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ay, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.ap, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.q, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !387
  store ptr null, ptr %i.ar, align 8, !tbaa !387
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !387 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !387
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i43
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(64) %i.au) #26, !inline_history !2837
  br label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i43
  %i.ay = add nsw i64 %.010.i.i.i.i.i, -1
  %i.az = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i43, label %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, !llvm.loop !2838

_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.ba = icmp sgt i64 %i.e, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i44:                               ; preds = %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bi, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %i.e, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bh, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %1, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47 ], [ %2, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit ] ; 3 uses
  %i.bb = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !387
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !387
  %i.bc = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !387 ; 3 uses
  store ptr %i.bb, ptr %.0811.i.i.i.i.i, align 8, !tbaa !387
  %.not.i.i.i.i.i.i.i.i.i45 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i45, label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46: ; preds = %.lr.ph.i.i.i.i.i44
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(64) %i.bc) #26, !inline_history !2839
  br label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47

_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i46, %.lr.ph.i.i.i.i.i44
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bi = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bj = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i44, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, !llvm.loop !2840

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.n ; 6 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bk, %3
  br i1 %.not6.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bl = add i64 %i.b, %i.m
  %i.bm = add i64 %i.bl, -8
  %i.bn = add i64 %i.k, %i.c
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 232
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.br = and i64 %i.bo, -8                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = add i64 %i.br, %i.k
  %i.bv = add i64 %i.bu, 8
  %i.bw = sub i64 %i.bv, %i.m
  %i.bx = getelementptr i8, ptr %2, i64 %i.bw
  %bound0 = icmp ult ptr %i.i, %i.bx
  %bound1 = icmp ult ptr %i.bk, %i.bt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.by = shl i64 %n.vec, 3                       ; 2 uses
  %i.bz = getelementptr i8, ptr %i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bk, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cb ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.bk, i64 %i.cb ; 4 uses
  %i.cc = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep133, align 8, !tbaa !387, !alias.scope !2866
  %wide.load134 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !387, !alias.scope !2866
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !387, !alias.scope !2867, !noalias !2866
  store <2 x i64> %wide.load134, ptr %i.cd, align 8, !tbaa !387, !alias.scope !2867, !noalias !2866
  %5 = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep133, align 8, !tbaa !387, !alias.scope !2866
  store <2 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !387, !alias.scope !2866
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !2844

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader253

.lr.ph.i.i.i.i.preheader253:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader253, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader253 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader253 ] ; 3 uses
  %i.cf = load i64, ptr %.sroa.04.07.i.i.i.i, align 8, !tbaa !387
  store i64 %i.cf, ptr %.08.i.i.i.i, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.07.i.i.i.i, align 8, !tbaa !387
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.cg, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2845

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ci = sub nsw i64 %i.e, %i.o
  %i.cj = getelementptr [8 x i8], ptr %i.i, i64 %i.ci ; 5 uses
  %.not7.i.i.i.i.i48 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i48, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit
  %i.ck = add i64 %i.k, -8
  %i.cl = sub i64 %i.ck, %i.m                     ; 3 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.cl, 200
  br i1 %min.iters.check142, label %.lr.ph.i.i.i.i.i49.preheader252, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader
  %i.co = and i64 %i.cl, -8                       ; 2 uses
  %i.cp = add i64 %i.d, %i.co
  %i.cq = add i64 %i.cp, 8
  %i.cr = sub i64 %i.cq, %i.n
  %i.cs = getelementptr i8, ptr %i.i, i64 %i.cr
  %i.ct = getelementptr i8, ptr %1, i64 %i.co
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %bound0144 = icmp ult ptr %i.cj, %i.cu
  %bound1145 = icmp ult ptr %1, %i.cs
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %.lr.ph.i.i.i.i.i49.preheader252, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck143
  %n.vec148 = and i64 %i.cn, 4611686018427387900  ; 3 uses
  %i.cv = shl i64 %n.vec148, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cj, i64 %i.cv
  %i.cx = getelementptr i8, ptr %1, i64 %i.cv
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.cy = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %i.cj, i64 %i.cy ; 2 uses
  %next.gep152 = getelementptr i8, ptr %1, i64 %i.cy ; 4 uses
  %i.cz = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <2 x i64>, ptr %next.gep152, align 8, !tbaa !387, !alias.scope !2868
  %wide.load154 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !387, !alias.scope !2868
  %i.da = getelementptr i8, ptr %next.gep151, i64 16
  store <2 x i64> %wide.load153, ptr %next.gep151, align 8, !tbaa !387, !alias.scope !2869, !noalias !2868
  store <2 x i64> %wide.load154, ptr %i.da, align 8, !tbaa !387, !alias.scope !2869, !noalias !2868
  %6 = getelementptr i8, ptr %next.gep152, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep152, align 8, !tbaa !387, !alias.scope !2868
  store <2 x ptr> splat (ptr null), ptr %6, align 8, !tbaa !387, !alias.scope !2868
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.db, label %middle.block156, label %vector.body149, !llvm.loop !2849

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.cn, %n.vec148
  br i1 %cmp.n157, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49.preheader252

.lr.ph.i.i.i.i.i49.preheader252:                  ; preds = %vector.memcheck143, %.lr.ph.i.i.i.i.i49.preheader, %middle.block156
  %.09.i.i.i.i.i50.ph = phi ptr [ %i.cj, %vector.memcheck143 ], [ %i.cj, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.cw, %middle.block156 ]
  %.sroa.04.08.i.i.i.i.i51.ph = phi ptr [ %1, %vector.memcheck143 ], [ %1, %.lr.ph.i.i.i.i.i49.preheader ], [ %i.cx, %middle.block156 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader252, %.lr.ph.i.i.i.i.i49
  %.09.i.i.i.i.i50 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i49 ], [ %.09.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader252 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i51 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i49 ], [ %.sroa.04.08.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader252 ] ; 3 uses
  %i.dc = load i64, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !387
  store i64 %i.dc, ptr %.09.i.i.i.i.i50, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i51, align 8, !tbaa !387
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i51, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i50, i64 8
  %.not.i.i.i.i.i52 = icmp eq ptr %i.dd, %i.i
  br i1 %.not.i.i.i.i.i52, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, label %.lr.ph.i.i.i.i.i49, !llvm.loop !2850

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54: ; preds = %.lr.ph.i.i.i.i.i49, %middle.block156, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.df, ptr %i.h, align 8, !tbaa !408
  %i.dg = ashr exact i64 %i.n, 3                  ; 2 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i56:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62
  %.012.i.i.i.i.i57 = phi i64 [ %i.dp, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %i.dg, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 2 uses
  %.0811.i.i.i.i.i58 = phi ptr [ %i.do, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %1, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 3 uses
  %.0910.i.i.i.i.i59 = phi ptr [ %i.dn, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62 ], [ %2, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54 ] ; 3 uses
  %i.di = load ptr, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !387
  store ptr null, ptr %.0910.i.i.i.i.i59, align 8, !tbaa !387
  %i.dj = load ptr, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !387 ; 3 uses
  store ptr %i.di, ptr %.0811.i.i.i.i.i58, align 8, !tbaa !387
  %.not.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i60, label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61: ; preds = %.lr.ph.i.i.i.i.i56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !117
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(64) %i.dj) #26, !inline_history !2839
  br label %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62

_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i.i.i.i.i.i61, %.lr.ph.i.i.i.i.i56
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i59, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i58, i64 8
  %i.dp = add nsw i64 %.012.i.i.i.i.i57, -1
  %i.dq = icmp sgt i64 %.012.i.i.i.i.i57, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i56, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit, !llvm.loop !2840

bb.e:                                             ; preds = %bb.b
  %i.dr = load ptr, ptr %0, align 8, !tbaa !407   ; 9 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dt = sub i64 %i.k, %i.ds
  %i.du = ashr exact i64 %i.dt, 3                 ; 4 uses
  %i.dv = sub nsw i64 1152921504606846975, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.e
  br i1 %i.dw, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.424) #28
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.e)
  %i.dx = add nsw i64 %.sroa.speculated.i, %i.du  ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.du
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #27
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.ed = phi ptr [ %i.ec, %bb.g ], [ null, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not7.i.i.i.i.i64 = icmp eq ptr %i.dr, %1
  br i1 %.not7.i.i.i.i.i64, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65.preheader

.lr.ph.i.i.i.i.i65.preheader:                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit
  %i.ee = add i64 %i.a, -8
  %i.ef = sub i64 %i.ee, %i.ds                    ; 2 uses
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check185 = icmp ult i64 %i.ef, 24
  br i1 %min.iters.check185, label %.lr.ph.i.i.i.i.i65.preheader249, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.i.i.i.i.i65.preheader
  %n.vec187 = and i64 %i.eh, 4611686018427387900  ; 3 uses
  %i.ei = shl i64 %n.vec187, 3                    ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ed, i64 %i.ei  ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dr, i64 %i.ei
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph186
  %index189 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body188 ] ; 2 uses
  %i.el = shl i64 %index189, 3                    ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.ed, i64 %i.el ; 2 uses
  %next.gep191 = getelementptr i8, ptr %i.dr, i64 %i.el ; 4 uses
  %i.em = getelementptr i8, ptr %next.gep191, i64 16
  %wide.load192 = load <2 x i64>, ptr %next.gep191, align 8, !tbaa !387
  %wide.load193 = load <2 x i64>, ptr %i.em, align 8, !tbaa !387
  %i.en = getelementptr i8, ptr %next.gep190, i64 16
  store <2 x i64> %wide.load192, ptr %next.gep190, align 8, !tbaa !387
  store <2 x i64> %wide.load193, ptr %i.en, align 8, !tbaa !387
  %7 = getelementptr i8, ptr %next.gep191, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep191, align 8, !tbaa !387
  store <2 x ptr> splat (ptr null), ptr %7, align 8, !tbaa !387
  %index.next194 = add nuw i64 %index189, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.eo, label %middle.block195, label %vector.body188, !llvm.loop !2851

middle.block195:                                  ; preds = %vector.body188
  %cmp.n196 = icmp eq i64 %i.eh, %n.vec187
  br i1 %cmp.n196, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65.preheader249

.lr.ph.i.i.i.i.i65.preheader249:                  ; preds = %.lr.ph.i.i.i.i.i65.preheader, %middle.block195
  %.09.i.i.i.i.i66.ph = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.ej, %middle.block195 ]
  %.sroa.04.08.i.i.i.i.i67.ph = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i65.preheader ], [ %i.ek, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i65

.lr.ph.i.i.i.i.i65:                               ; preds = %.lr.ph.i.i.i.i.i65.preheader249, %.lr.ph.i.i.i.i.i65
  %.09.i.i.i.i.i66 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i65 ], [ %.09.i.i.i.i.i66.ph, %.lr.ph.i.i.i.i.i65.preheader249 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i67 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i65 ], [ %.sroa.04.08.i.i.i.i.i67.ph, %.lr.ph.i.i.i.i.i65.preheader249 ] ; 3 uses
  %i.ep = load i64, ptr %.sroa.04.08.i.i.i.i.i67, align 8, !tbaa !387
  store i64 %i.ep, ptr %.09.i.i.i.i.i66, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i67, align 8, !tbaa !387
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i67, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i66, i64 8 ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.eq, %1
  br i1 %.not.i.i.i.i.i68, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i65, !llvm.loop !2852

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i65, %middle.block195, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.ed, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit ], [ %i.ej, %middle.block195 ], [ %i.er, %.lr.ph.i.i.i.i.i65 ] ; 6 uses
  %i.es = add i64 %i.b, -8
  %i.et = sub i64 %i.es, %i.c                     ; 3 uses
  %i.eu = lshr i64 %i.et, 3
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.et, 136
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i71.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit
  %i.ew = and i64 %i.et, -8
  %i.ex = add i64 %i.ew, 8                        ; 2 uses
  %i.ey = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.ex
  %i.ez = getelementptr i8, ptr %2, i64 %i.ex
  %bound0207 = icmp ult ptr %.0.lcssa.i.i.i.i.i69, %i.ez
  %bound1208 = icmp ult ptr %2, %i.ey
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %.lr.ph.i.i.i.i71.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck206
  %n.vec211 = and i64 %i.ev, 4611686018427387900  ; 3 uses
  %i.fa = shl i64 %n.vec211, 3                    ; 2 uses
  %i.fb = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fa ; 2 uses
  %i.fc = getelementptr i8, ptr %2, i64 %i.fa
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next218, %vector.body212 ] ; 2 uses
  %i.fd = shl i64 %index213, 3                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i69, i64 %i.fd ; 2 uses
  %next.gep215 = getelementptr i8, ptr %2, i64 %i.fd ; 4 uses
  %i.fe = getelementptr i8, ptr %next.gep215, i64 16
  %wide.load216 = load <2 x i64>, ptr %next.gep215, align 8, !tbaa !387, !alias.scope !2870
  %wide.load217 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !387, !alias.scope !2870
  %i.ff = getelementptr i8, ptr %next.gep214, i64 16
  store <2 x i64> %wide.load216, ptr %next.gep214, align 8, !tbaa !387, !alias.scope !2871, !noalias !2870
  store <2 x i64> %wide.load217, ptr %i.ff, align 8, !tbaa !387, !alias.scope !2871, !noalias !2870
  %8 = getelementptr i8, ptr %next.gep215, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep215, align 8, !tbaa !387, !alias.scope !2870
  store <2 x ptr> splat (ptr null), ptr %8, align 8, !tbaa !387, !alias.scope !2870
  %index.next218 = add nuw i64 %index213, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.fg, label %middle.block219, label %vector.body212, !llvm.loop !2856

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %i.ev, %n.vec211
  br i1 %cmp.n220, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76, label %.lr.ph.i.i.i.i71.preheader

.lr.ph.i.i.i.i71.preheader:                       ; preds = %vector.memcheck206, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit, %middle.block219
  %.08.i.i.i.i72.ph = phi ptr [ %.0.lcssa.i.i.i.i.i69, %vector.memcheck206 ], [ %.0.lcssa.i.i.i.i.i69, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.fb, %middle.block219 ]
  %.sroa.04.07.i.i.i.i73.ph = phi ptr [ %2, %vector.memcheck206 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit ], [ %i.fc, %middle.block219 ]
  br label %.lr.ph.i.i.i.i71

.lr.ph.i.i.i.i71:                                 ; preds = %.lr.ph.i.i.i.i71.preheader, %.lr.ph.i.i.i.i71
  %.08.i.i.i.i72 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i71 ], [ %.08.i.i.i.i72.ph, %.lr.ph.i.i.i.i71.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i73 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i71 ], [ %.sroa.04.07.i.i.i.i73.ph, %.lr.ph.i.i.i.i71.preheader ] ; 3 uses
  %i.fh = load i64, ptr %.sroa.04.07.i.i.i.i73, align 8, !tbaa !387
  store i64 %i.fh, ptr %.08.i.i.i.i72, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.07.i.i.i.i73, align 8, !tbaa !387
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i73, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.fi, %3
  br i1 %.not.i.i.i.i74, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76, label %.lr.ph.i.i.i.i71, !llvm.loop !2857

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76: ; preds = %.lr.ph.i.i.i.i71, %middle.block219
  %.lcssa130 = phi ptr [ %i.fb, %middle.block219 ], [ %i.fj, %.lr.ph.i.i.i.i71 ] ; 7 uses
  %.not7.i.i.i.i.i77 = icmp eq ptr %1, %i.i
  br i1 %.not7.i.i.i.i.i77, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76
  %i.fk = add i64 %i.k, -8
  %i.fl = sub i64 %i.fk, %i.a                     ; 3 uses
  %i.fm = lshr i64 %i.fl, 3
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fl, 136
  br i1 %min.iters.check229, label %.lr.ph.i.i.i.i.i78.preheader247, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader
  %i.fo = and i64 %i.fl, -8
  %i.fp = add i64 %i.fo, 8                        ; 2 uses
  %i.fq = getelementptr i8, ptr %.lcssa130, i64 %i.fp
  %i.fr = getelementptr i8, ptr %1, i64 %i.fp
  %bound0231 = icmp ult ptr %.lcssa130, %i.fr
  %bound1232 = icmp ult ptr %1, %i.fq
  %found.conflict233 = and i1 %bound0231, %bound1232
  br i1 %found.conflict233, label %.lr.ph.i.i.i.i.i78.preheader247, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck230
  %n.vec235 = and i64 %i.fn, 4611686018427387900  ; 3 uses
  %i.fs = shl i64 %n.vec235, 3                    ; 2 uses
  %i.ft = getelementptr i8, ptr %.lcssa130, i64 %i.fs ; 2 uses
  %i.fu = getelementptr i8, ptr %1, i64 %i.fs
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next242, %vector.body236 ] ; 2 uses
  %i.fv = shl i64 %index237, 3                    ; 2 uses
  %next.gep238 = getelementptr i8, ptr %.lcssa130, i64 %i.fv ; 2 uses
  %next.gep239 = getelementptr i8, ptr %1, i64 %i.fv ; 4 uses
  %i.fw = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load240 = load <2 x i64>, ptr %next.gep239, align 8, !tbaa !387, !alias.scope !2872
  %wide.load241 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !387, !alias.scope !2872
  %i.fx = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x i64> %wide.load240, ptr %next.gep238, align 8, !tbaa !387, !alias.scope !2873, !noalias !2872
  store <2 x i64> %wide.load241, ptr %i.fx, align 8, !tbaa !387, !alias.scope !2873, !noalias !2872
  %9 = getelementptr i8, ptr %next.gep239, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep239, align 8, !tbaa !387, !alias.scope !2872
  store <2 x ptr> splat (ptr null), ptr %9, align 8, !tbaa !387, !alias.scope !2872
  %index.next242 = add nuw i64 %index237, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next242, %n.vec235
  br i1 %i.fy, label %middle.block243, label %vector.body236, !llvm.loop !2861

middle.block243:                                  ; preds = %vector.body236
  %cmp.n244 = icmp eq i64 %i.fn, %n.vec235
  br i1 %cmp.n244, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78.preheader247

.lr.ph.i.i.i.i.i78.preheader247:                  ; preds = %vector.memcheck230, %.lr.ph.i.i.i.i.i78.preheader, %middle.block243
  %.09.i.i.i.i.i79.ph = phi ptr [ %.lcssa130, %vector.memcheck230 ], [ %.lcssa130, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.ft, %middle.block243 ]
  %.sroa.04.08.i.i.i.i.i80.ph = phi ptr [ %1, %vector.memcheck230 ], [ %1, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.fu, %middle.block243 ]
  br label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.preheader247, %.lr.ph.i.i.i.i.i78
  %.09.i.i.i.i.i79 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i78 ], [ %.09.i.i.i.i.i79.ph, %.lr.ph.i.i.i.i.i78.preheader247 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i80 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i78 ], [ %.sroa.04.08.i.i.i.i.i80.ph, %.lr.ph.i.i.i.i.i78.preheader247 ] ; 3 uses
  %i.fz = load i64, ptr %.sroa.04.08.i.i.i.i.i80, align 8, !tbaa !387
  store i64 %i.fz, ptr %.09.i.i.i.i.i79, align 8, !tbaa !387
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i80, align 8, !tbaa !387
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i80, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i79, i64 8 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.ga, %i.i
  br i1 %.not.i.i.i.i.i81, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, label %.lr.ph.i.i.i.i.i78, !llvm.loop !2862

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83: ; preds = %.lr.ph.i.i.i.i.i78, %middle.block243, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76
  %.0.lcssa.i.i.i.i.i82 = phi ptr [ %.lcssa130, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESA_S9_ET0_T_SH_SG_RSaIT1_E.exit76 ], [ %i.ft, %middle.block243 ], [ %i.gb, %.lr.ph.i.i.i.i.i78 ]
  %.not4.i.i = icmp eq ptr %i.dr, %i.i
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.gg, %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.dr, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83 ] ; 2 uses
  %i.gc = load ptr, ptr %.05.i.i, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i84, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !117
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  tail call void %i.gf(ptr noundef nonnull align 8 dereferenceable(64) %i.gc) #26, !inline_history !2863
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF5MachO10ExportInfoEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gg, %i.i
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit83
  %.not.i85 = icmp eq ptr %i.dr, null
  br i1 %.not.i85, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit
  %i.gh = load ptr, ptr %i.f, align 8, !tbaa !406
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = sub i64 %i.gi, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.gj) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EEEvT_S8_.exit, %bb.h
  store ptr %i.ed, ptr %0, align 8, !tbaa !407
  store ptr %.0.lcssa.i.i.i.i.i82, ptr %i.h, align 8, !tbaa !408
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ea
  store ptr %i.gk, ptr %i.f, align 8, !tbaa !406
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEESE_ET0_T_SH_SG_.exit: ; preds = %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i62, %_ZNSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i47, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_SaIS6_EET0_T_SA_S9_RT1_.exit54, %_ZSt13move_backwardIPSt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EES7_ET0_T_S9_S8_.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF5MachO10ExportInfoESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKjS3_RKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %8 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %11 = alloca %"struct.fmt::v12::detail::format_arg_store.3206", align 16 ; 7 uses
  %12 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !256, !noundef !257
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !440
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !428
  store i64 250, ptr %i.h, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2876)
  %i.l = load i32, ptr %5, align 4, !tbaa !119, !noalias !2876
  store i32 %i.l, ptr %11, align 16, !tbaa !253, !alias.scope !2876
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.n = load i32, ptr %6, align 4, !tbaa !119, !noalias !2876
  store i32 %i.n, ptr %i.m, align 16, !tbaa !253, !alias.scope !2876
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.p = load i64, ptr %7, align 8, !tbaa !118, !noalias !2876
  store i64 %i.p, ptr %i.o, align 16, !tbaa !253, !alias.scope !2876
  %i.q = icmp eq i64 %4, 2
  br i1 %i.q, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load i16, ptr %3, align 1
  %i.s = icmp ne i16 %i.r, 32123
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %11, align 16, !tbaa !253 ; 2 uses
  %i.v = trunc i128 %.sroa.0.0.copyload.sink66.i to i32 ; 4 uses
  %i.w = or i32 %i.v, 1
  %i.x = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 31
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118
  %i.ac = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ah = ashr i64 %i.ae, 32                      ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 250
  br i1 %i.ai, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 375) ; 2 uses
  %i.aj = call noalias ptr @malloc(i64 noundef %spec.select.i) #31 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i30, label %bb.e, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %8, align 8, !tbaa !117
  %i.ak = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.ak) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.aj, ptr %10, align 8, !tbaa !428
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.d, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.al = phi ptr [ %i.aj, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.k, %bb.d ] ; 3 uses
  store i64 %i.ah, ptr %i.j, align 8, !tbaa !429
  %i.am = icmp ugt i32 %i.v, 99
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i14

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.an, %.lr.ph.i.i.i ], [ %i.ag, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i32 [ %i.av, %.lr.ph.i.i.i ], [ %i.v, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.an = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  %i.aq = urem i32 %.01819.i.i.i, 100
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  store i16 %i.au, ptr %i.ap, align 1
  %i.av = udiv i32 %.01819.i.i.i, 100             ; 2 uses
  %i.aw = icmp ugt i32 %.01819.i.i.i, 9999
  br i1 %i.aw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i14, !llvm.loop !11

._crit_edge.i.i.i14:                              ; preds = %.lr.ph.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread
  %.018.lcssa.i.i.i = phi i32 [ %i.v, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.av, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.ag, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = icmp samesign ugt i32 %.018.lcssa.i.i.i, 9
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i14
  %i.ay = add i32 %.0.lcssa.i.i.i, -2
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.az
  %i.bb = shl nuw nsw i32 %.018.lcssa.i.i.i, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i14
  %i.bf = trunc nuw nsw i32 %.018.lcssa.i.i.i to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = add i32 %.0.lcssa.i.i.i, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
end_hunk_16
