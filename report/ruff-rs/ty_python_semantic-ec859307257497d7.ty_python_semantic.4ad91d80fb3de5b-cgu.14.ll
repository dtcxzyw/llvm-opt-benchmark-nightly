Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.14?download=true
inline.NumInlined: 8769
inline.NumDeleted: 4183
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType16own_class_member:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11604
  invoke void @_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cz)
          to label %bb.aj unwind label %.thread113

bb.ai:                                            ; preds = %.thread116, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type11empty_tuple(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4)
          to label %bb.ak unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.do = load i64, ptr %i.b, align 8, !range !185, !noalias !11604, !noundef !161
  %i.dp = trunc nuw i64 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !11604
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !11604
  %i.du = select i1 %i.dp, i64 %i.dt, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11604
  %.sroa.0.0.i41 = sub i64 0, %i.du
  %i.dv = icmp eq i64 %i.dr, %.sroa.0.0.i41
  br i1 %i.dv, label %bb.ai, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @_RNvMsd_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_9Parameter17with_default_type(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.086.sroa.4.0..sroa.42.0..sroa_idx.i47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %.sroa.086.sroa.4.0..sroa.42.0..sroa_idx.i47.sroa_idx, i8 0, i64 11, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !11605)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i32 4, ptr %i.dw, align 8, !alias.scope !11606
  %.sroa.4.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  store i32 1, ptr %.sroa.4.0..sroa_idx.i46, align 4, !alias.scope !11606
  %i.dx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 0, ptr %i.dx, align 8, !alias.scope !11606
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 68 ; 2 uses
  store i8 1, ptr %i.dy, align 4, !alias.scope !11606
  %i.dz = getelementptr inbounds nuw i8, ptr %i.j, i64 69
  store i8 0, ptr %i.dz, align 1, !alias.scope !11606
  %i.ea = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 0, ptr %i.ea, align 8, !alias.scope !11606
  store i64 0, ptr %i.j, align 8, !alias.scope !11606
  %.sroa.42.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1718379891, ptr %.sroa.42.0..sroa_idx.i47, align 8, !alias.scope !11607
  %.sroa.487.0..sroa.42.0..sroa_idx.i47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 23
  store i8 -60, ptr %.sroa.487.0..sroa.42.0..sroa_idx.i47.sroa_idx, align 1, !alias.scope !11607
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i48, align 8, !alias.scope !11606
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB3_14SubclassOfType4fromNtNtB5_5class9ClassTypeEB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %1)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !11608)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !11609
  store i8 0, ptr %i.dy, align 4, !alias.scope !11610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eb, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 72, i1 false)
  %i.ec = call noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardANtB6_9Parameterj2_EBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(144) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !11611)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i32 %5, ptr %i.ed, align 8, !alias.scope !11612
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store i32 %6, ptr %i.ee, align 4, !alias.scope !11612
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 0, ptr %i.ef, align 8, !alias.scope !11612
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 0, ptr %i.eg, align 8, !alias.scope !11612
  store i64 0, ptr %i.h, align 8, !alias.scope !11612
  %i.eh = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.ec, ptr %i.eh, align 8, !alias.scope !11612
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 4, ptr %i.ei, align 8, !alias.scope !11613
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !11613
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB4_4Type22function_like_callable(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 0, ptr %0, align 4, !alias.scope !11614
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4, !alias.scope !11614
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 1, !alias.scope !11614
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 2, !alias.scope !11614
  %.sroa.4.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i49, align 4, !alias.scope !11614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.an

bb.an:                                            ; preds = %bb.au, %bb.av, %bb.bb, %bb.am, %_RNCNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB8_9ClassType16own_class_member0Bc_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.h

bb.ao:                                            ; preds = %bb.al
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.j) #51
          to label %.thread108 unwind label %bb.u

bb.ap:                                            ; preds = %bb.ai
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.m) #51
          to label %.thread104 unwind label %bb.u

bb.aq:                                            ; preds = %bb.x
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.q) #51
          to label %.thread104 unwind label %bb.u

.thread104:                                       ; preds = %bb.t, %bb.aq, %bb.ae, %bb.ap, %bb.bc, %.thread108
  %.pn37 = phi { ptr, i32 } [ %i.ff, %bb.bc ], [ %i.el, %bb.aq ], [ %.pn111, %.thread108 ], [ %i.dl, %bb.ae ], [ %i.dc, %bb.t ], [ %i.ek, %bb.ap ]
  resume { ptr, i32 } %.pn37

.thread108:                                       ; preds = %bb.ao, %.thread113
  %.pn111 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread113 ], [ %i.ej, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.y) #51
          to label %.thread104 unwind label %bb.u

