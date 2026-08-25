Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/GNUPropertyRewriter?download=true
begin_hunk_0

$_ZN4llvm4bolt16MetadataRewriter17postEmitFinalizerEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm4bolt13BinarySectionEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_ = comdat any

$_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [22 x i8] c"gnu-property-rewriter\00", align 1
@_ZTVN12_GLOBAL__N_119GNUPropertyRewriterE = internal unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4bolt16MetadataRewriterD2Ev, ptr @_ZN12_GLOBAL__N_119GNUPropertyRewriterD0Ev, ptr @_ZN12_GLOBAL__N_119GNUPropertyRewriter18sectionInitializerEv, ptr @_ZN4llvm4bolt16MetadataRewriter17preCFGInitializerEv, ptr @_ZN4llvm4bolt16MetadataRewriter18postCFGInitializerEv, ptr @_ZN4llvm4bolt16MetadataRewriter16preEmitFinalizerEv, ptr @_ZN4llvm4bolt16MetadataRewriter17postEmitFinalizerEv] }, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c".note.gnu.property\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<empty>\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"out of bounds while reading .note.gnu.property section: %s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"BOLT-INFO: binary is using BTI\0A\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"Property descriptor size has to be 4 bytes on AArch64\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"failed to read property from .note.gnu.property section: %s\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"out of bounds while reading property array in .note.gnu.property section: %s\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt25createGNUPropertyRewriterERNS0_13BinaryContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(2268) %1) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN12_GLOBAL__N_119GNUPropertyRewriterESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14, !noalias !8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !11, !noalias !8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 21, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !14, !noalias !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !16, !noalias !8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN12_GLOBAL__N_119GNUPropertyRewriterE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !8
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16MetadataRewriterD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119GNUPropertyRewriterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119GNUPropertyRewriter18sectionInitializerEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 4 uses
  %3 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %6 = alloca %class.anon, align 8                ; 4 uses
  %7 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %class.anon, align 8               ; 4 uses
  %12 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %15 = alloca %"class.llvm::DataExtractor", align 8 ; 8 uses
  %16 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %20 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %25 = alloca %class.anon, align 8               ; 4 uses
  %26 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvm::DataExtractor", align 8 ; 8 uses
  %32 = alloca %"class.llvm::DataExtractor::Cursor", align 8 ; 11 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23, !nonnull !26, !align !27
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #16
  %i.d = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !28
  store ptr @.str.1, ptr %30, align 8, !tbaa !31
  store i8 3, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #16, !noalias !33
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(34) %30) #16, !noalias !33
  %i.g = call { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm4bolt13BinarySectionEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %29), !noalias !33 ; 2 uses
  %i.h = load ptr, ptr %29, align 8, !tbaa !36, !noalias !33 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !31, !noalias !33
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15, !noalias !33
  br label %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i

_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16, !noalias !33
  %i.m = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %i.n = extractvalue { ptr, ptr } %i.g, 1        ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i
  %i.o = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.m) #17, !noalias !33
  %i.p = icmp eq ptr %i.o, %i.n
  br i1 %i.p, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNK4llvm4bolt13BinaryContext16getSectionByNameB5cxx11ERKNS_5TwineE.exit.i, %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  store ptr null, ptr %0, align 8, !tbaa !39
  br label %bb.ad

