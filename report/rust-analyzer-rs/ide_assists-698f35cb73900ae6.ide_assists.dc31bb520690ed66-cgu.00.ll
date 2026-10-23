Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.00?download=true
inline.NumInlined: 10380
inline.NumDeleted: 5557
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtB9_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6ModuleNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19move_module_to_file19move_module_to_files_00ENCB32_s_0ENCB32_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3a_:bb.a
bb.n:                                             ; preds = %bb.l
  %i.ad = load i64, ptr %i.y, align 8, !noalias !12301, !noundef !7 ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.val6.i = phi ptr [ %i.z, %bb.m ], [ %i.ae, %bb.n ] ; 4 uses
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.m ], [ %i.ad, %bb.n ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.m ], [ %i.w, %bb.n ]
  %i.af = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre18trim_start_matchesReECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2)
          to label %.noexc.i unwind label %bb.p, !noalias !12301 ; 2 uses

bb.p:                                             ; preds = %.noexc.i, %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists(ptr %i.w, ptr %.val6.i) #35
          to label %bb.i unwind label %bb.u, !noalias !12301

.noexc.i:                                         ; preds = %bb.o
  %i.ah = extractvalue { ptr, i64 } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12302
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  invoke void @_RNvMsB_Cs42xZ1oUXfIG_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.ai)
          to label %bb.q unwind label %bb.p, !noalias !12301

bb.q:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !12303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12302
  br i1 %i.x, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12301
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !12301, !noundef !7
  store ptr %.val6.i, ptr %i.a, align 8, !noalias !12301
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !noalias !12301
  call void @llvm.experimental.noalias.scope.decl(metadata !12304)
  call void @llvm.experimental.noalias.scope.decl(metadata !12305)
  %i.am = atomicrmw add ptr %.val6.i, i64 -1 release, align 8, !noalias !12306
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %i.a, align 8, !alias.scope !12307, !noalias !12301, !nonnull !7, !noundef !7
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !noalias !12306 ; 0 uses
  invoke void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i unwind label %bb.k, !noalias !12301

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12301
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12301
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noalias !12301, !noundef !7
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4, !noalias !12301
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.t, label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19move_module_to_file19move_module_to_files_0s0_0B9_.exit

bb.t:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.q) #31, !noalias !12301
  br label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19move_module_to_file19move_module_to_files_0s0_0B9_.exit

bb.u:                                             ; preds = %bb.p, %bb.j
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12301
  unreachable

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19move_module_to_file19move_module_to_files_0s0_0B9_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.v:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12294
  store i8 -1, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19move_module_to_file19move_module_to_files_0s0_0B9_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_imports0ENCB2E_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2K_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12322)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12324
  store ptr %i.j, ptr %i.h, align 8, !noalias !12325
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !12326, !nonnull !7, !noundef !7
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !12326
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.m = phi ptr [ %i.o, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !alias.scope !12326
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_imports0INtB7_5FnMutTRNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEE8call_mutBW_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m), !noalias !12323
  %i.p = load i64, ptr %i.i, align 8, !range !21, !noundef !7 ; 3 uses
  %.not.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12324
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8 ; 5 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.56.0.copyload = load i32, ptr %.sroa.56.0..sroa_idx, align 8 ; 5 uses
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %.sroa.67.0.copyload = load i32, ptr %.sroa.67.0..sroa_idx, align 4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12328
  store i64 %i.p, ptr %i.g, align 8, !noalias !12328
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.45.0.copyload, ptr %i.r, align 8, !noalias !12328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12328
  store i32 %.sroa.56.0.copyload, ptr %i.f, align 4, !noalias !12328
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.sroa.67.0.copyload, ptr %i.s, align 4, !noalias !12328
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !12327, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 7 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !12328, !nonnull !7, !align !22, !noundef !7
  %i.w = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module24nearest_non_block_module(i32 noundef %.sroa.56.0.copyload, i32 noundef %.sroa.67.0.copyload, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.f unwind label %.body.i, !noalias !12328 ; 2 uses

bb.e:                                             ; preds = %.body.thread.i, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body16.i, %.body.thread.i ], [ %lpad.thr_comm.split-lp.i, %.body.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.copyload) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.45.0.copyload, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !12328, !noundef !7
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !noalias !12328
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.45.0.copyload) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.ac, !noalias !12328

bb.f:                                             ; preds = %bb.d
  %i.ab = extractvalue { i32, i32 } %i.w, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !12327, !nonnull !7, !align !61, !noundef !7 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !12328, !noundef !7
  %i.ag = icmp eq i32 %i.ab, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = extractvalue { i32, i32 } %i.w, 0       ; 2 uses
  %i.ai = icmp ne i32 %i.ah, 0
  call void @llvm.assume(i1 %i.ai)
  %i.aj = load i32, ptr %i.ad, align 4, !range !15, !noalias !12328, !noundef !7
  %.not.i = icmp eq i32 %i.ah, %i.aj
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !12327, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.am = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs8Xq8PKFYOms_3hir6ModuleuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.j unwind label %.body.i, !noalias !12328

