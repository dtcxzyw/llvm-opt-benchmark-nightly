Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.14?download=true
inline.NumInlined: 64
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2I_6StringINtNtB1z_7collect6ExtendcE6extendBP_E0E0ECs2KzzoC5ewhj_8markdown:bb.a
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh14is_ascii_digit(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !noundef !3
  %i.b = add i8 %i.a, -48
  %.sroa.0.0 = icmp ult i8 %i.b, 10
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh17is_ascii_hexdigit(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !noundef !3    ; 5 uses
  %i.b = add nsw i8 %i.a, -48
  %.sroa.0.0 = icmp ult i8 %i.b, 10
  %i.c = icmp samesign ugt i8 %i.a, 64
  %i.d = icmp samesign ult i8 %i.a, 71
  %.sroa.01.0 = select i1 %i.c, i1 %i.d, i1 %.sroa.0.0
  %i.e = icmp ugt i8 %i.a, 96
  %i.f = icmp ult i8 %i.a, 103
  %.sroa.02.0 = select i1 %i.e, i1 %i.f, i1 %.sroa.01.0
  ret i1 %.sroa.02.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh21is_ascii_alphanumeric(ptr noalias noundef readonly captures(none) dereferenceable(1) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !noundef !3    ; 5 uses
  %i.b = add nsw i8 %i.a, -48
  %.sroa.0.0 = icmp ult i8 %i.b, 10
  %i.c = icmp samesign ugt i8 %i.a, 64
  %i.d = icmp samesign ult i8 %i.a, 91
  %.sroa.01.0 = select i1 %i.c, i1 %i.d, i1 %.sroa.0.0
  %i.e = icmp ugt i8 %i.a, 96
  %i.f = icmp ult i8 %i.a, 123
  %.sroa.02.0 = select i1 %i.e, i1 %i.f, i1 %.sroa.01.0
  ret i1 %.sroa.02.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util13gfm_tagfilter13gfm_tagfilter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.c, align 8, !range !4, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !5, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.o = icmp ule i64 %2, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.k, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.outer._crit_edge.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph145 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.sroa.020.0.lcssa, %.outer ]
  %.sroa.06.0.ph144 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.sroa.06.1, %.outer ] ; 12 uses
  br label %bb.i

.outer._crit_edge:                                ; preds = %.outer, %bb.k
  %.sroa.06.0.ph.lcssa130 = phi i64 [ %.sroa.06.0.ph144, %bb.k ], [ %.sroa.06.1, %.outer ] ; 8 uses
  %i.u = icmp eq i64 %.sroa.06.0.ph.lcssa130, 0
  br i1 %i.u, label %.outer._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %.outer._crit_edge
  %.not.i = icmp ult i64 %.sroa.06.0.ph.lcssa130, %2
  br i1 %.not.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.v = icmp eq i64 %.sroa.06.0.ph.lcssa130, %2
  br i1 %i.v, label %.outer._crit_edge.thread, label %.invoke

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.ph.lcssa130
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !46, !noundef !3
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %.outer._crit_edge.thread, label %.invoke

.body:                                            ; preds = %.loopexit85, %.loopexit.split-lp, %bb.ae, %bb.ab, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.cv, %bb.ab ], [ %i.cx, %bb.ae ], [ %lpad.loopexit, %.loopexit85 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.g) #19
          to label %bb.am unwind label %bb.al

.loopexit85:                                      ; preds = %bb.t, %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i59, %bb.ai, %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke, %bb.q, %bb.s, %bb.v, %.outer._crit_edge.thread, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.outer._crit_edge.thread:                         ; preds = %bb.c, %bb.e, %.split.i, %.outer._crit_edge
  %.sroa.06.0.ph.lcssa130197 = phi i64 [ 0, %.outer._crit_edge ], [ %.sroa.06.0.ph.lcssa130, %bb.e ], [ %.sroa.06.0.ph.lcssa130, %.split.i ], [ 0, %bb.c ] ; 3 uses
  %i.z = sub nuw i64 %2, %.sroa.06.0.ph.lcssa130197 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0.ph.lcssa130197
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.z)
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %.outer._crit_edge.thread
  %i.ab = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47, !noundef !3 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i53 = icmp eq i64 %2, %.sroa.06.0.ph.lcssa130197
  br i1 %.not.i53, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc54
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !47, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.aa, i64 %i.z, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47
  br label %bb.h

