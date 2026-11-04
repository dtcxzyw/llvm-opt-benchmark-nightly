Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_cp-502ba788104fae03.uu_cp.beafcee701a397b5-cgu.0?download=true
inline.NumInlined: 2514
inline.NumDeleted: 1152
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeRNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp:bb.a

bb.w:                                             ; preds = %bb.t, %bb.t
  store i64 %i.dk, ptr %i.cg, align 8
  store i64 %.sroa.0.0.i94, ptr %i.cf, align 8
  %i.dq = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab) #39 ; 2 uses
  %i.dr = extractvalue { ptr, i64 } %i.dq, 0
  %i.ds = extractvalue { ptr, i64 } %i.dq, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.ds) #39
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  store i64 %i.dk, ptr %i.cg, align 8
  store i64 %.sroa.0.0.i94, ptr %i.cf, align 8
  %i.dt = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #39 ; 0 uses
  br label %bb.y

.loopexit:                                        ; preds = %bb.t
  store i64 %i.dk, ptr %i.cg, align 8
  store i64 %.sroa.0.0.i94, ptr %i.cf, align 8
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %bb.w, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1265
  %.val.i.i.i.i = load ptr, ptr %.sroa.358.0..sroa_idx, align 8, !alias.scope !1264, !noalias !1266, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.461.0..sroa_idx, align 8, !alias.scope !1264, !noalias !1266, !noundef !7 ; 2 uses
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i) #39, !noalias !1265
  %i.du = load i64, ptr %i.g, align 8, !range !30, !noalias !1265, !noundef !7
  %i.dv = icmp eq i64 %i.du, 2
  br i1 %i.dv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dw = load ptr, ptr %i.db, align 8, !noalias !1265, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1265
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit.thread

bb.aa:                                            ; preds = %bb.y
  %.sroa.845.0.copyload.i = load i32, ptr %.sroa.845.0..sroa_idx.i, align 8, !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1265
  %i.dx = and i32 %.sroa.845.0.copyload.i, 61440
  %i.dy = icmp eq i32 %i.dx, 40960
  br i1 %i.dy, label %bb.ab, label %.thread243

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1268
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs9read_link(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i) #39, !noalias !1269
  %i.dz = load i64, ptr %i.h, align 8, !range !6, !noalias !1268, !noundef !7 ; 5 uses
  %i.ea = icmp eq i64 %i.dz, -1
  %i.eb = load ptr, ptr %i.ct, align 8, !noalias !1268 ; 4 uses
  br i1 %i.ea, label %bb.ac, label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1268
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit.thread

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.ab
  %.sroa.538.0.copyload.i = load i64, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !1268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1268
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %.sroa.538.0.copyload.i) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.z) #39
  %i.ec = load i8, ptr %i.y, align 8, !range !34, !noundef !7
  %.not77307 = icmp eq i8 %i.ec, -1
  br i1 %.not77307, label %._crit_edge, label %.lr.ph

_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ed = icmp eq i64 %i.dk, 0
  br i1 %i.ed, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCsgn1j6LDYpaP_5uu_cp.exit.thread, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCsgn1j6LDYpaP_5uu_cp.exit

_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit.thread: ; preds = %bb.ac, %bb.z
  %.sroa.9176.0205 = phi ptr [ %i.dw, %bb.z ], [ %i.eb, %bb.ac ] ; 4 uses
  switch i8 %3, label %bb.bm [
    i8 1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit113.thread
    i8 0, label %bb.bb
  ]

.lr.ph:                                           ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit
  %i.ee = phi ptr [ %i.ej, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit ], [ %i.df, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit ]
  %i.ef = phi i64 [ %..i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit ], [ %.sroa.0.0.i94, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit ]
  %i.eg = phi i64 [ %i.el, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit ], [ %i.dd, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit ] ; 2 uses
  %i.eh = phi i64 [ %i.ep, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit ], [ %i.dk, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.y, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.x) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.ei = icmp eq i64 %i.eh, %i.eg
  br i1 %i.ei, label %bb.ad, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit

