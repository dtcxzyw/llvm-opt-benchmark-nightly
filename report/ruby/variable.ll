inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_mod_set_temporary_name:bb.a
  %2 = alloca %struct.sub_temporary_name_args, align 8 ; 5 uses
  %3 = alloca %struct.sub_temporary_name_args, align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !16
end_hunk_0
begin_hunk_1_@rb_mod_set_temporary_name:bb.a
  unreachable

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %4 = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ad = icmp eq i64 %4, 4
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
end_hunk_1