.invoke:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit63, %bb.ah, %.split.i, %bb.e
  %i.af = phi i64 [ %.sroa.06.0.ph.lcssa130, %.split.i ], [ %.sroa.06.0.ph.lcssa130, %bb.e ], [ %.sroa.06.0.ph144, %bb.ah ], [ %.sroa.06.0.ph144, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit63 ]
  %i.ag = phi i64 [ %2, %.split.i ], [ %2, %bb.e ], [ %.sroa.0.0131, %bb.ah ], [ %.sroa.0.0131, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit63 ]
  %i.ah = phi ptr [ @9, %.split.i ], [ @9, %bb.e ], [ @22, %bb.ah ], [ @22, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit63 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.af, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #18
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.g:                                             ; preds = %bb.s, %bb.q
  unreachable

bb.h:                                             ; preds = %bb.f, %.noexc54
  %i.ai = phi i64 [ %.pre.i, %bb.f ], [ %i.ab, %.noexc54 ]
  %i.aj = add i64 %i.ai, %i.z
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.0131 = phi i64 [ %.sroa.0.0.ph145, %.lr.ph ], [ %i.an, %bb.k ] ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0131
  %i.al = load i8, ptr %i.ak, align 1, !noundef !3
  %i.am = icmp eq i8 %i.al, 60
  %i.an = add nuw nsw i64 %.sroa.0.0131, 1        ; 6 uses
  %i.ao = icmp ult i64 %i.an, %2                  ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ao, label %bb.i, label %.outer._crit_edge

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.010.0 = phi i64 [ %i.an, %bb.j ], [ %spec.select, %bb.m ] ; 9 uses
  %i.ap = icmp ult i64 %.sroa.010.0, %2
  br i1 %i.ap, label %.lr.ph135.preheader, label %._crit_edge136

.lr.ph135.preheader:                              ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !3
  %i.as = and i8 %i.ar, -33
  %i.at = add i8 %i.as, -65
  %or.cond84286 = icmp ult i8 %i.at, 26
  br i1 %or.cond84286, label %.lr.ph288, label %._crit_edge136

bb.m:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.av = load i8, ptr %i.au, align 1, !noundef !3
  %i.aw = icmp eq i8 %i.av, 47
  %i.ax = add nuw nsw i64 %.sroa.0.0131, 2
  %spec.select = select i1 %i.aw, i64 %i.ax, i64 %i.an
  br label %bb.l

._crit_edge136:                                   ; preds = %.lr.ph135, %.lr.ph288, %.lr.ph135.preheader, %bb.l
  %.sroa.020.0.lcssa = phi i64 [ %.sroa.010.0, %bb.l ], [ %.sroa.010.0, %.lr.ph135.preheader ], [ %i.bd, %.lr.ph288 ], [ %i.bd, %.lr.ph135 ] ; 8 uses
  %.lcssa95 = phi i1 [ false, %bb.l ], [ true, %.lr.ph135.preheader ], [ %i.be, %.lr.ph288 ], [ true, %.lr.ph135 ]
  %.lcssa = phi i64 [ 0, %bb.l ], [ 0, %.lr.ph135.preheader ], [ %i.bf, %.lr.ph288 ], [ %i.bf, %.lr.ph135 ]
  %i.ay = icmp eq i64 %.sroa.020.0.lcssa, %2
  br i1 %i.ay, label %bb.r, label %bb.n

.lr.ph135:                                        ; preds = %.lr.ph288
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.ba = load i8, ptr %i.az, align 1, !noundef !3
  %i.bb = and i8 %i.ba, -33
  %i.bc = add i8 %i.bb, -65
  %or.cond84 = icmp ult i8 %i.bc, 26
  br i1 %or.cond84, label %.lr.ph288, label %._crit_edge136

.lr.ph288:                                        ; preds = %.lr.ph135.preheader, %.lr.ph135
  %.sroa.020.0133287 = phi i64 [ %i.bd, %.lr.ph135 ], [ %.sroa.010.0, %.lr.ph135.preheader ]
  %i.bd = add nuw nsw i64 %.sroa.020.0133287, 1   ; 6 uses
  %i.be = icmp ult i64 %i.bd, %2                  ; 2 uses
  %i.bf = sub nuw i64 %i.bd, %.sroa.010.0         ; 3 uses
  %i.bg = icmp samesign ult i64 %i.bf, 9
  %or.cond = and i1 %i.be, %i.bg
  br i1 %or.cond, label %.lr.ph135, label %._crit_edge136

bb.n:                                             ; preds = %._crit_edge136
  %.not45 = icmp eq i64 %.sroa.020.0.lcssa, %.sroa.010.0
  br i1 %.not45, label %.outer, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.lcssa95, label %bb.p, label %bb.q

.outer:                                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit74, %bb.p, %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit
  %.sroa.06.1 = phi i64 [ %.sroa.06.0.ph144, %bb.n ], [ %.sroa.06.0.ph144, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit ], [ %.sroa.06.0.ph144, %bb.p ], [ %i.an, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2KzzoC5ewhj_8markdown.exit74 ] ; 2 uses
  %i.bh = icmp ult i64 %.sroa.020.0.lcssa, %2
  br i1 %i.bh, label %.lr.ph, label %.outer._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.0.lcssa
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !3
  switch i8 %i.bj, label %.outer [
    i8 9, label %bb.r
    i8 10, label %bb.r
    i8 12, label %bb.r
    i8 13, label %bb.r
    i8 32, label %bb.r
    i8 47, label %bb.r
    i8 62, label %bb.r
  ]

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.020.0.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18
          to label %bb.g unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %._crit_edge136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not46 = icmp ugt i64 %.sroa.020.0.lcssa, %2
  br i1 %.not46, label %bb.s, label %bb.t, !prof !7

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.010.0, i64 noundef %.sroa.020.0.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #18
          to label %bb.g unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %.lcssa)
          to label %bb.u unwind label %.loopexit85

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.bl = load i64, ptr %i.d, align 8, !range !4, !alias.scope !48, !noalias !49, !noundef !3
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.v, label %bb.w, !prof !6

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !49
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr %i.p, align 8, !alias.scope !48, !noalias !49, !nonnull !3, !noundef !3
  %i.bo = load i64, ptr %i.q, align 8, !alias.scope !48, !noalias !49, !noundef !3 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.bo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit85