bb.ad:                                            ; preds = %.lr.ph
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ag) #40, !noalias !1271
  %.pre.i = load i64, ptr %i.ag, align 8, !range !8, !alias.scope !1270
  %.pre5.i = load i64, ptr %i.cg, align 8, !alias.scope !1270
  %.pre355 = load i64, ptr %i.cf, align 8, !alias.scope !1270
  %.pre356 = load ptr, ptr %i.ch, align 8, !alias.scope !1270
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit: ; preds = %.lr.ph, %bb.ad
  %i.ej = phi ptr [ %.pre356, %bb.ad ], [ %i.ee, %.lr.ph ] ; 2 uses
  %i.ek = phi i64 [ %.pre355, %bb.ad ], [ %i.ef, %.lr.ph ]
  %i.el = phi i64 [ %.pre.i, %bb.ad ], [ %i.eg, %.lr.ph ] ; 5 uses
  %i.em = phi i64 [ %.pre5.i, %bb.ad ], [ %i.eh, %.lr.ph ]
  %i.en = add i64 %i.ek, -1                       ; 2 uses
  %i.eo = add i64 %i.en, %i.el                    ; 2 uses
  %.not.i100 = icmp ult i64 %i.eo, %i.el
  %..i = select i1 %.not.i100, i64 %i.eo, i64 %i.en ; 3 uses
  store i64 %..i, ptr %i.cf, align 8, !alias.scope !1270
  %i.ep = add i64 %i.em, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.cg, align 8, !alias.scope !1270
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %..i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !1270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.z) #39
  %i.er = load i8, ptr %i.y, align 8, !range !34, !noundef !7
  %.not77 = icmp eq i8 %i.er, -1
  br i1 %.not77, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit
  %i.es = phi i64 [ %i.dk, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit ], [ %i.ep, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit ] ; 4 uses
  %i.et = phi i64 [ %i.dd, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit ], [ %i.el, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit ]
  %i.eu = phi i64 [ %i.de, %_RINvNtNtCsh036I4OHgIr_6uucore8features2fs15resolve_symlinkRNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit ], [ %i.el, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsgn1j6LDYpaP_5uu_cp.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ev = icmp slt i32 %.sroa.022.0.ph310, 20
  br i1 %i.ev, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ew = load ptr, ptr %.sroa.358.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.ex = load i64, ptr %.sroa.461.0..sroa_idx, align 8, !noundef !7
  %i.ey = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ew, i64 noundef %i.ex) #39 ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ey, 0      ; 2 uses
  %.not78 = icmp eq ptr %i.ez, null
  br i1 %.not78, label %bb.al, label %bb.ag, !prof !10

bb.af:                                            ; preds = %._crit_edge
  %i.fa = add nsw i32 %.sroa.022.0.ph310, 1
  br label %bb.az

bb.ag:                                            ; preds = %bb.ae
  %i.fb = extractvalue { ptr, i64 } %i.ey, 1
  call fastcc void @_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtCs2vKOLqTMYjT_3std4path4PathECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef %i.fb, i1 noundef zeroext false) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.fc = load i64, ptr %i.u, align 8, !range !11, !alias.scope !1273, !noundef !7
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %bb.ah, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsgn1j6LDYpaP_5uu_cp.exit, !prof !10

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1274
  %i.fe = load ptr, ptr %i.cu, align 8, !alias.scope !1273, !nonnull !7, !noundef !7
  store ptr %i.fe, ptr %i.q, align 8, !noalias !1274
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !1274
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsgn1j6LDYpaP_5uu_cp.exit: ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.cu, i64 144, i1 false), !alias.scope !1274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx59, align 8
  store i64 0, ptr %.sroa.461.0..sroa_idx62, align 8
  %.val.i101 = load i64, ptr %i.ag, align 8, !alias.scope !1275 ; 4 uses
  %i.ff = icmp eq i64 %i.es, 0
  br i1 %i.ff, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit, label %bb.ai

