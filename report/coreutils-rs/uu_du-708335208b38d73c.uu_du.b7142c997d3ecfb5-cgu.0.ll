Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_du-708335208b38d73c.uu_du.b7142c997d3ecfb5-cgu.0?download=true
inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsfIwuYbgPzJV_5uu_du15read_files_from:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.val113 = load ptr, ptr %i.ac, align 8, !nonnull !8, !align !16, !noundef !8 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.val113, i64 12 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !noundef !8
  %i.om = add i32 %i.ol, -1                       ; 2 uses
  store i32 %i.om, ptr %i.ok, align 4
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %bb.du, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit

bb.du:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit244
  store atomic i64 0, ptr %.val113 monotonic, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %.val113, i64 8 ; 2 uses
  %i.op = atomicrmw xchg ptr %i.oo, i32 0 release, align 4
  %i.oq = icmp eq i32 %i.op, 2
  br i1 %i.oq, label %bb.dv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit, !prof !12

bb.dv:                                            ; preds = %bb.du
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.oo) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit244, %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #25
  br label %bb.dz

bb.dw:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i217
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.9.0.i) #30
  unreachable

bb.dx:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i217
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.na, ptr nonnull align 1 %.sroa.8.1.i, i64 %.sroa.9.0.i, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.or = load i64, ptr %i.ex, align 8, !alias.scope !1373, !noalias !1374, !noundef !8 ; 3 uses
  %i.os = load i64, ptr %i.aq, align 8, !range !9, !alias.scope !1373, !noalias !1374, !noundef !8
  %i.ot = icmp eq i64 %i.or, %i.os
  br i1 %i.ot, label %bb.dy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECsfIwuYbgPzJV_5uu_du.exit

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8grow_oneCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #28, !noalias !1374
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.dy, %bb.dx
  %i.ou = load ptr, ptr %i.ew, align 8, !alias.scope !1373, !noalias !1374, !nonnull !8, !noundef !8
  %i.ov = getelementptr inbounds nuw [24 x i8], ptr %i.ou, i64 %i.or ; 3 uses
  store i64 %.sroa.9.0.i, ptr %i.ov, align 8, !noalias !1373
  %.sroa.4376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store ptr %i.na, ptr %.sroa.4376.0..sroa_idx, align 8, !noalias !1373
  %.sroa.5377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store i64 %.sroa.9.0.i, ptr %.sroa.5377.0..sroa_idx, align 8, !noalias !1373
  %i.ow = add i64 %i.or, 1
  store i64 %i.ow, ptr %i.ex, align 8, !alias.scope !1373, !noalias !1374
  br label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEECsfIwuYbgPzJV_5uu_du.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit300
  %i.ox = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %i.ox, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit.backedge, label %bb.ea

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit.backedge: ; preds = %bb.dz, %bb.ea
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.1.i, i64 noundef %.sroa.0.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit.backedge

.loopexit474:                                     ; preds = %.lr.ph.i183, %bb.cq, %bb.cp, %.lr.ph141.i193, %.preheader111.i200, %bb.cu, %bb.cv, %.lr.ph150.i208, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsfIwuYbgPzJV_5uu_du.exit181, %bb.cl, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5354.0.copyload356, i64 noundef %.sroa.8358.0.copyload360) #28
  %i.oy = load i8, ptr %i.ai, align 8, !range !17, !noundef !8
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.ed, label %bb.ee

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215: ; preds = %bb.cr, %bb.cs, %bb.cw, %bb.cx, %.preheader.i206, %.preheader114.i191
  %.sroa.15365.0 = phi i64 [ %i.my, %bb.cx ], [ %i.mb, %bb.cs ], [ %i.mp, %bb.cw ], [ 0, %.preheader.i206 ], [ 0, %.preheader114.i191 ], [ %i.ls, %bb.cr ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 4, i64 noundef %.sroa.15365.0) #25
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ee, %bb.ed, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215
  %.sroa.024.0.not = phi i1 [ true, %bb.ed ], [ false, %bb.ee ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.pa = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.ji, ptr noalias nofree noundef nonnull %i.w, i64 noundef 20) #25 ; 2 uses
  %i.pb = extractvalue { ptr, i64 } %i.pa, 0
  %i.pc = extractvalue { ptr, i64 } %i.pa, 1      ; 16 uses
  %.not.i245 = icmp slt i64 %i.pc, 0
  br i1 %.not.i245, label %bb.ef, label %bb.ec, !prof !13

bb.ec:                                            ; preds = %bb.eb
  %i.pd = icmp eq i64 %i.pc, 0
  br i1 %i.pd, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246

.thread:                                          ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit467

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246: ; preds = %bb.ec
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1375
  %i.pe = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.pc, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1375 ; 18 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %bb.ef, label %bb.eg

bb.ed:                                            ; preds = %.loopexit474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.0352.0.copyload353, ptr %i.ah, align 8
  store ptr %.sroa.5354.0.copyload356, ptr %.sroa.5354.0..sroa_idx, align 8
  store i64 %.sroa.8358.0.copyload360, ptr %.sroa.8358.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ah) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.eb

