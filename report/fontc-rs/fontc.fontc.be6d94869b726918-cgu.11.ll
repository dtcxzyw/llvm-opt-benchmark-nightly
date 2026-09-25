Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc.fontc.be6d94869b726918-cgu.11?download=true
inline.NumInlined: 450
inline.NumDeleted: 157
begin_hunk_0_@_RNvMNtCsiaiXH4eeXUJ_6chrono8datetimeINtB2_8DateTimeNtNtNtB4_6offset3utc3UtcE15to_rfc3339_optsCsglDVE6xSTcO_5fontc:bb.a
.noexc15:                                         ; preds = %.noexc14
  br i1 %i.cm, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %.noexc15
  switch i8 %2, label %default.unreachable [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
    i8 5, label %bb.y
  ], !prof !445

default.unreachable:                              ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %.noexc23, %.noexc22, %.noexc21, %bb.x, %.noexc19, %.noexc18, %.noexc17, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !438
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 1, ptr %i.cn, align 1, !noalias !438
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %i.co, align 1, !noalias !438
  %i.cp = zext i1 %3 to i8
  store i8 %i.cp, ptr %i.b, align 1, !noalias !438
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 1, ptr %i.cq, align 1, !noalias !438
  %i.cr = invoke noundef zeroext i1 @_RINvMs0_NtNtCsiaiXH4eeXUJ_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef 0)
          to label %_RINvNtNtCsiaiXH4eeXUJ_6chrono6format10formatting13write_rfc3339NtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit unwind label %bb.c

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !438
  %i.cs = udiv i32 %storemerge.i, 1000000
  store i32 %i.cs, ptr %i.l, align 4, !noalias !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !438
  store ptr %i.l, ptr %i.k, align 8, !noalias !438
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !438
  %i.ct = invoke noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull @4, ptr noundef nonnull %i.k)
          to label %.noexc17 unwind label %bb.c

.noexc17:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !438
  br i1 %i.ct, label %bb.ae, label %bb.t

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !438
  %i.cu = udiv i32 %storemerge.i, 1000
  store i32 %i.cu, ptr %i.j, align 4, !noalias !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !438
  store ptr %i.j, ptr %i.i, align 8, !noalias !438
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !438
  %i.cv = invoke noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull @5, ptr noundef nonnull %i.i)
          to label %.noexc18 unwind label %bb.c

.noexc18:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !438
  br i1 %i.cv, label %bb.ae, label %bb.t

bb.w:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !438
  store ptr %i.m, ptr %i.h, align 8, !noalias !438
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !438
  %i.cw = invoke noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull @6, ptr noundef nonnull %i.h)
          to label %.noexc19 unwind label %bb.c

.noexc19:                                         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !438
  br i1 %i.cw, label %bb.ae, label %bb.t

bb.x:                                             ; preds = %bb.s
  %i.cx = icmp eq i32 %storemerge.i, 0
  br i1 %i.cx, label %bb.t, label %bb.z

bb.y:                                             ; preds = %bb.s
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %.noexc20 unwind label %bb.c

.noexc20:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cy = urem i32 %storemerge.i, 1000000
  %i.cz = udiv i32 %storemerge.i, 1000000
  %i.da = icmp eq i32 %i.cy, 0
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !438
  store i32 %i.cz, ptr %i.g, align 4, !noalias !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !438
  store ptr %i.g, ptr %i.f, align 8, !noalias !438
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !438
  %i.db = invoke noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull @4, ptr noundef nonnull %i.f)
          to label %.noexc21 unwind label %bb.c

.noexc21:                                         ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !438
  br i1 %i.db, label %bb.ae, label %bb.t

bb.ab:                                            ; preds = %bb.z
  %i.dc = urem i32 %storemerge.i, 1000
  %i.dd = udiv i32 %storemerge.i, 1000
  %i.de = icmp eq i32 %i.dc, 0
  br i1 %i.de, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !438
  store i32 %i.dd, ptr %i.e, align 4, !noalias !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !438
  store ptr %i.e, ptr %i.d, align 8, !noalias !438
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !438
  %i.df = invoke noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull @5, ptr noundef nonnull %i.d)
          to label %.noexc22 unwind label %bb.c

.noexc22:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !438
  br i1 %i.df, label %bb.ae, label %bb.t

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !438
  store ptr %i.m, ptr %i.c, align 8, !noalias !438
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !438
  %i.dg = invoke noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull @6, ptr noundef nonnull %i.c)
          to label %.noexc23 unwind label %bb.c

.noexc23:                                         ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !438
  br i1 %i.dg, label %bb.ae, label %bb.t

bb.ae:                                            ; preds = %.noexc23, %.noexc22, %.noexc21, %.noexc19, %.noexc18, %.noexc17, %.noexc15, %.noexc13, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !438
  br label %_RINvNtNtCsiaiXH4eeXUJ_6chrono6format10formatting13write_rfc3339NtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.thread

