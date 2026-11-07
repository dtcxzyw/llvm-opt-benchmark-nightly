Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/build_script_build-e29e400123a62933.build_script_build.cde6d1ac9bd5965b-cgu.0?download=true
inline.NumInlined: 281
inline.NumDeleted: 136
begin_hunk_0_@_RNSNvYNCINvNtCs2AWtUsOyxgP_3std2rt10lang_startuE0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCshG0APyZlEkV_18build_script_build:bb.a
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCshG0APyZlEkV_18build_script_build10gnu_target(ptr noalias nonnull align 8 %0, ptr %1, i64 %2) unnamed_addr #0 !guid !14 {
bb.a:
  switch i64 %2, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread [
    i64 20, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit
    i64 22, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit3
    i64 19, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit6
    i64 21, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit9
    i64 23, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit12
    i64 27, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit15
    i64 28, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18
  ]

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit: ; preds = %bb.a
  %i.a = load i128, ptr %1, align 1
  %i.b = xor i128 %i.a, 60414796381203573959280190656523810409
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 1
  %i.e = zext i32 %i.d to i128
  %i.f = xor i128 %i.e, 1668707181
  %i.g = or i128 %i.b, %i.f
  %i.h = icmp ne i128 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit3: ; preds = %bb.a
  %i.k = load i128, ptr %1, align 1
  %i.l = xor i128 %i.k, 158756513438400599023017395114370021496
  %i.m = getelementptr i8, ptr %1, i64 6
  %i.n = load i128, ptr %i.m, align 1
  %i.o = xor i128 %i.n, 132208603739054331002208150893852061741
  %i.p = or i128 %i.l, %i.o
  %i.q = icmp ne i128 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread

bb.b:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull @31, i64 13)
  br label %bb.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit6: ; preds = %bb.a
  %i.t = load i128, ptr %1, align 1
  %i.u = xor i128 %i.t, 60414796381203573959280190656523810409
  %i.v = getelementptr i8, ptr %1, i64 3
  %i.w = load i128, ptr %i.v, align 1
  %i.x = xor i128 %i.w, 156092920850465641770131489855640710454
  %i.y = or i128 %i.u, %i.x
  %i.z = icmp ne i128 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread

bb.c:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit3
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull @30, i64 15)
  br label %bb.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit9: ; preds = %bb.a
  %i.ac = load i128, ptr %1, align 1
  %i.ad = xor i128 %i.ac, 158756513438400599023017395114370021496
  %i.ae = getelementptr i8, ptr %1, i64 5
  %i.af = load i128, ptr %i.ae, align 1
  %i.ag = xor i128 %i.af, 156092920850465641770131489855640710452
  %i.ah = or i128 %i.ad, %i.ag
  %i.ai = icmp ne i128 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread

bb.d:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit6
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull @29, i64 16)
  br label %bb.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit12: ; preds = %bb.a
  %i.al = load i128, ptr %1, align 1
  %i.am = xor i128 %i.al, 152053459969594508935205559114107023969
  %i.an = getelementptr i8, ptr %1, i64 7
  %i.ao = load i128, ptr %i.an, align 1
  %i.ap = xor i128 %i.ao, 140079760076404512401264244169496686185
  %i.aq = or i128 %i.am, %i.ap
  %i.ar = icmp ne i128 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread

bb.e:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit9
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull @28, i64 18)
  br label %bb.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit15: ; preds = %bb.a
  %i.au = load i128, ptr %1, align 1
  %i.av = xor i128 %i.au, 158756716026357155193749572343993428338
  %i.aw = getelementptr i8, ptr %1, i64 11
  %i.ax = load i128, ptr %i.aw, align 1
  %i.ay = xor i128 %i.ax, 156092920852010644337305210175563393902
  %i.az = or i128 %i.av, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread

bb.f:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit12
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull @27, i64 21)
  br label %bb.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18: ; preds = %bb.a
  %i.bd = load i128, ptr %1, align 1
  %i.be = xor i128 %i.bd, 158756716026357155193749572343993428338
  %i.bf = getelementptr i8, ptr %1, i64 12
  %i.bg = load i128, ptr %i.bf, align 1
  %i.bh = xor i128 %i.bg, 144156119375368211845075693186889772651
  %i.bi = or i128 %i.be, %i.bh
  %i.bj = icmp ne i128 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread

