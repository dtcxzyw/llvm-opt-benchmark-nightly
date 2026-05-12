inline.NumInlined: 98
inline.NumDeleted: 46
begin_hunk_0_@llvm.lifetime.end.p0
; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(1304) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef readonly captures(none) %4, ptr readnone captures(none) %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.NCompress::NBcj2::CEncoder::CCoderReleaser", align 8 ; 6 uses
  %9 = alloca %class.CMyComPtr.0, align 8         ; 12 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo:bb.a

_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit: ; preds = %.loopexit322, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %10 = load ptr, ptr %8, align 8, !tbaa !27      ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i, label %bb.br
end_hunk_1
begin_hunk_2_@_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo:bb.a
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit.i.i:        ; preds = %.noexc.i, %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !23 ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i1.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i, label %bb.bs
end_hunk_2
begin_hunk_3_@_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo:bb.a
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i:       ; preds = %.noexc1.i, %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !23 ; 3 uses
  %.not.i.i3.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i3.i.i, label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i, label %bb.bt
end_hunk_3
begin_hunk_4_@_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo:bb.a
  br label %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i

_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i:       ; preds = %.noexc2.i, %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %10, i64 240 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !23 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i, label %_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev.exit, label %bb.bu
end_hunk_4
