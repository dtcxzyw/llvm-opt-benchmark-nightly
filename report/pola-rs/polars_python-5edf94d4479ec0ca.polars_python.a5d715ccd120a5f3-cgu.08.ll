Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.08?download=true
inline.NumInlined: 15281
inline.NumDeleted: 4910
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_boolRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python:bb.a
          to label %.thread39 unwind label %bb.m, !dbg !37225

bb.m:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !37228
  unreachable, !dbg !37228

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(56) %i.f) #56
          to label %.thread39 unwind label %bb.m, !dbg !37226

.thread39:                                        ; preds = %bb.n, %bb.l, %.thread21
  %.sroa.05.126 = phi i1 [ true, %.thread21 ], [ false, %bb.l ], [ true, %bb.n ]
  %.pn.pn25 = phi { ptr, i32 } [ %i.y, %.thread21 ], [ %i.an, %bb.l ], [ %lpad.phi, %bb.n ] ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !dbg !37229, !alias.scope !37178, !noundef !4872
  %i.aq = icmp eq ptr %i.ap, null, !dbg !37229
  br i1 %i.aq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit, label %bb.o, !dbg !37229

bb.o:                                             ; preds = %.thread39
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit unwind label %bb.m, !dbg !37230

bb.p:                                             ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit
  %.pn.pn.pn19 = phi { ptr, i32 } [ %.pn.pn.pn20, %.thread ], [ %.pn.pn25, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit ]
  resume { ptr, i32 } %.pn.pn.pn19, !dbg !37228

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit
  %.pn.pn.pn20 = phi { ptr, i32 } [ %.pn.pn25, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit ], [ %lpad.loopexit43, %.thread.loopexit ], [ %lpad.loopexit.split-lp44, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.h) #56
          to label %bb.p unwind label %bb.m, !dbg !37198
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !37231 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !37431
  %.val78 = load ptr, ptr %1, align 8, !dbg !37432, !nonnull !4872, !noundef !4872
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !37432
  %.val79 = load ptr, ptr %i.m, align 8, !dbg !37432, !nonnull !4872, !align !5241, !noundef !4872
  %i.n = getelementptr inbounds nuw i8, ptr %.val79, i64 64, !dbg !37433
  %i.o = load ptr, ptr %i.n, align 8, !dbg !37433, !invariant.load !4872, !nonnull !4872
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val78) #55, !dbg !37434
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #55, !dbg !37435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37370), !dbg !37436
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !37437
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !37437 ; 4 uses
  br label %.lr.ph.i, !dbg !37438

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !37439 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !37440, !alias.scope !37370, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !37440
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !37440, !alias.scope !37370, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !37441
  %i.u = load ptr, ptr %i.t, align 8, !dbg !37441, !invariant.load !4872, !noalias !37370, !nonnull !4872
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc unwind label %.thread.loopexit, !dbg !37442, !inline_history !1439

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !37443
  %i.x = load ptr, ptr %i.w, align 8, !dbg !37443, !invariant.load !4872, !noalias !37370, !nonnull !4872
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !37444, !inline_history !1439

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !37445 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !37446 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !37447
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !37438

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !37448

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !37449
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !37450

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !37451
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph170 unwind label %bb.d, !dbg !37452

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph170:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !37384

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph170, %bb.m
  %.sroa.0.0168 = phi i64 [ 0, %.lr.ph170 ], [ %i.bi, %bb.m ]
  %.sroa.034.0167 = phi ptr [ %1, %.lr.ph170 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0167, i64 16, !dbg !37453 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0167, align 8, !dbg !37454, !nonnull !4872, !noundef !4872
  %i.ag = getelementptr i8, ptr %.sroa.034.0167, i64 8, !dbg !37454
  %.sroa.034.0.val77 = load ptr, ptr %i.ag, align 8, !dbg !37454, !nonnull !4872, !align !5241, !noundef !4872
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val77, i64 32, !dbg !37455
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !37455, !invariant.load !4872, !nonnull !4872
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !37456 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !37455 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !37455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !37375
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !37457
  %i.an = load ptr, ptr %i.am, align 8, !dbg !37457, !invariant.load !4872, !nonnull !4872
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !37458

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !37459, !noundef !4872
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !37460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37375
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !37461, !prof !5231

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #54
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37462

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !37463 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !37463, !noundef !4872 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !37463 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !37463, !noundef !4872 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !37464
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !37464

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !37465
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !37465
  br label %._crit_edge, !dbg !37465

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !37465 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !37465 ; 2 uses
  %.val81 = load i32, ptr %.val84, align 4, !dbg !37466, !noundef !4872 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !37467
  call void @llvm.assume(i1 %.not.i91), !dbg !37467
  %i.at = getelementptr [4 x i8], ptr %.val84, i64 %.val85, !dbg !37468
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !37468 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i32, ptr %i.au, align 4, !dbg !37469, !noundef !4872
  %i.aw = sub nuw nsw i32 %i.av, %.val81, !dbg !37470
  %i.ax = sext i32 %i.aw to i64, !dbg !37471
  %i.ay = icmp eq i32 %.val81, 0, !dbg !37472
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !37472

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !37473
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !37474, !nonnull !4872, !noundef !4872
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !37474
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !37474, !nonnull !4872, !align !5241, !noundef !4872
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !37474
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !37474, !invariant.load !4872, !nonnull !4872
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !37475

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !37476
  %i.bh = zext i1 %i.bg to i64, !dbg !37477
  br label %bb.m, !dbg !37477

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !37478
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0168, !dbg !37479 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !37480
  br i1 %i.bj, label %._crit_edge171, label %bb.e, !dbg !37384

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0166 = phi ptr [ %i.bl, %bb.r ], [ %.val82, %bb.j ] ; 3 uses
  %.sroa.6.0165 = phi i64 [ %i.bk, %bb.r ], [ %.val83, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0166) ]
  %i.bk = add i64 %.sroa.6.0165, -1, !dbg !37481
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0166, i64 4, !dbg !37482 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !37483, !alias.scope !37385, !noundef !4872
  %i.bn = load i32, ptr %.sroa.099.0166, align 4, !dbg !37484, !alias.scope !37385, !noundef !4872
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !37485       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37388), !dbg !37486
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !37487
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !37488

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !37489, !alias.scope !37388, !noalias !37389, !noundef !4872 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !37490
  call void @llvm.assume(i1 %.not.i92), !dbg !37490
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !37491, !alias.scope !37388, !noalias !37389, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !37492
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !37492 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !37493
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !37494, !noalias !37390, !noundef !4872
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !37495 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !37495
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !37495
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !37496

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !37497, !range !4998, !alias.scope !37391, !noalias !37389, !noundef !4872
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !37498
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !37498

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !37499

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !37500, !alias.scope !37391, !noalias !37389
  br label %bb.r, !dbg !37499

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !37501
  store i64 2, ptr %i.bz, align 8, !dbg !37501
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !37501
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !37501
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !37501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @707, i64 12), i64 60, i1 false), !dbg !37501
  store i8 42, ptr %0, align 8, !dbg !37501
  br label %bb.s, !dbg !37502

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !37500
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !37503
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !37504, !noalias !37389
  %i.cc = add i64 %i.bq, 1, !dbg !37505
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !37505, !alias.scope !37391, !noalias !37389
  %i.cd = icmp ult i64 %.sroa.6.0165, 3, !dbg !37464
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !37464

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.t, !dbg !37506

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !37507

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !37506
  unreachable, !dbg !37506

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !37508