bb.g:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit15
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull @26, i64 17)
  br label %bb.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread: ; preds = %bb.a, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit3, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit6, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit9, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit12, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit15, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr %1, i64 %2)
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18
  tail call void @_RNvXsB_NtCscdodAO9FK5_5alloc6stringeNtB5_8ToString9to_stringCs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %0, ptr nonnull @25, i64 18)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCshG0APyZlEkV_18build_script_build.exit18.thread, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCshG0APyZlEkV_18build_script_build12make_command(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr %1, i64 range(i64 4, 13) %2, ptr %3, i64 %4, ptr %5, i64 %6) unnamed_addr #0 personality ptr @rust_eh_personality !guid !17 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [200 x i8], align 8               ; 6 uses
  call void @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3newReECsedfi03xVdHO_2cc(ptr nonnull sret([200 x i8]) align 8 %i.n, ptr %1, i64 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %4, ptr %i.o, align 8
  %i.p = invoke { ptr, i64 } @_RNvXNtCs4NRVxsYgnAr_4core7convertRNtNtCs2AWtUsOyxgP_3std4path4PathINtB2_5AsRefBw_E6as_refCs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.c)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  invoke void @_RNvMs_NtNtNtNtCs2AWtUsOyxgP_3std3sys7process4unix6commonNtB4_7Command3cwd(ptr nonnull align 8 %i.n, ptr %i.q, i64 %i.r)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.aj, %bb.ac, %bb.c
  %.pn9 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %.pn7, %bb.ac ], [ %.pn7, %bb.aj ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.n) #12
          to label %bb.ak unwind label %bb.s

bb.c:                                             ; preds = %.noexc, %bb.a, %bb.ah, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs2AWtUsOyxgP_3std3env3varReECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull sret([32 x i8]) align 8 %i.m, ptr nonnull @32, i64 15)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = invoke align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsedfi03xVdHO_2cc(ptr nonnull align 8 %i.n, ptr nonnull @35, i64 2)
          to label %bb.ag unwind label %bb.ad

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke void @_RINvNtCs2AWtUsOyxgP_3std3env3varReECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull @33, i64 9)
          to label %bb.i unwind label %bb.h

.body.thread:                                     ; preds = %bb.w, %.body, %bb.af
  %.pn5 = phi { ptr, i32 } [ %i.be, %bb.af ], [ %i.ay, %.body ], [ %i.ar, %bb.w ] ; 2 uses
  %.sroa.0.0 = phi i8 [ %.sroa.0.120, %bb.af ], [ %.sroa.0.119, %.body ], [ %.sroa.0.119, %bb.w ]
  %7 = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %7, label %.thread, label %bb.ac

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.j, align 8
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %.thread21, label %bb.j

.thread21:                                        ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr nonnull align 8 %i.i)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.i) #12
          to label %bb.p unwind label %bb.s

bb.l:                                             ; preds = %bb.j
  invoke void @_RINvMNtNtCs4NRVxsYgnAr_4core3fmt2rtNtB3_8Argument11new_displayNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull sret([16 x i8]) align 8 %i.e, ptr nonnull align 8 %i.l)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.ad = invoke { ptr, ptr } @_RINvMs2_NtCs4NRVxsYgnAr_4core3fmtNtB6_9Arguments3newKj5_Kj2_ECs56awJiKzoFA_9jobserver(ptr nonnull @34, ptr nonnull align 8 %i.g)
          to label %bb.n unwind label %bb.k       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ad, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ae, ptr %i.b, align 8, !noalias !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !18
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %.not.i = icmp eq i64 %i.ai, 0
  %i.aj = lshr i64 %i.ah, 1
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.ae
  invoke void @_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs56awJiKzoFA_9jobserver(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr %.sroa.0.0.i, i64 %i.aj, ptr nonnull align 8 %i.b)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.i)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.q, %bb.k
  %.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %i.ab, %bb.k ] ; 2 uses
  %i.ak = load i64, ptr %i.j, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.thread, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  %.pre = load i64, ptr %i.j, align 8
  %i.an = trunc nuw i64 %.pre to i1
  br i1 %i.an, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.aj, %.thread, %bb.af, %bb.t, %bb.k, %bb.b
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.t:                                             ; preds = %bb.p
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.j) #12
          to label %.thread unwind label %bb.s