.noexc55:                                         ; preds = %bb.w
  %i.bp = load i64, ptr %i.a, align 8, !range !4, !noalias !52, !noundef !3
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = load i64, ptr %i.r, align 8, !range !5, !noalias !52, !noundef !3 ; 3 uses
  br i1 %i.bq, label %bb.x, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i, !prof !6

bb.x:                                             ; preds = %.noexc55
  %i.bs = load i64, ptr %i.s, align 8, !noalias !52
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bs) #18
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.x
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i: ; preds = %.noexc55
  %i.bt = load ptr, ptr %i.s, align 8, !noalias !52, !nonnull !3, !noundef !3 ; 6 uses
  %i.bu = icmp samesign ule i64 %i.bo, %i.br
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bo, i1 false), !noalias !53
  %min.iters.check = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check294 = icmp ult i64 %i.bo, 32
  br i1 %min.iters.check294, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %i.bo, 24
  %n.vec = and i64 %i.bo, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !54, !noalias !55 ; 2 uses
  %wide.load295 = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !54, !noalias !55 ; 2 uses
  %i.by = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bz = add <16 x i8> %wide.load295, splat (i8 -65)
  %i.ca = icmp ult <16 x i8> %i.by, splat (i8 26)
  %i.cb = icmp ult <16 x i8> %i.bz, splat (i8 26)
  %i.cc = select <16 x i1> %i.ca, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.cd = select <16 x i1> %i.cb, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ce = or <16 x i8> %i.cc, %wide.load
  %i.cf = or <16 x i8> %i.cd, %wide.load295
  store <16 x i8> %i.ce, ptr %i.bw, align 1, !alias.scope !54, !noalias !55
  store <16 x i8> %i.cf, ptr %i.bx, align 1, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !58

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec296 = and i64 %i.bo, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index297 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next299, %vec.epilog.vector.body ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index297 ; 2 uses
  %wide.load298 = load <8 x i8>, ptr %i.ch, align 1, !alias.scope !54, !noalias !55 ; 2 uses
  %i.ci = add <8 x i8> %wide.load298, splat (i8 -65)
  %i.cj = icmp ult <8 x i8> %i.ci, splat (i8 26)
  %i.ck = select <8 x i1> %i.cj, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.cl = or <8 x i8> %i.ck, %wide.load298
  store <8 x i8> %i.cl, ptr %i.ch, align 1, !alias.scope !54, !noalias !55
  %index.next299 = add nuw i64 %index297, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next299, %n.vec296
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n300 = icmp eq i64 %i.bo, %n.vec296
  br i1 %cmp.n300, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec296, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.05.i.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !54, !noalias !55, !noundef !3 ; 2 uses
  %i.cp = add i8 %i.co, -65
  %i.cq = icmp ult i8 %i.cp, 26
  %i.cr = select i1 %i.cq, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.cr, %i.co
  store i8 %.sroa.03.0.i.i, ptr %i.cn, align 1, !alias.scope !54, !noalias !55
  %i.cs = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cs, %i.bo
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !39

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i
  store i64 %i.br, ptr %i.e, align 8, !alias.scope !51, !noalias !59
  store ptr %i.bt, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !51, !noalias !59
  store i64 %i.bo, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !51, !noalias !59
  store ptr %i.bt, ptr %i.f, align 8
  store i64 %i.bo, ptr %i.t, align 8
  %i.ct = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @20, i64 noundef 9)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.e) #19
          to label %.body unwind label %bb.al