bb.i:                                             ; preds = %bb.j, %bb.g
  store i64 -1, ptr %i.e, align 8, !noalias !12328
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_0B7_.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.am, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs8Xq8PKFYOms_3hir6ModuleuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef %.sroa.56.0.copyload, i32 noundef %.sroa.67.0.copyload)
          to label %bb.l unwind label %.body.i, !noalias !12328 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !12328, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.aq = load ptr, ptr %i.u, align 8, !noalias !12328, !nonnull !7, !align !22, !noundef !7
  %i.ar = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %.sroa.56.0.copyload, i32 noundef %.sroa.67.0.copyload, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.m unwind label %.body.i, !noalias !12328 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.as = extractvalue { i32, i32 } %i.ar, 0
  %i.at = extractvalue { i32, i32 } %i.ar, 1
  %i.au = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.u, i32 noundef %i.as, i32 noundef %i.at)
          to label %bb.n unwind label %.body.i, !noalias !12328

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 38
  %i.aw = load i8, ptr %i.av, align 2, !range !11, !noalias !12328, !noundef !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 39
  %2 = load i16, ptr %i.ax, align 1, !noalias !12328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12328
  invoke void @_RNvMs_NtNtCs6oosyzwIepl_6ide_db7imports10insert_useNtB4_11ImportScope25find_insert_use_container(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noundef nonnull align 8 %i.u)
          to label %bb.o unwind label %.body.i, !noalias !12328

bb.o:                                             ; preds = %bb.n
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12328
  %i.ay = load ptr, ptr %i.u, align 8, !noalias !12328, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12328
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ba = load <2 x i32>, ptr %i.ad, align 4, !noalias !12328
  store <2 x i32> %i.ba, ptr %i.az, align 4, !noalias !12328
  store i8 0, ptr %i.b, align 4, !noalias !12328
  %i.bb = load ptr, ptr %i.ao, align 8, !noalias !12328, !nonnull !7, !align !22, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 36
  %i.bd = load i8, ptr %i.bc, align 4, !range !36, !noalias !12328, !noundef !7
  %.sroa.69.0.insert.shift.i = select i1 %i.au, i32 16777216, i32 0
  %.sroa.47.0.insert.insert.i = or disjoint i32 %4, %.sroa.69.0.insert.shift.i
  %.sroa.06.0.insert.ext.i = zext nneg i8 %i.aw to i32
  %.sroa.06.0.insert.insert.i = or disjoint i32 %.sroa.47.0.insert.insert.i, %.sroa.06.0.insert.ext.i
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module13find_use_pathNtB6_9ModuleDefECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i32 noundef %.sroa.56.0.copyload, i32 noundef %.sroa.67.0.copyload, ptr noundef nonnull %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @12, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.b, i8 noundef %i.bd, i32 noundef %.sroa.06.0.insert.insert.i)
          to label %bb.p unwind label %.body.thread17.i, !noalias !12328

