inline.NumInlined: 575
inline.NumDeleted: 105
begin_hunk_0_@rb_st_init_numtable
; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @syserr_initialize(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.c = tail call i64 @rb_obj_class(i64 noundef %2) #32 ; 3 uses
end_hunk_0
begin_hunk_1_@syserr_initialize:bb.a
  br i1 %i.f, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !15     ; 4 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !15
  %.not84 = icmp eq i32 %0, 1
  br i1 %.not84, label %bb.d, label %bb.c
end_hunk_1
begin_hunk_2_@syserr_initialize:bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %rb_scan_args_set.exit43, %bb.h
  %3 = phi i64 [ 4, %bb.h ], [ %i.g, %rb_scan_args_set.exit43 ]
  %.pr50 = phi i64 [ %i.g, %bb.h ], [ %.pr, %rb_scan_args_set.exit43 ] ; 5 uses
  %i.s = icmp eq i64 %.pr50, 4
  br i1 %i.s, label %RBASIC_SET_CLASS.exit, label %bb.i
end_hunk_2
begin_hunk_3_@syserr_initialize:bb.a
  br label %.preheader52.1

.preheader52.1:                                   ; preds = %.preheader52.preheader, %bb.p
  %.sink = phi i64 [ %i.ao, %bb.p ], [ 4, %.preheader52.preheader ] ; 2 uses
  %.286.i = phi i32 [ 1, %bb.p ], [ 0, %.preheader52.preheader ] ; 4 uses
  store i64 %.sink, ptr %i.a, align 8, !tbaa !15
  %i.ap = icmp samesign ult i32 %.286.i, %0
end_hunk_3
begin_hunk_4_@syserr_initialize:bb.a

bb.t:                                             ; preds = %rb_scan_args_set.exit, %RBASIC_SET_CLASS.exit
  %i.ay = phi i64 [ %i.au, %rb_scan_args_set.exit ], [ %i.o, %RBASIC_SET_CLASS.exit ] ; 2 uses
  %4 = phi i64 [ %.sink, %rb_scan_args_set.exit ], [ %3, %RBASIC_SET_CLASS.exit ]
  %i.az = phi i64 [ %i.ax, %rb_scan_args_set.exit ], [ %.pr50, %RBASIC_SET_CLASS.exit ] ; 5 uses
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %bb.x, label %bb.u
end_hunk_4
begin_hunk_5_@syserr_initialize:bb.a
  %.0 = phi ptr [ %i.bf, %rb_num2int_inline.exit ], [ @.str.308, %bb.t ]
  %i.bg = call ptr @rb_locale_encoding() #32
  %i.bh = call i64 @rb_enc_str_new_cstr(ptr noundef %.0, ptr noundef %i.bg) #32 ; 3 uses
  %i.bi = icmp eq i64 %4, 4
  br i1 %i.bi, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_5
