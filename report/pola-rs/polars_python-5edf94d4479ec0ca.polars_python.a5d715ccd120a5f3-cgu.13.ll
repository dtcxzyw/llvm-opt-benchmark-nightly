Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.13?download=true
inline.NumInlined: 18194
inline.NumDeleted: 8311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB2o_B3e_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python:bb.a
  %i.m = or i64 %i.l, %i.k, !dbg !248374
  %i.n = icmp eq i64 %i.m, 0, !dbg !248374
  %or.cond.i = select i1 %i.i, i1 %i.n, i1 false, !dbg !248374
  br i1 %or.cond.i, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit, !dbg !248374

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !248350), !dbg !248375
  call void @llvm.experimental.noalias.scope.decl(metadata !248351), !dbg !248376
  %i.o = icmp eq i64 %.val11, 0, !dbg !248377
  br i1 %i.o, label %.loopexit, label %bb.b, !dbg !248378

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %bb.a
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248379, !noalias !248349
  %i.p = icmp eq i64 %.val11, 0, !dbg !248377
  br i1 %i.p, label %.loopexit30, label %bb.c, !dbg !248378

bb.b:                                             ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.val10, i64 80, !dbg !248380 ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !dbg !248381, !alias.scope !248352, !noalias !248353
  br label %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i, !dbg !248382

bb.c:                                             ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %.val10, i64 80, !dbg !248380 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8, !dbg !248381, !alias.scope !248352, !noalias !248353
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248383, !noalias !248354
  br label %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i, !dbg !248384

_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i: ; preds = %bb.b, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val10, i64 48, !dbg !248385
  %i.u = call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCsk1caaszg7Cl_10serde_json3ser16MapKeySerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB1V_16CompactFormatterEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248386, !noalias !248355 ; 2 uses
  %.not.i.i.i.peel.i.i = icmp eq ptr %i.u, null, !dbg !248387
  br i1 %.not.i.i.i.peel.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, label %.loopexit30, !dbg !248388

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i: ; preds = %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i
  %.val.i5.i.i.i.peel.i.i = load ptr, ptr %0, align 8, !dbg !248389, !noalias !248357, !nonnull !2779, !align !2864, !noundef !2779
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.peel.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248390, !noalias !248357
  %i.v = call noundef align 8 ptr @_RINvXs_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes6__serdeNtNtB7_5dtype8DataTypeNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %.val10, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248391, !noalias !248358 ; 2 uses
  %.not8.peel.i.i = icmp eq ptr %i.v, null, !dbg !248392
  br i1 %.not8.peel.i.i, label %.peel.next.i.i, label %.loopexit30, !dbg !248392

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i
  %i.w = phi ptr [ %i.y, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i ], [ %i.s, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i ] ; 4 uses
  %i.x = icmp eq ptr %i.w, %i.e, !dbg !248377
  br i1 %i.x, label %.loopexit.loopexit, label %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i, !dbg !248378

_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i: ; preds = %.peel.next.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80, !dbg !248380 ; 2 uses
  store ptr %i.y, ptr %i.b, align 8, !dbg !248381, !alias.scope !248352, !noalias !248353
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 48, !dbg !248385
  %.val.i.i.i.i.i.i = load ptr, ptr %0, align 8, !dbg !248393, !noalias !248359, !nonnull !2779, !noundef !2779
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248383, !noalias !248359
  %i.aa = call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCsk1caaszg7Cl_10serde_json3ser16MapKeySerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB1V_16CompactFormatterEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248386, !noalias !248360 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, null, !dbg !248387
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i, label %.loopexit30, !dbg !248388

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i
  %.val.i5.i.i.i.i.i = load ptr, ptr %0, align 8, !dbg !248389, !noalias !248361, !nonnull !2779, !align !2864, !noundef !2779
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248390, !noalias !248361
  %i.ab = call noundef align 8 ptr @_RINvXs_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes6__serdeNtNtB7_5dtype8DataTypeNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248391, !noalias !248362 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ab, null, !dbg !248392
  br i1 %.not8.i.i, label %.peel.next.i.i, label %.loopexit30, !dbg !248392, !llvm.loop !248341

.loopexit.loopexit:                               ; preds = %.peel.next.i.i
  %.val28.pre = load ptr, ptr %0, align 8, !dbg !248394
  br label %.loopexit, !dbg !248394

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit
  %.val28 = phi ptr [ %.val28.pre, %.loopexit.loopexit ], [ %.val.i, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit ], !dbg !248394
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val28, ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248395
  br label %.loopexit30, !dbg !248396

.loopexit30:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i, %.loopexit, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i
  %.sroa.0.0 = phi ptr [ null, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread ], [ %i.v, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i ], [ %i.u, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i ], [ null, %.loopexit ], [ %i.ab, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3A_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i ], [ %i.aa, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i ], !dbg !248397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !248398
  ret ptr %.sroa.0.0, !dbg !248399
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB2o_B3e_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !248400 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !248495
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !248496
  %.val10 = load ptr, ptr %i.c, align 8, !dbg !248496, !nonnull !2779, !noundef !2779 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !248496
  %.val11 = load i64, ptr %i.d, align 8, !dbg !248496, !noundef !2779 ; 3 uses
  %.idx = mul nuw nsw i64 %.val11, 104, !dbg !248497
  %i.e = getelementptr inbounds nuw i8, ptr %.val10, i64 %.idx, !dbg !248497 ; 2 uses
  store ptr %.val10, ptr %i.b, align 8, !dbg !248498
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !248498
  store ptr %i.e, ptr %i.f, align 8, !dbg !248498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !248499
  call void @_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator9size_hintCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !248500
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !248499
  %i.h = load i64, ptr %i.g, align 8, !dbg !248499, !range !2817, !noundef !2779
  %i.i = trunc nuw i64 %i.h to i1, !dbg !248501
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !248501
  %i.k = load i64, ptr %i.a, align 8, !dbg !248501
  %i.l = load i64, ptr %i.j, align 8, !dbg !248501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !248502
  call void @llvm.experimental.noalias.scope.decl(metadata !248479), !dbg !248503
  %.val.i = load ptr, ptr %0, align 8, !dbg !248504, !alias.scope !248479, !noalias !248480, !nonnull !2779, !align !2864, !noundef !2779 ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248505, !noalias !248481
  %i.m = or i64 %i.l, %i.k, !dbg !248506
  %i.n = icmp eq i64 %i.m, 0, !dbg !248506
  %or.cond.i = select i1 %i.i, i1 %i.n, i1 false, !dbg !248506
  br i1 %or.cond.i, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit, !dbg !248506

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !248482), !dbg !248507
  call void @llvm.experimental.noalias.scope.decl(metadata !248483), !dbg !248508
  %i.o = icmp eq i64 %.val11, 0, !dbg !248509
  br i1 %i.o, label %.loopexit, label %bb.b, !dbg !248510

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %bb.a
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248511, !noalias !248481
  %i.p = icmp eq i64 %.val11, 0, !dbg !248509
  br i1 %i.p, label %.loopexit30, label %bb.c, !dbg !248510

bb.b:                                             ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.val10, i64 104, !dbg !248512 ; 2 uses
  store ptr %i.q, ptr %i.b, align 8, !dbg !248513, !alias.scope !248484, !noalias !248485
  br label %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i, !dbg !248514

bb.c:                                             ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %.val10, i64 104, !dbg !248512 ; 2 uses
  store ptr %i.r, ptr %i.b, align 8, !dbg !248513, !alias.scope !248484, !noalias !248485
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248515, !noalias !248486
  br label %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i, !dbg !248516

_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i: ; preds = %bb.b, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.q, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %.val10, i64 8, !dbg !248517
  %i.u = call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCsk1caaszg7Cl_10serde_json3ser16MapKeySerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB1V_16CompactFormatterEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248518, !noalias !248487 ; 2 uses
  %.not.i.i.i.peel.i.i = icmp eq ptr %i.u, null, !dbg !248519
  br i1 %.not.i.i.i.peel.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, label %.loopexit30, !dbg !248520

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i: ; preds = %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val10, i64 32, !dbg !248521
  %.val.i5.i.i.i.peel.i.i = load ptr, ptr %0, align 8, !dbg !248522, !noalias !248489, !nonnull !2779, !align !2864, !noundef !2779
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.peel.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248523, !noalias !248489
  %i.w = call noundef align 8 ptr @_RINvXNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field1__NtB5_5FieldNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248524, !noalias !248490 ; 2 uses
  %.not8.peel.i.i = icmp eq ptr %i.w, null, !dbg !248525
  br i1 %.not8.peel.i.i, label %.peel.next.i.i, label %.loopexit30, !dbg !248525

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i
  %i.x = phi ptr [ %i.z, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i ], [ %i.s, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i ] ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.e, !dbg !248509
  br i1 %i.y, label %.loopexit.loopexit, label %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i, !dbg !248510

_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i: ; preds = %.peel.next.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 104, !dbg !248512 ; 2 uses
  store ptr %i.z, ptr %i.b, align 8, !dbg !248513, !alias.scope !248484, !noalias !248485
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !248517
  %.val.i.i.i.i.i.i = load ptr, ptr %0, align 8, !dbg !248526, !noalias !248491, !nonnull !2779, !noundef !2779
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248515, !noalias !248491
  %i.ab = call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeINtNtCsk1caaszg7Cl_10serde_json3ser16MapKeySerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB1V_16CompactFormatterEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248518, !noalias !248492 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null, !dbg !248519
  br i1 %.not.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i, label %.loopexit30, !dbg !248520

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !248521
  %.val.i5.i.i.i.i.i = load ptr, ptr %0, align 8, !dbg !248522, !noalias !248493, !nonnull !2779, !align !2864, !noundef !2779
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248523, !noalias !248493
  %i.ad = call noundef align 8 ptr @_RINvXNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field1__NtB5_5FieldNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248524, !noalias !248494 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ad, null, !dbg !248525
  br i1 %.not8.i.i, label %.peel.next.i.i, label %.loopexit30, !dbg !248525, !llvm.loop !248473