bb.z:                                             ; preds = %.loopexit
  br i1 %i.ct, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.ab

end_hunk_0
begin_hunk_1_@_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference14decode_numeric:bb.a
  %.sroa.8.0.insert.insert.i18 = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit ], [ 1, %bb.c ], [ 257, %.lr.ph.split.i ], [ 257, %bb.d ], [ 257, %.lr.ph.split.us.i ], [ 257, %bb.p ], [ 257, %bb.d ], [ 257, %.lr.ph.split.i.7 ], [ 257, %.lr.ph.split.i.6 ], [ 257, %.lr.ph.split.i.5 ], [ 257, %.lr.ph.split.i.4 ], [ 257, %.lr.ph.split.i.3 ], [ 257, %.lr.ph.split.i.2 ], [ 257, %.lr.ph.split.i.1 ], [ 257, %.lr.ph.split.us.i.7 ], [ 257, %.lr.ph.split.us.i.6 ], [ 257, %.lr.ph.split.us.i.5 ], [ 257, %.lr.ph.split.us.i.4 ], [ 257, %.lr.ph.split.us.i.3 ], [ 257, %.lr.ph.split.us.i.2 ], [ 257, %.lr.ph.split.us.i.1 ], [ 513, %bb.q ], [ 513, %bb.g ], [ 257, %bb.f ]
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i18, 8
  %.sroa.4.0.extract.trunc.i = trunc i64 %.sroa.4.0.extract.shift.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %.sroa.4.0.extract.trunc.i, ptr %i.a, align 1
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #18
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs2KzzoC5ewhj_8markdown.exit: ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  %.sroa.6.0.extract.shift.i = lshr i64 %.sroa.8.0.insert.insert.i, 32 ; 4 uses
  %.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.6.0.extract.shift.i to i32 ; 3 uses
  %i.ge = xor i32 %.sroa.6.0.extract.trunc.i, 55296
  %i.gf = add i32 %i.ge, -1114112
  %i.gg = icmp ult i32 %i.gf, -1112064
  br i1 %i.gg, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs2KzzoC5ewhj_8markdown.exit
  %i.gh = icmp ult i64 %.sroa.8.0.insert.insert.i, 4785074604081152
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp samesign ult i64 %.sroa.8.0.insert.insert.i, 38654705664
  %i.gj = icmp eq i64 %.sroa.6.0.extract.shift.i, 11
  %or.cond = or i1 %i.gi, %i.gj
  %i.gk = add nsw i32 %.sroa.6.0.extract.trunc.i, -14
  %or.cond1 = icmp ult i32 %i.gk, 18
  %or.cond14 = select i1 %or.cond, i1 true, i1 %or.cond1
  %i.gl = add nsw i32 %.sroa.6.0.extract.trunc.i, -127
  %or.cond3 = icmp ult i32 %i.gl, 33
  %or.cond15 = select i1 %or.cond14, i1 true, i1 %or.cond3
  br i1 %or.cond15, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.gm = icmp samesign ult i64 %.sroa.8.0.insert.insert.i, 549755813888
  br i1 %i.gm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = icmp samesign ult i64 %.sroa.8.0.insert.insert.i, 8796093022208
  %i.go = trunc i64 %.sroa.6.0.extract.shift.i to i8
  %i.gp = and i8 %i.go, 63
  %i.gq = or disjoint i8 %i.gp, -128              ; 3 uses
  %i.gr = lshr i64 %.sroa.8.0.insert.insert.i, 38
  %i.gs = trunc i64 %i.gr to i8                   ; 2 uses
  %i.gt = and i8 %i.gs, 63
  %i.gu = or disjoint i8 %i.gt, -128              ; 2 uses
  %i.gv = lshr i64 %.sroa.8.0.insert.insert.i, 44
  %i.gw = trunc i64 %i.gv to i8                   ; 2 uses
  %i.gx = and i8 %i.gw, 63
  %i.gy = or disjoint i8 %i.gx, -128
  %i.gz = lshr i64 %.sroa.8.0.insert.insert.i, 50
  %i.ha = trunc nuw nsw i64 %i.gz to i8
  %i.hb = or disjoint i8 %i.ha, -16
  br i1 %i.gn, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.hc = trunc nuw i64 %.sroa.6.0.extract.shift.i to i8
  store i8 %i.hc, ptr %.sroa.0, align 4, !alias.scope !76
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.ad:                                            ; preds = %bb.ab
  %i.hd = or disjoint i8 %i.gs, -64
  store i8 %i.hd, ptr %.sroa.0, align 4, !alias.scope !76
  %.sroa.0.1..sroa_idx131 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.gq, ptr %.sroa.0.1..sroa_idx131, align 1, !alias.scope !76
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.ae:                                            ; preds = %bb.ab
  %i.he = icmp samesign ult i64 %.sroa.8.0.insert.insert.i, 281474976710656
  br i1 %i.he, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hf = or disjoint i8 %i.gw, -32
  store i8 %i.hf, ptr %.sroa.0, align 4, !alias.scope !76
  %.sroa.0.1..sroa_idx130 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.gu, ptr %.sroa.0.1..sroa_idx130, align 1, !alias.scope !76
  %.sroa.0.2..sroa_idx132 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.gq, ptr %.sroa.0.2..sroa_idx132, align 2, !alias.scope !76
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

