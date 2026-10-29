Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.09?download=true
inline.NumInlined: 685
inline.NumDeleted: 373
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata11QueryResultEBF_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !565, !nonnull !4, !noundef !4
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !565
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEB11_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEB11_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEEB11_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader9glyphdata14ProductionNameEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !574, !noundef !4 ; 3 uses
  %i.b = icmp samesign ugt i8 %i.a, 25
  %i.c = and i8 %i.a, 30
  %switch1 = icmp eq i8 %i.c, 26
  %switch = and i1 %i.b, %switch1
  br i1 %switch, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %switch.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !579, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !579
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1qcNTItuk7F_13glyphs_reader.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECs1qcNTItuk7F_13glyphs_reader.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2EEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEECs1qcNTItuk7F_13glyphs_reader.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEECs1qcNTItuk7F_13glyphs_reader.exit.i: ; preds = %bb.a
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEECs1qcNTItuk7F_13glyphs_reader.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2EECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %common.resume unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagNtNtCsgdm2QMcbaeA_10fontdrasil10variations4TentEECs1qcNTItuk7F_13glyphs_reader.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2EECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionECs1qcNTItuk7F_13glyphs_reader.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2EECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil10variations15VariationRegionECs1qcNTItuk7F_13glyphs_reader.exit
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscDfuDmzQoJe_5kurbo4vec24Vec2ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void

bb.g:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEB18_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 10 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [80 x i8], align 8                ; 13 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  store i64 0, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.t = load ptr, ptr %1, align 8, !noundef !4   ; 3 uses
  %.not = icmp ne ptr %i.t, null                  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %.sroa.0.sroa.6.0 = zext i1 %.not to i64        ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.v, i64 undef ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.x, i64 0
  store i64 %.sroa.0.sroa.6.0, ptr %i.o, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.t, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %.sroa.0.sroa.6.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr null, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %i.t, ptr %.sroa.0.sroa.7.sroa.5.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0, ptr %.sroa.0.sroa.7.sroa.6.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store ptr %i.q, ptr %i.y, align 8
  invoke void @_RINvXs1c_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB7_7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorTB15_lEE9from_iterINtNtNtB1L_8adapters10filter_map9FilterMapINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map4IterB15_NtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsB4B_E0EEB4F_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.o)
          to label %bb.b unwind label %.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a: ; preds = %bb.aj, %bb.ap, %.thread88
  %.sroa.012.0 = phi i8 [ %.sroa.012.281, %.thread88 ], [ %.sroa.012.1, %bb.aj ], [ %.sroa.012.1, %bb.ap ]
  %.pn.pn = phi { ptr, i32 } [ %.pn82, %.thread88 ], [ %lpad.thr_comm.split-lp100, %bb.aj ], [ %lpad.thr_comm99, %bb.ap ] ; 2 uses
  %2 = trunc nuw i8 %.sroa.012.0 to i1
  br i1 %2, label %bb.ar, label %common.resume

.thread:                                          ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.aa = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 1152921504606846976
  call void @llvm.assume(i1 %i.ab)
  %.not56109 = icmp eq i64 %i.x, %i.aa
  br i1 %.not56109, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aq, %bb.b
  %i.ac = phi i64 [ %i.x, %bb.b ], [ %i.ae, %bb.aq ] ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %.lr.ph112

.lr.ph:                                           ; preds = %bb.b, %bb.aq
  %i.ae = phi i64 [ %i.ct, %bb.aq ], [ %i.aa, %bb.b ] ; 2 uses
  invoke void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphE6retainNCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsBG_Es_0EBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 %i.p)
          to label %bb.aq unwind label %.thread93.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph112:                                        ; preds = %._crit_edge
  %i.af = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.q, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit, %._crit_edge113, %._crit_edge
  %.sroa.012.1 = phi i8 [ 1, %._crit_edge ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit ], [ 1, %bb.q ], [ 1, %._crit_edge113 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  invoke void @_RNvXsh_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ae unwind label %bb.aj

bb.d:                                             ; preds = %.lr.ph112, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit64
  %.sroa.04.0110 = phi ptr [ %i.af, %.lr.ph112 ], [ %i.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit64 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.0110, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.al = load ptr, ptr %.sroa.04.0110, align 8, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvXs3_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_5GlyphNtNtCsgdm2QMcbaeA_10fontdrasil4util13CompositeLike4name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.al)
          to label %bb.e unwind label %.thread93.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread93.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.n, %.lr.ph
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

.thread93.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.ab, %bb.r, %bb.p
  %.sroa.012.3.ph.ph.ph = phi i8 [ 0, %bb.ab ], [ 1, %bb.p ], [ 0, %bb.r ]
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !617
  %i.am = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  invoke void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_lE0ECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n)
          to label %.noexc59 unwind label %bb.i

