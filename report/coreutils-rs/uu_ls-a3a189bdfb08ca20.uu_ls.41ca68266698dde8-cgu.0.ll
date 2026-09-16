Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB1m_11sort_by_keybNCNvB1o_12sort_entriess4_0E0EB1o_:.lr.ph
  call void @llvm.assume(i1 %i.ae)
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %i.j, align 8, !alias.scope !1105, !noalias !1104
  store i8 3, ptr %i.c, align 8, !alias.scope !1105, !noalias !1104
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #37, !noalias !1104
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i

_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1104
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i

bb.j:                                             ; preds = %bb.f
  %.sroa.71.0.copyload.i.i = load i32, ptr %.sroa.71.0..sroa_idx.i.i, align 8, !noalias !1106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1102
  %i.ag = and i32 %.sroa.71.0.copyload.i.i, 61440
  %i.ah = icmp eq i32 %i.ag, 16384
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i

bb.k:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i
  %i.ai = load i32, ptr %i.k, align 4, !noundef !4
  %i.aj = and i32 %i.ai, 61440
  %i.ak = icmp eq i32 %i.aj, 16384
  br label %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i

_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i: ; preds = %bb.k, %bb.j, %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i
  %.sroa.02.0.in.i.i = phi i1 [ %i.ak, %bb.k ], [ false, %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i ], [ %i.ah, %bb.j ]
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -8
  %i.am = load i8, ptr %i.al, align 8, !range !11, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -80 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !range !9, !noundef !4 ; 2 uses
  %.not.i.i.i10.i = icmp eq i32 %i.ap, 2
  br i1 %.not.i.i.i10.i, label %bb.m, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.aq = call fastcc noundef nonnull align 4 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8FileTypeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData9file_type0E0zEB2m_(ptr noundef nonnull align 4 %i.ao, ptr noundef nonnull align 8 %i.q) #37 ; 0 uses
  %.pre.i.i12.i = load i32, ptr %i.ao, align 8, !range !30
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i: ; preds = %bb.m, %bb.l
  %i.ar = phi i32 [ %i.ap, %bb.l ], [ %.pre.i.i12.i, %bb.m ]
  %i.as = trunc nuw i32 %i.ar to i1
  br i1 %i.as, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i, %_RNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_0B3_.exit.i
  %.sroa.03.0.in.i1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -296
  %.sroa.03.0.i2.i = load ptr, ptr %.sroa.03.0.in.i1.i, align 8, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i3.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -288
  %.sroa.3.0.i4.i = load i64, ptr %.sroa.3.0.in.i3.i, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1107
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i2.i, i64 noundef %.sroa.3.0.i4.i) #37, !noalias !1108
  %i.at = load i64, ptr %i.b, align 8, !range !8, !noalias !1107, !noundef !4
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %i.l, align 8, !noalias !1107, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1109
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 3
  switch i64 %i.ax, label %default.unreachable [
    i64 2, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i
    i64 3, label %bb.p
    i64 0, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i
    i64 1, label %bb.q
  ], !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp ult ptr %i.av, inttoptr (i64 188978561024 to ptr)
  %i.az = and i64 %i.aw, 1095216660480
  %i.ba = icmp ne i64 %i.az, 1095216660480
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 %i.ba)
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr i8, ptr %i.av, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  store ptr %i.bb, ptr %i.m, align 8, !alias.scope !1110, !noalias !1109
  store i8 3, ptr %i.a, align 8, !alias.scope !1110, !noalias !1109
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #37, !noalias !1109
  br label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i

_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1109
  br label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit

bb.r:                                             ; preds = %bb.n
  %.sroa.71.0.copyload.i6.i = load i32, ptr %.sroa.71.0..sroa_idx.i5.i, align 8, !noalias !1111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1107
  %i.bc = and i32 %.sroa.71.0.copyload.i6.i, 61440
  %i.bd = icmp eq i32 %i.bc, 16384
  br label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit

bb.s:                                             ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i11.i
  %i.be = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -76
  %i.bf = load i32, ptr %i.be, align 4, !noundef !4
  %i.bg = and i32 %i.bf, 61440
  %i.bh = icmp eq i32 %i.bg, 16384
  br label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit: ; preds = %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i, %bb.r, %bb.s
  %.sroa.02.0.in.i7.i = phi i1 [ %i.bh, %bb.s ], [ false, %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i8.i ], [ %i.bd, %bb.r ]
  %i.bi = xor i1 %.sroa.02.0.in.i7.i, true
  %i.bj = and i1 %.sroa.02.0.in.i.i, %i.bi
  br i1 %i.bj, label %bb.c, label %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit._crit_edge

_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit._crit_edge: ; preds = %bb.c, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i1, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(304) %i.e, i64 304, i1 false), !noalias !1112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keybNCNvB1a_12sort_entriess4_0E0EB1a_.exit

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared9smallsort11insert_tailNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB18_11sort_by_keybNCNvB1a_12sort_entriess4_0E0EB1a_.exit: ; preds = %bb.a, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit._crit_edge
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 304 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.f
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift4sortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBW_11sort_by_keybNCNvBY_12sort_entriess4_0E0EBY_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 30340039594917026) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [176 x i8], align 8               ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [176 x i8], align 8               ; 7 uses
  %i.i = alloca [66 x i8], align 1                ; 4 uses
  %i.j = alloca [528 x i8], align 8               ; 4 uses
  %i.k = icmp samesign ult i64 %1, 2
  br i1 %i.k, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = udiv i64 4611686018427387904, %1
  %i.m = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.m, 0
  %i.n = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.l, %i.n         ; 2 uses
  %i.o = icmp samesign ult i64 %1, 4097
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i64 @_RNvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1) #37
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = lshr i64 %1, 1
  %i.r = sub nuw nsw i64 %1, %i.q
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.p, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.71.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.71.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.71.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.71.0..sroa_idx.i5.i50 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i129 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bf, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.bf ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hq, %bb.bf ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ho, %bb.bf ] ; 3 uses
  %i.aa = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit
  %.sroa.021.0 = phi i8 [ %i.bk, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.ab = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.ab, label %.lr.ph91, label %._crit_edge

.lr.ph91:                                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.ad = sub nuw nsw i64 %1, %.sroa.09.0         ; 11 uses
  %i.ae = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.ad, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i64 %i.ad, 2
  br i1 %i.af, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.ah = call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %i.ag, ptr noundef nonnull align 8 %i.ae) #40, !noalias !1177, !inline_history !1116 ; 2 uses
  %.not98 = icmp eq i64 %i.ad, 2                  ; 2 uses
  br i1 %i.ah, label %.preheader, label %.preheader72

.preheader72:                                     ; preds = %bb.k
  br i1 %.not98, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not98, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127, label %.lr.ph85

.lr.ph:                                           ; preds = %.preheader72, %bb.l
  %.sroa.01.0.i.i81 = phi i64 [ %i.am, %bb.l ], [ 2, %.preheader72 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %.sroa.01.0.i.i81
  %i.aj = getelementptr [304 x i8], ptr %i.ae, i64 %.sroa.01.0.i.i81
  %i.ak = getelementptr i8, ptr %i.aj, i64 -304
  %i.al = call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull align 8 %i.ak) #40, !noalias !1177, !inline_history !1116
  br i1 %i.al, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.am = add nuw i64 %.sroa.01.0.i.i81, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.ad
  br i1 %exitcond.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, label %.lr.ph