bb.ag:                                            ; preds = %bb.ae
  store i8 %i.hb, ptr %.sroa.0, align 4, !alias.scope !76
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.gy, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !76
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.gu, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !76
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.gq, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !76
  br label %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.sroa.0.05.i = phi i64 [ 1, %bb.ac ], [ 2, %bb.ad ], [ 3, %bb.af ], [ 4, %bb.ag ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.05.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.hg = load i64, ptr %i.c, align 8, !range !4, !noundef !3
  %i.hh = trunc nuw i64 %i.hg to i1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !range !5, !noundef !3 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.hh, label %bb.ah, label %bb.ai, !prof !6

bb.ah:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit
  %i.hl = load i64, ptr %i.hk, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hj, i64 %i.hl) #18
  unreachable

bb.ai:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core4char7methods15encode_utf8_raw.exit
  %i.hm = load ptr, ptr %i.hk, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.hn = icmp samesign ule i64 %.sroa.0.05.i, %i.hj
  tail call void @llvm.assume(i1 %i.hn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hm, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false)
  store i64 %i.hj, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hm, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.05.i, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %bb.ai
  ret void

bb.ak:                                            ; preds = %bb.z, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs2KzzoC5ewhj_8markdown.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ho = load i64, ptr %i.b, align 8, !range !4, !noundef !3
  %i.hp = trunc nuw i64 %i.ho to i1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !range !5, !noundef !3 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.hp, label %bb.al, label %bb.am, !prof !6

bb.al:                                            ; preds = %bb.ak
  %i.ht = load i64, ptr %i.hs, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hr, i64 %i.ht) #18
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.hu = load ptr, ptr %i.hs, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.hv = icmp samesign ugt i64 %i.hr, 2
  tail call void @llvm.assume(i1 %i.hv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 -17, ptr %i.hu, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 1
  store i8 -65, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  store i8 -67, ptr %.sroa.6.0..sroa_idx63, align 1
  store i64 %i.hr, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hu, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 3, ptr %.sroa.69.0..sroa_idx, align 8
  br label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.g = load i64, ptr %i.b, align 8, !range !4, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !noundef !3 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.j, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.outer._crit_edge.thread, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit
  %.sroa.0.0.ph156 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit ] ; 9 uses
  br label %bb.i

.outer._crit_edge:                                ; preds = %._crit_edge
  %i.s = icmp eq i64 %.sroa.0.0.ph156, 0
  br i1 %i.s, label %.outer._crit_edge.thread, label %.outer._crit_edge.thread204

.outer._crit_edge.thread204:                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit, %.outer._crit_edge
  %.sroa.0.0.ph.lcssa151206 = phi i64 [ %.sroa.0.0.ph156, %.outer._crit_edge ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit ] ; 6 uses
  %.not.i = icmp ult i64 %.sroa.0.0.ph.lcssa151206, %2
  br i1 %.not.i, label %bb.d, label %.split.i

.split.i:                                         ; preds = %.outer._crit_edge.thread204
  %i.t = icmp eq i64 %.sroa.0.0.ph.lcssa151206, %2
  br i1 %i.t, label %.outer._crit_edge.thread, label %bb.f