._crit_edge171:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !37509
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !37509

bb.v:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !37510
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37511

bb.w:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !37512
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlBU_E0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37513

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !37414
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !37514
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !37514, !nonnull !4872, !noundef !4872
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !37515
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !37515, !noundef !4872
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !37414

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g) #56
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !37516

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !37517, !range !5364, !noundef !4872 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !37517
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !37518
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !37518 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !37518
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !37518 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !37519

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !37520
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !37521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !37520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !37522
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !37521
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !37521
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !37521
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !37521
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !37521
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !37521
  store i8 42, ptr %0, align 8, !dbg !37521
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37516

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !37522
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37516

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !37516
  br label %bb.ad, !dbg !37523

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !37524 ; 2 uses
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !37524 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !37525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !37525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !37526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !37527, !noalias !37417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !37526
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !37528

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !37516
  br label %bb.s, !dbg !37502

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !37529
  unreachable, !dbg !37529

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !37426
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !37530
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !37530, !nonnull !4872, !noundef !4872
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !37531
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !37531, !noundef !4872
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !37426

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !37532
  br label %bb.s, !dbg !37502

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !37543
  %i.de = load ptr, ptr %i.k, align 8, !dbg !37547, !alias.scope !37429, !noundef !4872
  %i.df = icmp eq ptr %i.de, null, !dbg !37547
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit, label %bb.ar, !dbg !37547

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit unwind label %.thread.loopexit.split-lp, !dbg !37548

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !37544
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !37448
  br label %bb.an, !dbg !37545

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit154, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.j) #56
          to label %.thread123 unwind label %bb.af, !dbg !37543

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !37549, !alias.scope !37430, !noundef !4872
  %i.dh = icmp eq ptr %i.dg, null, !dbg !37549
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98, label %bb.as, !dbg !37549

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 unwind label %bb.af, !dbg !37550

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !37529

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 ], [ %lpad.loopexit157, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l) #56
          to label %bb.at unwind label %bb.af, !dbg !37448
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !37551 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !37751
  %.val86 = load ptr, ptr %1, align 8, !dbg !37752, !nonnull !4872, !noundef !4872
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !37752
  %.val87 = load ptr, ptr %i.m, align 8, !dbg !37752, !nonnull !4872, !align !5241, !noundef !4872
  %i.n = getelementptr inbounds nuw i8, ptr %.val87, i64 64, !dbg !37753
  %i.o = load ptr, ptr %i.n, align 8, !dbg !37753, !invariant.load !4872, !nonnull !4872
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val86) #55, !dbg !37754
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #55, !dbg !37755
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37690), !dbg !37756
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !37757
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !37757 ; 4 uses
  br label %.lr.ph.i, !dbg !37758

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !37759 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !37760, !alias.scope !37690, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !37760
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !37760, !alias.scope !37690, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !37761
  %i.u = load ptr, ptr %i.t, align 8, !dbg !37761, !invariant.load !4872, !noalias !37690, !nonnull !4872
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc unwind label %.thread.loopexit, !dbg !37762, !inline_history !1457

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !37763
  %i.x = load ptr, ptr %i.w, align 8, !dbg !37763, !invariant.load !4872, !noalias !37690, !nonnull !4872
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !37764, !inline_history !1457

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !37765 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !37766 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !37767
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !37758

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !37768

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !37769
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !37770

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !37771
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph170 unwind label %bb.d, !dbg !37772

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph170:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !37704

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph170, %bb.m
  %.sroa.0.0168 = phi i64 [ 0, %.lr.ph170 ], [ %i.bi, %bb.m ]
  %.sroa.034.0167 = phi ptr [ %1, %.lr.ph170 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0167, i64 16, !dbg !37773 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0167, align 8, !dbg !37774, !nonnull !4872, !noundef !4872
  %i.ag = getelementptr i8, ptr %.sroa.034.0167, i64 8, !dbg !37774
  %.sroa.034.0.val85 = load ptr, ptr %i.ag, align 8, !dbg !37774, !nonnull !4872, !align !5241, !noundef !4872
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val85, i64 32, !dbg !37775
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !37775, !invariant.load !4872, !nonnull !4872
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !37776 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !37775 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !37775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !37695
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !37777
  %i.an = load ptr, ptr %i.am, align 8, !dbg !37777, !invariant.load !4872, !nonnull !4872
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !37778

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !37779, !noundef !4872
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !37780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !37695
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !37781, !prof !5231

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #54
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37782

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !37783 ; 2 uses
  %.val79 = load ptr, ptr %i.aq, align 8, !dbg !37783, !noundef !4872 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !37783 ; 2 uses
  %.val80 = load i64, ptr %i.ar, align 8, !dbg !37783, !noundef !4872 ; 3 uses
  %i.as = icmp ult i64 %.val80, 2, !dbg !37784
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !37784

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val81.pre = load ptr, ptr %i.aq, align 8, !dbg !37785
  %.val82.pre = load i64, ptr %i.ar, align 8, !dbg !37785
  br label %._crit_edge, !dbg !37785

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !37785 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !37785 ; 2 uses
  %.val78 = load i32, ptr %.val81, align 4, !dbg !37786, !noundef !4872 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !37787
  call void @llvm.assume(i1 %.not.i91), !dbg !37787
  %i.at = getelementptr [4 x i8], ptr %.val81, i64 %.val82, !dbg !37788
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !37788 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i32, ptr %i.au, align 4, !dbg !37789, !noundef !4872
  %i.aw = sub nuw nsw i32 %i.av, %.val78, !dbg !37790
  %i.ax = sext i32 %i.aw to i64, !dbg !37791
  %i.ay = icmp eq i32 %.val78, 0, !dbg !37792
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !37792

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !37793
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !37794, !nonnull !4872, !noundef !4872
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !37794
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !37794, !nonnull !4872, !align !5241, !noundef !4872
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !37794
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !37794, !invariant.load !4872, !nonnull !4872
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !37795

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !37796
  %i.bh = zext i1 %i.bg to i64, !dbg !37797
  br label %bb.m, !dbg !37797

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !37798
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0168, !dbg !37799 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !37800
  br i1 %i.bj, label %._crit_edge171, label %bb.e, !dbg !37704

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0166 = phi ptr [ %i.bl, %bb.r ], [ %.val79, %bb.j ] ; 3 uses
  %.sroa.6.0165 = phi i64 [ %i.bk, %bb.r ], [ %.val80, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0166) ]
  %i.bk = add i64 %.sroa.6.0165, -1, !dbg !37801
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0166, i64 4, !dbg !37802 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !37803, !alias.scope !37705, !noundef !4872
  %i.bn = load i32, ptr %.sroa.099.0166, align 4, !dbg !37804, !alias.scope !37705, !noundef !4872
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !37805       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37708), !dbg !37806
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !37807
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !37808

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !37809, !alias.scope !37708, !noalias !37709, !noundef !4872 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !37810
  call void @llvm.assume(i1 %.not.i92), !dbg !37810
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !37811, !alias.scope !37708, !noalias !37709, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !37812
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !37812 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !37813
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !37814, !noalias !37710, !noundef !4872
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !37815 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !37815
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !37815
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !37816

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !37817, !range !4998, !alias.scope !37711, !noalias !37709, !noundef !4872
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !37818
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !37818

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !37819

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !37820, !alias.scope !37711, !noalias !37709
  br label %bb.r, !dbg !37819

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !37821
  store i64 2, ptr %i.bz, align 8, !dbg !37821
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !37821
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !37821
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !37821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @707, i64 12), i64 60, i1 false), !dbg !37821
  store i8 42, ptr %0, align 8, !dbg !37821
  br label %bb.s, !dbg !37822

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !37820
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !37823
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !37824, !noalias !37709
  %i.cc = add i64 %i.bq, 1, !dbg !37825
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !37825, !alias.scope !37711, !noalias !37709
  %i.cd = icmp ult i64 %.sroa.6.0165, 3, !dbg !37784
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !37784

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.t, !dbg !37826

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !37827

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !37826
  unreachable, !dbg !37826

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !37828

