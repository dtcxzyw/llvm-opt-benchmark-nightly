Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_locale_core-413afa2d20942937.icu_locale_core.6a0ef9680380a242-cgu.3?download=true
inline.NumInlined: 135
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs9_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords8calendarNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCshzWfHUSfYae_4core7convert4FromNtB5_17CalendarAlgorithmE4from:bb.a
  %i.a = icmp ne i8 %1, 13
  tail call void @llvm.assume(i1 %i.a)
  %i.b = add nsw i8 %1, -4
  %i.c = icmp sgt i8 %1, 3
  %narrow = select i1 %i.c, i8 %i.b, i8 9
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.p
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.k, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  switch i8 %1, label %bb.b [
    i8 -1, label %bb.p
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.l:                                             ; preds = %bb.a
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.p

bb.n:                                             ; preds = %bb.a
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.a, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.02.0 = phi i64 [ 6516594, %bb.o ], [ 28555852129069155, %bb.c ], [ 109304576241507, %bb.d ], [ 452706853220, %bb.e ], [ 27410203878650981, %bb.f ], [ 7163380306121618533, %bb.g ], [ 34184294983627367, %bb.h ], [ 131277594453352, %bb.i ], [ 121364659072617, %bb.j ], [ 8391166427803186530, %bb.a ], [ 13845283292017513, %bb.l ], [ 7310298144908009834, %bb.m ], [ 31069352974509424, %bb.n ], [ 27981941201204073, %bb.k ] ; 6 uses
  %.sroa.1058.0.extract.shift.i = lshr i64 %.sroa.02.0, 56
  %.sroa.957.0.extract.shift.i = lshr i64 %.sroa.02.0, 48
  %.sroa.856.0.extract.shift.i = lshr i64 %.sroa.02.0, 40
  %.sroa.755.0.extract.shift.i = lshr i64 %.sroa.02.0, 32
  %i.d = and i64 %.sroa.02.0, 2139062143
  %or.cond8.i = icmp eq i64 %i.d, 1702195828
  %i.e = or i64 %.sroa.856.0.extract.shift.i, %.sroa.755.0.extract.shift.i
  %i.f = or i64 %i.e, %.sroa.957.0.extract.shift.i
  %i.g = and i64 %i.f, 127
  %i.h = or i64 %i.g, %.sroa.1058.0.extract.shift.i
  %i.i = icmp eq i64 %i.h, 0
  %or.cond20.i = and i1 %or.cond8.i, %i.i
  %spec.select.i = select i1 %or.cond20.i, i64 255, i64 %.sroa.02.0
  store i8 -1, ptr %0, align 1, !alias.scope !381
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %spec.select.i, ptr %.sroa.476.0..sroa_idx.i, align 1, !alias.scope !381
  br label %bb.v

bb.q:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @12, i64 1), i64 7, i1 false)
  br label %bb.u

bb.r:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @13, i64 1), i64 7, i1 false)
  br label %bb.u

