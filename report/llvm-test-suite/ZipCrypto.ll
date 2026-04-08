inline.NumInlined: 26
inline.NumDeleted: 3
begin_hunk_0_@_ZThn8_N7NCrypto4NZip8CEncoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(44) %i.d) #15
  br label %_ZN7NCrypto4NZip8CEncoder7ReleaseEv.exit

_ZN7NCrypto4NZip8CEncoder7ReleaseEv.exit:         ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@_ZThn8_N7NCrypto4NZip8CDecoder7ReleaseEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(44) %i.d) #15
  br label %_ZN7NCrypto4NZip8CDecoder7ReleaseEv.exit

_ZN7NCrypto4NZip8CDecoder7ReleaseEv.exit:         ; preds = %bb.a, %bb.b
end_hunk_1
begin_hunk_2_@llvm.memcpy.p0.p0.i64
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
end_hunk_2
