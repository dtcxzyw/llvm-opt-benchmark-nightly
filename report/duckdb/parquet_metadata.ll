inline.NumInlined: 3957
inline.NumDeleted: 1703
begin_hunk_0_@_ZN6duckdb32ParquetRowGroupMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a

bb.r:                                             ; preds = %bb.q
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %56) #27
  %i.bx = load ptr, ptr %57, align 8, !tbaa !24   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.bx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  %i.ca = load ptr, ptr %58, align 8, !tbaa !24   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bt
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  call void @_ZdlPv(ptr noundef %i.ca) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 9)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call fastcc void @_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet4Type4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable align 8 %60, ptr noundef nonnull align 4 dereferenceable(4) %i.ce)
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %59, ptr noundef nonnull %60)
          to label %bb.s unwind label %bb.bf

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cd, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %59)
          to label %bb.t unwind label %bb.bg

bb.t:                                             ; preds = %bb.s
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %59) #27
  %i.cf = load ptr, ptr %60, align 8, !tbaa !24   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  %i.ci = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 10)
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 346 ; 8 uses
  %i.cl = load i8, ptr %i.ck, align 2
  %i.cm = and i8 %i.cl, 2
  %i.cn = icmp ne i8 %i.cm, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  call fastcc void @_ZN6duckdbL19ConvertParquetStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %61, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(157) %i.r, i1 noundef zeroext %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.co)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cj, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %61)
          to label %bb.u unwind label %bb.bi

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %61) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 11)
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  %i.cr = load i8, ptr %i.ck, align 2
  %i.cs = trunc i8 %i.cr to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  call fastcc void @_ZN6duckdbL19ConvertParquetStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %62, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(157) %i.r, i1 noundef zeroext %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cq, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %62)
          to label %bb.v unwind label %bb.bj

bb.v:                                             ; preds = %bb.u
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %62) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 12)
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.cx = load i8, ptr %i.ck, align 2
  %i.cy = and i8 %i.cx, 4
  %.not398.a = icmp eq i8 %i.cy, 0
  %.val222 = load i64, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  br i1 %.not398.a, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 noundef zeroext 1), !noalias !187
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %63, ptr noundef nonnull %45)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %45) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit236

bb.y:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %45) #27
  br label %common.resume

bb.z:                                             ; preds = %bb.v
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %63, i64 noundef %.val222)
  br label %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit236

_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit236: ; preds = %bb.x, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cv, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %63)
          to label %bb.aa unwind label %bb.bk

bb.aa:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit236
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %63) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 13)
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.dd = load i8, ptr %i.ck, align 2
  %i.de = and i8 %i.dd, 8
  %.not399.a = icmp eq i8 %i.de, 0
  %.val221 = load i64, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  br i1 %.not399.a, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 noundef zeroext 1), !noalias !190
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %64, ptr noundef nonnull %44)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit237

bb.ad:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %44) #27
  br label %common.resume

bb.ae:                                            ; preds = %bb.aa
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %64, i64 noundef %.val221)
  br label %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit237

_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit237: ; preds = %bb.ac, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.db, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %64)
          to label %bb.af unwind label %bb.bl

bb.af:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit237
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 14)
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #27
  %i.di = load i8, ptr %i.ck, align 2
  %i.dj = and i8 %i.di, 32
  %i.dk = icmp ne i8 %i.dj, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  call fastcc void @_ZN6duckdbL19ConvertParquetStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %65, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(157) %i.r, i1 noundef zeroext %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %i.dl)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.dh, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %65)
          to label %bb.ag unwind label %bb.bm

bb.ag:                                            ; preds = %bb.af
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %65) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 15)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #27
  %i.do = load i8, ptr %i.ck, align 2
  %i.dp = and i8 %i.do, 16
  %i.dq = icmp ne i8 %i.dp, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  call fastcc void @_ZN6duckdbL19ConvertParquetStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %66, ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(157) %i.r, i1 noundef zeroext %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %i.dr)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %66)
          to label %bb.ah unwind label %bb.bn

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %66) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 16)
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #27
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27, !noalias !193
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %43, i32 noundef 24), !noalias !193
  %i.dv = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_16CompressionCodec4typeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.du)
          to label %bb.ai unwind label %bb.am, !noalias !193 ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.dx = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 5 uses
  store ptr %i.dx, ptr %68, align 8, !tbaa !12, !alias.scope !202
  %i.dy = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 0, ptr %i.dy, align 8, !tbaa !15, !alias.scope !202
  store i8 0, ptr %i.dx, align 8, !tbaa !18, !alias.scope !202
  %95 = getelementptr inbounds nuw i8, ptr %43, i64 64
  %96 = load ptr, ptr %95, align 8, !tbaa !203, !noalias !202 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %96, null
  %i.dz = getelementptr inbounds nuw i8, ptr %43, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !202 ; 2 uses
  %97 = icmp ugt ptr %96, %i.ea
  %.08.i.i.i.i = select i1 %97, ptr %96, ptr %i.ea ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !207, !noalias !202 ; 2 uses
  %i.ed = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %68, i64 noundef 0, i64 noundef 0, ptr noundef %i.ec, i64 noundef %i.ef)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %68, align 8, !tbaa !24, !alias.scope !202 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.dx
  br i1 %i.ej, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.ei) #28
  br label %.body.i

bb.al:                                            ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %43, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(32) %i.ek)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.ak

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.al, %bb.aj
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %43, align 8, !tbaa !208, !noalias !193
  %i.el = getelementptr inbounds nuw i8, ptr %43, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.el, align 8, !tbaa !208, !noalias !193
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.dv, align 8, !tbaa !208, !noalias !193
  %i.em = getelementptr inbounds nuw i8, ptr %43, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.em, align 8, !tbaa !208, !noalias !193
  %i.en = getelementptr inbounds nuw i8, ptr %43, i64 96
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !24, !noalias !193 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %43, i64 112
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet16CompressionCodec4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  call void @_ZdlPv(ptr noundef %i.eo) #28, !inline_history !210
  br label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet16CompressionCodec4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit

bb.am:                                            ; preds = %bb.ah
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ak, %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.er, %bb.am ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.eh, %bb.ak ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %43) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !193
  br label %common.resume

_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet16CompressionCodec4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.em, align 8, !tbaa !208, !noalias !193
  %i.es = getelementptr inbounds nuw i8, ptr %43, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.es) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %43, align 8, !tbaa !208, !noalias !193
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.el, align 8, !tbaa !208, !noalias !193
  %i.et = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 0, ptr %i.et, align 8, !tbaa !211, !noalias !193
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.el) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !193
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %67, ptr noundef nonnull %68)
          to label %bb.an unwind label %bb.bo

bb.an:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet16CompressionCodec4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.dt, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %67)
          to label %bb.ao unwind label %bb.bp

bb.ao:                                            ; preds = %bb.an
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %67) #27
  %i.eu = load ptr, ptr %68, align 8, !tbaa !24   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dx
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef %i.eu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !213 ; 4 uses
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !214 ; 4 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 2 uses
  %i.fd = ashr exact i64 %i.fc, 2                 ; 2 uses
  %i.fe = icmp ugt i64 %i.fd, 288230376151711743
  br i1 %i.fe, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #30
          to label %.noexc242 unwind label %bb.br

.noexc242:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.ff = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %.not543 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not543, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.aq
  %i.fg = shl nuw nsw i64 %i.fc, 3
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #29
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.br ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %69, i64 8
  store ptr %i.fh, ptr %69, align 8, !tbaa !215
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !7
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %i.fd
  store ptr %i.fj, ptr %i.ff, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.aq
  %.not400411 = icmp eq ptr %i.ez, %i.ey
  br i1 %.not400411, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 9 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %42, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %42, i64 48
  %i.fp = getelementptr inbounds nuw i8, ptr %42, i64 56
  %i.fq = getelementptr inbounds nuw i8, ptr %42, i64 96 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %42, i64 128 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %42, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %42, i64 112
  %i.fu = getelementptr inbounds nuw i8, ptr %42, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 2 uses
  br label %bb.bs

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 17)
          to label %._crit_edge.i.i278 unwind label %bb.br

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.d
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %47) #27
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.fz, %bb.as ], [ %i.fy, %bb.ar ]
  %i.ga = load ptr, ptr %48, align 8, !tbaa !24   ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.w
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ga) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br label %common.resume

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  br label %common.resume

bb.av:                                            ; preds = %bb.f
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  br label %common.resume

bb.aw:                                            ; preds = %bb.g
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  br label %common.resume

bb.ax:                                            ; preds = %bb.h
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  br label %common.resume

bb.ay:                                            ; preds = %bb.i
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %common.resume

bb.az:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %54) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  br label %common.resume

bb.ba:                                            ; preds = %bb.o
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  br label %common.resume

bb.bb:                                            ; preds = %._crit_edge.i.i225
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

