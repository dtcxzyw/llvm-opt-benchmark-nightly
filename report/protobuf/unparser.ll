Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/unparser?download=true
inline.NumInlined: 4983
inline.NumDeleted: 1990
begin_hunk_0_@_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb:bb.a

.split.i49:                                       ; preds = %bb.cx
  %i.ns = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.nr, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.nm), !noalias !156
  %i.nt = icmp eq i32 %i.ns, 0
  br i1 %i.nt, label %.thread.i, label %bb.cy

_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit.i60: ; preds = %bb.cx
  %i.nu = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.nr, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.nm), !noalias !156
  br i1 %i.nu, label %bb.cy, label %.thread.i

.thread.i:                                        ; preds = %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit.i60, %.split.i49
  %i.nv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.nv, align 8, !tbaa !21, !noalias !156
  store i64 1, ptr %15, align 8, !tbaa !22, !noalias !156
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !156
  br label %bb.db

bb.cy:                                            ; preds = %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit.i60, %.split.i49
  %i.nw = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !159
  %i.nx = extractvalue { ptr, ptr } %i.nw, 1
  %i.ny = tail call noundef i64 @_ZNK6google8protobuf10Reflection8GetInt64ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.nx, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.nm), !noalias !159 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ny, ptr %i.nz, align 8, !tbaa !21, !noalias !156
  store i64 1, ptr %15, align 8, !tbaa !22, !noalias !156
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !156
  %i.oa = add i64 %i.ny, -315576000001
  %or.cond.i50 = icmp ult i64 %i.oa, -631152000001
  br i1 %or.cond.i50, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 21, ptr nonnull @.str.57)
          to label %_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteDurationINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.db:                                            ; preds = %bb.cy, %.thread.i
  %i.oc = phi i64 [ 0, %.thread.i ], [ %i.ny, %bb.cy ] ; 5 uses
  %i.od = invoke noundef ptr @_ZN6google8protobuf13json_internal16Proto2Descriptor13MustHaveFieldERKNS0_10DescriptorEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(160) %3, i32 noundef 2)
          to label %bb.dc unwind label %bb.dg, !noalias !156 ; 4 uses

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28, !noalias !156
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !noalias !156
  %i.og = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc69.i unwind label %bb.dh, !noalias !156

.noexc69.i:                                       ; preds = %bb.dc
  %i.oh = and i8 %i.of, 32
  %.not.i67.i = icmp eq i8 %i.oh, 0
  %i.oi = extractvalue { ptr, ptr } %i.og, 1      ; 2 uses
  br i1 %.not.i67.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.noexc69.i
  %i.oj = invoke noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.oi, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.od)
          to label %.noexc70.i unwind label %bb.dh, !noalias !156

.noexc70.i:                                       ; preds = %bb.dd
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %.thread132.i, label %bb.df

bb.de:                                            ; preds = %.noexc69.i
  %i.ol = invoke noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.oi, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.od)
          to label %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit72.i unwind label %bb.dh, !noalias !156

_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit72.i: ; preds = %bb.de
  br i1 %i.ol, label %bb.df, label %.thread132.i

bb.df:                                            ; preds = %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit72.i, %.noexc70.i
  %i.om = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc73.i unwind label %bb.dh, !noalias !156

.noexc73.i:                                       ; preds = %bb.df
  %i.on = extractvalue { ptr, ptr } %i.om, 1
  %i.oo = invoke noundef i32 @_ZNK6google8protobuf10Reflection8GetInt32ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.on, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.od)
          to label %bb.di unwind label %bb.dh, !noalias !156 ; 7 uses

.thread132.i:                                     ; preds = %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit72.i, %.noexc70.i
  %i.op = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %i.op, align 8, !tbaa !21, !noalias !156
  store i64 1, ptr %16, align 8, !tbaa !22, !noalias !156
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !156
  br label %bb.dn

bb.dg:                                            ; preds = %bb.db
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dh:                                            ; preds = %.noexc73.i, %bb.df, %bb.de, %bb.dd, %bb.dc
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.di:                                            ; preds = %.noexc73.i
  %i.os = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.oo, ptr %i.os, align 8, !tbaa !21, !alias.scope !162, !noalias !156
  store i64 1, ptr %16, align 8, !tbaa !22, !noalias !156
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !156
  %i.ot = add i32 %i.oo, -1000000000
  %or.cond4.i = icmp ult i32 %i.ot, -1999999999
  br i1 %or.cond4.i, label %.invoke.i59, label %bb.dk

bb.dj:                                            ; preds = %.invoke.i59
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.dk:                                            ; preds = %bb.di
  %i.ov = icmp ne i64 %i.oc, 0
  %i.ow = icmp ne i32 %i.oo, 0
  %or.cond6.i = and i1 %i.ov, %i.ow
  br i1 %or.cond6.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %.lobit.i = lshr i64 %i.oc, 63
  %i.ox = trunc nuw nsw i64 %.lobit.i to i32
  %.lobit49.i = lshr i32 %i.oo, 31
  %.not50.i = icmp eq i32 %.lobit49.i, %i.ox
  br i1 %.not50.i, label %bb.dm, label %.invoke.i59

.invoke.i59:                                      ; preds = %bb.dl, %bb.di
  %i.oy = phi i64 [ 36, %bb.dl ], [ 21, %bb.di ]
  %i.oz = phi ptr [ @.str.58, %bb.dl ], [ @.str.57, %bb.di ]
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.oy, ptr nonnull %i.oz)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53 unwind label %bb.dj

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.pa = icmp eq i32 %i.oo, 0
  br i1 %i.pa, label %bb.dn, label %bb.dr

bb.dn:                                            ; preds = %bb.dm, %.thread132.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !165
  %i.pb = inttoptr i64 %i.oc to ptr
  store ptr %i.pb, ptr %14, align 8, !tbaa !21, !noalias !165
  %i.pc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.pc, align 8, !tbaa !88, !noalias !165
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.59, i64 5, ptr nonnull %14, i64 1)
          to label %bb.do unwind label %bb.dp, !noalias !156

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !165
  %i.pd = load ptr, ptr %17, align 8, !tbaa !33, !noalias !156
  %i.pe = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !20, !noalias !156
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.pd, i64 noundef %i.pf)
          to label %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55 unwind label %bb.dq, !noalias !156

_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55: ; preds = %bb.do
  %i.pg = load ptr, ptr %17, align 8, !tbaa !33, !noalias !156 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55
  %i.pj = load i64, ptr %i.ph, align 8, !tbaa !21, !noalias !156
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pk) #30, !noalias !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !156
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !168
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53

bb.dp:                                            ; preds = %bb.dn
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i

bb.dq:                                            ; preds = %bb.do
  %i.pm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pn = load ptr, ptr %17, align 8, !tbaa !33, !noalias !156 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i: ; preds = %bb.dq
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !21, !noalias !156
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #30, !noalias !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i, %bb.dp
  %.pn55.i = phi { ptr, i32 } [ %i.pl, %bb.dp ], [ %i.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i ], [ %i.pm, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !156
  br label %bb.dv

bb.dr:                                            ; preds = %bb.dm
  %i.ps = tail call i32 @llvm.abs.i32(i32 %i.oo, i1 true) ; 3 uses
  %i.pt = urem i32 %i.ps, 1000
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %.lr.ph.i54, label %._crit_edge.i51

.lr.ph.i54:                                       ; preds = %bb.dr, %.lr.ph.i54
  %.0115.i = phi i32 [ %i.pv, %.lr.ph.i54 ], [ %i.ps, %bb.dr ]
  %.0112114.i = phi i64 [ %i.pw, %.lr.ph.i54 ], [ 9, %bb.dr ]
  %i.pv = udiv i32 %.0115.i, 1000                 ; 3 uses
  %i.pw = add i64 %.0112114.i, -3                 ; 2 uses
  %i.px = urem i32 %i.pv, 1000
  %i.py = icmp eq i32 %i.px, 0
  br i1 %i.py, label %.lr.ph.i54, label %._crit_edge.i51, !llvm.loop !171

._crit_edge.i51:                                  ; preds = %.lr.ph.i54, %bb.dr
  %.0112.lcssa.i = phi i64 [ 9, %bb.dr ], [ %i.pw, %.lr.ph.i54 ]
  %.0.lcssa.i = phi i32 [ %i.ps, %bb.dr ], [ %i.pv, %.lr.ph.i54 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28, !noalias !156
  %i.pz = icmp slt i64 %i.oc, 0
  %i.qa = icmp slt i32 %i.oo, 0
  %i.qb = or i1 %i.pz, %i.qa                      ; 2 uses
  %i.qc = select i1 %i.qb, ptr @.str.60, ptr @.str.40
  %i.qd = zext i1 %i.qb to i64
  store i64 %i.qd, ptr %18, align 8, !tbaa !172, !noalias !156
  %i.qe = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.qc, ptr %i.qe, align 8, !tbaa !174, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28, !noalias !156
  %i.qf = tail call noundef i64 @llvm.abs.i64(i64 %i.oc, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !175
  store ptr %18, ptr %13, align 8, !tbaa !21, !noalias !175
  %i.qg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.qg, align 8, !tbaa !88, !noalias !175
  %i.qh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qi = inttoptr i64 %i.qf to ptr
  store ptr %i.qi, ptr %i.qh, align 8, !tbaa !21, !noalias !175
  %i.qj = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.qj, align 8, !tbaa !88, !noalias !175
  %i.qk = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ql = inttoptr i64 %.0112.lcssa.i to ptr
  store ptr %i.ql, ptr %i.qk, align 8, !tbaa !21, !noalias !175
  %i.qm = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.qm, align 8, !tbaa !88, !noalias !175
  %i.qn = getelementptr inbounds nuw i8, ptr %13, i64 48
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i32 %.0.lcssa.i to i64
  %i.qo = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.qo, ptr %i.qn, align 8, !tbaa !21, !noalias !175
  %i.qp = getelementptr inbounds nuw i8, ptr %13, i64 56
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.qp, align 8, !tbaa !88, !noalias !175
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr nonnull @.str.61, i64 12, ptr nonnull %13, i64 4)
          to label %bb.ds unwind label %bb.dt, !noalias !156

bb.ds:                                            ; preds = %._crit_edge.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !175
  %i.qq = load ptr, ptr %19, align 8, !tbaa !33, !noalias !156
  %i.qr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !20, !noalias !156
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.qq, i64 noundef %i.qs)
          to label %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit91.i unwind label %bb.du, !noalias !156

_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit91.i: ; preds = %bb.ds
  %i.qt = load ptr, ptr %19, align 8, !tbaa !33, !noalias !156 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qu
  br i1 %i.qv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit91.i
  %i.qw = load i64, ptr %i.qu, align 8, !tbaa !21, !noalias !156
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qx) #30, !noalias !156
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93.i: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit91.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !156
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !178
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28, !noalias !156
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53

