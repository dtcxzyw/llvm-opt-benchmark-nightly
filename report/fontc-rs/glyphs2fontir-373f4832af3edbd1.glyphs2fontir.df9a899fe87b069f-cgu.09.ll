Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs2fontir-373f4832af3edbd1.glyphs2fontir.df9a899fe87b069f-cgu.09?download=true
inline.NumInlined: 159
inline.NumDeleted: 91
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBC_EECsjceHdiZFn9b_13glyphs2fontir:bb.a
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.d = load i8, ptr %i.c, align 8, !range !6, !alias.scope !292, !noundef !5
  %switch.i.i.i.i = icmp samesign ult i8 %i.d, 25
  br i1 %switch.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !295, !nonnull !5, !noundef !5
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !295
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.i = icmp eq i64 %i.a, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.k = load i8, ptr %i.j, align 8, !range !6, !alias.scope !299, !noundef !5
  %switch.i.i.i1.i = icmp samesign ult i8 %i.k, 25
  br i1 %switch.i.i.i1.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !302, !nonnull !5, !noundef !5
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !302
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.p = load i8, ptr %i.j, align 8, !range !6, !alias.scope !305, !noundef !5
  %switch.i.i1.i.i = icmp samesign ult i8 %i.p, 25
  br i1 %switch.i.i1.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !308, !nonnull !5, !noundef !5
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !308
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i: ; preds = %bb.h, %bb.f, %bb.c
  %.sink.i.sink.i = phi ptr [ %i.e, %bb.c ], [ %i.l, %bb.f ], [ %i.q, %bb.h ]
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sink.i) #15
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v) #17
          to label %bb.r unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.x = load i64, ptr %i.w, align 8, !range !7, !alias.scope !309, !noundef !5 ; 2 uses
  %i.y = icmp eq i64 %i.x, 2
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.aa = load i8, ptr %i.z, align 8, !range !6, !alias.scope !313, !noundef !5
  %switch.i.i.i.i5 = icmp samesign ult i8 %i.aa, 25
  br i1 %switch.i.i.i.i5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !316, !nonnull !5, !noundef !5
  %i.ad = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !316
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.af = icmp eq i64 %i.x, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.ah = load i8, ptr %i.ag, align 8, !range !6, !alias.scope !320, !noundef !5
  %switch.i.i.i1.i4 = icmp samesign ult i8 %i.ah, 25
  br i1 %switch.i.i.i1.i4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !323, !nonnull !5, !noundef !5
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !323
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.am = load i8, ptr %i.ag, align 8, !range !6, !alias.scope !326, !noundef !5
  %switch.i.i1.i.i1 = icmp samesign ult i8 %i.am, 25
  br i1 %switch.i.i1.i.i1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !329, !nonnull !5, !noundef !5
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !329
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i2: ; preds = %bb.p, %bb.n, %bb.k
  %.sink.i.sink.i3 = phi ptr [ %i.ab, %bb.k ], [ %i.ai, %bb.n ], [ %i.an, %bb.p ]
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sink.i.sink.i3) #15
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir.exit6: ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir.exit.sink.split.i2
  ret void