bb.bc:                                            ; preds = %bb.p
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.q
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %56) #27
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn168 = phi { ptr, i32 } [ %i.gl, %bb.bd ], [ %i.gk, %bb.bc ] ; 2 uses
  %i.gm = load ptr, ptr %57, align 8, !tbaa !24   ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.gm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247, %bb.bb
  %.pn168.pn = phi { ptr, i32 } [ %i.gj, %bb.bb ], [ %.pn168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247 ], [ %.pn168, %bb.be ]
  %i.gp = load ptr, ptr %58, align 8, !tbaa !24   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.bt
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249
  call void @_ZdlPv(ptr noundef %i.gp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit252: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  br label %common.resume

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.s
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %59) #27
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn172 = phi { ptr, i32 } [ %i.gs, %bb.bg ], [ %i.gr, %bb.bf ]
  %i.gt = load ptr, ptr %60, align 8, !tbaa !24   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.gt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  br label %common.resume

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %61) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  br label %common.resume

bb.bj:                                            ; preds = %bb.u
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %62) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  br label %common.resume

bb.bk:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit236
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %63) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  br label %common.resume

bb.bl:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKlEENS_5ValueEOT_b.exit237
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  br label %common.resume

bb.bm:                                            ; preds = %bb.af
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %65) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  br label %common.resume

bb.bn:                                            ; preds = %bb.ag
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %66) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  br label %common.resume

bb.bo:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet16CompressionCodec4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.an
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %67) #27
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn174 = phi { ptr, i32 } [ %i.hd, %bb.bp ], [ %i.hc, %bb.bo ]
  %i.he = load ptr, ptr %68, align 8, !tbaa !24   ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.dx
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.bq
  call void @_ZdlPv(ptr noundef %i.he) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27
  br label %common.resume

bb.br:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.ap, %bb.cz, %bb.cw, %bb.ct, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %._crit_edge
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.bs:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.sroa.0394.0412 = phi ptr [ %i.ez, %.lr.ph ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27, !noalias !216
  invoke void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %42, i32 noundef 24)
          to label %.noexc270 unwind label %bb.cb

.noexc270:                                        ; preds = %bb.bs
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_8Encoding4typeE(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0394.0412)
          to label %bb.bt unwind label %bb.bx, !noalias !216 ; 0 uses

bb.bt:                                            ; preds = %.noexc270
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  store ptr %i.fl, ptr %70, align 8, !tbaa !12, !alias.scope !225
  store i64 0, ptr %i.fm, align 8, !tbaa !15, !alias.scope !225
  store i8 0, ptr %i.fl, align 8, !tbaa !18, !alias.scope !225
  %i.hi = load ptr, ptr %i.fn, align 8, !tbaa !203, !noalias !225 ; 3 uses
  %.not.i.not.i.i.i261 = icmp eq ptr %i.hi, null
  %98 = load ptr, ptr %i.fo, align 8, !noalias !225 ; 2 uses
  %99 = icmp ugt ptr %i.hi, %98
  %.08.i.i.i.i262 = select i1 %99, ptr %i.hi, ptr %98 ; 2 uses
  %.not5.i.i.i263 = icmp eq ptr %.08.i.i.i.i262, null
  %.not.i.i.i264 = select i1 %.not.i.not.i.i.i261, i1 true, i1 %.not5.i.i.i263
  br i1 %.not.i.i.i264, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hj = load ptr, ptr %i.fp, align 8, !tbaa !207, !noalias !225 ; 2 uses
  %i.hk = ptrtoint ptr %.08.i.i.i.i262 to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %70, i64 noundef 0, i64 noundef 0, ptr noundef %i.hj, i64 noundef %i.hm)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i267 unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bw, %bb.bu
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hp = load ptr, ptr %70, align 8, !tbaa !24, !alias.scope !225 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.fl
  br i1 %i.hq, label %.body.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i265: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.hp) #28
  br label %.body.i259

bb.bw:                                            ; preds = %bb.bt
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull align 8 dereferenceable(32) %i.fq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i267 unwind label %bb.bv

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i267: ; preds = %bb.bw, %bb.bu
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %42, align 8, !tbaa !208, !noalias !216
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.fr, align 8, !tbaa !208, !noalias !216
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16)>, ptr %i.fk, align 8, !tbaa !208, !noalias !216
  %i.hr = load ptr, ptr %i.fq, align 8, !tbaa !24, !noalias !216 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.ft
  br i1 %i.hs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i268: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i267
  call void @_ZdlPv(ptr noundef %i.hr) #28, !inline_history !210
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i269

bb.bx:                                            ; preds = %.noexc270
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body.i259

.body.i259:                                       ; preds = %bb.bv, %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i265
  %eh.lpad-body.i260 = phi { ptr, i32 } [ %i.ht, %bb.bx ], [ %i.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i265 ], [ %i.ho, %bb.bv ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %42) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !216
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i269: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i268
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fs, align 8, !tbaa !208, !noalias !216
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fu) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %42, align 8, !tbaa !208, !noalias !216
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.fr, align 8, !tbaa !208, !noalias !216
  store i64 0, ptr %i.fv, align 8, !tbaa !211, !noalias !216
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fr) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !216
  %i.hu = load ptr, ptr %i.fw, align 8, !tbaa !7  ; 7 uses
  %i.hv = load ptr, ptr %i.ff, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.hu, %i.hv
  br i1 %.not.i.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i269
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 3 uses
  store ptr %i.hw, ptr %i.hu, align 8, !tbaa !12
  %i.hx = load ptr, ptr %70, align 8, !tbaa !24   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.fl
  br i1 %i.hy, label %bb.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.hz = load i64, ptr %i.fm, align 8, !tbaa !15 ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 16
  call void @llvm.assume(i1 %i.ia)
  %i.ib = add nuw nsw i64 %i.hz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hw, ptr noundef nonnull align 8 dereferenceable(1) %i.fl, i64 %i.ib, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.by
  store ptr %i.hx, ptr %i.hu, align 8, !tbaa !24
  %i.ic = load i64, ptr %i.fl, align 8, !tbaa !18
  store i64 %i.ic, ptr %i.hw, align 8, !tbaa !18
  %.pre = load i64, ptr %i.fm, align 8, !tbaa !15
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.id = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.hz, %bb.bz ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !15
  store ptr %i.fl, ptr %70, align 8, !tbaa !24
  store i64 0, ptr %i.fm, align 8, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  store ptr %i.if, ptr %i.fw, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i269
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr %i.hu, ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.cc

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ca
  %.pre418 = load ptr, ptr %70, align 8, !tbaa !24 ; 2 uses
  %i.ig = icmp eq ptr %.pre418, %i.fl
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %.pre418) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #27
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0394.0412, i64 4 ; 2 uses
  %.not400.a = icmp eq ptr %i.ih, %i.ey
  br i1 %.not400.a, label %._crit_edge, label %bb.bs

bb.cb:                                            ; preds = %bb.bs
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cc:                                            ; preds = %bb.ca
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %70, align 8, !tbaa !24   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.fl
  br i1 %i.il, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.cc
  call void @_ZdlPv(ptr noundef %i.ik) #28
  br label %.body

.body:                                            ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275, %bb.cb, %.body.i259
  %.pn214 = phi { ptr, i32 } [ %eh.lpad-body.i260, %.body.i259 ], [ %i.ii, %bb.cb ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275 ], [ %i.ij, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #27
  br label %bb.lg

._crit_edge.i.i278:                               ; preds = %._crit_edge
  %i.im = load ptr, ptr %i.fx, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  %i.in = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 4 uses
  store ptr %i.in, ptr %73, align 8, !tbaa !12
  store i16 8236, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 2, ptr %i.io, align 8, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %73, i64 18
  store i8 0, ptr %i.ip, align 2, !tbaa !18
  invoke void @_ZN6duckdb10StringUtil4JoinERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.cd unwind label %bb.dd

bb.cd:                                            ; preds = %._crit_edge.i.i278
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %71, ptr noundef nonnull %72)
          to label %bb.ce unwind label %bb.de

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.im, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %71)
          to label %bb.cf unwind label %bb.df

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %71) #27
  %i.iq = load ptr, ptr %72, align 8, !tbaa !24   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.iq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  %i.it = load ptr, ptr %73, align 8, !tbaa !24   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.in
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  call void @_ZdlPv(ptr noundef %i.it) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 18)
          to label %bb.cg unwind label %bb.br

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #27
  %i.ix = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 584 ; 4 uses
  %i.iz = load i16, ptr %i.iy, align 8
  %i.ja = and i16 %i.iz, 2
  %.not401.a = icmp eq i16 %i.ja, 0
  %.val220 = load i64, ptr %i.ix, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  br i1 %.not401.a, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %41, i8 noundef zeroext 1)
          to label %.noexc288 unwind label %bb.dh

.noexc288:                                        ; preds = %bb.ch
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %74, ptr noundef nonnull %41)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %.noexc288
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %41) #27
end_hunk_0
begin_hunk_1_@_ZNK6duckdb6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS2_EEixEm:bb.a
  %i.p = getelementptr inbounds nuw [760 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(157) ptr @_ZN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.12", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 160                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !23
  store i64 %i.i, ptr %i.b, align 8, !tbaa !23
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.12", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271
  %i.e = load ptr, ptr %0, align 8, !tbaa !274    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !23
  store i64 %i.i, ptr %i.b, align 8, !tbaa !23
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !109

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

declare void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64 noundef) local_unnamed_addr #2