.body.thread17.i:                                 ; preds = %bb.w, %bb.o
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.i:                                          ; preds = %bb.aa, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12328
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !12327, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !12327, !nonnull !7, !noundef !7
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !12327, !noundef !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bl = load i8, ptr %i.bk, align 8, !range !62, !noalias !12328, !noundef !7
  %.not10.i = icmp eq i8 %i.bl, -1
  br i1 %.not10.i, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !12328
  %i.bm = load i32, ptr %i.ad, align 4, !range !15, !noalias !12329, !noundef !7
  %i.bn = load i32, ptr %i.ae, align 4, !noalias !12329, !noundef !7
  %i.bo = load ptr, ptr %i.u, align 8, !noalias !12329, !nonnull !7, !align !22, !noundef !7
  %i.bp = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.r unwind label %bb.u, !noalias !12329 ; 2 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.y, %bb.x, %bb.u
  %.pn.i.i = phi { ptr, i32 } [ %i.by, %bb.x ], [ %i.bw, %bb.u ], [ %i.by, %bb.y ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body.thread.i unwind label %bb.z, !noalias !12330

bb.r:                                             ; preds = %bb.q
  %i.bq = extractvalue { i32, i32 } %i.bp, 0
  %i.br = extractvalue { i32, i32 } %i.bp, 1
  %i.bs = load ptr, ptr %i.u, align 8, !noalias !12329, !nonnull !7, !align !22, !noundef !7
  %i.bt = invoke noundef i8 @_RNvMs_Cs8Xq8PKFYOms_3hirNtB4_5Crate7edition(i32 noundef %i.bq, i32 noundef %i.br, ptr noundef nonnull %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.s unwind label %bb.u, !noalias !12329

bb.s:                                             ; preds = %bb.r
  %i.bu = invoke noundef nonnull ptr @_RNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory(ptr noundef nonnull align 8 %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, i8 noundef %i.bt)
          to label %bb.t unwind label %bb.u, !noalias !12330 ; 3 uses

bb.t:                                             ; preds = %bb.s
  %i.bv = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory14path_from_text(ptr noundef nonnull align 8 %i.bf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bj)
          to label %bb.v unwind label %bb.x, !noalias !12330

bb.u:                                             ; preds = %bb.v, %bb.s, %bb.r, %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.bx = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11path_concat(ptr noundef nonnull align 8 %i.bf, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv)
          to label %bb.w unwind label %bb.u, !noalias !12330

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_00B9_.exit.i unwind label %.body.thread17.i, !noalias !12328

bb.x:                                             ; preds = %bb.t
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !noalias !12330, !noundef !7
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !noalias !12330
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bu) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.z, !noalias !12330

bb.z:                                             ; preds = %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12330
  unreachable

bb.aa:                                            ; preds = %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_00B9_.exit.i, %bb.p
  %.sroa.02.0.i = phi ptr [ %i.bx, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_00B9_.exit.i ], [ null, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12328
  invoke void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeE3zipNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.d, ptr noundef %.sroa.02.0.i)
          to label %bb.ab unwind label %.body.i, !noalias !12328

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_00B9_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12328
  br label %bb.aa

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12328
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_0B7_.exit

.body.thread.i:                                   ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %.body.thread17.i
  %eh.lpad-body16.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread17.i ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #35
          to label %bb.e unwind label %bb.ac, !noalias !12328

bb.ac:                                            ; preds = %.body.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12328
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %bb.e
  resume { ptr, i32 } %.pn.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_0B7_.exit: ; preds = %bb.i, %bb.ab
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.p, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.45.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12324
  store i64 -1, ptr %0, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct31augment_references_with_importss_0B7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmENvMs2v_B1S_B1Q_3patENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16merge_match_arms16merge_match_armss0_00ENtNtNtB9_6traits8iterator8Iterator4nextB3h_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12341)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12341
  store ptr %i.g, ptr %i.e, align 8, !noalias !12343
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !12344, !nonnull !7, !noundef !7 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !12344 ; 2 uses
  %i.j = icmp eq ptr %.promoted.i.i, %i.i
  br i1 %i.j, label %bb.c, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.l, %bb.b ], [ %.promoted.i.i, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.l, ptr %1, align 8, !alias.scope !12344
  %i.m = call { i64, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvMs2v_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtBV_8MatchArm3patINtB7_5FnMutTRB1G_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k), !noalias !12342 ; 3 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %.not.i.i = icmp eq i64 %i.n, -1
  br i1 %.not.i.i, label %bb.b, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmENvMs2v_B1C_B1A_3patENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = icmp eq ptr %i.l, %i.i
  br i1 %i.o, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.p = extractvalue { i64, ptr } %i.m, 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %bb.a
  %.sroa.5.0.lcssa.i.i = phi ptr [ %i.p, %._crit_edge.i.i ], [ undef, %bb.a ]
  %i.q = insertvalue { i64, ptr } { i64 -1, ptr poison }, ptr %.sroa.5.0.lcssa.i.i, 1
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmENvMs2v_B1C_B1A_3patENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmENvMs2v_B1C_B1A_3patENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.lr.ph.i.i, %bb.c
  %.merged.i.i = phi { i64, ptr } [ %i.q, %bb.c ], [ %i.m, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12341
  %i.r = extractvalue { i64, ptr } %.merged.i.i, 0 ; 2 uses
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmENvMs2v_B1C_B1A_3patENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit
  %i.s = extractvalue { i64, ptr } %.merged.i.i, 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.r, ptr %i.d, align 8, !noalias !12345
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !noalias !12345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12346
  store i64 0, ptr %i.c, align 8, !noalias !12346
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12346
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12346
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.u, align 8, !noalias !12346
  store ptr %i.c, ptr %i.b, align 8, !noalias !12346
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @26, ptr %i.v, align 8, !noalias !12346
  %i.w = invoke noundef zeroext i1 @_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e, !noalias !12347

.body.i:                                          ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noalias !12345, !noundef !7
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !noalias !12345
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.s) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.j, !noalias !12345

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.h, !noalias !12347

bb.f:                                             ; preds = %bb.d
  br i1 %i.w, label %bb.g, label %bb.i, !prof !12

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #33
          to label %.noexc.i.i unwind label %bb.e, !noalias !12347

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12347
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !12348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12346
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noalias !12345, !noundef !7
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !noalias !12345
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i4.i, label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16merge_match_arms16merge_match_armss0_00B9_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i4.i: ; preds = %bb.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.s) #31, !noalias !12345
  br label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16merge_match_arms16merge_match_armss0_00B9_.exit