.loopexit.loopexit:                               ; preds = %.peel.next.i.i
  %.val28.pre = load ptr, ptr %0, align 8, !dbg !248527
  br label %.loopexit, !dbg !248527

.loopexit:                                        ; preds = %.loopexit.loopexit, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit
  %.val28 = phi ptr [ %.val28.pre, %.loopexit.loopexit ], [ %.val.i, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit ], !dbg !248527
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val28, ptr noalias noundef nonnull readonly captures(address, read_provenance) @125, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248528
  br label %.loopexit30, !dbg !248529

.loopexit30:                                      ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i, %.loopexit, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i
  %.sroa.0.0 = phi ptr [ null, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python.exit.thread ], [ %i.w, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i ], [ %i.u, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.peel.i.i ], [ null, %.loopexit ], [ %i.ad, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python.exit.i.i ], [ %i.ab, %_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i ], !dbg !248530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !248531
  ret ptr %.sroa.0.0, !dbg !248532
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRBQ_ECseeLknQCOKOd_13polars_python(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !248533 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !248622
  %.val = load ptr, ptr %i.b, align 8, !dbg !248622, !nonnull !2779, !noundef !2779 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !248622
  %.val10 = load i64, ptr %i.c, align 8, !dbg !248622, !noundef !2779 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.val10, !dbg !248623
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248612), !dbg !248624
  %.val.i = load ptr, ptr %0, align 8, !dbg !248625, !alias.scope !248612, !noalias !248613, !nonnull !2779, !align !2864, !noundef !2779 ; 6 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248626, !noalias !248614
  %i.e = icmp eq i64 %.val10, 0
  br i1 %i.e, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit.thread, label %.lr.ph.i.i, !dbg !248627

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 1, !dbg !248628
  %.val8.peel.i.i = load i8, ptr %.val, align 1, !dbg !248629, !noalias !248615 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !248630, !noalias !248616
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248617), !dbg !248631
  %i.i = icmp ugt i8 %.val8.peel.i.i, 9, !dbg !248632
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !248632

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit.thread: ; preds = %bb.a
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248633, !noalias !248614
  br label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248634

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = zext i8 %.val8.peel.i.i to i32, !dbg !248635 ; 2 uses
  %i.k = mul nuw nsw i32 %i.j, 5243, !dbg !248636
  %i.l = lshr i32 %i.k, 19, !dbg !248636          ; 2 uses
  %i.m = trunc nuw nsw i32 %i.l to i8, !dbg !248637
  %.neg.i.i.i.i.i.i.i.i.peel.i.i = mul nsw i32 %i.l, -100, !dbg !248638
  %i.n = add nsw i32 %.neg.i.i.i.i.i.i.i.i.peel.i.i, %i.j, !dbg !248639 ; 2 uses
  %i.o = shl nuw nsw i32 %i.n, 1, !dbg !248640
  %i.p = zext nneg i32 %i.o to i64, !dbg !248640
  %i.q = icmp ult i32 %i.n, 100, !dbg !248641
  tail call void @llvm.assume(i1 %i.q), !dbg !248642
  %i.r = getelementptr inbounds nuw i8, ptr @_RNvCsgHtAh0uHj3K_4itoa13DECIMAL_PAIRS, i64 %i.p, !dbg !248643 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !dbg !248644, !noalias !248618, !noundef !2779
  store i8 %i.s, ptr %i.f, align 1, !dbg !248645, !alias.scope !248617, !noalias !248616
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !248646
  %i.u = load i8, ptr %i.t, align 1, !dbg !248647, !noalias !248618, !noundef !2779
  store i8 %i.u, ptr %i.g, align 1, !dbg !248648, !alias.scope !248617, !noalias !248616
  br label %bb.c, !dbg !248649

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i = phi i8 [ %i.m, %bb.b ], [ %.val8.peel.i.i, %.lr.ph.i.i ], !dbg !248650 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i = phi i64 [ 1, %bb.b ], [ 3, %.lr.ph.i.i ], !dbg !248651 ; 2 uses
  %i.v = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i, 0, !dbg !248652
  %i.w = icmp eq i8 %.val8.peel.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.peel.i.i = or i1 %i.w, %i.v, !dbg !248652
  br i1 %or.cond.i.i.i.i.i.i.i.i.peel.i.i, label %bb.d, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, !dbg !248652

bb.d:                                             ; preds = %bb.c
  %i.x = add nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i, -1, !dbg !248653 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x, !dbg !248654
  %i.z = add nuw nsw i8 %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i, 48, !dbg !248655
  store i8 %i.z, ptr %i.y, align 1, !dbg !248656, !alias.scope !248617, !noalias !248616
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, !dbg !248657

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i = phi i64 [ %i.x, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i, %bb.c ], !dbg !248658 ; 2 uses
  %i.aa = xor i64 %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i, 3, !dbg !248659
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i, !dbg !248660
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef range(i64 0, -9223372036854775808) %i.aa), !dbg !248661, !noalias !248616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !248662, !noalias !248616
  %i.ac = icmp samesign eq i64 %.val10, 1, !dbg !248663
  br i1 %i.ac, label %.loopexit, label %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i, !dbg !248634

_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.i.i
  %i.ad = phi ptr [ %i.ae, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.i.i ], [ %i.h, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1, !dbg !248628 ; 2 uses
  %.val8.i.i = load i8, ptr %i.ad, align 1, !dbg !248629, !noalias !248615 ; 4 uses
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248664, !noalias !248619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !248630, !noalias !248619
  call void @llvm.experimental.noalias.scope.decl(metadata !248620), !dbg !248631
  %i.af = icmp ugt i8 %.val8.i.i, 9, !dbg !248632
  br i1 %i.af, label %bb.e, label %bb.f, !dbg !248632

bb.e:                                             ; preds = %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i
  %i.ag = zext i8 %.val8.i.i to i32, !dbg !248635 ; 2 uses
  %i.ah = mul nuw nsw i32 %i.ag, 5243, !dbg !248636
  %i.ai = lshr i32 %i.ah, 19, !dbg !248636        ; 2 uses
  %i.aj = trunc nuw nsw i32 %i.ai to i8, !dbg !248637
  %.neg.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.ai, -100, !dbg !248638
  %i.ak = add nsw i32 %.neg.i.i.i.i.i.i.i.i.i.i, %i.ag, !dbg !248639 ; 2 uses
  %i.al = shl nuw nsw i32 %i.ak, 1, !dbg !248640
  %i.am = zext nneg i32 %i.al to i64, !dbg !248640
  %i.an = icmp ult i32 %i.ak, 100, !dbg !248641
  call void @llvm.assume(i1 %i.an), !dbg !248642
  %i.ao = getelementptr inbounds nuw i8, ptr @_RNvCsgHtAh0uHj3K_4itoa13DECIMAL_PAIRS, i64 %i.am, !dbg !248643 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !dbg !248644, !noalias !248621, !noundef !2779
  store i8 %i.ap, ptr %i.f, align 1, !dbg !248645, !alias.scope !248620, !noalias !248619
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !248646
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !248647, !noalias !248621, !noundef !2779
  store i8 %i.ar, ptr %i.g, align 1, !dbg !248648, !alias.scope !248620, !noalias !248619
  br label %bb.f, !dbg !248649

bb.f:                                             ; preds = %bb.e, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.aj, %bb.e ], [ %.val8.i.i, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i ], !dbg !248650 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.e ], [ 3, %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i ], !dbg !248651 ; 2 uses
  %i.as = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, 0, !dbg !248652
  %i.at = icmp eq i8 %.val8.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.at, %i.as, !dbg !248652
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248652

bb.g:                                             ; preds = %bb.f
  %i.au = add nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, -1, !dbg !248653 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au, !dbg !248654
  %i.aw = add nuw nsw i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i, 48, !dbg !248655
  store i8 %i.aw, ptr %i.av, align 1, !dbg !248656, !alias.scope !248620, !noalias !248619
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248657

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.g ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %bb.f ], !dbg !248658 ; 2 uses
  %i.ax = xor i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, 3, !dbg !248659
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, !dbg !248660
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.ax), !dbg !248661, !noalias !248619
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !248662, !noalias !248619
  %i.az = icmp eq ptr %i.ae, %i.d, !dbg !248663
  br i1 %i.az, label %.loopexit, label %_RINvYNtNtCsk1caaszg7Cl_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECseeLknQCOKOd_13polars_python.exit.i.i.i.i.i, !dbg !248634, !llvm.loop !248607

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248665
  br label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248666

_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit.thread, %.loopexit
  ret ptr null, !dbg !248667
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !248668 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !248721
  %.val = load ptr, ptr %i.a, align 8, !dbg !248721, !nonnull !2779, !noundef !2779 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !248721
  %.val10 = load i64, ptr %i.b, align 8, !dbg !248721, !noundef !2779 ; 3 uses
  %.idx = mul nuw nsw i64 %.val10, 24, !dbg !248722
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !248722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248715), !dbg !248723
  %.val.i = load ptr, ptr %0, align 8, !dbg !248724, !alias.scope !248715, !noalias !248716, !nonnull !2779, !align !2864, !noundef !2779 ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248725, !noalias !248717
  %i.d = icmp eq i64 %.val10, 0
  br i1 %i.d, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit, !dbg !248726

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248727, !noalias !248718 ; 2 uses
  %.not7.peel.i.i = icmp eq ptr %i.e, null, !dbg !248728
  br i1 %.not7.peel.i.i, label %.peel.next.i.i.preheader, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248728

.peel.next.i.i.preheader:                         ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit
  %i.f = icmp eq i64 %.val10, 1, !dbg !248729
  %.val133237 = load ptr, ptr %0, align 8, !dbg !248730, !nonnull !2779, !noundef !2779 ; 2 uses
  br i1 %i.f, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph, !dbg !248731

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph: ; preds = %.peel.next.i.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !248732
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248731

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !248732 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c, !dbg !248729
  %.val1332 = load ptr, ptr %0, align 8, !dbg !248730, !nonnull !2779, !noundef !2779 ; 2 uses
  br i1 %i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248731, !llvm.loop !248706

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph, %.peel.next.i.i
  %.val133238 = phi ptr [ %.val133237, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph ], [ %.val1332, %.peel.next.i.i ]
  %i.j = phi ptr [ %i.g, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph ], [ %i.h, %.peel.next.i.i ] ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val133238, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248733, !noalias !248719
  %i.k = tail call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248727, !noalias !248720 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null, !dbg !248728
  br i1 %.not7.i.i, label %.peel.next.i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248728, !llvm.loop !248706

