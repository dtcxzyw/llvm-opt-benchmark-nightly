inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0
@_ZTSN5glTF29AnimationE = linkonce_odr hidden constant [19 x i8] c"N5glTF29AnimationE\00", comdat, align 1
@_ZTVN6Assimp12BaseImporterE = external unnamed_addr constant { [8 x ptr] }, align 8
@switch.table._ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE = private unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4], align 4
@switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30 = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 2, i32 2, i32 poison, i32 4, i32 4], align 4
@switch.table._ZN9rapidjson16GetParseError_EnENS_14ParseErrorCodeE = private unnamed_addr constant [18 x ptr] [ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254], comdat($_ZN9rapidjson16GetParseError_EnENS_14ParseErrorCodeE), align 8
@switch.table._ZN5glTF28Accessor4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE = private unnamed_addr constant [7 x i64] [i64 1, i64 1, i64 2, i64 2, i64 poison, i64 4, i64 4], comdat($_ZN5glTF28Accessor4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE), align 8
@switch.table._ZN5glTF28Accessor6Sparse9PatchDataEj = private unnamed_addr constant [7 x i64] [i64 1, i64 1, i64 2, i64 2, i64 poison, i64 4, i64 4], comdat($_ZN5glTF28Accessor6Sparse9PatchDataEj), align 8

@_ZN6Assimp13glTF2ImporterC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp13glTF2ImporterC2Ev

end_hunk_0
begin_hunk_1_@_ZN5glTF28Accessor11ExtractDataI10aiVector3tIfEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN5glTF28Accessor11ExtractDataIN12_GLOBAL__N_17TangentEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN5glTF28Accessor11ExtractDataI9aiColor4tIfEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a

switch.lookup:                                    ; preds = %._crit_edge.i
  %i.ku = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.ku
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.kv = load ptr, ptr %i.jf, align 8            ; 2 uses
  %i.kw = ptrtoint ptr %i.kv to i64
end_hunk_4
begin_hunk_5_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = load i32, ptr %i.pb, align 8
  %i.pd = zext nneg i32 %switch.tableidx824 to i64
  %switch.gep830 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.pd
  %switch.load831 = load i32, ptr %switch.gep830, align 4
  %i.pe = mul i32 %switch.load831, %i.pc          ; 3 uses
  %i.pf = zext i32 %i.pe to i64                   ; 6 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xb = load i32, ptr %i.xa, align 8
  %i.xc = zext nneg i32 %switch.tableidx833 to i64
  %switch.gep839 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.xc
  %switch.load840 = load i32, ptr %switch.gep839, align 4
  %i.xd = mul i32 %switch.load840, %i.xb          ; 3 uses
  %i.xe = zext i32 %i.xd to i64                   ; 8 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afj = load i32, ptr %i.afi, align 8
  %i.afk = zext nneg i32 %switch.tableidx842 to i64
  %switch.gep848 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.afk
  %switch.load849 = load i32, ptr %switch.gep848, align 4
  %i.afl = mul i32 %switch.load849, %i.afj        ; 3 uses
  %i.afm = zext i32 %i.afl to i64                 ; 8 uses
end_hunk_7
begin_hunk_8_@_ZN5glTF28Accessor11ExtractDataIA16_fEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_8
begin_hunk_9_@_ZN5glTF28Accessor11ExtractDataIfEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_9
begin_hunk_10_@_ZN5glTF28Accessor11ExtractDataI5vec4fEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_10
begin_hunk_11_@_ZN5glTF28Accessor11ExtractDataI13aiQuaterniontIfEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_11
begin_hunk_12_@_ZN5glTF28Accessor7IndexerC2ERS0_:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.bx
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = mul i32 %switch.load, %i.bw
end_hunk_12
begin_hunk_13_@_ZN5glTF28Accessor9GetStrideEv:bb.a

.sink.split:                                      ; preds = %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread, %bb.b
  %switch.tableidx17.sink = phi i32 [ %switch.tableidx, %bb.b ], [ %switch.tableidx17, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread ]
  %switch.table._ZN5glTF28Accessor9GetStrideEv.31.sink = phi ptr [ @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, %bb.b ], [ @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, %_ZNK10glTFCommon3RefIN5glTF210BufferViewEEcvbEv.exit.thread ]
  %.pn28.in.in = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.pn28.in = load i32, ptr %.pn28.in.in, align 8
  %.pn28 = zext i32 %.pn28.in to i64
end_hunk_13
begin_hunk_14_@_ZN5glTF28Accessor4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a

switch.lookup:                                    ; preds = %bb.ai
  %i.io = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5glTF28Accessor4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE, i64 %i.io
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.ip = mul nuw nsw i64 %switch.load, %i.eu     ; 2 uses
  store i64 %i.ip, ptr %i.d, align 8
end_hunk_14
begin_hunk_15_@_ZN5glTF28Accessor4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xo = load i32, ptr %i.xn, align 8
  %i.xp = zext nneg i32 %switch.tableidx640 to i64
  %switch.gep646 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.xp
  %switch.load647 = load i32, ptr %switch.gep646, align 4
  %i.xq = mul i32 %switch.load647, %i.xo          ; 2 uses
  %i.xr = load i64, ptr %i.ev, align 8
end_hunk_15
begin_hunk_16_@_ZN5glTF28Accessor11ExtractDataI9aiColor4tIhEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_16
begin_hunk_17_@_ZN5glTF28Accessor11ExtractDataI9aiColor4tItEEEmRPT_PKSt6vectorIjSaIjEE:bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE.30, i64 %i.cv
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.cw = mul i32 %switch.load, %i.cu             ; 3 uses
  %i.cx = zext i32 %i.cw to i64                   ; 6 uses
end_hunk_17