bb.j:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12345
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %.body.i
  resume { ptr, i32 } %i.ab

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16merge_match_arms16merge_match_armss0_00B9_.exit: ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WildcardPatECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmENvMs2v_B1C_B1A_3patENtNtNtB9_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit
  store i64 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers16merge_match_arms16merge_match_armss0_00B9_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_imports0ENCB32_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB38_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 2 uses
  %i.f = alloca [8 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12366
  call void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1J_8find_map5checkBX_TNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeNtCs8Xq8PKFYOms_3hir6ModuleEQNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_imports0E0INtNtNtB1R_3ops12control_flow11ControlFlowB3h_EEB5n_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !12367
  %i.j = load i64, ptr %i.h, align 8, !range !21, !noalias !12366, !noundef !7 ; 3 uses
  %.not.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx3, align 8, !noalias !12368 ; 5 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load <2 x i32>, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx3.sroa_idx, align 8, !noalias !12368
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.6.sroa.6.0.copyload = load i32, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx, align 8, !noalias !12368 ; 4 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.6.sroa.7.0.copyload = load i32, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx, align 4, !noalias !12368 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12366
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !12369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12370
  store i64 %i.j, ptr %i.g, align 8, !noalias !12370
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %i.m, align 8, !noalias !12370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12370
  store i32 %.sroa.6.sroa.6.0.copyload, ptr %i.f, align 4, !noalias !12370
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %.sroa.6.sroa.7.0.copyload, ptr %i.n, align 4, !noalias !12370
  %i.o = load ptr, ptr %i.l, align 8, !alias.scope !12369, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !12370, !nonnull !7, !align !22, !noundef !7
  %i.r = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module24nearest_non_block_module(i32 noundef %.sroa.6.sroa.6.0.copyload, i32 noundef %.sroa.6.sroa.7.0.copyload, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.d unwind label %bb.c, !noalias !12370 ; 2 uses

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.i, %bb.h, %bb.f, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.y, %.body.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.bz, %bb.y ], [ %eh.lpad-body.i.i, %.body.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload) ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !noalias !12370, !noundef !7
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !noalias !12370
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i: ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.ac, !noalias !12370

bb.d:                                             ; preds = %bb.b
  %i.x = extractvalue { i32, i32 } %i.r, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !12369, !nonnull !7, !align !61, !noundef !7 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !12370, !noundef !7
  %i.ac = icmp eq i32 %i.x, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = extractvalue { i32, i32 } %i.r, 0       ; 2 uses
  %i.ae = icmp ne i32 %i.ad, 0
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i32, ptr %i.z, align 4, !range !15, !noalias !12370, !noundef !7
  %.not.i = icmp eq i32 %i.ad, %i.af
  br i1 %.not.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_0B7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !12369, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.ai = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs8Xq8PKFYOms_3hir6ModuleuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.g unwind label %bb.c, !noalias !12370

bb.g:                                             ; preds = %bb.f
  br i1 %i.ai, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_0B7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs8Xq8PKFYOms_3hir6ModuleuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef %.sroa.6.sroa.6.0.copyload, i32 noundef %.sroa.6.sroa.7.0.copyload)
          to label %bb.i unwind label %bb.c, !noalias !12370 ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12370
  invoke void @_RNvMs_NtNtCs6oosyzwIepl_6ide_db7imports10insert_useNtB4_11ImportScope25find_insert_use_container(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noundef nonnull align 8 %i.p)
          to label %bb.j unwind label %bb.c, !noalias !12370

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !12369, !nonnull !7, !align !22, !noundef !7 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !12369, !nonnull !7, !noundef !7
  %i.ao = load i64, ptr %i.e, align 8, !range !21, !noalias !12370, !noundef !7
  %.not2.i = icmp eq i64 %i.ao, -1
  br i1 %.not2.i, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !12370
  call void @llvm.experimental.noalias.scope.decl(metadata !12371)
  call void @llvm.experimental.noalias.scope.decl(metadata !12372)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !12373, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.ar = load i32, ptr %i.z, align 4, !range !15, !noalias !12373, !noundef !7
  %i.as = load i32, ptr %i.aa, align 4, !noalias !12373, !noundef !7
  %i.at = load ptr, ptr %i.p, align 8, !noalias !12373, !nonnull !7, !align !22, !noundef !7
  %i.au = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %i.ar, i32 noundef %i.as, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.m unwind label %bb.l, !noalias !12373 ; 2 uses