._crit_edge171:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !37829
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !37829

bb.v:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !37830
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listlBU_Es_0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37831

bb.w:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !37832
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37833

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !37734
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !37834
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !37834, !nonnull !4872, !noundef !4872
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !37835
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !37835, !noundef !4872
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !37734

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g) #56
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !37836

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !37837, !range !5364, !noundef !4872 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !37837
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !37838
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !37838 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !37838
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !37838 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !37839

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !37840
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !37841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !37840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !37842
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !37841
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !37841
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !37841
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !37841
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !37841
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !37841
  store i8 42, ptr %0, align 8, !dbg !37841
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37836

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !37842
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !37836

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !37836
  br label %bb.ad, !dbg !37843

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !37844 ; 2 uses
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !37844 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !37845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !37845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !37846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !37847, !noalias !37737
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !37846
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !37848

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !37836
  br label %bb.s, !dbg !37822

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !37849
  unreachable, !dbg !37849

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !37746
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !37850
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !37850, !nonnull !4872, !noundef !4872
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !37851
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !37851, !noundef !4872
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !37746

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python:bb.a
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !37863
  %i.de = load ptr, ptr %i.k, align 8, !dbg !37867, !alias.scope !37749, !noundef !4872
  %i.df = icmp eq ptr %i.de, null, !dbg !37867
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit, label %bb.ar, !dbg !37867

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit unwind label %.thread.loopexit.split-lp, !dbg !37868

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !37864
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !37768
  br label %bb.an, !dbg !37865

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit154, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.j) #56
          to label %.thread123 unwind label %bb.af, !dbg !37863

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !37869, !alias.scope !37750, !noundef !4872
  %i.dh = icmp eq ptr %i.dg, null, !dbg !37869
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98, label %bb.as, !dbg !37869

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 unwind label %bb.af, !dbg !37870

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !37849

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 ], [ %lpad.loopexit157, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l) #56
          to label %bb.at unwind label %bb.af, !dbg !37768
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !37871 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !38074
  %.val85 = load ptr, ptr %1, align 8, !dbg !38075, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %.val.i = load ptr, ptr %.val85, align 8, !dbg !38076, !nonnull !4872, !noundef !4872
  %i.m = getelementptr i8, ptr %.val85, i64 8, !dbg !38076
  %.val1.i = load ptr, ptr %i.m, align 8, !dbg !38076, !nonnull !4872, !align !5241, !noundef !4872
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !38077
  %i.o = load ptr, ptr %i.n, align 8, !dbg !38077, !invariant.load !4872, !nonnull !4872
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val.i) #55, !dbg !38078
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #55, !dbg !38079
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38013), !dbg !38080
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !38081
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !38081 ; 4 uses
  br label %.lr.ph.i, !dbg !38082

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.z, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.aa, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.r, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !38083 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !38084, !alias.scope !38013, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !38085, !noalias !38013, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !38085
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !38085, !noalias !38013, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !38086
  %i.u = load ptr, ptr %i.t, align 8, !dbg !38086, !invariant.load !4872, !noalias !38013, !nonnull !4872
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.val.i.i) #55
          to label %.noexc unwind label %.thread.loopexit, !dbg !38087, !inline_history !1476

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !38088
  %i.x = load ptr, ptr %i.w, align 8, !dbg !38088, !invariant.load !4872, !noalias !38013, !nonnull !4872
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.val.i.i) #55
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !38089, !inline_history !1476