.lr.ph85:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i84 = phi i64 [ %i.ar, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %.sroa.01.1.i.i84
  %i.ao = getelementptr [304 x i8], ptr %i.ae, i64 %.sroa.01.1.i.i84
  %i.ap = getelementptr i8, ptr %i.ao, i64 -304
  %i.aq = call fastcc noundef zeroext i1 @_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_(ptr noundef nonnull align 8 %i.an, ptr noundef nonnull align 8 %i.ap) #40, !noalias !1177, !inline_history !1116
  br i1 %i.aq, label %bb.m, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i

bb.m:                                             ; preds = %.lr.ph85
  %i.ar = add nuw i64 %.sroa.01.1.i.i84, 1        ; 2 uses
  %exitcond105.not = icmp eq i64 %i.ar, %i.ad
  br i1 %exitcond105.not, label %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i, label %.lr.ph85

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph85
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i84, %.lr.ph85 ], [ %i.ad, %bb.m ], [ %.sroa.01.0.i.i81, %.lr.ph ], [ %i.ad, %bb.l ] ; 4 uses
  %i.as = icmp samesign ule i64 %.sroa.0.0.i.i, %i.ad
  call void @llvm.assume(i1 %i.as)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127: ; preds = %.preheader
  br i1 %.not5.i129, label %bb.i, label %.thread130

_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread: ; preds = %.preheader72
  br i1 %.not5.i123, label %bb.i, label %.thread

bb.n:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i
  br i1 %i.ah, label %.thread130, label %.thread

bb.o:                                             ; preds = %bb.i
  %..i36 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 30340039594917026) %i.ad, i64 %.sroa.01.0)
  %i.at = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 30340039594917026) %i.ad, i64 16) ; 2 uses
  call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keybNCNvB17_12sort_entriess4_0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.ae, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1116
  %i.au = shl nuw nsw i64 %..i35, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit

.thread:                                          ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread, %bb.j, %.thread130, %bb.n
  %.sroa.0.0.i.i6770 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i124132, %.thread130 ], [ %i.ad, %bb.j ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread ]
  %i.aw = shl nuw nsw i64 %.sroa.0.0.i.i6770, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit

.thread130:                                       ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127, %bb.n
  %.sroa.0.0.i.i124132 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs6JMX4GRUq9U_4core5slice4sort6shared17find_existing_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB12_11sort_by_keybNCNvB14_12sort_entriess4_0E0EB14_.exit.i.thread127 ] ; 3 uses
  %i.ay = lshr i64 %.sroa.0.0.i.i124132, 1        ; 4 uses
  %i.az = getelementptr inbounds nuw [304 x i8], ptr %i.ae, i64 %.sroa.0.0.i.i124132
  %i.ba = sub nsw i64 0, %i.ay
  %i.bb = getelementptr inbounds [304 x i8], ptr %i.az, i64 %i.ba
  call fastcc void @_RINvNvMNtCs6JMX4GRUq9U_4core5sliceSp7reverse7revswapNtCs5EcwQX7phGK_5uu_ls8PathDataEBQ_(ptr noalias nofree noundef nonnull align 8 %i.ae, i64 noundef %i.ay, ptr noalias nofree noundef nonnull align 8 %i.bb, i64 noundef %i.ay, i64 noundef %i.ay) #40, !noalias !1177
  br label %.thread

_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift10create_runNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB13_11sort_by_keybNCNvB15_12sort_entriess4_0E0EB15_.exit: ; preds = %bb.o, %bb.p, %.thread
  %.sroa.0.0.i32 = phi i64 [ %i.ax, %.thread ], [ %i.av, %bb.p ], [ %i.at, %bb.o ] ; 2 uses
  %i.bc = lshr i64 %.sroa.023.0, 1
  %i.bd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.be = sub nsw i64 %factor, %i.bc
  %i.bf = add nuw nsw i64 %i.bd, %factor
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  br label %bb.g

