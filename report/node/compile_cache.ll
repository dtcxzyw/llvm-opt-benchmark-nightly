inline.NumInlined: 2853
inline.NumDeleted: 975
begin_hunk_0_@_ZN4node19CompileCacheHandler7PersistEv:bb.a
  %i.bb = call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #25
  %i.bc = call i64 @crc32(i64 noundef %i.bb, ptr noundef %i.ay, i32 noundef %i.ba) #25
  %i.bd = trunc i64 %i.bc to i32
  %i.be = call noalias noundef nonnull dereferenceable(20) ptr @_Znwm(i64 noundef 20) #27 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store i32 -1965040718, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bh = load i32, ptr %i.bg, align 8
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store i32 %i.ba, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
end_hunk_0
begin_hunk_1_@_ZN4node19CompileCacheHandler7PersistEv:bb.a

bb.r:                                             ; preds = %_ZNK4node19CompileCacheHandler5DebugIJRPKcEEEvS3_DpOT_.exit
  %i.cg = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEEvP8_IO_FILESt17basic_string_viewIcS7_EDpOT_(ptr noundef %i.cg, i64 80, ptr nonnull @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm) #30
  br label %_ZNK4node19CompileCacheHandler5DebugIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_RjSC_SC_SC_SC_EEEvS3_DpOT_.exit

_ZNK4node19CompileCacheHandler5DebugIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_RjSC_SC_SC_SC_EEEvS3_DpOT_.exit: ; preds = %bb.q, %_ZNK4node19CompileCacheHandler5DebugIJRPKcEEEvS3_DpOT_.exit, %bb.r
end_hunk_1