bb.d:                                             ; preds = %.outer._crit_edge.thread204
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.ph.lcssa151206
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !90, !noundef !3
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %.outer._crit_edge.thread, label %bb.f

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.af
  %.pn = phi { ptr, i32 } [ %lpad.phi118, %bb.af ], [ %i.ca, %bb.am ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit119, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp120, %.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.f) #19
          to label %bb.ap unwind label %bb.ao

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit:             ; preds = %bb.x, %bb.aa
  %lpad.loopexit119 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i
  %lpad.loopexit.split-lp120 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.outer._crit_edge.thread, %bb.z, %bb.w, %bb.u, %bb.f
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.outer._crit_edge.thread:                         ; preds = %bb.c, %bb.d, %.split.i, %.outer._crit_edge
  %.sroa.0.0.ph.lcssa151203 = phi i64 [ 0, %.outer._crit_edge ], [ %.sroa.0.0.ph.lcssa151206, %bb.d ], [ %.sroa.0.0.ph.lcssa151206, %.split.i ], [ 0, %bb.c ] ; 3 uses
  %i.x = sub nuw nsw i64 %2, %.sroa.0.0.ph.lcssa151203 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.ph.lcssa151203
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.x)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %.outer._crit_edge.thread
  %i.z = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !91, !noundef !3 ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.aa)
  %.not.i55 = icmp eq i64 %2, %.sroa.0.0.ph.lcssa151203
  br i1 %.not.i55, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.noexc56
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !91, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull readonly align 1 %i.y, i64 %i.x, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !91
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0.ph.lcssa151206, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @533) #18
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.ai, %bb.w, %bb.u, %bb.f
  unreachable

bb.h:                                             ; preds = %bb.e, %.noexc56
  %i.ad = phi i64 [ %.pre.i, %bb.e ], [ %i.z, %.noexc56 ]
  %i.ae = add i64 %i.ad, %i.x
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.i:                                             ; preds = %.lr.ph, %._crit_edge
  %.sroa.018.0153 = phi i64 [ %.sroa.0.0.ph156, %.lr.ph ], [ %i.ai, %._crit_edge ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.018.0153
  %i.ag = load i8, ptr %i.af, align 1, !noundef !3
  %i.ah = icmp eq i8 %i.ag, 38
  %i.ai = add nuw nsw i64 %.sroa.018.0153, 1      ; 6 uses
  br i1 %i.ah, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ult i64 %i.ai, %2
  br i1 %i.aj, label %bb.k, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !noundef !3
  %i.am = icmp eq i8 %i.al, 35
  br i1 %i.am, label %bb.l, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit

bb.l:                                             ; preds = %bb.k
  %i.an = add nuw nsw i64 %.sroa.018.0153, 2      ; 4 uses
  %i.ao = icmp ult i64 %i.an, %2
  br i1 %i.ao, label %bb.m, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !3
  switch i8 %i.aq, label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit [
    i8 120, label %bb.n
    i8 88, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.ar = add nuw nsw i64 %.sroa.018.0153, 3
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit

_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit: ; preds = %bb.l, %bb.m, %bb.j, %bb.k, %bb.n
  %.sroa.0.0.i5796 = phi i64 [ 31, %bb.j ], [ 6, %bb.n ], [ 31, %bb.k ], [ 7, %bb.m ], [ 7, %bb.l ] ; 2 uses
  %.sroa.039.08295 = phi i8 [ 38, %bb.j ], [ 120, %bb.n ], [ 38, %bb.k ], [ 35, %bb.m ], [ 35, %bb.l ]
  %.sroa.05.08394 = phi i64 [ %i.ai, %bb.j ], [ %i.ar, %bb.n ], [ %i.ai, %bb.k ], [ %i.an, %bb.m ], [ %i.an, %bb.l ] ; 6 uses
  %.sroa.0.0.i59 = phi ptr [ @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh21is_ascii_alphanumeric, %bb.j ], [ @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh17is_ascii_hexdigit, %bb.n ], [ @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh21is_ascii_alphanumeric, %bb.k ], [ @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh14is_ascii_digit, %bb.m ], [ @_RNvMs4_NtCs4NRVxsYgnAr_4core3numh14is_ascii_digit, %bb.l ]
  %i.as = call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.05.08394) ; 2 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %.sroa.05.08394
  br label %bb.o

bb.o:                                             ; preds = %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit, %bb.s
  %.sroa.012.0152 = phi i64 [ 0, %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference10value_test.exit ], [ %i.au, %bb.s ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.012.0152, %i.as
  br i1 %exitcond.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.r, %bb.o
  %.sroa.012.0152.lcssa = phi i64 [ %.sroa.012.0152, %bb.r ], [ %i.as, %bb.o ] ; 2 uses
  %.not50 = icmp eq i64 %.sroa.012.0152.lcssa, 0
  br i1 %.not50, label %._crit_edge, label %.thread104

bb.q:                                             ; preds = %bb.o
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.sroa.012.0152
  %i.at = invoke noundef zeroext i1 %.sroa.0.0.i59(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %gep)
          to label %bb.r unwind label %.loopexit, !callees !92

bb.r:                                             ; preds = %bb.q
  br i1 %i.at, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  %i.au = add nuw nsw i64 %.sroa.012.0152, 1      ; 2 uses
  %exitcond192.not = icmp eq i64 %i.au, %.sroa.0.0.i5796
  br i1 %exitcond192.not, label %.thread104, label %bb.o

.thread104:                                       ; preds = %bb.s, %bb.p
  %.sroa.012.0124 = phi i64 [ %.sroa.012.0152.lcssa, %bb.p ], [ %.sroa.0.0.i5796, %bb.s ] ; 2 uses
  %i.av = add i64 %.sroa.012.0124, %.sroa.05.08394 ; 6 uses
  %i.aw = icmp ult i64 %i.av, %2
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread104
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !3
  %i.az = icmp eq i8 %i.ay, 59
  br i1 %i.az, label %bb.v, label %._crit_edge

bb.u:                                             ; preds = %.thread104
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #18
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = icmp ult i64 %i.av, %.sroa.05.08394
  br i1 %i.ba, label %bb.w, label %bb.x, !prof !7

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.08394, i64 noundef %i.av, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @537) #18
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.05.08394
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %.sroa.012.0124)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.loopexit

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bc = load i64, ptr %i.d, align 8, !range !4, !alias.scope !93, !noalias !94, !noundef !3
  %i.bd = trunc nuw i64 %i.bc to i1
  br i1 %i.bd, label %bb.z, label %bb.aa, !prof !6

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.o, i64 16, i1 false), !noalias !94
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @535) #18
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.be = load ptr, ptr %i.o, align 8, !alias.scope !93, !noalias !94, !nonnull !3, !noundef !3
  %i.bf = load i64, ptr %i.p, align 8, !alias.scope !93, !noalias !94, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference6decode(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bf, i8 noundef %.sroa.039.08295, i1 noundef zeroext false)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.bg = load i64, ptr %i.e, align 8, !range !96, !noundef !3
  %.not52 = icmp eq i64 %i.bg, -1
  br i1 %.not52, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %3 = icmp eq i64 %.sroa.0.0.ph156, 0
  br i1 %3, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.ph156
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !97, !noundef !3
  %i.bj = icmp sgt i8 %i.bi, -65
  br i1 %i.bj, label %bb.ag, label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %._crit_edge