bb.dt:                                            ; preds = %._crit_edge.i51
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i

bb.du:                                            ; preds = %bb.ds
  %i.qz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ra = load ptr, ptr %19, align 8, !tbaa !33, !noalias !156 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i: ; preds = %bb.du
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !21, !noalias !156
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #30, !noalias !156
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i, %bb.dt
  %.pn.pn.i52 = phi { ptr, i32 } [ %i.qz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95.i ], [ %i.qy, %bb.dt ], [ %i.qz, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28, !noalias !156
  br label %bb.dv

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i93.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, %.invoke.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !156
  br label %_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteDurationINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i, %bb.dj
  %.pn57.pn.i = phi { ptr, i32 } [ %.pn.pn.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i ], [ %.pn55.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i ], [ %i.ou, %bb.dj ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev(ptr noundef nonnull align 8 dereferenceable(12) %16) #28
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dh
  %.pn57.pn.pn.i = phi { ptr, i32 } [ %.pn57.pn.i, %bb.dv ], [ %i.or, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !156
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dg, %bb.da
  %.pn62.pn.i = phi { ptr, i32 } [ %i.oq, %bb.dg ], [ %.pn57.pn.pn.i, %bb.dw ], [ %i.ob, %bb.da ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIlED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !156
  br label %common.resume

_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteDurationINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit: ; preds = %bb.cz, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !156
  br label %_ZN6google8protobuf13json_internal12_GLOBAL__N_18WriteAnyINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit

bb.dy:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.rf = tail call noundef ptr @_ZN6google8protobuf13json_internal16Proto2Descriptor13MustHaveFieldERKNS0_10DescriptorEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(160) %3, i32 noundef 1), !noalias !181 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 1
  %i.rh = load i8, ptr %i.rg, align 1, !noalias !181
  %i.ri = and i8 %i.rh, 32
  %.not.i.i61 = icmp eq i8 %i.ri, 0
  %i.rj = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !181
  %i.rk = extractvalue { ptr, ptr } %i.rj, 1      ; 2 uses
  br i1 %.not.i.i61, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rl = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.rk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.rf), !noalias !181
  %i.rm = sext i32 %i.rl to i64
  br label %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit.i62

bb.ea:                                            ; preds = %bb.dy
  %i.rn = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.rk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.rf), !noalias !181
  %i.ro = zext i1 %i.rn to i64
  br label %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit.i62

_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit.i62: ; preds = %bb.ea, %bb.dz
  %.0.i.i = phi i64 [ %i.rm, %bb.dz ], [ %i.ro, %bb.ea ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !181
  store i8 34, ptr %i.i, align 1, !tbaa !21, !noalias !181
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.i, i64 noundef 1), !noalias !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !181
  %.not6290.not.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not6290.not.i, label %.critedge65.i, label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %_ZN6google8protobuf13json_internal23UnparseProto2Descriptor7GetSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE.exit.i62
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 45 ; 2 uses
  br label %bb.eb

.loopexit97.i:                                    ; preds = %bb.eo, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !181
  %i.rt = add nuw i64 %.05892.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.rt, %.0.i.i
  br i1 %exitcond.not.i, label %.critedge65.i, label %bb.eb, !llvm.loop !184

bb.eb:                                            ; preds = %.loopexit97.i, %.lr.ph93.i
  %.05892.i = phi i64 [ 0, %.lr.ph93.i ], [ %i.rt, %.loopexit97.i ] ; 2 uses
  %.07491.i = phi i1 [ true, %.lr.ph93.i ], [ false, %.loopexit97.i ]
  br i1 %.07491.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.30, i64 noundef 1), !noalias !181
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !181
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.ru = call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !188
  %i.rv = extractvalue { ptr, ptr } %i.ru, 1
  %i.rw = trunc i64 %.05892.i to i32
  %i.rx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection26GetRepeatedStringReferenceERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.rv, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.rf, i32 noundef %i.rw, ptr noundef nonnull align 8 dereferenceable(32) %i.rp), !noalias !188 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !33, !noalias !188 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !20, !noalias !188 ; 3 uses
  store i64 %i.sa, ptr %i.rq, align 8, !alias.scope !185, !noalias !181
  store ptr %i.ry, ptr %i.rr, align 8, !alias.scope !185, !noalias !181
  store i64 1, ptr %12, align 8, !tbaa !22, !alias.scope !185, !noalias !181
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !181
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sa
  %.not86.i63 = icmp samesign eq i64 %i.sa, 0
  br i1 %.not86.i63, label %.loopexit97.i, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.ed, %bb.eo
  %.088.i = phi ptr [ %i.sr, %bb.eo ], [ %i.ry, %bb.ed ] ; 2 uses
  %.05087.i = phi i1 [ %.1.ph.i, %bb.eo ], [ false, %bb.ed ] ; 3 uses
  %i.sc = load i8, ptr %.088.i, align 1, !tbaa !21, !noalias !181 ; 7 uses
  %i.sd = add i8 %i.sc, -97
  %i.se = icmp ult i8 %i.sd, 26                   ; 2 uses
  %or.cond.i65 = and i1 %.05087.i, %i.se
  br i1 %or.cond.i65, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %.lr.ph.i64
  %i.sf = zext nneg i8 %i.sc to i64
  %i.sg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !21, !noalias !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !181
  store i8 %i.sh, ptr %i.h, align 1, !tbaa !21, !noalias !181
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %_ZN6google8protobuf13json_internal10JsonWriter5WriteEc.exit.i unwind label %.loopexit.i, !noalias !181

_ZN6google8protobuf13json_internal10JsonWriter5WriteEc.exit.i: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !181
  br label %bb.eo

.loopexit.i:                                      ; preds = %bb.en, %.thread76.i, %bb.eh, %bb.ee
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

.loopexit.split-lp.i:                             ; preds = %.thread.i66
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ef:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !181
  br label %common.resume

bb.eg:                                            ; preds = %.lr.ph.i64
  %i.si = add i8 %i.sc, -48
  %i.sj = icmp ult i8 %i.si, 10
  %i.sk = icmp eq i8 %i.sc, 46
  %i.sl = or i1 %i.sk, %i.sj
  %or.cond81.i = or i1 %i.se, %i.sl
  br i1 %or.cond81.i, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !181
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb:bb.a
  %.pn73.pn.i = phi { ptr, i32 } [ %i.lq, %bb.cd ], [ %.pn68.pn.pn.i, %bb.cu ], [ %i.la, %bb.by ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIlED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28, !noalias !354
  br label %common.resume

_ZN6google8protobuf13json_internal12_GLOBAL__N_114WriteTimestampINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit: ; preds = %.invoke.i, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28, !noalias !354
  br label %_ZN6google8protobuf13json_internal12_GLOBAL__N_18WriteAnyINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit

bb.cw:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.pp = tail call noundef ptr @_ZN6google8protobuf13json_internal10Proto3Type13MustHaveFieldERKNS1_12ResolverPool7MessageEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef 1), !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !368
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !243, !noalias !368
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 80
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !21, !noalias !368
  %i.pu = tail call noundef i64 @_ZNK6google8protobuf13json_internal14UntypedMessage5CountEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.pt), !noalias !368
  %.not.i48 = icmp eq i64 %i.pu, 0
  br i1 %.not.i48, label %.thread.i, label %bb.cx