declare void @_ZN6duckdb10StringUtil4JoinERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet4Type4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !12, !alias.scope !281
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !15, !alias.scope !281
  store i8 0, ptr %i.c, align 8, !tbaa !18, !alias.scope !281
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !281 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !281 ; 2 uses
  %5 = icmp ugt ptr %4, %i.f
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.f     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !207, !noalias !281 ; 2 uses
  %i.i = ptrtoint ptr %.08.i.i.i to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.h, i64 noundef %i.k)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !281 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.n) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.q, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.r, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.t) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.r, align 8, !tbaa !208
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.q, align 8, !tbaa !208
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.q) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.m, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL19ConvertParquetStatsERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  br i1 %3, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 25)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #27
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @_ZN6duckdb22ParquetStatisticsUtils12ConvertValueERKNS_11LogicalTypeERKNS_19ParquetColumnSchemaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(157) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 25)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK6duckdb5Value13DefaultCastAsERKNS_11LogicalTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.c, %bb.i ], [ %i.b, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.c
  ret void

bb.l:                                             ; preds = %bb.j, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.a, %bb.d ]
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6duckdb5Value3MAPERKNS_11LogicalTypeES3_NS_6vectorIS0_Lb1ESaIS0_EEES6_(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !241    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i) #27
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !242

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !241
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #28
  br label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !270

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN6duckdb22ParquetSchemaProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE:bb.a
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !23
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i78, label %._crit_edge.i.i77

.noexc.i78:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %43, align 8, !tbaa !24
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !18
  br label %._crit_edge.i.i77

._crit_edge.i.i77:                                ; preds = %.noexc.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = phi ptr [ %i.af, %.noexc.i78 ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79
  ]

bb.f:                                             ; preds = %._crit_edge.i.i77
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !18
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79

bb.g:                                             ; preds = %._crit_edge.i.i77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79: ; preds = %._crit_edge.i.i77, %bb.f, %bb.g
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = load ptr, ptr %43, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull %43)
          to label %bb.h unwind label %bb.fk

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit79
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.y, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %42)
          to label %bb.i unwind label %bb.fl

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %42) #27
  %i.an = load ptr, ptr %43, align 8, !tbaa !24   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.aa
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.an) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2)
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 432 ; 10 uses
  %i.as = load i16, ptr %i.ar, align 8
  %i.at = trunc i16 %i.as to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  br i1 %i.at, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 noundef zeroext 1), !noalias !282
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %44, ptr noundef nonnull %38)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #27
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit

bb.l:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #27
  br label %common.resume

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call fastcc void @_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet4Type4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 4 dereferenceable(4) %i.av), !noalias !282
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %44, ptr noundef nonnull %39)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %39, align 8, !tbaa !24, !noalias !282 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.aw) #28
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit

bb.o:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %39, align 8, !tbaa !24, !noalias !282 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ba) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.fa, %bb.ev, %bb.er, %bb.en, %bb.ej, %bb.ef, %bb.eb, %bb.dx, %bb.dt, %bb.dp, %bb.dl, %bb.dh, %bb.dd, %bb.cz, %bb.cq, %bb.ch, %bb.by, %bb.aw, %bb.af, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr, %bb.fs, %bb.ft, %bb.fu, %bb.fv, %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122, %bb.bp, %.body.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i, %.body.i51.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i, %.body.i68.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i, %.body.i85.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i, %bb.ey, %bb.ao, %.body.i.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99, %bb.x, %.body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i, %bb.bk, %bb.bf, %bb.ba, %bb.aj, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.ou, %bb.ev ], [ %i.bi, %bb.s ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i ], [ %i.cy, %bb.aj ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83 ], [ %i.ep, %bb.ba ], [ %i.ew, %bb.bf ], [ %i.fd, %bb.bk ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99 ], [ %i.ou, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171.i ], [ %i.au, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.bn, %bb.x ], [ %i.az, %bb.o ], [ %eh.lpad-body.i.i90, %.body.i.i89 ], [ %i.de, %bb.ao ], [ %i.cq, %bb.af ], [ %eh.lpad-body.i.i110, %.body.i.i109 ], [ %eh.lpad-body.i52.i, %.body.i51.i ], [ %eh.lpad-body.i69.i, %.body.i68.i ], [ %eh.lpad-body.i86.i, %.body.i85.i ], [ %i.fj, %bb.bp ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i ], [ %i.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i ], [ %i.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i.a ], [ %i.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i.a ], [ %i.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i.a ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.a ], [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123.i.a ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.a ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.a ], [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.a ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147.i.a ], [ %i.nr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153.i.a ], [ %i.oa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159.i.a ], [ %i.oj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i.a ], [ %i.oy, %bb.ey ], [ %i.eh, %bb.aw ], [ %i.gr, %bb.by ], [ %i.hz, %bb.ch ], [ %i.jh, %bb.cq ], [ %i.kp, %bb.cz ], [ %i.kx, %bb.dd ], [ %i.lg, %bb.dh ], [ %i.lp, %bb.dl ], [ %i.ly, %bb.dp ], [ %i.mh, %bb.dt ], [ %i.mq, %bb.dx ], [ %i.mz, %bb.eb ], [ %i.ni, %bb.ef ], [ %i.nr, %bb.ej ], [ %i.oa, %bb.en ], [ %i.oj, %bb.er ], [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122 ], [ %.pn68.pn.pn, %bb.go ], [ %i.qk, %bb.fv ], [ %i.qj, %bb.fu ], [ %i.qi, %bb.ft ], [ %i.qh, %bb.fs ], [ %i.qg, %bb.fr ], [ %i.qf, %bb.fq ], [ %i.qe, %bb.fp ], [ %i.qd, %bb.fo ], [ %i.qc, %bb.fn ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %i.pd, %bb.fa ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit: ; preds = %bb.n, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.aq, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %44)
          to label %bb.p unwind label %bb.fn

bb.p:                                             ; preds = %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet4Type4typeEEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %44) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.bg = load i16, ptr %i.ar, align 8
  %i.bh = and i16 %i.bg, 2
  %.not = icmp eq i16 %i.bh, 0
  %.val76 = load i32, ptr %i.bf, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  br i1 %.not, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 noundef zeroext 1), !noalias !285
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull %37)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #27
  br label %_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #27
  br label %common.resume

bb.t:                                             ; preds = %bb.p
  call void @_ZN6duckdb5Value7INTEGEREi(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %45, i32 noundef %.val76)
  br label %_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit

_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit: ; preds = %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.be, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %45)
          to label %bb.u unwind label %bb.fo

bb.u:                                             ; preds = %_ZN6duckdbL21ParquetElementIntegerIRKiEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  %i.bj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  %i.bl = load i16, ptr %i.ar, align 8
  %i.bm = and i16 %i.bl, 4
  %.not140.a = icmp eq i16 %i.bm, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  br i1 %.not140.a, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 noundef zeroext 1), !noalias !288
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull %35)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #27
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENS_5ValueEOT_b.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #27
  br label %common.resume

bb.y:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27, !noalias !294
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %34, i32 noundef 24), !noalias !294
  %i.bp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_19FieldRepetitionType4typeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %bb.z unwind label %bb.ad, !noalias !294 ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.br = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.br, ptr %36, align 8, !tbaa !12, !alias.scope !301, !noalias !288
  %i.bs = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !15, !alias.scope !301, !noalias !288
  store i8 0, ptr %i.br, align 8, !tbaa !18, !alias.scope !301, !noalias !288
  %60 = getelementptr inbounds nuw i8, ptr %34, i64 64
  %61 = load ptr, ptr %60, align 8, !tbaa !203, !noalias !302 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %61, null
  %i.bt = getelementptr inbounds nuw i8, ptr %34, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !302 ; 2 uses
  %62 = icmp ugt ptr %61, %i.bu
  %.08.i.i.i.i.i = select i1 %62, ptr %61, ptr %i.bu ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %34, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !207, !noalias !302 ; 2 uses
  %i.bx = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 0, i64 noundef 0, ptr noundef %i.bw, i64 noundef %i.bz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.ab, !noalias !288 ; 0 uses

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %36, align 8, !tbaa !24, !alias.scope !301, !noalias !288 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.br
  br i1 %i.cd, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.cc) #28, !noalias !288
  br label %.body.i.i

bb.ac:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %34, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.ab, !noalias !288

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.ac, %bb.aa
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %34, align 8, !tbaa !208, !noalias !294
  %i.cf = getelementptr inbounds nuw i8, ptr %34, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.cf, align 8, !tbaa !208, !noalias !294
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.bp, align 8, !tbaa !208, !noalias !294
  %i.cg = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cg, align 8, !tbaa !208, !noalias !294
  %i.ch = getelementptr inbounds nuw i8, ptr %34, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !24, !noalias !294 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %34, i64 112
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ci) #28, !noalias !288, !inline_history !210
  br label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.ad:                                            ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ab, %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cl, %bb.ad ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.cb, %bb.ab ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %34) #27, !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27, !noalias !294
  br label %common.resume

