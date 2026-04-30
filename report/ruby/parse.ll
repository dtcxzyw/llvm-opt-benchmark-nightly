inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@ruby_yyparse:bb.a
  %i.a = alloca [200 x i16], align 16             ; 6 uses
  %3 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  %4 = alloca [200 x %struct.rb_code_location_struct], align 16 ; 5 uses
  %5 = alloca %union.YYSTYPE, align 8             ; 587 uses
  %6 = alloca %struct.rb_code_location_struct, align 8 ; 420 uses
  %i.b = alloca [128 x i8], align 16              ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
end_hunk_0
begin_hunk_1_@ruby_yyparse:bb.a
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !15
  %i.bvo = getelementptr i8, ptr %.32950, i64 -128
  %i.bvp = getelementptr i8, ptr %.32950, i64 -96
  %i.bvq = call fastcc ptr @rb_node_for_new(ptr noundef nonnull %0, ptr noundef %i.bvn, ptr noundef %i.bvh, ptr noundef %6, ptr noundef %i.bvo, ptr noundef %i.bvp, ptr noundef %14, ptr noundef nonnull %.32950) ; 2 uses
  store ptr %i.bvq, ptr %5, align 8, !tbaa !15
  %i.bvr = getelementptr i8, ptr %i.bvh, i64 48
  store ptr %i.bvq, ptr %i.bvr, align 8, !tbaa !87
  %24 = load ptr, ptr %5, align 8, !tbaa !15      ; 3 uses
  %i.bvs = load ptr, ptr %i.bup, align 8, !tbaa !15 ; 2 uses
  %i.bvt = icmp ne ptr %24, null
  %i.bvu = icmp ne ptr %i.bvs, null
  %or.cond.i3386 = and i1 %i.bvt, %i.bvu
  br i1 %or.cond.i3386, label %nd_line.exit.i3387, label %fixpos.exit3388
end_hunk_1
begin_hunk_2_@ruby_yyparse:bb.a
nd_line.exit.i3387:                               ; preds = %bb.qq
  %i.bvv = load i64, ptr %i.bvs, align 8, !tbaa !69
  %i.bvw = shl i64 %i.bvv, 17
  %i.bvx = load i64, ptr %24, align 8, !tbaa !69
  %i.bvy = and i64 %i.bvx, 32767
  %i.bvz = ashr exact i64 %i.bvw, 17
  %i.bwa = and i64 %i.bvz, -32768
  %i.bwb = or disjoint i64 %i.bwa, %i.bvy
  store i64 %i.bwb, ptr %24, align 8, !tbaa !69
  br label %fixpos.exit3388

fixpos.exit3388:                                  ; preds = %bb.qq, %nd_line.exit.i3387
end_hunk_2
