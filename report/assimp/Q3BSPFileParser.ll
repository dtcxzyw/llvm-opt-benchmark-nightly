inline.NumInlined: 514
inline.NumDeleted: 287
begin_hunk_0_@_ZN6Assimp15Q3BSPFileParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_18ZipArchiveIOSystemE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.d)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZN6Assimp15Q3BSPFileParser8readDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
end_hunk_0
begin_hunk_1_@_ZN6Assimp15Q3BSPFileParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_18ZipArchiveIOSystemE:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef %i.j, ptr noundef nonnull @.str)
          to label %.noexc5 unwind label %bb.e    ; 6 uses

.noexc5:                                          ; preds = %bb.b
  %i.o = icmp eq ptr %i.n, null
end_hunk_1
begin_hunk_2_@_ZN6Assimp15Q3BSPFileParserC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_18ZipArchiveIOSystemE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.t, i64 noundef 1, i64 noundef %i.s)
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %.noexc7
  %.not.i = icmp eq i64 %i.x, %i.s                ; 2 uses
end_hunk_2