bb.l:                                             ; preds = %bb.t, %bb.n, %bb.m, %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.l
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.av, %bb.l ], [ %.pn.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #35
          to label %.body.i unwind label %bb.aa, !noalias !12374

bb.m:                                             ; preds = %bb.k
  %i.aw = extractvalue { i32, i32 } %i.au, 0
  %i.ax = extractvalue { i32, i32 } %i.au, 1
  %i.ay = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.p, i32 noundef %i.aw, i32 noundef %i.ax)
          to label %bb.n unwind label %bb.l, !noalias !12373

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 38
  %i.ba = load i8, ptr %i.az, align 2, !range !11, !noalias !12373, !noundef !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 39
  %2 = load i16, ptr %i.bb, align 1, !noalias !12373
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12373
  %i.bc = load ptr, ptr %i.p, align 8, !noalias !12373, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12373
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.be = load <2 x i32>, ptr %i.z, align 4, !noalias !12373
  store <2 x i32> %i.be, ptr %i.bd, align 4, !noalias !12373
  store i8 0, ptr %i.b, align 4, !noalias !12373
  %i.bf = load ptr, ptr %i.ap, align 8, !noalias !12373, !nonnull !7, !align !22, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  %i.bh = load i8, ptr %i.bg, align 4, !range !36, !noalias !12373, !noundef !7
  %.sroa.610.0.insert.shift.i.i = select i1 %i.ay, i32 16777216, i32 0
  %.sroa.48.0.insert.insert.i.i = or disjoint i32 %4, %.sroa.610.0.insert.shift.i.i
  %.sroa.07.0.insert.ext.i.i = zext nneg i8 %i.ba to i32
  %.sroa.07.0.insert.insert.i.i = or disjoint i32 %.sroa.48.0.insert.insert.i.i, %.sroa.07.0.insert.ext.i.i
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module13find_use_pathNtB6_9ModuleDefECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, i32 noundef %.sroa.6.sroa.6.0.copyload, i32 noundef %.sroa.6.sroa.7.0.copyload, ptr noundef nonnull %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @12, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.b, i8 noundef %i.bh, i32 noundef %.sroa.07.0.insert.insert.i.i)
          to label %bb.o unwind label %bb.l, !noalias !12373

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12373
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bj = load i8, ptr %i.bi, align 8, !range !62, !noalias !12373, !noundef !7
  %.not.i.i1 = icmp eq i8 %i.bj, -1
  br i1 %.not.i.i1, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !12373
  %.val.i.i = load i8, ptr %i.an, align 1, !range !12375, !noalias !12373, !noundef !7
  %i.bk = invoke noundef nonnull ptr @_RNvNtCs6oosyzwIepl_6ide_db7helpers28mod_path_to_ast_with_factory(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, i8 noundef %.val.i.i)
          to label %bb.q unwind label %bb.r, !noalias !12373 ; 3 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.u ], [ %i.bm, %bb.r ], [ %i.bo, %bb.v ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.body.i.i unwind label %bb.w, !noalias !12373

bb.q:                                             ; preds = %bb.p
  %i.bl = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory14path_from_text(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4)
          to label %bb.s unwind label %bb.u, !noalias !12373

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bn = invoke noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11path_concat(ptr noundef nonnull align 8 %i.al, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl)
          to label %bb.t unwind label %bb.r, !noalias !12373

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RNCNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_000Bb_.exit.i.i unwind label %bb.l, !noalias !12373

bb.u:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !12373, !noundef !7
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !noalias !12373
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.v, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bk) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i unwind label %bb.w, !noalias !12373

bb.w:                                             ; preds = %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12373
  unreachable

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12373
  call void @llvm.experimental.noalias.scope.decl(metadata !12376)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !12377, !noalias !12370, !nonnull !7, !noundef !7 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 48 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !12378, !noundef !7
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 4, !noalias !12378
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i: ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.y, !noalias !12378

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ca) #35
          to label %.body.i unwind label %bb.z, !noalias !12374

bb.z:                                             ; preds = %bb.y
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12374
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8StmtListECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cc)
          to label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_00B9_.exit.i unwind label %bb.c, !noalias !12370

_RNCNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_000Bb_.exit.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12373
  %.sroa.0.0.copyload5.i = load i64, ptr %i.d, align 8, !alias.scope !12379, !noalias !12370
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false)
  br label %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_00B9_.exit.i

bb.aa:                                            ; preds = %.body.i.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12374
  unreachable

bb.ab:                                            ; preds = %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_00B9_.exit.i, %bb.j
  %.sroa.57.0.i = phi ptr [ %.sroa.57.2.i, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_00B9_.exit.i ], [ undef, %bb.j ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.2.i, %_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_00B9_.exit.i ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12370
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_0B7_.exit

_RNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_00B9_.exit.i: ; preds = %_RNCNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_000Bb_.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %.sroa.57.2.i = phi ptr [ %i.bn, %_RNCNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_000Bb_.exit.i.i ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists.exit.i.i ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.copyload5.i, %_RNCNCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_000Bb_.exit.i.i ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12370
  br label %bb.ab

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !12370
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext8NameLikeECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_0B7_.exit: ; preds = %bb.e, %bb.g, %bb.ab
  %.sroa.57.1.i = phi ptr [ %.sroa.57.0.i, %bb.ab ], [ undef, %bb.g ], [ undef, %bb.e ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.ab ], [ -1, %bb.g ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12370
  store i64 %i.j, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.1.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.57.1.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i32> %i.k, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12366
  store i64 -1, ptr %0, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers20convert_bool_to_enum31augment_references_with_importss_0B7_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4skip4SkipINtNtNtB9_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB20_8node_extNtB1W_4Path8segments0EENCINvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers12qualify_pathNtB3K_16QualifyCandidate7qualifyNCNCNvB3K_12qualify_paths3_00E0ENtNtNtB9_6traits8iterator8Iterator4nextB3O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12387, !noundef !7 ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc noundef ptr @_RNvXNtNtNtCshzWfHUSfYae_4core4iter7sources10successorsINtB2_10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1e_8node_extNtB1a_4Path8segments0ENtNtNtB6_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtNtB8_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1J_8node_extNtB1F_4Path8segments0EENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.f, align 8, !alias.scope !12387
  %i.i = tail call fastcc noundef ptr @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1b_8node_extNtB17_4Path8segments0ENtNtNtB9_6traits8iterator8Iterator3nthCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.g) #30
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtNtB8_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1J_8node_extNtB1F_4Path8segments0EENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtNtB8_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1J_8node_extNtB1F_4Path8segments0EENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ] ; 6 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtNtB8_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB1J_8node_extNtB1F_4Path8segments0EENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.i, ptr %i.d, align 8, !noalias !12388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12389
  store i64 0, ptr %i.c, align 8, !noalias !12389
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12389
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !12389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12389
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.j, align 8, !noalias !12389
  store ptr %i.c, ptr %i.b, align 8, !noalias !12389
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @26, ptr %i.k, align 8, !noalias !12389
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB17_9generated5nodes12GenericParamEINtNtBb_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtB9_6traits8iterator8Iterator4nextB3z_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !noalias !13298, !noundef !7
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !noalias !13298
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i21.i.i.i.i.i.i, label %common.resume.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i21.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.r) #31
          to label %common.resume.i.i.i unwind label %bb.w, !noalias !13298