bb.q:                                             ; preds = %.lr.ph91, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit
  %.sroa.02.190 = phi i64 [ %.sroa.02.0, %.lr.ph91 ], [ %i.bl, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 2 uses
  %.sroa.023.189 = phi i64 [ %.sroa.023.0, %.lr.ph91 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 4 uses
  %i.bl = add i64 %.sroa.02.190, -1               ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit, %bb.q, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.189, %bb.q ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.190, %bb.q ], [ 1, %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bp, align 1
  br i1 %i.aa, label %bb.bf, label %bb.bg

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bl
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 3 uses
  %i.bs = lshr i64 %i.br, 1                       ; 8 uses
  %i.bt = lshr i64 %.sroa.023.189, 1              ; 6 uses
  %i.bu = add nuw i64 %i.bs, %i.bt                ; 4 uses
  %i.bv = sub i64 %.sroa.09.0, %i.bu
  %i.bw = getelementptr inbounds nuw [304 x i8], ptr %0, i64 %i.bv ; 6 uses
  %i.bx = icmp samesign ugt i64 %i.bu, %3
  %i.by = trunc i64 %.sroa.023.189 to i1
  %i.bz = or i64 %i.br, %.sroa.023.189
  %i.ca = trunc i64 %i.bz to i1
  %or.cond3.i = or i1 %i.bx, %i.ca
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = trunc i64 %i.br to i1
  br i1 %i.cb, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cc = shl nuw nsw i64 %i.bu, 1
  br label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5drift13logical_mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB16_11sort_by_keybNCNvB18_12sort_entriess4_0E0EB18_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.by, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cd = or i64 %i.bs, 1
  %i.ce = call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keybNCNvB17_12sort_entriess4_0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 30340039594917026) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i32 noundef %i.ch, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1117
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw [304 x i8], ptr %i.bw, i64 %i.bs
  %i.cj = or i64 %i.bt, 1
  %i.ck = call range(i64 9, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  call void @_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable9quicksort9quicksortNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSB15_11sort_by_keybNCNvB17_12sort_entriess4_0E0EB17_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 30340039594917026) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 30340039594917026) %3, i32 noundef %i.cn, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #36, !inline_history !1117
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.co = icmp eq i64 %i.bs, 0
  %i.cp = icmp eq i64 %i.bt, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBX_11sort_by_keybNCNvBZ_12sort_entriess4_0E0EBZ_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bt, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cq, label %_RINvNtNtNtNtCs6JMX4GRUq9U_4core5slice4sort6stable5merge5mergeNtCs5EcwQX7phGK_5uu_ls8PathDataNCINvMNtCs7tKScEop1B6_5alloc5sliceSBX_11sort_by_keybNCNvBZ_12sort_entriess4_0E0EBZ_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [304 x i8], ptr %i.bw, i64 %i.bs ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bs, %i.bt  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cr, ptr %i.bw
  %i.cs = mul nuw nsw i64 %..i.i, 304             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !1178
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62
  %i.cu = phi ptr [ %i.ez, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62 ], [ %i.ct, %.critedge.i ] ; 6 uses
  %i.cv = phi ptr [ %i.ex, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62 ], [ %i.cr, %.critedge.i ] ; 6 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cy, %_RNCINvMNtCs7tKScEop1B6_5alloc5sliceSNtCs5EcwQX7phGK_5uu_ls8PathData11sort_by_keybNCNvBA_12sort_entriess4_0E0BA_.exit62 ], [ %i.ac, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -304 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -304 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -304 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.da = load i8, ptr %i.cz, align 8, !range !11, !noalias !1179, !noundef !4
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.preheader.i
  %i.dc = getelementptr inbounds i8, ptr %i.cu, i64 -80 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !range !9, !noalias !1179, !noundef !4 ; 2 uses
  %.not.i.i.i.i59 = icmp eq i32 %i.dd, 2
  br i1 %.not.i.i.i.i59, label %bb.aa, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60, !prof !7

bb.aa:                                            ; preds = %bb.z
  %i.de = call fastcc noundef nonnull align 4 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8FileTypeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData9file_type0E0zEB2m_(ptr noundef nonnull align 4 %i.dc, ptr noundef nonnull align 8 %i.cx) #37, !noalias !1179 ; 0 uses
  %.pre.i.i.i61 = load i32, ptr %i.dc, align 8, !range !30, !noalias !1179
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60: ; preds = %bb.aa, %bb.z
  %i.df = phi i32 [ %i.dd, %bb.z ], [ %.pre.i.i.i61, %bb.aa ]
  %i.dg = trunc nuw i32 %i.df to i1
  br i1 %i.dg, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i.i60, %.preheader.i
  %.sroa.03.0.in.i.i38 = getelementptr inbounds i8, ptr %i.cu, i64 -296
  %.sroa.03.0.i.i39 = load ptr, ptr %.sroa.03.0.in.i.i38, align 8, !noalias !1179, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i40 = getelementptr inbounds i8, ptr %i.cu, i64 -288
  %.sroa.3.0.i.i41 = load i64, ptr %.sroa.3.0.in.i.i40, align 8, !noalias !1179, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1180
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.i.i39, i64 noundef %.sroa.3.0.i.i41) #37, !noalias !1181
  %i.dh = load i64, ptr %i.d, align 8, !range !8, !noalias !1180, !noundef !4
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dj = load ptr, ptr %i.w, align 8, !noalias !1180, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1182
  %i.dk = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dl = and i64 %i.dk, 3
  switch i64 %i.dl, label %.unreachabledefault [
    i64 2, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i58
    i64 3, label %bb.ad
    i64 0, label %_RNCNCNvCs5EcwQX7phGK_5uu_ls12sort_entriess4_00B5_.exit.i.i.i58
    i64 1, label %bb.ae
  ], !prof !13

