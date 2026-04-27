inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@rb_str_format:bb.a
  br label %RSTRING_PTR.exit1359

RSTRING_PTR.exit1359:                             ; preds = %bb.oa, %bb.ob
  %i.amo = phi ptr [ %i.amn, %bb.ob ], [ %i.am, %bb.oa ] ; 11 uses
  %.not1109 = icmp eq i64 %i.alz, 0               ; 3 uses
  %i.amp = and i32 %.1952, 10                     ; 2 uses
  %.not1110 = icmp ne i32 %i.amp, 0
end_hunk_0
begin_hunk_1_@rb_str_format:bb.a
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %.16 = phi i64 [ %i.ana, %bb.og ], [ %.15, %bb.of ] ; 3 uses
  %i.anb = load i64, ptr %i.m, align 8, !tbaa !11
  %i.anc = inttoptr i64 %i.anb to ptr             ; 3 uses
  %i.and = getelementptr i8, ptr %i.anc, i64 16
end_hunk_1
begin_hunk_2_@rb_str_format:bb.a
RSTRING_PTR.exit1361:                             ; preds = %bb.oh, %bb.oi
  %i.ank = phi ptr [ %i.anj, %bb.oi ], [ %i.ani, %bb.oh ] ; 3 uses
  %i.anl = icmp sgt i64 %i.anf, %.pre-phi
  br i1 %i.anl, label %bb.oj, label %bb.ol

bb.oj:                                            ; preds = %RSTRING_PTR.exit1361
  %i.anm = sub i64 %i.anf, %.pre-phi              ; 3 uses
  %.not.i1362 = icmp eq i64 %i.anm, 0
  br i1 %.not.i1362, label %ruby_nonempty_memcpy.exit1364, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %3 = getelementptr i8, ptr %i.amo, i64 %.16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull readonly align 1 %i.ank, i64 noundef range(i64 1, 0) %i.anm, i1 noundef false) #21
  br label %ruby_nonempty_memcpy.exit1364

bb.ol:                                            ; preds = %RSTRING_PTR.exit1361
  %4 = getelementptr i8, ptr %i.amo, i64 %.16
  store i8 48, ptr %4, align 1, !tbaa !15
  br label %ruby_nonempty_memcpy.exit1364

ruby_nonempty_memcpy.exit1364:                    ; preds = %bb.ok, %bb.oj, %bb.ol
  %.pn = phi i64 [ 1, %bb.ol ], [ 0, %bb.oj ], [ %i.anm, %bb.ok ]
  %.17 = add i64 %.pn, %.16                       ; 3 uses
  br i1 %i.alu, label %bb.om, label %bb.on

end_hunk_2
begin_hunk_3_@rb_out_of_int

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @BSD__sfvwrite(ptr noundef captures(none) %0, ptr noundef captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 3 uses
end_hunk_3
begin_hunk_4_@BSD__sfvwrite:bb.a

bb.e:                                             ; preds = %bb.d
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.135.lcssa, i64 %i.t) ; 3 uses
  %.not.i = icmp eq i64 %i.t, 0
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !67  ; 2 uses
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.pre45, ptr noundef nonnull readonly align 1 %.133.lcssa, i64 noundef range(i64 1, 0) %spec.select, i1 noundef false) #21
  %.pre = load i64, ptr %i.l, align 8, !tbaa !69
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !67
  %.pre46.pre = load i64, ptr %i.a, align 8, !tbaa !83
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.e, %bb.f
  %.pre46 = phi i64 [ %i.m, %bb.e ], [ %.pre46.pre, %bb.f ]
  %i.w = phi ptr [ %.pre45, %bb.e ], [ %.pre44, %bb.f ]
  %i.x = phi i64 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %i.y = sub i64 %i.x, %spec.select
  store i64 %i.y, ptr %i.l, align 8, !tbaa !69
  %i.z = getelementptr i8, ptr %i.w, i64 %spec.select
end_hunk_4
begin_hunk_5_@llvm.memset.p0.i64
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_5