bb.ai:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsgn1j6LDYpaP_5uu_cp.exit
  %.val2.i102 = load i64, ptr %i.cf, align 8, !alias.scope !1275 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i102, %.val.i101
  %i.fg = select i1 %.not.i.i, i64 0, i64 %.val.i101
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i102, %i.fg ; 4 uses
  %i.fh = sub i64 %.val.i101, %.sroa.04.0.i.i     ; 2 uses
  %.not11.i.i = icmp ult i64 %i.fh, %i.es
  br i1 %.not11.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fi = sub nuw i64 %i.es, %i.fh
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fj = add i64 %.sroa.04.0.i.i, %i.es
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsgn1j6LDYpaP_5uu_cp.exit, %bb.aj, %bb.ak
  %.sroa.0.0.i103 = phi i64 [ %.sroa.04.0.i.i, %bb.ak ], [ %.sroa.04.0.i.i, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsgn1j6LDYpaP_5uu_cp.exit ]
  %.sroa.5.0.i104 = phi i64 [ %i.fj, %bb.ak ], [ %.val.i101, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsgn1j6LDYpaP_5uu_cp.exit ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.ak ], [ %i.fi, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsgn1j6LDYpaP_5uu_cp.exit ]
  %i.fk = load ptr, ptr %i.ch, align 8, !alias.scope !1275, !nonnull !7, !noundef !7 ; 4 uses
  %i.fl = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %.sroa.0.0.i103
  %i.fm = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %.sroa.5.0.i104
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fk, i64 %.sroa.11.0.i
  br label %bb.am

bb.al:                                            ; preds = %bb.ae
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #41
  unreachable

bb.am:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit
  %.sroa.0184.sroa.7.0 = phi ptr [ %i.fm, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit ], [ %.sroa.0184.sroa.7.1231, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225 ] ; 4 uses
  %.sroa.0184.sroa.0.0 = phi ptr [ %i.fl, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit ], [ %i.fq, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225 ] ; 2 uses
  %.sroa.10189.sroa.5.0 = phi ptr [ %i.fn, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit ], [ %.sroa.10189.sroa.5.1232, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225 ] ; 3 uses
  %.sroa.10189.sroa.0.0 = phi ptr [ %i.fk, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsgn1j6LDYpaP_5uu_cp.exit ], [ %.sroa.10189.sroa.0.1233, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225 ] ; 3 uses
  %i.fo = icmp eq ptr %.sroa.0184.sroa.0.0, %.sroa.0184.sroa.7.0
  br i1 %i.fo, label %bb.an, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225

bb.an:                                            ; preds = %bb.am
  %i.fp = icmp eq ptr %.sroa.10189.sroa.0.0, %.sroa.10189.sroa.5.0
  br i1 %i.fp, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread225: ; preds = %bb.am, %bb.an
  %.sink6.i234 = phi ptr [ %.sroa.10189.sroa.0.0, %bb.an ], [ %.sroa.0184.sroa.0.0, %bb.am ] ; 2 uses
  %.sroa.10189.sroa.0.1233 = phi ptr [ %.sroa.0184.sroa.7.0, %bb.an ], [ %.sroa.10189.sroa.0.0, %bb.am ]
  %.sroa.10189.sroa.5.1232 = phi ptr [ %.sroa.0184.sroa.7.0, %bb.an ], [ %.sroa.10189.sroa.5.0, %bb.am ]
  %.sroa.0184.sroa.7.1231 = phi ptr [ %.sroa.10189.sroa.5.0, %bb.an ], [ %.sroa.0184.sroa.7.0, %bb.am ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sink6.i234, i64 32
  %i.fr = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sink6.i234) #39 ; 2 uses
  %i.fs = extractvalue { ptr, i64 } %i.fr, 0
  %i.ft = extractvalue { ptr, i64 } %i.fr, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.ft) #39
  br label %bb.am

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread: ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.s, ptr noundef nonnull align 8 dereferenceable(144) %i.v, i64 144, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %.val7.i = load i64, ptr %.sroa.468.0..sroa_idx, align 8, !alias.scope !1276, !noundef !7
  %.val8.i = load i64, ptr %.sroa.569.0..sroa_idx, align 8, !alias.scope !1276, !noundef !7
  %i.fu = call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECsgn1j6LDYpaP_5uu_cp(i64 %.val7.i, i64 %.val8.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.s) #39, !noalias !1276 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.fv = load i64, ptr %i.cw, align 8, !alias.scope !1280, !noundef !7
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.ao, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i, !prof !10