.loopexit115:                                     ; preds = %bb.ag, %bb.aj
  %lpad.loopexit117 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp116:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp116, %.loopexit115
  %lpad.phi118 = phi { ptr, i32 } [ %lpad.loopexit117, %.loopexit115 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp116 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.c) #19
          to label %.body unwind label %bb.ao

bb.ag:                                            ; preds = %bb.ac, %bb.ad
  %i.bk = sub nuw nsw i64 %.sroa.018.0153, %.sroa.0.0.ph156 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.ph156
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bk)
          to label %.noexc68 unwind label %.loopexit115

.noexc68:                                         ; preds = %bb.ag
  %i.bm = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !98, !noundef !3 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %.not.i66 = icmp eq i64 %.sroa.018.0153, %.sroa.0.0.ph156
  br i1 %.not.i66, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.noexc68
  %i.bo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !98, !nonnull !3, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull readonly align 1 %i.bl, i64 %i.bk, i1 false)
  %.pre.i67 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !98
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.0.ph156, i64 noundef %.sroa.018.0153, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @536) #18
          to label %bb.g unwind label %.loopexit.split-lp116

bb.aj:                                            ; preds = %bb.ah, %.noexc68
  %i.bq = phi i64 [ %.pre.i67, %bb.ah ], [ %i.bm, %.noexc68 ]
  %i.br = add i64 %i.bq, %i.bk
  store i64 %i.br, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !98
  %i.bs = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.bt = load i64, ptr %i.r, align 8, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bt)
          to label %.noexc72 unwind label %.loopexit115