bb.ee:                                            ; preds = %.loopexit474
  %i.pg = load double, ptr %i.fr, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 4, double noundef %i.pg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.eb

bb.ef:                                            ; preds = %bb.eb, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246
  %.sroa.4391.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246 ], [ 0, %bb.eb ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4391.0.ph, i64 %i.pc) #30
  unreachable

bb.eg:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i246
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pe, ptr align 1 %i.pb, i64 %i.pc, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %cond = icmp eq i64 %i.pc, 1
  %i.ph = load i8, ptr %i.pe, align 1, !alias.scope !1376, !noalias !1377 ; 2 uses
  br i1 %cond, label %bb.eh, label %thread-pre-split.i280

bb.eh:                                            ; preds = %bb.eg
  switch i8 %i.ph, label %bb.eo [
    i8 43, label %.loopexit467
    i8 45, label %.loopexit467
  ]

thread-pre-split.i280:                            ; preds = %bb.eg
  switch i8 %i.ph, label %bb.eo [
    i8 43, label %bb.ei
    i8 45, label %bb.ej
  ]

bb.ei:                                            ; preds = %thread-pre-split.i280
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.pj = add nsw i64 %i.pc, -1
  br label %bb.eo

bb.ej:                                            ; preds = %thread-pre-split.i280
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 1 ; 2 uses
  %i.pl = add nsw i64 %i.pc, -1                   ; 2 uses
  %i.pm = icmp samesign ult i64 %i.pc, 17
  br i1 %i.pm, label %.lr.ph141.i260, label %.lr.ph.i250

.lr.ph.i250:                                      ; preds = %bb.ej, %bb.em
  %.sroa.0.1136.i251 = phi ptr [ %i.pn, %bb.em ], [ %i.pk, %bb.ej ] ; 2 uses
  %.sroa.26.1135.i252 = phi i64 [ %i.po, %bb.em ], [ %i.pl, %bb.ej ]
  %.sroa.084.0134.i253 = phi i64 [ %i.pz, %bb.em ], [ 0, %bb.ej ]
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i251, i64 1
  %i.po = add nsw i64 %.sroa.26.1135.i252, -1     ; 2 uses
  %i.pp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i253, i64 10) ; 2 uses
  %i.pq = extractvalue { i64, i1 } %i.pp, 0
  %i.pr = extractvalue { i64, i1 } %i.pp, 1
  br i1 %i.pr, label %.loopexit467, label %bb.ek, !prof !12

bb.ek:                                            ; preds = %.lr.ph.i250
  %i.ps = load i8, ptr %.sroa.0.1136.i251, align 1, !alias.scope !1376, !noalias !1377, !noundef !8
  %i.pt = zext i8 %i.ps to i32
  %i.pu = add nsw i32 %i.pt, -48                  ; 2 uses
  %i.pv = icmp ult i32 %i.pu, 10
  br i1 %i.pv, label %bb.el, label %.loopexit467

bb.el:                                            ; preds = %bb.ek
  %i.pw = zext nneg i32 %i.pu to i64
  %i.px = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.pq, i64 %i.pw) ; 2 uses
  %i.py = extractvalue { i64, i1 } %i.px, 1
  br i1 %i.py, label %.loopexit467, label %bb.em, !prof !12

bb.em:                                            ; preds = %bb.el
  %i.pz = extractvalue { i64, i1 } %i.px, 0       ; 2 uses
  %.not102.i255 = icmp eq i64 %i.po, 0
  br i1 %.not102.i255, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.lr.ph.i250

.lr.ph141.i260:                                   ; preds = %bb.ej, %bb.en
  %.sroa.0.2140.i261 = phi ptr [ %i.qg, %bb.en ], [ %i.pk, %bb.ej ] ; 2 uses
  %.sroa.26.2139.i262 = phi i64 [ %i.qf, %bb.en ], [ %i.pl, %bb.ej ]
  %.sroa.084.2138.i263 = phi i64 [ %i.qi, %bb.en ], [ 0, %bb.ej ]
  %i.qa = load i8, ptr %.sroa.0.2140.i261, align 1, !alias.scope !1376, !noalias !1377, !noundef !8
  %i.qb = zext i8 %i.qa to i32
  %i.qc = add nsw i32 %i.qb, -48                  ; 2 uses
  %i.qd = icmp ult i32 %i.qc, 10
  br i1 %i.qd, label %bb.en, label %.loopexit467

bb.en:                                            ; preds = %.lr.ph141.i260
  %i.qe = mul i64 %.sroa.084.2138.i263, 10
  %i.qf = add nsw i64 %.sroa.26.2139.i262, -1     ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i261, i64 1
  %i.qh = zext nneg i32 %i.qc to i64
  %i.qi = sub i64 %i.qe, %i.qh                    ; 2 uses
  %.not103.i264 = icmp eq i64 %i.qf, 0
  br i1 %.not103.i264, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.lr.ph141.i260