.noexc59:                                         ; preds = %.noexc
  %i.an = load i8, ptr %i.d, align 8, !range !12, !noalias !617, !noundef !4 ; 2 uses
  %.not.i.not = icmp eq i8 %i.an, -1
  br i1 %.not.i.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.noexc59
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %switch.i.i.i = icmp samesign ult i8 %i.an, 25
  br i1 %switch.i.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.ao = load ptr, ptr %i.ai, align 8, !alias.scope !622, !noalias !617, !nonnull !4, !noundef !4
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !622
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai) #22
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %.noexc, %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.as = load i8, ptr %i.n, align 8, !range !8, !alias.scope !625, !noundef !4
  %switch.i.i = icmp samesign ult i8 %i.as, 25
  br i1 %switch.i.i, label %.thread88, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.at = load ptr, ptr %i.aj, align 8, !alias.scope !628, !nonnull !4, !noundef !4
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !628
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.k, label %.thread88

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj) #22
          to label %.thread88 unwind label %bb.o

bb.l:                                             ; preds = %bb.g, %bb.f, %.noexc59, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !617
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.aw = load i8, ptr %i.n, align 8, !range !8, !alias.scope !631, !noundef !4
  %switch.i.i62 = icmp samesign ult i8 %i.aw, 25
  br i1 %switch.i.i62, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit64, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.ax = load ptr, ptr %i.aj, align 8, !alias.scope !634, !nonnull !4, !noundef !4
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !634
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit64

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs8hFumjqO1Bi_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj) #22
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit64 unwind label %.thread93.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit64: ; preds = %bb.m, %bb.l, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ba = icmp eq ptr %i.ak, %i.ag
  br i1 %i.ba, label %._crit_edge113, label %bb.d

bb.o:                                             ; preds = %.thread88, %bb.k, %bb.ar, %bb.ap, %bb.w
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

._crit_edge113:                                   ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs9NoVXegZYB5_8smol_str7SmolStrECs1qcNTItuk7F_13glyphs_reader.exit64
  %i.bc = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 6
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.be, label %bb.p, label %bb.c

bb.p:                                             ; preds = %._crit_edge113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !635
  store i64 2, ptr %i.c, align 8, !noalias !635
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @6, ptr %i.bf, align 8, !noalias !635
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %i.bg, align 8, !noalias !635
  %i.bh = invoke noundef zeroext i1 @_RNvXs0_NtCsksibNCz2yVN_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log7enabled(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.q unwind label %.thread93.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !635
  br i1 %i.bh, label %bb.r, label %bb.c

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bi = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bj = load i64, ptr %i.q, align 8, !range !10, !noundef !4
  %i.bk = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 1152921504606846976
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bk
  store ptr %i.bi, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.bj, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.bm, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsB3r_Es0_0EE9from_iterB3v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.l)
          to label %bb.s unwind label %.thread93.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !4 ; 4 uses
  %i.br = icmp samesign ult i64 %i.bq, 2
  br i1 %i.br, label %bb.x, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  %i.bs = icmp samesign ult i64 %i.bq, 21
  br i1 %i.bs, label %bb.v, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainNtCs9NoVXegZYB5_8smol_str7SmolStrNvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsgCecv3eZDcN_5alloc3vec3VecBZ_EECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 384307168202282326) %i.bq, ptr noalias nofree noundef nonnull %i.a) #22
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs9NoVXegZYB5_8smol_str7SmolStrNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 384307168202282326) %i.bq, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v, %bb.u
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #23
          to label %.thread88 unwind label %bb.o

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.s
  %i.bu = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 6
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp samesign ugt i64 %i.bu, 1
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bx = load i64, ptr %i.bp, align 8, !noundef !4 ; 2 uses
  store i64 %i.bx, ptr %i.k, align 8
  %i.by = icmp ult i64 %i.bx, 384307168202282326
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.m, ptr %i.bz, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.454.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !636
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %i.ca, align 8, !noalias !636
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @6, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !636
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 16, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !636
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @7, ptr %i.cb, align 8, !noalias !636
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.j, ptr %i.cc, align 8, !noalias !636
  store i64 0, ptr %i.b, align 8, !noalias !636
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @6, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !636
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 16, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !636
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cd, align 8, !noalias !636
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @8, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !636
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 22, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !636
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ce, align 8, !noalias !636
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 75, ptr %i.cf, align 4, !noalias !636
  invoke void @_RNvXs0_NtCsksibNCz2yVN_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b)
          to label %bb.ad unwind label %bb.w

bb.z:                                             ; preds = %bb.x, %bb.ad
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ab unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread88 unwind label %bb.ac

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %.thread93.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.c

bb.ae:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTlNtCs9NoVXegZYB5_8smol_str7SmolStrEEINtB2_12SpecFromIterBU_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBW_lENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEs1_0EE9from_iterB4S_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.h)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !4 ; 6 uses
  %i.cm = icmp samesign ult i64 %i.cl, 2
  br i1 %i.cm, label %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.ag, !prof !5