bb.b:                                             ; preds = %.preheader.preheader.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42, !noalias !33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.s, align 8, !tbaa !11 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !14 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #16
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !23, !nonnull !26, !align !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1528
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !47, !range !73, !noundef !26
  store ptr %.sroa.0.0.copyload.i, ptr %31, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i26, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i8 %i.x, ptr %i.y, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #16
  %i.z = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %.promoted = load ptr, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.sroa.4.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = ptrtoint ptr %6 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 48
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = ptrtoint ptr %11 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge, %bb.b
  %.019100.ph = phi i32 [ %.120, %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge ], [ 0, %bb.b ] ; 3 uses
  %.sroa.049.099.ph = phi ptr [ %.sroa.049.1.a, %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge ], [ undef, %bb.b ]
  %.sroa.049.39597.ph = phi ptr [ %.sroa.049.393, %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge ], [ %.promoted, %bb.b ]
  %i.bg = load i64, ptr %.sroa.2.0..sroa_idx.i26, align 8, !tbaa !76
  %i.bh = load i64, ptr %32, align 8, !tbaa !77
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %_ZN4llvm8ExpectedIjED2Ev.exit
  %i.bj = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull %i.z) #16 ; 2 uses
  %i.bk = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull %i.z) #16 ; 2 uses
  %i.bl = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %31, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull %i.z) #16
  %.not = icmp eq i32 %i.bj, 0
  %.pre = load i64, ptr %32, align 8, !tbaa !77   ; 3 uses
  br i1 %.not, label %._crit_edge121, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bm = zext i32 %i.bj to i64
  %i.bn = add i64 %.pre, %i.bm                    ; 3 uses
  %.sroa.speculated3.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.pre) ; 3 uses
  %i.bo = icmp ugt i64 %i.bn, %.sroa.2.0.copyload.i
  %.sroa.speculate.load.false.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 %.sroa.speculated3.i)
  %.sroa.speculated.i = select i1 %i.bo, i64 %.sroa.2.0.copyload.i, i64 %.sroa.speculate.load.false.sroa.speculated.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.speculated3.i
  %i.bq = sub i64 %.sroa.speculated.i, %.sroa.speculated3.i
  %i.br = icmp ult i64 %i.bq, 3
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %.lr.ph, %bb.c
  %.pre-phi124 = phi i64 [ %i.bn, %bb.c ], [ %.pre, %.lr.ph ] ; 2 uses
  %.sroa.061.0 = phi ptr [ %i.bp, %bb.c ], [ @.str.2, %.lr.ph ] ; 2 uses
  %.sroa.662.0 = phi i1 [ %i.br, %bb.c ], [ false, %.lr.ph ]
  %i.bs = icmp ne i64 %.pre-phi124, 0             ; 2 uses
  %.neg = sext i1 %i.bs to i64
  %i.bt = add i64 %.pre-phi124, %.neg
  %i.bu = select i1 %i.bs, i64 4, i64 0
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = and i64 %i.bv, -4                       ; 3 uses
  %i.bx = icmp ne i32 %i.bk, 0                    ; 2 uses
  br i1 %i.bx, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %._crit_edge121
  %i.by = zext i32 %i.bk to i64
  %i.bz = add i64 %i.bw, %i.by                    ; 3 uses
  %.sroa.speculated3.i30 = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %i.bw) ; 3 uses
  %i.ca = icmp ugt i64 %i.bz, %.sroa.2.0.copyload.i
  %.sroa.speculate.load.false.sroa.speculated.i31 = call i64 @llvm.umax.i64(i64 %i.bz, i64 %.sroa.speculated3.i30)
  %.sroa.speculated.i32 = select i1 %i.ca, i64 %.sroa.2.0.copyload.i, i64 %.sroa.speculate.load.false.sroa.speculated.i31
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.speculated3.i30
  %i.cc = sub i64 %.sroa.speculated.i32, %.sroa.speculated3.i30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge121, %bb.d
  %.pre-phi128 = phi i64 [ %i.bz, %bb.d ], [ %i.bw, %._crit_edge121 ] ; 2 uses
  %.sroa.060.0 = phi ptr [ %i.cb, %bb.d ], [ @.str.2, %._crit_edge121 ]
  %.sroa.6.0 = phi i64 [ %i.cc, %bb.d ], [ 7, %._crit_edge121 ]
  %i.cd = icmp ne i64 %.pre-phi128, 0             ; 2 uses
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.pre-phi128, %.neg78
  %i.cf = select i1 %i.cd, i64 4, i64 0
  %i.cg = add i64 %i.ce, %i.cf
  %i.ch = and i64 %i.cg, -4
  store i64 %i.ch, ptr %32, align 8, !tbaa !77
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !39  ; 2 uses
  %.not.i35 = icmp eq ptr %i.ci, null
  br i1 %.not.i35, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  store ptr %i.ci, ptr %34, align 8, !tbaa !39, !alias.scope !79
  store ptr null, ptr %i.z, align 8, !tbaa !39, !noalias !79
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nofree noundef nonnull align 8 dereferenceable(8) %34) #16
  %i.ck = load ptr, ptr %33, align 8, !tbaa !36
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16, !noalias !82
  %i.cl = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.cl, ptr %27, align 8, !tbaa !85, !noalias !82
  %i.cm = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.cm, align 8, !tbaa !86, !noalias !82
  store i8 0, ptr %i.cl, align 8, !tbaa !31, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16, !noalias !82
  %i.cn = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i32 0, ptr %i.cn, align 8, !tbaa !87, !noalias !82
  %i.co = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i8 0, ptr %i.co, align 8, !tbaa !91, !noalias !82
  %i.cp = getelementptr inbounds nuw i8, ptr %28, i64 44
  store i32 1, ptr %i.cp, align 4, !tbaa !92, !noalias !82
  %i.cq = getelementptr inbounds nuw i8, ptr %28, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 24, i1 false), !noalias !82
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %28, align 8, !tbaa !18, !noalias !82
  %i.cr = getelementptr inbounds nuw i8, ptr %28, i64 48
  store ptr %27, ptr %i.cr, align 8, !tbaa !93, !noalias !82
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef null, i64 noundef 0, i32 noundef 0) #16, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !82
  store ptr @.str.3, ptr %26, align 8, !noalias !82
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.ck, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !82
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16, !noalias !82
  store ptr %26, ptr %25, align 8, !tbaa !95, !noalias !82
  %i.cs = ptrtoint ptr %25 to i64
  %i.ct = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.cs) #16, !noalias !82 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16, !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !82
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %28) #16, !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #16, !noalias !82
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.cu = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14, !noalias !100 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 8, ptr nonnull %i.cj, i1 noundef zeroext true) #16, !noalias !100
  store ptr %i.cu, ptr %0, align 8, !tbaa !39, !alias.scope !103
  %i.cv = load ptr, ptr %27, align 8, !tbaa !36, !noalias !82 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cl
  br i1 %i.cw, label %_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.cx = load i64, ptr %i.cl, align 8, !tbaa !31, !noalias !82
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #15, !noalias !82
  br label %_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit

_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #16, !noalias !82
  %i.cz = load ptr, ptr %33, align 8, !tbaa !36   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !31
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm17createStringErrorIJPKcEEENS_5ErrorESt10error_codeS2_DpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.de = load ptr, ptr %34, align 8, !tbaa !39   ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN4llvm5ErrorD2Ev.exit36, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de) #16, !inline_history !104
  br label %_ZN4llvm5ErrorD2Ev.exit36

_ZN4llvm5ErrorD2Ev.exit36:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #16
  br label %.critedge24

bb.g:                                             ; preds = %._crit_edge
  %i.dj = icmp ne i32 %i.bl, 5
  %brmerge = select i1 %i.dj, i1 true, i1 %.sroa.662.0
  br i1 %brmerge, label %_ZN4llvm8ExpectedIjED2Ev.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.g
  %i.dk = load i16, ptr %.sroa.061.0, align 1
  %i.dl = xor i16 %i.dk, 20039
  %i.dm = getelementptr i8, ptr %.sroa.061.0, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i16
  %i.dp = xor i16 %i.do, 85
  %i.dq = or i16 %i.dl, %i.dp
  %i.dr = icmp ne i16 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, 0
  %i.du = and i1 %i.bx, %i.dt
  br i1 %i.du, label %bb.h, label %_ZN4llvm8ExpectedIjED2Ev.exit