bb.u:                                             ; preds = %.thread21, %bb.r
  %.sroa.0.120 = phi i8 [ 0, %.thread21 ], [ 1, %bb.r ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.j)
          to label %bb.v unwind label %bb.af

bb.v:                                             ; preds = %bb.u, %bb.r
  %.sroa.0.119 = phi i8 [ %.sroa.0.120, %bb.u ], [ 1, %bb.r ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @33, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 9, ptr %i.ap, align 8
  %i.aq = invoke { ptr, i64 } @_RNvXNtCs4NRVxsYgnAr_4core7convertReINtB2_5AsRefNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE6as_refCs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.a)
          to label %bb.x unwind label %bb.w       ; 2 uses

bb.w:                                             ; preds = %bb.x, %bb.v
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.d) #12
          to label %.body.thread unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i = load ptr, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val2.i = load i64, ptr %i.au, align 8
  %i.av = extractvalue { ptr, i64 } %i.aq, 1
  %i.aw = extractvalue { ptr, i64 } %i.aq, 0
  invoke void @_RNvMs_NtNtNtCs2AWtUsOyxgP_3std3sys7process3envNtB4_10CommandEnv3set(ptr nonnull align 8 %i.as, ptr %i.aw, i64 %i.av, ptr %.val.i, i64 %.val2.i)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %bb.x
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.d)
          to label %bb.aa unwind label %.body

bb.z:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

.body:                                            ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %8 = trunc nuw i8 %.sroa.0.119 to i1
  br i1 %8, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.l)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %.thread, %bb.ad, %.body.thread
  %.pn7 = phi { ptr, i32 } [ %i.bb, %bb.ad ], [ %.pn516, %.thread ], [ %.pn5, %.body.thread ] ; 2 uses
  %i.az = load i64, ptr %i.m, align 8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.b, label %bb.aj

bb.ad:                                            ; preds = %bb.ag, %bb.ab, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.aa, %bb.ab, %bb.ag
  %i.bc = load i64, ptr %i.m, align 8
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.ah, label %bb.ai

bb.af:                                            ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.k) #12
          to label %.body.thread unwind label %bb.s

.thread:                                          ; preds = %bb.h, %bb.t, %bb.p, %.body.thread
  %.pn516 = phi { ptr, i32 } [ %.pn5, %.body.thread ], [ %i.x, %bb.h ], [ %.pn, %bb.t ], [ %.pn, %bb.p ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.l) #12
          to label %bb.ac unwind label %bb.s

bb.ag:                                            ; preds = %bb.f
  %i.bf = invoke align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECsedfi03xVdHO_2cc(ptr align 8 %i.v, ptr %5, i64 %6)
          to label %bb.ae unwind label %bb.ad     ; 0 uses

bb.ah:                                            ; preds = %bb.ae
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.m)
          to label %bb.ai unwind label %bb.c

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.n, i64 200, i1 false)
  ret void

bb.aj:                                            ; preds = %bb.ac
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs2AWtUsOyxgP_3std3env8VarErrorEECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.m) #12
          to label %bb.b unwind label %bb.s