bb.q:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.r:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font10FontMasterENCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB2A_8FontInfoINtNtBb_7convert7TryFromNtB1I_4FontE8try_froms_0EIB11_IB1h_NtB1I_8InstanceENCB2x_s0_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB4O_8for_each4callTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB7f_15NormalizedSpaceEENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8w_7HashMapB5S_B7c_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB4S_7collect6ExtendB5R_E6extendBO_E0E0EB2C_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font10FontMasterENCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB2h_8FontInfoINtNtBc_7convert7TryFromNtB1p_4FontE8try_froms_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB3T_8for_each4callTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB6l_15NormalizedSpaceEENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7C_7HashMapB4Y_B6i_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB3X_7collect6ExtendB4X_E6extendINtNtB8_5chain5ChainBN_IBO_IBY_NtB1p_8InstanceENCB2e_s0_0EEE0E0EB2j_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !5
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !5, !align !9, !noundef !5
  call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font8InstanceENCNvXNtCsjceHdiZFn9b_13glyphs2fontir4toirNtB2e_8FontInfoINtNtBc_7convert7TryFromNtB1p_4FontE8try_froms0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3R_8for_each4callTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB6i_15NormalizedSpaceEENCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7z_7HashMapB4V_B6f_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB3V_7collect6ExtendB4U_E6extendINtNtB8_5chain5ChainIBO_IBY_NtB1p_10FontMasterENCB2b_s_0EBN_EE0E0EB2g_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.e)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEEINtNtBb_6option8IntoIterB1M_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB32_8for_each4callB1M_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB4i_8BTreeSetB1M_EINtNtB36_7collect6ExtendB1M_E6extendBO_E0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noundef !5
  invoke void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB2e_8for_each4callB1s_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB3v_8BTreeSetB1s_EINtNtB2i_7collect6ExtendB1s_E6extendINtNtB7_5chain5ChainBP_INtNtBb_6option8IntoIterB1s_EEE0E0ECsjceHdiZFn9b_13glyphs2fontir(ptr noundef nonnull %i.e, ptr noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %.body

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i8, ptr %0, align 8, !range !338, !noundef !5
  %.not4 = icmp eq i8 %i.h, -2
  br i1 %.not4, label %bb.g, label %bb.d

.body:                                            ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load i8, ptr %0, align 8, !range !338, !noundef !5
  %.not9 = icmp eq i8 %i.j, -2
  br i1 %.not9, label %.body.thread, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !5, !align !9, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %.sroa.02.0.copyload38.i = load i8, ptr %i.b, align 8, !alias.scope !340 ; 2 uses
  store i8 -1, ptr %i.b, align 8, !alias.scope !341
  %.not9.i = icmp eq i8 %.sroa.02.0.copyload38.i, -1
  br i1 %.not9.i, label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBH_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB2O_8BTreeSetBH_EINtNtB1w_7collect6ExtendBH_E6extendINtNtNtB1y_8adapters5chain5ChainINtNtB4z_6cloned6ClonedINtNtNtB8_5slice4iter4IterBH_EEB3_EE0E0ECsjceHdiZFn9b_13glyphs2fontir.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #17
          to label %.body.thread unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.d
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !342
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) %i.m, i64 23, i1 false)
  store i8 %.sroa.02.0.copyload38.i, ptr %i.a, align 8, !noalias !339
  %i.n = invoke noundef zeroext i1 @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtNtB7_7set_val9SetValZSTE6insertCsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir.exit.loopexit.i unwind label %bb.e, !noalias !339 ; 0 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir.exit.loopexit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !342
  br label %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBH_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB2O_8BTreeSetBH_EINtNtB1w_7collect6ExtendBH_E6extendINtNtNtB1y_8adapters5chain5ChainINtNtB4z_6cloned6ClonedINtNtNtB8_5slice4iter4IterBH_EEB3_EE0E0ECsjceHdiZFn9b_13glyphs2fontir.exit

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBH_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB2O_8BTreeSetBH_EINtNtB1w_7collect6ExtendBH_E6extendINtNtNtB1y_8adapters5chain5ChainINtNtB4z_6cloned6ClonedINtNtNtB8_5slice4iter4IterBH_EEB3_EE0E0ECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir.exit.loopexit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBH_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB2O_8BTreeSetBH_EINtNtB1w_7collect6ExtendBH_E6extendINtNtNtB1y_8adapters5chain5ChainINtNtB4z_6cloned6ClonedINtNtNtB8_5slice4iter4IterBH_EEB3_EE0E0ECsjceHdiZFn9b_13glyphs2fontir.exit
  ret void