.thread.i:                                        ; preds = %bb.cw
  %i.pv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.pv, align 8, !tbaa !21, !noalias !368
  store i64 1, ptr %13, align 8, !tbaa !22, !noalias !368
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !368
  br label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.pw = load ptr, ptr %i.pq, align 8, !tbaa !243, !noalias !371
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 80
  %i.py = load i32, ptr %i.px, align 8, !tbaa !21, !noalias !371
  %i.pz = tail call { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIlEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.py), !noalias !371
  %i.qa = extractvalue { ptr, i64 } %i.pz, 0
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !51, !noalias !371 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !21, !noalias !368
  store i64 1, ptr %13, align 8, !tbaa !22, !noalias !368
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !368
  %i.qd = add i64 %i.qb, -315576000001
  %or.cond.i49 = icmp ult i64 %i.qd, -631152000001
  br i1 %or.cond.i49, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 21, ptr nonnull @.str.57)
          to label %_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteDurationINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.da:                                            ; preds = %bb.cx, %.thread.i
  %i.qf = phi i64 [ 0, %.thread.i ], [ %i.qb, %bb.cx ] ; 5 uses
  %i.qg = invoke noundef ptr @_ZN6google8protobuf13json_internal10Proto3Type13MustHaveFieldERKNS1_12ResolverPool7MessageEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef 2)
          to label %bb.db unwind label %bb.dd, !noalias !368

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !368
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !243, !noalias !368
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 80
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !21, !noalias !368
  %i.ql = invoke noundef i64 @_ZNK6google8protobuf13json_internal14UntypedMessage5CountEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.qk)
          to label %_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit.i50 unwind label %bb.de, !noalias !368

_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit.i50: ; preds = %bb.db
  %.not48.i = icmp eq i64 %i.ql, 0
  br i1 %.not48.i, label %.thread126.i, label %bb.dc

bb.dc:                                            ; preds = %_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit.i50
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.qm = load ptr, ptr %i.qh, align 8, !tbaa !243, !noalias !377
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 80
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !21, !noalias !377
  %i.qp = invoke { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIiEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.qo)
          to label %bb.df unwind label %bb.de, !noalias !368

.thread126.i:                                     ; preds = %_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit.i50
  %i.qq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.qq, align 8, !tbaa !21, !noalias !368
  store i64 1, ptr %14, align 8, !tbaa !22, !noalias !368
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !368
  br label %bb.dk

bb.dd:                                            ; preds = %bb.da
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.de:                                            ; preds = %bb.dc, %bb.db
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.df:                                            ; preds = %bb.dc
  %i.qt = extractvalue { ptr, i64 } %i.qp, 0
  %i.qu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.qv = load i32, ptr %i.qt, align 4, !tbaa !3, !noalias !377 ; 7 uses
  store i32 %i.qv, ptr %i.qu, align 8, !tbaa !21, !alias.scope !374, !noalias !368
  store i64 1, ptr %14, align 8, !tbaa !22, !noalias !368
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !368
  %i.qw = add i32 %i.qv, -1000000000
  %or.cond4.i = icmp ult i32 %i.qw, -1999999999
  br i1 %or.cond4.i, label %.invoke.i59, label %bb.dh

bb.dg:                                            ; preds = %.invoke.i59
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dh:                                            ; preds = %bb.df
  %i.qy = icmp ne i64 %i.qf, 0
  %i.qz = icmp ne i32 %i.qv, 0
  %or.cond6.i = and i1 %i.qy, %i.qz
  br i1 %or.cond6.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %.lobit.i = lshr i64 %i.qf, 63
  %i.ra = trunc nuw nsw i64 %.lobit.i to i32
  %.lobit49.i = lshr i32 %i.qv, 31
  %.not50.i = icmp eq i32 %.lobit49.i, %i.ra
  br i1 %.not50.i, label %bb.dj, label %.invoke.i59

.invoke.i59:                                      ; preds = %bb.di, %bb.df
  %i.rb = phi i64 [ 36, %bb.di ], [ 21, %bb.df ]
  %i.rc = phi ptr [ @.str.58, %bb.di ], [ @.str.57, %bb.df ]
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.rb, ptr nonnull %i.rc)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53 unwind label %bb.dg

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.rd = icmp eq i32 %i.qv, 0
  br i1 %i.rd, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj, %.thread126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !378
  %i.re = inttoptr i64 %i.qf to ptr
  store ptr %i.re, ptr %12, align 8, !tbaa !21, !noalias !378
  %i.rf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.rf, align 8, !tbaa !88, !noalias !378
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull @.str.59, i64 5, ptr nonnull %12, i64 1)
          to label %bb.dl unwind label %bb.dm, !noalias !368

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !378
  %i.rg = load ptr, ptr %15, align 8, !tbaa !33, !noalias !368
  %i.rh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !20, !noalias !368
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.rg, i64 noundef %i.ri)
          to label %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55 unwind label %bb.dn, !noalias !368

_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55: ; preds = %bb.dl
  %i.rj = load ptr, ptr %15, align 8, !tbaa !33, !noalias !368 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.rl = icmp eq ptr %i.rj, %i.rk
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55
  %i.rm = load i64, ptr %i.rk, align 8, !tbaa !21, !noalias !368
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rj, i64 noundef %i.rn) #30, !noalias !368
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !368
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !381
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53

bb.dm:                                            ; preds = %bb.dk
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i

bb.dn:                                            ; preds = %bb.dl
  %i.rp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rq = load ptr, ptr %15, align 8, !tbaa !33, !noalias !368 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i: ; preds = %bb.dn
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !21, !noalias !368
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #30, !noalias !368
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i, %bb.dm
  %.pn55.i = phi { ptr, i32 } [ %i.ro, %bb.dm ], [ %i.rp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i ], [ %i.rp, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !368
  br label %bb.ds

bb.do:                                            ; preds = %bb.dj
  %i.rv = tail call i32 @llvm.abs.i32(i32 %i.qv, i1 true) ; 3 uses
  %i.rw = urem i32 %i.rv, 1000
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %.lr.ph.i54, label %._crit_edge.i51

.lr.ph.i54:                                       ; preds = %bb.do, %.lr.ph.i54
  %.0109.i = phi i32 [ %i.ry, %.lr.ph.i54 ], [ %i.rv, %bb.do ]
  %.0106108.i = phi i64 [ %i.rz, %.lr.ph.i54 ], [ 9, %bb.do ]
  %i.ry = udiv i32 %.0109.i, 1000                 ; 3 uses
  %i.rz = add i64 %.0106108.i, -3                 ; 2 uses
  %i.sa = urem i32 %i.ry, 1000
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %.lr.ph.i54, label %._crit_edge.i51, !llvm.loop !384

._crit_edge.i51:                                  ; preds = %.lr.ph.i54, %bb.do
  %.0106.lcssa.i = phi i64 [ 9, %bb.do ], [ %i.rz, %.lr.ph.i54 ]
  %.0.lcssa.i = phi i32 [ %i.rv, %bb.do ], [ %i.ry, %.lr.ph.i54 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28, !noalias !368
  %i.sc = icmp slt i64 %i.qf, 0
  %i.sd = icmp slt i32 %i.qv, 0
  %i.se = or i1 %i.sc, %i.sd                      ; 2 uses
  %i.sf = select i1 %i.se, ptr @.str.60, ptr @.str.40
  %i.sg = zext i1 %i.se to i64
  store i64 %i.sg, ptr %16, align 8, !tbaa !172, !noalias !368
  %i.sh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.sf, ptr %i.sh, align 8, !tbaa !174, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28, !noalias !368
  %i.si = tail call noundef i64 @llvm.abs.i64(i64 %i.qf, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !385
  store ptr %16, ptr %11, align 8, !tbaa !21, !noalias !385
  %i.sj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.sj, align 8, !tbaa !88, !noalias !385
  %i.sk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.sl = inttoptr i64 %i.si to ptr
  store ptr %i.sl, ptr %i.sk, align 8, !tbaa !21, !noalias !385
  %i.sm = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.sm, align 8, !tbaa !88, !noalias !385
  %i.sn = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.so = inttoptr i64 %.0106.lcssa.i to ptr
  store ptr %i.so, ptr %i.sn, align 8, !tbaa !21, !noalias !385
  %i.sp = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.sp, align 8, !tbaa !88, !noalias !385
  %i.sq = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i32 %.0.lcssa.i to i64
  %i.sr = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.sr, ptr %i.sq, align 8, !tbaa !21, !noalias !385
  %i.ss = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ss, align 8, !tbaa !88, !noalias !385
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr nonnull @.str.61, i64 12, ptr nonnull %11, i64 4)
          to label %bb.dp unwind label %bb.dq, !noalias !368

bb.dp:                                            ; preds = %._crit_edge.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !385
  %i.st = load ptr, ptr %17, align 8, !tbaa !33, !noalias !368
  %i.su = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !20, !noalias !368
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.st, i64 noundef %i.sv)
          to label %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit85.i unwind label %bb.dr, !noalias !368

_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit85.i: ; preds = %bb.dp
  %i.sw = load ptr, ptr %17, align 8, !tbaa !33, !noalias !368 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.sy = icmp eq ptr %i.sw, %i.sx
  br i1 %i.sy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit85.i
  %i.sz = load i64, ptr %i.sx, align 8, !tbaa !21, !noalias !368
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.ta) #30, !noalias !368
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87.i: ; preds = %_ZN6google8protobuf13json_internal10JsonWriter5WriteESt17basic_string_viewIcSt11char_traitsIcEE.exit85.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !368
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !388
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !368
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53