bb.x:                                             ; preds = %bb.f
  %.sroa.0.0.copyload3.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !13308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !13307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13300
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !noalias !13298, !noundef !7
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !noalias !13298
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECsiU5vK8fN4ZC_11ide_assists.exit26.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i.i.i.i.i.i: ; preds = %bb.x
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.r) #31, !noalias !13298
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECsiU5vK8fN4ZC_11ide_assists.exit26.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECsiU5vK8fN4ZC_11ide_assists.exit26.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i24.i.i.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13299
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.i.i.i

common.resume.i.i.i:                              ; preds = %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i21.i.i.i.i.i.i, %.body.i.i.i.i.i.i, %bb.j, %.body17.i.i.i.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %eh.lpad-body18.i.i.i.i.i.i, %bb.j ], [ %lpad.loopexit.split-lp41, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i21.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp41, %.body.i.i.i.i.i.i ], [ %eh.lpad-body18.i.i.i.i.i.i, %.body17.i.i.i.i.i.i ], [ %i.bf, %bb.aa ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECsiU5vK8fN4ZC_11ide_assists.exit26.i.i.i.i.i.i, %bb.u, %bb.t
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.u ], [ %.sroa.0.0.i.i.i.i.i, %bb.t ], [ %.sroa.0.0.copyload3.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamECsiU5vK8fN4ZC_11ide_assists.exit26.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i.i, -2
  br i1 %.not.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.thread.i.i.i, label %bb.ab

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.thread.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.i.i.i, %bb.b
  %.val.i.i.i = load i64, ptr %1, align 8, !range !10, !alias.scope !13309, !noundef !7
  %.val3.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !13309 ; 3 uses
  %i.az = icmp eq i64 %.val.i.i.i, 0
  %i.ba = icmp eq ptr %.val3.i.i.i, null
  %or.cond.i.i.i.i = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.i, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread8.i, label %bb.y

bb.y:                                             ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.thread.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !13310, !noundef !7
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !noalias !13310
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.z, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread8.i

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i.i) #31
          to label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread8.i unwind label %bb.aa, !noalias !13310

bb.aa:                                            ; preds = %bb.z
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %1, align 8, !alias.scope !13309
  br label %common.resume.i.i.i

_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread8.i: ; preds = %bb.z, %bb.y, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.thread.i.i.i
  store i64 0, ptr %1, align 8, !alias.scope !13309
  br label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread.i

_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit4.i, %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread8.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  store i64 -1, ptr %0, align 8, !alias.scope !13292
  br label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1u_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EINtNtBb_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextB2X_.exit

bb.ab:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBW_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2o_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i.i, i64 16, i1 false), !noalias !13311
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %.not1.i = icmp eq i64 %.sroa.0.1.i.i.i.i.i, -1
  br i1 %.not1.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit4.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit2.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit2.i: ; preds = %bb.ab
  store i64 %.sroa.0.1.i.i.i.i.i, ptr %0, align 8, !alias.scope !13292
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i, i64 16, i1 false), !noalias !13293
  br label %_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1u_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EINtNtBb_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextB2X_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit4.i: ; preds = %bb.ab
  %.pre.i = load i64, ptr %1, align 8, !range !10, !alias.scope !13312
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i)
  %i.bg = trunc nuw i64 %.pre.i to i1
  br i1 %i.bg, label %bb.b, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread.i

