begin_hunk_0
  %86 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %8) #26
          to label %common.resume unwind label %91, !noalias !1975

87:                                               ; preds = %79
  %88 = load i64, ptr %7, align 8, !range !62, !noalias !1971, !noundef !3 ; [#uses=1 type=i64]
end_hunk_0
begin_hunk_1
_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i: ; preds = %87
  %.sroa.7.sroa.0.0.copyload14.i = load i64, ptr %8, align 8, !alias.scope !1976, !noalias !1977 ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1971
  %90 = freeze i64 %.sroa.7.sroa.0.0.copyload14.i ; [#uses=1 type=i64]
  br label %100

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1975
  unreachable

common.resume:                                    ; preds = %.body, %145, %85, %95
  %common.resume.op = phi { ptr, i32 } [ %146, %145 ], [ %96, %95 ], [ %86, %85 ], [ %.pn, %.body ] ; [#uses=1 type={ ptr, i32 }]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i: ; preds = %87
  %93 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; [#uses=1 type=ptr]
  %.sroa.643.24.copyload.i = load i64, ptr %93, align 8, !noalias !1971 ; [#uses=1 type=i64]
  %.sroa.040.0.copyload.i = load i64, ptr %8, align 8, !noalias !1975 ; [#uses=2 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1971
  %.not.i32 = icmp eq i64 %.sroa.040.0.copyload.i, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not.i32, label %100, label %94

94:                                               ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1978
  store i64 %.sroa.040.0.copyload.i, ptr %6, align 8, !noalias !1984
  %.sroa.5.sroa.6.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; [#uses=1 type=ptr]
end_hunk_1
begin_hunk_2
  %.sroa.5.sroa.7.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; [#uses=1 type=ptr]
  store i64 %83, ptr %.sroa.5.sroa.7.0..sroa_idx34.i, align 8, !noalias !1984
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 61, ptr noundef nonnull %6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #25
          to label %97 unwind label %95, !noalias !1985

95:                                               ; preds = %94
  %96 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %6) #26
          to label %common.resume unwind label %98, !noalias !1985

97:                                               ; preds = %94
  unreachable

98:                                               ; preds = %95
  %99 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1985
  unreachable
end_hunk_2
begin_hunk_3
.thread72:                                        ; preds = %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3geteECs9rVkZwOUgsI_13deltalake_aws.exit31
  store i64 -9223372036854775808, ptr %13, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %102

100:                                              ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i
  %.sroa.5.sroa.0.0.ph.i = phi i64 [ %90, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %84, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; [#uses=2 type=i64]
  %.sroa.5.sroa.6.0.ph.i = phi i64 [ %84, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %83, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; [#uses=1 type=i64]
  %.sroa.5.sroa.7.0.ph.i = phi i64 [ %83, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i ], [ %.sroa.643.24.copyload.i, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i ] ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
end_hunk_3
begin_hunk_4
  store i64 %.sroa.5.sroa.6.0.ph.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; [#uses=1 type=ptr]
  store i64 %.sroa.5.sroa.7.0.ph.i, ptr %.sroa.5.0..sroa_idx, align 8
  %101 = icmp eq i64 %.sroa.5.sroa.0.0.ph.i, -9223372036854775808 ; [#uses=2 type=i1]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %spec.select83 = select i1 %101, ptr null, ptr %13 ; [#uses=1 type=ptr]
  br label %102

102:                                              ; preds = %100, %.thread72
  %.not1075 = phi i1 [ %101, %100 ], [ true, %.thread72 ] ; [#uses=2 type=i1]
  %103 = phi ptr [ %spec.select83, %100 ], [ null, %.thread72 ] ; [#uses=1 type=ptr]
  %.not11 = icmp eq ptr %spec.store.select, null  ; [#uses=3 type=i1]
  %104 = select i1 %.not11, ptr %103, ptr %spec.store.select ; [#uses=1 type=ptr]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  invoke void @_RINvNtCs2pqxYH9ZEk8_3std3env6var_osReECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %10, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 22)
          to label %107 unwind label %105

.body:                                            ; preds = %136, %115, %124, %105, %140
  %.pn = phi { ptr, i32 } [ %141, %140 ], [ %125, %124 ], [ %106, %105 ], [ %116, %115 ], [ %137, %136 ] ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %13) #26
          to label %common.resume unwind label %149

105:                                              ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i, %102
  %106 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  br label %.body

107:                                              ; preds = %102
  %108 = load i64, ptr %10, align 8, !range !139, !noundef !3 ; [#uses=1 type=i64]
  %.not12 = icmp eq i64 %108, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not12, label %.thread, label %109

109:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1991
  %110 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; [#uses=1 type=ptr]
  %111 = load ptr, ptr %110, align 8, !alias.scope !1989, !noalias !1995, !nonnull !3, !noundef !3 ; [#uses=2 type=ptr]
  %112 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; [#uses=1 type=ptr]
  %113 = load i64, ptr %112, align 8, !alias.scope !1989, !noalias !1995, !noundef !3 ; [#uses=4 type=i64]
  %114 = ptrtoint ptr %111 to i64                 ; [#uses=3 type=i64]
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %111, i64 noundef %113)
          to label %117 unwind label %115, !noalias !1991

115:                                              ; preds = %109
  %116 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %5) #26
          to label %.body unwind label %120, !noalias !1995

117:                                              ; preds = %109
  %118 = load i64, ptr %4, align 8, !range !62, !noalias !1991, !noundef !3 ; [#uses=1 type=i64]
  %119 = trunc nuw i64 %118 to i1                 ; [#uses=1 type=i1]
  br i1 %119, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42, label %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35: ; preds = %117
  %.sroa.7.sroa.0.0.copyload14.i36 = load i64, ptr %5, align 8, !alias.scope !1996, !noalias !1997 ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1991
  br label %129

120:                                              ; preds = %115
  %121 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1995
  unreachable

_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42: ; preds = %117
  %122 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; [#uses=1 type=ptr]
  %.sroa.643.24.copyload.i43 = load i64, ptr %122, align 8, !noalias !1991 ; [#uses=1 type=i64]
  %.sroa.040.0.copyload.i44 = load i64, ptr %5, align 8, !noalias !1995 ; [#uses=2 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1991
  %.not.i45 = icmp eq i64 %.sroa.040.0.copyload.i44, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not.i45, label %129, label %123

123:                                              ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1998
  store i64 %.sroa.040.0.copyload.i44, ptr %3, align 8, !noalias !2004
  %.sroa.5.sroa.6.0..sroa_idx30.i46 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; [#uses=1 type=ptr]
  store i64 %114, ptr %.sroa.5.sroa.6.0..sroa_idx30.i46, align 8, !noalias !2004
  %.sroa.5.sroa.7.0..sroa_idx34.i47 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; [#uses=1 type=ptr]
  store i64 %113, ptr %.sroa.5.sroa.7.0..sroa_idx34.i47, align 8, !noalias !2004
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 67, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
          to label %126 unwind label %124, !noalias !2005

124:                                              ; preds = %123
  %125 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %3) #26
          to label %.body unwind label %127, !noalias !2005

126:                                              ; preds = %123
  unreachable

127:                                              ; preds = %124
  %128 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !2005
  unreachable

.thread:                                          ; preds = %107
  store i64 -9223372036854775808, ptr %11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %131

129:                                              ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35
  %.sroa.5.sroa.0.0.ph.i37 = phi i64 [ %.sroa.7.sroa.0.0.copyload14.i36, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %114, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ] ; [#uses=2 type=i64]
  %.sroa.5.sroa.6.0.ph.i38 = phi i64 [ %114, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %113, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ] ; [#uses=1 type=i64]
  %.sroa.5.sroa.7.0.ph.i39 = phi i64 [ %113, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.thread.i35 ], [ %.sroa.643.24.copyload.i43, %_RNvMNtCs6Po7BT7Nknu_5alloc6stringNtB2_6String9from_utf8.exit.i42 ] ; [#uses=1 type=i64]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.sroa.5.sroa.0.0.ph.i37, ptr %11, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; [#uses=1 type=ptr]
end_hunk_4
begin_hunk_5
  store i64 %.sroa.5.sroa.7.0.ph.i39, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.not13 = icmp eq i64 %.sroa.5.sroa.0.0.ph.i37, -9223372036854775808 ; [#uses=1 type=i1]
  br i1 %.not13, label %131, label %130

130:                                              ; preds = %129
  %.sroa.02.1 = select i1 %.not1075, ptr %11, ptr %13 ; [#uses=1 type=ptr]
  %spec.select = select i1 %.not11, ptr %.sroa.02.1, ptr %spec.store.select ; [#uses=1 type=ptr]
  br label %132

131:                                              ; preds = %.thread, %129
  %.not14 = and i1 %.not11, %.not1075             ; [#uses=1 type=i1]
  br i1 %.not14, label %.thread77, label %132

.thread77:                                        ; preds = %131
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit

132:                                              ; preds = %130, %131
  %.sroa.02.2 = phi ptr [ %spec.select, %130 ], [ %104, %131 ] ; [#uses=1 type=ptr]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.02.2)
          to label %133 unwind label %140

133:                                              ; preds = %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.pre = load i64, ptr %11, align 8, !range !139, !alias.scope !2006 ; [#uses=1 type=i64]
  %134 = icmp eq i64 %.pre, -9223372036854775808  ; [#uses=1 type=i1]
  br i1 %134, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, label %135

135:                                              ; preds = %133
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %11)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %136

136:                                              ; preds = %135
  %137 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %11)
          to label %.body unwind label %138

138:                                              ; preds = %136
  %139 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %135
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %11)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %105

140:                                              ; preds = %132
  %141 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %11) #26
          to label %.body unwind label %149

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.thread77, %133, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %142 = load i64, ptr %13, align 8, !range !139, !alias.scope !2009, !noundef !3 ; [#uses=1 type=i64]
  %143 = icmp eq i64 %142, -9223372036854775808   ; [#uses=1 type=i1]
  br i1 %143, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit52, label %144

144:                                              ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %13)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i51 unwind label %145

145:                                              ; preds = %144
  %146 = landingpad { ptr, i32 }
          cleanup                                 ; [#uses=1 type={ ptr, i32 }]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %13)
          to label %common.resume unwind label %147

147:                                              ; preds = %145
  %148 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i51: ; preds = %144
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %13)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit52

end_hunk_5
begin_hunk_6
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  ret void

149:                                              ; preds = %140, %.body
  %150 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; [#uses=0 type={ ptr, i32 }]
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable
end_hunk_6
