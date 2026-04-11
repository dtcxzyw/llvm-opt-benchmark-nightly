inline.NumInlined: 460
inline.NumDeleted: 124
begin_hunk_0_@_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.gd, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %10, align 8, !tbaa !13
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 320
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 192
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb:bb.a
  br label %.invoke

.invoke:                                          ; preds = %bb.as, %bb.bz, %bb.ca, %bb.cb
  %18 = phi ptr [ %14, %bb.cb ], [ %15, %bb.ca ], [ %16, %bb.bz ], [ %17, %bb.as ]
  invoke void @_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(64) %18, i32 noundef %i.dt)
          to label %.loopexit313 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cc:                                            ; preds = %bb.ce
end_hunk_1