_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split: ; preds = %.peel.next.i.i, %.peel.next.i.i.preheader, %bb.a
  %.val1332.sink = phi ptr [ %.val.i, %bb.a ], [ %.val133237, %.peel.next.i.i.preheader ], [ %.val1332, %.peel.next.i.i ]
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val1332.sink, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248734
  br label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248735

_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit ], [ null, %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split ], [ %i.k, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !248736
  ret ptr %.sroa.0.0, !dbg !248735
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2520 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !248781
  %.val = load ptr, ptr %i.a, align 8, !dbg !248781, !nonnull !2779, !noundef !2779 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !248781
  %.val10 = load i64, ptr %i.b, align 8, !dbg !248781, !noundef !2779 ; 3 uses
  %.idx = mul nuw nsw i64 %.val10, 80, !dbg !248782
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !248782
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248775), !dbg !248783
  %.val.i = load ptr, ptr %0, align 8, !dbg !248784, !alias.scope !248775, !noalias !248776, !nonnull !2779, !align !2864, !noundef !2779 ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248785, !noalias !248777
  %i.d = icmp eq i64 %.val10, 0
  br i1 %i.d, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit, !dbg !248786

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RINvXNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field1__NtB5_5FieldNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248787, !noalias !248778 ; 2 uses
  %.not7.peel.i.i = icmp eq ptr %i.e, null, !dbg !248788
  br i1 %.not7.peel.i.i, label %.peel.next.i.i.preheader, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248788

.peel.next.i.i.preheader:                         ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit
  %i.f = icmp eq i64 %.val10, 1, !dbg !248789
  %.val133237 = load ptr, ptr %0, align 8, !dbg !248790, !nonnull !2779, !noundef !2779 ; 2 uses
  br i1 %i.f, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph, !dbg !248791

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph: ; preds = %.peel.next.i.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 80, !dbg !248792
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248791

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 80, !dbg !248792 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c, !dbg !248789
  %.val1332 = load ptr, ptr %0, align 8, !dbg !248790, !nonnull !2779, !noundef !2779 ; 2 uses
  br i1 %i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248791, !llvm.loop !248766

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph, %.peel.next.i.i
  %.val133238 = phi ptr [ %.val133237, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph ], [ %.val1332, %.peel.next.i.i ]
  %i.j = phi ptr [ %i.g, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph ], [ %i.h, %.peel.next.i.i ] ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val133238, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248793, !noalias !248779
  %i.k = tail call noundef align 8 ptr @_RINvXNvNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field1__NtB5_5FieldNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248787, !noalias !248780 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null, !dbg !248788
  br i1 %.not7.i.i, label %.peel.next.i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248788, !llvm.loop !248766

_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split: ; preds = %.peel.next.i.i, %.peel.next.i.i.preheader, %bb.a
  %.val1332.sink = phi ptr [ %.val.i, %bb.a ], [ %.val133237, %.peel.next.i.i.preheader ], [ %.val1332, %.peel.next.i.i ]
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val1332.sink, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248794
  br label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248795

_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit ], [ null, %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split ], [ %i.k, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !248796
  ret ptr %.sroa.0.0, !dbg !248795
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !248797 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !248852
  %.val = load ptr, ptr %i.a, align 8, !dbg !248852, !nonnull !2779, !noundef !2779 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !248852
  %.val10 = load i64, ptr %i.b, align 8, !dbg !248852, !noundef !2779 ; 3 uses
  %.idx = mul nuw nsw i64 %.val10, 72, !dbg !248853
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !248853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248846), !dbg !248854
  %.val.i = load ptr, ptr %0, align 8, !dbg !248855, !alias.scope !248846, !noalias !248847, !nonnull !2779, !align !2864, !noundef !2779 ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248856, !noalias !248848
  %i.d = icmp eq i64 %.val10, 0
  br i1 %i.d, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit, !dbg !248857

_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RINvXNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field1__NtB5_5FieldNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248858, !noalias !248849 ; 2 uses
  %.not7.peel.i.i = icmp eq ptr %i.e, null, !dbg !248859
  br i1 %.not7.peel.i.i, label %.peel.next.i.i.preheader, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248859

.peel.next.i.i.preheader:                         ; preds = %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit
  %i.f = icmp eq i64 %.val10, 1, !dbg !248860
  %.val133237 = load ptr, ptr %0, align 8, !dbg !248861, !nonnull !2779, !noundef !2779 ; 2 uses
  br i1 %i.f, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph, !dbg !248862

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph: ; preds = %.peel.next.i.i.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !248863
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248862

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !248863 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.c, !dbg !248860
  %.val1332 = load ptr, ptr %0, align 8, !dbg !248861, !nonnull !2779, !noundef !2779 ; 2 uses
  br i1 %i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, !dbg !248862, !llvm.loop !248837

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph, %.peel.next.i.i
  %.val133238 = phi ptr [ %.val133237, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph ], [ %.val1332, %.peel.next.i.i ]
  %i.j = phi ptr [ %i.g, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i.lr.ph ], [ %i.h, %.peel.next.i.i ] ; 2 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val133238, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248864, !noalias !248850
  %i.k = tail call noundef align 8 ptr @_RINvXNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field1__NtB5_5FieldNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !248858, !noalias !248851 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null, !dbg !248859
  br i1 %.not7.i.i, label %.peel.next.i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248859, !llvm.loop !248837

_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split: ; preds = %.peel.next.i.i, %.peel.next.i.i.preheader, %bb.a
  %.val1332.sink = phi ptr [ %.val.i, %bb.a ], [ %.val133237, %.peel.next.i.i.preheader ], [ %.val1332, %.peel.next.i.i ]
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val1332.sink, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !248865
  br label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !248866

_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i, %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit
  %.sroa.0.0 = phi ptr [ %i.e, %_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python.exit ], [ null, %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split ], [ %i.k, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.i.i ], !dbg !248867
  ret ptr %.sroa.0.0, !dbg !248866
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_TNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2t_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !248868 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !248996
  %.val = load ptr, ptr %i.a, align 8, !dbg !248996, !nonnull !2779, !noundef !2779 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !248996
  %.val10 = load i64, ptr %i.b, align 8, !dbg !248996, !noundef !2779 ; 3 uses
  %.idx = mul nuw nsw i64 %.val10, 48, !dbg !248997
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !248997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248967), !dbg !248998
  %.val.i = load ptr, ptr %0, align 8, !dbg !248999, !alias.scope !248967, !noalias !248968, !nonnull !2779, !align !2864, !noundef !2779 ; 3 uses
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !249000, !noalias !248969
  %i.d = icmp eq i64 %.val10, 0
  br i1 %i.d, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit.sink.split, label %.lr.ph.i.i, !dbg !249001

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !249002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248970), !dbg !249003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248971), !dbg !249004
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !249005, !noalias !248972
  %i.f = tail call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !249006, !noalias !248973 ; 2 uses
  %.not.i.i.i.i.i.peel.i.i = icmp eq ptr %i.f, null, !dbg !249007
  br i1 %.not.i.i.i.i.i.peel.i.i, label %_RINvXs3_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser14SerializeTuple17serialize_elementNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit10.i.i.i.i.i.peel.i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !249008

_RINvXs3_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser14SerializeTuple17serialize_elementNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit10.i.i.i.i.i.peel.i.i: ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !249009
  %.val.i.i9.i.i.i.i.i.peel.i.i = load ptr, ptr %0, align 8, !dbg !249010, !alias.scope !248975, !noalias !248976, !nonnull !2779, !noundef !2779
  tail call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i9.i.i.i.i.i.peel.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !249011, !noalias !248977
  %i.h = tail call noundef align 8 ptr @_RINvXNvNtCs2mZqlW55729_12polars_utils6pl_str1__NtB5_10PlSmallStrNtNtCs40veMcpUDl8_10serde_core3ser9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !dbg !249012, !noalias !248978 ; 2 uses
  %.not7.i.i.i.i.i.peel.i.i = icmp eq ptr %i.h, null, !dbg !249007
  br i1 %.not7.i.i.i.i.i.peel.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1m_EINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2H_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3S_B1l_EE0E0CseeLknQCOKOd_13polars_python.exit.peel.i.i, label %_RNvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB5_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq3endCseeLknQCOKOd_13polars_python.exit, !dbg !249008

