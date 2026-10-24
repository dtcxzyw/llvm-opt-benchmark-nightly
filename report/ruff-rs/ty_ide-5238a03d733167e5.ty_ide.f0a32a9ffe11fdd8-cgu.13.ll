Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.13?download=true
inline.NumInlined: 836
inline.NumDeleted: 515
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_mode:.lr.ph

bb.p:                                             ; preds = %.noexc.i
  %i.dw = load ptr, ptr %i.dq, align 8, !alias.scope !1417, !noalias !1412, !nonnull !4, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull readonly align 1 %i.cz, i64 %i.db, i1 false), !noalias !1412
  %.pre.i4.i = load i64, ptr %i.de, align 8, !alias.scope !1417, !noalias !1412
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit5.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit5.i: ; preds = %bb.p, %.noexc.i
  %i.dy = phi i64 [ %.pre.i4.i, %bb.p ], [ %i.du, %.noexc.i ]
  %i.dz = add i64 %i.dy, %i.db
  store i64 %i.dz, ptr %i.de, align 8, !alias.scope !1417, !noalias !1412
  br label %bb.k

bb.q:                                             ; preds = %bb.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer15finish_document.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.eb = trunc nuw i8 %.sroa.096.2.lcssa.ph to i1
  br i1 %i.eb, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskEUeM34gmJU_6ty_ide.exit.i, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer15finish_document.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.r:                                             ; preds = %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer15finish_document.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.thread388 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskEUeM34gmJU_6ty_ide.exit.i: ; preds = %bb.r
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit

bb.u:                                             ; preds = %.body.thread, %.body
  %.sroa.099.2 = phi i1 [ %.sroa.099.0383, %.body.thread ], [ %.sroa.099.0, %.body ]
  %.pn240.pn = phi { ptr, i32 } [ %.pn240384, %.body.thread ], [ %.pn240, %.body ] ; 2 uses
  br i1 %.sroa.099.2, label %bb.gq, label %.thread388

_RNvXs3_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit: ; preds = %.noexc251, %.noexc250
  %.merged.i = phi { ptr, i64 } [ %..i, %.noexc251 ], [ %i.ci, %.noexc250 ] ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %.merged.i, 0
  %i.ef = extractvalue { ptr, i64 } %.merged.i, 1 ; 3 uses
  %i.eg = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ef, i32 noundef 32)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.v:                                             ; preds = %_RNvXs3_NtCs4NRVxsYgnAr_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0      ; 17 uses
  %i.ei = extractvalue { ptr, i64 } %i.eg, 1      ; 26 uses
  %i.ej = icmp ugt i64 %i.ef, 4294967295
  %i.ek = shl nuw i64 %i.ef, 32
  %.sroa.09.0.insert.insert.i = select i1 %i.ej, i64 513, i64 %i.ek ; 2 uses
  %i.el = trunc i64 %.sroa.09.0.insert.insert.i to i1
  br i1 %i.el, label %bb.w, label %bb.x, !prof !3

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %.invoke831

bb.x:                                             ; preds = %bb.v
  %i.em = icmp ugt i64 %i.ei, 4294967295
  %i.en = shl nuw i64 %i.ei, 32
  %.sroa.09.0.insert.insert.i259 = select i1 %i.em, i64 513, i64 %i.en ; 2 uses
  %i.eo = trunc i64 %.sroa.09.0.insert.insert.i259 to i1
  br i1 %i.eo, label %bb.y, label %bb.z, !prof !3

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %.invoke831

.invoke831:                                       ; preds = %bb.w, %bb.y
  %.sink833 = phi ptr [ %i.g, %bb.w ], [ %i.f, %bb.y ] ; 2 uses
  store i8 2, ptr %.sink833, align 1
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %.sink833, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #34
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke831
  unreachable