.noexc86:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.010.i, !dbg !38090 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.09.i, !dbg !38091 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !38092
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !38082

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !38093

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !38094
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !38095

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !38096
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph170 unwind label %bb.d, !dbg !38097

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph170:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !38027

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph170, %bb.m
  %.sroa.0.0168 = phi i64 [ 0, %.lr.ph170 ], [ %i.bi, %bb.m ]
  %.sroa.034.0167 = phi ptr [ %1, %.lr.ph170 ], [ %i.af, %bb.m ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0167, i64 8, !dbg !38098 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0167, align 8, !dbg !38099, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !38100, !nonnull !4872, !noundef !4872
  %i.ag = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !38100
  %.val1.i88 = load ptr, ptr %i.ag, align 8, !dbg !38100, !nonnull !4872, !align !5241, !noundef !4872
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !38101
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !38101, !invariant.load !4872, !nonnull !4872
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !38102 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !38101 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !38101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38018
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !38103
  %i.an = load ptr, ptr %i.am, align 8, !dbg !38103, !invariant.load !4872, !nonnull !4872
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !38104

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !38105, !noundef !4872
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !38106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38018
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !38107, !prof !5231

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #54
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38108

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !38109 ; 2 uses
  %.val79 = load ptr, ptr %i.aq, align 8, !dbg !38109, !noundef !4872 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !38109 ; 2 uses
  %.val80 = load i64, ptr %i.ar, align 8, !dbg !38109, !noundef !4872 ; 3 uses
  %i.as = icmp ult i64 %.val80, 2, !dbg !38110
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !38110

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val81.pre = load ptr, ptr %i.aq, align 8, !dbg !38111
  %.val82.pre = load i64, ptr %i.ar, align 8, !dbg !38111
  br label %._crit_edge, !dbg !38111

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !38111 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !38111 ; 2 uses
  %.val78 = load i32, ptr %.val81, align 4, !dbg !38112, !noundef !4872 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !38113
  call void @llvm.assume(i1 %.not.i91), !dbg !38113
  %i.at = getelementptr [4 x i8], ptr %.val81, i64 %.val82, !dbg !38114
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !38114 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i32, ptr %i.au, align 4, !dbg !38115, !noundef !4872
  %i.aw = sub nuw nsw i32 %i.av, %.val78, !dbg !38116
  %i.ax = sext i32 %i.aw to i64, !dbg !38117
  %i.ay = icmp eq i32 %.val78, 0, !dbg !38118
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !38118

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !38119
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !38120, !nonnull !4872, !noundef !4872
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !38120
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !38120, !nonnull !4872, !align !5241, !noundef !4872
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !38120
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !38120, !invariant.load !4872, !nonnull !4872
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !38121

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !38122
  %i.bh = zext i1 %i.bg to i64, !dbg !38123
  br label %bb.m, !dbg !38123

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !38124
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0168, !dbg !38125 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !38126
  br i1 %i.bj, label %._crit_edge171, label %bb.e, !dbg !38027

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0166 = phi ptr [ %i.bl, %bb.r ], [ %.val79, %bb.j ] ; 3 uses
  %.sroa.6.0165 = phi i64 [ %i.bk, %bb.r ], [ %.val80, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0166) ]
  %i.bk = add i64 %.sroa.6.0165, -1, !dbg !38127
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0166, i64 4, !dbg !38128 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !38129, !alias.scope !38028, !noundef !4872
  %i.bn = load i32, ptr %.sroa.099.0166, align 4, !dbg !38130, !alias.scope !38028, !noundef !4872
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !38131       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38031), !dbg !38132
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !38133
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !38134

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !38135, !alias.scope !38031, !noalias !38032, !noundef !4872 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !38136
  call void @llvm.assume(i1 %.not.i92), !dbg !38136
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !38137, !alias.scope !38031, !noalias !38032, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !38138
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !38138 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !38139
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !38140, !noalias !38033, !noundef !4872
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !38141 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !38141
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !38141
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !38142

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !38143, !range !4998, !alias.scope !38034, !noalias !38032, !noundef !4872
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !38144
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !38144

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !38145

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !38146, !alias.scope !38034, !noalias !38032
  br label %bb.r, !dbg !38145

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38147
  store i64 2, ptr %i.bz, align 8, !dbg !38147
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38147
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !38147
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !38147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @707, i64 12), i64 60, i1 false), !dbg !38147
  store i8 42, ptr %0, align 8, !dbg !38147
  br label %bb.s, !dbg !38148

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !38146
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !38149
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !38150, !noalias !38032
  %i.cc = add i64 %i.bq, 1, !dbg !38151
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !38151, !alias.scope !38034, !noalias !38032
  %i.cd = icmp ult i64 %.sroa.6.0165, 3, !dbg !38110
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !38110

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.t, !dbg !38152

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !38153

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !38152
  unreachable, !dbg !38152

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !38154

._crit_edge171:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !38155
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !38155

bb.v:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !38156
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38157