bb.ak:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn9
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_RNvCshG0APyZlEkV_18build_script_build16copy_recursively(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !27 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [176 x i8], align 8               ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 13 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull sret([176 x i8]) align 8 %i.c, ptr %2, i64 %3)
  %i.n = load i64, ptr %i.c, align 8
  %.not76 = icmp eq i64 %i.n, 2
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECs70aAUIZqZWH_15find_msvc_tools(ptr nonnull align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not76, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = call ptr @_RINvNtCs2AWtUsOyxgP_3std2fs14create_dir_allRNtNtB4_4path4PathECsedfi03xVdHO_2cc(ptr %2, i64 %3)
  %i.p = call ptr @_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCs56awJiKzoFA_9jobserver(ptr %i.o) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !noalias !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.q, align 8, !noalias !28
  %i.r = call { ptr, i64 } @_RNvXNtCs4NRVxsYgnAr_4core7convertRNtNtCs2AWtUsOyxgP_3std4path4PathINtB2_5AsRefBw_E6as_refCs56awJiKzoFA_9jobserver(ptr nonnull align 8 %i.b), !noalias !28 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  call void @_RNvNtNtCs2AWtUsOyxgP_3std3sys2fs8read_dir(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr %i.s, i64 %i.t), !noalias !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i8, ptr %i.u, align 8, !noalias !28 ; 2 uses
  %.sink1.i = load ptr, ptr %i.a, align 8, !noalias !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = icmp eq i8 %i.v, 2
  br i1 %i.w, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.x = call ptr @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs56awJiKzoFA_9jobserver(ptr nonnull %i.p, ptr nonnull align 8 @39)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECshG0APyZlEkV_18build_script_build.exit21

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECshG0APyZlEkV_18build_script_build.exit21: ; preds = %bb.ba, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build.exit35, %bb.k, %bb.j, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.y, %bb.e ], [ null, %bb.k ], [ %i.x, %bb.d ], [ null, %bb.j ], [ %.sroa.0.2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build.exit35 ], [ %.sroa.0.2, %bb.ba ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.y = call ptr @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs56awJiKzoFA_9jobserver(ptr %.sink1.i, ptr nonnull align 8 @44)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECshG0APyZlEkV_18build_script_build.exit21

bb.f:                                             ; preds = %bb.c
  store ptr %.sink1.i, ptr %i.m, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i8 %i.v, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix8DirEntryECshG0APyZlEkV_18build_script_build.exit.i, %bb.f
  invoke void @_RNvXsz_NtCs2AWtUsOyxgP_3std2fsNtB5_7ReadDirNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr nonnull sret([48 x i8]) align 8 %i.l, ptr nonnull align 8 %i.m)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body28:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak, %bb.ag, %.body.thread70
  %.pn13 = phi { ptr, i32 } [ %.pn11, %.body.thread70 ], [ %i.bu, %bb.ag ], [ %i.bz, %bb.ak ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ao = load ptr, ptr %i.m, align 8
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECshG0APyZlEkV_18build_script_build.exit

bb.g:                                             ; preds = %.body28
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirE9drop_slowBN_(ptr nonnull align 8 %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECshG0APyZlEkV_18build_script_build.exit unwind label %bb.am

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix8DirEntryECshG0APyZlEkV_18build_script_build.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix8DirEntryECshG0APyZlEkV_18build_script_build.exit.i31, %bb.l
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build.exit
  %i.ar = load i64, ptr %i.l, align 8
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.059.0.copyload = load ptr, ptr %i.aa, align 8 ; 2 uses
  %.sroa.260.0.copyload = load ptr, ptr %.sroa.260.0..sroa_idx, align 8 ; 2 uses
  %i.at = icmp eq ptr %.sroa.059.0.copyload, null
  br i1 %i.at, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.m, align 8
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECshG0APyZlEkV_18build_script_build.exit21

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std3sys2fs4unix12InnerReadDirE9drop_slowBN_(ptr nonnull align 8 %i.m)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs7ReadDirECshG0APyZlEkV_18build_script_build.exit21

bb.l:                                             ; preds = %bb.i
  %i.ax = invoke ptr @_RNvXsq_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs56awJiKzoFA_9jobserver(ptr %.sroa.260.0.copyload, ptr nonnull align 8 @43)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build.exit35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.352.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.361.0..sroa_idx, i64 24, i1 false)
  store ptr %.sroa.059.0.copyload, ptr %i.k, align 8
  store ptr %.sroa.260.0.copyload, ptr %.sroa.251.0..sroa_idx, align 8
  invoke void @_RNvMsA_NtCs2AWtUsOyxgP_3std2fsNtB5_8DirEntry9file_type(ptr nonnull sret([16 x i8]) align 8 %i.j, ptr nonnull align 8 %i.k)
          to label %bb.n unwind label %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body.thread70:                                   ; preds = %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %.body39, %.body.thread
  %.pn11 = phi { ptr, i32 } [ %.pn.i, %bb.z ], [ %.pn, %.body39 ], [ %eh.lpad-body69, %.body.thread ], [ %lpad.loopexit.split-lp180, %.body.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std2fs8DirEntryECshG0APyZlEkV_18build_script_build(ptr align 8 %i.k) #12
          to label %.body28 unwind label %bb.am

bb.n:                                             ; preds = %bb.m
  %i.ay = load i32, ptr %i.j, align 8, !noalias !29
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %bb.o, label %bb.p

end_hunk_0