_RINvNtNtCsiaiXH4eeXUJ_6chrono6format10formatting13write_rfc3339NtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.thread: ; preds = %.noexc, %.noexc3, %.noexc5, %.noexc6, %.noexc9, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !438
  br label %bb.af

_RINvNtNtCsiaiXH4eeXUJ_6chrono6format10formatting13write_rfc3339NtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !438
  br i1 %i.cr, label %bb.af, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsglDVE6xSTcO_5fontc.exit, !prof !446

bb.af:                                            ; preds = %_RINvNtNtCsiaiXH4eeXUJ_6chrono6format10formatting13write_rfc3339NtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.thread, %_RINvNtNtCsiaiXH4eeXUJ_6chrono6format10formatting13write_rfc3339NtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 52, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
          to label %.noexc24 unwind label %bb.c

.noexc24:                                         ; preds = %bb.af
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvNtNtCsiaiXH4eeXUJ_6chrono6format10formatting13write_rfc3339NtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.ag:                                            ; preds = %bb.c
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ah:                                            ; preds = %bb.c
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsf3Ta7LF998c_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %.val = load i128, ptr %0, align 8
  %.val1 = load i128, ptr %1, align 8
  %i.a = icmp eq i128 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsf3Ta7LF998c_4core3anyNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @20, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCsglDVE6xSTcO_5fontc4argsNtB5_4ArgsINtNtCsf3Ta7LF998c_4core7convert7TryIntoNtCskL3QWxtyvYA_5fontc7OptionsE8try_into(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.f = load i8, ptr %i.e, align 1, !range !15, !alias.scope !464, !noundef !6
  %2 = shl nuw nsw i8 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 162
  %i.h = load i8, ptr %i.g, align 2, !range !465, !alias.scope !464, !noundef !6 ; 2 uses
  %i.i = shl nuw nsw i8 %i.h, 3
  %i.j = and i8 %i.i, 8
  %.sroa.0.126.i = or disjoint i8 %i.j, %2
  %.sroa.0.1.i = zext nneg i8 %.sroa.0.126.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 163
  %i.l = load i8, ptr %i.k, align 1, !range !465, !alias.scope !464, !noundef !6 ; 2 uses
  %i.m = and i8 %i.l, 1
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 9
  %.sroa.0.2.i = or disjoint i32 %i.o, %.sroa.0.1.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.q = load i8, ptr %i.p, align 4, !range !465, !alias.scope !464, !noundef !6 ; 2 uses
  %i.r = and i8 %i.q, 1
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 10
  %.sroa.0.3.i = or disjoint i32 %.sroa.0.2.i, %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 154
  %i.v = load i8, ptr %i.u, align 2, !range !15, !alias.scope !464, !noundef !6
  %i.w = shl nuw nsw i8 %i.v, 4
  %i.x = zext nneg i8 %i.w to i32
  %.sroa.0.4.i = or disjoint i32 %.sroa.0.3.i, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 155
  %i.z = load i8, ptr %i.y, align 1, !range !15, !alias.scope !464, !noundef !6
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 159
  %i.ad = load i8, ptr %i.ac, align 1, !range !15, !alias.scope !464, !noundef !6
  %i.ae = shl nuw nsw i8 %i.ad, 6
  %masksel.i = zext nneg i8 %i.ae to i32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ag = load i8, ptr %i.af, align 8, !range !15, !alias.scope !464, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  %.masked.i = or disjoint i32 %.sroa.0.4.i, %i.ab
  %3 = or i32 %.masked.i, %masksel.i
  %masksel25.i = select i1 %i.ah, i32 0, i32 128
  %.sroa.0.7.i = or i32 %3, %masksel25.i
  %or.cond.not.not.i = icmp eq i8 %i.h, 0
  %spec.select.i = select i1 %or.cond.not.not.i, i32 8, i32 0 ; 2 uses
  %or.cond7.not.not.i = icmp eq i8 %i.l, 0
  %i.ai = or disjoint i32 %spec.select.i, 512
  %.sroa.0.1.i12 = select i1 %or.cond7.not.not.i, i32 %i.ai, i32 %spec.select.i ; 2 uses
  %or.cond11.not.not.i = icmp eq i8 %i.q, 0
  %i.aj = or disjoint i32 %.sroa.0.1.i12, 1024
  %.sroa.0.2.i13 = select i1 %or.cond11.not.not.i, i32 %i.aj, i32 %.sroa.0.1.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.al = load i8, ptr %i.ak, align 8, !range !15, !noundef !6
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.e, label %bb.d

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bb, %.body ], [ %i.ao, %bb.c ]
  %.sroa.01.0 = phi i1 [ false, %.body ], [ true, %bb.c ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #19
          to label %bb.ac unwind label %bb.ab

bb.c:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %i.d, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !noundef !6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !6
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 6)
          to label %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsglDVE6xSTcO_5fontc.exit unwind label %bb.c