bb.eo:                                            ; preds = %bb.eh, %bb.ei, %thread-pre-split.i280
  %.sroa.26.0.i265 = phi i64 [ %i.pj, %bb.ei ], [ %i.pc, %thread-pre-split.i280 ], [ %i.pc, %bb.eh ] ; 3 uses
  %.sroa.0.0.i266 = phi ptr [ %i.pi, %bb.ei ], [ %i.pe, %thread-pre-split.i280 ], [ %i.pe, %bb.eh ] ; 2 uses
  %i.qj = icmp samesign ult i64 %.sroa.26.0.i265, 16
  br i1 %i.qj, label %.lr.ph150.i275, label %.preheader111.i267

.preheader111.i267:                               ; preds = %bb.eo, %bb.er
  %.sroa.0.3145.i268 = phi ptr [ %i.qk, %bb.er ], [ %.sroa.0.0.i266, %bb.eo ] ; 2 uses
  %.sroa.26.3144.i269 = phi i64 [ %i.ql, %bb.er ], [ %.sroa.26.0.i265, %bb.eo ]
  %.sroa.084.3143.i270 = phi i64 [ %i.qw, %bb.er ], [ 0, %bb.eo ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i268, i64 1
  %i.ql = add nsw i64 %.sroa.26.3144.i269, -1     ; 2 uses
  %i.qm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i270, i64 10) ; 2 uses
  %i.qn = extractvalue { i64, i1 } %i.qm, 0
  %i.qo = extractvalue { i64, i1 } %i.qm, 1
  br i1 %i.qo, label %.loopexit467, label %bb.ep, !prof !12

bb.ep:                                            ; preds = %.preheader111.i267
  %i.qp = load i8, ptr %.sroa.0.3145.i268, align 1, !alias.scope !1376, !noalias !1377, !noundef !8
  %i.qq = zext i8 %i.qp to i32
  %i.qr = add nsw i32 %i.qq, -48                  ; 2 uses
  %i.qs = icmp ult i32 %i.qr, 10
  br i1 %i.qs, label %bb.eq, label %.loopexit467

bb.eq:                                            ; preds = %bb.ep
  %i.qt = zext nneg i32 %i.qr to i64
  %i.qu = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.qn, i64 %i.qt) ; 2 uses
  %i.qv = extractvalue { i64, i1 } %i.qu, 1
  br i1 %i.qv, label %.loopexit467, label %bb.er, !prof !12

bb.er:                                            ; preds = %bb.eq
  %i.qw = extractvalue { i64, i1 } %i.qu, 0       ; 2 uses
  %.not104.i272 = icmp eq i64 %i.ql, 0
  br i1 %.not104.i272, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.preheader111.i267

.lr.ph150.i275:                                   ; preds = %bb.eo, %bb.es
  %.sroa.0.4149.i276 = phi ptr [ %i.rd, %bb.es ], [ %.sroa.0.0.i266, %bb.eo ] ; 2 uses
  %.sroa.26.4148.i277 = phi i64 [ %i.rc, %bb.es ], [ %.sroa.26.0.i265, %bb.eo ]
  %.sroa.084.4147.i278 = phi i64 [ %i.rf, %bb.es ], [ 0, %bb.eo ]
  %i.qx = load i8, ptr %.sroa.0.4149.i276, align 1, !alias.scope !1376, !noalias !1377, !noundef !8
  %i.qy = zext i8 %i.qx to i32
  %i.qz = add nsw i32 %i.qy, -48                  ; 2 uses
  %i.ra = icmp ult i32 %i.qz, 10
  br i1 %i.ra, label %bb.es, label %.loopexit467

bb.es:                                            ; preds = %.lr.ph150.i275
  %i.rb = mul i64 %.sroa.084.4147.i278, 10
  %i.rc = add nsw i64 %.sroa.26.4148.i277, -1     ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i276, i64 1
  %i.re = zext nneg i32 %i.qz to i64
  %i.rf = add i64 %i.rb, %i.re                    ; 2 uses
  %.not105.i279 = icmp eq i64 %i.rc, 0
  br i1 %.not105.i279, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282, label %.lr.ph150.i275

.loopexit467:                                     ; preds = %.lr.ph.i250, %bb.el, %bb.ek, %.lr.ph141.i260, %.preheader111.i267, %bb.ep, %bb.eq, %.lr.ph150.i275, %bb.eh, %bb.eh, %.thread
  %.ph = phi ptr [ %i.pe, %.preheader111.i267 ], [ %i.pe, %.lr.ph141.i260 ], [ %i.pe, %.lr.ph150.i275 ], [ %i.pe, %bb.eh ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.pe, %bb.eh ], [ %i.pe, %bb.eq ], [ %i.pe, %bb.ep ], [ %i.pe, %bb.ek ], [ %i.pe, %bb.el ], [ %i.pe, %.lr.ph.i250 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.pc) #28
  %i.rg = load i8, ptr %i.ag, align 8, !range !17, !noundef !8
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %bb.ev, label %bb.ew

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282: ; preds = %bb.em, %bb.en, %bb.er, %bb.es
  %.sroa.15372.0 = phi i64 [ %i.qw, %bb.er ], [ %i.qi, %bb.en ], [ %i.rf, %bb.es ], [ %i.pz, %bb.em ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 4, i64 noundef %.sroa.15372.0) #25
  br label %bb.et