bb.h:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %.val = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.dv = getelementptr i8, ptr %.val, i64 1528
  %.val.val = load ptr, ptr %i.dv, align 8, !tbaa !45 ; 2 uses
  %i.dw = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load i32, ptr %i.dw, align 8, !tbaa !105
  %i.dx = getelementptr i8, ptr %.val.val, i64 16
  %.val.val.val25 = load i8, ptr %i.dx, align 8, !tbaa !47, !range !73, !noundef !26
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16, !noalias !106
  store ptr %.sroa.060.0, ptr %15, align 8, !tbaa !11, !noalias !106
  store i64 %.sroa.6.0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !14, !noalias !106
  store i8 %.val.val.val25, ptr %i.aa, align 8, !tbaa !74, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16, !noalias !106
  %i.dy = zext i32 %.val.val.val to i64           ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false), !noalias !106
  br label %bb.i

bb.i:                                             ; preds = %bb.t, %bb.h
  %i.dz = phi i64 [ 0, %bb.h ], [ %i.gm, %bb.t ]
  %.sroa.018.0.i = phi i32 [ 0, %bb.h ], [ %.sroa.018.2.i, %bb.t ] ; 3 uses
  %i.ea = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !76, !noalias !106
  %.not101 = icmp eq i64 %i.ea, %i.dz             ; 2 uses
  br i1 %.not101, label %.critedge.i43, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.ab) #16, !noalias !106
  %i.ec = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.ab) #16, !noalias !106 ; 2 uses
  %i.ed = load i64, ptr %16, align 8, !tbaa !77, !noalias !106 ; 2 uses
  %i.ee = zext i32 %i.ec to i64
  %i.ef = add i64 %i.ed, %i.ee                    ; 3 uses
  store i64 %i.ef, ptr %16, align 8, !tbaa !77, !noalias !106
  %i.eg = load ptr, ptr %i.ab, align 8, !tbaa !39, !noalias !106 ; 2 uses
  %.not.i17.i = icmp eq ptr %i.eg, null
  br i1 %.not.i17.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16, !noalias !106
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  store ptr %i.eg, ptr %18, align 8, !tbaa !39, !alias.scope !109, !noalias !106
  store ptr null, ptr %i.ab, align 8, !tbaa !39, !noalias !112
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nofree noundef nonnull align 8 dereferenceable(8) %18) #16, !noalias !106
  %i.ei = load ptr, ptr %17, align 8, !tbaa !36, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16, !noalias !113
  store ptr %i.am, ptr %13, align 8, !tbaa !85, !noalias !113
  store i64 0, ptr %i.an, align 8, !tbaa !86, !noalias !113
  store i8 0, ptr %i.am, align 8, !tbaa !31, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16, !noalias !113
  store i32 0, ptr %i.ao, align 8, !tbaa !87, !noalias !113
  store i8 0, ptr %i.ap, align 8, !tbaa !91, !noalias !113
  store i32 1, ptr %i.aq, align 4, !tbaa !92, !noalias !113
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !noalias !113
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %14, align 8, !tbaa !18, !noalias !113
  store ptr %13, ptr %i.as, align 8, !tbaa !93, !noalias !113
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef null, i64 noundef 0, i32 noundef 0) #16, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !113
  store ptr @.str.3, ptr %12, align 8, !noalias !113
  store ptr %i.ei, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16, !noalias !113
  store ptr %12, ptr %11, align 8, !tbaa !95, !noalias !113
  %i.ej = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.at) #16, !noalias !113 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !113
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #16, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16, !noalias !113
  %i.ek = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14, !noalias !116 ; 3 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 8, ptr nonnull %i.eh, i1 noundef zeroext true) #16, !noalias !116
  %i.el = load ptr, ptr %13, align 8, !tbaa !36, !noalias !113 ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.am
  br i1 %i.em, label %_ZN4llvm5ErrorD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38: ; preds = %bb.k
  %i.en = load i64, ptr %i.am, align 8, !tbaa !31, !noalias !113
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #15, !noalias !113
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16, !noalias !113
  %i.ep = load ptr, ptr %17, align 8, !tbaa !36, !noalias !106 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.au
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_119GNUPropertyRewriter18sectionInitializerEv:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.fa, ptr noundef nonnull align 1 dereferenceable(54) @.str.6, i64 54, i1 false), !noalias !122
  store i64 %i.fb, ptr %i.aw, align 8, !tbaa !86, !noalias !122
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !31, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !122
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 8, ptr nonnull %i.ez) #16, !noalias !106
  %i.fd = load ptr, ptr %10, align 8, !tbaa !36, !noalias !122 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.av
  br i1 %i.fe, label %_ZN4llvm5ErrorD2Ev.exit22.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i: ; preds = %._crit_edge.i.i.i.i
  %i.ff = load i64, ptr %i.av, align 8, !tbaa !31, !noalias !122
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #15, !noalias !106
  br label %_ZN4llvm5ErrorD2Ev.exit22.i