.body.thread:                                     ; preds = %bb.e, %bb.h, %.body
  %eh.lpad-body8 = phi { ptr, i32 } [ %i.i, %.body ], [ %i.i, %bb.h ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body8

bb.h:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #17
          to label %.body.thread unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB5_5ChainINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1P_EEINtNtBb_6option8IntoIterB1O_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1O_TB1O_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss3_0QNCINvNvB30_8for_each4callB45_NCNvXs6_B52_NtB52_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB1T_13orchestration7ContextNtB88_6WorkIdNtNtB1T_5error5ErrorE4execs0_0E0E0EB54_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %0, ptr noundef nonnull align 8 %1, double noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store double %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !5
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  invoke void @_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBY_EENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduQNCINvNtNtB1K_8adapters3map8map_foldBX_TBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss3_0QNCINvNvB1E_8for_each4callB3i_NCNvXs6_B4e_NtB4e_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB12_13orchestration7ContextNtB7k_6WorkIdNtNtB12_5error5ErrorE4execs0_0E0E0EB4g_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.h = load i64, ptr %0, align 8, !range !348, !noundef !5 ; 3 uses
  %.not4 = icmp eq i64 %i.h, -2
  br i1 %.not4, label %bb.h, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i64, ptr %0, align 8, !range !348, !noundef !5
  %switch = icmp ugt i64 %i.j, -3
  br i1 %switch, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB10_EEECsjceHdiZFn9b_13glyphs2fontir.exit, label %bb.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.l = load double, ptr %i.e, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.b, align 8, !noalias !349
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.l, ptr %i.m, align 8, !noalias !349
  %.not10.i = icmp eq i64 %i.h, -1
  br i1 %.not10.i, label %bb.g, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.48.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, i64 56, i1 false)
  store i64 %i.h, ptr %i.a, align 8, !noalias !351
  store double %i.l, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !350
  call void @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1Q_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCNvXs6_NtCsjceHdiZFn9b_13glyphs2fontir6sourceNtB3r_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB1U_13orchestration7ContextNtB5l_6WorkIdNtNtB1U_5error5ErrorE4execs0_0E0INtB7_5FnMutTuB1O_EE8call_mutB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !350
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB10_EEECsjceHdiZFn9b_13glyphs2fontir.exit: ; preds = %bb.d, %bb.i
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBC_EECsjceHdiZFn9b_13glyphs2fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option8IntoIterTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB10_EEECsjceHdiZFn9b_13glyphs2fontir.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3l_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvB2f_8for_each4callB3k_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5Q_3VecB3k_E14extend_trustedINtB2Y_3MapBP_B42_EE0E0E0EB48_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.51.i.i.i.i = alloca [24 x i8], align 8   ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.01.i.i.i = alloca [32 x i8], align 8     ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters6copied9copy_foldBQ_uNCINvNtB2u_3map8map_foldBQ_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3w_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvB1C_8for_each4callB3v_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3v_E14extend_trustedINtB39_3MapINtB2s_6CopiedBF_EB4d_EE0E0E0E0EB4j_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload, i64 8 ; 9 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.t, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ab, %bb.t ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.t ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.n, align 8, !noalias !369, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !373
  %i.o = load i8, ptr %.val15.i, align 8, !range !6, !alias.scope !374, !noalias !375, !noundef !5
  %i.p = icmp eq i8 %i.o, 25
  br i1 %i.p, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val15.i, i64 24, i1 false), !noalias !376
  br label %.noexc.i

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val15.i) #15
          to label %.noexc.i unwind label %bb.c, !noalias !369

.noexc.i:                                         ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !373
  store i64 2, ptr %i.e, align 8, !noalias !373
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  %i.q = load i64, ptr %.sroa.9.0.copyload, align 8, !range !7, !noalias !377, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.q, 2
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %.noexc.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !379
  %i.s = load i8, ptr %i.l, align 8, !range !6, !alias.scope !378, !noalias !377, !noundef !5
  %i.t = icmp eq i8 %i.s, 25
  br i1 %i.t, label %bb.m, label %bb.l, !prof !10

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !379
  %i.u = load i8, ptr %i.l, align 8, !range !6, !alias.scope !378, !noalias !377, !noundef !5
  %i.v = icmp eq i8 %i.u, 25
  br i1 %i.v, label %bb.k, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !380
  br label %.noexc.i.i.i.i