bb.et:                                            ; preds = %bb.ew, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282
  %i.ri = phi ptr [ %.ph, %bb.ew ], [ %i.pe, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit282 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.rj = icmp eq i64 %i.pc, 0
  br i1 %i.rj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit285, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ri, i64 noundef %i.pc, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1378
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit285

bb.ev:                                            ; preds = %.loopexit467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i64 %i.pc, ptr %i.af, align 8
  store ptr %.ph, ptr %.sroa.5367.0..sroa_idx, align 8
  store i64 %i.pc, ptr %.sroa.8368.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.af) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 38, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit285

bb.ew:                                            ; preds = %.loopexit467
  %i.rk = load double, ptr %i.fs, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 4, double noundef %i.rk) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.et

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit285: ; preds = %bb.eu, %bb.et, %bb.ev
  %i.rl = icmp eq i64 %.sroa.0352.0.copyload353, 0
  %or.cond = select i1 %.sroa.024.0.not, i1 true, i1 %i.rl
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit303, label %bb.fj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit303: ; preds = %bb.fj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.al, ptr %i.ad, align 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.465.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1379
  store ptr %i.ap, ptr %i.d, align 8, !noalias !1379
  store ptr null, ptr %i.ft, align 8, !noalias !1379
  %i.rm = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @19, ptr noundef nonnull @69, ptr noundef nonnull %i.ad) #25
  %i.rn = load ptr, ptr %i.ft, align 8, !noalias !1379, !noundef !8 ; 7 uses
  %.not.i5.i287 = icmp eq ptr %i.rn, null         ; 2 uses
  br i1 %i.rm, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit303
  br i1 %.not.i5.i287, label %bb.fc, label %bb.fd, !prof !12

bb.ey:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit303
  br i1 %.not.i5.i287, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit.i289.thread, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1379
  %i.ro = ptrtoint ptr %i.rn to i64               ; 2 uses
  %i.rp = and i64 %i.ro, 3
  switch i64 %i.rp, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i288
    i64 3, label %bb.fa
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i288
    i64 1, label %bb.fb
  ], !prof !19

bb.fa:                                            ; preds = %bb.ez
  %i.rq = icmp ult ptr %i.rn, inttoptr (i64 188978561024 to ptr)
  %i.rr = and i64 %i.ro, 1095216660480
  %i.rs = icmp ne i64 %i.rr, 1095216660480
  call void @llvm.assume(i1 %i.rq)
  call void @llvm.assume(i1 %i.rs)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i288

bb.fb:                                            ; preds = %bb.ez
  %i.rt = getelementptr i8, ptr %i.rn, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rt) ]
  store ptr %i.rt, ptr %i.fu, align 8, !alias.scope !1380, !noalias !1379
  store i8 3, ptr %i.c, align 8, !alias.scope !1380, !noalias !1379
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fu) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i288

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i288: ; preds = %bb.fb, %bb.fa, %bb.ez, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1379
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit.i289.thread

bb.fc:                                            ; preds = %bb.ex
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #29
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit.i289.thread: ; preds = %bb.ey, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1379
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit296

bb.fd:                                            ; preds = %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ru = ptrtoint ptr %i.rn to i64               ; 2 uses
  %i.rv = and i64 %i.ru, 3
  switch i64 %i.rv, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i294
    i64 3, label %bb.fe
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i294
    i64 1, label %bb.ff
  ], !prof !19

bb.fe:                                            ; preds = %bb.fd
  %i.rw = icmp ult ptr %i.rn, inttoptr (i64 188978561024 to ptr)
  %i.rx = and i64 %i.ru, 1095216660480
  %i.ry = icmp ne i64 %i.rx, 1095216660480
  call void @llvm.assume(i1 %i.rw)
  call void @llvm.assume(i1 %i.ry)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i294

bb.ff:                                            ; preds = %bb.fd
  %i.rz = getelementptr i8, ptr %i.rn, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rz) ]
  store ptr %i.rz, ptr %i.fv, align 8, !alias.scope !1381
  store i8 3, ptr %i.b, align 8, !alias.scope !1381
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fv) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i294

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i294: ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit296

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit296: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit.i289.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  %.val.i297 = load i64, ptr %i.al, align 8, !range !9, !alias.scope !1382, !noundef !8 ; 2 uses
  %i.sa = icmp eq i64 %.val.i297, 0
  br i1 %i.sa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit299, label %bb.fg

bb.fg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit296
  %.val1.i298 = load ptr, ptr %i.fw, align 8, !alias.scope !1382, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i298, i64 noundef %.val.i297, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1382
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit299

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit299: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfIwuYbgPzJV_5uu_du.exit296, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.val112 = load ptr, ptr %i.ap, align 8, !nonnull !8, !align !16, !noundef !8 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.val112, i64 12 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !noundef !8
  %i.sd = add i32 %i.sc, -1                       ; 2 uses
  store i32 %i.sd, ptr %i.sb, align 4
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.fh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit300