bb.f:                                             ; preds = %_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsglDVE6xSTcO_5fontc.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 157
  %i.au = load i8, ptr %i.at, align 1, !range !15, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 158
  %i.aw = load i8, ptr %i.av, align 2, !range !15, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.az, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.ba = load i64, ptr %i.b, align 8, !range !9, !alias.scope !466, !noalias !467, !noundef !6
  %.not.i = icmp eq i64 %i.ba, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufE7or_elseNCNvXs3_NtCsglDVE6xSTcO_5fontc4argsNtB1y_4ArgsINtNtB5_7convert7TryIntoNtCskL3QWxtyvYA_5fontc7OptionsE8try_intos_0EB1A_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 8)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufE7or_elseNCNvXs3_NtCsglDVE6xSTcO_5fontc4argsNtB1y_4ArgsINtNtB5_7convert7TryIntoNtCskL3QWxtyvYA_5fontc7OptionsE8try_intos_0EB1A_.exit unwind label %bb.i, !noalias !466

bb.i:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %.body unwind label %bb.j, !noalias !467

bb.j:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20, !noalias !467
  unreachable

_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path4joinReECsglDVE6xSTcO_5fontc.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

.body:                                            ; preds = %bb.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.b unwind label %bb.ab

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufE7or_elseNCNvXs3_NtCsglDVE6xSTcO_5fontc4argsNtB1y_4ArgsINtNtB5_7convert7TryIntoNtCskL3QWxtyvYA_5fontc7OptionsE8try_intos_0EB1A_.exit: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.0.7.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.0.2.i13, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.au, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.aw, ptr %.sroa.8.0..sroa_idx, align 1
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8, !range !9, !alias.scope !468, !noundef !6
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufE7or_elseNCNvXs3_NtCsglDVE6xSTcO_5fontc4argsNtB1y_4ArgsINtNtB5_7convert7TryIntoNtCskL3QWxtyvYA_5fontc7OptionsE8try_intos_0EB1A_.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %.body14 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %bb.l, %bb.n
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.bh, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #19
          to label %.body18 unwind label %bb.ab

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufE7or_elseNCNvXs3_NtCsglDVE6xSTcO_5fontc4argsNtB1y_4ArgsINtNtB5_7convert7TryIntoNtCskL3QWxtyvYA_5fontc7OptionsE8try_intos_0EB1A_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bm = load i64, ptr %i.bl, align 8, !range !9, !alias.scope !469, !noundef !6
  %i.bn = icmp eq i64 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit21, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i17 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body18 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i17: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit21 unwind label %bb.r

.body18:                                          ; preds = %bb.r, %bb.p, %.body14
  %.pn4 = phi { ptr, i32 } [ %eh.lpad-body15, %.body14 ], [ %i.bq, %bb.r ], [ %i.bo, %bb.p ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #19
          to label %.body22 unwind label %bb.ab

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i17
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body18

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit21: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit.i17
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit21
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body22 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc.exit21
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit unwind label %bb.v

.body22:                                          ; preds = %bb.v, %bb.s, %.body18
  %.pn6 = phi { ptr, i32 } [ %.pn4, %.body18 ], [ %i.bw, %bb.v ], [ %i.br, %bb.s ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !470, !noundef !6
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit, label %bb.u

bb.u:                                             ; preds = %.body22
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit unwind label %bb.ab

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body22

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsglDVE6xSTcO_5fontc.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !471, !noundef !6
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit27, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit27 unwind label %bb.x

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit: ; preds = %.body22, %bb.u, %bb.x
  %.pn8 = phi { ptr, i32 } [ %i.cb, %bb.x ], [ %.pn6, %bb.u ], [ %.pn6, %.body22 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ca) #19
          to label %common.resume unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit27: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc.exit, %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.cd = load i64, ptr %i.cc, align 8, !range !9, !alias.scope !472, !noundef !6
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc.exit, label %bb.y

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit27
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit29, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.z ], [ %.pn8, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit29 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i: ; preds = %bb.y
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsglDVE6xSTcO_5fontc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsglDVE6xSTcO_5fontc.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit27, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsglDVE6xSTcO_5fontc.exit.i
  ret void

bb.ab:                                            ; preds = %bb.ah, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit29, %bb.af, %bb.ae, %bb.ac, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit, %.body18, %.body14, %.body, %bb.b
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ac:                                            ; preds = %bb.b
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ci) #19
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  br i1 %.sroa.01.0, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #19
          to label %bb.ag unwind label %bb.ab

bb.af:                                            ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5Xr050g3D4S_3std4path7PathBufEECsglDVE6xSTcO_5fontc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cj) #19
          to label %bb.ae unwind label %bb.ab

bb.ag:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !473, !noundef !6
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsglDVE6xSTcO_5fontc4args14ValidatedRegexEEB11_.exit29, label %bb.ah

end_hunk_0