end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!133 = distinct !{!133, !132, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!134 = distinct !{!134, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!135 = distinct !{!135, !134, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!136 = distinct !{!136, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!137 = distinct !{!137, !136, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!138 = !{!111}
!139 = !{!113}
!140 = !{!115}
!141 = !{!115, !113, !111}
!142 = !{!117}
!143 = !{!119}
!144 = !{!119, !117, !115, !113, !111}
!145 = !{!121}
!146 = !{!123}
!147 = !{!125}
!148 = !{!125, !123, !121}
!149 = !{!127}
!150 = !{!129}
!151 = !{!129, !127, !125, !123, !121}
!152 = !{!131}
!153 = !{!133}
!154 = !{!133, !131, !121}
!155 = !{!135}
!156 = !{!137}
!157 = !{!137, !135, !133, !131, !121}
!158 = distinct !{!158, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!159 = distinct !{!159, !158, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!160 = distinct !{!160, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!161 = distinct !{!161, !160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!162 = distinct !{!162, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!163 = distinct !{!163, !162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!164 = distinct !{!164, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!165 = distinct !{!165, !164, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!166 = distinct !{!166, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!167 = distinct !{!167, !166, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!168 = distinct !{!168, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!169 = distinct !{!169, !168, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!170 = distinct !{!170, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!171 = distinct !{!171, !170, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!172 = distinct !{!172, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!173 = distinct !{!173, !172, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!174 = !{!159}
!175 = !{!161}
!176 = !{!161, !159}
!177 = !{!163}
!178 = !{!165}
!179 = !{!165, !163, !161, !159}
!180 = !{!167}
!181 = !{!169}
!182 = !{!169, !167}
!183 = !{!171}
!184 = !{!173}
!185 = !{!173, !171, !169, !167}
!186 = distinct !{!186, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!187 = distinct !{!187, !186, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!188 = distinct !{!188, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!189 = distinct !{!189, !188, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!190 = distinct !{!190, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!191 = distinct !{!191, !190, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!192 = distinct !{!192, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!193 = distinct !{!193, !192, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!194 = distinct !{!194, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!195 = distinct !{!195, !194, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!196 = distinct !{!196, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!197 = distinct !{!197, !196, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!198 = distinct !{!198, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!199 = distinct !{!199, !198, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!200 = distinct !{!200, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!201 = distinct !{!201, !200, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!202 = distinct !{!202, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!203 = distinct !{!203, !202, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!204 = distinct !{!204, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!205 = distinct !{!205, !204, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!206 = distinct !{!206, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!207 = distinct !{!207, !206, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!208 = distinct !{!208, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!209 = distinct !{!209, !208, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!210 = !{!187}
!211 = !{!189}
!212 = !{!189, !187}
!213 = !{!191}
!214 = !{!193}
!215 = !{!193, !191, !189, !187}
!216 = !{!195}
!217 = !{!197}
!218 = !{!197, !195}
!219 = !{!199}
!220 = !{!201}
!221 = !{!201, !199, !197, !195}
!222 = !{!203}
!223 = !{!205}
!224 = !{!205, !203}
!225 = !{!207}
!226 = !{!209}
!227 = !{!209, !207, !205, !203}
!228 = distinct !{!228, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir"}
!229 = distinct !{!229, !228, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!230 = distinct !{!230, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir"}
!231 = distinct !{!231, !230, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!232 = distinct !{!232, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!233 = distinct !{!233, !232, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!234 = distinct !{!234, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!235 = distinct !{!235, !234, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!236 = distinct !{!236, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!237 = distinct !{!237, !236, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!238 = distinct !{!238, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!239 = distinct !{!239, !238, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!240 = distinct !{!240, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupECsjceHdiZFn9b_13glyphs2fontir"}
!241 = distinct !{!241, !240, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!242 = distinct !{!242, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!243 = distinct !{!243, !242, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!244 = distinct !{!244, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!245 = distinct !{!245, !244, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!246 = distinct !{!246, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!247 = distinct !{!247, !246, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!248 = distinct !{!248, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!249 = distinct !{!249, !248, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!250 = distinct !{!250, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!251 = distinct !{!251, !250, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!252 = distinct !{!252, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!253 = distinct !{!253, !252, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!254 = distinct !{!254, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!255 = distinct !{!255, !254, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!256 = distinct !{!256, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!257 = distinct !{!257, !256, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!258 = distinct !{!258, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir"}
!259 = distinct !{!259, !258, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!260 = distinct !{!260, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir"}
!261 = distinct !{!261, !260, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!262 = distinct !{!262, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!263 = distinct !{!263, !262, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!264 = distinct !{!264, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!265 = distinct !{!265, !264, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!266 = distinct !{!266, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!267 = distinct !{!267, !266, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!268 = distinct !{!268, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!269 = distinct !{!269, !268, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!270 = distinct !{!270, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupECsjceHdiZFn9b_13glyphs2fontir"}
!271 = distinct !{!271, !270, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!272 = distinct !{!272, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!273 = distinct !{!273, !272, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!274 = distinct !{!274, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!275 = distinct !{!275, !274, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!276 = distinct !{!276, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!277 = distinct !{!277, !276, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!278 = distinct !{!278, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!279 = distinct !{!279, !278, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!280 = distinct !{!280, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!281 = distinct !{!281, !280, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!282 = distinct !{!282, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!283 = distinct !{!283, !282, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!284 = distinct !{!284, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!285 = distinct !{!285, !284, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!286 = distinct !{!286, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!287 = distinct !{!287, !286, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!288 = !{!229}
!289 = !{!231}
!290 = !{!233}
!291 = !{!235}
!292 = !{!235, !233, !231, !229}
!293 = !{!237}
!294 = !{!239}
!295 = !{!239, !237, !235, !233, !231, !229}
!296 = !{!241}
!297 = !{!243}
!298 = !{!245}
!299 = !{!245, !243, !241, !229}
!300 = !{!247}
!301 = !{!249}
!302 = !{!249, !247, !245, !243, !241, !229}
!303 = !{!251}
!304 = !{!253}
!305 = !{!253, !251, !241, !229}
!306 = !{!255}
!307 = !{!257}
!308 = !{!257, !255, !253, !251, !241, !229}
!309 = !{!259}
!310 = !{!261}
!311 = !{!263}
!312 = !{!265}
!313 = !{!265, !263, !261, !259}
!314 = !{!267}
!315 = !{!269}
!316 = !{!269, !267, !265, !263, !261, !259}
!317 = !{!271}
!318 = !{!273}
!319 = !{!275}
!320 = !{!275, !273, !271, !259}
!321 = !{!277}
!322 = !{!279}
!323 = !{!279, !277, !275, !273, !271, !259}
!324 = !{!281}
!325 = !{!283}
!326 = !{!283, !281, !271, !259}
!327 = !{!285}
!328 = !{!287}
!329 = !{!287, !285, !283, !281, !271, !259}
!330 = distinct !{!330, i1 true, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBH_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB2O_8BTreeSetBH_EINtNtB1w_7collect6ExtendBH_E6extendINtNtNtB1y_8adapters5chain5ChainINtNtB4z_6cloned6ClonedINtNtNtB8_5slice4iter4IterBH_EEB3_EE0E0ECsjceHdiZFn9b_13glyphs2fontir"}
!331 = distinct !{!331, !330, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBH_NCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB2O_8BTreeSetBH_EINtNtB1w_7collect6ExtendBH_E6extendINtNtNtB1y_8adapters5chain5ChainINtNtB4z_6cloned6ClonedINtNtNtB8_5slice4iter4IterBH_EEB3_EE0E0ECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!332 = distinct !{!332, i1 true, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir"}
!333 = distinct !{!333, !332, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!334 = distinct !{!334, i1 true, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir"}
!335 = distinct !{!335, !334, !"_RNvXsy_NtCsf3Ta7LF998c_4core6optionINtB5_8IntoIterNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir: argument 0:pre.rot"}
!336 = distinct !{!336, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB28_8BTreeSetB1f_EINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters5chain5ChainINtNtB3U_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEINtNtBe_6option8IntoIterB1f_EEE0E0CsjceHdiZFn9b_13glyphs2fontir"}
!337 = distinct !{!337, !336, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNCINvXsl_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB28_8BTreeSetB1f_EINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters5chain5ChainINtNtB3U_6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEINtNtBe_6option8IntoIterB1f_EEE0E0CsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!338 = !{i8 -2, i8 26}
!339 = !{!331}
!340 = !{!335, !333, !331}
!341 = !{!333, !331}
!342 = !{!337, !331}
!343 = distinct !{!343, i1 true, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBI_EENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB1u_8adapters3map8map_foldBH_TBH_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss3_0QNCINvNvB1o_8for_each4callB2L_NCNvXs6_B3H_NtB3H_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtBM_13orchestration7ContextNtB6N_6WorkIdNtNtBM_5error5ErrorE4execs0_0E0E0EB3J_"}
!344 = distinct !{!344, !343, !"_RINvYINtNtCsf3Ta7LF998c_4core6option8IntoIterTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBI_EENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB1u_8adapters3map8map_foldBH_TBH_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss3_0QNCINvNvB1o_8for_each4callB2L_NCNvXs6_B3H_NtB3H_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtBM_13orchestration7ContextNtB6N_6WorkIdNtNtBM_5error5ErrorE4execs0_0E0E0EB3J_: argument 0"}
!345 = distinct !{!345, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBV_ETBU_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss3_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1A_NCNvXs6_B2w_NtB2w_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtBZ_13orchestration7ContextNtB66_6WorkIdNtNtBZ_5error5ErrorE4execs0_0E0E0B2y_"}
!346 = distinct !{!346, !345, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBV_ETBU_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss3_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1A_NCNvXs6_B2w_NtB2w_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtBZ_13orchestration7ContextNtB66_6WorkIdNtNtBZ_5error5ErrorE4execs0_0E0E0B2y_: argument 1"}
!347 = distinct !{!347, !345, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBV_ETBU_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss3_0QNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1A_NCNvXs6_B2w_NtB2w_19KerningInstanceWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtBZ_13orchestration7ContextNtB66_6WorkIdNtNtBZ_5error5ErrorE4execs0_0E0E0B2y_: argument 0"}
!348 = !{i64 -2, i64 3}
!349 = !{!344}
!350 = !{!347, !346, !344}
!351 = !{!347, !344}
!352 = distinct !{!352, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters6copied9copy_foldBQ_uNCINvNtB2u_3map8map_foldBQ_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3w_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvB1C_8for_each4callB3v_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3v_E14extend_trustedINtB39_3MapINtB2s_6CopiedBF_EB4d_EE0E0E0E0EB4j_"}
!353 = distinct !{!353, !352, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters6copied9copy_foldBQ_uNCINvNtB2u_3map8map_foldBQ_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3w_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvB1C_8for_each4callB3v_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3v_E14extend_trustedINtB39_3MapINtB2s_6CopiedBF_EB4d_EE0E0E0E0EB4j_: argument 0"}
!354 = distinct !{!354, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1G_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4F_3VecB1F_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB2n_EE0E0E0B2t_"}
!355 = distinct !{!355, !354, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1G_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4F_3VecB1F_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB2n_EE0E0E0B2t_: argument 1"}
!356 = distinct !{!356, i1 true, !"_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0B5_"}
!357 = distinct !{!357, !356, !"_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0B5_: argument 1"}
!358 = distinct !{!358, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied9copy_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuNCINvNtB6_3map8map_foldBY_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB2b_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2a_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB2a_E14extend_trustedINtB1P_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2S_EE0E0E0E0B2Y_"}
!359 = distinct !{!359, !358, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied9copy_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuNCINvNtB6_3map8map_foldBY_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB2b_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2a_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB2a_E14extend_trustedINtB1P_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2S_EE0E0E0E0B2Y_: argument 0"}
!360 = distinct !{!360, !354, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1G_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4F_3VecB1F_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB2n_EE0E0E0B2t_: argument 0"}
!361 = distinct !{!361, !356, !"_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0B5_: argument 0"}
!362 = distinct !{!362, i1 true, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!363 = distinct !{!363, !362, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!364 = distinct !{!364, !362, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 0"}
!365 = distinct !{!365, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1g_ENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB25_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB36_6copied6CopiedINtNtNtBe_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0EE0E0B58_"}
!366 = distinct !{!366, !365, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1g_ENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB25_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB36_6copied6CopiedINtNtNtBe_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0EE0E0B58_: argument 0"}
!367 = distinct !{!367, i1 true, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBJ_EE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0EE0B4a_"}
!368 = distinct !{!368, !367, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBJ_EE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss0_0EE0B4a_: argument 0"}
!369 = !{!353}
!370 = !{!355}
!371 = !{!357}
!372 = !{!360, !355, !359, !353}
!373 = !{!361, !357, !360, !355, !359, !353}
!374 = !{!357, !355}
!375 = !{!359, !353}
!376 = !{!361, !360, !359, !353}
!377 = !{!361, !357, !360, !359, !353}
!378 = !{!363}
!379 = !{!364, !363, !361, !357, !360, !355, !359, !353}
!380 = !{!364, !361, !357, !360, !359, !353}
!381 = !{!368, !366, !360, !359, !353}
!382 = !{!360, !359, !353}
!383 = distinct !{!383, i1 true, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters6copied9copy_foldBQ_uNCINvNtB2u_3map8map_foldBQ_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3w_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0NCINvNvB1C_8for_each4callB3v_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3v_E14extend_trustedINtB39_3MapINtB2s_6CopiedBF_EB4d_EE0E0E0E0EB4j_"}
!384 = distinct !{!384, !383, !"_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters6copied9copy_foldBQ_uNCINvNtB2u_3map8map_foldBQ_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB3w_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0NCINvNvB1C_8for_each4callB3v_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB61_3VecB3v_E14extend_trustedINtB39_3MapINtB2s_6CopiedBF_EB4d_EE0E0E0E0EB4j_: argument 0"}
!385 = distinct !{!385, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1G_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4F_3VecB1F_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB2n_EE0E0E0B2t_"}
!386 = distinct !{!386, !385, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1G_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4F_3VecB1F_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB2n_EE0E0E0B2t_: argument 1"}
!387 = distinct !{!387, i1 true, !"_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0B5_"}
!388 = distinct !{!388, !387, !"_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0B5_: argument 1"}
!389 = distinct !{!389, i1 true, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied9copy_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuNCINvNtB6_3map8map_foldBY_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB2b_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2a_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB2a_E14extend_trustedINtB1P_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2S_EE0E0E0E0B2Y_"}
!390 = distinct !{!390, !389, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6copied9copy_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuNCINvNtB6_3map8map_foldBY_TNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB2b_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2a_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5a_3VecB2a_E14extend_trustedINtB1P_3MapINtB4_6CopiedINtNtNtBa_5slice4iter4IterBY_EEB2S_EE0E0E0E0B2Y_: argument 0"}
!391 = distinct !{!391, !385, !"_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1G_EuNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1F_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4F_3VecB1F_E14extend_trustedINtB4_3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterBU_EEB2n_EE0E0E0B2t_: argument 0"}
!392 = distinct !{!392, !387, !"_RNCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0B5_: argument 0"}
!393 = distinct !{!393, i1 true, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone"}
!394 = distinct !{!394, !393, !"_RNvXsK_NtCs3v5ql5U6hxj_6fontir2irNtB5_9KernGroupNtNtCsf3Ta7LF998c_4core5clone5Clone5clone: argument 1"}
!395 = distinct !{!395, i1 true, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1g_ENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB25_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB36_6copied6CopiedINtNtNtBe_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0EE0E0B58_"}
!396 = distinct !{!396, !395, !"_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1g_ENCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB25_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtB36_6copied6CopiedINtNtNtBe_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0EE0E0B58_: argument 0"}
!397 = distinct !{!397, i1 true, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBJ_EE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0EE0B4a_"}
!398 = distinct !{!398, !397, !"_RNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB8_3VecTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideBJ_EE14extend_trustedINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1K_6copied6CopiedINtNtNtB1O_5slice4iter4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEENCNvNtCsjceHdiZFn9b_13glyphs2fontir6source26expand_kerning_to_bracketss1_0EE0B4a_: argument 0"}
!399 = !{!384}
!400 = !{!386}
!401 = !{!388}
!402 = !{!391, !386, !390, !384}
!403 = !{!392, !388, !391, !386, !390, !384}
!404 = !{!394}
!405 = !{!388, !386}
!406 = !{!390, !384}
!407 = !{!392, !391, !390, !384}
!408 = !{!398, !396, !391, !390, !384}
!409 = distinct !{!409, i1 true, !"_RNvXsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsjceHdiZFn9b_13glyphs2fontir"}
!410 = distinct !{!410, !409, !"_RNvXsn_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtCsf3Ta7LF998c_4core7default7Default7defaultCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!411 = distinct !{!411, i1 true, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB9_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE12insert_entryCsjceHdiZFn9b_13glyphs2fontir"}
!412 = distinct !{!412, !411, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB9_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE12insert_entryCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!413 = distinct !{!413, !411, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB9_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE12insert_entryCsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!414 = distinct !{!414, !411, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs3v5ql5U6hxj_6fontir2ir9KernGroupINtNtB9_3set8BTreeSetNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEE12insert_entryCsjceHdiZFn9b_13glyphs2fontir: argument 2"}
!415 = !{!410}
!416 = !{!412}
!417 = !{!413}
!418 = !{!412, !413, !414}
!419 = !{!412, !414}
!420 = !{!412, !413}
!421 = distinct !{!421, i1 true, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1k_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEE12insert_entryCsjceHdiZFn9b_13glyphs2fontir"}
!422 = distinct !{!422, !421, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1k_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEE12insert_entryCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!423 = distinct !{!423, !421, !"_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryTNtNtCs3v5ql5U6hxj_6fontir2ir8KernSideB1k_EINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEE12insert_entryCsjceHdiZFn9b_13glyphs2fontir: argument 1"}
!424 = !{i64 -1, i64 3}
!425 = !{!422}
!426 = !{!423}
!427 = !{!422, !423}
!428 = distinct !{!428, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!429 = distinct !{!429, !428, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!430 = distinct !{!430, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!431 = distinct !{!431, !430, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!432 = distinct !{!432, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!433 = distinct !{!433, !432, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!434 = distinct !{!434, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!435 = distinct !{!435, !434, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!436 = !{!429}
!437 = !{!431}
!438 = !{!431, !429}
!439 = !{!433}
!440 = !{!435}
!441 = !{!435, !433, !431, !429}
!442 = distinct !{!442, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir"}
!443 = distinct !{!443, !442, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!444 = distinct !{!444, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir"}
!445 = distinct !{!445, !444, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!446 = distinct !{!446, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir"}
!447 = distinct !{!447, !446, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str4ReprECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!448 = distinct !{!448, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir"}
!449 = distinct !{!449, !448, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!450 = distinct !{!450, i1 true, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir"}
!451 = distinct !{!451, !450, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!452 = !{!443}
!453 = !{!445}
!454 = !{!447}
!455 = !{!447, !445, !443}
!456 = !{!449}
!457 = !{!451}
!458 = !{!451, !449, !447, !445, !443}
!459 = distinct !{!459, !11}
!460 = distinct !{!460, !11}
!461 = distinct !{!461, !11}
!462 = distinct !{!462, !11}
!463 = distinct !{!463, !11}
!464 = distinct !{!464, !11}
!465 = distinct !{!465, !11}
!466 = distinct !{!466, !11}
!467 = distinct !{!467, !11}
!468 = distinct !{!468, !11}
!469 = distinct !{!469, !11}
!470 = distinct !{!470, !11}
!471 = distinct !{!471, !11}
!472 = distinct !{!472, !11}
!473 = distinct !{!473, !11}
!474 = distinct !{!474, !11}
!475 = distinct !{!475, !11}
!476 = distinct !{!476, !11}
!477 = distinct !{!477, !11}
!478 = distinct !{!478, !11}
!479 = distinct !{!479, !11}
!480 = distinct !{!480, !11}
!481 = distinct !{!481, !11}
!482 = distinct !{!482, !11}
!483 = distinct !{!483, !11}
!484 = distinct !{!484, !11}
!485 = distinct !{!485, !11}
!486 = distinct !{!486, !11}
!487 = distinct !{!487, !11}
!488 = distinct !{!488, !11}
!489 = distinct !{!489, !11}
!490 = distinct !{!490, !11}
!491 = distinct !{!491, !11}
!492 = distinct !{!492, !11}
!493 = distinct !{!493, !11}
!494 = distinct !{!494, !11}
!495 = distinct !{!495, !11}
!496 = distinct !{!496, !11}
!497 = distinct !{!497, !11}
!498 = distinct !{!498, !11}
!499 = distinct !{!499, !11}
!500 = distinct !{!500, !11}
!501 = distinct !{!501, !11}
!502 = distinct !{!502, !11}
!503 = distinct !{!503, !11}
!504 = distinct !{!504, !11}
!505 = distinct !{!505, !11}
!506 = distinct !{!506, !11}
!507 = distinct !{!507, !11}
!508 = distinct !{!508, !11}
!509 = distinct !{!509, !11}
!510 = distinct !{!510, !11}
!511 = distinct !{!511, !11}
!512 = distinct !{!512, !11}
!513 = distinct !{!513, !11}
!514 = distinct !{!514, !11}
!515 = distinct !{!515, !11}
!516 = distinct !{!516, !11}
!517 = distinct !{!517, !11}
!518 = distinct !{!518, !11}
!519 = distinct !{!519, !11}
!520 = distinct !{!520, !11}
!521 = distinct !{!521, !11}
!522 = distinct !{!522, !11}
!523 = distinct !{!523, !11}
!524 = distinct !{!524, !11}
!525 = distinct !{!525, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir"}
!526 = distinct !{!526, !525, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!527 = !{!526}
!528 = distinct !{!528, i1 true, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir"}
!529 = distinct !{!529, !528, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!530 = !{!529}
!531 = distinct !{!531, i1 true, !"_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4ItermENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir"}
!532 = distinct !{!532, !531, !"_RNvXsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3setINtB5_4ItermENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hintCsjceHdiZFn9b_13glyphs2fontir: argument 0"}
!533 = !{!532}
end_hunk_1