bb.fh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit299
  store atomic i64 0, ptr %.val112 monotonic, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %.val112, i64 8 ; 2 uses
  %i.sg = atomicrmw xchg ptr %i.sf, i32 0 release, align 4
  %i.sh = icmp eq i32 %i.sg, 2
  br i1 %i.sh, label %bb.fi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit300, !prof !12

bb.fi:                                            ; preds = %bb.fh
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.sf) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit300

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfIwuYbgPzJV_5uu_du.exit300: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit299, %bb.fh, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #25
  br label %bb.dz

bb.fj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit285
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5354.0.copyload356, i64 noundef %.sroa.0352.0.copyload353, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1383
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit303
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsfIwuYbgPzJV_5uu_du16parse_time_style(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #25
  %.sroa.02.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs2vKOLqTMYjT_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 10) #25
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.thread, label %bb.d

end_hunk_0
begin_hunk_1_@_RNvXsg_CsfIwuYbgPzJV_5uu_duNtB5_7DuErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  br i1 %i.kb, label %bb.br, label %bb.bs

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit122: ; preds = %bb.y, %bb.z, %bb.ad, %bb.ae, %.preheader.i113, %.preheader114.i98
  %.sroa.15279.0 = phi i64 [ %i.fc, %bb.ae ], [ %i.ef, %bb.z ], [ %i.et, %bb.ad ], [ 0, %.preheader.i113 ], [ 0, %.preheader114.i98 ], [ %i.dw, %bb.y ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 5, i64 noundef %.sroa.15279.0) #25
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.kc = icmp eq i64 %.sroa.0266.0.copyload267, 0
  br i1 %i.kc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit201, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5268.0.copyload270, i64 noundef %.sroa.0266.0.copyload267, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4714
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit201

bb.br:                                            ; preds = %.loopexit356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.0266.0.copyload267, ptr %i.aa, align 8
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.5268.0.copyload270, ptr %.sroa.5268.0..sroa_idx, align 8
  %.sroa.8272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.8272.0.copyload274, ptr %.sroa.8272.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit201

bb.bs:                                            ; preds = %.loopexit356
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ke = load double, ptr %i.kd, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 5, double noundef %i.ke) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.bp

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit201: ; preds = %bb.bq, %bb.bp, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ae, ptr %i.y, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.436.0..sroa_idx, align 8
  %i.kf = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !nonnull !8, !align !16, !noundef !8
  %i.ki = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.kf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kh, ptr noundef nonnull @195, ptr noundef nonnull %i.y) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !4715)
  %.val.i202 = load i64, ptr %i.ae, align 8, !range !9, !alias.scope !4715, !noundef !8 ; 2 uses
  %i.kj = icmp eq i64 %.val.i202, 0
  br i1 %i.kj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit204, label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit201
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val1.i203 = load ptr, ptr %i.kk, align 8, !alias.scope !4715, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i203, i64 noundef %.val.i202, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4715
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit204

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit204: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit201, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bo

.loopexit369:                                     ; preds = %.lr.ph.i127, %bb.am, %bb.al, %.lr.ph141.i137, %.preheader111.i144, %bb.aq, %bb.ar, %.lr.ph150.i152, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsfIwuYbgPzJV_5uu_du.exit125, %bb.ah, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5282.0.copyload284, i64 noundef %.sroa.8286.0.copyload288) #28
  %i.kl = load i8, ptr %i.u, align 8, !range !17, !noundef !8
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.bw, label %bb.bx

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit159: ; preds = %bb.an, %bb.ao, %bb.as, %bb.at, %.preheader.i150, %.preheader114.i135
  %.sroa.15293.0 = phi i64 [ %i.hk, %bb.at ], [ %i.gn, %bb.ao ], [ %i.hb, %bb.as ], [ 0, %.preheader.i150 ], [ 0, %.preheader114.i135 ], [ %i.ge, %bb.an ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 5, i64 noundef %.sroa.15293.0) #25
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %bb.bw, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit159
  %.sroa.01.0.not = phi i1 [ true, %bb.bw ], [ false, %bb.bx ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit159 ]
  %i.kn = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore16execution_phrase() #25 ; 2 uses
  %i.ko = extractvalue { ptr, i64 } %i.kn, 0
  %i.kp = extractvalue { ptr, i64 } %i.kn, 1      ; 16 uses
  %.not.i = icmp slt i64 %i.kp, 0
  br i1 %.not.i, label %bb.by, label %bb.bv, !prof !13

bb.bv:                                            ; preds = %bb.bu
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.bv
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !4716
  %i.kr = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.kp, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4716 ; 18 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.by, label %bb.bz