bb.ao:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread
  %i.fx = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ac, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.468.0..sroa_idx, i1 noundef zeroext true) #40, !noalias !1281 ; 0 uses
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i: ; preds = %bb.ao, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsgn1j6LDYpaP_5uu_cp.exit.thread
  %.val.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1282, !nonnull !7, !noundef !7 ; 4 uses
  %.val5.i.i = load i64, ptr %i.cx, align 8, !alias.scope !1282, !noundef !7 ; 3 uses
  %i.fy = lshr i64 %i.fu, 57
  %i.fz = trunc nuw nsw i64 %i.fy to i8           ; 3 uses
  %i.ga = insertelement <16 x i8> poison, i8 %i.fz, i64 0
  %i.gb = shufflevector <16 x i8> %i.ga, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val4.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !1281
  %.val5.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !1281
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !1281 ; 2 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !1281
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i
  %.pre19.i.i = phi ptr [ %.val.i.i, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i ], [ %i.gu, %bb.ar ] ; 3 uses
  %.pn.i.i.i = phi i64 [ %i.fu, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i ], [ %i.hi, %bb.ar ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.ar ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i ], [ %.sroa.04.122.i.i.i, %bb.ar ]
  %i.gc = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsgn1j6LDYpaP_5uu_cp.exit.i.i ], [ %i.hh, %bb.ar ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.gd, align 1, !noalias !1283 ; 3 uses
  %i.ge = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.gb
  %i.gf = bitcast <16 x i1> %i.ge to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.gf, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i
  %.pre1921.i.i = phi ptr [ %.pre1920.i.i, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i ], [ %.pre19.i.i, %bb.ap ]
  %i.gg = phi ptr [ %i.gv, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i ], [ %.pre19.i.i, %bb.ap ] ; 2 uses
  %.sroa.01.029.i.i.i = phi i16 [ %i.gx, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i ], [ %i.gf, %bb.ap ] ; 3 uses
  %i.gh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i, i1 true)
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = add i64 %.sroa.0.017.i.i.i, %i.gi
  %i.gk = and i64 %i.gj, %.val5.i.i
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = getelementptr inbounds [168 x i8], ptr %i.gg, i64 %i.gl ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -168
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %.val6.i.i.i.i.i.i = load i64, ptr %i.gn, align 8, !alias.scope !1287, !noalias !1288, !noundef !7
  %i.go = getelementptr inbounds i8, ptr %i.gm, i64 -160
  %.val7.i.i.i.i.i.i = load i64, ptr %i.go, align 8, !alias.scope !1287, !noalias !1288
  %i.gp = icmp eq i64 %.val4.i.i.i.i.i.i, %.val6.i.i.i.i.i.i
  %i.gq = icmp eq i64 %.val5.i.i.i.i.i.i, %.val7.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.i.i, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i, !prof !1289

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.gr = getelementptr inbounds i8, ptr %i.gm, i64 -16
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.gr, align 8, !alias.scope !1287, !noalias !1288 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gm, i64 -8
  %.val3.i.i.i.i.i.i = load i64, ptr %i.gs, align 8, !alias.scope !1287, !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1290
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i) #39, !noalias !1291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1290
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i.i.i.i) ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i.i.i.i, i64 noundef %.val3.i.i.i.i.i.i) #39, !noalias !1291
  %i.gt = call fastcc noundef zeroext i1 @_RNvXsl_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e) #42, !noalias !1291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1290
  %.pre.i.i109 = load ptr, ptr %i.ac, align 8, !alias.scope !1282, !noalias !1292 ; 2 uses
  br i1 %i.gt, label %bb.au, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i, !prof !1293

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i, %bb.ap
  %i.gu = phi ptr [ %.pre19.i.i, %bb.ap ], [ %.pre1920.i.i, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i ] ; 4 uses
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.aq, !prof !10

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.i.i, %.lr.ph.i.i.i
  %.pre1920.i.i = phi ptr [ %.pre1921.i.i, %.lr.ph.i.i.i ], [ %.pre.i.i109, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.i.i ] ; 2 uses
  %i.gv = phi ptr [ %i.gg, %.lr.ph.i.i.i ], [ %.pre.i.i109, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.i.i ]
  %i.gw = add i16 %.sroa.01.029.i.i.i, -1
  %i.gx = and i16 %i.gw, %.sroa.01.029.i.i.i      ; 2 uses
  %.not.i.i.i106 = icmp eq i16 %i.gx, 0
  br i1 %.not.i.i.i106, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.gy = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.gz = bitcast <16 x i1> %i.gy to i16          ; 2 uses
  %.not.i.i.i.i107 = icmp eq i16 %i.gz, 0
  br i1 %.not.i.i.i.i107, label %bb.ar, label %.thread24.i.i.i, !prof !10