bb.z:                                             ; preds = %bb.x
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.09.0.insert.insert.i, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %.sroa.6.0.extract.shift.i.i260 = lshr i64 %.sroa.09.0.insert.insert.i259, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i261 = trunc nuw i64 %.sroa.6.0.extract.shift.i.i260 to i32
  %i.ep = sub i32 %.sroa.6.0.extract.trunc.i.i, %.sroa.6.0.extract.trunc.i.i261 ; 4 uses
  %.val.i264 = load i32, ptr %i.x, align 8        ; 3 uses
  store i64 0, ptr %.sroa.5114.0..sroa_idx, align 8, !alias.scope !1418
  br i1 %.sroa.0.0561, label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.off.i.i = add i32 %.val.i264, -2
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.w, i64 noundef 2)
          to label %.noexc265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc265:                                        ; preds = %bb.ab
  %i.eq = load i64, ptr %.sroa.5114.0..sroa_idx, align 8, !alias.scope !1419, !noundef !4 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !alias.scope !1419, !nonnull !4, !noundef !4
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  store i16 8224, ptr %i.et, align 1
  %.pre.i.i.i = load i64, ptr %.sroa.5114.0..sroa_idx, align 8, !alias.scope !1419
  %i.eu = add i64 %.pre.i.i.i, 2                  ; 2 uses
  store i64 %i.eu, ptr %.sroa.5114.0..sroa_idx, align 8, !alias.scope !1419
  %i.ev = icmp eq i32 %.val.i264, 1
  br i1 %i.ev, label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exitthread-pre-split, label %bb.ac

bb.ac:                                            ; preds = %.noexc265, %bb.aa
  %i.ew = phi i64 [ 0, %bb.aa ], [ %i.eu, %.noexc265 ] ; 3 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  call void @llvm.assume(i1 %i.ex)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.w, i64 noundef 1)
          to label %.noexc266 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc266:                                        ; preds = %bb.ac
  %i.ey = load ptr, ptr %.sroa.4113.0..sroa_idx, align 8, !alias.scope !1420, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew
  store i8 10, ptr %i.ez, align 1
  %i.fa = add nuw i64 %i.ew, 1
  store i64 %i.fa, ptr %.sroa.5114.0..sroa_idx, align 8, !alias.scope !1420
  br label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exitthread-pre-split

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exitthread-pre-split: ; preds = %.noexc265, %.noexc266
  %.pr = load i32, ptr %i.x, align 8
  br label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exit

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exit: ; preds = %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exitthread-pre-split, %bb.z
  %i.fb = phi i32 [ %.pr, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exitthread-pre-split ], [ %.val.i264, %bb.z ] ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 2
  br i1 %i.fc, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exit
  %i.fd = load i32, ptr %.sroa.4101.0..sroa_idx, align 4, !noundef !4
  %i.fe = icmp ne i64 %i.ei, 0
  %i.ff = icmp ult i32 %i.ep, %i.fd
  %or.cond = and i1 %i.fe, %i.ff
  br i1 %or.cond, label %bb.ae, label %.thread678

.thread678:                                       ; preds = %bb.ad
  %i.fg = icmp eq i64 %i.ei, 0
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  invoke fastcc void @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18flush_pending_line(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.w)
          to label %.noexc268 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc268:                                        ; preds = %bb.ae
  store i32 0, ptr %i.x, align 8, !alias.scope !1421
  %i.fh = load ptr, ptr %i.z, align 8, !alias.scope !1421, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef 11)
          to label %.noexc269 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc269:                                        ; preds = %.noexc268
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 4 uses
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !1422, !noalias !1421, !noundef !4 ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  call void @llvm.assume(i1 %i.fk)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !1422, !noalias !1421, !nonnull !4, !noundef !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.fn, i8 96, i64 11, i1 false), !noalias !1421
  %.pre.i.i267 = load i64, ptr %i.fi, align 8, !alias.scope !1422, !noalias !1421 ; 2 uses
  %i.fo = add nsw i64 %.pre.i.i267, 11            ; 2 uses
  store i64 %i.fo, ptr %i.fi, align 8, !alias.scope !1422, !noalias !1421
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fh, i64 noundef 1)
          to label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer19finish_rest_literal.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer19finish_rest_literal.exit: ; preds = %.noexc269
  %i.fp = load ptr, ptr %i.fl, align 8, !alias.scope !1423, !noalias !1421, !nonnull !4, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fo
  store i8 10, ptr %i.fq, align 1, !noalias !1421
  %i.fr = add i64 %.pre.i.i267, 12
  store i64 %i.fr, ptr %i.fi, align 8, !alias.scope !1423, !noalias !1421
  %.pre = load i32, ptr %i.x, align 8, !range !1413
  br label %bb.af