bb.bw:                                            ; preds = %.loopexit369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 %.sroa.0280.0.copyload281, ptr %i.t, align 8
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.5282.0.copyload284, ptr %.sroa.5282.0..sroa_idx, align 8
  %.sroa.8286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %.sroa.8286.0.copyload288, ptr %.sroa.8286.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bu

bb.bx:                                            ; preds = %.loopexit369
  %i.kt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ku = load double, ptr %i.kt, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 5, double noundef %i.ku) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bu

bb.by:                                            ; preds = %bb.bu, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.bu ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.kp) #30
  unreachable

bb.bz:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kr, ptr align 1 %i.ko, i64 %i.kp, i1 false)
  %cond = icmp eq i64 %i.kp, 1
  %i.kv = load i8, ptr %i.kr, align 1, !alias.scope !4717, !noalias !4718 ; 2 uses
  br i1 %cond, label %bb.ca, label %thread-pre-split.i237

bb.ca:                                            ; preds = %bb.bz
  switch i8 %i.kv, label %bb.ch [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i237:                            ; preds = %bb.bz
  switch i8 %i.kv, label %bb.ch [
    i8 43, label %bb.cb
    i8 45, label %bb.cc
  ]

bb.cb:                                            ; preds = %thread-pre-split.i237
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  %i.kx = add nsw i64 %i.kp, -1
  br label %bb.ch

bb.cc:                                            ; preds = %thread-pre-split.i237
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 1 ; 2 uses
  %i.kz = add nsw i64 %i.kp, -1                   ; 2 uses
  %i.la = icmp samesign ult i64 %i.kp, 17
  br i1 %i.la, label %.lr.ph141.i217, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.cc, %bb.cf
  %.sroa.0.1136.i208 = phi ptr [ %i.lb, %bb.cf ], [ %i.ky, %bb.cc ] ; 2 uses
  %.sroa.26.1135.i209 = phi i64 [ %i.lc, %bb.cf ], [ %i.kz, %bb.cc ]
  %.sroa.084.0134.i210 = phi i64 [ %i.ln, %bb.cf ], [ 0, %bb.cc ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i208, i64 1
  %i.lc = add nsw i64 %.sroa.26.1135.i209, -1     ; 2 uses
  %i.ld = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i210, i64 10) ; 2 uses
  %i.le = extractvalue { i64, i1 } %i.ld, 0
  %i.lf = extractvalue { i64, i1 } %i.ld, 1
  br i1 %i.lf, label %.thread, label %bb.cd, !prof !12

bb.cd:                                            ; preds = %.lr.ph.i207
  %i.lg = load i8, ptr %.sroa.0.1136.i208, align 1, !alias.scope !4717, !noalias !4718, !noundef !8
  %i.lh = zext i8 %i.lg to i32
  %i.li = add nsw i32 %i.lh, -48                  ; 2 uses
  %i.lj = icmp ult i32 %i.li, 10
  br i1 %i.lj, label %bb.ce, label %.thread

bb.ce:                                            ; preds = %bb.cd
  %i.lk = zext nneg i32 %i.li to i64
  %i.ll = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.le, i64 %i.lk) ; 2 uses
  %i.lm = extractvalue { i64, i1 } %i.ll, 1
  br i1 %i.lm, label %.thread, label %bb.cf, !prof !12

bb.cf:                                            ; preds = %bb.ce
  %i.ln = extractvalue { i64, i1 } %i.ll, 0       ; 2 uses
  %.not102.i212 = icmp eq i64 %i.lc, 0
  br i1 %.not102.i212, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit239, label %.lr.ph.i207

.lr.ph141.i217:                                   ; preds = %bb.cc, %bb.cg
  %.sroa.0.2140.i218 = phi ptr [ %i.lu, %bb.cg ], [ %i.ky, %bb.cc ] ; 2 uses
  %.sroa.26.2139.i219 = phi i64 [ %i.lt, %bb.cg ], [ %i.kz, %bb.cc ]
  %.sroa.084.2138.i220 = phi i64 [ %i.lw, %bb.cg ], [ 0, %bb.cc ]
  %i.lo = load i8, ptr %.sroa.0.2140.i218, align 1, !alias.scope !4717, !noalias !4718, !noundef !8
  %i.lp = zext i8 %i.lo to i32
  %i.lq = add nsw i32 %i.lp, -48                  ; 2 uses
  %i.lr = icmp ult i32 %i.lq, 10
  br i1 %i.lr, label %bb.cg, label %.thread

bb.cg:                                            ; preds = %.lr.ph141.i217
  %i.ls = mul i64 %.sroa.084.2138.i220, 10
  %i.lt = add nsw i64 %.sroa.26.2139.i219, -1     ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i218, i64 1
  %i.lv = zext nneg i32 %i.lq to i64
  %i.lw = sub i64 %i.ls, %i.lv                    ; 2 uses
  %.not103.i221 = icmp eq i64 %i.lt, 0
  br i1 %.not103.i221, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit239, label %.lr.ph141.i217