_RNvXsI_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1u_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EINtNtBb_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4nextB2X_.exit: ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1h_9generated5nodes12GenericParamENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EEINtB5_8FuseImplBY_E4nextB2K_.exit.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEINtNtBb_6option6OptionTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB39_11syntax_node12RustLanguageEIB2F_TNtNtNtB1W_7imports10insert_use11ImportScopeNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEEENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0ENtNtNtB9_6traits8iterator8Iterator4nextB70_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(256) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.46.i.i.i = alloca [72 x i8], align 8     ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 4                 ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.11.i = alloca [72 x i8], align 8         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13333)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13334, !noundef !7
  %.not.i33.i = icmp eq ptr %i.m, null
  br i1 %.not.i33.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.46.40..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.46.i.i.i, i64 32
  %.promoted.i = load ptr, ptr %i.o, align 8, !alias.scope !13335
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB18_11syntax_node12RustLanguageEINtBE_6OptionTNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEEEECsiU5vK8fN4ZC_11ide_assists.exit4.i, %.lr.ph.i
  %i.v = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB18_11syntax_node12RustLanguageEINtBE_6OptionTNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEEEECsiU5vK8fN4ZC_11ide_assists.exit4.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13336)
  call void @llvm.experimental.noalias.scope.decl(metadata !13337)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13338)
  %i.w = load ptr, ptr %i.n, align 8, !alias.scope !13335, !nonnull !7, !noundef !7
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread12.i, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  store ptr %i.y, ptr %i.o, align 8, !alias.scope !13335
  %.sroa.0.0.copyload1.i.i.i = load i32, ptr %i.v, align 8, !noalias !13339 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.copyload1.i.i.i, -1
  br i1 %.not.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread12.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx2.i.i.i, i64 36, i1 false), !noalias !13340
  store i32 %.sroa.0.0.copyload1.i.i.i, ptr %i.k, align 8, !noalias !13340
  call void @llvm.experimental.noalias.scope.decl(metadata !13341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13342
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !13343, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 5 uses
  call void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant17reference_to_node(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k), !noalias !13344
  %i.ab = load ptr, ptr %i.h, align 8, !noalias !13342, !noundef !7 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.414.0.copyload.i.i.i.i = load ptr, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !13342, !nonnull !7, !noundef !7 ; 7 uses
  %.sroa.515.0.copyload.i.i.i.i = load i32, ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !noalias !13342 ; 4 uses
  %.sroa.616.0.copyload.i.i.i.i = load i32, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 4, !noalias !13342 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !13342
  store ptr %.sroa.414.0.copyload.i.i.i.i, ptr %i.j, align 8, !noalias !13342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13342
  store i32 %.sroa.515.0.copyload.i.i.i.i, ptr %i.i, align 4, !noalias !13342
  store i32 %.sroa.616.0.copyload.i.i.i.i, ptr %i.q, align 4, !noalias !13342
  %i.ac = load ptr, ptr %i.r, align 8, !alias.scope !13343, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.ad = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs8Xq8PKFYOms_3hir6ModuleuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.g unwind label %bb.f, !noalias !13342

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13342
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread18.i

bb.f:                                             ; preds = %bb.w, %bb.j, %bb.i, %bb.h, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.ad, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !13342, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !noalias !13342, !nonnull !7, !align !22, !noundef !7
  %i.ai = invoke { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module5krate(i32 noundef %.sroa.515.0.copyload.i.i.i.i, i32 noundef %.sroa.616.0.copyload.i.i.i.i, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %bb.i unwind label %bb.f, !noalias !13342 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.aj = extractvalue { i32, i32 } %i.ai, 0
  %i.ak = extractvalue { i32, i32 } %i.ai, 1
  %i.al = invoke noundef zeroext i1 @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE10is_nightlyCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8 %i.aa, i32 noundef %i.aj, i32 noundef %i.ak)
          to label %bb.j unwind label %bb.f, !noalias !13342

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 38
  %i.an = load i8, ptr %i.am, align 2, !range !11, !noalias !13342, !noundef !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 39
  %2 = load i16, ptr %i.ao, align 1, !noalias !13342
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13342
  %i.ap = load ptr, ptr %i.aa, align 8, !noalias !13342, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13342
  %i.aq = load ptr, ptr %i.s, align 8, !alias.scope !13343, !nonnull !7, !align !61, !noundef !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !noalias !13342
  %i.ar = load ptr, ptr %i.af, align 8, !noalias !13342, !nonnull !7, !align !22, !noundef !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.at = load i8, ptr %i.as, align 4, !range !36, !noalias !13342, !noundef !7
  %.sroa.621.0.insert.shift.i.i.i.i = select i1 %i.al, i32 16777216, i32 0
  %.sroa.419.0.insert.insert.i.i.i.i = or disjoint i32 %4, %.sroa.621.0.insert.shift.i.i.i.i
  %.sroa.018.0.insert.ext.i.i.i.i = zext nneg i8 %i.an to i32
  %.sroa.018.0.insert.insert.i.i.i.i = or disjoint i32 %.sroa.419.0.insert.insert.i.i.i.i, %.sroa.018.0.insert.ext.i.i.i.i
  invoke void @_RINvMs4_Cs8Xq8PKFYOms_3hirNtB6_6Module13find_use_pathNtB6_9ModuleDefECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, i32 noundef %.sroa.515.0.copyload.i.i.i.i, i32 noundef %.sroa.616.0.copyload.i.i.i.i, ptr noundef nonnull %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) @12, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.f, i8 noundef %i.at, i32 noundef %.sroa.018.0.insert.insert.i.i.i.i)
          to label %bb.k unwind label %bb.f, !noalias !13342

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13342
  %i.au = load i8, ptr %i.t, align 8, !range !62, !noalias !13342, !noundef !7
  %.not22.i.i.i.i = icmp eq i8 %i.au, -1
  br i1 %.not22.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !13342
  %i.av = invoke noundef ptr @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath11pop_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %bb.p unwind label %bb.o, !noalias !13342 ; 2 uses

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13342
  br label %bb.ad