bb.ag:                                            ; preds = %bb.af
  %i.cn = icmp samesign ult i64 %i.cl, 21
  br i1 %i.cn, label %bb.ai, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtCsgCecv3eZDcN_5alloc3vec3VecBZ_EECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 288230376151711744) %i.cl, ptr noalias nofree noundef nonnull %i.a) #22
          to label %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.ap

bb.ai:                                            ; preds = %bb.ag
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef range(i64 0, 288230376151711744) %i.cl, i64 noundef 1, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.ap

bb.aj:                                            ; preds = %bb.c, %bb.ae, %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit
  %lpad.thr_comm.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a

_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.af, %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.co = load i64, ptr %i.i, align 8, !range !10, !noundef !4
  %i.cp = icmp ult i64 %i.cl, 288230376151711744
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %i.cl
  store ptr %i.cj, ptr %i.g, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cj, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.co, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cq, ptr %.sroa.611.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec16in_place_collectINtB6_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTlBY_EENCINvNtCsgdm2QMcbaeA_10fontdrasil4util29depth_sorted_composite_glyphsNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEs2_0EE9from_iterB4I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.ak unwind label %bb.aj

bb.ak:                                            ; preds = %_RINvNtCsgCecv3eZDcN_5alloc5slice11stable_sortTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBH_NtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %3 = trunc nuw i8 %.sroa.012.1 to i1
  br i1 %3, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEB1d_.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEB1d_.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a, %bb.ar, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.cr, %bb.an ], [ %.pn.pn76, %bb.ar ], [ %.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEB1d_.exit: ; preds = %bb.am
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.al

bb.ap:                                            ; preds = %bb.ai, %bb.ah
  %lpad.thr_comm99 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTlNtCs9NoVXegZYB5_8smol_str7SmolStrEEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a unwind label %bb.o

bb.aq:                                            ; preds = %.lr.ph
  %i.ct = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 1152921504606846976
  call void @llvm.assume(i1 %i.cu)
  %.not56 = icmp eq i64 %i.ae, %i.ct
  br i1 %.not56, label %._crit_edge, label %.lr.ph

.thread88:                                        ; preds = %.thread93.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread93.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.i, %bb.k, %bb.w, %bb.aa
  %.pn82 = phi { ptr, i32 } [ %i.cg, %bb.aa ], [ %i.ar, %bb.j ], [ %i.bt, %bb.w ], [ %i.ar, %bb.k ], [ %i.ar, %bb.i ], [ %lpad.loopexit.split-lp107, %.thread93.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.thread93.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.012.281 = phi i8 [ 0, %bb.aa ], [ 1, %bb.j ], [ 0, %bb.w ], [ 1, %bb.k ], [ 1, %bb.i ], [ %.sroa.012.3.ph.ph.ph, %.thread93.loopexit.split-lp.loopexit.split-lp ], [ 1, %.thread93.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtCs9NoVXegZYB5_8smol_str7SmolStrlEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a unwind label %bb.o

bb.ar:                                            ; preds = %.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a
  %.pn.pn76 = phi { ptr, i32 } [ %i.z, %.thread ], [ %.pn.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtCs9NoVXegZYB5_8smol_str7SmolStrlEECs1qcNTItuk7F_13glyphs_reader.exit.a ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #23
          to label %common.resume unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs1qcNTItuk7F_13glyphs_reader(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !639, !nonnull !4, !align !9, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !639, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !639, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !639, !noundef !4
  %i.k = load ptr, ptr %3, align 8, !alias.scope !639, !nonnull !4, !noundef !4
  %i.l = load ptr, ptr %i.d, align 8, !noalias !639, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !639, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !639, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !639
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !639
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !639
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !639
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !639
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !639
  store i64 0, ptr %i.b, align 8, !noalias !639
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !639
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !639
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !639
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !639
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !639
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.u, align 8, !noalias !639
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %i.v, align 4, !noalias !639
  call void @_RNvXs0_NtCsksibNCz2yVN_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !639
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsksibNCz2yVN_3log13___private_api7enabledNtB2_12GlobalLoggerECs1qcNTItuk7F_13glyphs_reader(i64 noundef range(i64 1, 6) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %i.d, align 8
  %i.e = call noundef zeroext i1 @_RNvXs0_NtCsksibNCz2yVN_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log7enabled(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_B1X_EE6extendINtNtB40_8adapters12GenericShuntINtNtB56_3map3MapINtNtNtB42_5slice4iter4IterRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNvNtB6m_16smart_components21instantiate_for_layers4_0EINtNtB42_6result6ResultzNtB75_17BadSmartComponentEEEB6m_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !643
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNvNtB1I_16smart_components21instantiate_for_layers4_0EINtNtB6_6result6ResultzNtB2r_17BadSmartComponentEENtNtNtB4_6traits8iterator8Iterator9size_hintB1I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  %i.h = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.i = lshr i64 %i.h, 1
  %.sroa.0.0 = sub nuw i64 %i.h, %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNvNtB1I_16smart_components21instantiate_for_layers4_0EINtNtB6_6result6ResultzNtB2r_17BadSmartComponentEENtNtNtB4_6traits8iterator8Iterator9size_hintB1I_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
  %i.j = load i64, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBT_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1Y_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noundef nonnull align 8 %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @_RINvXNtNtCsf3Ta7LF998c_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNvNtB1J_16smart_components21instantiate_for_layers4_0EINtNtB7_6result6ResultzNtB2s_17BadSmartComponentEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvMNtNtB7_3ops9try_traitINtB4U_17NeverShortCircuituE10wrap_mut_2uTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB5Y_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEENCINvNvB46_8for_each4callB5U_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB8Q_7HashMapB5V_B74_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB4a_7collect6ExtendB5U_E6extendBE_E0E0E0B5f_EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_B1X_EE6extendINtNtNtB40_8adapters10filter_map9FilterMapINtNtNtB42_5slice4iter4IterRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNvNtB6f_16smart_components19interpolate_anchorss_0EEB6f_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 8                ; 16 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.7.i.i.i.i.i = alloca [16 x i8], align 8  ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload5 = load ptr, ptr %1, align 8, !alias.scope !696, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload7 = load ptr, ptr %.sroa.6.0..sroa_idx6, align 8, !alias.scope !696, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx8, align 8, !alias.scope !696
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.sroa.4.0.copyload = load i64, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx8.sroa_idx, align 8, !alias.scope !696
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.8.sroa.5.0.copyload = load ptr, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx8.sroa_idx, align 8, !alias.scope !696
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.sroa.6.0.copyload = load ptr, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx8.sroa_idx, align 8, !alias.scope !696 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBT_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEE7reserveNCINvNtB8_3map11make_hasherBQ_B1Y_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0ECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull align 8 %i.l)
  %i.m = icmp eq ptr %.sroa.0.0.copyload5, %.sroa.6.0.copyload7
  br i1 %i.m, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerENCNvNtB1A_16smart_components19interpolate_anchorss_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB3X_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB4J_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB3a_7collect6ExtendTB4G_B5P_EE6extendB3_E0EB1A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %.sroa.6.0.copyload7 to i64
  %i.o = ptrtoint ptr %.sroa.0.0.copyload5 to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.8.sroa.4.0.copyload, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 7 uses
  %.sroa.413.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.6.0.copyload, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.6.0.copyload, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.78.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.417.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.422.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.529.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.434.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.535.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  br i1 %.not.i.i.i.i.i, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !697
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26, !noalias !697
  unreachable

.split.i.i.i:                                     ; preds = %bb.b, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map15filter_map_foldRRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1Y_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEuNCNvNtB1g_16smart_components19interpolate_anchorss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6b_7HashMapB1V_B34_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB5f_7collect6ExtendB1U_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB4e_EE0E0E0B1g_.exit.i.i.i
  %.sroa.01.0.i.i.i = phi i64 [ %i.bl, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map15filter_map_foldRRNtNtCs1qcNTItuk7F_13glyphs_reader4font5LayerTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1Y_15NormalizedSpaceEINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscDfuDmzQoJe_5kurbo5point5PointEEuNCNvNtB1g_16smart_components19interpolate_anchorss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6b_7HashMapB1V_B34_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtB5f_7collect6ExtendB1U_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB4e_EE0E0E0B1g_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload5, i64 %.sroa.01.0.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !698, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !697
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !697
  %i.ae = load ptr, ptr %.sroa.8.sroa.0.0.copyload, align 8, !noalias !697, !nonnull !4, !align !9, !noundef !4
  call void @_RNvNtCs1qcNTItuk7F_13glyphs_reader16smart_components19normalized_location(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.8.sroa.5.0.copyload), !noalias !697
  %i.af = load i8, ptr %i.j, align 8, !range !699, !noalias !697, !noundef !4 ; 2 uses
  %.not28.i.i.i.i.i = icmp eq i8 %i.af, -1
  br i1 %.not28.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs1qcNTItuk7F_13glyphs_reader16smart_components17BadSmartComponentEEB2a_.exit.i.i.i.i.i, label %bb.c

common.resume.i.i.i.i:                            ; preds = %bb.ae, %bb.ab, %bb.x, %bb.e
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.ag, %bb.e ], [ %.pn.ph.i.i.i.i.i, %bb.ab ], [ %i.bj, %bb.ae ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.c:                                             ; preds = %.split.i.i.i
end_hunk_0
