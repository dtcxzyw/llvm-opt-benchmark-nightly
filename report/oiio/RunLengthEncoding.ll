inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0_@_ZN3dpx17RunLengthEncodingD0Ev:bb.a
  br i1 %.not.i, label %_ZN3dpx17RunLengthEncodingD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #7
  br label %_ZN3dpx17RunLengthEncodingD2Ev.exit

_ZN3dpx17RunLengthEncodingD2Ev.exit:              ; preds = %bb.a, %bb.b
  tail call void @_ZN3dpx5CodecD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #7
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN3dpx17RunLengthEncoding4ReadERKNS_6HeaderEPNS_17ElementReadStreamEiRKNS_5BlockEPvNS_8DataSizeE:bb.a
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %i.a ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 806
  %i.d = load i16, ptr %i.c, align 2, !tbaa !15
  %i.e = icmp eq i16 %i.d, 1
  br i1 %i.e, label %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit, label %_ZNK3dpx13GenericHeader13ImageEncodingEi.exit.thread

end_hunk_1
begin_hunk_2_@_ZN3dpx17RunLengthEncoding4ReadERKNS_6HeaderEPNS_17ElementReadStreamEiRKNS_5BlockEPvNS_8DataSizeE:bb.a
  %i.h = tail call noundef i32 @_ZNK3dpx6Header6HeightEv(ptr noundef nonnull align 4 dereferenceable(2049) %1)
  %i.i = tail call noundef i32 @_ZNK3dpx13GenericHeader18ComponentByteCountEi(ptr noundef nonnull align 4 dereferenceable(1664) %1, i32 noundef %3)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 812
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  %..i = select i1 %i.l, i32 0, i32 %i.k          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3dpx17RunLengthEncoding4ReadERKNS_6HeaderEPNS_17ElementReadStreamEiRKNS_5BlockEPvNS_8DataSizeE:bb.a

_ZNK3dpx13GenericHeader8BitDepthEi.exit:          ; preds = %_ZNK3dpx13GenericHeader16EndOfLinePaddingEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 803
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20    ; 2 uses
  %.not = icmp eq i32 %..i, 0
  br i1 %.not, label %bb.b, label %switch.early.test

end_hunk_3
begin_hunk_4_@__cxx_global_var_init:bb.a
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!16, !18, i64 26}
!16 = !{!"_ZTSN3dpx12ImageElementE", !4, i64 0, !4, i64 4, !17, i64 8, !4, i64 12, !17, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !18, i64 24, !18, i64 26, !4, i64 28, !4, i64 32, !4, i64 36, !5, i64 40}
!17 = !{!"float", !5, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!16, !4, i64 32}
!20 = !{!16, !5, i64 23}
end_hunk_4