.unreachabledefault:                              ; preds = %bb.ac
  unreachable

default.unreachable:                              ; preds = %bb.ba, %bb.as, %bb.ak
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dm = icmp ult ptr %i.dj, inttoptr (i64 188978561024 to ptr)
  %i.dn = and i64 %i.dk, 1095216660480
  %i.do = icmp ne i64 %i.dn, 1095216660480
end_hunk_0
begin_hunk_1_@_RNvMCs3VOLFQjs6jb_8lscolorsNtB2_9Indicator4from

; Function Attrs: nounwind nonlazybind uwtable
declare i48 @_RNvNtCs3tg01ITZuB8_13terminal_size4unix13terminal_size() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvXsD_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB5_7IndicesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvXNtNtCsh036I4OHgIr_6uucore8features5fsextNtB2_17MetadataTimeFieldINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCs2vKOLqTMYjT_3std3env4args(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsc_NtCs2vKOLqTMYjT_3std3envNtB5_4ArgsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6parser16parse_block_size19block_size_from_env(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format5human14human_readable(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsh036I4OHgIr_6uucore8features4i18n18get_ctype_encoding() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsh036I4OHgIr_6uucore4mods11line_endingNtB2_10LineEndingNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features2fs19display_permissions(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs6JMX4GRUq9U_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs6JMX4GRUq9U_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error11strip_errno(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtCsihS3lylfMmV_12nu_ansi_term7displayINtB5_17AnsiGenericStringeENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs3JjgEOiFeOI_4jiff5errorNtB5_5ErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtCsdAYBYoqr1XX_12aho_corasick11ahocorasick11AcAutomatonEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCs6JMX4GRUq9U_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCs6JMX4GRUq9U_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs6JMX4GRUq9U_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs6JMX4GRUq9U_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nounwind nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsL_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtB5_25NonEmptyStringValueParserNtB5_16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCs6JMX4GRUq9U_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i24) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style28locale_aware_escape_dir_name(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i24) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i64 -1, 2) i64 @llvm.scmp.i64.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umax.v2i64(<2 x i64>, <2 x i64>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umax.v2i64(<2 x i64>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #28

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold minsize noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #30 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #36 = { noinline nounwind }
attributes #37 = { nounwind }
attributes #38 = { noinline noreturn nounwind }
attributes #39 = { noreturn nounwind }
attributes #40 = { inlinehint nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{}
!5 = !{i64 0, i64 -9223372036854775808}
!6 = !{i64 -1, i64 3}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 0, i64 3}
!9 = !{i32 0, i32 3}
!10 = !{!"branch_weights", i32 2146410443, i32 1073205}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!14 = !{i64 0, i64 -9223372036854775799}
!15 = !{i64 -1, i64 -9223372036854775808}
!16 = !{i64 8}
!17 = !{i64 1, i64 536870913}
!18 = !{i64 0, i64 2}
!19 = !{i8 0, i8 24}
!20 = !{!"branch_weights", i32 1, i32 1999}
!21 = !{!"branch_weights", i32 0, i32 1}
!22 = !{!"branch_weights", i32 2002, i32 2000}
!23 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{i64 0, i64 -9223372036854775805}
!27 = !{i64 -2, i64 -9223372036854775808}
!28 = !{i64 54721675819903244}
!29 = !{i8 0, i8 4}
!30 = !{i32 0, i32 2}
!31 = !{i64 0, i64 -9223372036854775807}
!32 = !{i8 0, i8 3}
!33 = !{i8 0, i8 5}
!34 = !{!"branch_weights", i32 -2147483648, i32 0}
!35 = !{i8 0, i8 44}
!36 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!37 = !{i8 -1, i8 3}
!38 = !{i8 0, i8 11}
!39 = !{!"address", !"read_provenance"}
!40 = distinct !{!40, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs5EcwQX7phGK_5uu_ls"}
!41 = distinct !{!41, !40, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setReNtNtBB_6string6StringE0ECs5EcwQX7phGK_5uu_ls: argument 0"}
!42 = distinct !{!42, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs5EcwQX7phGK_5uu_ls"}
!43 = distinct !{!43, !42, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs5EcwQX7phGK_5uu_ls: argument 0"}
!44 = distinct !{!44, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs5EcwQX7phGK_5uu_ls"}
!45 = distinct !{!45, !44, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs5EcwQX7phGK_5uu_ls: argument 0"}
!46 = distinct !{!46, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls"}
!47 = distinct !{!47, !46, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 0"}
!48 = distinct !{!48, !42, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setReNtNtBB_6string6StringE0E0ECs5EcwQX7phGK_5uu_ls: argument 1"}
!49 = distinct !{!49, !46, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 1"}
!50 = distinct !{!50, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!51 = distinct !{!51, !50, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!52 = distinct !{!52, !50, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!53 = distinct !{!53, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs5EcwQX7phGK_5uu_ls"}
!54 = distinct !{!54, !53, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setReNtNtBD_6string6StringE0E0Cs5EcwQX7phGK_5uu_ls: argument 0"}
!55 = distinct !{!55, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls"}
!56 = distinct !{!56, !55, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 0"}
!57 = distinct !{!57, !55, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 1"}
!58 = distinct !{!58, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!59 = distinct !{!59, !58, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!60 = distinct !{!60, !58, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!61 = distinct !{!61, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls"}
!62 = distinct !{!62, !61, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls: argument 0"}
!63 = distinct !{!63, !61, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls: argument 1"}
!64 = !{!41}
!65 = !{!43}
!66 = !{!45}
!67 = !{!47}
!68 = !{!47, !45, !43, !41}
!69 = !{!49, !48}
!70 = !{!52, !51}
!71 = !{!47, !49, !45, !43, !48, !41}
!72 = !{!54}
!73 = !{!56}
!74 = !{!56, !54, !43, !41}
!75 = !{!57, !48}
!76 = !{!60, !59}
!77 = !{!56, !57, !54, !43, !48, !41}
!78 = !{!62}
!79 = !{!63}
!80 = distinct !{!80, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs5EcwQX7phGK_5uu_ls"}
!81 = distinct !{!81, !80, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRedE0ECs5EcwQX7phGK_5uu_ls: argument 0"}
!82 = distinct !{!82, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs5EcwQX7phGK_5uu_ls"}
!83 = distinct !{!83, !82, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs5EcwQX7phGK_5uu_ls: argument 0"}
!84 = distinct !{!84, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs5EcwQX7phGK_5uu_ls"}
!85 = distinct !{!85, !84, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs5EcwQX7phGK_5uu_ls: argument 0"}
!86 = distinct !{!86, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls"}
!87 = distinct !{!87, !86, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 0"}
!88 = distinct !{!88, !82, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRedE0E0ECs5EcwQX7phGK_5uu_ls: argument 1"}
!89 = distinct !{!89, !86, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 1"}
!90 = distinct !{!90, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!91 = distinct !{!91, !90, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!92 = distinct !{!92, !90, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!93 = distinct !{!93, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs5EcwQX7phGK_5uu_ls"}
!94 = distinct !{!94, !93, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRedE0E0Cs5EcwQX7phGK_5uu_ls: argument 0"}
!95 = distinct !{!95, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls"}
!96 = distinct !{!96, !95, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 0"}
!97 = distinct !{!97, !95, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 1"}
!98 = distinct !{!98, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!99 = distinct !{!99, !98, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!100 = distinct !{!100, !98, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!101 = distinct !{!101, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls"}
!102 = distinct !{!102, !101, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls: argument 0"}
!103 = distinct !{!103, !101, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls: argument 1"}
!104 = !{!81}
!105 = !{!83}
!106 = !{!85}
!107 = !{!87}
!108 = !{!87, !85, !83, !81}
!109 = !{!89, !88}
!110 = !{!92, !91}
!111 = !{!87, !89, !85, !83, !88, !81}
!112 = !{!94}
!113 = !{!96}
!114 = !{!96, !94, !83, !81}
!115 = !{!97, !88}
!116 = !{!100, !99}
!117 = !{!96, !97, !94, !83, !88, !81}
!118 = !{!102}
!119 = !{!103}
!120 = distinct !{!120, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs5EcwQX7phGK_5uu_ls"}
!121 = distinct !{!121, !120, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2v_10FluentArgs3setRexE0ECs5EcwQX7phGK_5uu_ls: argument 0"}
!122 = distinct !{!122, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs5EcwQX7phGK_5uu_ls"}
!123 = distinct !{!123, !122, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs5EcwQX7phGK_5uu_ls: argument 0"}
!124 = distinct !{!124, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs5EcwQX7phGK_5uu_ls"}
!125 = distinct !{!125, !124, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs5EcwQX7phGK_5uu_ls: argument 0"}
!126 = distinct !{!126, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls"}
!127 = distinct !{!127, !126, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 0"}
!128 = distinct !{!128, !122, !"_RINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE16binary_search_byNCINvB2_20binary_search_by_keyRBw_NCINvMNtB1c_4argsNtB2V_10FluentArgs3setRexE0E0ECs5EcwQX7phGK_5uu_ls: argument 1"}
!129 = distinct !{!129, !126, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 1"}
!130 = distinct !{!130, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!131 = distinct !{!131, !130, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!132 = distinct !{!132, !130, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!133 = distinct !{!133, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs5EcwQX7phGK_5uu_ls"}
!134 = distinct !{!134, !133, !"_RNCINvMNtCs6JMX4GRUq9U_4core5sliceSTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueE20binary_search_by_keyRBy_NCINvMNtB1e_4argsNtB2x_10FluentArgs3setRexE0E0Cs5EcwQX7phGK_5uu_ls: argument 0"}
!135 = distinct !{!135, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls"}
!136 = distinct !{!136, !135, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 0"}
!137 = distinct !{!137, !135, !"_RNvXs7_NtCs7tKScEop1B6_5alloc6borrowINtB5_3CoweENtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmpCs5EcwQX7phGK_5uu_ls: argument 1"}
!138 = distinct !{!138, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!139 = distinct !{!139, !138, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!140 = distinct !{!140, !138, !"_RNvXNtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!141 = distinct !{!141, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls"}
!142 = distinct !{!142, !141, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls: argument 0"}
!143 = distinct !{!143, !141, !"_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs5EcwQX7phGK_5uu_ls: argument 1"}
!144 = !{!121}
!145 = !{!123}
!146 = !{!125}
end_hunk_1