bb.dq:                                            ; preds = %._crit_edge.i51
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i

bb.dr:                                            ; preds = %bb.dp
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = load ptr, ptr %17, align 8, !tbaa !33, !noalias !368 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.tf = icmp eq ptr %i.td, %i.te
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i: ; preds = %bb.dr
  %i.tg = load i64, ptr %i.te, align 8, !tbaa !21, !noalias !368
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.th) #30, !noalias !368
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i, %bb.dq
  %.pn.pn.i52 = phi { ptr, i32 } [ %i.tc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89.i ], [ %i.tb, %bb.dq ], [ %i.tc, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !368
  br label %bb.ds

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i87.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i57, %.invoke.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !368
  br label %_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteDurationINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i, %bb.dg
  %.pn57.pn.i = phi { ptr, i32 } [ %.pn.pn.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i ], [ %.pn55.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i ], [ %i.qx, %bb.dg ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev(ptr noundef nonnull align 8 dereferenceable(12) %14) #28
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.de
  %.pn57.pn.pn.i = phi { ptr, i32 } [ %.pn57.pn.i, %bb.ds ], [ %i.qs, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !368
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dd, %bb.cz
  %.pn62.pn.i = phi { ptr, i32 } [ %i.qr, %bb.dd ], [ %.pn57.pn.pn.i, %bb.dt ], [ %i.qe, %bb.cz ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIlED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !368
  br label %common.resume

_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteDurationINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit: ; preds = %bb.cy, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !368
  br label %_ZN6google8protobuf13json_internal12_GLOBAL__N_18WriteAnyINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescE.exit

bb.dv:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.ti = tail call noundef ptr @_ZN6google8protobuf13json_internal10Proto3Type13MustHaveFieldERKNS1_12ResolverPool7MessageEiNS1_12JsonLocation14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %3, i32 noundef 1), !noalias !391
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !243, !noalias !391
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 80
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !21, !noalias !391
  %i.tn = tail call noundef i64 @_ZNK6google8protobuf13json_internal14UntypedMessage5CountEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.tm), !noalias !391 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !391
  store i8 34, ptr %i.j, align 1, !tbaa !21, !noalias !391
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.j, i64 noundef 1), !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !391
  %.not6290.not.i = icmp eq i64 %i.tn, 0
  br i1 %.not6290.not.i, label %.critedge65.i, label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %bb.dv
  %i.to = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.tp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 45 ; 2 uses
  br label %bb.dw

.loopexit98.i:                                    ; preds = %bb.ej, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !391
  %i.tr = add nuw i64 %.05892.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.tr, %i.tn
  br i1 %exitcond.not.i, label %.critedge65.i, label %bb.dw, !llvm.loop !394

bb.dw:                                            ; preds = %.loopexit98.i, %.lr.ph93.i
  %.05892.i = phi i64 [ 0, %.lr.ph93.i ], [ %i.tr, %.loopexit98.i ] ; 2 uses
  %.07491.i = phi i1 [ true, %.lr.ph93.i ], [ false, %.loopexit98.i ]
  br i1 %.07491.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.30, i64 noundef 1), !noalias !391
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !391
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.ts = load ptr, ptr %i.tj, align 8, !tbaa !243, !noalias !398
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 80
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !21, !noalias !398
  %i.tv = call { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.tu), !noalias !398
  %i.tw = extractvalue { ptr, i64 } %i.tv, 0
  %i.tx = getelementptr inbounds nuw [32 x i8], ptr %i.tw, i64 %.05892.i ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !33, !noalias !398 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !20, !noalias !398 ; 3 uses
  store i64 %i.ua, ptr %i.to, align 8, !alias.scope !395, !noalias !391
  store ptr %i.ty, ptr %i.tp, align 8, !alias.scope !395, !noalias !391
  store i64 1, ptr %10, align 8, !tbaa !22, !alias.scope !395, !noalias !391
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !391
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.ua
  %.not86.i60 = icmp samesign eq i64 %i.ua, 0
  br i1 %.not86.i60, label %.loopexit98.i, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.dy, %bb.ej
  %.088.i = phi ptr [ %i.ur, %bb.ej ], [ %i.ty, %bb.dy ] ; 2 uses
  %.05087.i = phi i1 [ %.1.ph.i, %bb.ej ], [ false, %bb.dy ] ; 3 uses
  %i.uc = load i8, ptr %.088.i, align 1, !tbaa !21, !noalias !391 ; 7 uses
  %i.ud = add i8 %i.uc, -97
  %i.ue = icmp ult i8 %i.ud, 26                   ; 2 uses
  %or.cond.i62 = and i1 %.05087.i, %i.ue
  br i1 %or.cond.i62, label %bb.dz, label %bb.eb

bb.dz:                                            ; preds = %.lr.ph.i61
  %i.uf = zext nneg i8 %i.uc to i64
  %i.ug = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !21, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !391
  store i8 %i.uh, ptr %i.i, align 1, !tbaa !21, !noalias !391
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.i, i64 noundef 1)
          to label %_ZN6google8protobuf13json_internal10JsonWriter5WriteEc.exit.i unwind label %.loopexit.i, !noalias !391

_ZN6google8protobuf13json_internal10JsonWriter5WriteEc.exit.i: ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !391
  br label %bb.ej

.loopexit.i:                                      ; preds = %bb.ei, %.thread76.i, %bb.ec, %bb.dz
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

.loopexit.split-lp.i:                             ; preds = %.thread.i63
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ea:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !391
  br label %common.resume

bb.eb:                                            ; preds = %.lr.ph.i61
  %i.ui = add i8 %i.uc, -48
  %i.uj = icmp ult i8 %i.ui, 10
  %i.uk = icmp eq i8 %i.uc, 46
  %i.ul = or i1 %i.uk, %i.uj
  %or.cond81.i = or i1 %i.ue, %i.ul
  br i1 %or.cond81.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !391
  store i8 %i.uc, ptr %i.h, align 1, !tbaa !21, !noalias !391
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %_ZN6google8protobuf13json_internal10JsonWriter5WriteEc.exit68.i unwind label %.loopexit.i, !noalias !391

_ZN6google8protobuf13json_internal10JsonWriter5WriteEc.exit68.i: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !391
  br label %bb.ej

bb.ed:                                            ; preds = %bb.eb
  %i.um = icmp eq i8 %i.uc, 95
  br i1 %i.um, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  br i1 %.05087.i, label %bb.ef, label %bb.ej
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteSingularINS1_17UnparseProto3TypeEJRKNS1_14UntypedMessageEEEEN4absl12lts_202505126StatusERNS1_10JsonWriterENT_5FieldEDpOT0_:bb.a
.noexc252:                                        ; preds = %.noexc251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit unwind label %bb.o

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit: ; preds = %.noexc252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.x

bb.q:                                             ; preds = %_ZNR4absl12lts_202505128StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEdeEv.exit257
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.z

_ZNR4absl12lts_202505128StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEdeEv.exit257: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !21, !noalias !795
  %i.ek = tail call { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ej), !noalias !795
  %i.el = extractvalue { ptr, i64 } %i.ek, 0      ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !33, !noalias !795 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !20, !noalias !795 ; 2 uses
  store i64 %i.ep, ptr %i.em, align 8, !alias.scope !795
  %i.eq = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.en, ptr %i.eq, align 8, !alias.scope !795
  store i64 1, ptr %19, align 8, !tbaa !22, !alias.scope !795
  store i64 1, ptr %0, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf13json_internal10JsonWriter11WriteBase64ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %i.ep, ptr %i.en)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit258 unwind label %bb.q

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit258: ; preds = %_ZNR4absl12lts_202505128StatusOrISt17basic_string_viewIcSt11char_traitsIcEEEdeEv.exit257
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.x

bb.r:                                             ; preds = %_ZNR4absl12lts_202505128StatusOrIiEdeEv.exit262
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev(ptr noundef nonnull align 8 dereferenceable(12) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.z

_ZNR4absl12lts_202505128StatusOrIiEdeEv.exit262:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.et = load i32, ptr %i.es, align 8, !tbaa !21, !noalias !798
  %i.eu = tail call { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIiEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.et), !noalias !798
  %i.ev = extractvalue { ptr, i64 } %i.eu, 0
  %i.ew = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !3, !noalias !798 ; 2 uses
  store i32 %i.ex, ptr %i.ew, align 8, !tbaa !21, !alias.scope !798
  store i64 1, ptr %20, align 8, !tbaa !22, !alias.scope !798
  store i64 1, ptr %0, align 8, !tbaa !22
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_19WriteEnumINS1_17UnparseProto3TypeEEEvRNS1_10JsonWriterENT_5FieldEiNS2_16IntegerEnumStyleE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2, i32 noundef %i.ex, i32 noundef 1)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit263 unwind label %bb.r

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit263: ; preds = %_ZNR4absl12lts_202505128StatusOrIiEdeEv.exit262
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.x

bb.s:                                             ; preds = %bb.t
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.z