bb.af:                                            ; preds = %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer19finish_rest_literal.exit, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exit
  %i.fs = phi i32 [ %.pre, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer19finish_rest_literal.exit ], [ %i.fb, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer12prepare_line.exit ] ; 2 uses
  %i.ft = icmp ne i32 %i.fs, 1
  %i.fu = icmp eq i64 %i.ei, 0                    ; 4 uses
  %or.cond243 = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %or.cond243, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fv = load i64, ptr %i.aa, align 8, !noundef !4 ; 4 uses
  %i.fw = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  invoke fastcc void @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18flush_pending_line(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.w)
          to label %.noexc274 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc274:                                        ; preds = %bb.ag
  store i32 2, ptr %i.x, align 8, !alias.scope !1424
  store i32 %i.ep, ptr %.sroa.4101.0..sroa_idx, align 4, !alias.scope !1424
  %i.fx = load ptr, ptr %i.z, align 8, !alias.scope !1424, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 9 uses
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !1425, !noalias !1426, !noundef !4 ; 3 uses
  %i.ga = icmp sgt i64 %i.fz, -1
  call void @llvm.assume(i1 %i.ga)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx, i64 noundef 1)
          to label %.noexc275 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc275:                                        ; preds = %.noexc274
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 4 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !1425, !noalias !1426, !nonnull !4, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fz
  store i8 10, ptr %i.gd, align 1, !noalias !1426
  %i.ge = add nuw i64 %i.fz, 1
  store i64 %i.ge, ptr %i.fy, align 8, !alias.scope !1425, !noalias !1426
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx, i64 noundef 11)
          to label %.noexc276 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc276:                                        ; preds = %.noexc275
  %i.gf = load i64, ptr %i.fy, align 8, !alias.scope !1427, !noalias !1426, !noundef !4 ; 2 uses
  %i.gg = icmp sgt i64 %i.gf, -1
  call void @llvm.assume(i1 %i.gg)
  %i.gh = load ptr, ptr %i.gb, align 8, !alias.scope !1427, !noalias !1426, !nonnull !4, !noundef !4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.gi, i8 96, i64 11, i1 false), !noalias !1426
  %.pre.i.i271 = load i64, ptr %i.fy, align 8, !alias.scope !1427, !noalias !1426
  %i.gj = add i64 %.pre.i.i271, 11
  store i64 %i.gj, ptr %i.fy, align 8, !alias.scope !1427, !noalias !1426
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx, i64 noundef %i.fv)
          to label %.noexc277 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc277:                                        ; preds = %.noexc276
  %i.gk = load i64, ptr %i.fy, align 8, !alias.scope !1428, !noalias !1426, !noundef !4 ; 3 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gl)
  %.not.i.i272 = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i272, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i273, label %bb.ah