bb.ar:                                            ; preds = %bb.l
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.em = tail call fastcc noundef align 8 ptr @_RNCNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB8_9ClassType16own_class_members3_0Bc_(ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef %i.be, i32 noundef %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %2, ptr %i.z, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %3, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %4, ptr %i.eo, align 8
  %.not28 = icmp eq ptr %i.em, null
  br i1 %.not28, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.af, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %4, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.ah, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %7, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 11, ptr %.sroa.17.0..sroa_idx, align 8
  call fastcc void @_RNvYNCNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtBb_9ClassType16own_class_member0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_onceBf_(ptr noalias noundef align 4 captures(address) dereferenceable(36) %0, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.an

bb.av:                                            ; preds = %bb.as
  call fastcc void @_RNCNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB8_9ClassType16own_class_members4_0Bc_(ptr noalias noundef align 4 captures(address) dereferenceable(36) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.an

bb.aw:                                            ; preds = %bb.j
  %.not35 = icmp eq i32 %i.be, 0
  br i1 %.not35, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ep = tail call fastcc noundef align 8 ptr @_RNCNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB8_9ClassType16own_class_members_0Bc_(ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef %i.be, i32 noundef %i.bd) ; 2 uses
  %.not36 = icmp eq ptr %i.ep, null
  br i1 %.not36, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11615
  call void @_RNvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentE3lenB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ep)
  %i.eq = load i64, ptr %i.a, align 8, !range !185, !noalias !11615, !noundef !161
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.es = load i64, ptr %i.er, align 8, !noalias !11615 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11615
  %9 = trunc nuw i64 %i.eq to i1
  %i.et = icmp slt i64 %i.es, 0
  %or.cond122.not = select i1 %9, i1 true, i1 %i.et
  br i1 %or.cond122.not, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.ax
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ae, i8 noundef 6, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139), !noalias !11616
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit56

bb.ba:                                            ; preds = %bb.ay
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11int_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ae, i64 noundef %i.es)
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit56