bb.t:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !21, !noalias !801
  %i.fb = tail call { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetIS2_EEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fa), !noalias !801
  %i.fc = extractvalue { ptr, i64 } %i.fb, 0      ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !21, !alias.scope !801
  store i64 1, ptr %21, align 8, !tbaa !22, !alias.scope !801
  store i64 1, ptr %0, align 8, !tbaa !22
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !226
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 8 dereferenceable(184) %i.fe, i1 noundef zeroext false)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev.exit unwind label %bb.s

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.y

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store i64 24, ptr %23, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.36, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.fg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.fh = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.p, ptr noundef nonnull %i.fg)
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  store i64 %i.fk, ptr %24, align 8, !tbaa !172
  %i.fl = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.fg, ptr %i.fl, align 8, !tbaa !174
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(48) %24)
  %i.fm = load ptr, ptr %22, align 8, !tbaa !33
  %i.fn = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !20
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.fo, ptr %i.fm)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fp = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !21
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.w
  %i.fy = load i64, ptr %i.fw, align 8, !tbaa !21
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.z

bb.x:                                             ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit263, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit258, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataISt17basic_string_viewIcSt11char_traitsIcEEED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIjED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIiED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataImED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIlED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIdED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIfED2Ev.exit
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !804
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIPKN6google8protobuf13json_internal14UntypedMessageEED2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %.body, %bb.b
  %.pn173 = phi { ptr, i32 } [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ], [ %i.q, %bb.b ], [ %.pn169, %.body ], [ %i.at, %bb.f ], [ %i.bt, %bb.h ], [ %i.cq, %bb.j ], [ %i.db, %bb.l ], [ %i.dm, %bb.n ], [ %i.dx, %bb.o ], [ %i.eh, %bb.q ], [ %i.er, %bb.r ], [ %i.ey, %bb.s ]
  resume { ptr, i32 } %.pn173
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::StatusOr.406", align 8 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !807  ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = icmp slt i32 %i.j, 0
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = shl nuw nsw i64 %i.k, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #33 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 41
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0132.1.a, %.sroa.13.1
  br i1 %.not.i.i.i, label %.critedge37, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.q = ptrtoint ptr %.sroa.13.1 to i64
  %i.r = ptrtoint ptr %.sroa.0132.1.a to i64      ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = xor i64 %i.v, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_T1_(ptr %.sroa.0132.1.a, ptr %.sroa.13.1, i64 noundef %i.w)
  %i.x = icmp sgt i64 %i.s, 128
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.0132.1.a, i64 8 ; 3 uses
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %bb.h

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i
  %.sroa.0.021.i.idx.i.i.i.i = phi i64 [ %.sroa.0.021.i.add.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i ], [ 8, %bb.c ] ; 4 uses
  %.pn20.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i ], [ %.sroa.0132.1.a, %bb.c ] ; 3 uses
  %.sroa.0.021.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0132.1.a, i64 %.sroa.0.021.i.idx.i.i.i.i ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.0132.1.a, align 8, !tbaa !413 ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !243
  %i.z = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %.val1.val.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !243
  %i.aa = getelementptr i8, ptr %.val.val.i.i.i.i.i.i, i64 80 ; 2 uses
  %.val.val.val.i.i.i.i.i.i = load i32, ptr %i.aa, align 8, !tbaa !21 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val1.val.i.i.i.i.i.i, i64 80
  %.val1.val.val.i.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !21
  %i.ac = icmp slt i32 %.val.val.val.i.i.i.i.i.i, %.val1.val.val.i.i.i.i.i.i
  br i1 %i.ac, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp samesign ugt i64 %.sroa.0.021.i.idx.i.i.i.i, 8
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !50

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0132.1.a, i64 %.sroa.0.021.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i, i64 8
  store ptr %.val1.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !413
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.val2.i8.i.i.i.i.i.i = load ptr, ptr %.pn20.i.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %i.af = getelementptr i8, ptr %.val2.i8.i.i.i.i.i.i, i64 8
  %.val2.val.i9.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !243
  %i.ag = getelementptr i8, ptr %.val2.val.i9.i.i.i.i.i.i, i64 80
  %.val2.val.val.i10.i.i.i.i.i.i = load i32, ptr %i.ag, align 8, !tbaa !21
  %i.ah = icmp slt i32 %.val.val.val.i.i.i.i.i.i, %.val2.val.val.i10.i.i.i.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.val2.i13.i.i.i.i.i.i = phi ptr [ %.val2.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val2.i8.i.i.i.i.i.i, %bb.g ]
  %.sroa.0.012.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.pn20.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.03.011.i.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.021.i.ptr.i.i.i.i, %bb.g ]
  store ptr %.val2.i13.i.i.i.i.i.i, ptr %.sroa.03.011.i.i.i.i.i.i, align 8, !tbaa !413
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.val.i9.i.i.i.i.i = load i32, ptr %i.aa, align 8, !tbaa !21
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i, i64 8
  %.val2.val.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !243
  %i.aj = getelementptr i8, ptr %.val2.val.i.i.i.i.i.i.i, i64 80
  %.val2.val.val.i.i.i.i.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !21
  %i.ak = icmp slt i32 %.val.val.val.i9.i.i.i.i.i, %.val2.val.val.i.i.i.i.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i, !llvm.loop !810

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i.i.i.i.i = phi ptr [ %.sroa.0132.1.a, %bb.f ], [ %.sroa.0132.1.a, %bb.e ], [ %.sroa.0.021.i.ptr.i.i.i.i, %bb.g ], [ %.sroa.0.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.val.i.i.i.i.i.i, ptr %.sink.i.i.i.i.i, align 8, !tbaa !413
  %.sroa.0.021.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.021.i.add.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !811

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_.exit.i.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0132.1.a, i64 128 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.al, %.sroa.13.1
  br i1 %.not6.i.i.i.i.i, label %.noexc45.lr.ph, label %.lr.ph.i12.i.i.i.i

.lr.ph.i12.i.i.i.i:                               ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_.exit.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_.exit.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_.exit.i.i.i.i.i ], [ %i.al, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_.exit.i.i.i.i ] ; 5 uses
  %i.am = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.val.i.i13.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !243
  %i.ao = getelementptr i8, ptr %.val.val.i.i13.i.i.i.i, i64 80 ; 2 uses
  %.sroa.0.06.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.val7.i.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !21
  %.val2.i8.i.i14.i.i.i.i = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %i.ap = getelementptr i8, ptr %.val2.i8.i.i14.i.i.i.i, i64 8
  %.val2.val.i9.i.i15.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !243
  %i.aq = getelementptr i8, ptr %.val2.val.i9.i.i15.i.i.i.i, i64 80
  %.val2.val.val.i10.i.i16.i.i.i.i = load i32, ptr %i.aq, align 8, !tbaa !21
  %i.ar = icmp slt i32 %.val.val.val7.i.i.i.i.i.i, %.val2.val.val.i10.i.i16.i.i.i.i
  br i1 %i.ar, label %.lr.ph.i.i18.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_.exit.i.i.i.i.i

.lr.ph.i.i18.i.i.i.i:                             ; preds = %.lr.ph.i12.i.i.i.i, %.lr.ph.i.i18.i.i.i.i
  %.val2.i13.i.i19.i.i.i.i = phi ptr [ %.val2.i.i.i24.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.val2.i8.i.i14.i.i.i.i, %.lr.ph.i12.i.i.i.i ]
  %.sroa.0.012.i.i20.i.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ] ; 3 uses
  %.sroa.03.011.i.i21.i.i.i.i = phi ptr [ %.sroa.0.012.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ]
  store ptr %.val2.i13.i.i19.i.i.i.i, ptr %.sroa.03.011.i.i21.i.i.i.i, align 8, !tbaa !413
  %.sroa.0.0.i.i22.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i20.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.val.i.i23.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !21
  %.val2.i.i.i24.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i22.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %i.as = getelementptr i8, ptr %.val2.i.i.i24.i.i.i.i, i64 8
  %.val2.val.i.i.i25.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !243
  %i.at = getelementptr i8, ptr %.val2.val.i.i.i25.i.i.i.i, i64 80
  %.val2.val.val.i.i.i26.i.i.i.i = load i32, ptr %i.at, align 8, !tbaa !21
  %i.au = icmp slt i32 %.val.val.val.i.i23.i.i.i.i, %.val2.val.val.i.i.i26.i.i.i.i
  br i1 %i.au, label %.lr.ph.i.i18.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_.exit.i.i.i.i.i, !llvm.loop !810

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i18.i.i.i.i, %.lr.ph.i12.i.i.i.i
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i.i ], [ %.sroa.0.012.i.i20.i.i.i.i, %.lr.ph.i.i18.i.i.i.i ]
  store ptr %i.am, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !413
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.av, %.sroa.13.1
  br i1 %.not.i17.i.i.i.i, label %.noexc45.lr.ph, label %.lr.ph.i12.i.i.i.i, !llvm.loop !812

bb.h:                                             ; preds = %bb.c
  %.not19.i29.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i, %.sroa.13.1
  br i1 %.not19.i29.i.i.i.i, label %.noexc45.lr.ph, label %.lr.ph.i30.i.i.i.i