bb.w:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !38158
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38159

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !38057
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !38160
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !38160, !nonnull !4872, !noundef !4872
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !38161
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !38161, !noundef !4872
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !38057

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g) #56
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !38162

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !38163, !range !5364, !noundef !4872 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !38163
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !38164
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !38164 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !38164
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !38164 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !38165

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !38166
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !38167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !38166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !38168
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38167
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !38167
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38167
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !38167
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38167
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !38167
  store i8 42, ptr %0, align 8, !dbg !38167
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38162

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !38168
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38162

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38162
  br label %bb.ad, !dbg !38169

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !38170 ; 2 uses
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !38170 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !38171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !38171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38173, !noalias !38060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !38172
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !38174

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38162
  br label %bb.s, !dbg !38148

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !38175
  unreachable, !dbg !38175

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !38069
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !38176
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !38176, !nonnull !4872, !noundef !4872
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !38177
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !38177, !noundef !4872
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !38069

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !38189
  %i.de = load ptr, ptr %i.k, align 8, !dbg !38193, !alias.scope !38072, !noundef !4872
  %i.df = icmp eq ptr %i.de, null, !dbg !38193
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit, label %bb.ar, !dbg !38193

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit unwind label %.thread.loopexit.split-lp, !dbg !38194

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38190
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !38093
  br label %bb.an, !dbg !38191

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit154, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.j) #56
          to label %.thread123 unwind label %bb.af, !dbg !38189

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !38195, !alias.scope !38073, !noundef !4872
  %i.dh = icmp eq ptr %i.dg, null, !dbg !38195
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98, label %bb.as, !dbg !38195

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 unwind label %bb.af, !dbg !38196

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !38175

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit98 ], [ %lpad.loopexit157, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l) #56
          to label %bb.at unwind label %bb.af, !dbg !38093
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38197 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !38381
  %.val78 = load ptr, ptr %1, align 8, !dbg !38382, !nonnull !4872, !noundef !4872
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !38382
  %.val79 = load ptr, ptr %i.m, align 8, !dbg !38382, !nonnull !4872, !align !5241, !noundef !4872
  %i.n = getelementptr inbounds nuw i8, ptr %.val79, i64 64, !dbg !38383
  %i.o = load ptr, ptr %i.n, align 8, !dbg !38383, !invariant.load !4872, !nonnull !4872
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val78) #55, !dbg !38384
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #55, !dbg !38385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38322), !dbg !38386
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !38387
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !38387 ; 4 uses
  br label %.lr.ph.i, !dbg !38388

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !38389 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !38390, !alias.scope !38322, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !38390
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !38390, !alias.scope !38322, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !38391
  %i.u = load ptr, ptr %i.t, align 8, !dbg !38391, !invariant.load !4872, !noalias !38322, !nonnull !4872
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc unwind label %.thread.loopexit, !dbg !38392, !inline_history !1439

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !38393
  %i.x = load ptr, ptr %i.w, align 8, !dbg !38393, !invariant.load !4872, !noalias !38322, !nonnull !4872
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !38394, !inline_history !1439

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !38395 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !38396 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !38397
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !38388

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !38398

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !38399
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !38400

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !38401
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !38402

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !38338

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph161, %bb.m
  %.sroa.0.0159 = phi i64 [ 0, %.lr.ph161 ], [ %i.bh, %bb.m ]
  %.sroa.034.0158 = phi ptr [ %1, %.lr.ph161 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 16, !dbg !38403 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !38404, !nonnull !4872, !noundef !4872
  %i.ag = getelementptr i8, ptr %.sroa.034.0158, i64 8, !dbg !38404
  %.sroa.034.0.val77 = load ptr, ptr %i.ag, align 8, !dbg !38404, !nonnull !4872, !align !5241, !noundef !4872
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val77, i64 32, !dbg !38405
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !38405, !invariant.load !4872, !nonnull !4872
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !38406 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !38405 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !38405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38327
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !38407
  %i.an = load ptr, ptr %i.am, align 8, !dbg !38407, !invariant.load !4872, !nonnull !4872
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !38408

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !38409, !noundef !4872
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !38410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38327
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !38411, !prof !5231

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #54
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38412

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !38413 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !38413, !noundef !4872 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !38413 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !38413, !noundef !4872 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !38414
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !38414

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !38415, !alias.scope !38336, !noalias !38337
  br label %.lr.ph, !dbg !38416

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !38417
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !38417
  br label %._crit_edge, !dbg !38417

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !38417 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !38417 ; 2 uses
  %.val81 = load i64, ptr %.val84, align 8, !dbg !38418, !noundef !4872 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !38419
  call void @llvm.assume(i1 %.not.i91), !dbg !38419
  %i.at = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !38420
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !38420 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i64, ptr %i.au, align 8, !dbg !38421, !noundef !4872
  %i.aw = sub nuw nsw i64 %i.av, %.val81, !dbg !38422
  %i.ax = icmp eq i64 %.val81, 0, !dbg !38423
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !38423

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !38424
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !38425, !nonnull !4872, !noundef !4872
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !38425
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !38425, !nonnull !4872, !align !5241, !noundef !4872
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !38425
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !38425, !invariant.load !4872, !nonnull !4872
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !38426

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !38427
  %i.bg = zext i1 %i.bf to i64, !dbg !38428
  br label %bb.m, !dbg !38428

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !38429
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !38430 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !38431
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !38338

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !38415 ; 4 uses
  %.sroa.0100.0157 = phi ptr [ %i.bl, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0156 = phi i64 [ %i.bk, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0157) ]
  %i.bk = add i64 %.sroa.6.0156, -1, !dbg !38432
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0157, i64 8, !dbg !38433 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !38434, !alias.scope !38339, !noundef !4872
  %i.bn = load i64, ptr %.sroa.0100.0157, align 8, !dbg !38435, !alias.scope !38339, !noundef !4872
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !38436
  call void @llvm.experimental.noalias.scope.decl(metadata !38336), !dbg !38437
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !38438, !alias.scope !38336, !noalias !38337, !nonnull !4872 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !38438
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !38438
  %i.bs = load i64, ptr %i.br, align 8, !dbg !38439, !noalias !38342, !noundef !4872
  %i.bt = load i64, ptr %i.j, align 8, !dbg !38440, !range !4998, !alias.scope !38343, !noalias !38337, !noundef !4872
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !38416
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !38416

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !38441

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !38442, !alias.scope !38343, !noalias !38337
  br label %bb.o, !dbg !38441

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !38442
  %i.bw = add i64 %i.bo, %i.bs, !dbg !38443
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !38444
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !38445, !noalias !38337
  %i.by = add i64 %i.bj, 1, !dbg !38446           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !38446, !alias.scope !38343, !noalias !38337
  %i.bz = icmp ult i64 %.sroa.6.0156, 3, !dbg !38414
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !38414

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.q, !dbg !38447

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !38448

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !38447
  unreachable, !dbg !38447

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !38449

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !38450
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !38450

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !38451
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38452

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !38453
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxBU_E0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38454

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !38363
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !38455
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !38455, !nonnull !4872, !noundef !4872
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !38456
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !38456, !noundef !4872
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !38363

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g) #56
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !38457

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !38458, !range !5364, !noundef !4872 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !38458
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !38459
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !38459 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !38459
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !38459 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !38460

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !38461
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !38462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !38461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !38463
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38462
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !38462
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38462
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !38462
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38462
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !38462
  store i8 42, ptr %0, align 8, !dbg !38462
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38457

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !38463
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38457

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38457
  br label %bb.aa, !dbg !38464

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !38465 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !38465 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !38466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !38466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38468, !noalias !38366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !38467
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !38469

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38457
  br label %bb.p, !dbg !38470

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !38471
  unreachable, !dbg !38471

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !38376
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !38472
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !38472, !nonnull !4872, !noundef !4872
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !38473
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !38473, !noundef !4872
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !38376

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.i) #56
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !38474

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !38475, !range !5364, !noundef !4872 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !38475
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !38476
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !38476 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !38476
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !38476 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !38477

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !38478
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !38479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !38478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !38480
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38479
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !38479
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38479
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !38479
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38479
end_hunk_3
begin_hunk_4_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !38485
  %i.da = load ptr, ptr %i.k, align 8, !dbg !38489, !alias.scope !38379, !noundef !4872
  %i.db = icmp eq ptr %i.da, null, !dbg !38489
  br i1 %i.db, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit, label %bb.ao, !dbg !38489

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit unwind label %.thread.loopexit.split-lp, !dbg !38490

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38486
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !38398
  br label %bb.ak, !dbg !38487

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cs, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.j) #56
          to label %.thread119 unwind label %bb.ac, !dbg !38485