_ZN4llvm5ErrorD2Ev.exit22.i:                      ; preds = %._crit_edge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !122
  %i.fh = load ptr, ptr %19, align 8, !tbaa !39, !noalias !125 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16, !noalias !106
  br label %.critedge16.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16, !noalias !106
  store i64 %i.ed, ptr %20, align 8, !tbaa !77, !noalias !106
  store ptr null, ptr %i.ac, align 8, !tbaa !39, !noalias !106
  %i.fi = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %i.ac) #16, !noalias !106
  %i.fj = load ptr, ptr %i.ac, align 8, !tbaa !39, !noalias !106 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.fj, null
  br i1 %.not.i23.i, label %_ZN4llvm13DataExtractor6CursorD2Ev.exit._crit_edge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16, !noalias !106
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  store ptr %i.fj, ptr %22, align 8, !tbaa !39, !alias.scope !128, !noalias !106
  store ptr null, ptr %i.ac, align 8, !tbaa !39, !noalias !131
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr nofree noundef nonnull align 8 dereferenceable(8) %22) #16, !noalias !106
  %i.fl = load ptr, ptr %21, align 8, !tbaa !36, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !132
  store ptr %i.ad, ptr %8, align 8, !tbaa !85, !noalias !132
  store i64 0, ptr %i.ae, align 8, !tbaa !86, !noalias !132
  store i8 0, ptr %i.ad, align 8, !tbaa !31, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16, !noalias !132
  store i32 0, ptr %i.af, align 8, !tbaa !87, !noalias !132
  store i8 0, ptr %i.ag, align 8, !tbaa !91, !noalias !132
  store i32 1, ptr %i.ah, align 4, !tbaa !92, !noalias !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !noalias !132
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %9, align 8, !tbaa !18, !noalias !132
  store ptr %8, ptr %i.aj, align 8, !tbaa !93, !noalias !132
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #16, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !132
  store ptr @.str.7, ptr %7, align 8, !noalias !132
  store ptr %i.fl, ptr %.sroa.4.0..sroa_idx.i25.i, align 8, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !132
  store ptr %7, ptr %6, align 8, !tbaa !95, !noalias !132
  %i.fm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.ak) #16, !noalias !132 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !132
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #16, !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16, !noalias !132
  %i.fn = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14, !noalias !135 ; 3 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 8, ptr nonnull %i.fk, i1 noundef zeroext true) #16, !noalias !135
  %i.fo = load ptr, ptr %8, align 8, !tbaa !36, !noalias !132 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ad
  br i1 %i.fp, label %_ZN4llvm5ErrorD2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i: ; preds = %bb.p
  %i.fq = load i64, ptr %i.ad, align 8, !tbaa !31, !noalias !132
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #15, !noalias !132
  br label %_ZN4llvm5ErrorD2Ev.exit29.i

_ZN4llvm5ErrorD2Ev.exit29.i:                      ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !132
  %i.fs = load ptr, ptr %21, align 8, !tbaa !36, !noalias !106 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.al
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit29.i
  %i.fu = load i64, ptr %i.al, align 8, !tbaa !31, !noalias !106
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #15, !noalias !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i
  %i.fw = load ptr, ptr %22, align 8, !tbaa !39, !noalias !106 ; 3 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !18, !noalias !106
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !106
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fw) #16, !noalias !106, !inline_history !121
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16, !noalias !106
  %.pre.i = load ptr, ptr %i.ac, align 8, !tbaa !39, !noalias !106 ; 3 uses
  %i.gb = icmp eq ptr %.pre.i, null
  br i1 %i.gb, label %.critedge16.loopexit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gc = load ptr, ptr %.pre.i, align 8, !tbaa !18, !noalias !106
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !106
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %.pre.i) #16, !noalias !106, !inline_history !140
  br label %.critedge16.loopexit.i