bb.ah:                                            ; preds = %.noexc277
  %i.gm = load ptr, ptr %i.gb, align 8, !alias.scope !1428, !noalias !1426, !nonnull !4, !noundef !4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr nonnull readonly align 1 %i.fw, i64 %i.fv, i1 false), !noalias !1424
  %.pre.i3.i = load i64, ptr %i.fy, align 8, !alias.scope !1428, !noalias !1426
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i273

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i273: ; preds = %bb.ah, %.noexc277
  %i.go = phi i64 [ %.pre.i3.i, %bb.ah ], [ %i.gk, %.noexc277 ]
  %i.gp = add i64 %i.go, %i.fv                    ; 4 uses
  store i64 %i.gp, ptr %i.fy, align 8, !alias.scope !1428, !noalias !1426
  %i.gq = icmp sgt i64 %i.gp, -1
  call void @llvm.assume(i1 %i.gq)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fx, i64 noundef 1)
          to label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18start_rest_literal.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18start_rest_literal.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i273
  %i.gr = load ptr, ptr %i.gb, align 8, !alias.scope !1429, !noalias !1426, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gp
  store i8 10, ptr %i.gs, align 1, !noalias !1426
  %i.gt = add nuw i64 %i.gp, 1
  store i64 %i.gt, ptr %i.fy, align 8, !alias.scope !1429, !noalias !1426
  %.pr392 = load i32, ptr %i.x, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18start_rest_literal.exit, %bb.af
  %i.gu = phi i32 [ %.pr392, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18start_rest_literal.exit ], [ %i.fs, %bb.af ]
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gw = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ei, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 3)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ak:                                            ; preds = %.thread678, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer13start_doctest.exit, %bb.al, %bb.ai
  %i.gx = phi i1 [ %i.fg, %.thread678 ], [ %i.fu, %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer13start_doctest.exit ], [ %i.fu, %bb.al ], [ %i.fu, %bb.ai ] ; 2 uses
  %i.gy = load i32, ptr %i.x, align 8, !range !1413, !noundef !4 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.an, label %bb.ao

bb.al:                                            ; preds = %bb.aj
  br i1 %i.gw, label %bb.am, label %bb.ak

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  invoke fastcc void @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18flush_pending_line(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.w)
          to label %.noexc281 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc281:                                        ; preds = %bb.am
  store i32 3, ptr %i.x, align 8, !alias.scope !1430
  %i.ha = load ptr, ptr %i.z, align 8, !alias.scope !1430, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha, i64 noundef 11)
          to label %.noexc282 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc282:                                        ; preds = %.noexc281
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 6 uses
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !1431, !noalias !1430, !noundef !4 ; 2 uses
  %i.hd = icmp sgt i64 %i.hc, -1
  call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !1431, !noalias !1430, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.hg, i8 96, i64 11, i1 false), !noalias !1430
  %.pre.i.i279 = load i64, ptr %i.hb, align 8, !alias.scope !1431, !noalias !1430
  %i.hh = add i64 %.pre.i.i279, 11
  store i64 %i.hh, ptr %i.hb, align 8, !alias.scope !1431, !noalias !1430
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha, i64 noundef 7)
          to label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer13start_doctest.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer13start_doctest.exit: ; preds = %.noexc282
  %i.hi = load i64, ptr %i.hb, align 8, !alias.scope !1432, !noalias !1430, !noundef !4 ; 2 uses
  %i.hj = icmp sgt i64 %i.hi, -1
  call void @llvm.assume(i1 %i.hj)
  %i.hk = load ptr, ptr %i.he, align 8, !alias.scope !1432, !noalias !1430, !nonnull !4, !noundef !4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.hl, ptr noundef nonnull align 1 dereferenceable(7) @8, i64 7, i1 false), !noalias !1430
  %.pre.i3.i280 = load i64, ptr %i.hb, align 8, !alias.scope !1432, !noalias !1430
  %i.hm = add i64 %.pre.i3.i280, 7
  store i64 %i.hm, ptr %i.hb, align 8, !alias.scope !1432, !noalias !1430
  br label %bb.ak

bb.an:                                            ; preds = %bb.ak
  %i.hn = invoke { ptr, i64 } @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12preformattedNtB2_13MarkdownFence4find(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ei)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

