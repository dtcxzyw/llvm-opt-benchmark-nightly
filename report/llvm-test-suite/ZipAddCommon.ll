inline.NumInlined: 177
inline.NumDeleted: 88
begin_hunk_0_@_ZN8NArchive4NZip10CAddCommon8CompressEP19ISequentialInStreamP10IOutStreamP21ICompressProgressInfoRNS0_18CCompressingResultE:bb.a

bb.at:                                            ; preds = %bb.as
  %i.fy = invoke noalias noundef nonnull dereferenceable(592) ptr @_Znwm(i64 noundef 592) #13
          to label %bb.au unwind label %bb.ap     ; 14 uses

bb.au:                                            ; preds = %bb.at
  %12 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i32 0, ptr %i.fz, align 4, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7NCrypto6NWzAes10CBaseCoderE, i64 16), ptr %i.fy, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7NCrypto6NWzAes10CBaseCoderE, i64 96), ptr %12, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.gb, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip10CAddCommon8CompressEP19ISequentialInStreamP10IOutStreamP21ICompressProgressInfoRNS0_18CCompressingResultE:bb.a
  br label %.body

bb.ax:                                            ; preds = %bb.au
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7NCrypto6NWzAes8CEncoderE, i64 16), ptr %i.fy, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7NCrypto6NWzAes8CEncoderE, i64 96), ptr %12, align 8, !tbaa !18
  store ptr %i.fy, ptr %i.cb, align 8, !tbaa !96
  %i.gj = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 192 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8NArchive4NZip10CAddCommon8CompressEP19ISequentialInStreamP10IOutStreamP21ICompressProgressInfoRNS0_18CCompressingResultE:bb.a

bb.bh:                                            ; preds = %bb.bg
  %i.hk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #13
          to label %bb.bi unwind label %bb.ap     ; 6 uses

bb.bi:                                            ; preds = %bb.bh
  %13 = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i32 0, ptr %i.hl, align 4, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN7NCrypto4NZip8CEncoderE, i64 16), ptr %i.hk, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7NCrypto4NZip8CEncoderE, i64 96), ptr %13, align 8, !tbaa !18
  store ptr %i.hk, ptr %i.bx, align 8, !tbaa !108
  %i.hm = invoke noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.hk)
          to label %.noexc344 unwind label %bb.ap, !inline_history !97 ; 0 uses
end_hunk_2
begin_hunk_3_@_ZN8NArchive4NZip10CAddCommon8CompressEP19ISequentialInStreamP10IOutStreamP21ICompressProgressInfoRNS0_18CCompressingResultE:bb.a

bb.bz:                                            ; preds = %bb.by
  %i.jg = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #13
          to label %bb.ca unwind label %bb.ap     ; 7 uses

bb.ca:                                            ; preds = %bb.bz
  %14 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store i32 0, ptr %i.jh, align 4, !tbaa !21
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress10CCopyCoderE, i64 16), ptr %i.jg, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress10CCopyCoderE, i64 88), ptr %14, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i8 0, i64 16, i1 false)
  store ptr %i.jg, ptr %i.eh, align 8, !tbaa !111
end_hunk_3