_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit56: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.sroa.074.sroa.4.0..sroa.42.0..sroa_idx.i58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %.sroa.074.sroa.4.0..sroa.42.0..sroa_idx.i58.sroa_idx, i8 0, i64 11, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !11617)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  store i32 4, ptr %i.eu, align 8, !alias.scope !11618
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  store i32 1, ptr %.sroa.4.0..sroa_idx.i57, align 4, !alias.scope !11618
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i32 0, ptr %i.ev, align 8, !alias.scope !11618
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ac, i64 68 ; 2 uses
  store i8 1, ptr %i.ew, align 4, !alias.scope !11618
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ac, i64 69
  store i8 0, ptr %i.ex, align 1, !alias.scope !11618
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i32 0, ptr %i.ey, align 8, !alias.scope !11618
  store i64 0, ptr %i.ac, align 8, !alias.scope !11618
  %.sroa.42.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 1718379891, ptr %.sroa.42.0..sroa_idx.i58, align 8, !alias.scope !11619
  %.sroa.475.0..sroa.42.0..sroa_idx.i58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 23
  store i8 -60, ptr %.sroa.475.0..sroa.42.0..sroa_idx.i58.sroa_idx, align 1, !alias.scope !11619
  %.sroa.5.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i59, align 8, !alias.scope !11618
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_4Type8instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.ab, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %1)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit56
  call void @llvm.experimental.noalias.scope.decl(metadata !11620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !11621
  store i8 0, ptr %i.ew, align 4, !alias.scope !11622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.ac, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ez = call noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardANtB6_9Parameterj1_EBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !11623)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i32 0, ptr %i.fa, align 8, !alias.scope !11624
  %i.fb = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i32 0, ptr %i.fb, align 8, !alias.scope !11624
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i32 0, ptr %i.fc, align 8, !alias.scope !11624
  store i64 0, ptr %i.aa, align 8, !alias.scope !11624
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.ez, ptr %i.fd, align 8, !alias.scope !11624
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !11625
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB4_4Type22function_like_callable(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %.sroa.0.sroa.0.sroa.5.0..sroa_idx.i60, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i32 0, ptr %0, align 4, !alias.scope !11626
  %.sroa.0.sroa.4.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i61, align 4, !alias.scope !11626
  %.sroa.0.sroa.5.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %.sroa.0.sroa.5.0..sroa_idx.i62, align 1, !alias.scope !11626
  %.sroa.0.sroa.6.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 0, ptr %.sroa.0.sroa.6.0..sroa_idx.i63, align 2, !alias.scope !11626
  %.sroa.4.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i64, align 4, !alias.scope !11626
  br label %bb.an

bb.bc:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit56
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEBH_(ptr noalias noundef align 8 dereferenceable(72) %i.ac) #51
          to label %.thread104 unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType19own_instance_member(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(address) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6) unnamed_addr #2 !guid !11637 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [36 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i32, ptr %1, align 4, !range !211, !noundef !161
  switch i32 %i.d, label %default.unreachable [
    i32 -1, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !range !163, !noundef !161 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 4, !noundef !161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11638)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !161, !alias.scope !11638, !nonnull !161 ; 2 uses
  %i.k = tail call noundef nonnull align 8 ptr %i.j(ptr noundef nonnull %2), !noalias !11638, !inline_history !242 ; 2 uses
  %i.l = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB9_12GenericAlias10ingredient5CACHE, ptr noundef nonnull align 8 %i.k), !noalias !11638
  %i.m = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE6fieldsB12_(ptr noundef nonnull align 8 %i.l, ptr noundef nonnull align 8 %i.k, i32 noundef range(i32 1, 0) %i.f, i32 noundef %i.h), !noalias !11638
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load <2 x i32>, ptr %i.n, align 4, !noalias !11638
  store <2 x i32> %i.o, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = tail call noundef nonnull align 8 ptr %i.j(ptr noundef nonnull %2), !noalias !11639, !inline_history !241 ; 2 uses
  %i.q = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB9_12GenericAlias10ingredient5CACHE, ptr noundef nonnull align 8 %i.p), !noalias !11639
  %i.r = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE6fieldsB12_(ptr noundef nonnull align 8 %i.q, ptr noundef nonnull align 8 %i.p, i32 noundef range(i32 1, 0) %i.f, i32 noundef %i.h), !noalias !11639 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !range !163, !noalias !11639, !noundef !161
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4, !noalias !11639, !noundef !161
  call void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral19own_instance_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.b, i32 noundef %i.s, i32 noundef %i.u, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.w, align 8
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types6memberNtB3_6Member8map_typeNCNvMs1g_NtB5_5classNtB1l_9ClassType19own_instance_member0EB7_(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(none) dereferenceable(36) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(36) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 4, !range !163, !noundef !161
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !noundef !161
  tail call void @_RNvMsp_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literalNtB5_18StaticClassLiteral19own_instance_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %0, i32 noundef %i.y, i32 noundef %i.aa, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noundef nonnull align 4 %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !alias.scope !11640
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !11640
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !163, !noundef !161
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !161
  tail call void @_RNvMsi_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tupleNtB5_24DynamicNamedTupleLiteral19own_instance_member(ptr noalias noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %0, i32 noundef %i.ac, i32 noundef %i.ae, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !alias.scope !11641
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i1, align 4, !alias.scope !11641
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !alias.scope !11642
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.4.0..sroa_idx.i2, align 4, !alias.scope !11642
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType20iter_mro_specialized(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 20), (24, 32), (40, 53)) %0, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %3, i32 noundef %4, i32 %5) unnamed_addr #2 !guid !11653 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !211, !noundef !161
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !range !163, !noundef !161 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !noundef !161 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11654)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !161, !alias.scope !11654, !nonnull !161 ; 2 uses
  %i.i = tail call noundef nonnull align 8 ptr %i.h(ptr noundef nonnull %2), !noalias !11654, !inline_history !241 ; 2 uses
  %i.j = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB9_12GenericAlias10ingredient5CACHE, ptr noundef nonnull align 8 %i.i), !noalias !11654
  %i.k = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE6fieldsB12_(ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.i, i32 noundef range(i32 1, 0) %i.d, i32 noundef %i.f), !noalias !11654
  %i.l = load <2 x i32>, ptr %i.k, align 4, !noalias !11654
  %i.m = tail call noundef nonnull align 8 ptr %i.h(ptr noundef nonnull %2), !noalias !11655, !inline_history !242 ; 2 uses
  %i.n = tail call noundef nonnull align 8 ptr @_RINvMs_NtNtCs45bxiIjzMqg_5salsa16ingredient_cache3impINtB5_15IngredientCacheINtNtB9_8interned14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasEE13get_or_createINtB1f_7JarImplB1J_EKj0_EB1P_(ptr noundef nonnull align 4 @_RNvNvMs2_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB9_12GenericAlias10ingredient5CACHE, ptr noundef nonnull align 8 %i.m), !noalias !11655
  %i.o = tail call noundef nonnull align 4 ptr @_RNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtB5_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12GenericAliasE6fieldsB12_(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.m, i32 noundef range(i32 1, 0) %i.d, i32 noundef %i.f), !noalias !11655 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !range !163, !noalias !11655, !noundef !161 ; 2 uses
end_hunk_0