_ZN4llvm13DataExtractor6CursorD2Ev.exit._crit_edge.i: ; preds = %bb.o
  %i.gf = or i32 %i.fi, %.sroa.018.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16, !noalias !106
  %.pre36.i = load ptr, ptr %i.ab, align 8, !tbaa !39, !noalias !106
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm13DataExtractor6CursorD2Ev.exit._crit_edge.i, %bb.m
  %i.gg = phi ptr [ %.pre36.i, %_ZN4llvm13DataExtractor6CursorD2Ev.exit._crit_edge.i ], [ null, %bb.m ] ; 2 uses
  %.sroa.018.2.i = phi i32 [ %i.gf, %_ZN4llvm13DataExtractor6CursorD2Ev.exit._crit_edge.i ], [ %.sroa.018.0.i, %bb.m ]
  %i.gh = icmp ne i64 %i.ef, 0
  %i.gi = zext i1 %i.gh to i64                    ; 2 uses
  %i.gj = sub i64 %i.ef, %i.gi
  %i.gk = udiv i64 %i.gj, %i.dy
  %i.gl = add i64 %i.gk, %i.gi
  %i.gm = mul i64 %i.gl, %i.dy                    ; 2 uses
  store i64 %i.gm, ptr %16, align 8, !tbaa !77, !noalias !106
  %.not.i34.i = icmp eq ptr %i.gg, null
  br i1 %.not.i34.i, label %bb.i, label %bb.u, !llvm.loop !141

bb.u:                                             ; preds = %bb.t
  %i.gn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16, !noalias !106
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  store ptr %i.gg, ptr %24, align 8, !tbaa !39, !alias.scope !143, !noalias !106
  store ptr null, ptr %i.ab, align 8, !tbaa !39, !noalias !146
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nofree noundef nonnull align 8 dereferenceable(8) %24) #16, !noalias !106
  %i.go = load ptr, ptr %23, align 8, !tbaa !36, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !147
  store ptr %i.ax, ptr %4, align 8, !tbaa !85, !noalias !147
  store i64 0, ptr %i.ay, align 8, !tbaa !86, !noalias !147
  store i8 0, ptr %i.ax, align 8, !tbaa !31, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !147
  store i32 0, ptr %i.az, align 8, !tbaa !87, !noalias !147
  store i8 0, ptr %i.ba, align 8, !tbaa !91, !noalias !147
  store i32 1, ptr %i.bb, align 4, !tbaa !92, !noalias !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false), !noalias !147
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !18, !noalias !147
  store ptr %4, ptr %i.bd, align 8, !tbaa !93, !noalias !147
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #16, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !147
  store ptr @.str.8, ptr %3, align 8, !noalias !147
  store ptr %i.go, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !147
  store ptr %3, ptr %2, align 8, !tbaa !95, !noalias !147
  %i.gp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.be) #16, !noalias !147 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !147
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #16, !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !147
  %i.gq = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #14, !noalias !150 ; 3 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 8, ptr nonnull %i.gn, i1 noundef zeroext true) #16, !noalias !150
  %i.gr = load ptr, ptr %4, align 8, !tbaa !36, !noalias !147 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.ax
  br i1 %i.gs, label %_ZN4llvm5ErrorD2Ev.exit40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i: ; preds = %bb.u
  %i.gt = load i64, ptr %i.ax, align 8, !tbaa !31, !noalias !147
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #15, !noalias !147
  br label %_ZN4llvm5ErrorD2Ev.exit40.i