bb.s:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @14, i64 1), i64 7, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @15, i64 1), i64 7, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.020.0 = phi i8 [ 117, %bb.q ], [ 116, %bb.r ], [ 99, %bb.s ], [ 114, %bb.t ]
  store i64 27981941201204073, ptr %0, align 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.020.0, ptr %.sroa.433.0..sroa_idx, align 1
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicodeNtB4_7UnicodeNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !382 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = load i8, ptr %1, align 1, !range !5, !noundef !6
  %.not = icmp eq i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !range !5
  %i.j = icmp eq i8 %i.i, -1
  %or.cond = select i1 %.not, i1 %i.j, i1 false   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i8, ptr %i.k, align 1, !range !5    ; 2 uses
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.pre49 = load i8, ptr %.phi.trans.insert48, align 1, !range !5
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not31 = icmp eq i8 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.n = load i8, ptr %i.m, align 1, !range !5    ; 2 uses
  %.not32 = icmp eq i8 %i.n, -1
  %i.o = select i1 %.not31, i1 %.not32, i1 false
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.p = phi i8 [ %.pre49, %._crit_edge ], [ %i.n, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 1, ptr %i.q, align 8
  store i64 1, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 1, ptr %i.r, align 8
  %.not33 = icmp eq i8 %i.l, -1
  %.not34 = icmp eq i8 %i.p, -1
  %i.s = select i1 %.not33, i1 %.not34, i1 false
  br i1 %i.s, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  store i64 1, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.m, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8
  store i64 1, ptr %i.f, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 0, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 1, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.y, align 8
  call void @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core7convert10InfallibleNCNvXs9_B3_B1a_NtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0EB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = load i64, ptr %i.w, align 8, !noundef !6
  %i.aa = load i64, ptr %i.f, align 8, !range !383, !noundef !6
  %i.ab = load i64, ptr %i.x, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ac = trunc nuw i64 %i.aa to i1               ; 2 uses
  %i.ad = call i64 @llvm.uadd.sat.i64(i64 %i.z, i64 2) ; 2 uses
  %i.ae = add i64 %i.ab, 2
  %.sroa.75.0 = select i1 %i.ac, i64 %i.ae, i64 undef, !prof !384 ; 2 uses
  %i.af = icmp ult i64 %i.ab, -2
  %narrow = select i1 %i.ac, i1 %i.af, i1 false, !prof !384 ; 2 uses
  %.sroa.04.0 = zext i1 %narrow to i64
  store i64 %i.ad, ptr %i.q, align 8
  store i64 %.sroa.04.0, ptr %0, align 8
  store i64 %.sroa.75.0, ptr %i.r, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.ag = phi i64 [ 1, %bb.c ], [ %.sroa.75.0, %bb.f ] ; 2 uses
  %i.ah = phi i1 [ true, %bb.c ], [ %narrow, %bb.f ]
  %i.ai = phi i64 [ 1, %bb.c ], [ %i.ad, %bb.f ]  ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.aj, align 8
  store i64 1, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.al, align 8
  call void @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core7convert10InfallibleNCNvXs9_B3_B17_NtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0EB9_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = load i64, ptr %i.aj, align 8, !noundef !6
  %i.an = load i64, ptr %i.c, align 8, !range !383, !noundef !6
  %i.ao = load i64, ptr %i.ak, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = call i64 @llvm.uadd.sat.i64(i64 %i.am, i64 1) ; 2 uses
  %i.aq = trunc nuw i64 %i.an to i1
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = add nuw i64 %i.ao, 1
  %i.as = icmp eq i64 %i.ao, -1
  br i1 %i.as, label %bb.j, label %bb.k, !prof !385

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 %i.ap)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.au = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 %i.ap) ; 2 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = add i64 %i.ar, %i.ag                    ; 2 uses
  %i.aw = icmp uge i64 %i.av, %i.ag
  %.46 = zext i1 %i.aw to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.l
  %.sroa.714.0 = phi i64 [ %i.av, %bb.l ], [ undef, %bb.j ], [ undef, %bb.k ]
  %.sroa.013.0 = phi i64 [ %.46, %bb.l ], [ 0, %bb.j ], [ 0, %bb.k ]
  %.sroa.012.1 = phi i64 [ %i.au, %bb.l ], [ %i.at, %bb.j ], [ %i.au, %bb.k ]
  store i64 %.sroa.012.1, ptr %i.q, align 8
  store i64 %.sroa.013.0, ptr %0, align 8
  store i64 %.sroa.714.0, ptr %i.r, align 8
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvXsa_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB5_5ValueNtCs8xIf8eOPprX_9writeable9Writeable16writeable_borrow(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #7 !guid !388 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !5, !noundef !6
  %.not = icmp eq i8 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %.not5 = icmp eq i8 %i.c, -1
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %i.b, align 1, !alias.scope !389
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val, i1 false)
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = lshr i32 %i.e, 3
  %i.g = sub nuw nsw i32 8, %i.f
  %i.h = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi i64 [ %i.h, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  %i.i = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXse_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords9collationNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCshzWfHUSfYae_4core7convert4FromNtB5_18CollationCaseFirstE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #5 !guid !392 {
switch.lookup:
  %i.a = zext nneg i8 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXse_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords9collationNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCshzWfHUSfYae_4core7convert4FromNtB5_18CollationCaseFirstE4from, i64 %i.a
  %switch.load = load i64, ptr %switch.gep, align 8
  store i8 -1, ptr %0, align 1, !alias.scope !393
  %.sroa.476.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %switch.load, ptr %.sroa.476.0..sroa_idx.i, align 1, !alias.scope !393
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXss_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords9collationNtNtNtNtBf_10extensions7unicode5value5ValueINtNtCshzWfHUSfYae_4core7convert4FromNtB5_24CollationNumericOrderingE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 9)) %0, i1 noundef zeroext %1) unnamed_addr #5 !guid !394 {
.split7:
  %spec.select = select i1 %1, i64 435728179558, i64 255
  store i8 -1, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %spec.select, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs8xIf8eOPprX_9writeable3cmp15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs96xUavsWfLi_15icu_locale_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #8 !guid !399 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !400
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !400
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !400
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !400
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !400
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !400
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !400
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !400
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !400
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !400
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !8, !alias.scope !401, !noundef !6
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit

bb.h:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !401, !nonnull !6, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !401, !noundef !6 ; 3 uses
  %.not17.i = icmp ugt i64 %.sroa.0.05.i, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.0.05.i
  %.sroa.45.0.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 9) %.sroa.0.05.i, i64 %i.af) ; 2 uses
  %.sroa.3.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 range(i64 0, 9) %.sroa.0.05.i)
  %.sroa.02.0.i = select i1 %.not17.i, ptr inttoptr (i64 1 to ptr), ptr %i.ag
  store ptr %.sroa.02.0.i, ptr %0, align 8, !alias.scope !401, !captures !9
  store i64 %.sroa.3.0.i, ptr %i.ae, align 8, !alias.scope !401
  %i.ah = call i32 @memcmp(ptr nonnull %i.ad, ptr nonnull readonly %i.a, i64 %.sroa.45.0.i), !noalias !401 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
end_hunk_0