_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cg, align 8, !tbaa !208, !noalias !294
  %i.cm = getelementptr inbounds nuw i8, ptr %34, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cm) #27, !noalias !288, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %34, align 8, !tbaa !208, !noalias !294
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.cf, align 8, !tbaa !208, !noalias !294
  %i.cn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !211, !noalias !294
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cf) #27, !noalias !288, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27, !noalias !294
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %46, ptr noundef nonnull %36)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.co = load ptr, ptr %36, align 8, !tbaa !24, !noalias !288 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.br
  br i1 %i.cp, label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENS_5ValueEOT_b.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.co) #28
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENS_5ValueEOT_b.exit

bb.af:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %36, align 8, !tbaa !24, !noalias !288 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.br
  br i1 %i.cs, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i83: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.cr) #28
  br label %common.resume

_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENS_5ValueEOT_b.exit: ; preds = %bb.ae, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %46)
          to label %bb.ag unwind label %bb.fp

bb.ag:                                            ; preds = %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19FieldRepetitionType4typeEEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %46) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  %i.ct = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 5)
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.cw = load i16, ptr %i.ar, align 8
  %i.cx = and i16 %i.cw, 8
  %.not141.a = icmp eq i16 %i.cx, 0
  %.val75 = load i32, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  br i1 %.not141.a, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 noundef zeroext 1), !noalias !303
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %47, ptr noundef nonnull %33)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #27
  br label %common.resume

bb.ak:                                            ; preds = %bb.ag
  %i.cz = sext i32 %.val75 to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %47, i64 noundef %i.cz)
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit

_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit: ; preds = %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cu, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %47)
          to label %bb.al unwind label %bb.fq

bb.al:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %47) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 6)
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27
  %i.dc = load i16, ptr %i.ar, align 8
  %i.dd = and i16 %i.dc, 16
  %.not142 = icmp eq i16 %i.dd, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  br i1 %.not142, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 noundef zeroext 1), !noalias !306
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %48, ptr noundef nonnull %31)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #27
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit

bb.ao:                                            ; preds = %bb.am
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #27
  br label %common.resume

bb.ap:                                            ; preds = %bb.al
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27, !noalias !312
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %30, i32 noundef 24), !noalias !312
  %i.dg = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_13ConvertedType4typeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 4 dereferenceable(4) %i.df)
          to label %bb.aq unwind label %bb.au, !noalias !312 ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.di = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 5 uses
  store ptr %i.di, ptr %32, align 8, !tbaa !12, !alias.scope !319, !noalias !306
  %i.dj = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !15, !alias.scope !319, !noalias !306
  store i8 0, ptr %i.di, align 8, !tbaa !18, !alias.scope !319, !noalias !306
  %63 = getelementptr inbounds nuw i8, ptr %30, i64 64
  %64 = load ptr, ptr %63, align 8, !tbaa !203, !noalias !320 ; 3 uses
  %.not.i.not.i.i.i.i91 = icmp eq ptr %64, null
  %i.dk = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !320 ; 2 uses
  %65 = icmp ugt ptr %64, %i.dl
  %.08.i.i.i.i.i92 = select i1 %65, ptr %64, ptr %i.dl ; 2 uses
  %.not5.i.i.i.i93 = icmp eq ptr %.08.i.i.i.i.i92, null
  %.not.i.i.i.i94 = select i1 %.not.i.not.i.i.i.i91, i1 true, i1 %.not5.i.i.i.i93
  br i1 %.not.i.i.i.i94, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %30, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !207, !noalias !320 ; 2 uses
  %i.do = ptrtoint ptr %.08.i.i.i.i.i92 to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef 0, i64 noundef 0, ptr noundef %i.dn, i64 noundef %i.dq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97 unwind label %bb.as, !noalias !306 ; 0 uses

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %32, align 8, !tbaa !24, !alias.scope !319, !noalias !306 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.di
  br i1 %i.du, label %.body.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i95: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.dt) #28, !noalias !306
  br label %.body.i.i89

bb.at:                                            ; preds = %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %30, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %i.dv)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97 unwind label %bb.as, !noalias !306

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97: ; preds = %bb.at, %bb.ar
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %30, align 8, !tbaa !208, !noalias !312
  %i.dw = getelementptr inbounds nuw i8, ptr %30, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.dw, align 8, !tbaa !208, !noalias !312
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.dg, align 8, !tbaa !208, !noalias !312
  %i.dx = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dx, align 8, !tbaa !208, !noalias !312
  %i.dy = getelementptr inbounds nuw i8, ptr %30, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !24, !noalias !312 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %30, i64 112
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i98: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97
  call void @_ZdlPv(ptr noundef %i.dz) #28, !noalias !306, !inline_history !210
  br label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.au:                                            ; preds = %bb.ap
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i89

.body.i.i89:                                      ; preds = %bb.as, %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i95
  %eh.lpad-body.i.i90 = phi { ptr, i32 } [ %i.ec, %bb.au ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i95 ], [ %i.ds, %bb.as ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30) #27, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !312
  br label %common.resume

_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i98
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dx, align 8, !tbaa !208, !noalias !312
  %i.ed = getelementptr inbounds nuw i8, ptr %30, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ed) #27, !noalias !306, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %30, align 8, !tbaa !208, !noalias !312
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.dw, align 8, !tbaa !208, !noalias !312
  %i.ee = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 0, ptr %i.ee, align 8, !tbaa !211, !noalias !312
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.dw) #27, !noalias !306, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27, !noalias !312
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %48, ptr noundef nonnull %32)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.ef = load ptr, ptr %32, align 8, !tbaa !24, !noalias !306 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.di
  br i1 %i.eg, label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101: ; preds = %bb.av
  call void @_ZdlPv(ptr noundef %i.ef) #28
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit

bb.aw:                                            ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet13ConvertedType4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %32, align 8, !tbaa !24, !noalias !306 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.di
  br i1 %i.ej, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i99: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.ei) #28
  br label %common.resume

_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit: ; preds = %bb.av, %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.db, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %48)
          to label %bb.ax unwind label %bb.fr

bb.ax:                                            ; preds = %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet13ConvertedType4typeEEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %48) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 7)
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.en = load i16, ptr %i.ar, align 8
  %i.eo = and i16 %i.en, 32
  %.not143 = icmp eq i16 %i.eo, 0
  %.val74 = load i32, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  br i1 %.not143, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 noundef zeroext 1), !noalias !321
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull %29)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104.a

bb.ba:                                            ; preds = %bb.ay
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #27
  br label %common.resume

bb.bb:                                            ; preds = %bb.ax
  %i.eq = sext i32 %.val74 to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %49, i64 noundef %i.eq)
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104.a

_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104.a: ; preds = %bb.az, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.el, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %49)
          to label %bb.bc unwind label %bb.fs

bb.bc:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit104.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 8)
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.eu = load i16, ptr %i.ar, align 8
  %i.ev = and i16 %i.eu, 64
  %.not144 = icmp eq i16 %i.ev, 0
  %.val73 = load i32, ptr %i.et, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  br i1 %.not144, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 noundef zeroext 1), !noalias !324
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %50, ptr noundef nonnull %28)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105

bb.bf:                                            ; preds = %bb.bd
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #27
  br label %common.resume

bb.bg:                                            ; preds = %bb.bc
  %i.ex = sext i32 %.val73 to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %50, i64 noundef %i.ex)
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105

_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105: ; preds = %bb.be, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.es, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %50)
          to label %bb.bh unwind label %bb.ft

bb.bh:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit105
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 9)
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.fb = load i16, ptr %i.ar, align 8
  %i.fc = and i16 %i.fb, 128
  %.not145 = icmp eq i16 %i.fc, 0
  %.val = load i32, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  br i1 %.not145, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 noundef zeroext 1), !noalias !327
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull %27)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #27
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106

bb.bk:                                            ; preds = %bb.bi
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %27) #27
  br label %common.resume

bb.bl:                                            ; preds = %bb.bh
  %i.fe = sext i32 %.val to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %51, i64 noundef %i.fe)
  br label %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106

_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106: ; preds = %bb.bj, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.ez, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %51)
          to label %bb.bm unwind label %bb.fu

bb.bm:                                            ; preds = %_ZN6duckdbL20ParquetElementBigintIRKiEENS_5ValueEOT_b.exit106
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 10)
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %i.fh = load i16, ptr %i.ar, align 8
  %i.fi = and i16 %i.fh, 256
  %.not146 = icmp eq i16 %i.fi, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  br i1 %.not146, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 noundef zeroext 1), !noalias !330
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %9)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.bp:                                            ; preds = %bb.bn
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #27
  br label %common.resume

bb.bq:                                            ; preds = %bb.bm
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %i.fl = load i16, ptr %i.fk, align 8, !noalias !330 ; 15 uses
  %i.fm = trunc i16 %i.fl to i1
  br i1 %i.fm, label %bb.br, label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !336
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %8, i32 noundef 24), !noalias !336
  %i.fo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !208, !noalias !336
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !336
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.fo)
          to label %bb.bs unwind label %bb.bw, !noalias !336

