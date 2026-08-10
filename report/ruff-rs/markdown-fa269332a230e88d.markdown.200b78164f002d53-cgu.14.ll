inline.NumInlined: 64
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2I_6StringINtNtB1z_7collect6ExtendcE6extendBP_E0E0ECs2KzzoC5ewhj_8markdown:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.q, ptr %i.am, align 1
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRccuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2u_6StringINtNtB1C_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4ItercEEE0E0E0Cs2KzzoC5ewhj_8markdown.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRccuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2u_6StringINtNtB1C_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4ItercEEE0E0E0Cs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.03.i.i.i.i.i = phi i64 [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ]
  %i.an = add nuw i64 %.sroa.0.03.i.i.i.i.i, %i.h ; 2 uses
  store i64 %i.an, ptr %i.f, align 8, !alias.scope !7
  %i.ao = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.e
  br i1 %i.ap, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRccuNvYcNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB3g_6StringINtNtBW_7collect6ExtendcE6extendINtNtB1K_6cloned6ClonedBF_EE0E0E0ECs2KzzoC5ewhj_8markdown.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRccuNvYcNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB3g_6StringINtNtBW_7collect6ExtendcE6extendINtNtB1K_6cloned6ClonedBF_EE0E0E0ECs2KzzoC5ewhj_8markdown.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRccuNvYcNtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2u_6StringINtNtB1C_7collect6ExtendcE6extendINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4ItercEEE0E0E0Cs2KzzoC5ewhj_8markdown.exit.i, %bb.a
  ret void
}

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
  %i.h = load i64, ptr %i.c, align 8, !range !14, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !15, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !16

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
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !17, !noundef !3
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
  %i.ab = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20, !noundef !3 ; 3 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %.not.i53 = icmp eq i64 %2, %.sroa.06.0.ph.lcssa130197
  br i1 %.not.i53, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc54
  %i.ad = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !20, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.aa, i64 %i.z, i1 false)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20
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
  store i64 %i.aj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20
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
  %i.ax = add nuw i64 %.sroa.0.0131, 2
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
  %i.bd = add nuw i64 %.sroa.020.0133287, 1       ; 6 uses
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
  br i1 %.not46, label %bb.s, label %bb.t, !prof !23

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.010.0, i64 noundef %.sroa.020.0.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #18
          to label %bb.g unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.010.0
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %.lcssa)
          to label %bb.u unwind label %.loopexit85

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.bl = load i64, ptr %i.d, align 8, !range !14, !alias.scope !24, !noalias !27, !noundef !3
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !27
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bn = load ptr, ptr %i.p, align 8, !alias.scope !24, !noalias !27, !nonnull !3, !noundef !3
  %i.bo = load i64, ptr %i.q, align 8, !alias.scope !24, !noalias !27, !noundef !3 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.bo, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit85

.noexc55:                                         ; preds = %bb.w
  %i.bp = load i64, ptr %i.a, align 8, !range !14, !noalias !33, !noundef !3
  %i.bq = trunc nuw i64 %i.bp to i1
  %i.br = load i64, ptr %i.r, align 8, !range !15, !noalias !33, !noundef !3 ; 3 uses
  br i1 %i.bq, label %bb.x, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i, !prof !16

bb.x:                                             ; preds = %.noexc55
  %i.bs = load i64, ptr %i.s, align 8, !noalias !33
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bs) #18
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.x
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i: ; preds = %.noexc55
  %i.bt = load ptr, ptr %i.s, align 8, !noalias !33, !nonnull !3, !noundef !3 ; 6 uses
  %i.bu = icmp samesign ule i64 %i.bo, %i.br
  call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull readonly align 1 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bo, i1 false), !noalias !38
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
  %wide.load = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !39, !noalias !42 ; 2 uses
  %wide.load295 = load <16 x i8>, ptr %i.bx, align 1, !alias.scope !39, !noalias !42 ; 2 uses
  %i.by = add <16 x i8> %wide.load, splat (i8 -65)
  %i.bz = add <16 x i8> %wide.load295, splat (i8 -65)
  %i.ca = icmp ult <16 x i8> %i.by, splat (i8 26)
  %i.cb = icmp ult <16 x i8> %i.bz, splat (i8 26)
  %i.cc = select <16 x i1> %i.ca, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.cd = select <16 x i1> %i.cb, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ce = or <16 x i8> %i.cc, %wide.load
  %i.cf = or <16 x i8> %i.cd, %wide.load295
  store <16 x i8> %i.ce, ptr %i.bw, align 1, !alias.scope !39, !noalias !42
  store <16 x i8> %i.cf, ptr %i.bx, align 1, !alias.scope !39, !noalias !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec296 = and i64 %i.bo, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index297 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next299, %vec.epilog.vector.body ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 %index297 ; 2 uses
  %wide.load298 = load <8 x i8>, ptr %i.ch, align 1, !alias.scope !39, !noalias !42 ; 2 uses
  %i.ci = add <8 x i8> %wide.load298, splat (i8 -65)
  %i.cj = icmp ult <8 x i8> %i.ci, splat (i8 26)
  %i.ck = select <8 x i1> %i.cj, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.cl = or <8 x i8> %i.ck, %wide.load298
  store <8 x i8> %i.cl, ptr %i.ch, align 1, !alias.scope !39, !noalias !42
  %index.next299 = add nuw i64 %index297, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next299, %n.vec296
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n300 = icmp eq i64 %i.bo, %n.vec296
  br i1 %cmp.n300, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec296, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.0.05.i.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !39, !noalias !42, !noundef !3 ; 2 uses
  %i.cp = add i8 %i.co, -65
  %i.cq = icmp ult i8 %i.cp, 26
  %i.cr = select i1 %i.cq, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.cr, %i.co
  store i8 %.sroa.03.0.i.i, ptr %i.cn, align 1, !alias.scope !39, !noalias !42
  %i.cs = add nuw i64 %.sroa.0.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cs, %i.bo
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !48

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2KzzoC5ewhj_8markdown.exit.i.i
  store i64 %i.br, ptr %i.e, align 8, !alias.scope !30, !noalias !49
  store ptr %i.bt, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !30, !noalias !49
  store i64 %i.bo, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !30, !noalias !49
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

bb.ab:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit unwind label %.loopexit85

bb.ad:                                            ; preds = %bb.z
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i59 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i59: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit63 unwind label %.loopexit85

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.outer

end_hunk_0