.thread119:                                       ; preds = %bb.am, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72124 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ac, %bb.d ], [ %i.cz, %bb.am ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1123 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.am ], [ true, %.loopexit.split-lp ]
  %i.dc = load ptr, ptr %i.k, align 8, !dbg !38491, !alias.scope !38380, !noundef !4872
  %i.dd = icmp eq ptr %i.dc, null, !dbg !38491
  br i1 %i.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99, label %bb.ap, !dbg !38491

bb.ap:                                            ; preds = %.thread119
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99 unwind label %bb.ac, !dbg !38492

bb.aq:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99
  %.pn74117 = phi { ptr, i32 } [ %.pn74118, %.thread ], [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99 ]
  resume { ptr, i32 } %.pn74117, !dbg !38471

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99
  %.pn74118 = phi { ptr, i32 } [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99 ], [ %lpad.loopexit150, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l) #56
          to label %bb.aq unwind label %bb.ac, !dbg !38398
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38493 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !38677
  %.val80 = load ptr, ptr %1, align 8, !dbg !38678, !nonnull !4872, !noundef !4872
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !38678
  %.val81 = load ptr, ptr %i.m, align 8, !dbg !38678, !nonnull !4872, !align !5241, !noundef !4872
  %i.n = getelementptr inbounds nuw i8, ptr %.val81, i64 64, !dbg !38679
  %i.o = load ptr, ptr %i.n, align 8, !dbg !38679, !invariant.load !4872, !nonnull !4872
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val80) #55, !dbg !38680
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #55, !dbg !38681
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38618), !dbg !38682
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !38683
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !38683 ; 4 uses
  br label %.lr.ph.i, !dbg !38684

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !38685 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !38686, !alias.scope !38618, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !38686
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !38686, !alias.scope !38618, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !38687
  %i.u = load ptr, ptr %i.t, align 8, !dbg !38687, !invariant.load !4872, !noalias !38618, !nonnull !4872
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc unwind label %.thread.loopexit, !dbg !38688, !inline_history !1457

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !38689
  %i.x = load ptr, ptr %i.w, align 8, !dbg !38689, !invariant.load !4872, !noalias !38618, !nonnull !4872
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #55
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !38690, !inline_history !1457

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !38691 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !38692 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !38693
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !38684

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !38694

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !38695
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !38696

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !38697
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !38698

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !38634

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph161, %bb.m
  %.sroa.0.0159 = phi i64 [ 0, %.lr.ph161 ], [ %i.bh, %bb.m ]
  %.sroa.034.0158 = phi ptr [ %1, %.lr.ph161 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 16, !dbg !38699 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !38700, !nonnull !4872, !noundef !4872
  %i.ag = getelementptr i8, ptr %.sroa.034.0158, i64 8, !dbg !38700
  %.sroa.034.0.val79 = load ptr, ptr %i.ag, align 8, !dbg !38700, !nonnull !4872, !align !5241, !noundef !4872
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val79, i64 32, !dbg !38701
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !38701, !invariant.load !4872, !nonnull !4872
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !38702 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !38701 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !38701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38623
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !38703
  %i.an = load ptr, ptr %i.am, align 8, !dbg !38703, !invariant.load !4872, !nonnull !4872
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !38704

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !38705, !noundef !4872
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !38706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38623
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !38707, !prof !5231

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #54
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38708

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !38709 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !38709, !noundef !4872 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !38709 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !38709, !noundef !4872 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !38710
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !38710

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !38711, !alias.scope !38632, !noalias !38633
  br label %.lr.ph, !dbg !38712

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !38713
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !38713
  br label %._crit_edge, !dbg !38713

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !38713 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !38713 ; 2 uses
  %.val78 = load i64, ptr %.val84, align 8, !dbg !38714, !noundef !4872 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !38715
  call void @llvm.assume(i1 %.not.i91), !dbg !38715
  %i.at = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !38716
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !38716 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i64, ptr %i.au, align 8, !dbg !38717, !noundef !4872
  %i.aw = sub nuw nsw i64 %i.av, %.val78, !dbg !38718
  %i.ax = icmp eq i64 %.val78, 0, !dbg !38719
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !38719

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !38720
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !38721, !nonnull !4872, !noundef !4872
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !38721
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !38721, !nonnull !4872, !align !5241, !noundef !4872
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !38721
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !38721, !invariant.load !4872, !nonnull !4872
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !38722

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !38723
  %i.bg = zext i1 %i.bf to i64, !dbg !38724
  br label %bb.m, !dbg !38724

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !38725
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !38726 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !38727
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !38634

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !38711 ; 4 uses
  %.sroa.0100.0157 = phi ptr [ %i.bl, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0156 = phi i64 [ %i.bk, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0157) ]
  %i.bk = add i64 %.sroa.6.0156, -1, !dbg !38728
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0157, i64 8, !dbg !38729 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !38730, !alias.scope !38635, !noundef !4872
  %i.bn = load i64, ptr %.sroa.0100.0157, align 8, !dbg !38731, !alias.scope !38635, !noundef !4872
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !38732
  call void @llvm.experimental.noalias.scope.decl(metadata !38632), !dbg !38733
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !38734, !alias.scope !38632, !noalias !38633, !nonnull !4872 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !38734
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !38734
  %i.bs = load i64, ptr %i.br, align 8, !dbg !38735, !noalias !38638, !noundef !4872
  %i.bt = load i64, ptr %i.j, align 8, !dbg !38736, !range !4998, !alias.scope !38639, !noalias !38633, !noundef !4872
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !38712
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !38712

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !38737

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !38738, !alias.scope !38639, !noalias !38633
  br label %bb.o, !dbg !38737

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !38738
  %i.bw = add i64 %i.bo, %i.bs, !dbg !38739
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !38740
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !38741, !noalias !38633
  %i.by = add i64 %i.bj, 1, !dbg !38742           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !38742, !alias.scope !38639, !noalias !38633
  %i.bz = icmp ult i64 %.sroa.6.0156, 3, !dbg !38710
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !38710

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.q, !dbg !38743

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !38744

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !38743
  unreachable, !dbg !38743

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !38745

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !38746
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !38746

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !38747
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listxBU_Es_0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38748

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !38749
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38750

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !38659
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !38751
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !38751, !nonnull !4872, !noundef !4872
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !38752
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !38752, !noundef !4872
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !38659

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g) #56
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !38753

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !38754, !range !5364, !noundef !4872 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !38754
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !38755
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !38755 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !38755
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !38755 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !38756

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !38757
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !38758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !38757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !38759
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38758
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !38758
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38758
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !38758
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38758
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !38758
  store i8 42, ptr %0, align 8, !dbg !38758
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38753

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !38759
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !38753

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38753
  br label %bb.aa, !dbg !38760

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !38761 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !38761 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !38762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !38762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38764, !noalias !38662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !38763
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !38765

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !38753
  br label %bb.p, !dbg !38766

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !38767
  unreachable, !dbg !38767

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !38672
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !38768
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !38768, !nonnull !4872, !noundef !4872
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !38769
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !38769, !noundef !4872
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !38672

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.i) #56
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !38770

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !38771, !range !5364, !noundef !4872 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !38771
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !38772
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !38772 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !38772
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !38772 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !38773

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !38774
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !38775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !38774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !38776
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38775
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !38775
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38775
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !38775
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38775
end_hunk_4
begin_hunk_5_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python:bb.a
  br i1 %i.db, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit, label %bb.ao, !dbg !38785

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit unwind label %.thread.loopexit.split-lp, !dbg !38786

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !38782
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !38694
  br label %bb.ak, !dbg !38783

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cs, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.j) #56
          to label %.thread119 unwind label %bb.ac, !dbg !38781