bb.bs:                                            ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.fs, ptr %10, align 8, !tbaa !12, !alias.scope !343, !noalias !330
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ft, align 8, !tbaa !15, !alias.scope !343, !noalias !330
  store i8 0, ptr %i.fs, align 8, !tbaa !18, !alias.scope !343, !noalias !330
  %66 = getelementptr inbounds nuw i8, ptr %8, i64 64
  %67 = load ptr, ptr %66, align 8, !tbaa !203, !noalias !344 ; 3 uses
  %.not.i.not.i.i.i.i111 = icmp eq ptr %67, null
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !344 ; 2 uses
  %68 = icmp ugt ptr %67, %i.fv
  %.08.i.i.i.i.i112 = select i1 %68, ptr %67, ptr %i.fv ; 2 uses
  %.not5.i.i.i.i113 = icmp eq ptr %.08.i.i.i.i.i112, null
  %.not.i.i.i.i114 = select i1 %.not.i.not.i.i.i.i111, i1 true, i1 %.not5.i.i.i.i113
  br i1 %.not.i.i.i.i114, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !207, !noalias !344 ; 2 uses
  %i.fy = ptrtoint ptr %.08.i.i.i.i.i112 to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.fx, i64 noundef %i.ga)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117 unwind label %bb.bu, !noalias !330 ; 0 uses

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gd = load ptr, ptr %10, align 8, !tbaa !24, !alias.scope !343, !noalias !330 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fs
  br i1 %i.ge, label %.body.i.i109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.gd) #28, !noalias !330
  br label %.body.i.i109

bb.bv:                                            ; preds = %bb.bs
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.gf)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117 unwind label %bb.bu, !noalias !330

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117: ; preds = %bb.bv, %bb.bt
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %8, align 8, !tbaa !208, !noalias !336
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.gg, align 8, !tbaa !208, !noalias !336
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.fo, align 8, !tbaa !208, !noalias !336
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gh, align 8, !tbaa !208, !noalias !336
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !24, !noalias !336 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i118: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117
  call void @_ZdlPv(ptr noundef %i.gj) #28, !noalias !330, !inline_history !210
  br label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.bw:                                            ; preds = %bb.br
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i109

.body.i.i109:                                     ; preds = %bb.bu, %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115
  %eh.lpad-body.i.i110 = phi { ptr, i32 } [ %i.gm, %bb.bw ], [ %i.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i115 ], [ %i.gc, %bb.bu ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8) #27, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !336
  br label %common.resume

_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i118
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gh, align 8, !tbaa !208, !noalias !336
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gn) #27, !noalias !330, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %8, align 8, !tbaa !208, !noalias !336
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.gg, align 8, !tbaa !208, !noalias !336
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.go, align 8, !tbaa !211, !noalias !336
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gg) #27, !noalias !330, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !336
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %10)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.gp = load ptr, ptr %10, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.fs
  br i1 %i.gq, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119: ; preds = %bb.bx
  call void @_ZdlPv(ptr noundef %i.gp) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.by:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet10StringTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %10, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.fs
  br i1 %i.gt, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.gs) #28
  br label %common.resume

bb.bz:                                            ; preds = %bb.bq
  %i.gu = and i16 %i.fl, 2
  %.not.i = icmp eq i16 %i.gu, 0
  br i1 %.not.i, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !348
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %7, i32 noundef 24), !noalias !348
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !208, !noalias !348
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !348
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %bb.cb unwind label %bb.cf, !noalias !348

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.ha, ptr %11, align 8, !tbaa !12, !alias.scope !355, !noalias !330
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.hb, align 8, !tbaa !15, !alias.scope !355, !noalias !330
  store i8 0, ptr %i.ha, align 8, !tbaa !18, !alias.scope !355, !noalias !330
  %69 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %70 = load ptr, ptr %69, align 8, !tbaa !203, !noalias !356 ; 3 uses
  %.not.i.not.i.i.i53.i = icmp eq ptr %70, null
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !356 ; 2 uses
  %71 = icmp ugt ptr %70, %i.hd
  %.08.i.i.i.i54.i = select i1 %71, ptr %70, ptr %i.hd ; 2 uses
  %.not5.i.i.i55.i = icmp eq ptr %.08.i.i.i.i54.i, null
  %.not.i.i.i56.i = select i1 %.not.i.not.i.i.i53.i, i1 true, i1 %.not5.i.i.i55.i
  br i1 %.not.i.i.i56.i, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !207, !noalias !356 ; 2 uses
  %i.hg = ptrtoint ptr %.08.i.i.i.i54.i to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.hf, i64 noundef %i.hi)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i59.i unwind label %bb.cd, !noalias !330 ; 0 uses

bb.cd:                                            ; preds = %bb.ce, %bb.cc
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %11, align 8, !tbaa !24, !alias.scope !355, !noalias !330 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ha
  br i1 %i.hm, label %.body.i51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57.i: ; preds = %bb.cd
  call void @_ZdlPv(ptr noundef %i.hl) #28, !noalias !330
  br label %.body.i51.i

bb.ce:                                            ; preds = %bb.cb
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.hn)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i59.i unwind label %bb.cd, !noalias !330

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i59.i: ; preds = %bb.ce, %bb.cc
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %7, align 8, !tbaa !208, !noalias !348
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.ho, align 8, !tbaa !208, !noalias !348
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.gw, align 8, !tbaa !208, !noalias !348
  %i.hp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hp, align 8, !tbaa !208, !noalias !348
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !24, !noalias !348 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet7MapTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i60.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i59.i
  call void @_ZdlPv(ptr noundef %i.hr) #28, !noalias !330, !inline_history !210
  br label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet7MapTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.cf:                                            ; preds = %bb.ca
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i51.i

.body.i51.i:                                      ; preds = %bb.cd, %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57.i
  %eh.lpad-body.i52.i = phi { ptr, i32 } [ %i.hu, %bb.cf ], [ %i.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57.i ], [ %i.hk, %bb.cd ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #27, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !348
  br label %common.resume

_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet7MapTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i59.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i60.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hp, align 8, !tbaa !208, !noalias !348
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hv) #27, !noalias !330, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %7, align 8, !tbaa !208, !noalias !348
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.ho, align 8, !tbaa !208, !noalias !348
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.hw, align 8, !tbaa !211, !noalias !348
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ho) #27, !noalias !330, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !348
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %11)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet7MapTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.hx = load ptr, ptr %11, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.ha
  br i1 %i.hy, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %bb.cg
  call void @_ZdlPv(ptr noundef %i.hx) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.ch:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet7MapTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ia = load ptr, ptr %11, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.ha
  br i1 %i.ib, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %bb.ch
  call void @_ZdlPv(ptr noundef %i.ia) #28
  br label %common.resume

bb.ci:                                            ; preds = %bb.bz
  %i.ic = and i16 %i.fl, 4
  %.not35.i = icmp eq i16 %i.ic, 0
  br i1 %.not35.i, label %bb.cr, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.id = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !360
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 24), !noalias !360
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !208, !noalias !360
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !360
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.ie)
          to label %bb.ck unwind label %bb.co, !noalias !360

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.ii, ptr %12, align 8, !tbaa !12, !alias.scope !367, !noalias !330
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ij, align 8, !tbaa !15, !alias.scope !367, !noalias !330
  store i8 0, ptr %i.ii, align 8, !tbaa !18, !alias.scope !367, !noalias !330
  %72 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %73 = load ptr, ptr %72, align 8, !tbaa !203, !noalias !368 ; 3 uses
  %.not.i.not.i.i.i70.i = icmp eq ptr %73, null
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !368 ; 2 uses
  %74 = icmp ugt ptr %73, %i.il
  %.08.i.i.i.i71.i = select i1 %74, ptr %73, ptr %i.il ; 2 uses
  %.not5.i.i.i72.i = icmp eq ptr %.08.i.i.i.i71.i, null
  %.not.i.i.i73.i = select i1 %.not.i.not.i.i.i70.i, i1 true, i1 %.not5.i.i.i72.i
  br i1 %.not.i.i.i73.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.im = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !207, !noalias !368 ; 2 uses
  %i.io = ptrtoint ptr %.08.i.i.i.i71.i to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.in, i64 noundef %i.iq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i76.i unwind label %bb.cm, !noalias !330 ; 0 uses

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = load ptr, ptr %12, align 8, !tbaa !24, !alias.scope !367, !noalias !330 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ii
  br i1 %i.iu, label %.body.i68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74.i: ; preds = %bb.cm
  call void @_ZdlPv(ptr noundef %i.it) #28, !noalias !330
  br label %.body.i68.i