thread-pre-split:                                 ; preds = %bb.aq
  %.pr393 = load i32, ptr %i.x, align 8, !alias.scope !1433
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split, %bb.ak
  %i.ho = phi i32 [ %.pr393, %thread-pre-split ], [ %i.gy, %bb.ak ]
  %i.hp = icmp eq i32 %i.ho, 4
  br i1 %i.hp, label %bb.ap, label %_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.hq = invoke noundef zeroext i1 @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12preformattedNtB2_13MarkdownFence12is_closed_by(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ei)
          to label %_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.aq:                                            ; preds = %bb.an
  %i.hr = extractvalue { ptr, i64 } %i.hn, 0      ; 2 uses
  %.not204 = icmp eq ptr %i.hr, null
  br i1 %.not204, label %thread-pre-split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  invoke fastcc void @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18flush_pending_line(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.w)
          to label %.noexc288 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc288:                                        ; preds = %bb.ar
  %i.hs = extractvalue { ptr, i64 } %i.hn, 1
  store i32 4, ptr %i.x, align 8, !alias.scope !1434
  store ptr %i.hr, ptr %i.ab, align 8, !alias.scope !1434
  store i64 %i.hs, ptr %i.aa, align 8, !alias.scope !1434
  %i.ht = load ptr, ptr %i.z, align 8, !alias.scope !1434, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ht, i64 noundef %i.ei)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc289:                                        ; preds = %.noexc288
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !1435, !noalias !1436, !noundef !4 ; 3 uses
  %i.hw = icmp sgt i64 %i.hv, -1
  call void @llvm.assume(i1 %i.hw)
  br i1 %i.gx, label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer20start_markdown_fence.exit, label %bb.as

bb.as:                                            ; preds = %.noexc289
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !1435, !noalias !1436, !nonnull !4, !noundef !4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hz, ptr nonnull readonly align 1 %i.eh, i64 %i.ei, i1 false), !noalias !1434
  %.pre.i.i286 = load i64, ptr %i.hu, align 8, !alias.scope !1435, !noalias !1436
  br label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer20start_markdown_fence.exit

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer20start_markdown_fence.exit: ; preds = %.noexc289, %bb.as
  %i.ia = phi i64 [ %.pre.i.i286, %bb.as ], [ %i.hv, %.noexc289 ]
  %i.ib = add i64 %i.ia, %i.ei
  store i64 %i.ib, ptr %i.hu, align 8, !alias.scope !1435, !noalias !1436
  br label %.backedge

_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit: ; preds = %bb.ap
  br i1 %i.hq, label %bb.at, label %_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit.thread

_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit.thread: ; preds = %bb.ao, %_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit
  %i.ic = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.ei, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.at:                                            ; preds = %_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  invoke fastcc void @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer18flush_pending_line(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.w)
          to label %.noexc293 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc293:                                        ; preds = %bb.at
  store i32 0, ptr %i.x, align 8, !alias.scope !1437
  %i.id = load ptr, ptr %i.z, align 8, !alias.scope !1437, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.id, i64 noundef %i.ei)
          to label %.noexc294 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc294:                                        ; preds = %.noexc293
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !1438, !noalias !1439, !noundef !4 ; 3 uses
  %i.ig = icmp sgt i64 %i.if, -1
  call void @llvm.assume(i1 %i.ig)
  br i1 %i.gx, label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer21finish_markdown_fence.exit, label %bb.au

bb.au:                                            ; preds = %.noexc294
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !1438, !noalias !1439, !nonnull !4, !noundef !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ij, ptr nonnull readonly align 1 %i.eh, i64 %i.ei, i1 false), !noalias !1437
  %.pre.i.i291 = load i64, ptr %i.ie, align 8, !alias.scope !1438, !noalias !1439
  br label %_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer21finish_markdown_fence.exit

_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB2_8Renderer21finish_markdown_fence.exit: ; preds = %.noexc294, %bb.au
  %i.ik = phi i64 [ %.pre.i.i291, %bb.au ], [ %i.if, %.noexc294 ]
  %i.il = add i64 %i.ik, %i.ei
  store i64 %i.il, ptr %i.ie, align 8, !alias.scope !1438, !noalias !1439
  br label %.backedge

