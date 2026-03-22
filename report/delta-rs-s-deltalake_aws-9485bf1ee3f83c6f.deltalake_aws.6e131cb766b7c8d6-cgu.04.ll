begin_hunk_0
  %86 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %8) #26
          to label %common.resume unwind label %90, !noalias !1975

87:                                               ; preds = %79
  %88 = load i64, ptr %7, align 8, !range !62, !noalias !1971, !noundef !3 ; [#uses=1 type=i64]
end_hunk_0
begin_hunk_1
_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i: ; preds = %87
  %.sroa.7.sroa.0.0.copyload14.i = load i64, ptr %8, align 8, !alias.scope !1976, !noalias !1977 ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1971
  br label %99

90:                                               ; preds = %85
  %91 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1975
  unreachable

common.resume:                                    ; preds = %.body, %144, %85, %94
  %common.resume.op = phi { ptr, i32 } [ %145, %144 ], [ %95, %94 ], [ %86, %85 ], [ %.pn, %.body ] ; [#uses=1 type={ ptr, i32 }]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i: ; preds = %87
  %92 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; [#uses=1 type=ptr]
  %.sroa.643.24.copyload.i = load i64, ptr %92, align 8, !noalias !1971 ; [#uses=1 type=i64]
  %.sroa.040.0.copyload.i = load i64, ptr %8, align 8, !noalias !1975 ; [#uses=2 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1971
  %.not.i32 = icmp eq i64 %.sroa.040.0.copyload.i, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not.i32, label %99, label %93

93:                                               ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1978
  store i64 %.sroa.040.0.copyload.i, ptr %6, align 8, !noalias !1984
  %.sroa.5.sroa.6.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; [#uses=1 type=ptr]
end_hunk_1
begin_hunk_2
  %.sroa.5.sroa.7.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; [#uses=1 type=ptr]
  store i64 %83, ptr %.sroa.5.sroa.7.0..sroa_idx34.i, align 8, !noalias !1984
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 61, ptr noundef nonnull %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25
          to label %96 unwind label %94, !noalias !1985

94:                                               ; preds = %93
  %95 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %6) #26
          to label %common.resume unwind label %97, !noalias !1985

96:                                               ; preds = %93
  unreachable

97:                                               ; preds = %94
  %98 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1985
  unreachable
end_hunk_2
begin_hunk_3
.thread72:                                        ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit31
  store i64 -9223372036854775808, ptr %13, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %101

99:                                               ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i
  %.sroa.5.sroa.0.0.ph.i = phi i64 [ %.sroa.7.sroa.0.0.copyload14.i, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %84, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; [#uses=2 type=i64]
  %.sroa.5.sroa.6.0.ph.i = phi i64 [ %84, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %83, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; [#uses=1 type=i64]
  %.sroa.5.sroa.7.0.ph.i = phi i64 [ %83, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %.sroa.643.24.copyload.i, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
end_hunk_3
begin_hunk_4
  store i64 %.sroa.5.sroa.6.0.ph.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; [#uses=1 type=ptr]
  store i64 %.sroa.5.sroa.7.0.ph.i, ptr %.sroa.5.0..sroa_idx, align 8
  %100 = icmp eq i64 %.sroa.5.sroa.0.0.ph.i, -9223372036854775808 ; [#uses=2 type=i1]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %spec.select83 = select i1 %100, ptr null, ptr %13 ; [#uses=1 type=ptr]
  br label %101

101:                                              ; preds = %99, %.thread72
  %.not1075 = phi i1 [ %100, %99 ], [ true, %.thread72 ] ; [#uses=2 type=i1]
  %102 = phi ptr [ %spec.select83, %99 ], [ null, %.thread72 ] ; [#uses=1 type=ptr]
  %.not11 = icmp eq ptr %spec.store.select, null  ; [#uses=3 type=i1]
  %103 = select i1 %.not11, ptr %102, ptr %spec.store.select ; [#uses=1 type=ptr]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 22)
          to label %106 unwind label %104

.body:                                            ; preds = %135, %114, %123, %104, %139
  %.pn = phi { ptr, i32 } [ %140, %139 ], [ %124, %123 ], [ %105, %104 ], [ %115, %114 ], [ %136, %135 ] ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %13) #26
          to label %common.resume unwind label %148

104:                                              ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %101
  %105 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  br label %.body

106:                                              ; preds = %101
  %107 = load i64, ptr %10, align 8, !range !139, !noundef !3 ; [#uses=1 type=i64]
  %.not12 = icmp eq i64 %107, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not12, label %.thread, label %108

108:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1991
  %109 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; [#uses=1 type=ptr]
  %110 = load ptr, ptr %109, align 8, !alias.scope !1989, !noalias !1995, !nonnull !3, !noundef !3 ; [#uses=2 type=ptr]
  %111 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; [#uses=1 type=ptr]
  %112 = load i64, ptr %111, align 8, !alias.scope !1989, !noalias !1995, !noundef !3 ; [#uses=4 type=i64]
  %113 = ptrtoint ptr %110 to i64                 ; [#uses=3 type=i64]
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %110, i64 noundef %112)
          to label %116 unwind label %114, !noalias !1991

114:                                              ; preds = %108
  %115 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #26
          to label %.body unwind label %119, !noalias !1995

116:                                              ; preds = %108
  %117 = load i64, ptr %4, align 8, !range !62, !noalias !1991, !noundef !3 ; [#uses=1 type=i64]
  %118 = trunc nuw i64 %117 to i1                 ; [#uses=1 type=i1]
  br i1 %118, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35: ; preds = %116
  %.sroa.7.sroa.0.0.copyload14.i36 = load i64, ptr %5, align 8, !alias.scope !1996, !noalias !1997 ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1991
  br label %128

119:                                              ; preds = %114
  %120 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1995
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42: ; preds = %116
  %121 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; [#uses=1 type=ptr]
  %.sroa.643.24.copyload.i43 = load i64, ptr %121, align 8, !noalias !1991 ; [#uses=1 type=i64]
  %.sroa.040.0.copyload.i44 = load i64, ptr %5, align 8, !noalias !1995 ; [#uses=2 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1991
  %.not.i45 = icmp eq i64 %.sroa.040.0.copyload.i44, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not.i45, label %128, label %122

122:                                              ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1998
  store i64 %.sroa.040.0.copyload.i44, ptr %3, align 8, !noalias !2004
  %.sroa.5.sroa.6.0..sroa_idx30.i46 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; [#uses=1 type=ptr]
  store i64 %113, ptr %.sroa.5.sroa.6.0..sroa_idx30.i46, align 8, !noalias !2004
  %.sroa.5.sroa.7.0..sroa_idx34.i47 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; [#uses=1 type=ptr]
  store i64 %112, ptr %.sroa.5.sroa.7.0..sroa_idx34.i47, align 8, !noalias !2004
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 67, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
          to label %125 unwind label %123, !noalias !2005

123:                                              ; preds = %122
  %124 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %3) #26
          to label %.body unwind label %126, !noalias !2005

125:                                              ; preds = %122
  unreachable

126:                                              ; preds = %123
  %127 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !2005
  unreachable

.thread:                                          ; preds = %106
  store i64 -9223372036854775808, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %130

128:                                              ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35
  %.sroa.5.sroa.0.0.ph.i37 = phi i64 [ %.sroa.7.sroa.0.0.copyload14.i36, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %113, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ] ; [#uses=2 type=i64]
  %.sroa.5.sroa.6.0.ph.i38 = phi i64 [ %113, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %112, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ] ; [#uses=1 type=i64]
  %.sroa.5.sroa.7.0.ph.i39 = phi i64 [ %112, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %.sroa.643.24.copyload.i43, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ] ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.sroa.5.sroa.0.0.ph.i37, ptr %11, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; [#uses=1 type=ptr]
end_hunk_4
begin_hunk_5
  store i64 %.sroa.5.sroa.7.0.ph.i39, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.not13 = icmp eq i64 %.sroa.5.sroa.0.0.ph.i37, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not13, label %130, label %129

129:                                              ; preds = %128
  %.sroa.02.1 = select i1 %.not1075, ptr %11, ptr %13 ; [#uses=1 type=ptr]
  %spec.select = select i1 %.not11, ptr %.sroa.02.1, ptr %spec.store.select ; [#uses=1 type=ptr]
  br label %131

130:                                              ; preds = %.thread, %128
  %.not14 = and i1 %.not11, %.not1075             ; [#uses=1 type=i1]
  br i1 %.not14, label %.thread77, label %131

.thread77:                                        ; preds = %130
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit

131:                                              ; preds = %129, %130
  %.sroa.02.2 = phi ptr [ %spec.select, %129 ], [ %103, %130 ] ; [#uses=1 type=ptr]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.2)
          to label %132 unwind label %139

132:                                              ; preds = %131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.pre = load i64, ptr %11, align 8, !range !139, !alias.scope !2006 ; [#uses=1 type=i64]
  %133 = icmp eq i64 %.pre, -9223372036854775808  ; [#uses=1 type=i1]
  br i1 %133, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %134

134:                                              ; preds = %132
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %11)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %135

135:                                              ; preds = %134
  %136 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %11)
          to label %.body unwind label %137

137:                                              ; preds = %135
  %138 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %134
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %11)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %104

139:                                              ; preds = %131
  %140 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %11) #26
          to label %.body unwind label %148

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.thread77, %132, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %141 = load i64, ptr %13, align 8, !range !139, !alias.scope !2009, !noundef !3 ; [#uses=1 type=i64]
  %142 = icmp eq i64 %141, -9223372036854775808   ; [#uses=1 type=i1]
  br i1 %142, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit52, label %143

143:                                              ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %13)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i51 unwind label %144

144:                                              ; preds = %143
  %145 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %13)
          to label %common.resume unwind label %146

146:                                              ; preds = %144
  %147 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i51: ; preds = %143
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %13)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit52

end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  ret void

148:                                              ; preds = %139, %.body
  %149 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
end_hunk_6