end_hunk_0
begin_hunk_1_@llvm.abs.i128
!248347 = !{!248278}
!248348 = !{!248279}
!248349 = !{!248279, !248278}
!248350 = !{!248286}
!248351 = !{!248289}
!248352 = !{!248304, !248289, !248286}
!248353 = !{!248306, !248305}
!248354 = !{!248325, !248323, !248321, !248320, !248318, !248317, !248289, !248306, !248286, !248305}
!248355 = !{!248325, !248323, !248320, !248317, !248289, !248306, !248286, !248305}
!248356 = !DILexicalBlockFile(scope: !248307, file: !2970, discriminator: 0)
!248357 = !{!248323, !248320, !248317, !248289, !248306, !248286, !248305}
!248358 = !{!248323, !248289, !248306, !248286, !248305}
!248359 = !{!248340, !248339, !248321, !248320, !248318, !248317, !248289, !248306, !248286, !248305}
!248360 = !{!248340, !248339, !248320, !248317, !248289, !248306, !248286, !248305}
!248361 = !{!248339, !248320, !248317, !248289, !248306, !248286, !248305}
!248362 = !{!248339, !248289, !248306, !248286, !248305}
!248363 = !DILocation(line: 1339, column: 13, scope: !248268)
!248364 = !DILocation(line: 1339, column: 29, scope: !248268)
!248365 = !DILocation(line: 961, column: 18, scope: !1621, inlinedAt: !248274)
!248366 = !DILocation(line: 1339, column: 24, scope: !248268)
!248367 = !DILocation(line: 2006, column: 11, scope: !248275, inlinedAt: !248346)
!248368 = !DILocation(line: 2006, column: 16, scope: !248275, inlinedAt: !248346)
!248369 = !DILocation(line: 2006, column: 5, scope: !248275, inlinedAt: !248346)
!248370 = !DILocation(line: 2010, column: 1, scope: !248275, inlinedAt: !248346)
!248371 = !DILocation(line: 1340, column: 40, scope: !248276)
!248372 = !DILocation(line: 352, column: 14, scope: !733, inlinedAt: !248280)
!248373 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248283)
!248374 = !DILocation(line: 2442, column: 9, scope: !849, inlinedAt: !248284)
!248375 = !DILocation(line: 1341, column: 19, scope: !248287)
!248376 = !DILocation(line: 2571, column: 14, scope: !248290, inlinedAt: !248291)
!248377 = !DILocation(line: 1717, column: 9, scope: !2603, inlinedAt: !248298)
!248378 = !DILocation(line: 180, column: 28, scope: !2606, inlinedAt: !248297)
!248379 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248301)
!248380 = !DILocation(line: 659, column: 28, scope: !2608, inlinedAt: !248302)
!248381 = !DILocation(line: 185, column: 25, scope: !2606, inlinedAt: !248297)
!248382 = !DILocation(line: 1888, column: 12, scope: !767, inlinedAt: !248315)
!248383 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248327)
!248384 = !DILocation(line: 1888, column: 9, scope: !767, inlinedAt: !248315)
!248385 = !DILocation(line: 194, column: 10, scope: !2609, inlinedAt: !248330)
!248386 = !DILocation(line: 472, column: 26, scope: !852, inlinedAt: !248331)
!248387 = !DILocation(line: 1860, column: 14, scope: !248307, inlinedAt: !248313)
!248388 = !DILocation(line: 128, column: 17, scope: !248356, inlinedAt: !248313)
!248389 = !DILocation(line: 654, column: 22, scope: !248333, inlinedAt: !248334)
!248390 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248337)
!248391 = !DILocation(line: 472, column: 26, scope: !2541, inlinedAt: !248338)
!248392 = !DILocation(line: 2509, column: 21, scope: !248294, inlinedAt: !248295)
!248393 = !DILocation(line: 628, column: 22, scope: !851, inlinedAt: !248314)
!248394 = !DILocation(line: 1342, column: 20, scope: !248287)
!248395 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248345)
!248396 = !DILocation(line: 673, column: 81, scope: !795, inlinedAt: !248342)
!248397 = !DILocation(line: 1339, column: 9, scope: !248276)
!248398 = !DILocation(line: 1343, column: 5, scope: !248268)
!248399 = !DILocation(line: 1343, column: 6, scope: !248268)
!248400 = distinct !DISubprogram(name: "collect_map<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field, &indexmap::map::IndexMap<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState>>", linkageName: "_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB2o_B3e_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseeLknQCOKOd_13polars_python", scope: !2966, file: !2965, line: 1333, type: !2780, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248401 = distinct !DILocation(line: 1339, column: 29, scope: !248400)
!248402 = distinct !DILocation(line: 17, column: 14, scope: !1636, inlinedAt: !248401)
!248403 = distinct !DILocation(line: 242, column: 9, scope: !1635, inlinedAt: !248402)
!248404 = distinct !DILocation(line: 50, column: 27, scope: !1634, inlinedAt: !248403)
!248405 = distinct !DILocation(line: 1041, column: 9, scope: !1633, inlinedAt: !248404)
!248406 = distinct !DILocation(line: 102, column: 78, scope: !1632, inlinedAt: !248405)
!248407 = distinct !DISubprogram(name: "iterator_len_hint<indexmap::map::iter::Iter<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>>", linkageName: "_RINvNtCs40veMcpUDl8_10serde_core3ser17iterator_len_hintINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECseeLknQCOKOd_13polars_python", scope: !2832, file: !2965, line: 2002, type: !2780, scopeLine: 2002, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248408 = distinct !DILexicalBlock(scope: !248400, file: !2965, line: 1339, column: 9)
!248409 = distinct !{!248409, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python"}
!248410 = distinct !{!248410, !248409, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python: argument 1"}
!248411 = distinct !{!248411, !248409, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_mapCseeLknQCOKOd_13polars_python: argument 0"}
!248412 = distinct !DILocation(line: 1340, column: 40, scope: !248408)
!248413 = distinct !DILocation(line: 352, column: 14, scope: !733, inlinedAt: !248412)
!248414 = distinct !DILocation(line: 1869, column: 16, scope: !734, inlinedAt: !248413)
!248415 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248414)
!248416 = distinct !DILocation(line: 354, column: 12, scope: !733, inlinedAt: !248412)
!248417 = distinct !{!248417, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRBL_RB1A_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0INtNtB2D_6result6ResultuNtNtB3Q_5error5ErrorEECseeLknQCOKOd_13polars_python"}
!248418 = distinct !{!248418, !248417, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRBL_RB1A_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0INtNtB2D_6result6ResultuNtNtB3Q_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!248419 = distinct !DILexicalBlock(scope: !248408, file: !2965, line: 1340, column: 9)
!248420 = distinct !{!248420, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2v_12try_for_each4callTRBL_RB1A_EINtNtB2D_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB4H_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB45_B49_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0B4f_ECseeLknQCOKOd_13polars_python"}
!248421 = distinct !{!248421, !248420, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2v_12try_for_each4callTRBL_RB1A_EINtNtB2D_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB4H_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB45_B49_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0B4f_ECseeLknQCOKOd_13polars_python: argument 0"}
!248422 = distinct !DISubprogram(name: "try_for_each<indexmap::map::iter::Iter<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, serde_core::ser::Serializer::collect_map::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field, &indexmap::map::IndexMap<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRBL_RB1A_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0INtNtB2D_6result6ResultuNtNtB3Q_5error5ErrorEECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2560, type: !2780, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248423 = distinct !DILocation(line: 1341, column: 19, scope: !248419)
!248424 = distinct !DISubprogram(name: "try_fold<indexmap::map::iter::Iter<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<(&polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field), core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_map::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field, &indexmap::map::IndexMap<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState>>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2v_12try_for_each4callTRBL_RB1A_EINtNtB2D_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB4H_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB45_B49_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0B4f_ECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2501, type: !2780, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248425 = distinct !DILexicalBlock(scope: !248424, file: !2787, line: 2507, column: 9)
!248426 = distinct !DILexicalBlock(scope: !248425, file: !2787, line: 2508, column: 41)
!248427 = distinct !DILocation(line: 2571, column: 14, scope: !248422, inlinedAt: !248423)
!248428 = distinct !DILocation(line: 2508, column: 34, scope: !248426, inlinedAt: !248427)
!248429 = distinct !DILocation(line: 156, column: 23, scope: !2617, inlinedAt: !248428)
!248430 = distinct !DILocation(line: 180, column: 28, scope: !2616, inlinedAt: !248429)
!248431 = distinct !DILocation(line: 357, column: 18, scope: !733, inlinedAt: !248412)
!248432 = distinct !DILocation(line: 1879, column: 16, scope: !793, inlinedAt: !248431)
!248433 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248432)
!248434 = distinct !DILocation(line: 185, column: 40, scope: !2616, inlinedAt: !248429)
!248435 = distinct !{!248435, !"_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python"}
!248436 = distinct !{!248436, !248435, !"_RNvXs2_NtNtCse4dvU5uQ85g_8indexmap3map4iterINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCseeLknQCOKOd_13polars_python: argument 0"}
!248437 = distinct !{!248437, !248417, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRBL_RB1A_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0INtNtB2D_6result6ResultuNtNtB3Q_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 1"}
!248438 = distinct !{!248438, !248420, !"_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2v_12try_for_each4callTRBL_RB1A_EINtNtB2D_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB4H_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB45_B49_RINtB8_8IndexMapBL_B1A_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0B4f_ECseeLknQCOKOd_13polars_python: argument 1"}
!248439 = distinct !DISubprogram(name: "serialize_entry<serde_json::ser::Compound<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field>", linkageName: "_RINvYINtNtCsk1caaszg7Cl_10serde_json3ser8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap15serialize_entryRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python", scope: !3053, file: !2965, line: 1855, type: !2835, scopeLine: 1855, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248440 = distinct !DISubprogram(name: "{closure#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field, &indexmap::map::IndexMap<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState>>", linkageName: "_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB2q_B3g_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0CseeLknQCOKOd_13polars_python", scope: !3101, file: !2965, line: 1341, type: !2835, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248441 = distinct !DILexicalBlock(scope: !248440, file: !2965, line: 1341, column: 47)
!248442 = distinct !DISubprogram(name: "{closure#0}<(&polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field), core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_map::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &polars_utils::pl_str::PlSmallStr, &polars_arrow::datatypes::field::Field, &indexmap::map::IndexMap<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python", scope: !2839, file: !2787, line: 2568, type: !2835, scopeLine: 2568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248443 = distinct !DILocation(line: 2509, column: 21, scope: !248426, inlinedAt: !248427)
!248444 = distinct !DILocation(line: 2568, column: 26, scope: !248442, inlinedAt: !248443)
!248445 = distinct !DILocation(line: 1341, column: 58, scope: !248441, inlinedAt: !248444)
!248446 = distinct !DILocation(line: 1860, column: 19, scope: !248439, inlinedAt: !248445)
!248447 = distinct !DILocation(line: 628, column: 22, scope: !851, inlinedAt: !248446)
!248448 = distinct !{!248448, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python"}
!248449 = distinct !{!248449, !248448, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python: argument 1"}
!248450 = distinct !{!248450, !248448, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3y_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB1l_B2b_RINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB1m_B2c_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0E0CseeLknQCOKOd_13polars_python: argument 0"}
!248451 = distinct !{!248451, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB2q_B3g_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0CseeLknQCOKOd_13polars_python"}
!248452 = distinct !{!248452, !248451, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB2q_B3g_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0CseeLknQCOKOd_13polars_python: argument 1"}
!248453 = distinct !{!248453, !248451, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldRINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapB2q_B3g_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEE0CseeLknQCOKOd_13polars_python: argument 0"}
!248454 = distinct !{!248454, !"_RINvYINtNtCsk1caaszg7Cl_10serde_json3ser8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap15serialize_entryRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python"}
!248455 = distinct !{!248455, !248454, !"_RINvYINtNtCsk1caaszg7Cl_10serde_json3ser8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap15serialize_entryRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python: argument 0:Peel0"}
!248456 = distinct !{!248456, !"_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python"}
!248457 = distinct !{!248457, !248456, !"_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python: argument 0:Peel0"}
!248458 = distinct !DILocation(line: 1891, column: 20, scope: !767, inlinedAt: !248447)
!248459 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248458)
!248460 = distinct !DILocation(line: 156, column: 30, scope: !2617, inlinedAt: !248428)
!248461 = distinct !DILocation(line: 1165, column: 29, scope: !2622, inlinedAt: !248460)
!248462 = distinct !DILocation(line: 250, column: 5, scope: !2620, inlinedAt: !248461)
!248463 = distinct !DILocation(line: 632, column: 26, scope: !851, inlinedAt: !248446)
!248464 = distinct !DISubprogram(name: "serialize_value<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter, &polars_arrow::datatypes::field::Field>", linkageName: "_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap15serialize_valueRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python", scope: !3052, file: !2911, line: 646, type: !2835, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248465 = distinct !DILexicalBlock(scope: !248464, file: !2911, line: 651, column: 13)
!248466 = distinct !DILocation(line: 1861, column: 14, scope: !248439, inlinedAt: !248445)
!248467 = distinct !DILocation(line: 654, column: 22, scope: !248465, inlinedAt: !248466)
!248468 = distinct !DILocation(line: 1914, column: 16, scope: !740, inlinedAt: !248467)
!248469 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248468)
!248470 = distinct !DILocation(line: 656, column: 28, scope: !248465, inlinedAt: !248466)
!248471 = distinct !{!248471, !248454, !"_RINvYINtNtCsk1caaszg7Cl_10serde_json3ser8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap15serialize_entryRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python: argument 0"}
!248472 = distinct !{!248472, !248456, !"_RINvXs6_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python: argument 0"}
!248473 = distinct !{!248473, !3076}
!248474 = distinct !DILocation(line: 1342, column: 20, scope: !248419)
!248475 = distinct !DILocation(line: 673, column: 36, scope: !795, inlinedAt: !248474)
!248476 = distinct !DILocation(line: 1879, column: 16, scope: !793, inlinedAt: !248475)
!248477 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248476)
!248478 = !DILocation(line: 1340, column: 54, scope: !248408)
!248479 = !{!248410}
!248480 = !{!248411}
!248481 = !{!248411, !248410}
!248482 = !{!248418}
!248483 = !{!248421}
!248484 = !{!248436, !248421, !248418}
!248485 = !{!248438, !248437}
!248486 = !{!248457, !248455, !248453, !248452, !248450, !248449, !248421, !248438, !248418, !248437}
!248487 = !{!248457, !248455, !248452, !248449, !248421, !248438, !248418, !248437}
!248488 = !DILexicalBlockFile(scope: !248439, file: !2970, discriminator: 0)
!248489 = !{!248455, !248452, !248449, !248421, !248438, !248418, !248437}
!248490 = !{!248455, !248421, !248438, !248418, !248437}
!248491 = !{!248472, !248471, !248453, !248452, !248450, !248449, !248421, !248438, !248418, !248437}
!248492 = !{!248472, !248471, !248452, !248449, !248421, !248438, !248418, !248437}
!248493 = !{!248471, !248452, !248449, !248421, !248438, !248418, !248437}
!248494 = !{!248471, !248421, !248438, !248418, !248437}
!248495 = !DILocation(line: 1339, column: 13, scope: !248400)
!248496 = !DILocation(line: 1339, column: 29, scope: !248400)
!248497 = !DILocation(line: 961, column: 18, scope: !1629, inlinedAt: !248406)
!248498 = !DILocation(line: 1339, column: 24, scope: !248400)
!248499 = !DILocation(line: 2006, column: 11, scope: !248407, inlinedAt: !248478)
!248500 = !DILocation(line: 2006, column: 16, scope: !248407, inlinedAt: !248478)
!248501 = !DILocation(line: 2006, column: 5, scope: !248407, inlinedAt: !248478)
!248502 = !DILocation(line: 2010, column: 1, scope: !248407, inlinedAt: !248478)
!248503 = !DILocation(line: 1340, column: 40, scope: !248408)
!248504 = !DILocation(line: 352, column: 14, scope: !733, inlinedAt: !248412)
!248505 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248415)
!248506 = !DILocation(line: 2442, column: 9, scope: !849, inlinedAt: !248416)
!248507 = !DILocation(line: 1341, column: 19, scope: !248419)
!248508 = !DILocation(line: 2571, column: 14, scope: !248422, inlinedAt: !248423)
!248509 = !DILocation(line: 1717, column: 9, scope: !2613, inlinedAt: !248430)
!248510 = !DILocation(line: 180, column: 28, scope: !2616, inlinedAt: !248429)
!248511 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248433)
!248512 = !DILocation(line: 659, column: 28, scope: !2618, inlinedAt: !248434)
!248513 = !DILocation(line: 185, column: 25, scope: !2616, inlinedAt: !248429)
!248514 = !DILocation(line: 1888, column: 12, scope: !767, inlinedAt: !248447)
!248515 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248459)
!248516 = !DILocation(line: 1888, column: 9, scope: !767, inlinedAt: !248447)
!248517 = !DILocation(line: 194, column: 10, scope: !2619, inlinedAt: !248462)
!248518 = !DILocation(line: 472, column: 26, scope: !852, inlinedAt: !248463)
!248519 = !DILocation(line: 1860, column: 14, scope: !248439, inlinedAt: !248445)
!248520 = !DILocation(line: 128, column: 17, scope: !248488, inlinedAt: !248445)
!248521 = !DILocation(line: 194, column: 21, scope: !2619, inlinedAt: !248462)
!248522 = !DILocation(line: 654, column: 22, scope: !248465, inlinedAt: !248466)
!248523 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248469)
!248524 = !DILocation(line: 472, column: 26, scope: !2728, inlinedAt: !248470)
!248525 = !DILocation(line: 2509, column: 21, scope: !248426, inlinedAt: !248427)
!248526 = !DILocation(line: 628, column: 22, scope: !851, inlinedAt: !248446)
!248527 = !DILocation(line: 1342, column: 20, scope: !248419)
!248528 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248477)
!248529 = !DILocation(line: 673, column: 81, scope: !795, inlinedAt: !248474)
!248530 = !DILocation(line: 1339, column: 9, scope: !248408)
!248531 = !DILocation(line: 1343, column: 5, scope: !248400)
!248532 = !DILocation(line: 1343, column: 6, scope: !248400)
!248533 = distinct !DISubprogram(name: "collect_seq<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRBQ_ECseeLknQCOKOd_13polars_python", scope: !2966, file: !2965, line: 1296, type: !2780, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248534 = distinct !DILocation(line: 1301, column: 29, scope: !248533)
!248535 = distinct !DILocation(line: 3941, column: 14, scope: !191, inlinedAt: !248534)
!248536 = distinct !DILocation(line: 1041, column: 9, scope: !190, inlinedAt: !248535)
!248537 = distinct !DILocation(line: 102, column: 78, scope: !189, inlinedAt: !248536)
!248538 = distinct !{!248538, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python"}
!248539 = distinct !{!248539, !248538, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 1"}
!248540 = distinct !DILexicalBlock(scope: !248533, file: !2965, line: 1301, column: 9)
!248541 = distinct !{!248541, !248538, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 0"}
!248542 = distinct !DILocation(line: 1302, column: 40, scope: !248540)
!248543 = distinct !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248542)
!248544 = distinct !DILocation(line: 1826, column: 16, scope: !769, inlinedAt: !248543)
!248545 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248544)
!248546 = distinct !DILocation(line: 289, column: 12, scope: !768, inlinedAt: !248542)
!248547 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<u8>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<&u8, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u8, alloc::alloc::Global>>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRhINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB3G_E0E0B25_ECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2501, type: !2780, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248548 = distinct !DILexicalBlock(scope: !248547, file: !2787, line: 2507, column: 9)
!248549 = distinct !DILexicalBlock(scope: !248548, file: !2787, line: 2508, column: 41)
!248550 = distinct !DISubprogram(name: "try_for_each<core::slice::iter::Iter<u8>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u8, alloc::alloc::Global>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2x_E0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2560, type: !2780, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248551 = distinct !DILexicalBlock(scope: !248540, file: !2965, line: 1302, column: 9)
!248552 = distinct !DILocation(line: 1303, column: 19, scope: !248551)
!248553 = distinct !DILocation(line: 2571, column: 14, scope: !248550, inlinedAt: !248552)
!248554 = distinct !DILocation(line: 2508, column: 34, scope: !248549, inlinedAt: !248553)
!248555 = distinct !DILocation(line: 185, column: 40, scope: !67, inlinedAt: !248554)
!248556 = distinct !{!248556, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2x_E0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECseeLknQCOKOd_13polars_python"}
!248557 = distinct !{!248557, !248556, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2x_E0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 1"}
!248558 = distinct !{!248558, !248556, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2x_E0INtNtBa_6result6ResultuNtNtB1Q_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!248559 = distinct !{!248559, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRhINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB3G_E0E0B25_ECseeLknQCOKOd_13polars_python"}
!248560 = distinct !{!248560, !248559, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRhINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB3G_E0E0B25_ECseeLknQCOKOd_13polars_python: argument 1"}
!248561 = distinct !{!248561, !248559, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRhINtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2w_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB3G_E0E0B25_ECseeLknQCOKOd_13polars_python: argument 0"}
!248562 = distinct !{!248562, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRBS_E0CseeLknQCOKOd_13polars_python"}
!248563 = distinct !{!248563, !248562, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRBS_E0CseeLknQCOKOd_13polars_python: argument 0"}
!248564 = distinct !{!248564, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRhECseeLknQCOKOd_13polars_python"}
!248565 = distinct !{!248565, !248564, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRhECseeLknQCOKOd_13polars_python: argument 0:Peel0"}
!248566 = distinct !DISubprogram(name: "serialize<u8, &mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>>", linkageName: "_RINvXs1J_NtNtCs40veMcpUDl8_10serde_core3ser5implsRhNtB9_9Serialize9serializeQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECseeLknQCOKOd_13polars_python", scope: !2834, file: !2830, line: 468, type: !2835, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248567 = distinct !DISubprogram(name: "serialize_element<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter, &u8>", linkageName: "_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRhECseeLknQCOKOd_13polars_python", scope: !3073, file: !2911, line: 491, type: !2835, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248568 = distinct !DILexicalBlock(scope: !248567, file: !2911, line: 496, column: 13)
!248569 = distinct !DISubprogram(name: "{closure#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRBS_E0CseeLknQCOKOd_13polars_python", scope: !2973, file: !2965, line: 1303, type: !2835, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248570 = distinct !DISubprogram(name: "{closure#0}<&u8, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRB2X_E0E0CseeLknQCOKOd_13polars_python", scope: !2839, file: !2787, line: 2568, type: !2835, scopeLine: 2568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248571 = distinct !DILocation(line: 2509, column: 21, scope: !248549, inlinedAt: !248553)
!248572 = distinct !DILocation(line: 2568, column: 26, scope: !248570, inlinedAt: !248571)
!248573 = distinct !DILocation(line: 1303, column: 50, scope: !248569, inlinedAt: !248572)
!248574 = distinct !DILocation(line: 502, column: 28, scope: !248568, inlinedAt: !248573)
!248575 = distinct !DILocation(line: 472, column: 26, scope: !248566, inlinedAt: !248574)
!248576 = distinct !DILocation(line: 15, column: 28, scope: !2571, inlinedAt: !248575)
!248577 = distinct !DILocation(line: 123, column: 14, scope: !2570, inlinedAt: !248576)
!248578 = distinct !{!248578, !"_RNvXsr_CsgHtAh0uHj3K_4itoahNtB5_8Unsigned3fmt"}
!248579 = distinct !{!248579, !248578, !"_RNvXsr_CsgHtAh0uHj3K_4itoahNtB5_8Unsigned3fmt: argument 0:Peel0"}
!248580 = distinct !DILocation(line: 1627, column: 24, scope: !2575, inlinedAt: !248577)
!248581 = distinct !DILocation(line: 108, column: 24, scope: !2574, inlinedAt: !248580)
!248582 = distinct !DILocation(line: 153, column: 30, scope: !2572, inlinedAt: !248581)
!248583 = distinct !DILocation(line: 292, column: 18, scope: !768, inlinedAt: !248542)
!248584 = distinct !DILocation(line: 1836, column: 16, scope: !785, inlinedAt: !248583)
!248585 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248584)
!248586 = distinct !DILocation(line: 302, column: 40, scope: !1045, inlinedAt: !248582)
!248587 = distinct !DILocation(line: 306, column: 53, scope: !1047, inlinedAt: !248582)
!248588 = distinct !DILocation(line: 646, column: 26, scope: !3164, inlinedAt: !248587)
!248589 = distinct !DILocation(line: 306, column: 30, scope: !1047, inlinedAt: !248582)
!248590 = distinct !DILocation(line: 308, column: 53, scope: !1047, inlinedAt: !248582)
!248591 = distinct !DILocation(line: 646, column: 26, scope: !3165, inlinedAt: !248590)
!248592 = distinct !DILocation(line: 308, column: 30, scope: !1047, inlinedAt: !248582)
!248593 = distinct !DILocation(line: 319, column: 33, scope: !1052, inlinedAt: !248582)
!248594 = distinct !DILocation(line: 155, column: 26, scope: !2580, inlinedAt: !248581)
!248595 = distinct !DILocation(line: 249, column: 32, scope: !2579, inlinedAt: !248594)
!248596 = distinct !DILocation(line: 646, column: 26, scope: !2578, inlinedAt: !248595)
!248597 = distinct !DILocation(line: 557, column: 44, scope: !2577, inlinedAt: !248596)
!248598 = distinct !DILocation(line: 411, column: 13, scope: !2583, inlinedAt: !248597)
!248599 = distinct !DILocation(line: 1628, column: 16, scope: !2584, inlinedAt: !248577)
!248600 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248599)
!248601 = distinct !DILocation(line: 180, column: 28, scope: !67, inlinedAt: !248554)
!248602 = distinct !{!248602, !248564, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRhECseeLknQCOKOd_13polars_python: argument 0"}
!248603 = distinct !DILocation(line: 499, column: 22, scope: !248568, inlinedAt: !248573)
!248604 = distinct !DILocation(line: 1849, column: 20, scope: !771, inlinedAt: !248603)
!248605 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248604)
!248606 = distinct !{!248606, !248578, !"_RNvXsr_CsgHtAh0uHj3K_4itoahNtB5_8Unsigned3fmt: argument 0"}
!248607 = distinct !{!248607, !3076}
!248608 = distinct !DILocation(line: 1304, column: 20, scope: !248551)
!248609 = distinct !DILocation(line: 519, column: 36, scope: !797, inlinedAt: !248608)
!248610 = distinct !DILocation(line: 1836, column: 16, scope: !785, inlinedAt: !248609)
!248611 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248610)
!248612 = !{!248539}
!248613 = !{!248541}
!248614 = !{!248541, !248539}
!248615 = !{!248561, !248560, !248558, !248557}
!248616 = !{!248565, !248563, !248561, !248560, !248558, !248557}
!248617 = !{!248579}
!248618 = !{!248579, !248565, !248563, !248561, !248560, !248558, !248557}
!248619 = !{!248602, !248563, !248561, !248560, !248558, !248557}
!248620 = !{!248606}
!248621 = !{!248606, !248602, !248563, !248561, !248560, !248558, !248557}
!248622 = !DILocation(line: 1301, column: 29, scope: !248533)
!248623 = !DILocation(line: 961, column: 18, scope: !186, inlinedAt: !248537)
!248624 = !DILocation(line: 1302, column: 40, scope: !248540)
!248625 = !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248542)
!248626 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248545)
!248627 = !DILocation(line: 2442, column: 9, scope: !770, inlinedAt: !248546)
!248628 = !DILocation(line: 659, column: 28, scope: !68, inlinedAt: !248555)
!248629 = !DILocation(line: 2509, column: 21, scope: !248549, inlinedAt: !248553)
!248630 = !DILocation(line: 1626, column: 13, scope: !2569, inlinedAt: !248577)
!248631 = !DILocation(line: 153, column: 30, scope: !2572, inlinedAt: !248581)
!248632 = !DILocation(line: 299, column: 20, scope: !1045, inlinedAt: !248582)
!248633 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248585)
!248634 = !DILocation(line: 180, column: 28, scope: !67, inlinedAt: !248554)
!248635 = !DILocation(line: 302, column: 50, scope: !1045, inlinedAt: !248582)
!248636 = !DILocation(line: 235, column: 15, scope: !1046, inlinedAt: !248586)
!248637 = !DILocation(line: 303, column: 21, scope: !1047, inlinedAt: !248582)
!248638 = !DILocation(line: 236, column: 19, scope: !1048, inlinedAt: !248586)
!248639 = !DILocation(line: 236, column: 11, scope: !1048, inlinedAt: !248586)
!248640 = !DILocation(line: 306, column: 67, scope: !1047, inlinedAt: !248582)
!248641 = !DILocation(line: 252, column: 39, scope: !1049, inlinedAt: !248588)
!248642 = !DILocation(line: 252, column: 13, scope: !1049, inlinedAt: !248588)
!248643 = !DILocation(line: 253, column: 13, scope: !1049, inlinedAt: !248588)
!248644 = !DILocation(line: 306, column: 36, scope: !1047, inlinedAt: !248582)
!248645 = !DILocation(line: 574, column: 9, scope: !1051, inlinedAt: !248589)
!248646 = !DILocation(line: 253, column: 13, scope: !1049, inlinedAt: !248591)
!248647 = !DILocation(line: 308, column: 36, scope: !1047, inlinedAt: !248582)
!248648 = !DILocation(line: 574, column: 9, scope: !1051, inlinedAt: !248592)
!248649 = !DILocation(line: 299, column: 17, scope: !1045, inlinedAt: !248582)
!248650 = !DILocation(line: 0, scope: !1044, inlinedAt: !248582)
!248651 = !DILocation(line: 0, scope: !1043, inlinedAt: !248582)
!248652 = !DILocation(line: 313, column: 20, scope: !1045, inlinedAt: !248582)
!248653 = !DILocation(line: 314, column: 21, scope: !1045, inlinedAt: !248582)
!248654 = !DILocation(line: 319, column: 21, scope: !1052, inlinedAt: !248582)
!248655 = !DILocation(line: 319, column: 39, scope: !1052, inlinedAt: !248582)
!248656 = !DILocation(line: 574, column: 9, scope: !1051, inlinedAt: !248593)
!248657 = !DILocation(line: 313, column: 17, scope: !1045, inlinedAt: !248582)
!248658 = !DILocation(line: 0, scope: !1045, inlinedAt: !248582)
!248659 = !DILocation(line: 410, column: 27, scope: !2576, inlinedAt: !248597)
!248660 = !DILocation(line: 89, column: 24, scope: !2582, inlinedAt: !248598)
!248661 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248600)
!248662 = !DILocation(line: 1629, column: 5, scope: !2569, inlinedAt: !248577)
!248663 = !DILocation(line: 1717, column: 9, scope: !64, inlinedAt: !248601)
!248664 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248605)
!248665 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248611)
!248666 = !DILocation(line: 519, column: 80, scope: !797, inlinedAt: !248608)
!248667 = !DILocation(line: 1305, column: 6, scope: !248533)
!248668 = distinct !DISubprogram(name: "collect_seq<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>", linkageName: "_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseeLknQCOKOd_13polars_python", scope: !2966, file: !2965, line: 1296, type: !2780, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248669 = distinct !DILocation(line: 1301, column: 29, scope: !248668)
!248670 = distinct !DILocation(line: 3941, column: 14, scope: !217, inlinedAt: !248669)
!248671 = distinct !DILocation(line: 1041, column: 9, scope: !216, inlinedAt: !248670)
!248672 = distinct !DILocation(line: 102, column: 78, scope: !215, inlinedAt: !248671)
!248673 = distinct !{!248673, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python"}
!248674 = distinct !{!248674, !248673, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 1"}
!248675 = distinct !DILexicalBlock(scope: !248668, file: !2965, line: 1301, column: 9)
!248676 = distinct !{!248676, !248673, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 0"}
!248677 = distinct !DILocation(line: 1302, column: 40, scope: !248675)
!248678 = distinct !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248677)
!248679 = distinct !DILocation(line: 1826, column: 16, scope: !769, inlinedAt: !248678)
!248680 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248679)
!248681 = distinct !DILocation(line: 289, column: 12, scope: !768, inlinedAt: !248677)
!248682 = distinct !{!248682, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3m_BJ_EE0INtNtBa_6result6ResultuNtNtB2E_5error5ErrorEECseeLknQCOKOd_13polars_python"}
!248683 = distinct !{!248683, !248682, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3m_BJ_EE0INtNtBa_6result6ResultuNtNtB2E_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 1"}
!248684 = distinct !{!248684, !248682, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3m_BJ_EE0INtNtBa_6result6ResultuNtNtB2E_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!248685 = distinct !{!248685, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4y_BJ_EE0E0B2W_ECseeLknQCOKOd_13polars_python"}
!248686 = distinct !{!248686, !248685, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4y_BJ_EE0E0B2W_ECseeLknQCOKOd_13polars_python: argument 1"}
!248687 = distinct !{!248687, !248685, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4y_BJ_EE0E0B2W_ECseeLknQCOKOd_13polars_python: argument 0"}
!248688 = distinct !{!248688, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python"}
!248689 = distinct !{!248689, !248688, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python: argument 0:Peel0"}
!248690 = distinct !DISubprogram(name: "{closure#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>", linkageName: "_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE0CseeLknQCOKOd_13polars_python", scope: !2973, file: !2965, line: 1303, type: !2835, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248691 = distinct !DISubprogram(name: "{closure#0}<&polars_utils::pl_str::PlSmallStr, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python", scope: !2839, file: !2787, line: 2568, type: !2835, scopeLine: 2568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248692 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<polars_utils::pl_str::PlSmallStr>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<&polars_utils::pl_str::PlSmallStr, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3n_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4y_BJ_EE0E0B2W_ECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2501, type: !2780, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248693 = distinct !DILexicalBlock(scope: !248692, file: !2787, line: 2507, column: 9)
!248694 = distinct !DILexicalBlock(scope: !248693, file: !2787, line: 2508, column: 41)
!248695 = distinct !DISubprogram(name: "try_for_each<core::slice::iter::Iter<polars_utils::pl_str::PlSmallStr>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3m_BJ_EE0INtNtBa_6result6ResultuNtNtB2E_5error5ErrorEECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2560, type: !2780, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248696 = distinct !DILexicalBlock(scope: !248675, file: !2965, line: 1302, column: 9)
!248697 = distinct !DILocation(line: 1303, column: 19, scope: !248696)
!248698 = distinct !DILocation(line: 2571, column: 14, scope: !248695, inlinedAt: !248697)
!248699 = distinct !DILocation(line: 2509, column: 21, scope: !248694, inlinedAt: !248698)
!248700 = distinct !DILocation(line: 2568, column: 26, scope: !248691, inlinedAt: !248699)
!248701 = distinct !DILocation(line: 1303, column: 50, scope: !248690, inlinedAt: !248700)
!248702 = distinct !DILocation(line: 502, column: 28, scope: !2561, inlinedAt: !248701)
!248703 = distinct !DILocation(line: 2508, column: 34, scope: !248694, inlinedAt: !248698)
!248704 = distinct !DILocation(line: 180, column: 28, scope: !10, inlinedAt: !248703)
!248705 = distinct !DILocation(line: 185, column: 40, scope: !10, inlinedAt: !248703)
!248706 = distinct !{!248706, !3076}
!248707 = distinct !{!248707, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python"}
!248708 = distinct !{!248708, !248707, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2B_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3M_B1l_EE0E0CseeLknQCOKOd_13polars_python: argument 0"}
!248709 = distinct !{!248709, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE0CseeLknQCOKOd_13polars_python"}
!248710 = distinct !{!248710, !248709, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEE0CseeLknQCOKOd_13polars_python: argument 0"}
!248711 = distinct !{!248711, !248688, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python: argument 0"}
!248712 = distinct !DILocation(line: 499, column: 22, scope: !2561, inlinedAt: !248701)
!248713 = distinct !DILocation(line: 1849, column: 20, scope: !771, inlinedAt: !248712)
!248714 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248713)
!248715 = !{!248674}
!248716 = !{!248676}
!248717 = !{!248676, !248674}
!248718 = !{!248689, !248687, !248686, !248684, !248683}
!248719 = !{!248711, !248710, !248708, !248687, !248686, !248684, !248683}
!248720 = !{!248711, !248687, !248686, !248684, !248683}
!248721 = !DILocation(line: 1301, column: 29, scope: !248668)
!248722 = !DILocation(line: 961, column: 18, scope: !212, inlinedAt: !248672)
!248723 = !DILocation(line: 1302, column: 40, scope: !248675)
!248724 = !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248677)
!248725 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248680)
!248726 = !DILocation(line: 2442, column: 9, scope: !770, inlinedAt: !248681)
!248727 = !DILocation(line: 472, column: 26, scope: !855, inlinedAt: !248702)
!248728 = !DILocation(line: 2509, column: 21, scope: !248694, inlinedAt: !248698)
!248729 = !DILocation(line: 1717, column: 9, scope: !7, inlinedAt: !248704)
!248730 = !DILocation(line: 0, scope: !248696)
!248731 = !DILocation(line: 180, column: 28, scope: !10, inlinedAt: !248703)
!248732 = !DILocation(line: 659, column: 28, scope: !15, inlinedAt: !248705)
!248733 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248714)
!248734 = !DILocation(line: 0, scope: !248675)
!248735 = !DILocation(line: 1305, column: 6, scope: !248668)
!248736 = !DILocation(line: 1301, column: 9, scope: !248675)
!248737 = distinct !DILocation(line: 1301, column: 29, scope: !2520)
!248738 = distinct !DILocation(line: 3941, column: 14, scope: !239, inlinedAt: !248737)
!248739 = distinct !DILocation(line: 1041, column: 9, scope: !238, inlinedAt: !248738)
!248740 = distinct !DILocation(line: 102, column: 78, scope: !237, inlinedAt: !248739)
!248741 = distinct !{!248741, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python"}
!248742 = distinct !{!248742, !248741, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 1"}
!248743 = distinct !{!248743, !248741, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 0"}
!248744 = distinct !DILocation(line: 1302, column: 40, scope: !2521)
!248745 = distinct !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248744)
!248746 = distinct !DILocation(line: 1826, column: 16, scope: !769, inlinedAt: !248745)
!248747 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248746)
!248748 = distinct !DILocation(line: 289, column: 12, scope: !768, inlinedAt: !248744)
!248749 = distinct !{!248749, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3q_BJ_EE0INtNtBa_6result6ResultuNtNtB2I_5error5ErrorEECseeLknQCOKOd_13polars_python"}
!248750 = distinct !{!248750, !248749, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3q_BJ_EE0INtNtBa_6result6ResultuNtNtB2I_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 1"}
!248751 = distinct !{!248751, !248749, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3q_BJ_EE0INtNtBa_6result6ResultuNtNtB2I_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!248752 = distinct !{!248752, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1D_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3r_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4C_BJ_EE0E0B30_ECseeLknQCOKOd_13polars_python"}
!248753 = distinct !{!248753, !248752, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1D_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3r_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4C_BJ_EE0E0B30_ECseeLknQCOKOd_13polars_python: argument 1"}
!248754 = distinct !{!248754, !248752, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1D_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3r_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4C_BJ_EE0E0B30_ECseeLknQCOKOd_13polars_python: argument 0"}
!248755 = distinct !{!248755, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECseeLknQCOKOd_13polars_python"}
!248756 = distinct !{!248756, !248755, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECseeLknQCOKOd_13polars_python: argument 0:Peel0"}
!248757 = distinct !DILocation(line: 1303, column: 19, scope: !2531)
!248758 = distinct !DILocation(line: 2571, column: 14, scope: !2530, inlinedAt: !248757)
!248759 = distinct !DILocation(line: 2509, column: 21, scope: !2529, inlinedAt: !248758)
!248760 = distinct !DILocation(line: 2568, column: 26, scope: !2526, inlinedAt: !248759)
!248761 = distinct !DILocation(line: 1303, column: 50, scope: !2525, inlinedAt: !248760)
!248762 = distinct !DILocation(line: 502, column: 28, scope: !2524, inlinedAt: !248761)
!248763 = distinct !DILocation(line: 2508, column: 34, scope: !2529, inlinedAt: !248758)
!248764 = distinct !DILocation(line: 180, column: 28, scope: !246, inlinedAt: !248763)
!248765 = distinct !DILocation(line: 185, column: 40, scope: !246, inlinedAt: !248763)
!248766 = distinct !{!248766, !3076}
!248767 = distinct !{!248767, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python"}
!248768 = distinct !{!248768, !248767, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2F_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3Q_B1l_EE0E0CseeLknQCOKOd_13polars_python: argument 0"}
!248769 = distinct !{!248769, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEE0CseeLknQCOKOd_13polars_python"}
!248770 = distinct !{!248770, !248769, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEE0CseeLknQCOKOd_13polars_python: argument 0"}
!248771 = distinct !{!248771, !248755, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldECseeLknQCOKOd_13polars_python: argument 0"}
!248772 = distinct !DILocation(line: 499, column: 22, scope: !2524, inlinedAt: !248761)
!248773 = distinct !DILocation(line: 1849, column: 20, scope: !771, inlinedAt: !248772)
!248774 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248773)
!248775 = !{!248742}
!248776 = !{!248743}
!248777 = !{!248743, !248742}
!248778 = !{!248756, !248754, !248753, !248751, !248750}
!248779 = !{!248771, !248770, !248768, !248754, !248753, !248751, !248750}
!248780 = !{!248771, !248754, !248753, !248751, !248750}
!248781 = !DILocation(line: 1301, column: 29, scope: !2520)
!248782 = !DILocation(line: 961, column: 18, scope: !234, inlinedAt: !248740)
!248783 = !DILocation(line: 1302, column: 40, scope: !2521)
!248784 = !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248744)
!248785 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248747)
!248786 = !DILocation(line: 2442, column: 9, scope: !770, inlinedAt: !248748)
!248787 = !DILocation(line: 472, column: 26, scope: !2522, inlinedAt: !248762)
!248788 = !DILocation(line: 2509, column: 21, scope: !2529, inlinedAt: !248758)
!248789 = !DILocation(line: 1717, column: 9, scope: !243, inlinedAt: !248764)
!248790 = !DILocation(line: 0, scope: !2531)
!248791 = !DILocation(line: 180, column: 28, scope: !246, inlinedAt: !248763)
!248792 = !DILocation(line: 659, column: 28, scope: !256, inlinedAt: !248765)
!248793 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248774)
!248794 = !DILocation(line: 0, scope: !2521)
!248795 = !DILocation(line: 1305, column: 6, scope: !2520)
!248796 = !DILocation(line: 1301, column: 9, scope: !2521)
!248797 = distinct !DISubprogram(name: "collect_seq<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_arrow::datatypes::field::Field, alloc::alloc::Global>>", linkageName: "_RINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBR_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECseeLknQCOKOd_13polars_python", scope: !2966, file: !2965, line: 1296, type: !2780, scopeLine: 1296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248798 = distinct !DILocation(line: 1301, column: 29, scope: !248797)
!248799 = distinct !DILocation(line: 3941, column: 14, scope: !263, inlinedAt: !248798)
!248800 = distinct !DILocation(line: 1041, column: 9, scope: !262, inlinedAt: !248799)
!248801 = distinct !DILocation(line: 102, column: 78, scope: !261, inlinedAt: !248800)
!248802 = distinct !{!248802, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python"}
!248803 = distinct !{!248803, !248802, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 1"}
!248804 = distinct !DILexicalBlock(scope: !248797, file: !2965, line: 1301, column: 9)
!248805 = distinct !{!248805, !248802, !"_RNvXs1_NtCsk1caaszg7Cl_10serde_json3serQINtB5_10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_seqCseeLknQCOKOd_13polars_python: argument 0"}
!248806 = distinct !DILocation(line: 1302, column: 40, scope: !248804)
!248807 = distinct !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248806)
!248808 = distinct !DILocation(line: 1826, column: 16, scope: !769, inlinedAt: !248807)
!248809 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248808)
!248810 = distinct !DILocation(line: 289, column: 12, scope: !768, inlinedAt: !248806)
!248811 = distinct !{!248811, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3r_BJ_EE0INtNtBa_6result6ResultuNtNtB2J_5error5ErrorEECseeLknQCOKOd_13polars_python"}
!248812 = distinct !{!248812, !248811, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3r_BJ_EE0INtNtBa_6result6ResultuNtNtB2J_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 1"}
!248813 = distinct !{!248813, !248811, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3r_BJ_EE0INtNtBa_6result6ResultuNtNtB2J_5error5ErrorEECseeLknQCOKOd_13polars_python: argument 0"}
!248814 = distinct !{!248814, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1E_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3s_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4D_BJ_EE0E0B31_ECseeLknQCOKOd_13polars_python"}
!248815 = distinct !{!248815, !248814, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1E_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3s_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4D_BJ_EE0E0B31_ECseeLknQCOKOd_13polars_python: argument 1"}
!248816 = distinct !{!248816, !248814, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1E_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3s_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4D_BJ_EE0E0B31_ECseeLknQCOKOd_13polars_python: argument 0"}
!248817 = distinct !{!248817, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python"}
!248818 = distinct !{!248818, !248817, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python: argument 0:Peel0"}
!248819 = distinct !DISubprogram(name: "serialize_element<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter, &polars_arrow::datatypes::field::Field>", linkageName: "_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python", scope: !3073, file: !2911, line: 491, type: !2835, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248820 = distinct !DILexicalBlock(scope: !248819, file: !2911, line: 496, column: 13)
!248821 = distinct !DISubprogram(name: "{closure#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_arrow::datatypes::field::Field, alloc::alloc::Global>>", linkageName: "_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEE0CseeLknQCOKOd_13polars_python", scope: !2973, file: !2965, line: 1303, type: !2835, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248822 = distinct !DISubprogram(name: "{closure#0}<&polars_arrow::datatypes::field::Field, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_arrow::datatypes::field::Field, alloc::alloc::Global>>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python", scope: !2839, file: !2787, line: 2568, type: !2835, scopeLine: 2568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248823 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<&polars_arrow::datatypes::field::Field, core::result::Result<(), serde_json::error::Error>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_arrow::datatypes::field::Field, alloc::alloc::Global>>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1E_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB3s_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB4D_BJ_EE0E0B31_ECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2501, type: !2780, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248824 = distinct !DILexicalBlock(scope: !248823, file: !2787, line: 2507, column: 9)
!248825 = distinct !DILexicalBlock(scope: !248824, file: !2787, line: 2508, column: 41)
!248826 = distinct !DISubprogram(name: "try_for_each<core::slice::iter::Iter<polars_arrow::datatypes::field::Field>, serde_core::ser::Serializer::collect_seq::{closure_env#0}<&mut serde_json::ser::Serializer<&mut alloc::vec::Vec<u8, alloc::alloc::Global>, serde_json::ser::CompactFormatter>, &alloc::vec::Vec<polars_arrow::datatypes::field::Field, alloc::alloc::Global>>, core::result::Result<(), serde_json::error::Error>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3r_BJ_EE0INtNtBa_6result6ResultuNtNtB2J_5error5ErrorEECseeLknQCOKOd_13polars_python", scope: !2790, file: !2787, line: 2560, type: !2780, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2779)
!248827 = distinct !DILexicalBlock(scope: !248804, file: !2965, line: 1302, column: 9)
!248828 = distinct !DILocation(line: 1303, column: 19, scope: !248827)
!248829 = distinct !DILocation(line: 2571, column: 14, scope: !248826, inlinedAt: !248828)
!248830 = distinct !DILocation(line: 2509, column: 21, scope: !248825, inlinedAt: !248829)
!248831 = distinct !DILocation(line: 2568, column: 26, scope: !248822, inlinedAt: !248830)
!248832 = distinct !DILocation(line: 1303, column: 50, scope: !248821, inlinedAt: !248831)
!248833 = distinct !DILocation(line: 502, column: 28, scope: !248820, inlinedAt: !248832)
!248834 = distinct !DILocation(line: 2508, column: 34, scope: !248825, inlinedAt: !248829)
!248835 = distinct !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !248834)
!248836 = distinct !DILocation(line: 185, column: 40, scope: !267, inlinedAt: !248834)
!248837 = distinct !{!248837, !3076}
!248838 = distinct !{!248838, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python"}
!248839 = distinct !{!248839, !248838, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtBe_6result6ResultuNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENCINvYQINtNtB2G_3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIB3R_B1l_EE0E0CseeLknQCOKOd_13polars_python: argument 0"}
!248840 = distinct !{!248840, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEE0CseeLknQCOKOd_13polars_python"}
!248841 = distinct !{!248841, !248840, !"_RNCINvYQINtNtCsk1caaszg7Cl_10serde_json3ser10SerializerQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_seqRIBT_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEE0CseeLknQCOKOd_13polars_python: argument 0"}
!248842 = distinct !{!248842, !248817, !"_RINvXs2_NtCsk1caaszg7Cl_10serde_json3serINtB6_8CompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs40veMcpUDl8_10serde_core3ser12SerializeSeq17serialize_elementRNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldECseeLknQCOKOd_13polars_python: argument 0"}
!248843 = distinct !DILocation(line: 499, column: 22, scope: !248820, inlinedAt: !248832)
!248844 = distinct !DILocation(line: 1849, column: 20, scope: !771, inlinedAt: !248843)
!248845 = distinct !DILocation(line: 78, column: 18, scope: !120, inlinedAt: !248844)
!248846 = !{!248803}
!248847 = !{!248805}
!248848 = !{!248805, !248803}
!248849 = !{!248818, !248816, !248815, !248813, !248812}
!248850 = !{!248842, !248841, !248839, !248816, !248815, !248813, !248812}
!248851 = !{!248842, !248816, !248815, !248813, !248812}
!248852 = !DILocation(line: 1301, column: 29, scope: !248797)
!248853 = !DILocation(line: 961, column: 18, scope: !258, inlinedAt: !248801)
!248854 = !DILocation(line: 1302, column: 40, scope: !248804)
!248855 = !DILocation(line: 287, column: 14, scope: !768, inlinedAt: !248806)
!248856 = !DILocation(line: 504, column: 14, scope: !119, inlinedAt: !248809)
!248857 = !DILocation(line: 2442, column: 9, scope: !770, inlinedAt: !248810)
!248858 = !DILocation(line: 472, column: 26, scope: !2728, inlinedAt: !248833)
!248859 = !DILocation(line: 2509, column: 21, scope: !248825, inlinedAt: !248829)
!248860 = !DILocation(line: 1717, column: 9, scope: !264, inlinedAt: !248835)
!248861 = !DILocation(line: 0, scope: !248827)
!248862 = !DILocation(line: 180, column: 28, scope: !267, inlinedAt: !248834)
end_hunk_1