bb.av:                                            ; preds = %_RNvMs0_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7generalNtB5_10BlockState27markdown_fence_is_closed_by.exit.thread
  br i1 %i.ic, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit, label %.preheader

.preheader:                                       ; preds = %bb.av, %bb.aw
  %i.im = phi i64 [ %i.iq, %bb.aw ], [ %i.ei, %bb.av ]
  %i.in = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr7memrchr(i8 noundef 32, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.im)
          to label %.noexc295 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc295:                                        ; preds = %.preheader
  %i.io = extractvalue { i64, i64 } %i.in, 0
  %i.ip = trunc nuw i64 %i.io to i1
  br i1 %i.ip, label %bb.ax, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit.thread

bb.aw:                                            ; preds = %bb.ay, %bb.ax
  %.not.i.i.i.i = icmp ugt i64 %i.iq, %i.ei
  br i1 %.not.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit.thread, label %.preheader

bb.ax:                                            ; preds = %.noexc295
  %i.iq = extractvalue { i64, i64 } %i.in, 1      ; 6 uses
  %or.cond17.i.not.i.i.i = icmp ult i64 %i.iq, %i.ei
  br i1 %or.cond17.i.not.i.i.i, label %bb.ay, label %bb.aw

bb.ay:                                            ; preds = %bb.ax
  %i.ir = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.iq
  %lhsc.i.i.i = load i8, ptr %i.ir, align 1, !alias.scope !1440
  %i.is = icmp eq i8 %lhsc.i.i.i, 32
  br i1 %i.is, label %bb.az, label %bb.aw

bb.az:                                            ; preds = %bb.ay
  %i.it = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eh, i64 noundef %i.iq)
          to label %.noexc296 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc296:                                        ; preds = %bb.az
  %i.iu = extractvalue { ptr, i64 } %i.it, 0      ; 2 uses
  %i.iv = extractvalue { ptr, i64 } %i.it, 1      ; 2 uses
  %i.iw = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.iu, i64 noundef %i.iv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2)
          to label %.noexc297 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc297:                                        ; preds = %.noexc296
  br i1 %i.iw, label %bb.ba, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit.thread

bb.ba:                                            ; preds = %.noexc297
  %i.ix = add nuw i64 %i.iq, 1                    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ix
  %i.iz = sub nuw i64 %i.ei, %i.ix
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit: ; preds = %bb.av, %bb.ba
  %.sink = phi i64 [ %i.iv, %bb.ba ], [ %i.ei, %bb.av ]
  %.sroa.12.0 = phi i64 [ %i.iz, %bb.ba ], [ undef, %bb.av ] ; 2 uses
  %.sroa.10.0 = phi ptr [ %i.iy, %bb.ba ], [ null, %bb.av ] ; 2 uses
  %.sroa.0.0379 = phi ptr [ %i.iu, %bb.ba ], [ %i.eh, %bb.av ] ; 6 uses
  %i.ja = add i64 %.sink, -2                      ; 5 uses
  %i.jb = load i32, ptr %i.x, align 8, !range !1413, !noundef !4
  %.not = icmp eq i32 %i.jb, 0
  br i1 %.not, label %bb.bb, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit.thread

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit.thread: ; preds = %bb.aw, %.noexc295, %.noexc297, %bb.ec, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit
  %.sroa.096.3 = phi i8 [ %.sroa.096.7, %bb.ec ], [ %.sroa.096.2560, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReIBw_BJ_EEE7or_elseNCNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown7general28render_with_indentation_modes_0EB1d_.exit ], [ %.sroa.096.2560, %.noexc297 ], [ %.sroa.096.2560, %.noexc295 ], [ %.sroa.096.2560, %bb.aw ] ; 14 uses
end_hunk_0