.lr.ph.i30.i.i.i.i:                               ; preds = %bb.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i
  %.sroa.0.021.i31.i.i.i.i = phi ptr [ %.sroa.0.0.i44.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i ], [ %scevgep.i.i.i.i, %bb.h ] ; 6 uses
  %.pn20.i32.i.i.i.i = phi ptr [ %.sroa.0.021.i31.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i ], [ %.sroa.0132.1.a, %bb.h ] ; 4 uses
  %.val.i.i33.i.i.i.i = load ptr, ptr %.sroa.0.021.i31.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.val1.i.i34.i.i.i.i = load ptr, ptr %.sroa.0132.1.a, align 8, !tbaa !413 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val.i.i33.i.i.i.i, i64 8
  %.val.val.i.i35.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !243
  %i.ax = getelementptr i8, ptr %.val1.i.i34.i.i.i.i, i64 8
  %.val1.val.i.i36.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !243
  %i.ay = getelementptr i8, ptr %.val.val.i.i35.i.i.i.i, i64 80 ; 2 uses
  %.val.val.val.i.i37.i.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.az = getelementptr i8, ptr %.val1.val.i.i36.i.i.i.i, i64 80
  %.val1.val.val.i.i38.i.i.i.i = load i32, ptr %i.az, align 8, !tbaa !21
  %i.ba = icmp slt i32 %.val.val.val.i.i37.i.i.i.i, %.val1.val.val.i.i38.i.i.i.i
  br i1 %i.ba, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i30.i.i.i.i
  %i.bb = ptrtoint ptr %.sroa.0.021.i31.i.i.i.i to i64
  %i.bc = sub i64 %i.bb, %i.r                     ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.j, label %bb.k, !prof !50

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i32.i.i.i.i, i64 16
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0132.1.a, i64 %i.bc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bi = icmp eq i64 %i.bc, 8
  br i1 %i.bi, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn20.i32.i.i.i.i, i64 8
  store ptr %.val1.i.i34.i.i.i.i, ptr %i.bj, align 8, !tbaa !413
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i30.i.i.i.i
  %.val2.i8.i.i39.i.i.i.i = load ptr, ptr %.pn20.i32.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %i.bk = getelementptr i8, ptr %.val2.i8.i.i39.i.i.i.i, i64 8
  %.val2.val.i9.i.i40.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !243
  %i.bl = getelementptr i8, ptr %.val2.val.i9.i.i40.i.i.i.i, i64 80
  %.val2.val.val.i10.i.i41.i.i.i.i = load i32, ptr %i.bl, align 8, !tbaa !21
  %i.bm = icmp slt i32 %.val.val.val.i.i37.i.i.i.i, %.val2.val.val.i10.i.i41.i.i.i.i
  br i1 %i.bm, label %.lr.ph.i.i46.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i

.lr.ph.i.i46.i.i.i.i:                             ; preds = %bb.m, %.lr.ph.i.i46.i.i.i.i
  %.val2.i13.i.i47.i.i.i.i = phi ptr [ %.val2.i.i.i52.i.i.i.i, %.lr.ph.i.i46.i.i.i.i ], [ %.val2.i8.i.i39.i.i.i.i, %bb.m ]
  %.sroa.0.012.i.i48.i.i.i.i = phi ptr [ %.sroa.0.0.i.i50.i.i.i.i, %.lr.ph.i.i46.i.i.i.i ], [ %.pn20.i32.i.i.i.i, %bb.m ] ; 3 uses
  %.sroa.03.011.i.i49.i.i.i.i = phi ptr [ %.sroa.0.012.i.i48.i.i.i.i, %.lr.ph.i.i46.i.i.i.i ], [ %.sroa.0.021.i31.i.i.i.i, %bb.m ]
  store ptr %.val2.i13.i.i47.i.i.i.i, ptr %.sroa.03.011.i.i49.i.i.i.i, align 8, !tbaa !413
  %.sroa.0.0.i.i50.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i48.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.val.i9.i51.i.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !21
  %.val2.i.i.i52.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i50.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %i.bn = getelementptr i8, ptr %.val2.i.i.i52.i.i.i.i, i64 8
  %.val2.val.i.i.i53.i.i.i.i = load ptr, ptr %i.bn, align 8, !tbaa !243
  %i.bo = getelementptr i8, ptr %.val2.val.i.i.i53.i.i.i.i, i64 80
  %.val2.val.val.i.i.i54.i.i.i.i = load i32, ptr %i.bo, align 8, !tbaa !21
  %i.bp = icmp slt i32 %.val.val.val.i9.i51.i.i.i.i, %.val2.val.val.i.i.i54.i.i.i.i
  br i1 %i.bp, label %.lr.ph.i.i46.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i, !llvm.loop !810

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i: ; preds = %.lr.ph.i.i46.i.i.i.i, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i43.i.i.i.i = phi ptr [ %.sroa.0132.1.a, %bb.l ], [ %.sroa.0132.1.a, %bb.j ], [ %.sroa.0132.1.a, %bb.k ], [ %.sroa.0.021.i31.i.i.i.i, %bb.m ], [ %.sroa.0.012.i.i48.i.i.i.i, %.lr.ph.i.i46.i.i.i.i ]
  store ptr %.val.i.i33.i.i.i.i, ptr %.sink.i43.i.i.i.i, align 8, !tbaa !413
  %.sroa.0.0.i44.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i31.i.i.i.i, i64 8 ; 2 uses
  %.not.i45.i.i.i.i = icmp eq ptr %.sroa.0.0.i44.i.i.i.i, %.sroa.13.1
  br i1 %.not.i45.i.i.i.i, label %.noexc45.lr.ph, label %.lr.ph.i30.i.i.i.i, !llvm.loop !811

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit
  %.027205 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 2 uses
  %.sroa.21.0204 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.21.1, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 9 uses
  %.sroa.13.0203 = phi ptr [ %i.n, %.lr.ph ], [ %.sroa.13.1, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 6 uses
  %.sroa.0132.0202 = phi ptr [ %i.n, %.lr.ph ], [ %.sroa.0132.1.a, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 11 uses
  %i.bq = invoke { ptr, i64 } @_ZNK6google8protobuf13json_internal12ResolverPool7Message13FieldsByIndexEv(ptr noundef nonnull align 8 dereferenceable(184) %3)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.br, i64 %.027205 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !243
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !21
  %i.bx = invoke noundef i64 @_ZNK6google8protobuf13json_internal14UntypedMessage5CountEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.bw)
          to label %_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit unwind label %.loopexit185

_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit: ; preds = %bb.o
  %i.by = icmp ne i64 %i.bx, 0                    ; 3 uses
  %i.bz = load i8, ptr %i.p, align 1, !tbaa !573, !range !25, !noundef !26
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !243 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 76
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !21
  %i.ce = icmp eq i32 %i.cd, 3
  br i1 %i.ce, label %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !813
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !21
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.r, label %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit

bb.r:                                             ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 84
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !21
  %.not.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i, label %.split, label %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit

.split:                                           ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !21
  %i.co = icmp ne i32 %i.cn, 11
  %i.cp = or i1 %i.by, %i.co
  br i1 %i.cp, label %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit: ; preds = %bb.r, %bb.q
  br i1 %i.by, label %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

bb.s:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit185:                                     ; preds = %bb.o, %_ZNKSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit187 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp186:                            ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_ZN6google8protobuf13json_internal17UnparseProto3Type7GetSizeEPKNS1_12ResolverPool5FieldERKNS1_14UntypedMessageE.exit
  br i1 %i.by, label %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread: ; preds = %.split, %bb.p, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit, %bb.t
  %.not.i = icmp eq ptr %.sroa.13.0203, %.sroa.21.0204
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread
  store ptr %i.bs, ptr %.sroa.13.0203, align 8, !tbaa !413
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.13.0203, i64 8
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

bb.v:                                             ; preds = %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread
  %i.cs = ptrtoint ptr %.sroa.21.0204 to i64
  %i.ct = ptrtoint ptr %.sroa.0132.0202 to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 6 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.w, label %_ZNKSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #31
          to label %.noexc43 unwind label %.loopexit.split-lp186

.noexc43:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i42 = icmp ne i64 %i.da, 0
  tail call void @llvm.assume(i1 %.not.i.i.i42)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #33
          to label %.noexc44 unwind label %.loopexit185 ; 4 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cu ; 2 uses
  store ptr %i.bs, ptr %i.dd, align 8, !tbaa !413
  %i.de = icmp sgt i64 %i.cu, 0
  br i1 %i.de, label %bb.x, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.x:                                             ; preds = %.noexc44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 8 %.sroa.0132.0202, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.x, %.noexc44
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0132.0202, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0202, i64 noundef %i.cu) #30
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit: ; preds = %.split, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.u, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit, %bb.t
  %.sroa.0132.1.a = phi ptr [ %.sroa.0132.0202, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit ], [ %.sroa.0132.0202, %bb.t ], [ %i.dc, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0132.0202, %bb.u ], [ %.sroa.0132.0202, %.split ] ; 26 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0203, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit ], [ %.sroa.13.0203, %bb.t ], [ %i.df, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.cr, %bb.u ], [ %.sroa.13.0203, %.split ] ; 9 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.0204, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit ], [ %.sroa.21.0204, %bb.t ], [ %i.dg, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.21.0204, %bb.u ], [ %.sroa.21.0204, %.split ] ; 8 uses
  %i.dh = add nuw i64 %.027205, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !814