_ZN4llvm5ErrorD2Ev.exit40.i:                      ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !147
  %i.gv = load ptr, ptr %23, align 8, !tbaa !36, !noalias !106 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.bf
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit40.i
  %i.gx = load i64, ptr %i.bf, align 8, !tbaa !31, !noalias !106
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #15, !noalias !106
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i
  %i.gz = load ptr, ptr %24, align 8, !tbaa !39, !noalias !106 ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_ZN4llvm5ErrorD2Ev.exit44.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !18, !noalias !106
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !106
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.gz) #16, !noalias !106, !inline_history !121
  br label %_ZN4llvm5ErrorD2Ev.exit44.i

_ZN4llvm5ErrorD2Ev.exit44.i:                      ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16, !noalias !106
  br label %.critedge16.i

.critedge.i43:                                    ; preds = %bb.i
  %35 = ptrtoint ptr %.sroa.049.099.ph to i64
  %.sroa.049.0.insert.ext = zext i32 %.sroa.018.0.i to i64
  %.sroa.049.0.insert.mask = and i64 %35, -4294967296
  %.sroa.049.0.insert.insert = or disjoint i64 %.sroa.049.0.insert.mask, %.sroa.049.0.insert.ext
  %i.he = inttoptr i64 %.sroa.049.0.insert.insert to ptr ; 2 uses
  br label %.critedge16.i

.critedge16.loopexit.i:                           ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16, !noalias !106
  br label %.critedge16.i

.critedge16.i:                                    ; preds = %.critedge16.loopexit.i, %.critedge.i43, %_ZN4llvm5ErrorD2Ev.exit44.i, %_ZN4llvm5ErrorD2Ev.exit22.i, %_ZN4llvm5ErrorD2Ev.exit18.i
  %.sroa.049.1.a = phi ptr [ %i.he, %.critedge.i43 ], [ null, %_ZN4llvm5ErrorD2Ev.exit44.i ], [ null, %.critedge16.loopexit.i ], [ null, %_ZN4llvm5ErrorD2Ev.exit22.i ], [ null, %_ZN4llvm5ErrorD2Ev.exit18.i ] ; 4 uses
  %.sroa.049.393 = phi ptr [ %.sroa.049.39597.ph, %.critedge.i43 ], [ %i.gq, %_ZN4llvm5ErrorD2Ev.exit44.i ], [ %i.fn, %.critedge16.loopexit.i ], [ %i.fh, %_ZN4llvm5ErrorD2Ev.exit22.i ], [ %i.ek, %_ZN4llvm5ErrorD2Ev.exit18.i ] ; 2 uses
  %.sroa.049.3 = phi ptr [ %i.he, %.critedge.i43 ], [ %i.gq, %_ZN4llvm5ErrorD2Ev.exit44.i ], [ %i.fn, %.critedge16.loopexit.i ], [ %i.fh, %_ZN4llvm5ErrorD2Ev.exit22.i ], [ %i.ek, %_ZN4llvm5ErrorD2Ev.exit18.i ]
  %i.hf = load ptr, ptr %i.ab, align 8, !tbaa !39, !noalias !106 ; 3 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit, label %bb.w

bb.w:                                             ; preds = %.critedge16.i
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !18, !noalias !106
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !106
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(8) %i.hf) #16, !noalias !106, !inline_history !140
  br label %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit

_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit: ; preds = %.critedge16.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  br i1 %.not101, label %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge, label %bb.x

_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge: ; preds = %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit
  %i.hk = ptrtoint ptr %.sroa.049.3 to i64
  %.sroa.049.0.extract.trunc = trunc i64 %i.hk to i32
  %.120 = or i32 %.019100.ph, %.sroa.049.0.extract.trunc ; 2 uses
  %.pr.pre = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.hl = icmp eq ptr %.pr.pre, null
  br i1 %i.hl, label %.outer, label %.critedge, !llvm.loop !155

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit
  store ptr %.sroa.049.393, ptr %0, align 8
  %.not.i.i = icmp eq ptr %.sroa.049.1.a, null
  br i1 %.not.i.i, label %.critedge24, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.x
  %i.hm = load ptr, ptr %.sroa.049.1.a, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.049.1.a) #16, !inline_history !156
  br label %.critedge24

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.g, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.hp = load i64, ptr %.sroa.2.0..sroa_idx.i26, align 8, !tbaa !76
  %i.hq = load i64, ptr %32, align 8, !tbaa !77
  %i.hr = icmp eq i64 %i.hp, %i.hq
  br i1 %i.hr, label %.critedge, label %.lr.ph, !llvm.loop !155

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge, %.outer, %_ZN4llvm8ExpectedIjED2Ev.exit
  %.019.lcssa = phi i32 [ %.019100.ph, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %.120, %_ZN12_GLOBAL__N_119GNUPropertyRewriter21decodeGNUPropertyNoteEN4llvm9StringRefE.exit._ZN4llvm8ExpectedIjED2Ev.exit_crit_edge ], [ %.019100.ph, %.outer ] ; 2 uses
  %i.hs = load ptr, ptr %i.b, align 8, !tbaa !23, !nonnull !26, !align !27 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1448
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !157
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !159
  %i.hx = icmp eq i32 %i.hw, 3
  br i1 %i.hx, label %bb.y, label %_ZN4llvm5ErrorD2Ev.exit46