bb.n:                                             ; preds = %bb.z, %bb.o
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bo, %bb.z ], [ %i.aw, %bb.o ]
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i unwind label %bb.ac, !noalias !13342

bb.o:                                             ; preds = %bb.t, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, %.noexc31.i.i.i.i, %bb.r, %bb.q, %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.l
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %i.av, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull %i.az)
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !13342

.noexc.i.i.i.i:                                   ; preds = %bb.q
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13342
  store ptr %i.bc, ptr %i.b, align 8, !noalias !13342
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8, !noalias !13342
  %i.be = icmp eq i64 %i.bd, 2
  br i1 %i.be, label %bb.r, label %.noexc31.i.i.i.i, !prof !12

bb.r:                                             ; preds = %.noexc.i.i.i.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc31.i.i.i.i unwind label %bb.o, !noalias !13342

.noexc31.i.i.i.i:                                 ; preds = %bb.r, %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13342
  store ptr %i.bc, ptr %i.a, align 8, !noalias !13342
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc32.i.i.i.i unwind label %bb.o, !noalias !13342

.noexc32.i.i.i.i:                                 ; preds = %.noexc31.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13342
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i: ; preds = %.noexc32.i.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.u, align 8, !alias.scope !13343, !nonnull !7, !align !22, !noundef !7
  %i.bg = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bf)
          to label %bb.s unwind label %bb.o, !noalias !13342

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i
  invoke void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath12push_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull %i.bg)
          to label %bb.t unwind label %bb.o, !noalias !13342

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13342
  invoke void @_RNvMs_NtNtCs6oosyzwIepl_6ide_db7imports10insert_useNtB4_11ImportScope25find_insert_use_container(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noundef nonnull align 8 %i.aa)
          to label %bb.u unwind label %bb.o, !noalias !13342

bb.u:                                             ; preds = %bb.t
  %i.bh = load i64, ptr %i.c, align 8, !range !21, !noalias !13342, !noundef !7
  %.not23.i.i.i.i = icmp eq i64 %i.bh, -1
  br i1 %.not23.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13342
  %i.bi = invoke noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs8Xq8PKFYOms_3hir6ModuleuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac, i32 noundef %.sroa.515.0.copyload.i.i.i.i, i32 noundef %.sroa.616.0.copyload.i.i.i.i)
          to label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.i unwind label %bb.z, !noalias !13342 ; 0 uses

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13342
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit34.i.i.i.i unwind label %bb.f, !noalias !13342

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit34.i.i.i.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13342
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.414.0.copyload.i.i.i.i, i64 48 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !noalias !13342, !noundef !7
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !noalias !13342
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit34.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.414.0.copyload.i.i.i.i) #31
          to label %bb.aa unwind label %bb.y, !noalias !13342

bb.y:                                             ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit37.i.i.i.i

bb.z:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(40) %i.d) #35
          to label %bb.n unwind label %bb.ac, !noalias !13342

bb.aa:                                            ; preds = %bb.x, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit34.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13342
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !13342, !noundef !7
  %i.br = add i32 %i.bq, -1                       ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !noalias !13342
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ab, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread18.i

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ab) #31, !noalias !13342
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread18.i

bb.ac:                                            ; preds = %bb.af, %bb.ae, %bb.z, %bb.n
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !13342
  unreachable

bb.ad:                                            ; preds = %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13342
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread18.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i: ; preds = %bb.n, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %.pn.i.i.i.i, %bb.n ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.414.0.copyload.i.i.i.i, i64 48 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !13342, !noundef !7
  %i.bw = add i32 %i.bv, -1                       ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 4, !noalias !13342
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.ae, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit37.i.i.i.i

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.414.0.copyload.i.i.i.i) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit37.i.i.i.i unwind label %bb.ac, !noalias !13342

.noexc38.i.i.i.i:                                 ; preds = %bb.af, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit37.i.i.i.i
  resume { ptr, i32 } %.pn.pn.pn.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit37.i.i.i.i: ; preds = %bb.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, %bb.y
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.bn, %bb.y ], [ %.pn.pn.i.i.i.i, %bb.ae ], [ %.pn.pn.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !noalias !13342, !noundef !7
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  store i32 %i.ca, ptr %i.by, align 4, !noalias !13342
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.af, label %.noexc38.i.i.i.i

bb.af:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit37.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ab) #31
          to label %.noexc38.i.i.i.i unwind label %bb.ac, !noalias !13342

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread12.i: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i.i)
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.thread18.i: ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.e
  %.sroa.7.0.i.i.ph.i = phi i64 [ -2, %bb.aa ], [ -2, %bb.ab ], [ -1, %bb.ad ], [ -2, %bb.e ]
  %.sroa.5.0.i.i.ph.i = phi ptr [ undef, %bb.aa ], [ undef, %bb.ab ], [ %.sroa.414.0.copyload.i.i.i.i, %bb.ad ], [ undef, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.46.i.i.i, i64 72, i1 false), !noalias !13345
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i.i)
  br label %bb.ag

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references0EEINtB5_8FuseImplBY_E4nextB2W_.exit.i: ; preds = %bb.v
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !noalias !13342 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.46.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.46.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !13340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.46.40..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !13340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13340
end_hunk_1