bb.ch:                                            ; preds = %bb.ca, %bb.cb, %thread-pre-split.i237
  %.sroa.26.0.i222 = phi i64 [ %i.kx, %bb.cb ], [ %i.kp, %thread-pre-split.i237 ], [ %i.kp, %bb.ca ] ; 3 uses
  %.sroa.0.0.i223 = phi ptr [ %i.kw, %bb.cb ], [ %i.kr, %thread-pre-split.i237 ], [ %i.kr, %bb.ca ] ; 2 uses
  %i.lx = icmp samesign ult i64 %.sroa.26.0.i222, 16
  br i1 %i.lx, label %.lr.ph150.i232, label %.preheader111.i224

.preheader111.i224:                               ; preds = %bb.ch, %bb.ck
  %.sroa.0.3145.i225 = phi ptr [ %i.ly, %bb.ck ], [ %.sroa.0.0.i223, %bb.ch ] ; 2 uses
  %.sroa.26.3144.i226 = phi i64 [ %i.lz, %bb.ck ], [ %.sroa.26.0.i222, %bb.ch ]
  %.sroa.084.3143.i227 = phi i64 [ %i.mk, %bb.ck ], [ 0, %bb.ch ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i225, i64 1
  %i.lz = add nsw i64 %.sroa.26.3144.i226, -1     ; 2 uses
  %i.ma = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i227, i64 10) ; 2 uses
  %i.mb = extractvalue { i64, i1 } %i.ma, 0
  %i.mc = extractvalue { i64, i1 } %i.ma, 1
  br i1 %i.mc, label %.thread, label %bb.ci, !prof !12

bb.ci:                                            ; preds = %.preheader111.i224
  %i.md = load i8, ptr %.sroa.0.3145.i225, align 1, !alias.scope !4717, !noalias !4718, !noundef !8
  %i.me = zext i8 %i.md to i32
  %i.mf = add nsw i32 %i.me, -48                  ; 2 uses
  %i.mg = icmp ult i32 %i.mf, 10
  br i1 %i.mg, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %bb.ci
  %i.mh = zext nneg i32 %i.mf to i64
  %i.mi = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.mb, i64 %i.mh) ; 2 uses
  %i.mj = extractvalue { i64, i1 } %i.mi, 1
  br i1 %i.mj, label %.thread, label %bb.ck, !prof !12

bb.ck:                                            ; preds = %bb.cj
  %i.mk = extractvalue { i64, i1 } %i.mi, 0       ; 2 uses
  %.not104.i229 = icmp eq i64 %i.lz, 0
  br i1 %.not104.i229, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit239, label %.preheader111.i224

.lr.ph150.i232:                                   ; preds = %bb.ch, %bb.cl
  %.sroa.0.4149.i233 = phi ptr [ %i.mr, %bb.cl ], [ %.sroa.0.0.i223, %bb.ch ] ; 2 uses
  %.sroa.26.4148.i234 = phi i64 [ %i.mq, %bb.cl ], [ %.sroa.26.0.i222, %bb.ch ]
  %.sroa.084.4147.i235 = phi i64 [ %i.mt, %bb.cl ], [ 0, %bb.ch ]
  %i.ml = load i8, ptr %.sroa.0.4149.i233, align 1, !alias.scope !4717, !noalias !4718, !noundef !8
  %i.mm = zext i8 %i.ml to i32
  %i.mn = add nsw i32 %i.mm, -48                  ; 2 uses
  %i.mo = icmp ult i32 %i.mn, 10
  br i1 %i.mo, label %bb.cl, label %.thread

bb.cl:                                            ; preds = %.lr.ph150.i232
  %i.mp = mul i64 %.sroa.084.4147.i235, 10
  %i.mq = add nsw i64 %.sroa.26.4148.i234, -1     ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i233, i64 1
  %i.ms = zext nneg i32 %i.mn to i64
  %i.mt = add i64 %i.mp, %i.ms                    ; 2 uses
  %.not105.i236 = icmp eq i64 %i.mq, 0
  br i1 %.not105.i236, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit239, label %.lr.ph150.i232