bb.cn:                                            ; preds = %bb.ck
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.iv)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i76.i unwind label %bb.cm, !noalias !330

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i76.i: ; preds = %bb.cn, %bb.cl
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %6, align 8, !tbaa !208, !noalias !360
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.iw, align 8, !tbaa !208, !noalias !360
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.ie, align 8, !tbaa !208, !noalias !360
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ix, align 8, !tbaa !208, !noalias !360
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !24, !noalias !360 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8ListTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i77.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i77.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i76.i
  call void @_ZdlPv(ptr noundef %i.iz) #28, !noalias !330, !inline_history !210
  br label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8ListTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.co:                                            ; preds = %bb.cj
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i68.i

.body.i68.i:                                      ; preds = %bb.cm, %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74.i
  %eh.lpad-body.i69.i = phi { ptr, i32 } [ %i.jc, %bb.co ], [ %i.is, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74.i ], [ %i.is, %bb.cm ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #27, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !360
  br label %common.resume

_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8ListTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i77.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ix, align 8, !tbaa !208, !noalias !360
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jd) #27, !noalias !330, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %6, align 8, !tbaa !208, !noalias !360
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.iw, align 8, !tbaa !208, !noalias !360
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.je, align 8, !tbaa !211, !noalias !360
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.iw) #27, !noalias !330, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !360
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %12)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8ListTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.jf = load ptr, ptr %12, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.ii
  br i1 %i.jg, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.jf) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.cq:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8ListTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %12, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ii
  br i1 %i.jj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.ji) #28
  br label %common.resume

bb.cr:                                            ; preds = %bb.ci
  %i.jk = and i16 %i.fl, 8
  %.not36.i = icmp eq i16 %i.jk, 0
  br i1 %.not36.i, label %bb.da, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !372
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %5, i32 noundef 24), !noalias !372
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !208, !noalias !372
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !372
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef nonnull align 8 dereferenceable(8) %i.jm)
          to label %bb.ct unwind label %bb.cx, !noalias !372

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.jq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.jq, ptr %13, align 8, !tbaa !12, !alias.scope !379, !noalias !330
  %i.jr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.jr, align 8, !tbaa !15, !alias.scope !379, !noalias !330
  store i8 0, ptr %i.jq, align 8, !tbaa !18, !alias.scope !379, !noalias !330
  %75 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %76 = load ptr, ptr %75, align 8, !tbaa !203, !noalias !380 ; 3 uses
  %.not.i.not.i.i.i87.i = icmp eq ptr %76, null
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !380 ; 2 uses
  %77 = icmp ugt ptr %76, %i.jt
  %.08.i.i.i.i88.i = select i1 %77, ptr %76, ptr %i.jt ; 2 uses
  %.not5.i.i.i89.i = icmp eq ptr %.08.i.i.i.i88.i, null
  %.not.i.i.i90.i = select i1 %.not.i.not.i.i.i87.i, i1 true, i1 %.not5.i.i.i89.i
  br i1 %.not.i.i.i90.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !207, !noalias !380 ; 2 uses
  %i.jw = ptrtoint ptr %.08.i.i.i.i88.i to i64
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = sub i64 %i.jw, %i.jx
  %i.jz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.jv, i64 noundef %i.jy)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i93.i unwind label %bb.cv, !noalias !330 ; 0 uses

bb.cv:                                            ; preds = %bb.cw, %bb.cu
  %i.ka = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kb = load ptr, ptr %13, align 8, !tbaa !24, !alias.scope !379, !noalias !330 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.jq
  br i1 %i.kc, label %.body.i85.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91.i: ; preds = %bb.cv
  call void @_ZdlPv(ptr noundef %i.kb) #28, !noalias !330
  br label %.body.i85.i

bb.cw:                                            ; preds = %bb.ct
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.kd)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i93.i unwind label %bb.cv, !noalias !330

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i93.i: ; preds = %bb.cw, %bb.cu
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %5, align 8, !tbaa !208, !noalias !372
  %i.ke = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.ke, align 8, !tbaa !208, !noalias !372
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.jm, align 8, !tbaa !208, !noalias !372
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.kf, align 8, !tbaa !208, !noalias !372
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !24, !noalias !372 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8EnumTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i94.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i93.i
  call void @_ZdlPv(ptr noundef %i.kh) #28, !noalias !330, !inline_history !210
  br label %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8EnumTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.cx:                                            ; preds = %bb.cs
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i85.i

.body.i85.i:                                      ; preds = %bb.cv, %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91.i
  %eh.lpad-body.i86.i = phi { ptr, i32 } [ %i.kk, %bb.cx ], [ %i.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91.i ], [ %i.ka, %bb.cv ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #27, !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !372
  br label %common.resume

_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8EnumTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i93.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i94.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.kf, align 8, !tbaa !208, !noalias !372
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kl) #27, !noalias !330, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %5, align 8, !tbaa !208, !noalias !372
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.ke, align 8, !tbaa !208, !noalias !372
  %i.km = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.km, align 8, !tbaa !211, !noalias !372
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ke) #27, !noalias !330, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !372
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %13)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8EnumTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.kn = load ptr, ptr %13, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.jq
  br i1 %i.ko, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i.a: ; preds = %bb.cy
  call void @_ZdlPv(ptr noundef %i.kn) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.cz:                                            ; preds = %_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8EnumTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.kp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kq = load ptr, ptr %13, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.jq
  br i1 %i.kr, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i.a: ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef %i.kq) #28
  br label %common.resume

bb.da:                                            ; preds = %bb.cr
  %i.ks = and i16 %i.fl, 16
  %.not37.i = icmp eq i16 %i.ks, 0
  br i1 %.not37.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kt = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  call fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet11DecimalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %i.kt), !noalias !330
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %14)
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ku = load ptr, ptr %14, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.a: ; preds = %bb.dc
  call void @_ZdlPv(ptr noundef %i.ku) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.dd:                                            ; preds = %bb.db
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ky = load ptr, ptr %14, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i.a: ; preds = %bb.dd
  call void @_ZdlPv(ptr noundef %i.ky) #28
  br label %common.resume

bb.de:                                            ; preds = %bb.da
  %i.lb = and i16 %i.fl, 32
  %.not38.i = icmp eq i16 %i.lb, 0
  br i1 %.not38.i, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lc = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  call fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8DateTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.lc), !noalias !330
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %15)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ld = load ptr, ptr %15, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i.a: ; preds = %bb.dg
  call void @_ZdlPv(ptr noundef %i.ld) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.dh:                                            ; preds = %bb.df
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = load ptr, ptr %15, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i.a: ; preds = %bb.dh
  call void @_ZdlPv(ptr noundef %i.lh) #28
  br label %common.resume

bb.di:                                            ; preds = %bb.de
  %i.lk = and i16 %i.fl, 64
  %.not39.i = icmp eq i16 %i.lk, 0
  br i1 %.not39.i, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ll = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8TimeTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %i.ll), !noalias !330
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %16)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.lm = load ptr, ptr %16, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114.i.a: ; preds = %bb.dk
  call void @_ZdlPv(ptr noundef %i.lm) #28
  br label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit

bb.dl:                                            ; preds = %bb.dj
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lq = load ptr, ptr %16, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117.i.a: ; preds = %bb.dl
  call void @_ZdlPv(ptr noundef %i.lq) #28
  br label %common.resume

bb.dm:                                            ; preds = %bb.di
  %i.lt = and i16 %i.fl, 128
  %.not40.i = icmp eq i16 %i.lt, 0
  br i1 %.not40.i, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lu = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  call fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet13TimestampTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %i.lu), !noalias !330
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %17)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.lv = load ptr, ptr %17, align 8, !tbaa !24, !noalias !330 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZN6duckdbL26ParquetLogicalTypeToStringERKN14duckdb_parquet11LogicalTypeEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120.i.a: ; preds = %bb.do
  call void @_ZdlPv(ptr noundef %i.lv) #28
end_hunk_2
begin_hunk_3_@_ZN6duckdb23ParquetMetaDataOperator10BindSchemaILNS_27ParquetMetadataOperatorTypeE3EEEvRNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEERNS3_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISD_EEE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZN6duckdb28ParquetFileMetadataProcessor13TotalRowCountERNS_13ParquetReaderE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  ret i64 1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6duckdb28ParquetFileMetadataProcessor7ReadRowERNS_6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS4_EEEmmRNS_13ParquetReaderE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(432) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::basic_stringstream", align 8 ; 17 uses
  %6 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %21 = alloca %"class.duckdb::vector.187", align 8 ; 14 uses
  %22 = alloca %"class.duckdb::Value", align 8    ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %25 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %26 = alloca %"class.duckdb::vector.187", align 8 ; 6 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb13ParquetReader15GetFileMetadataEv(ptr noundef nonnull align 8 dereferenceable(432) %4) ; 12 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.f, ptr %10, align 8, !tbaa !12
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !23
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !24
  %i.l = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.l, ptr %i.f, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !18
  store i8 %i.n, ptr %i.m, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !15
  %i.q = load ptr, ptr %10, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %10)
          to label %bb.d unwind label %bb.ac

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.e unwind label %bb.ad

bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #27
  %i.s = load ptr, ptr %10, align 8, !tbaa !24    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 4 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 2
  %i.aa = icmp ne i8 %i.z, 0
  %.val61 = load ptr, ptr %i.w, align 8
  %i.ab = getelementptr i8, ptr %i.b, i64 104
  %.val62 = load i64, ptr %i.ab, align 8
  call fastcc void @_ZN6duckdbL23ParquetElementStringValERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable align 8 %11, ptr %.val61, i64 %.val62, i1 noundef zeroext %i.aa)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.v, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %bb.f unwind label %bb.af

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !389
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, i64 noundef %i.af)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %bb.g unwind label %bb.ag

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !112
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !115
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 96
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, i64 noundef %i.ap)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.h unwind label %bb.ah

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !412
  %i.au = sext i32 %i.at to i64
  call void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %14, i64 noundef %i.au)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.ar, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %14)
          to label %bb.i unwind label %bb.ai

bb.i:                                             ; preds = %bb.h
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 5)
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ax = load i8, ptr %i.x, align 8
  %i.ay = and i8 %i.ax, 8
  %.not90.a = icmp eq i8 %i.ay, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br i1 %.not90.a, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 1), !noalias !413
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %7)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENS_5ValueEOT_b.exit

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #27
  br label %common.resume

bb.m:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !419
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %6, i32 noundef 24), !noalias !419
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_19EncryptionAlgorithmE(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(169) %i.ba)
          to label %bb.n unwind label %bb.r, !noalias !419 ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !12, !alias.scope !426, !noalias !413
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.be, align 8, !tbaa !15, !alias.scope !426, !noalias !413
  store i8 0, ptr %i.bd, align 8, !tbaa !18, !alias.scope !426, !noalias !413
  %27 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %28 = load ptr, ptr %27, align 8, !tbaa !203, !noalias !427 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %28, null
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !427 ; 2 uses
  %29 = icmp ugt ptr %28, %i.bg
  %.08.i.i.i.i.i = select i1 %29, ptr %28, ptr %i.bg ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !207, !noalias !427 ; 2 uses
  %i.bj = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.bi, i64 noundef %i.bl)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.p, !noalias !413 ; 0 uses

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %8, align 8, !tbaa !24, !alias.scope !426, !noalias !413 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bd
  br i1 %i.bp, label %.body.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bo) #28, !noalias !413
  br label %.body.i.i

bb.q:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.p, !noalias !413

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.q, %bb.o
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %6, align 8, !tbaa !208, !noalias !419
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.br, align 8, !tbaa !208, !noalias !419
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.bb, align 8, !tbaa !208, !noalias !419
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bs, align 8, !tbaa !208, !noalias !419
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !24, !noalias !419 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bu) #28, !noalias !413, !inline_history !210
  br label %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i

bb.r:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

common.resume:                                    ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.br, %bb.l, %.body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.az, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %.pn53.pn.pn.pn.pn, %bb.br ], [ %i.el, %bb.am ], [ %i.ek, %bb.al ], [ %i.ej, %bb.ak ], [ %i.ei, %bb.aj ], [ %i.eh, %bb.ai ], [ %i.eg, %bb.ah ], [ %i.ef, %bb.ag ], [ %i.ee, %bb.af ], [ %i.cc, %bb.t ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.p, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bx, %bb.r ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.bn, %bb.p ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #27, !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !419
  br label %common.resume

_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bs, align 8, !tbaa !208, !noalias !419
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #27, !noalias !413, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %6, align 8, !tbaa !208, !noalias !419
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.br, align 8, !tbaa !208, !noalias !419
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bz, align 8, !tbaa !211, !noalias !419
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.br) #27, !noalias !413, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !419
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull %8)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.ca = load ptr, ptr %8, align 8, !tbaa !24, !noalias !413 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bd
  br i1 %i.cb, label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENS_5ValueEOT_b.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.ca) #28
  br label %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENS_5ValueEOT_b.exit

bb.t:                                             ; preds = %_ZN6duckdbL29ConvertParquetElementToStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %8, align 8, !tbaa !24, !noalias !413 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bd
  br i1 %i.ce, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cd) #28
  br label %common.resume

_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENS_5ValueEOT_b.exit: ; preds = %bb.s, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.aw, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %15)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENS_5ValueEOT_b.exit
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 6)
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.ci = load i8, ptr %i.x, align 8
  %i.cj = and i8 %i.ci, 16
  %i.ck = icmp ne i8 %i.cj, 0
  %.val = load ptr, ptr %i.ch, align 8
  %i.cl = getelementptr i8, ptr %i.b, i64 336
  %.val60 = load i64, ptr %i.cl, align 8
  call fastcc void @_ZN6duckdbL23ParquetElementStringValERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable align 8 %16, ptr %.val, i64 %.val60, i1 noundef zeroext %i.ck)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cg, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.v unwind label %bb.ak

bb.v:                                             ; preds = %bb.u
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 7)
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.cp = call noundef nonnull align 8 dereferenceable(168) ptr @_ZNK6duckdb10unique_ptrINS_17CachingFileHandleESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
  %i.cq = call noundef i64 @_ZN6duckdb17CachingFileHandle11GetFileSizeEv(ptr noundef nonnull align 8 dereferenceable(168) %i.cp)
  call void @_ZN6duckdb5Value7UBIGINTEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %17, i64 noundef %i.cq)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cn, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %bb.w unwind label %bb.al

bb.w:                                             ; preds = %bb.v
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  %i.cr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_6VectorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 8)
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 312
  %i.cu = call noundef ptr @_ZNK6duckdb10shared_ptrINS_24ParquetFileMetadataCacheELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !428
  call void @_ZN6duckdb5Value7UBIGINTEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %18, i64 noundef %i.cw)
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.cs, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %18)
          to label %bb.x unwind label %bb.am

bb.x:                                             ; preds = %bb.w
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull %20)
          to label %bb.y unwind label %bb.an

bb.y:                                             ; preds = %bb.x
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #27
  %i.cx = load i8, ptr %i.x, align 8
  %i.cy = and i8 %i.cx, 4
  %.not = icmp eq i8 %i.cy, 0
  br i1 %.not, label %bb.bm, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !456 ; 4 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !457 ; 4 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = sdiv exact i64 %i.df, 24                ; 3 uses
  %i.dh = icmp ugt i64 %i.dg, 144115188075855871
  br i1 %i.dh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.82) #30
          to label %.noexc unwind label %bb.ao

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %.not121 = icmp eq ptr %i.db, %i.dc
  br i1 %.not121, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ab
  %i.dj = shl nuw nsw i64 %i.dg, 6
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #29
          to label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.ao ; 3 uses

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.dk, ptr %21, align 8, !tbaa !241
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !233
  %i.dm = getelementptr inbounds nuw [64 x i8], ptr %i.dk, i64 %i.dg
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !236
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.ab
  %.not9197 = icmp eq ptr %i.dc, %i.db
  br i1 %.not9197, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 noundef zeroext 25)
          to label %bb.bc unwind label %bb.bg

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.d
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.ad ], [ %i.ea, %bb.ac ]
  %i.ec = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.f
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.ec) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %common.resume

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %common.resume

bb.ag:                                            ; preds = %bb.f
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %common.resume

bb.ah:                                            ; preds = %bb.g
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %common.resume

bb.ai:                                            ; preds = %bb.h
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %common.resume

bb.aj:                                            ; preds = %_ZN6duckdbL20ParquetElementStringIRKN14duckdb_parquet19EncryptionAlgorithmEEENS_5ValueEOT_b.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %common.resume

bb.ak:                                            ; preds = %bb.u
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %common.resume

bb.al:                                            ; preds = %bb.v
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %common.resume

bb.am:                                            ; preds = %bb.w
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %common.resume

bb.an:                                            ; preds = %bb.x
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #27
  br label %bb.br

bb.ao:                                            ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit.i, %bb.aa
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ap:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.sroa.086.098 = phi ptr [ %i.dc, %.lr.ph ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !458
  invoke void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %5, i32 noundef 24)
          to label %.noexc67 unwind label %bb.ay

.noexc67:                                         ; preds = %bb.ap
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN14duckdb_parquetlsERSoRKNS_11ColumnOrderE(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.086.098)
          to label %bb.aq unwind label %bb.au, !noalias !458 ; 0 uses

bb.aq:                                            ; preds = %.noexc67
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  store ptr %i.do, ptr %23, align 8, !tbaa !12, !alias.scope !467
  store i64 0, ptr %i.dp, align 8, !tbaa !15, !alias.scope !467
  store i8 0, ptr %i.do, align 8, !tbaa !18, !alias.scope !467
  %i.ep = load ptr, ptr %i.dq, align 8, !tbaa !203, !noalias !467 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ep, null
  %30 = load ptr, ptr %i.dr, align 8, !noalias !467 ; 2 uses
  %31 = icmp ugt ptr %i.ep, %30
  %.08.i.i.i.i = select i1 %31, ptr %i.ep, ptr %30 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eq = load ptr, ptr %i.ds, align 8, !tbaa !207, !noalias !467 ; 2 uses
  %i.er = ptrtoint ptr %.08.i.i.i.i to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 0, i64 noundef 0, ptr noundef %i.eq, i64 noundef %i.et)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %23, align 8, !tbaa !24, !alias.scope !467 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.do
  br i1 %i.ex, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.ew) #28
  br label %.body.i

