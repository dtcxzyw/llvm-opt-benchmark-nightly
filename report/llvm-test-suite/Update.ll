inline.NumInlined: 461
inline.NumDeleted: 136
begin_hunk_0_@_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2:bb.a

bb.iu:                                            ; preds = %bb.it
  %i.agp = invoke noalias noundef nonnull dereferenceable(1112) ptr @_Znwm(i64 noundef 1112) #21
          to label %bb.iv unwind label %bb.jf     ; 15 uses

bb.iv:                                            ; preds = %bb.iu
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 16
  store i32 0, ptr %i.agq, align 4, !tbaa !47
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV13CInFileStream, i64 16), ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV13CInFileStream, i64 96)>, ptr %i.agp, align 8, !tbaa !48
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %i.agr, align 8, !tbaa !48
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agp, i64 32
end_hunk_0