.thread:                                          ; preds = %.lr.ph.i207, %bb.ce, %bb.cd, %.lr.ph141.i217, %.preheader111.i224, %bb.ci, %bb.cj, %.lr.ph150.i232, %bb.ca, %bb.ca, %bb.bv
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.bv ], [ %i.kr, %.preheader111.i224 ], [ %i.kr, %.lr.ph150.i232 ], [ %i.kr, %bb.ca ], [ %i.kr, %.lr.ph141.i217 ], [ %i.kr, %bb.ca ], [ %i.kr, %bb.cj ], [ %i.kr, %bb.ci ], [ %i.kr, %bb.cd ], [ %i.kr, %bb.ce ], [ %i.kr, %.lr.ph.i207 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.kp) #28
  %i.mu = load i8, ptr %i.s, align 8, !range !17, !noundef !8
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.co, label %bb.cp

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit239: ; preds = %bb.cf, %bb.cg, %bb.ck, %bb.cl
  %.sroa.15300.0 = phi i64 [ %i.mk, %bb.ck ], [ %i.lw, %bb.cg ], [ %i.mt, %bb.cl ], [ %i.ln, %bb.cf ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 4, i64 noundef %.sroa.15300.0) #25
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit239
  %i.mw = phi ptr [ %.ph, %bb.cp ], [ %i.kr, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit239 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.mx = icmp eq i64 %i.kp, 0
  br i1 %i.mx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit242, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mw, i64 noundef %i.kp, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4719
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit242

bb.co:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.kp, ptr %i.r, align 8
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.ph, ptr %.sroa.5295.0..sroa_idx, align 8
  %.sroa.8296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.kp, ptr %.sroa.8296.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @239, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit242

bb.cp:                                            ; preds = %.thread
  %i.my = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.mz = load double, ptr %i.my, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @111, i64 noundef 4, double noundef %i.mz) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.cm

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit242: ; preds = %bb.cn, %bb.cm, %bb.co
  %i.na = icmp eq i64 %.sroa.0280.0.copyload281, 0
  %or.cond = select i1 %.sroa.01.0.not, i1 true, i1 %i.na
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit248, label %bb.cr

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit248: ; preds = %bb.cr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.x, ptr %i.p, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8
  %i.nb = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !nonnull !8, !align !16, !noundef !8
  %i.ne = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.nb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nd, ptr noundef nonnull @195, ptr noundef nonnull %i.p) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !4720)
  %.val.i243 = load i64, ptr %i.x, align 8, !range !9, !alias.scope !4720, !noundef !8 ; 2 uses
  %i.nf = icmp eq i64 %.val.i243, 0
  br i1 %i.nf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit245, label %bb.cq

bb.cq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit248
  %i.ng = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i244 = load ptr, ptr %i.ng, align 8, !alias.scope !4720, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i244, i64 noundef %.val.i243, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4720
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit245

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit245: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit248, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bo

bb.cr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit242
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5282.0.copyload284, i64 noundef %.sroa.0280.0.copyload281, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4721
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit248

.loopexit376:                                     ; preds = %.lr.ph.i163, %bb.bb, %bb.ba, %.lr.ph141.i173, %.preheader111.i180, %bb.bf, %bb.bg, %.lr.ph150.i188, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs8P23TVsEbeF_4glob12PatternErrorNtB5_12SpecToString14spec_to_stringCsfIwuYbgPzJV_5uu_du.exit, %bb.aw, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5303.0.copyload305, i64 noundef %.sroa.8307.0.copyload309) #28
  %i.nh = load i8, ptr %i.m, align 8, !range !17, !noundef !8
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.cu, label %bb.cv

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit195: ; preds = %bb.bc, %bb.bd, %bb.bh, %bb.bi, %.preheader.i186, %.preheader114.i171
  %.sroa.15314.0 = phi i64 [ %i.jo, %bb.bi ], [ %i.ir, %bb.bd ], [ %i.jf, %bb.bh ], [ 0, %.preheader.i186 ], [ 0, %.preheader114.i171 ], [ %i.ii, %bb.bc ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 5, i64 noundef %.sroa.15314.0) #25
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cv, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.nj = icmp eq i64 %.sroa.0301.0.copyload302, 0
  br i1 %i.nj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit251, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5303.0.copyload305, i64 noundef %.sroa.0301.0.copyload302, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4722
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit251

bb.cu:                                            ; preds = %.loopexit376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0301.0.copyload302, ptr %i.l, align 8
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.5303.0.copyload305, ptr %.sroa.5303.0..sroa_idx, align 8
  %.sroa.8307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %.sroa.8307.0.copyload309, ptr %.sroa.8307.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 21, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit251

bb.cv:                                            ; preds = %.loopexit376
  %i.nk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.nl = load double, ptr %i.nk, align 8, !noundef !8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 5, double noundef %i.nl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.cs

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit251: ; preds = %bb.ct, %bb.cs, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.o, ptr %i.j, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.473.0..sroa_idx, align 8
  %i.nm = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !nonnull !8, !align !16, !noundef !8
  %i.np = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.nm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.no, ptr noundef nonnull @195, ptr noundef nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !4723)
  %.val.i252 = load i64, ptr %i.o, align 8, !range !9, !alias.scope !4723, !noundef !8 ; 2 uses
  %i.nq = icmp eq i64 %.val.i252, 0
  br i1 %i.nq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit254, label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit251
  %i.nr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i253 = load ptr, ptr %i.nr, align 8, !alias.scope !4723, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i253, i64 noundef %.val.i252, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !4723
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit254

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit254: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit251, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bo
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !16, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #31
  ret i1 %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !8
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs6JMX4GRUq9U_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25
  ret i1 %i.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_12USimpleErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @244, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @221) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCsh036I4OHgIr_6uucore4mods5errorNtB5_8UIoErrorNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @249, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef align 8 ptr @_RNvYINtNtCs3JjgEOiFeOI_4jiff3fmt10StdIoWriteQNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtB5_5Write10as_mut_vecCsfIwuYbgPzJV_5uu_du(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret ptr null
}
end_hunk_1