bb.y:                                             ; preds = %.critedge
  %i.hy = trunc i32 %.019.lcssa to i1
  %i.hz = trunc i32 %.019.lcssa to i8
  %i.ia = and i8 %i.hz, 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 72
  store i8 %i.ia, ptr %i.ib, align 8, !tbaa !167
  br i1 %i.hy, label %bb.z, label %_ZN4llvm5ErrorD2Ev.exit46

bb.z:                                             ; preds = %bb.y
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 1608
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !420, !nonnull !26, !align !27 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !421
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 32 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !422 ; 2 uses
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = icmp ult i64 %i.ik, 31
  br i1 %i.il, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.im = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.id, ptr noundef nonnull @.str.5, i64 noundef 31) #16 ; 0 uses
  br label %_ZN4llvm5ErrorD2Ev.exit46

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.ih, ptr noundef nonnull align 1 dereferenceable(31) @.str.5, i64 31, i1 false)
  %i.in = load ptr, ptr %i.ig, align 8, !tbaa !422
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 31
  store ptr %i.io, ptr %i.ig, align 8, !tbaa !422
  br label %_ZN4llvm5ErrorD2Ev.exit46

_ZN4llvm5ErrorD2Ev.exit46:                        ; preds = %.critedge, %bb.y, %bb.aa, %bb.ab
  store ptr null, ptr %0, align 8, !tbaa !39
  br label %.critedge24

.critedge24:                                      ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.x, %_ZN4llvm5ErrorD2Ev.exit36, %_ZN4llvm5ErrorD2Ev.exit46
  %i.ip = load ptr, ptr %i.z, align 8, !tbaa !39  ; 3 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_ZN4llvm13DataExtractor6CursorD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.critedge24
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.ip) #16, !inline_history !423
  br label %_ZN4llvm13DataExtractor6CursorD2Ev.exit

_ZN4llvm13DataExtractor6CursorD2Ev.exit:          ; preds = %.critedge24, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #16
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm13DataExtractor6CursorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16MetadataRewriter17preCFGInitializerEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16MetadataRewriter18postCFGInitializerEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16MetadataRewriter16preEmitFinalizerEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt16MetadataRewriter17postEmitFinalizerEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm4bolt13BinarySectionEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.065 = load ptr, ptr %i.a, align 8, !tbaa !424 ; 2 uses
  %.not66 = icmp eq ptr %.065, null
  br i1 %.not66, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm4bolt13BinarySectionEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_upper_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !86   ; 8 uses
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.d ] ; 8 uses
  %.02267 = phi ptr [ %i.b, %.lr.ph ], [ %.123, %bb.d ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.068, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !86   ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g) ; 3 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.068, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.e, i64 noundef %.sroa.speculated.i.i.i) #16 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.l = sub i64 %i.g, %i.d
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i28

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.n = sub i64 %i.g, %i.d
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.p = icmp slt i32 %i.k, 0
  br i1 %i.p, label %bb.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i25: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread57, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread
  %i.q = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #16 ; 2 uses
  %.not.i.i.i26 = icmp eq i32 %i.q, 0
end_hunk_1