.noexc72:                                         ; preds = %bb.aj
  %i.bu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !99, !noundef !3 ; 3 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  call void @llvm.assume(i1 %i.bv)
  %.not.i70 = icmp eq i64 %i.bt, 0
  br i1 %.not.i70, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.noexc72
  %i.bw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !99, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.bs, i64 %i.bt, i1 false)
  %.pre.i71 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !99
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.noexc72
  %i.by = phi i64 [ %.pre.i71, %bb.ak ], [ %i.bu, %.noexc72 ]
  %i.bz = add i64 %i.by, %i.bt
  store i64 %i.bz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !99
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i
  %i.cc = add nuw nsw i64 %i.av, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cd = icmp ult i64 %i.cc, %2
  br i1 %i.cd, label %.lr.ph, label %.outer._crit_edge.thread204

bb.ao:                                            ; preds = %bb.af, %.body
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

._crit_edge:                                      ; preds = %bb.i, %bb.t, %bb.ae, %bb.p
  %i.cf = icmp ult i64 %i.ai, %2
  br i1 %i.cf, label %bb.i, label %.outer._crit_edge

bb.ap:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference6decode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i8 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %3, ptr %i.c, align 1
  switch i8 %3, label %bb.b [
    i8 35, label %bb.c
    i8 120, label %bb.d
    i8 38, label %bb.e
  ], !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @538) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference14decode_numeric(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 10)
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference14decode_numeric(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 16)
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %spec.select.i = select i1 %4, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2KzzoC5ewhj_8markdown4util8constant20CHARACTER_REFERENCES, i64 68000), ptr getelementptr inbounds nuw (i8, ptr @531, i64 8064)
  %spec.select8.i = select i1 %4, ptr @_RNvNtNtCs2KzzoC5ewhj_8markdown4util8constant20CHARACTER_REFERENCES, ptr @531
  br label %bb.f

bb.f:                                             ; preds = %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.thread.i.i, %bb.e
  %i.d = phi ptr [ %spec.select8.i, %bb.e ], [ %i.e, %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.thread.i.i ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !109, !noundef !3
  %i.h = icmp eq i64 %i.g, %2
  br i1 %i.h, label %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.i.i, label %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.thread.i.i

_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.i.i: ; preds = %bb.f
  %i.i = load ptr, ptr %i.d, align 8, !noalias !109, !nonnull !3, !noundef !3
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull readonly %1, i64 %2), !noalias !110
  %i.j = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0EB1Q_.exit.i, label %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.thread.i.i

_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.thread.i.i: ; preds = %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.i.i, %bb.f
  %i.k = icmp eq ptr %i.e, %spec.select.i
  br i1 %i.k, label %bb.j, label %bb.f

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0EB1Q_.exit.i: ; preds = %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.i.i
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %.val.i = load ptr, ptr %i.l, align 8, !noalias !111, !nonnull !3, !noundef !3
  %i.m = getelementptr i8, ptr %i.d, i64 24
  %.val2.i = load i64, ptr %i.m, align 8, !noalias !111, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val2.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !112
  %i.n = load i64, ptr %i.a, align 8, !range !4, !noalias !112, !noundef !3
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !5, !noalias !112, !noundef !3 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0EB1Q_.exit.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !112
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #18, !noalias !112
  unreachable

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterTReBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0EB1Q_.exit.i
  %i.t = load ptr, ptr %i.r, align 8, !noalias !112, !nonnull !3, !noundef !3 ; 2 uses
  %i.u = icmp ule i64 %.val2.i, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  %.not.i.i = icmp eq i64 %.val2.i, 0
  br i1 %.not.i.i, label %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_nameds_0B7_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %.val.i, i64 %.val2.i, i1 false), !noalias !112
  br label %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_nameds_0B7_.exit.i

_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_nameds_0B7_.exit.i: ; preds = %bb.i, %bb.h
  store i64 %i.q, ptr %0, align 8, !alias.scope !108, !noalias !113
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !108, !noalias !113
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val2.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !108, !noalias !113
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named.exit

bb.j:                                             ; preds = %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named0B7_.exit.thread.i.i
  store i64 -1, ptr %0, align 8, !alias.scope !108, !noalias !113
  br label %_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named.exit

_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_named.exit: ; preds = %bb.j, %_RNCNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference12decode_nameds_0B7_.exit.i, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 6, 32) i64 @_RNvNtNtCs2KzzoC5ewhj_8markdown4util19character_reference9value_max(i8 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %0, ptr %i.b, align 1
  switch i8 %0, label %bb.b [
    i8 38, label %bb.e
    i8 120, label %bb.c
    i8 35, label %bb.d
  ], !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCs4NRVxsYgnAr_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @539) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ 7, %bb.d ], [ 6, %bb.c ], [ 31, %bb.a ]
  ret i64 %.sroa.0.0
}
end_hunk_1