.noexc45.lr.ph:                                   ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SY_.exit.i.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_.exit.i.i.i.i, %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 43
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 45
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %.sroa.0125.0209 = phi ptr [ %.sroa.0132.1.a, %.noexc45.lr.ph ], [ %i.hb, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %i.dn = load ptr, ptr %.sroa.0125.0209, align 8, !tbaa !413 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 5 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !243
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 76
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !21
  %i.ds = icmp eq i32 %i.dr, 3
  br i1 %i.ds, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %.noexc45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !815
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_112IsEmptyValueINS1_17UnparseProto3TypeEEEN4absl12lts_202505128StatusOrIbEERKNT_3MsgENS9_5FieldE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.dn)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit, !inline_history !818

.noexc46:                                         ; preds = %bb.z
  %i.dt = load i64, ptr %6, align 8, !tbaa !22    ; 5 uses
  store i64 %i.dt, ptr %0, align 8, !tbaa !22
  %i.du = trunc i64 %i.dt to i1
  br i1 %i.du, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.noexc46
  %i.dv = inttoptr i64 %i.dt to ptr
  %i.dw = atomicrmw add ptr %i.dv, i32 1 monotonic, align 4 ; 0 uses
  %.pr = load i64, ptr %0, align 8, !tbaa !22
  %.pre.pre = load i64, ptr %6, align 8, !tbaa !22
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev(ptr noundef nonnull align 8 dereferenceable(9) %6) #28, !inline_history !818
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !815
  br label %.body

bb.ac:                                            ; preds = %.noexc46, %bb.aa
  %.pre = phi i64 [ %i.dt, %.noexc46 ], [ %.pre.pre, %bb.aa ] ; 3 uses
  %i.dy = phi i64 [ %i.dt, %.noexc46 ], [ %.pr, %bb.aa ]
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %_ZN4absl12lts_202505126StatusD2Ev.exit124, label %.critedge.i

_ZN4absl12lts_202505126StatusD2Ev.exit124:        ; preds = %bb.ac
  %i.ea = icmp eq i64 %.pre, 1
  br i1 %i.ea, label %bb.ae, label %bb.ad, !prof !50

bb.ad:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit124
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %6) #31
          to label %.noexc123 unwind label %bb.ab

.noexc123:                                        ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit124
  %i.eb = load i8, ptr %i.di, align 8, !tbaa !193, !range !25, !noundef !26
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.thread258, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread256

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread256: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !815
  br label %bb.ah

.critedge.i:                                      ; preds = %bb.ac
  %i.ed = trunc i64 %.pre to i1
  br i1 %i.ed, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread, label %bb.af

bb.af:                                            ; preds = %.critedge.i
  %i.ee = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ee)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #29
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread: ; preds = %.critedge.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !815
  br label %bb.bb

.thread258:                                       ; preds = %bb.ae
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !819
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !815
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.ah:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread256, %.noexc45
  %i.eh = load i8, ptr %4, align 1, !tbaa !193, !range !25, !noundef !26
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 0, ptr %4, align 1, !tbaa !193
  br label %.noexc47

bb.aj:                                            ; preds = %bb.ah
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.30, i64 noundef 1)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %bb.ai, %bb.aj
  %i.ej = load i8, ptr %i.dj, align 8, !tbaa !24, !range !25, !noundef !26
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ak, label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

bb.ak:                                            ; preds = %.noexc47
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %.loopexit.split-lp.loopexit

_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.ak, %.noexc47
  %i.el = load i32, ptr %i.dk, align 8, !tbaa !13 ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.i, label %.noexc48

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.en = load i8, ptr %i.dj, align 8, !tbaa !24, !range !25, !noundef !26
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.lr.ph.split.i, label %.noexc48

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i
  %i.ep = phi i32 [ %i.es, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i ], [ %i.el, %.lr.ph.i ]
  %.05.i = phi i32 [ %i.et, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i ], [ 0, %.lr.ph.i ]
  %i.eq = load i8, ptr %i.dj, align 8, !tbaa !24, !range !25, !noundef !26
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.al, label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i

bb.al:                                            ; preds = %.lr.ph.split.i
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %.noexc120 unwind label %.loopexit

.noexc120:                                        ; preds = %bb.al
  %.pre.i = load i32, ptr %i.dk, align 8, !tbaa !13
  br label %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i

_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i: ; preds = %.noexc120, %.lr.ph.split.i
  %i.es = phi i32 [ %i.ep, %.lr.ph.split.i ], [ %.pre.i, %.noexc120 ] ; 2 uses
  %i.et = add nuw nsw i32 %.05.i, 1               ; 2 uses
  %i.eu = icmp slt i32 %i.et, %i.es
  br i1 %i.eu, label %.lr.ph.split.i, label %.noexc48, !llvm.loop !27

.noexc48:                                         ; preds = %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit2.i, %_ZN6google8protobuf13json_internal10JsonWriter10WhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %.lr.ph.i
  %i.ev = load i8, ptr %i.dl, align 1, !tbaa !588, !range !25, !noundef !26
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = load ptr, ptr %i.do, align 8, !tbaa !243 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !237
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = and i64 %i.fa, -4
  %i.fc = inttoptr i64 %i.fb to ptr               ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !33 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !20 ; 3 uses
  br i1 %i.ew, label %.noexc51, label %.noexc54

.noexc51:                                         ; preds = %.noexc48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit

.noexc97:                                         ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN6google8protobuf13json_internal10JsonWriter16WriteEscapedUtf8ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %i.ff, ptr %i.fd)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit

.noexc98:                                         ; preds = %.noexc97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 34, ptr %i.a, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit

.noexc99:                                         ; preds = %.noexc98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.noexc99.invoke

.noexc99.invoke:                                  ; preds = %.noexc80, %.noexc88, %.noexc99
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.48, i64 noundef 1)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %.noexc48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !237
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, -4
  %i.fk = inttoptr i64 %i.fj to ptr               ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !33 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !20
  %i.fo = load i8, ptr %i.dm, align 1, !tbaa !189, !range !25, !noundef !26
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.noexc54
  %i.fq = load i8, ptr %i.fd, align 1, !tbaa !21  ; 2 uses
  %i.fr = add i8 %i.fq, -65
  %i.fs = icmp ult i8 %i.fr, 26
  br i1 %i.fs, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.ft = load i8, ptr %i.fl, align 1, !tbaa !21
  %i.fu = add i8 %i.ft, -65
  %i.fv = icmp ult i8 %i.fu, 26
  br i1 %i.fv, label %bb.aq, label %bb.ao
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.fw = zext nneg i8 %i.fq to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal8kToUpperE, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !21
  %i.fz = icmp eq i64 %i.ff, 0
  br i1 %i.fz, label %bb.ap, label %.noexc55

bb.ap:                                            ; preds = %bb.ao
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i64 noundef 1, i64 noundef 0) #31
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %bb.ap
  unreachable

.noexc55:                                         ; preds = %bb.ao
  %i.ga = add i64 %i.ff, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 34, ptr %i.e, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %.noexc55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.fy, ptr %i.d, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit

.noexc86:                                         ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_ZN6google8protobuf13json_internal10JsonWriter16WriteEscapedUtf8ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %i.ga, ptr nonnull %i.gb)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit

.noexc87:                                         ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.c, i64 noundef 1)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit

.noexc88:                                         ; preds = %.noexc87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.noexc99.invoke

bb.aq:                                            ; preds = %bb.an, %bb.am, %.noexc54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 34, ptr %i.g, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit

.noexc78:                                         ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_ZN6google8protobuf13json_internal10JsonWriter16WriteEscapedUtf8ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %i.fn, ptr %i.fl)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %.noexc78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 34, ptr %i.f, align 1, !tbaa !21
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.f, i64 noundef 1)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit

.noexc80:                                         ; preds = %.noexc79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.noexc99.invoke

.noexc52:                                         ; preds = %.noexc99.invoke
  %i.gc = load i8, ptr %i.dj, align 8, !tbaa !24, !range !25, !noundef !26
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ar, label %.noexc58

bb.ar:                                            ; preds = %.noexc52
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit

.noexc58:                                         ; preds = %.noexc52, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ge = load ptr, ptr %i.do, align 8, !tbaa !243 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !21
  %.not.i75 = icmp eq i32 %i.gg, 11
  br i1 %.not.i75, label %bb.as, label %.noexc59.thread

.noexc59.thread:                                  ; preds = %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.noexc61

bb.as:                                            ; preds = %.noexc58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i8 0, ptr %i.h, align 1, !tbaa !193
  invoke void @_ZN6google8protobuf13json_internal10Proto3Type13WithFieldTypeIZNS2_5IsMapEPKNS1_12ResolverPool5FieldEEUlRKNS4_7MessageEE_EEN4absl12lts_202505126StatusES7_T_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %5, ptr noundef nonnull %i.dn, ptr nonnull %i.h)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit

.noexc76:                                         ; preds = %bb.as
  %i.gh = load i64, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.gi = trunc i64 %i.gh to i1
  br i1 %i.gi, label %.noexc59, label %bb.at