.thread119:                                       ; preds = %bb.am, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72124 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ac, %bb.d ], [ %i.cz, %bb.am ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1123 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.am ], [ true, %.loopexit.split-lp ]
  %i.dc = load ptr, ptr %i.k, align 8, !dbg !38787, !alias.scope !38676, !noundef !4872
  %i.dd = icmp eq ptr %i.dc, null, !dbg !38787
  br i1 %i.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99, label %bb.ap, !dbg !38787

bb.ap:                                            ; preds = %.thread119
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99 unwind label %bb.ac, !dbg !38788

bb.aq:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99
  %.pn74117 = phi { ptr, i32 } [ %.pn74118, %.thread ], [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99 ]
  resume { ptr, i32 } %.pn74117, !dbg !38767

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99
  %.pn74118 = phi { ptr, i32 } [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99 ], [ %lpad.loopexit150, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32) %i.l) #56
          to label %bb.aq unwind label %bb.ac, !dbg !38694
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38789 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !38976
  %.val85 = load ptr, ptr %1, align 8, !dbg !38977, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %.val.i = load ptr, ptr %.val85, align 8, !dbg !38978, !nonnull !4872, !noundef !4872
  %i.m = getelementptr i8, ptr %.val85, i64 8, !dbg !38978
  %.val1.i = load ptr, ptr %i.m, align 8, !dbg !38978, !nonnull !4872, !align !5241, !noundef !4872
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !38979
  %i.o = load ptr, ptr %i.n, align 8, !dbg !38979, !invariant.load !4872, !nonnull !4872
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val.i) #55, !dbg !38980
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #55, !dbg !38981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38917), !dbg !38982
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !38983
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !38983 ; 4 uses
  br label %.lr.ph.i, !dbg !38984

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.z, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.aa, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.r, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !38985 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !38986, !alias.scope !38917, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !38987, !noalias !38917, !nonnull !4872, !noundef !4872 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !38987
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !38987, !noalias !38917, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !38988
  %i.u = load ptr, ptr %i.t, align 8, !dbg !38988, !invariant.load !4872, !noalias !38917, !nonnull !4872
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.val.i.i) #55
          to label %.noexc unwind label %.thread.loopexit, !dbg !38989, !inline_history !1476

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !38990
  %i.x = load ptr, ptr %i.w, align 8, !dbg !38990, !invariant.load !4872, !noalias !38917, !nonnull !4872
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.val.i.i) #55
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !38991, !inline_history !1476