.thread24.i.i.i:                                  ; preds = %bb.aq
  %i.ha = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gz, i1 true)
  %i.hb = zext nneg i16 %i.ha to i64
  %i.hc = add i64 %.sroa.0.017.i.i.i, %i.hb
  %i.hd = and i64 %i.hc, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.hd, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.he = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.hf = bitcast <16 x i1> %i.he to i16
  %i.hg = icmp eq i16 %i.hf, 0
  br i1 %i.hg, label %bb.ar, label %bb.as, !prof !10

bb.ar:                                            ; preds = %.thread.i.i.i, %bb.aq
  %.sroa.04.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.aq ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.aq ]
  %i.hh = add i64 %i.gc, 16                       ; 2 uses
  %i.hi = add i64 %i.hh, %.sroa.0.017.i.i.i
  br label %bb.ap

bb.as:                                            ; preds = %.thread.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.121.i.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !1281, !noundef !7
  %i.hl = icmp sgt i8 %i.hk, -1
  br i1 %i.hl, label %bb.at, label %bb.ay, !prof !10

bb.at:                                            ; preds = %bb.as
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !1281
  %i.hm = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.hn = bitcast <16 x i1> %i.hm to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.hn, 0
  %i.ho = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hn, i1 true)
  %i.hp = zext nneg i16 %i.ho to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  br label %bb.ay

bb.au:                                            ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csgn1j6LDYpaP_5uu_cp.exit.i.i
  %.val.i110 = load i64, ptr %i.cv, align 8, !range !8, !alias.scope !1294, !noundef !7 ; 2 uses
  %i.hq = icmp eq i64 %.val.i110, 0
  br i1 %i.hq, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val.i110, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !1295
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.hr = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newReECs2vKOLqTMYjT_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 33) #40
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hr, ptr %i.hs, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ht = icmp eq i64 %i.dz, 0
  br i1 %i.ht, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit113, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eb, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 1) #39, !noalias !1296
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgn1j6LDYpaP_5uu_cp.exit113

bb.ay:                                            ; preds = %bb.at, %bb.as
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.hp, %bb.at ], [ %.sroa.4.121.i.i.i, %bb.as ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.3.0.i.ph.i.i ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !noalias !1298, !noundef !7
  %i.hw = and i8 %i.hv, 1
  %i.hx = zext nneg i8 %i.hw to i64
  %i.hy = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.hz = load i64, ptr %i.cx, align 8, !alias.scope !1299, !noundef !7
  %i.ia = and i64 %i.hz, %i.hy
  store i8 %i.fz, ptr %i.hu, align 1, !noalias !1298
  %i.ib = getelementptr i8, ptr %i.gu, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 16
  store i8 %i.fz, ptr %i.ic, align 1, !noalias !1298
  %i.id = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !1299
  %i.ie = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.hx, i64 0
  %i.if = sub <2 x i64> %i.id, %i.ie
  store <2 x i64> %i.if, ptr %i.cw, align 8, !alias.scope !1299
  %i.ig = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.ih = getelementptr inbounds [168 x i8], ptr %i.gu, i64 %i.ig
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ii, ptr noundef nonnull readonly align 8 dereferenceable(168) %i.s, i64 168, i1 false), !noalias !1297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.pre = load i64, ptr %i.ag, align 8, !range !8, !alias.scope !1262 ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.af
  %i.ij = phi i64 [ %i.et, %bb.af ], [ %.pre, %bb.ay ] ; 2 uses
  %i.ik = phi i64 [ %i.eu, %bb.af ], [ %.pre, %bb.ay ] ; 2 uses
end_hunk_0