bb.at:                                            ; preds = %.noexc76
  %i.gj = inttoptr i64 %i.gh to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gj)
          to label %.noexc59 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #29
  unreachable

.noexc59:                                         ; preds = %.noexc76, %bb.at
  %i.gm = load i8, ptr %i.h, align 1, !tbaa !193, !range !25, !noundef !26
  %i.gn = trunc nuw i8 %i.gm to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br i1 %i.gn, label %bb.av, label %.noexc59..noexc61_crit_edge

.noexc59..noexc61_crit_edge:                      ; preds = %.noexc59
  %.pre218 = load ptr, ptr %i.do, align 8, !tbaa !243
  br label %.noexc61

bb.av:                                            ; preds = %.noexc59
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_18WriteMapINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgENSA_5FieldE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.dn)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit, !inline_history !818

.noexc61:                                         ; preds = %.noexc59..noexc61_crit_edge, %.noexc59.thread
  %i.go = phi ptr [ %.pre218, %.noexc59..noexc61_crit_edge ], [ %i.ge, %.noexc59.thread ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 76
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !21
  %i.gr = icmp eq i32 %i.gq, 3
  br i1 %i.gr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.noexc61
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteRepeatedINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgENSA_5FieldE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.dn)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit, !inline_history !818

bb.ax:                                            ; preds = %.noexc61
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !21
  %i.gu = invoke noundef i64 @_ZNK6google8protobuf13json_internal14UntypedMessage5CountEi(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.gt)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit

.noexc63:                                         ; preds = %bb.ax
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %.noexc64, label %bb.ba

.noexc64:                                         ; preds = %.noexc63
  %i.gw = load ptr, ptr %i.do, align 8, !tbaa !243
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 72
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !21
  %i.gz = icmp eq i32 %i.gy, 10
  br i1 %i.gz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc64
  invoke void @_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSink6AppendEPKcm(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.38, i64 noundef 4)
          to label %.thread unwind label %.loopexit.split-lp.loopexit

.thread:                                          ; preds = %bb.ay
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !822
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.az:                                            ; preds = %.noexc64
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteSingularINS1_17UnparseProto3TypeEJEEEN4absl12lts_202505126StatusERNS1_10JsonWriterENT_5FieldEDpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dn)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit, !inline_history !818

bb.ba:                                            ; preds = %.noexc63
  invoke fastcc void @_ZN6google8protobuf13json_internal12_GLOBAL__N_113WriteSingularINS1_17UnparseProto3TypeEJRKNS1_14UntypedMessageEEEEN4absl12lts_202505126StatusERNS1_10JsonWriterENT_5FieldEDpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %i.dn, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit, !inline_history !818

.loopexit:                                        ; preds = %bb.al
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc99.invoke, %bb.aj, %bb.ak, %.noexc98, %.noexc97, %.noexc51, %.noexc87, %.noexc86, %.noexc85, %.noexc55, %.noexc79, %.noexc78, %bb.aq, %bb.ar, %bb.as, %bb.ax, %bb.ay, %bb.ba, %bb.az, %bb.aw, %bb.av, %bb.z
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ap
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIbED2Ev.exit.thread, %bb.ba, %bb.az, %bb.aw, %bb.av
  %.pr166.pr = load i64, ptr %0, align 8, !tbaa !22
  %i.ha = icmp eq i64 %.pr166.pr, 1
  br i1 %i.ha, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %.critedge

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %.thread258, %bb.bb, %.thread
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0125.0209, i64 8 ; 2 uses
  %.not180 = icmp eq ptr %i.hb, %.sroa.13.1
  br i1 %.not180, label %.critedge37, label %.noexc45

.critedge37:                                      ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.b, %._crit_edge
  %.sroa.0132.0.lcssa236247 = phi ptr [ null, %bb.b ], [ %.sroa.0132.1.a, %._crit_edge ], [ %.sroa.0132.1.a, %_ZN4absl12lts_202505126StatusD2Ev.exit ]
  %.sroa.21.0.lcssa238245 = phi ptr [ null, %bb.b ], [ %.sroa.21.1, %._crit_edge ], [ %.sroa.21.1, %_ZN4absl12lts_202505126StatusD2Ev.exit ]
  store i64 1, ptr %0, align 8, !tbaa !22, !alias.scope !825
  br label %.critedge

.critedge:                                        ; preds = %bb.bb, %.critedge37
  %.sroa.0132.0.lcssa236246 = phi ptr [ %.sroa.0132.0.lcssa236247, %.critedge37 ], [ %.sroa.0132.1.a, %bb.bb ] ; 3 uses
  %.sroa.21.0.lcssa238244 = phi ptr [ %.sroa.21.0.lcssa238245, %.critedge37 ], [ %.sroa.21.1, %bb.bb ]
  %.not.i.i.i69 = icmp eq ptr %.sroa.0132.0.lcssa236246, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %.critedge
  %i.hc = ptrtoint ptr %.sroa.21.0.lcssa238244 to i64
  %i.hd = ptrtoint ptr %.sroa.0132.0.lcssa236246 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0.lcssa236246, i64 noundef %i.he) #30
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit: ; preds = %.critedge, %bb.bc
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit185, %.loopexit.split-lp186, %bb.ab, %bb.s
  %.sroa.0132.0200 = phi ptr [ %.sroa.0132.0202, %.loopexit.split-lp186 ], [ %.sroa.0132.1.a, %bb.ab ], [ %.sroa.0132.0202, %bb.s ], [ %.sroa.0132.0202, %.loopexit185 ], [ %.sroa.0132.1.a, %.loopexit.split-lp.loopexit ], [ %.sroa.0132.1.a, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0132.1.a, %.loopexit ] ; 3 uses
  %.sroa.21.0192 = phi ptr [ %.sroa.21.0204, %.loopexit.split-lp186 ], [ %.sroa.21.1, %bb.ab ], [ %.sroa.21.0204, %bb.s ], [ %.sroa.21.0204, %.loopexit185 ], [ %.sroa.21.1, %.loopexit.split-lp.loopexit ], [ %.sroa.21.1, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.21.1, %.loopexit ]
  %.pn34.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp186 ], [ %i.dx, %bb.ab ], [ %i.cq, %bb.s ], [ %lpad.loopexit187, %.loopexit185 ], [ %lpad.loopexit181, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp182, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i70 = icmp eq ptr %.sroa.0132.0200, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71, label %.body.thread172

.body.thread172:                                  ; preds = %.body
  %i.hf = ptrtoint ptr %.sroa.21.0192 to i64
  %i.hg = ptrtoint ptr %.sroa.0132.0200 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0200, i64 noundef %i.hh) #30
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71: ; preds = %.body, %.body.thread172
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6google8protobuf13json_internal14UntypedMessage3GetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4absl12lts_202505124SpanIKT_EEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !405  ; 4 uses
  %i.d = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ult i64 %i.c, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !409
  %.not.i.i.i.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %i.j = icmp eq i32 %i.i, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.h, 1
  %spec.select.i.i.i = select i1 %i.j, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !409, !noalias !828
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.p, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = trunc i64 %i.p to i8
  %i.w = and i8 %i.v, 127
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.y = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i6.i.i = phi i64 [ %i.u, %bb.d ], [ %i.as, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.c    ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.6.0.i.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !21 ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.046.i.i.i = phi i16 [ %i.ao, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.c                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %.thread32.i.i.i, label %bb.f, !prof !50

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ai
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i16 %.sroa.017.046.i.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not43.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not43.i.i.i, label %bb.g, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i, !prof !414

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !831

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread32.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.am, %.thread32.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.aj, %.thread32.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE10find_largeIiEENS1E_8iteratorERS1B_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 0
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit
  %i.av = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !424 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !463
  switch i8 %i.az, label %.thread [
    i8 7, label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
    i8 16, label %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  ]

_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !450 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !452
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 5
  br label %_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit

.thread:                                          ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.65, i32 noundef 204, ptr noundef nonnull @.str.35) #32
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 35, ptr nonnull @.str.66)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  %i.bh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 1, ptr nonnull @.str.67)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.k

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.k

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

bb.k:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.j, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %.thread
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #29
  unreachable

_ZSt6get_ifINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS5_S9_St6vectorISA_SaISA_EESB_IiSaIiEESB_IjSaIjEESB_IlSaIlEESB_ImSaImEESB_IfSaIfEESB_IdSaIdEESB_IS5_SaIS5_EESB_IS9_SaIS9_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit: ; preds = %bb.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit, %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit
  %.sroa.417.0 = phi i64 [ 0, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.bg, %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ 1, %bb.i ]
  %.sroa.016.0 = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE4findIiEENS1E_14const_iteratorERS1B_.exit ], [ %i.ba, %_ZSt6get_ifISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdS6_SC_S0_ISD_SaISD_EES0_IiSaIiEES0_IjSaIjEES0_IlSaIlEES0_ImSaImEES0_IfSaIfEES0_IdSaIdEES8_S0_ISC_SaISC_EEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit ], [ %i.ax, %bb.i ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.417.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #23

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf13json_internal14UntypedMessage5CountEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::protobuf::json_internal::SizeVisitor", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !405  ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i64 %i.b, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
end_hunk_3