.noexc86:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.010.i, !dbg !38992 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.09.i, !dbg !38993 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !38994
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !38984

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseeLknQCOKOd_13polars_python.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !38995

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !38996
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !38997

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !38998
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !38999

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !38933

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph161, %bb.m
  %.sroa.0.0159 = phi i64 [ 0, %.lr.ph161 ], [ %i.bh, %bb.m ]
  %.sroa.034.0158 = phi ptr [ %1, %.lr.ph161 ], [ %i.af, %bb.m ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 8, !dbg !39000 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !39001, !nonnull !4872, !align !5241, !noundef !4872 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !39002, !nonnull !4872, !noundef !4872
  %i.ag = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !39002
  %.val1.i88 = load ptr, ptr %i.ag, align 8, !dbg !39002, !nonnull !4872, !align !5241, !noundef !4872
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !39003
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !39003, !invariant.load !4872, !nonnull !4872
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !39004 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !39003 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !39003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38922
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !39005
  %i.an = load ptr, ptr %i.am, align 8, !dbg !39005, !invariant.load !4872, !nonnull !4872
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !39006

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !39007, !noundef !4872
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !39008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38922
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !39009, !prof !5231

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #54
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !39010

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !39011 ; 2 uses
  %.val79 = load ptr, ptr %i.aq, align 8, !dbg !39011, !noundef !4872 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !39011 ; 2 uses
  %.val80 = load i64, ptr %i.ar, align 8, !dbg !39011, !noundef !4872 ; 3 uses
  %i.as = icmp ult i64 %.val80, 2, !dbg !39012
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !39012

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !39013, !alias.scope !38931, !noalias !38932
  br label %.lr.ph, !dbg !39014

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val81.pre = load ptr, ptr %i.aq, align 8, !dbg !39015
  %.val82.pre = load i64, ptr %i.ar, align 8, !dbg !39015
  br label %._crit_edge, !dbg !39015

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !39015 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !39015 ; 2 uses
  %.val78 = load i64, ptr %.val81, align 8, !dbg !39016, !noundef !4872 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !39017
  call void @llvm.assume(i1 %.not.i91), !dbg !39017
  %i.at = getelementptr [8 x i8], ptr %.val81, i64 %.val82, !dbg !39018
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !39018 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i64, ptr %i.au, align 8, !dbg !39019, !noundef !4872
  %i.aw = sub nuw nsw i64 %i.av, %.val78, !dbg !39020
  %i.ax = icmp eq i64 %.val78, 0, !dbg !39021
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !39021

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !39022
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !39023, !nonnull !4872, !noundef !4872
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !39023
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !39023, !nonnull !4872, !align !5241, !noundef !4872
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !39023
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !39023, !invariant.load !4872, !nonnull !4872
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !39024

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !39025
  %i.bg = zext i1 %i.bf to i64, !dbg !39026
  br label %bb.m, !dbg !39026

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !39027
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !39028 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !39029
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !38933

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !39013 ; 4 uses
  %.sroa.0100.0157 = phi ptr [ %i.bl, %bb.o ], [ %.val79, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0156 = phi i64 [ %i.bk, %bb.o ], [ %.val80, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0157) ]
  %i.bk = add i64 %.sroa.6.0156, -1, !dbg !39030
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0157, i64 8, !dbg !39031 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !39032, !alias.scope !38934, !noundef !4872
  %i.bn = load i64, ptr %.sroa.0100.0157, align 8, !dbg !39033, !alias.scope !38934, !noundef !4872
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !39034
  call void @llvm.experimental.noalias.scope.decl(metadata !38931), !dbg !39035
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !39036, !alias.scope !38931, !noalias !38932, !nonnull !4872 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !39036
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !39036
  %i.bs = load i64, ptr %i.br, align 8, !dbg !39037, !noalias !38937, !noundef !4872
  %i.bt = load i64, ptr %i.j, align 8, !dbg !39038, !range !4998, !alias.scope !38938, !noalias !38932, !noundef !4872
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !39014
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !39014

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !39039

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !39040, !alias.scope !38938, !noalias !38932
  br label %bb.o, !dbg !39039

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !39040
  %i.bw = add i64 %i.bo, %i.bs, !dbg !39041
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !39042
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !39043, !noalias !38932
  %i.by = add i64 %i.bj, 1, !dbg !39044           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !39044, !alias.scope !38938, !noalias !38932
  %i.bz = icmp ult i64 %.sroa.6.0156, 3, !dbg !39012
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !39012

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.q, !dbg !39045

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !39046

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !39045
  unreachable, !dbg !39045

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECseeLknQCOKOd_13polars_python.exit unwind label %bb.d, !dbg !39047

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !39048
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !39048

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !39049
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !39050

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !39051
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !39052

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !38958
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !39053
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !39053, !nonnull !4872, !noundef !4872
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !39054
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !39054, !noundef !4872
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !38958

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g) #56
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !39055

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !39056, !range !5364, !noundef !4872 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !39056
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !39057
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !39057 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !39057
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !39057 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !39058

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !39059
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !39060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !39059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !39061
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39060
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !39060
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39060
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !39060
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !39060
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !39060
  store i8 42, ptr %0, align 8, !dbg !39060
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !39055

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !39061
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !39055

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !39055
  br label %bb.aa, !dbg !39062

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !39063 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !39063 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !39064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !39064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !39065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !39066, !noalias !38961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !39065
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !39067

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !39055
  br label %bb.p, !dbg !39068

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #57, !dbg !39069
  unreachable, !dbg !39069

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !38971
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !39070
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !39070, !nonnull !4872, !noundef !4872
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !39071
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !39071, !noundef !4872
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !38971

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.i) #56
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !39072

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !39073, !range !5364, !noundef !4872 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !39073
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !39074
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !39074 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !39074
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !39074 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !39075

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !39076
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !39077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !39076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !39078
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !39077
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !39077
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !39077
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !39077
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !39077
end_hunk_5
