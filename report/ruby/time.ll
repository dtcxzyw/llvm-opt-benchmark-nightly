inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@time_xmlschema:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gz, ptr noundef nonnull readonly align 1 %i.he, i64 noundef %.0128, i1 noundef false) #19
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.al, %RSTRING_PTR.exit149, %ruby_nonempty_memcpy.exit.loopexit, %bb.s
  %.4 = phi ptr [ %i.em, %bb.s ], [ %i.gq, %ruby_nonempty_memcpy.exit.loopexit ], [ %i.gx, %RSTRING_PTR.exit149 ], [ %i.gx, %bb.al ] ; 9 uses
  %i.hf = load i64, ptr %i.z, align 8
  %i.hg = and i64 %i.hf, 61572651155456
  %i.hh = icmp eq i64 %i.hg, 8796093022208
end_hunk_0