bb.at:                                            ; preds = %bb.aq
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %bb.as

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.at, %bb.ar
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %5, align 8, !tbaa !208, !noalias !458
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.du, align 8, !tbaa !208, !noalias !458
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16)>, ptr %i.dn, align 8, !tbaa !208, !noalias !458
  %i.ey = load ptr, ptr %i.dt, align 8, !tbaa !24, !noalias !458 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.dw
  br i1 %i.ez, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  call void @_ZdlPv(ptr noundef %i.ey) #28, !inline_history !210
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

bb.au:                                            ; preds = %.noexc67
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.as, %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fa, %bb.au ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ev, %bb.as ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !458
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dv, align 8, !tbaa !208, !noalias !458
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dx) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %5, align 8, !tbaa !208, !noalias !458
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.du, align 8, !tbaa !208, !noalias !458
  store i64 0, ptr %i.dy, align 8, !tbaa !211, !noalias !458
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.du) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !458
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull %23)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.fb = load ptr, ptr %i.dz, align 8, !tbaa !233 ; 3 uses
  %i.fc = load ptr, ptr %i.di, align 8, !tbaa !236
  %.not.i.i = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fb, ptr noundef nonnull align 8 dereferenceable(64) %22) #27
  %i.fd = load ptr, ptr %i.dz, align 8, !tbaa !233
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  store ptr %i.fe, ptr %i.dz, align 8, !tbaa !233
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

bb.ax:                                            ; preds = %bb.av
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.fb, ptr noundef nonnull align 8 dereferenceable(64) %22)
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.ba

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.aw, %bb.ax
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #27
  %i.ff = load ptr, ptr %23, align 8, !tbaa !24   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.do
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %i.ff) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.086.098, i64 24 ; 2 uses
  %.not91 = icmp eq ptr %i.fh, %i.db
  br i1 %.not91, label %._crit_edge, label %bb.ap

bb.ay:                                            ; preds = %bb.ap
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #27
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn53 = phi { ptr, i32 } [ %i.fk, %bb.ba ], [ %i.fj, %bb.az ] ; 2 uses
  %i.fl = load ptr, ptr %23, align 8, !tbaa !24   ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.do
  br i1 %i.fm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.fl) #28
  br label %.body

.body:                                            ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ay, %.body.i
  %.pn53.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.fi, %bb.ay ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.pn53, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.bl

bb.bc:                                            ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %21)
          to label %_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.bh

_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.bc
  invoke void @_ZN6duckdb5Value4LISTERKNS_11LogicalTypeENS_6vectorIS0_Lb1ESaIS0_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull %26)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %_ZN6duckdb6vectorINS_5ValueELb1ESaIS1_EEC2ERKS3_.exit
  %i.fn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 8 dereferenceable(64) %24) #27 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %24) #27
  %i.fo = load ptr, ptr %26, align 8, !tbaa !241  ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !233 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fo, %i.fq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bd, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i ], [ %i.fo, %bb.bd ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i) #27
  %i.fr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.fr, %i.fq
  br i1 %.not.i.i.i76, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !242

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %26, align 8, !tbaa !241
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bd
  %i.fs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fo, %bb.bd ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fs) #28
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.be
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.ft = load ptr, ptr %21, align 8, !tbaa !241  ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !233 ; 2 uses
  %.not4.i.i.i77 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not4.i.i.i77, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i83, label %.lr.ph.i.i.i78

.lr.ph.i.i.i78:                                   ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, %.lr.ph.i.i.i78
  %.05.i.i.i79 = phi ptr [ %i.fw, %.lr.ph.i.i.i78 ], [ %i.ft, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i79) #27
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i79, i64 64 ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.fw, %i.fv
  br i1 %.not.i.i.i80, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i81, label %.lr.ph.i.i.i78, !llvm.loop !242

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i81: ; preds = %.lr.ph.i.i.i78
  %.pr.i82 = load ptr, ptr %21, align 8, !tbaa !241
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i83

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i83: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i81, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit
  %i.fx = phi ptr [ %.pr.i82, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i81 ], [ %i.ft, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i84 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i1.i84, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit85, label %bb.bf

bb.bf:                                            ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i83
  call void @_ZdlPv(ptr noundef nonnull %i.fx) #28
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit85

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit85:  ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i83, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.bm

bb.bg:                                            ; preds = %._crit_edge
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bc
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev:bb.a
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #28
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #27
  %i.b = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEPS9_ET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not19 = icmp eq ptr %0, %1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEJRKS9_EEvPT_DpOT0_.exit
  %.021 = phi ptr [ %i.u, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEJRKS9_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.01220 = phi ptr [ %i.t, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEJRKS9_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 4 uses
  store ptr %i.b, ptr %.021, align 8, !tbaa !12
  %i.c = load ptr, ptr %.01220, align 8, !tbaa !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !23
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(96) %.021, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.021, align 8, !tbaa !24
  %i.h = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.h, ptr %i.b, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !15
  %i.m = load ptr, ptr %.021, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01220, i64 32
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEJRKS9_EEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.021, align 8, !tbaa !24  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.r) #28
  br label %.body

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEJRKS9_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01220, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.021, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !863

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvT_SB_(ptr noundef %2, ptr noundef nonnull %.021)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #30
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEJRKS9_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEJRKS9_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvT_SB_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEEvT_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.e, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #27
  %i.b = load ptr, ptr %.05.i, align 8, !tbaa !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.b) #28
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 96 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEEvT_SD_.exit, label %.lr.ph.i, !llvm.loop !263

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEEvT_SD_.exit: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZNK6duckdb15GeometryTypeSet8ToStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.duckdb::vector") align 8, ptr noundef nonnull align 1 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet11DecimalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !870
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !870
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !870
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !870 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !870 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !870 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !870 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8DateTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !877
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !877
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !877
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !877 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !877 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !877 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !877 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8TimeTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !884
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !884
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !884
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !884 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !884 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !884 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !884 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet13TimestampTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !891
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !891
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !891
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !891 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !891 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !891 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !891 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet7IntTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(10) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(10) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !898
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !898
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !898
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !898 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !898 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !898 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !898 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8NullTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !905
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !905
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !905
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !905 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !905 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !905 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !905 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8JsonTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !912
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !912
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !912
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !912 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !912 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !912 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !912 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8BsonTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !919
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !919
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !919
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !919 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !919 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !919 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !919 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet8UUIDTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !926
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !926
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !926
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !926 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !926 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !926 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !926 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet11Float16TypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !933
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !933
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !933
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !933 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !933 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !933 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !933 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet12GeometryTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !934)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !940
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !940
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !940
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !940 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !940 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !940 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !940 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL27PrintParquetElementToStringIRKN14duckdb_parquet13GeographyTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(45) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(45) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !12, !alias.scope !947
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !15, !alias.scope !947
  store i8 0, ptr %i.e, align 8, !tbaa !18, !alias.scope !947
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !203, !noalias !947 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !947 ; 2 uses
  %5 = icmp ugt ptr %4, %i.h
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.h     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207, !noalias !947 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !947 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.e
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.p) #28
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %2, align 8, !tbaa !208
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.s, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.v) #28, !inline_history !210
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #27, !inline_history !210
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %2, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.s, align 8, !tbaa !208
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !211
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #27, !inline_history !210
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::locale", align 8       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.b, align 8, !tbaa !948
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %i.c, align 8, !tbaa !961
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.d, align 1, !tbaa !962
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC2ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), i32 noundef %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %0, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8, !tbaa !208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.f, align 8, !tbaa !208
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %2, ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  ret void

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8)) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 24), ptr %0, align 8, !tbaa !208
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 104), ptr %i.a, align 8, !tbaa !208
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_NSt7__cxx1118basic_stringstreamIcS2_S3_EE, i64 64), ptr %i.b, align 8, !tbaa !208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.c, align 8, !tbaa !208
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.e) #28
  br label %_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.c, align 8, !tbaa !208
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 24), ptr %0, align 8, !tbaa !208
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEE0_Si, i64 64), ptr %i.a, align 8, !tbaa !208
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !211
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC2ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #5 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: nounwind uwtable
declare void @_ZThn16_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef) unnamed_addr #15 align 2

; Function Attrs: nounwind uwtable
declare void @_ZThn16_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev(ptr noundef) unnamed_addr #15 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef) unnamed_addr #15 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED0Ev(ptr noundef) unnamed_addr #15 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSdD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSdD0Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5 align 2

; Function Attrs: nounwind uwtable
declare void @_ZThn16_NSdD1Ev(ptr noundef) unnamed_addr #15 align 2

; Function Attrs: nounwind uwtable
declare void @_ZThn16_NSdD0Ev(ptr noundef) unnamed_addr #15 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSdD1Ev(ptr noundef) unnamed_addr #15 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSdD0Ev(ptr noundef) unnamed_addr #15 align 2

end_hunk_4
