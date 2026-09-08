Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PrestoSerializerDeserializationUtils?download=true
inline.NumInlined: 14590
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readInEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS8_INS0_10BaseVectorEE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(94) %i.ag, i32 noundef %i.ah, i1 noundef zeroext true)
  %i.al = load ptr, ptr %7, align 8, !tbaa !192   ; 5 uses
  %i.am = call fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19readNullsEPNS0_15ByteInputStreamEiiPKmiRNS0_10BaseVectorE(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(94) %i.al) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZN8facebook5velox10FlatVectorInE13mutableValuesEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %10, ptr noundef nonnull align 16 dereferenceable(240) %i.al, i32 noundef 0)
  %i.an = load ptr, ptr %1, align 8, !tbaa !163   ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108
  %i.ap = icmp eq ptr %i.ao, getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN8facebook5velox15LongDecimalTypeE, i64 16)
  br i1 %i.ap, label %bb.d, label %bb.be

bb.d:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %.val39 = load ptr, ptr %10, align 8, !tbaa !234 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val39, i64 44
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !239
  %i.at = and i8 %i.as, 2
  %.not.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit.i, label %.invoke, !prof !124

.invoke:                                          ; preds = %bb.d, %bb.bs, %.noexc93
  %i.au = phi ptr [ @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs, %bb.bs ], [ @_ZZNK8facebook5velox6Buffer9asMutableInEEPT_vE18veloxCheckFailArgs, %.noexc93 ], [ @_ZZNK8facebook5velox6Buffer9asMutableInEEPT_vE18veloxCheckFailArgs, %bb.d ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.au) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.val39, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !240 ; 11 uses
  %.not.i40 = icmp eq i32 %i.am, 0
  br i1 %.not.i40, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit.i
  %i.ax = icmp sgt i32 %i.af, 0
  br i1 %i.ax, label %.lr.ph.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ay = sext i32 %2 to i64
  %wide.trip.count.i = zext nneg i32 %i.af to i64
  %invariant.gep.i = getelementptr [16 x i8], ptr %i.aw, i64 %i.ay
  br label %bb.ax

bb.e:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit.i
  %.val15.i = load ptr, ptr %i.aq, align 8, !tbaa !234
  %i.az = getelementptr i8, ptr %.val39, i64 24
  %.val.val.i = load i64, ptr %i.az, align 8, !tbaa !325
  %i.ba = invoke fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115checkValuesSizeInEEiRKN5boost13intrusive_ptrINS0_6BufferEEESB_ii(i64 %.val.val.i, ptr %.val15.i, i32 noundef %i.af, i32 noundef %2)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc41:                                         ; preds = %bb.e
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !234
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !240 ; 4 uses
  %.not.i.i.i.i = icmp sgt i32 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

bb.f:                                             ; preds = %.noexc41
  %i.be = add i32 %2, 63                          ; 2 uses
  %i.bf = srem i32 %i.be, 64
  %i.bg = sub nsw i32 %i.be, %i.bf                ; 6 uses
  %i.bh = and i32 %i.ah, -64                      ; 6 uses
  %i.bi = icmp slt i32 %i.bh, %i.bg
  br i1 %i.bi, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.bj = ashr i32 %i.ah, 6
  %i.bk = and i32 %i.ah, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bl
  %i.bm = xor i64 %notmask.i.i.i.i.i, -1
  %i.bn = sub nsw i32 %i.bg, %2                   ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bo
  %i.bp = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bq = sub nsw i32 64, %i.bn
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl i64 %i.bp, %i.br
  %i.bt = and i64 %i.bs, %i.bm
  %i.bu = sext i32 %i.bj to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !211
  %i.bx = and i64 %i.bt, %i.bw                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.g, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit85.i.i.i"
  %i.by = phi i32 [ %i.dq, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit85.i.i.i" ], [ %2, %bb.g ] ; 3 uses
  %.011.i.i.i.i.i = phi i64 [ %i.ds, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit85.i.i.i" ], [ %i.bx, %bb.g ] ; 3 uses
  %i.bz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = or disjoint i32 %i.bh, %i.ca            ; 4 uses
  %i.cc = icmp slt i32 %i.by, %i.cb
  br i1 %i.cc, label %.lr.ph.i78.i.i.i, label %bb.h

.lr.ph.i78.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i
  %i.cd = sext i32 %i.by to i64
  %i.ce = shl nsw i64 %i.cd, 4
  %scevgep.i79.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.ce
  %i.cf = xor i32 %i.by, -1
  %i.cg = add i32 %i.cb, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = add nuw nsw i64 %i.ci, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i79.i.i.i, i8 0, i64 %i.cj, i1 false), !tbaa !268
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i78.i.i.i, %.preheader.i.i.i.i.i
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !100 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !104 ; 2 uses
  %i.cn = add i64 %i.cm, 8                        ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i60.i.i.i = icmp ugt i64 %i.cn, %i.cp
  br i1 %.not.i.i.i60.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !106
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.cm
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !104
  %.0.copyload.i.i.i.i61.i.i.i = load i64, ptr %i.cr, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i62.i.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.cs = load ptr, ptr %0, align 8, !tbaa !108
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i32 noundef 8)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit, !inline_history !1089

.noexc42:                                         ; preds = %bb.j
  %i.cv = load i64, ptr %i.h, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %.pre.i.i73.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i74.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i73.i.i.i, i64 16
  %.pre14.i.i75.i.i.i = load i64, ptr %.phi.trans.insert.i.i74.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert15.i.i76.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i73.i.i.i, i64 8
  %.pre16.i.i77.i.i.i = load i64, ptr %.phi.trans.insert15.i.i76.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i62.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i62.i.i.i: ; preds = %.noexc42, %bb.i
  %i.cw = phi i64 [ %i.cp, %bb.i ], [ %.pre16.i.i77.i.i.i, %.noexc42 ]
  %i.cx = phi i64 [ %i.cn, %bb.i ], [ %.pre14.i.i75.i.i.i, %.noexc42 ] ; 2 uses
  %i.cy = phi ptr [ %i.ck, %bb.i ], [ %.pre.i.i73.i.i.i, %.noexc42 ] ; 2 uses
  %.0.i.i.i63.i.i.i = phi i64 [ %.0.copyload.i.i.i.i61.i.i.i, %bb.i ], [ %i.cv, %.noexc42 ] ; 2 uses
  %i.cz = add i64 %i.cx, 8                        ; 2 uses
  %.not.i8.i.i64.i.i.i = icmp ugt i64 %i.cz, %i.cw
  br i1 %.not.i8.i.i64.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i62.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !106
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.cx
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !104
  %.0.copyload.i.i9.i.i65.i.i.i = load i64, ptr %i.dc, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i66.i.i.i

bb.l:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i62.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.dd = load ptr, ptr %0, align 8, !tbaa !108
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.g, i32 noundef 8)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit, !inline_history !1089

.noexc43:                                         ; preds = %bb.l
  %i.dg = load i64, ptr %i.g, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i66.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i66.i.i.i: ; preds = %.noexc43, %bb.k
  %.0.i10.i.i67.i.i.i = phi i64 [ %.0.copyload.i.i9.i.i65.i.i.i, %bb.k ], [ %i.dg, %.noexc43 ] ; 3 uses
  %i.dh = icmp slt i64 %.0.i10.i.i67.i.i.i, 0
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i66.i.i.i
  %i.di = and i64 %.0.i10.i.i67.i.i.i, 9223372036854775807
  %.neg13.i.i69.i.i.i = sub nsw i64 0, %i.di
  %.neg13.z.i.i70.i.i.i = zext i64 %.neg13.i.i69.i.i.i to i128
  %.neg.i.i71.i.i.i = shl nuw i128 %.neg13.z.i.i70.i.i.i, 64
  %i.dj = zext i64 %.0.i.i.i63.i.i.i to i128
  %.neg12.i.i72.i.i.i = sub i128 %.neg.i.i71.i.i.i, %i.dj
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit85.i.i.i"

bb.n:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i66.i.i.i
  %i.dk = zext nneg i64 %.0.i10.i.i67.i.i.i to i128
  %i.dl = shl nuw nsw i128 %i.dk, 64
  %i.dm = zext i64 %.0.i.i.i63.i.i.i to i128
  %i.dn = or disjoint i128 %i.dl, %i.dm
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit85.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit85.i.i.i": ; preds = %bb.n, %bb.m
  %.0.i.i68.i.i.i = phi i128 [ %.neg12.i.i72.i.i.i, %bb.m ], [ %i.dn, %bb.n ]
  %i.do = sext i32 %i.cb to i64
  %i.dp = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.do
  store i128 %.0.i.i68.i.i.i, ptr %i.dp, align 16, !tbaa !268
  %i.dq = add nuw nsw i32 %i.cb, 1
  %i.dr = add nsw i64 %.011.i.i.i.i.i, -1
  %i.ds = and i64 %i.dr, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i.i, !llvm.loop !1090

bb.o:                                             ; preds = %bb.f
  %.not32.i.i.i.i = icmp eq i32 %2, %i.bg
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = sdiv i32 %2, 64                         ; 2 uses
  %i.du = sub nsw i32 %i.bg, %2                   ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dx = sub nsw i32 64, %i.du
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %i.dw, %i.dy
  %i.ea = sext i32 %i.dt to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !211
  %i.ed = and i64 %i.ec, %i.dz                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.p
  %i.ee = shl nsw i32 %i.dt, 6
  br label %bb.q

bb.q:                                             ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i", %.preheader.i37.i.i.i.i
  %i.ef = phi i32 [ %2, %.preheader.i37.i.i.i.i ], [ %i.fx, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i" ] ; 3 uses
  %.011.i38.i.i.i.i = phi i64 [ %i.ed, %.preheader.i37.i.i.i.i ], [ %i.fz, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i" ] ; 3 uses
  %i.eg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = or disjoint i32 %i.ee, %i.eh            ; 4 uses
  %i.ej = icmp slt i32 %i.ef, %i.ei
  br i1 %i.ej, label %.lr.ph.i52.i.i.i, label %bb.r

.lr.ph.i52.i.i.i:                                 ; preds = %bb.q
  %i.ek = sext i32 %i.ef to i64
  %i.el = shl nsw i64 %i.ek, 4
  %scevgep.i53.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.el
  %i.em = xor i32 %i.ef, -1
  %i.en = add i32 %i.ei, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = shl nuw nsw i64 %i.eo, 4
  %i.eq = add nuw nsw i64 %i.ep, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i53.i.i.i, i8 0, i64 %i.eq, i1 false), !tbaa !268
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.i52.i.i.i, %bb.q
  %i.er = load ptr, ptr %i.r, align 8, !tbaa !100 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !104 ; 2 uses
  %i.eu = add i64 %i.et, 8                        ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i34.i.i.i = icmp ugt i64 %i.eu, %i.ew
  br i1 %.not.i.i.i34.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !106
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.et
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !104
  %.0.copyload.i.i.i.i35.i.i.i = load i64, ptr %i.ey, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i36.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.ez = load ptr, ptr %0, align 8, !tbaa !108
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 64
  %i.fb = load ptr, ptr %i.fa, align 8
  invoke void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i32 noundef 8)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1089

.noexc44:                                         ; preds = %bb.t
  %i.fc = load i64, ptr %i.j, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  %.pre.i.i47.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i48.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i47.i.i.i, i64 16
  %.pre14.i.i49.i.i.i = load i64, ptr %.phi.trans.insert.i.i48.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert15.i.i50.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i47.i.i.i, i64 8
  %.pre16.i.i51.i.i.i = load i64, ptr %.phi.trans.insert15.i.i50.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i36.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i36.i.i.i: ; preds = %.noexc44, %bb.s
  %i.fd = phi i64 [ %i.ew, %bb.s ], [ %.pre16.i.i51.i.i.i, %.noexc44 ]
  %i.fe = phi i64 [ %i.eu, %bb.s ], [ %.pre14.i.i49.i.i.i, %.noexc44 ] ; 2 uses
  %i.ff = phi ptr [ %i.er, %bb.s ], [ %.pre.i.i47.i.i.i, %.noexc44 ] ; 2 uses
  %.0.i.i.i37.i.i.i = phi i64 [ %.0.copyload.i.i.i.i35.i.i.i, %bb.s ], [ %i.fc, %.noexc44 ] ; 2 uses
  %i.fg = add i64 %i.fe, 8                        ; 2 uses
  %.not.i8.i.i38.i.i.i = icmp ugt i64 %i.fg, %i.fd
  br i1 %.not.i8.i.i38.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i36.i.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !106
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 %i.fe
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !104
  %.0.copyload.i.i9.i.i39.i.i.i = load i64, ptr %i.fj, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i40.i.i.i

bb.v:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i36.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.fk = load ptr, ptr %0, align 8, !tbaa !108
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.i, i32 noundef 8)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1089

.noexc45:                                         ; preds = %bb.v
  %i.fn = load i64, ptr %i.i, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i40.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i40.i.i.i: ; preds = %.noexc45, %bb.u
  %.0.i10.i.i41.i.i.i = phi i64 [ %.0.copyload.i.i9.i.i39.i.i.i, %bb.u ], [ %i.fn, %.noexc45 ] ; 3 uses
  %i.fo = icmp slt i64 %.0.i10.i.i41.i.i.i, 0
  br i1 %i.fo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i40.i.i.i
  %i.fp = and i64 %.0.i10.i.i41.i.i.i, 9223372036854775807
  %.neg13.i.i43.i.i.i = sub nsw i64 0, %i.fp
  %.neg13.z.i.i44.i.i.i = zext i64 %.neg13.i.i43.i.i.i to i128
  %.neg.i.i45.i.i.i = shl nuw i128 %.neg13.z.i.i44.i.i.i, 64
  %i.fq = zext i64 %.0.i.i.i37.i.i.i to i128
  %.neg12.i.i46.i.i.i = sub i128 %.neg.i.i45.i.i.i, %i.fq
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i"

bb.x:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i40.i.i.i
  %i.fr = zext nneg i64 %.0.i10.i.i41.i.i.i to i128
  %i.fs = shl nuw nsw i128 %i.fr, 64
  %i.ft = zext i64 %.0.i.i.i37.i.i.i to i128
  %i.fu = or disjoint i128 %i.fs, %i.ft
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i": ; preds = %bb.x, %bb.w
  %.0.i.i42.i.i.i = phi i128 [ %.neg12.i.i46.i.i.i, %bb.w ], [ %i.fu, %bb.x ]
  %i.fv = sext i32 %i.ei to i64
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.fv
  store i128 %.0.i.i42.i.i.i, ptr %i.fw, align 16, !tbaa !268
  %i.fx = add nsw i32 %i.ei, 1                    ; 2 uses
  %i.fy = add i64 %.011.i38.i.i.i.i, -1
  %i.fz = and i64 %i.fy, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not10.i39.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.q, !llvm.loop !1090

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i", %bb.p, %bb.o
  %.022.i = phi i32 [ %2, %bb.o ], [ %2, %bb.p ], [ %i.fx, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit59.i.i.i" ] ; 2 uses
  %i.ga = add nsw i32 %i.bg, 64                   ; 2 uses
  %.not3351.i.i.i.i = icmp sgt i32 %i.ga, %i.bh
  br i1 %.not3351.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %.1.i = phi i32 [ %.022.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ], [ %.3.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ]
  %.not34.i.i.i.i = icmp eq i32 %i.ah, %i.bh
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %bb.ap

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %.2.i = phi i32 [ %.3.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %.022.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ] ; 4 uses
  %i.gb = phi i32 [ %i.jz, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.ga, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ] ; 2 uses
  %.052.i.i.i.i = phi i32 [ %i.gb, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.bg, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ] ; 2 uses
  %i.gc = sdiv i32 %.052.i.i.i.i, 64              ; 3 uses
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.gd
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !211 ; 2 uses
  switch i64 %i.gf, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.y
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.gg = shl nsw i32 %i.gc, 6
  br label %bb.ah

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.gh = shl nsw i32 %i.gc, 6                    ; 2 uses
  %i.gi = add i32 %i.gh, 64
  %i.gj = sext i32 %i.gi to i64
  %.0.off.i.i.i.i = add i32 %.052.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not22.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.y
  %i.gk = sext i32 %i.gh to i64
  br label %bb.z

bb.z:                                             ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit33.i.i.i", %.lr.ph21.i.i.i.i.i
  %i.gl = phi i32 [ %.2.i, %.lr.ph21.i.i.i.i.i ], [ %i.ib, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit33.i.i.i" ] ; 3 uses
  %.020.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph21.i.i.i.i.i ], [ %i.ic, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit33.i.i.i" ] ; 3 uses
  %i.gm = trunc i64 %.020.i.i.i.i.i to i32        ; 3 uses
  %i.gn = icmp slt i32 %i.gl, %i.gm
  br i1 %i.gn, label %.lr.ph.i26.i.i.i, label %bb.aa

.lr.ph.i26.i.i.i:                                 ; preds = %bb.z
  %i.go = sext i32 %i.gl to i64
  %i.gp = shl nsw i64 %i.go, 4
  %scevgep.i27.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.gp
  %i.gq = xor i32 %i.gl, -1
  %i.gr = add i32 %i.gm, %i.gq
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readInEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS8_INS0_10BaseVectorEE:bb.a
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 16
  %.pre14.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert15.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 8
  %.pre16.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert15.i.i.i.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i: ; preds = %.noexc48, %bb.aj
  %i.jc = phi i64 [ %i.iv, %bb.aj ], [ %.pre16.i.i.i.i.i.i, %.noexc48 ]
  %i.jd = phi i64 [ %i.it, %bb.aj ], [ %.pre14.i.i.i.i.i.i, %.noexc48 ] ; 2 uses
  %i.je = phi ptr [ %i.iq, %bb.aj ], [ %.pre.i.i.i.i.i.i, %.noexc48 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.aj ], [ %i.jb, %.noexc48 ] ; 2 uses
  %i.jf = add i64 %i.jd, 8                        ; 2 uses
  %.not.i8.i.i.i.i.i.i = icmp ugt i64 %i.jf, %i.jc
  br i1 %.not.i8.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jh = load ptr, ptr %i.je, align 8, !tbaa !106
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 %i.jd
  store i64 %i.jf, ptr %i.jg, align 8, !tbaa !104
  %.0.copyload.i.i9.i.i.i.i.i.i = load i64, ptr %i.ji, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i.i

bb.am:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  %i.jj = load ptr, ptr %0, align 8, !tbaa !108
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.jl = load ptr, ptr %i.jk, align 8
  invoke void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.o, i32 noundef 8)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1089

.noexc49:                                         ; preds = %bb.am
  %i.jm = load i64, ptr %i.o, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i.i: ; preds = %.noexc49, %bb.al
  %.0.i10.i.i.i.i.i.i = phi i64 [ %.0.copyload.i.i9.i.i.i.i.i.i, %bb.al ], [ %i.jm, %.noexc49 ] ; 3 uses
  %i.jn = icmp slt i64 %.0.i10.i.i.i.i.i.i, 0
  br i1 %i.jn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i.i
  %i.jo = and i64 %.0.i10.i.i.i.i.i.i, 9223372036854775807
  %.neg13.i.i.i.i.i.i = sub nsw i64 0, %i.jo
  %.neg13.z.i.i.i.i.i.i = zext i64 %.neg13.i.i.i.i.i.i to i128
  %.neg.i.i.i.i.i.i = shl nuw i128 %.neg13.z.i.i.i.i.i.i, 64
  %i.jp = zext i64 %.0.i.i.i.i.i.i.i to i128
  %.neg12.i.i.i.i.i.i = sub i128 %.neg.i.i.i.i.i.i, %i.jp
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"

bb.ao:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i.i
  %i.jq = zext nneg i64 %.0.i10.i.i.i.i.i.i to i128
  %i.jr = shl nuw nsw i128 %i.jq, 64
  %i.js = zext i64 %.0.i.i.i.i.i.i.i to i128
  %i.jt = or disjoint i128 %i.jr, %i.js
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i": ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i = phi i128 [ %.neg12.i.i.i.i.i.i, %bb.an ], [ %i.jt, %bb.ao ]
  %i.ju = sext i32 %i.ih to i64
  %i.jv = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ju
  store i128 %.0.i.i.i.i.i.i, ptr %i.jv, align 16, !tbaa !268
  %i.jw = add nsw i32 %i.ih, 1                    ; 2 uses
  %i.jx = add i64 %.01519.i.i.i.i.i, -1
  %i.jy = and i64 %i.jx, %.01519.i.i.i.i.i        ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.jy, 0
  br i1 %.not.i41.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.ah, !llvm.loop !1092

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit33.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i", %bb.y, %.lr.ph.i.i.i.i
  %.3.i = phi i32 [ %.2.i, %.lr.ph.i.i.i.i ], [ %.2.i, %bb.y ], [ %i.jw, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i" ], [ %i.ib, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit33.i.i.i" ] ; 2 uses
  %i.jz = add nsw i32 %i.gb, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.jz, %i.bh
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1093

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ka = ashr i32 %i.ah, 6
  %i.kb = and i32 %i.ah, 63
  %i.kc = zext nneg i32 %i.kb to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.kc
  %i.kd = xor i64 %notmask.i42.i.i.i.i, -1
  %i.ke = sext i32 %i.ka to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.ke
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !211
  %i.kh = and i64 %i.kg, %i.kd                    ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.kh, 0
  br i1 %.not.i43.i.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.ap, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i"
  %i.ki = phi i32 [ %i.ma, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i" ], [ %.1.i, %bb.ap ] ; 3 uses
  %.011.i45.i.i.i.i = phi i64 [ %i.mc, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i" ], [ %i.kh, %bb.ap ] ; 3 uses
  %i.kj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.kk = trunc nuw nsw i64 %i.kj to i32
  %i.kl = or disjoint i32 %i.bh, %i.kk            ; 4 uses
  %i.km = icmp slt i32 %i.ki, %i.kl
  br i1 %i.km, label %.lr.ph.i6.i.i.i, label %bb.aq

.lr.ph.i6.i.i.i:                                  ; preds = %.preheader.i44.i.i.i.i
  %i.kn = sext i32 %i.ki to i64
  %i.ko = shl nsw i64 %i.kn, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.ko
  %i.kp = xor i32 %i.ki, -1
  %i.kq = add i32 %i.kl, %i.kp
  %i.kr = zext i32 %i.kq to i64
  %i.ks = shl nuw nsw i64 %i.kr, 4
  %i.kt = add nuw nsw i64 %i.ks, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.kt, i1 false), !tbaa !268
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i6.i.i.i, %.preheader.i44.i.i.i.i
  %i.ku = load ptr, ptr %i.r, align 8, !tbaa !100 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !104 ; 2 uses
  %i.kx = add i64 %i.kw, 8                        ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.kx, %i.kz
  br i1 %.not.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !106
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 %i.kw
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.lb, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  %i.lc = load ptr, ptr %0, align 8, !tbaa !108
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  %i.le = load ptr, ptr %i.ld, align 8
  invoke void %i.le(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.n, i32 noundef 8)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1089

.noexc50:                                         ; preds = %bb.as
  %i.lf = load i64, ptr %i.n, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  %.pre.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 16
  %.pre14.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 8
  %.pre16.i.i.i.i.i = load i64, ptr %.phi.trans.insert15.i.i.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i: ; preds = %.noexc50, %bb.ar
  %i.lg = phi i64 [ %i.kz, %bb.ar ], [ %.pre16.i.i.i.i.i, %.noexc50 ]
  %i.lh = phi i64 [ %i.kx, %bb.ar ], [ %.pre14.i.i.i.i.i, %.noexc50 ] ; 2 uses
  %i.li = phi ptr [ %i.ku, %bb.ar ], [ %.pre.i.i.i.i.i, %.noexc50 ] ; 2 uses
  %.0.i.i.i5.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i, %bb.ar ], [ %i.lf, %.noexc50 ] ; 2 uses
  %i.lj = add i64 %i.lh, 8                        ; 2 uses
  %.not.i8.i.i.i.i.i = icmp ugt i64 %i.lj, %i.lg
  br i1 %.not.i8.i.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !106
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 %i.lh
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !104
  %.0.copyload.i.i9.i.i.i.i.i = load i64, ptr %i.lm, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i

bb.au:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  %i.ln = load ptr, ptr %0, align 8, !tbaa !108
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 64
  %i.lp = load ptr, ptr %i.lo, align 8
  invoke void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.m, i32 noundef 8)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1089

.noexc51:                                         ; preds = %bb.au
  %i.lq = load i64, ptr %i.m, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i: ; preds = %.noexc51, %bb.at
  %.0.i10.i.i.i.i.i = phi i64 [ %.0.copyload.i.i9.i.i.i.i.i, %bb.at ], [ %i.lq, %.noexc51 ] ; 3 uses
  %i.lr = icmp slt i64 %.0.i10.i.i.i.i.i, 0
  br i1 %i.lr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i
  %i.ls = and i64 %.0.i10.i.i.i.i.i, 9223372036854775807
  %.neg13.i.i.i.i.i = sub nsw i64 0, %i.ls
  %.neg13.z.i.i.i.i.i = zext i64 %.neg13.i.i.i.i.i to i128
  %.neg.i.i.i.i.i = shl nuw i128 %.neg13.z.i.i.i.i.i, 64
  %i.lt = zext i64 %.0.i.i.i5.i.i.i to i128
  %.neg12.i.i.i.i.i = sub i128 %.neg.i.i.i.i.i, %i.lt
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i"

bb.aw:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i.i.i.i
  %i.lu = zext nneg i64 %.0.i10.i.i.i.i.i to i128
  %i.lv = shl nuw nsw i128 %i.lu, 64
  %i.lw = zext i64 %.0.i.i.i5.i.i.i to i128
  %i.lx = or disjoint i128 %i.lv, %i.lw
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i": ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i = phi i128 [ %.neg12.i.i.i.i.i, %bb.av ], [ %i.lx, %bb.aw ]
  %i.ly = sext i32 %i.kl to i64
  %i.lz = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.ly
  store i128 %.0.i.i.i.i.i, ptr %i.lz, align 16, !tbaa !268
  %i.ma = add nuw nsw i32 %i.kl, 1
  %i.mb = add nsw i64 %.011.i45.i.i.i.i, -1
  %i.mc = and i64 %i.mb, %.011.i45.i.i.i.i        ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not10.i46.i.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i44.i.i.i.i, !llvm.loop !1090

bb.ax:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115readJavaDecimalEPNS0_15ByteInputStreamE.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115readJavaDecimalEPNS0_15ByteInputStreamE.exit.i ] ; 2 uses
  %i.md = load ptr, ptr %i.r, align 8, !tbaa !100 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !104 ; 2 uses
  %i.mg = add i64 %i.mf, 8                        ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.mg, %i.mi
  br i1 %.not.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mj = load ptr, ptr %i.md, align 8, !tbaa !106
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 %i.mf
  store i64 %i.mg, ptr %i.me, align 8, !tbaa !104
  %.0.copyload.i.i.i.i = load i64, ptr %i.mk, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.ml = load ptr, ptr %0, align 8, !tbaa !108
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 64
  %i.mn = load ptr, ptr %i.mm, align 8
  invoke void %i.mn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.f, i32 noundef 8)
          to label %.noexc52 unwind label %.loopexit, !inline_history !1089

.noexc52:                                         ; preds = %bb.az
  %i.mo = load i64, ptr %i.f, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %.pre.i.i = load ptr, ptr %i.r, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre14.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !104
  %.phi.trans.insert15.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre16.i.i = load i64, ptr %.phi.trans.insert15.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i: ; preds = %.noexc52, %bb.ay
  %i.mp = phi i64 [ %i.mi, %bb.ay ], [ %.pre16.i.i, %.noexc52 ]
  %i.mq = phi i64 [ %i.mg, %bb.ay ], [ %.pre14.i.i, %.noexc52 ] ; 2 uses
  %i.mr = phi ptr [ %i.md, %bb.ay ], [ %.pre.i.i, %.noexc52 ] ; 2 uses
  %.0.i.i.i = phi i64 [ %.0.copyload.i.i.i.i, %bb.ay ], [ %i.mo, %.noexc52 ] ; 2 uses
  %i.ms = add i64 %i.mq, 8                        ; 2 uses
  %.not.i8.i.i = icmp ugt i64 %i.ms, %i.mp
  br i1 %.not.i8.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mu = load ptr, ptr %i.mr, align 8, !tbaa !106
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 %i.mq
  store i64 %i.ms, ptr %i.mt, align 8, !tbaa !104
  %.0.copyload.i.i9.i.i = load i64, ptr %i.mv, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i

bb.bb:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.mw = load ptr, ptr %0, align 8, !tbaa !108
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  %i.my = load ptr, ptr %i.mx, align 8
  invoke void %i.my(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i32 noundef 8)
          to label %.noexc53 unwind label %.loopexit, !inline_history !1089

.noexc53:                                         ; preds = %bb.bb
  %i.mz = load i64, ptr %i.e, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i: ; preds = %.noexc53, %bb.ba
  %.0.i10.i.i = phi i64 [ %.0.copyload.i.i9.i.i, %bb.ba ], [ %i.mz, %.noexc53 ] ; 3 uses
  %i.na = icmp slt i64 %.0.i10.i.i, 0
  br i1 %i.na, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i
  %i.nb = and i64 %.0.i10.i.i, 9223372036854775807
  %.neg13.i.i = sub nsw i64 0, %i.nb
  %.neg13.z.i.i = zext i64 %.neg13.i.i to i128
  %.neg.i.i = shl nuw i128 %.neg13.z.i.i, 64
  %i.nc = zext i64 %.0.i.i.i to i128
  %.neg12.i.i = sub i128 %.neg.i.i, %i.nc
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115readJavaDecimalEPNS0_15ByteInputStreamE.exit.i

bb.bd:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit11.i.i
  %i.nd = zext nneg i64 %.0.i10.i.i to i128
  %i.ne = shl nuw nsw i128 %i.nd, 64
  %i.nf = zext i64 %.0.i.i.i to i128
  %i.ng = or disjoint i128 %i.ne, %i.nf
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115readJavaDecimalEPNS0_15ByteInputStreamE.exit.i

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115readJavaDecimalEPNS0_15ByteInputStreamE.exit.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i = phi i128 [ %.neg12.i.i, %bb.bc ], [ %i.ng, %bb.bd ]
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i128 %.0.i.i, ptr %gep.i, align 16, !tbaa !268
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %bb.ax, !llvm.loop !1094

.loopexit:                                        ; preds = %bb.az, %bb.bb
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l, %bb.j
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.as, %bb.au
  %lpad.loopexit110 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.am, %bb.ak
  %lpad.loopexit113 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ac, %bb.ae
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.v, %bb.t
  %lpad.loopexit119 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.preheader.i.i.i.i.i90
  %lpad.loopexit122 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.preheader.i44.i.i.i.i77
  %lpad.loopexit124 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bq
  %lpad.loopexit128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bp
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bn
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.bf, %bb.bg, %bb.e, %bb.bi, %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit106, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit110, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit113, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit116, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit119, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit122, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit124, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit128, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit134, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  resume { ptr, i32 } %lpad.phi

bb.be:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit
  %i.nh = icmp eq ptr %i.an, @_ZZN8facebook5velox8UuidType3getEvE9kInstance
  br i1 %i.nh, label %bb.bf, label %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  %i.ni = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.val = load ptr, ptr %10, align 8, !tbaa !234
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_114readUuidValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_(ptr noundef nonnull %0, i32 noundef %i.af, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ni, i32 noundef %i.am, ptr %.val)
          to label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.be
  %i.nj = icmp eq ptr %i.an, @_ZZN8facebook5velox13IPAddressType3getEvE9kInstance
  %i.nk = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 3 uses
  br i1 %i.nj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.val38 = load ptr, ptr %10, align 8, !tbaa !234
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_(ptr noundef nonnull %0, i32 noundef %i.af, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.nk, i32 noundef %i.am, ptr %.val38)
          to label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117readDecimalValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !181
  %.not.i60 = icmp eq i32 %i.am, 0
  br i1 %.not.i60, label %bb.bs, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %.val.i = load ptr, ptr %10, align 8, !tbaa !234
  %.val13.i = load ptr, ptr %i.nk, align 8, !tbaa !234
  %i.nl = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i61 = load i64, ptr %i.nl, align 8, !tbaa !325
  %i.nm = invoke fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115checkValuesSizeInEEiRKN5boost13intrusive_ptrINS0_6BufferEEESB_ii(i64 %.val.val.i61, ptr %.val13.i, i32 noundef %i.af, i32 noundef %2)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_9TimestampEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  %.not.i = icmp ugt i64 %i.ad, %i.af
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !106
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !104
  %.0.copyload.i.i = load i32, ptr %i.ah, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #22
  %i.ai = load ptr, ptr %0, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.y, i32 noundef 4), !inline_history !0
  %i.al = load i32, ptr %i.y, align 4, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %.0.copyload.i.i, %bb.b ], [ %i.al, %bb.c ] ; 2 uses
  %i.am = icmp eq i32 %4, 0
  %i.an = select i1 %i.am, i32 %.0.i, i32 %4      ; 12 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !192   ; 2 uses
  %i.ap = add nsw i32 %i.an, %2                   ; 22 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !108
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(94) %i.ao, i32 noundef %i.ap, i1 noundef zeroext true)
  %i.at = load ptr, ptr %7, align 8, !tbaa !192   ; 6 uses
  %i.au = call fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19readNullsEPNS0_15ByteInputStreamEiiPKmiRNS0_10BaseVectorE(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(94) %i.at) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE13mutableValuesEi(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(216) %i.at, i32 noundef 0)
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !142, !range !128, !noundef !129
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.d, label %bb.an

bb.d:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %.val45 = load ptr, ptr %8, align 8, !tbaa !234 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val45, i64 44
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !239
  %i.bb = and i8 %i.ba, 2
  %.not.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i, label %.invoke, !prof !124

_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.val45, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !240 ; 11 uses
  %.val16.i = load ptr, ptr %i.ay, align 8, !tbaa !234
  %i.be = getelementptr i8, ptr %.val45, i64 24
  %.val.val.i = load i64, ptr %i.be, align 8, !tbaa !325
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115checkValuesSizeINS0_9TimestampEEEiRKN5boost13intrusive_ptrINS0_6BufferEEESC_ii(i64 %.val.val.i, ptr %.val16.i, i32 noundef %i.an, i32 noundef %2)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i
  %i.bf = icmp sgt i32 %i.au, 0
  br i1 %i.bf, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc48
  %i.bg = icmp sgt i32 %i.an, 0
  br i1 %i.bg, label %.lr.ph.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bh = sext i32 %2 to i64
  %i.bi = sext i32 %i.ap to i64
  br label %bb.ai

bb.e:                                             ; preds = %.noexc48
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !234
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !240 ; 4 uses
  %.not.i.i.i.i = icmp sgt i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

bb.f:                                             ; preds = %bb.e
  %i.bm = add i32 %2, 63                          ; 2 uses
  %i.bn = srem i32 %i.bm, 64
  %i.bo = sub nsw i32 %i.bm, %i.bn                ; 6 uses
  %i.bp = and i32 %i.ap, -64                      ; 8 uses
  %i.bq = icmp slt i32 %i.bp, %i.bo
  br i1 %i.bq, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.br = ashr i32 %i.ap, 6
  %i.bs = and i32 %i.ap, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.bt
  %i.bu = xor i64 %notmask.i.i.i.i.i, -1
  %i.bv = sub nsw i32 %i.bo, %2                   ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.by = sub nsw i32 64, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %i.bx, %i.bz
  %i.cb = and i64 %i.ca, %i.bu
  %i.cc = sext i32 %i.br to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !211
  %i.cf = and i64 %i.cb, %i.ce                    ; 2 uses
  %.not.i30.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i30.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i31.i.i.i

.preheader.i31.i.i.i:                             ; preds = %bb.g, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i42.i.i.i"
  %.027.i = phi i32 [ %i.dr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i42.i.i.i" ], [ %2, %bb.g ] ; 3 uses
  %.011.i34.i.i.i = phi i64 [ %i.dt, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i42.i.i.i" ], [ %i.cf, %bb.g ] ; 3 uses
  %i.cg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i34.i.i.i, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32          ; 2 uses
  %i.ci = or disjoint i32 %i.bp, %i.ch            ; 3 uses
  %i.cj = icmp slt i32 %.027.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i51.i.i.preheader.i, label %._crit_edge.i.i35.i.i.i

.lr.ph.i.i51.i.i.preheader.i:                     ; preds = %.preheader.i31.i.i.i
  %i.ck = sext i32 %.027.i to i64
  %i.cl = shl nsw i64 %i.ck, 4
  %scevgep55.i = getelementptr i8, ptr %i.bd, i64 %i.cl
  %i.cm = xor i32 %.027.i, -1
  %i.cn = add i32 %i.bp, %i.cm
  %i.co = add i32 %i.cn, %i.ch
  %i.cp = zext i32 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 4
  %i.cr = add nuw nsw i64 %i.cq, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep55.i, i8 0, i64 %i.cr, i1 false)
  br label %._crit_edge.i.i35.i.i.i

._crit_edge.i.i35.i.i.i:                          ; preds = %.lr.ph.i.i51.i.i.preheader.i, %.preheader.i31.i.i.i
  %i.cs = load ptr, ptr %i.z, align 8, !tbaa !100 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !104 ; 2 uses
  %i.cv = add i64 %i.cu, 8                        ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i36.i.i.i = icmp ugt i64 %i.cv, %i.cx
  br i1 %.not.i.i.i.i36.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i35.i.i.i
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !106
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cu
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i37.i.i.i = load i64, ptr %i.cz, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i38.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i35.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22
  %i.da = load ptr, ptr %0, align 8, !tbaa !108
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.p, i32 noundef 8)
          to label %.noexc49 unwind label %.loopexit, !inline_history !1122

.noexc49:                                         ; preds = %bb.i
  %i.dd = load i64, ptr %i.p, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #22
  %.pre.i.i.i46.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i.i47.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i46.i.i.i, i64 16
  %.pre6.i.i.i48.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i47.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert7.i.i.i49.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i46.i.i.i, i64 8
  %.pre8.i.i.i50.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i49.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i38.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i38.i.i.i: ; preds = %.noexc49, %bb.h
  %i.de = phi i64 [ %i.cx, %bb.h ], [ %.pre8.i.i.i50.i.i.i, %.noexc49 ]
  %i.df = phi i64 [ %i.cv, %bb.h ], [ %.pre6.i.i.i48.i.i.i, %.noexc49 ] ; 2 uses
  %i.dg = phi ptr [ %i.cs, %bb.h ], [ %.pre.i.i.i46.i.i.i, %.noexc49 ] ; 2 uses
  %.0.i.i.i.i39.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i37.i.i.i, %bb.h ], [ %i.dd, %.noexc49 ]
  %i.dh = add i64 %i.df, 8                        ; 2 uses
  %.not.i3.i.i.i40.i.i.i = icmp ugt i64 %i.dh, %i.de
  br i1 %.not.i3.i.i.i40.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i38.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !106
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.df
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !104
  %.0.copyload.i.i4.i.i.i41.i.i.i = load i64, ptr %i.dk, align 1
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i42.i.i.i"

bb.k:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i38.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  %i.dl = load ptr, ptr %0, align 8, !tbaa !108
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.o, i32 noundef 8)
          to label %.noexc50 unwind label %.loopexit, !inline_history !1122

.noexc50:                                         ; preds = %bb.k
  %i.do = load i64, ptr %i.o, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i42.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i42.i.i.i": ; preds = %.noexc50, %bb.j
  %.0.i5.i.i.i43.i.i.i = phi i64 [ %.0.copyload.i.i4.i.i.i41.i.i.i, %bb.j ], [ %i.do, %.noexc50 ]
  %i.dp = sext i32 %i.ci to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.dp ; 2 uses
  store i64 %.0.i.i.i.i39.i.i.i, ptr %i.dq, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i64 %.0.i5.i.i.i43.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i44.i.i.i, align 8, !tbaa !211
  %i.dr = add nuw nsw i32 %i.ci, 1
  %i.ds = add nsw i64 %.011.i34.i.i.i, -1
  %i.dt = and i64 %i.ds, %.011.i34.i.i.i          ; 2 uses
  %.not10.i45.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not10.i45.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i31.i.i.i, !llvm.loop !1123

bb.l:                                             ; preds = %bb.f
  %.not32.i.i.i.i = icmp eq i32 %2, %i.bo
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = sdiv i32 %2, 64                         ; 2 uses
  %i.dv = sub nsw i32 %i.bo, %2                   ; 2 uses
  %i.dw = zext nneg i32 %i.dv to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.dw
  %i.dx = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dy = sub nsw i32 64, %i.dv
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl i64 %i.dx, %i.dz
  %i.eb = sext i32 %i.du to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !211
  %i.ee = and i64 %i.ed, %i.ea                    ; 2 uses
  %.not.i7.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i7.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i", label %.preheader.i8.i.i.i

.preheader.i8.i.i.i:                              ; preds = %bb.m
  %i.ef = shl nsw i32 %i.du, 6                    ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i", %.preheader.i8.i.i.i
  %.2.i = phi i32 [ %2, %.preheader.i8.i.i.i ], [ %i.fr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i" ] ; 3 uses
  %.011.i11.i.i.i = phi i64 [ %i.ee, %.preheader.i8.i.i.i ], [ %i.ft, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i" ] ; 3 uses
  %i.eg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i11.i.i.i, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32          ; 2 uses
  %i.ei = or disjoint i32 %i.ef, %i.eh            ; 3 uses
  %i.ej = icmp slt i32 %.2.i, %i.ei
  br i1 %i.ej, label %.lr.ph.i.i28.i.i.preheader.i, label %._crit_edge.i.i12.i.i.i

.lr.ph.i.i28.i.i.preheader.i:                     ; preds = %bb.n
  %i.ek = sext i32 %.2.i to i64
  %i.el = shl nsw i64 %i.ek, 4
  %scevgep.i = getelementptr i8, ptr %i.bd, i64 %i.el
  %i.em = xor i32 %.2.i, -1
  %i.en = add i32 %i.ef, %i.em
  %i.eo = add i32 %i.en, %i.eh
  %i.ep = zext i32 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 4
  %i.er = add nuw nsw i64 %i.eq, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.er, i1 false)
  br label %._crit_edge.i.i12.i.i.i

._crit_edge.i.i12.i.i.i:                          ; preds = %.lr.ph.i.i28.i.i.preheader.i, %bb.n
  %i.es = load ptr, ptr %i.z, align 8, !tbaa !100 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !104 ; 2 uses
  %i.ev = add i64 %i.eu, 8                        ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i13.i.i.i = icmp ugt i64 %i.ev, %i.ex
  br i1 %.not.i.i.i.i13.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i12.i.i.i
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !106
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %i.eu
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i14.i.i.i = load i64, ptr %i.ez, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i12.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #22
  %i.fa = load ptr, ptr %0, align 8, !tbaa !108
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.r, i32 noundef 8)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1122

.noexc51:                                         ; preds = %bb.p
  %i.fd = load i64, ptr %i.r, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #22
  %.pre.i.i.i23.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i.i24.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i23.i.i.i, i64 16
  %.pre6.i.i.i25.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i24.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert7.i.i.i26.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i23.i.i.i, i64 8
  %.pre8.i.i.i27.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i26.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i: ; preds = %.noexc51, %bb.o
  %i.fe = phi i64 [ %i.ex, %bb.o ], [ %.pre8.i.i.i27.i.i.i, %.noexc51 ]
  %i.ff = phi i64 [ %i.ev, %bb.o ], [ %.pre6.i.i.i25.i.i.i, %.noexc51 ] ; 2 uses
  %i.fg = phi ptr [ %i.es, %bb.o ], [ %.pre.i.i.i23.i.i.i, %.noexc51 ] ; 2 uses
  %.0.i.i.i.i16.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i14.i.i.i, %bb.o ], [ %i.fd, %.noexc51 ]
  %i.fh = add i64 %i.ff, 8                        ; 2 uses
  %.not.i3.i.i.i17.i.i.i = icmp ugt i64 %i.fh, %i.fe
  br i1 %.not.i3.i.i.i17.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !106
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.ff
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !104
  %.0.copyload.i.i4.i.i.i18.i.i.i = load i64, ptr %i.fk, align 1
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i"

bb.r:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #22
  %i.fl = load ptr, ptr %0, align 8, !tbaa !108
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.q, i32 noundef 8)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1122

.noexc52:                                         ; preds = %bb.r
  %i.fo = load i64, ptr %i.q, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #22
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i": ; preds = %.noexc52, %bb.q
  %.0.i5.i.i.i20.i.i.i = phi i64 [ %.0.copyload.i.i4.i.i.i18.i.i.i, %bb.q ], [ %i.fo, %.noexc52 ]
  %i.fp = sext i32 %i.ei to i64
  %i.fq = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.fp ; 2 uses
  store i64 %.0.i.i.i.i16.i.i.i, ptr %i.fq, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i21.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %.0.i5.i.i.i20.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i21.i.i.i, align 8, !tbaa !211
  %i.fr = add nsw i32 %i.ei, 1                    ; 2 uses
  %i.fs = add i64 %.011.i11.i.i.i, -1
  %i.ft = and i64 %i.fs, %.011.i11.i.i.i          ; 2 uses
  %.not10.i22.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not10.i22.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i", label %bb.n, !llvm.loop !1123

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i", %bb.m, %bb.l
  %.4.i = phi i32 [ %2, %bb.l ], [ %2, %bb.m ], [ %i.fr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i19.i.i.i" ] ; 2 uses
  %i.fu = add nsw i32 %i.bo, 64                   ; 2 uses
  %.not3338.i.i.i.i = icmp sgt i32 %i.fu, %i.bp
  br i1 %.not3338.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i"
  %.5.i = phi i32 [ %.4.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i" ], [ %.11.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ]
  %.not34.i.i.i.i = icmp eq i32 %i.ap, %i.bp
  br i1 %.not34.i.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %bb.ad

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %.6.i = phi i32 [ %.11.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %.4.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i" ] ; 4 uses
  %i.fv = phi i32 [ %i.jf, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.fu, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i" ] ; 2 uses
  %.039.i.i.i.i = phi i32 [ %i.fv, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.bo, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit29.i.i.i" ] ; 2 uses
  %i.fw = sdiv i32 %.039.i.i.i.i, 64              ; 3 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !211 ; 2 uses
  switch i64 %i.fz, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.s
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ga = shl nsw i32 %i.fw, 6                    ; 2 uses
  br label %bb.y

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.gb = shl nsw i32 %i.fw, 6                    ; 3 uses
  %i.gc = add i32 %i.gb, 64
  %i.gd = sext i32 %i.gc to i64
  %.0.off.i.i.i.i = add i32 %.039.i.i.i.i, 127
  %.not38.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not38.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph37.i.i.i.i.i

.lr.ph37.i.i.i.i.i:                               ; preds = %bb.s
  %i.ge = sext i32 %i.gb to i64
  %i.gf = add i32 %i.gb, -1
  br label %bb.t

bb.t:                                             ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i", %.lr.ph37.i.i.i.i.i
  %indvar.i = phi i32 [ %indvar.next.i, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ], [ 0, %.lr.ph37.i.i.i.i.i ] ; 2 uses
  %.7.i = phi i32 [ %i.ho, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ], [ %.6.i, %.lr.ph37.i.i.i.i.i ] ; 3 uses
  %.036.i.i.i.i.i = phi i64 [ %i.hp, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ], [ %i.ge, %.lr.ph37.i.i.i.i.i ] ; 3 uses
  %i.gg = trunc i64 %.036.i.i.i.i.i to i32        ; 2 uses
  %i.gh = icmp slt i32 %.7.i, %i.gg
  br i1 %i.gh, label %.lr.ph.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.t
  %i.gi = add i32 %i.gf, %indvar.i
  %i.gj = sext i32 %.7.i to i64
  %i.gk = shl nsw i64 %i.gj, 4
  %scevgep43.i = getelementptr i8, ptr %i.bd, i64 %i.gk
  %i.gl = sub i32 %i.gi, %.7.i
  %i.gm = zext i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 4
  %i.go = add nuw nsw i64 %i.gn, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep43.i, i8 0, i64 %i.go, i1 false)
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.t
  %i.gp = load ptr, ptr %i.z, align 8, !tbaa !100 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !104 ; 2 uses
  %i.gs = add i64 %i.gr, 8                        ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.gs, %i.gu
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_9TimestampEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  %i.hx = xor i32 %.9.i, -1
  %i.hy = add i32 %i.ga, %i.hx
  %i.hz = add i32 %i.hy, %i.hs
  %i.ia = zext i32 %i.hz to i64
  %i.ib = shl nuw nsw i64 %i.ia, 4
  %i.ic = add nuw nsw i64 %i.ib, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep47.i, i8 0, i64 %i.ic, i1 false)
  br label %._crit_edge.i17.i.i.i.i.i

._crit_edge.i17.i.i.i.i.i:                        ; preds = %.lr.ph.i31.i.i.i.i.preheader.i, %bb.y
  %i.id = load ptr, ptr %i.z, align 8, !tbaa !100 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !104 ; 2 uses
  %i.ig = add i64 %i.if, 8                        ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i18.i.i.i.i.i = icmp ugt i64 %i.ig, %i.ii
  br i1 %.not.i.i.i18.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i17.i.i.i.i.i
  %i.ij = load ptr, ptr %i.id, align 8, !tbaa !106
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.if
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !104
  %.0.copyload.i.i.i.i19.i.i.i.i.i = load i64, ptr %i.ik, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i17.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #22
  %i.il = load ptr, ptr %0, align 8, !tbaa !108
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 64
  %i.in = load ptr, ptr %i.im, align 8
  invoke void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.v, i32 noundef 8)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1122

.noexc55:                                         ; preds = %bb.aa
  %i.io = load i64, ptr %i.v, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #22
  %.pre.i.i26.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i26.i.i.i.i.i, i64 16
  %.pre6.i.i28.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i27.i.i.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert7.i.i29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i26.i.i.i.i.i, i64 8
  %.pre8.i.i30.i.i.i.i.i = load i64, ptr %.phi.trans.insert7.i.i29.i.i.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i: ; preds = %.noexc55, %bb.z
  %i.ip = phi i64 [ %i.ii, %bb.z ], [ %.pre8.i.i30.i.i.i.i.i, %.noexc55 ]
  %i.iq = phi i64 [ %i.ig, %bb.z ], [ %.pre6.i.i28.i.i.i.i.i, %.noexc55 ] ; 2 uses
  %i.ir = phi ptr [ %i.id, %bb.z ], [ %.pre.i.i26.i.i.i.i.i, %.noexc55 ] ; 2 uses
  %.0.i.i.i21.i.i.i.i.i = phi i64 [ %.0.copyload.i.i.i.i19.i.i.i.i.i, %bb.z ], [ %i.io, %.noexc55 ]
  %i.is = add i64 %i.iq, 8                        ; 2 uses
  %.not.i3.i.i22.i.i.i.i.i = icmp ugt i64 %i.is, %i.ip
  br i1 %.not.i3.i.i22.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !106
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 %i.iq
  store i64 %i.is, ptr %i.it, align 8, !tbaa !104
  %.0.copyload.i.i4.i.i23.i.i.i.i.i = load i64, ptr %i.iv, align 1
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit32.i.i.i.i.i"

bb.ac:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #22
  %i.iw = load ptr, ptr %0, align 8, !tbaa !108
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.u, i32 noundef 8)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1122

.noexc56:                                         ; preds = %bb.ac
  %i.iz = load i64, ptr %i.u, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #22
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit32.i.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit32.i.i.i.i.i": ; preds = %.noexc56, %bb.ab
  %.0.i5.i.i24.i.i.i.i.i = phi i64 [ %.0.copyload.i.i4.i.i23.i.i.i.i.i, %bb.ab ], [ %i.iz, %.noexc56 ]
  %i.ja = sext i32 %i.ht to i64
  %i.jb = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.ja ; 2 uses
  store i64 %.0.i.i.i21.i.i.i.i.i, ptr %i.jb, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  store i64 %.0.i5.i.i24.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i25.i.i.i.i.i, align 8, !tbaa !211
  %i.jc = add nsw i32 %i.ht, 1                    ; 2 uses
  %i.jd = add i64 %.01535.i.i.i.i.i, -1
  %i.je = and i64 %i.jd, %.01535.i.i.i.i.i        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.je, 0
  br i1 %.not.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.y, !llvm.loop !1125

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit32.i.i.i.i.i", %bb.s, %.lr.ph.i.i.i.i
  %.11.i = phi i32 [ %.6.i, %.lr.ph.i.i.i.i ], [ %.6.i, %bb.s ], [ %i.jc, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit32.i.i.i.i.i" ], [ %i.ho, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ] ; 2 uses
  %i.jf = add nsw i32 %i.fv, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.jf, %i.bp
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1126

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i
  %i.jg = ashr i32 %i.ap, 6
  %i.jh = and i32 %i.ap, 63
  %i.ji = zext nneg i32 %i.jh to i64
  %notmask.i36.i.i.i.i = shl nsw i64 -1, %i.ji
  %i.jj = xor i64 %notmask.i36.i.i.i.i, -1
  %i.jk = sext i32 %i.jg to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !211
  %i.jn = and i64 %i.jm, %i.jj                    ; 2 uses
  %.not.i5.i.i.i = icmp eq i64 %i.jn, 0
  br i1 %.not.i5.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ad, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"
  %.12.i = phi i32 [ %i.kz, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i" ], [ %.5.i, %bb.ad ] ; 3 uses
  %.011.i.i.i.i = phi i64 [ %i.lb, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i" ], [ %i.jn, %bb.ad ] ; 3 uses
  %i.jo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i, i1 true)
  %i.jp = trunc nuw nsw i64 %i.jo to i32          ; 2 uses
  %i.jq = or disjoint i32 %i.bp, %i.jp            ; 3 uses
  %i.jr = icmp slt i32 %.12.i, %i.jq
  br i1 %i.jr, label %.lr.ph.i.i6.i.i.preheader.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i6.i.i.preheader.i:                      ; preds = %.preheader.i.i.i.i
  %i.js = sext i32 %.12.i to i64
  %i.jt = shl nsw i64 %i.js, 4
  %scevgep51.i = getelementptr i8, ptr %i.bd, i64 %i.jt
  %i.ju = xor i32 %.12.i, -1
  %i.jv = add i32 %i.bp, %i.ju
  %i.jw = add i32 %i.jv, %i.jp
  %i.jx = zext i32 %i.jw to i64
  %i.jy = shl nuw nsw i64 %i.jx, 4
  %i.jz = add nuw nsw i64 %i.jy, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep51.i, i8 0, i64 %i.jz, i1 false)
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i6.i.i.preheader.i, %.preheader.i.i.i.i
  %i.ka = load ptr, ptr %i.z, align 8, !tbaa !100 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !104 ; 2 uses
  %i.kd = add i64 %i.kc, 8                        ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.kd, %i.kf
  br i1 %.not.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.kg = load ptr, ptr %i.ka, align 8, !tbaa !106
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %i.kc
  store i64 %i.kd, ptr %i.kb, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.kh, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #22
  %i.ki = load ptr, ptr %0, align 8, !tbaa !108
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 64
  %i.kk = load ptr, ptr %i.kj, align 8
  invoke void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.t, i32 noundef 8)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit, !inline_history !1122

.noexc57:                                         ; preds = %bb.af
  %i.kl = load i64, ptr %i.t, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #22
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 16
  %.pre6.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !104
  %.phi.trans.insert7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 8
  %.pre8.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i.i.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i: ; preds = %.noexc57, %bb.ae
  %i.km = phi i64 [ %i.kf, %bb.ae ], [ %.pre8.i.i.i.i.i.i, %.noexc57 ]
  %i.kn = phi i64 [ %i.kd, %bb.ae ], [ %.pre6.i.i.i.i.i.i, %.noexc57 ] ; 2 uses
  %i.ko = phi ptr [ %i.ka, %bb.ae ], [ %.pre.i.i.i.i.i.i, %.noexc57 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i, %bb.ae ], [ %i.kl, %.noexc57 ]
  %i.kp = add i64 %i.kn, 8                        ; 2 uses
  %.not.i3.i.i.i.i.i.i = icmp ugt i64 %i.kp, %i.km
  br i1 %.not.i3.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kr = load ptr, ptr %i.ko, align 8, !tbaa !106
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 %i.kn
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !104
  %.0.copyload.i.i4.i.i.i.i.i.i = load i64, ptr %i.ks, align 1
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"

bb.ah:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #22
  %i.kt = load ptr, ptr %0, align 8, !tbaa !108
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 64
  %i.kv = load ptr, ptr %i.ku, align 8
  invoke void %i.kv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i32 noundef 8)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit, !inline_history !1122

.noexc58:                                         ; preds = %bb.ah
  %i.kw = load i64, ptr %i.s, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #22
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i": ; preds = %.noexc58, %bb.ag
  %.0.i5.i.i.i.i.i.i = phi i64 [ %.0.copyload.i.i4.i.i.i.i.i.i, %bb.ag ], [ %i.kw, %.noexc58 ]
  %i.kx = sext i32 %i.jq to i64
  %i.ky = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.kx ; 2 uses
  store i64 %.0.i.i.i.i.i.i.i, ptr %i.ky, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i64 %.0.i5.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !211
  %i.kz = add nuw nsw i32 %i.jq, 1
  %i.la = add nsw i64 %.011.i.i.i.i, -1
  %i.lb = and i64 %i.la, %.011.i.i.i.i            ; 2 uses
  %.not10.i.i.i.i = icmp eq i64 %i.lb, 0
  br i1 %.not10.i.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i, !llvm.loop !1123

bb.ai:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_121readLosslessTimestampEPNS0_15ByteInputStreamE.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bh, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_121readLosslessTimestampEPNS0_15ByteInputStreamE.exit.i ] ; 2 uses
  %i.lc = load ptr, ptr %i.z, align 8, !tbaa !100 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !104 ; 2 uses
  %i.lf = add i64 %i.le, 8                        ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.lf, %i.lh
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.li = load ptr, ptr %i.lc, align 8, !tbaa !106
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %i.le
  store i64 %i.lf, ptr %i.ld, align 8, !tbaa !104
  %.0.copyload.i.i.i.i = load i64, ptr %i.lj, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  %i.lk = load ptr, ptr %0, align 8, !tbaa !108
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.n, i32 noundef 8)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1122

.noexc59:                                         ; preds = %bb.ak
  %i.ln = load i64, ptr %i.n, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre6.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !104
  %.phi.trans.insert7.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre8.i.i = load i64, ptr %.phi.trans.insert7.i.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i: ; preds = %.noexc59, %bb.aj
  %i.lo = phi i64 [ %i.lh, %bb.aj ], [ %.pre8.i.i, %.noexc59 ]
  %i.lp = phi i64 [ %i.lf, %bb.aj ], [ %.pre6.i.i, %.noexc59 ] ; 2 uses
  %i.lq = phi ptr [ %i.lc, %bb.aj ], [ %.pre.i.i, %.noexc59 ] ; 2 uses
  %.0.i.i.i = phi i64 [ %.0.copyload.i.i.i.i, %bb.aj ], [ %i.ln, %.noexc59 ]
  %i.lr = add i64 %i.lp, 8                        ; 2 uses
  %.not.i3.i.i = icmp ugt i64 %i.lr, %i.lo
  br i1 %.not.i3.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.lt = load ptr, ptr %i.lq, align 8, !tbaa !106
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 %i.lp
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !104
  %.0.copyload.i.i4.i.i = load i64, ptr %i.lu, align 1
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_121readLosslessTimestampEPNS0_15ByteInputStreamE.exit.i

bb.am:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  %i.lv = load ptr, ptr %0, align 8, !tbaa !108
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 64
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.m, i32 noundef 8)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1122

.noexc60:                                         ; preds = %bb.am
  %i.ly = load i64, ptr %i.m, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_121readLosslessTimestampEPNS0_15ByteInputStreamE.exit.i

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_121readLosslessTimestampEPNS0_15ByteInputStreamE.exit.i: ; preds = %.noexc60, %bb.al
  %.0.i5.i.i = phi i64 [ %.0.copyload.i.i4.i.i, %bb.al ], [ %i.ly, %.noexc60 ]
  %i.lz = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  store i64 %.0.i.i.i, ptr %i.lz, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i64 %.0.i5.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !211
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ma = icmp slt i64 %indvars.iv.next.i, %i.bi
  br i1 %i.ma, label %bb.ai, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, !llvm.loop !1127

.loopexit:                                        ; preds = %bb.i, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ah, %bb.af
  %lpad.loopexit297 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.aa, %bb.ac
  %lpad.loopexit301 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.x, %bb.v
  %lpad.loopexit303 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.r
  %lpad.loopexit307 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.am, %bb.ak
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.at
  %lpad.loopexit313 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bm
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bi
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.be
  %lpad.loopexit322 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.az
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bq
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cx
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ca
  %lpad.loopexit335 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ct
  %lpad.loopexit339 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cp
  %lpad.loopexit342 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cl
  %lpad.loopexit345 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cg
  %lpad.loopexit348 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i, %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i62, %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i154, %.invoke, %bb.bu, %bb.bt
  %lpad.loopexit.split-lp349 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit297, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit301, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit303, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit307, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit309, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit313, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit316, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit320, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit322, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit326, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit328, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit332, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit335, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit339, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit342, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit345, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit348, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp349, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %lpad.phi

bb.an:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %6, i64 21
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !1140, !range !128, !noundef !129
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.ao, label %bb.bs

bb.ao:                                            ; preds = %bb.an
  %i.me = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %.val46 = load ptr, ptr %8, align 8, !tbaa !234 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val46, i64 44
  %i.mg = load i8, ptr %i.mf, align 4, !tbaa !239
  %i.mh = and i8 %i.mg, 2
  %.not.i.i61 = icmp eq i8 %i.mh, 0
  br i1 %.not.i.i61, label %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i62, label %.invoke, !prof !124

_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i62: ; preds = %bb.ao
  %i.mi = getelementptr inbounds nuw i8, ptr %.val46, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !240 ; 11 uses
  %.val16.i63 = load ptr, ptr %i.me, align 8, !tbaa !234
  %i.mk = getelementptr i8, ptr %.val46, i64 24
  %.val.val.i64 = load i64, ptr %i.mk, align 8, !tbaa !325
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115checkValuesSizeINS0_9TimestampEEEiRKN5boost13intrusive_ptrINS0_6BufferEEESC_ii(i64 %.val.val.i64, ptr %.val16.i63, i32 noundef %i.an, i32 noundef %2)
          to label %.noexc140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i62
  %i.ml = icmp sgt i32 %i.au, 0
  br i1 %i.ml, label %bb.ap, label %.preheader.i65

.preheader.i65:                                   ; preds = %.noexc140
  %i.mm = icmp sgt i32 %i.an, 0
  br i1 %i.mm, label %.lr.ph.i66, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

.lr.ph.i66:                                       ; preds = %.preheader.i65
  %i.mn = sext i32 %2 to i64
  %i.mo = sext i32 %i.ap to i64
  br label %bb.bo

bb.ap:                                            ; preds = %.noexc140
  %i.mp = load ptr, ptr %i.me, align 8, !tbaa !234
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !240 ; 4 uses
  %.not.i.i.i.i74 = icmp sgt i32 %i.an, 0
  br i1 %.not.i.i.i.i74, label %bb.aq, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ms = add i32 %2, 63                          ; 2 uses
  %i.mt = srem i32 %i.ms, 64
  %i.mu = sub nsw i32 %i.ms, %i.mt                ; 6 uses
  %i.mv = and i32 %i.ap, -64                      ; 8 uses
  %i.mw = icmp slt i32 %i.mv, %i.mu
  br i1 %i.mw, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.mx = ashr i32 %i.ap, 6
  %i.my = and i32 %i.ap, 63
  %i.mz = zext nneg i32 %i.my to i64
  %notmask.i.i.i.i.i135 = shl nsw i64 -1, %i.mz
  %i.na = xor i64 %notmask.i.i.i.i.i135, -1
  %i.nb = sub nsw i32 %i.mu, %2                   ; 2 uses
  %i.nc = zext nneg i32 %i.nb to i64
  %notmask.i.i.i.i.i.i136 = shl nsw i64 -1, %i.nc
  %i.nd = xor i64 %notmask.i.i.i.i.i.i136, -1
  %i.ne = sub nsw i32 64, %i.nb
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = shl i64 %i.nd, %i.nf
  %i.nh = and i64 %i.ng, %i.na
  %i.ni = sext i32 %i.mx to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %i.ni
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !211
  %i.nl = and i64 %i.nh, %i.nk                    ; 2 uses
  %.not.i28.i.i.i = icmp eq i64 %i.nl, 0
  br i1 %.not.i28.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i29.i.i.i

.preheader.i29.i.i.i:                             ; preds = %bb.ar, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i"
  %.027.i137 = phi i32 [ %i.ou, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i" ], [ %2, %bb.ar ] ; 3 uses
  %.011.i32.i.i.i = phi i64 [ %i.ow, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i" ], [ %i.nl, %bb.ar ] ; 3 uses
  %i.nm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i32.i.i.i, i1 true)
  %i.nn = trunc nuw nsw i64 %i.nm to i32          ; 2 uses
  %i.no = or disjoint i32 %i.mv, %i.nn            ; 3 uses
  %i.np = icmp slt i32 %.027.i137, %i.no
  br i1 %i.np, label %.lr.ph.i.i47.i.i.preheader.i, label %._crit_edge.i.i33.i.i.i

.lr.ph.i.i47.i.i.preheader.i:                     ; preds = %.preheader.i29.i.i.i
  %i.nq = sext i32 %.027.i137 to i64
  %i.nr = shl nsw i64 %i.nq, 4
  %scevgep55.i138 = getelementptr i8, ptr %i.mj, i64 %i.nr
  %i.ns = xor i32 %.027.i137, -1
  %i.nt = add i32 %i.mv, %i.ns
  %i.nu = add i32 %i.nt, %i.nn
  %i.nv = zext i32 %i.nu to i64
  %i.nw = shl nuw nsw i64 %i.nv, 4
  %i.nx = add nuw nsw i64 %i.nw, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep55.i138, i8 0, i64 %i.nx, i1 false)
  br label %._crit_edge.i.i33.i.i.i

._crit_edge.i.i33.i.i.i:                          ; preds = %.lr.ph.i.i47.i.i.preheader.i, %.preheader.i29.i.i.i
  %i.ny = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16 ; 2 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !104 ; 2 uses
  %i.ob = add i64 %i.oa, 8                        ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !105
  %.not.i.i.i.i34.i.i.i = icmp ugt i64 %i.ob, %i.od
  br i1 %.not.i.i.i.i34.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i33.i.i.i
  %i.oe = load ptr, ptr %i.ny, align 8, !tbaa !106
  %i.of = getelementptr inbounds i8, ptr %i.oe, i64 %i.oa
  store i64 %i.ob, ptr %i.nz, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i35.i.i.i = load i64, ptr %i.of, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i

bb.at:                                            ; preds = %._crit_edge.i.i33.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.og = load ptr, ptr %0, align 8, !tbaa !108
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 64
  %i.oi = load ptr, ptr %i.oh, align 8
  invoke void %i.oi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.h, i32 noundef 8)
          to label %.noexc141 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1128

.noexc141:                                        ; preds = %bb.at
  %i.oj = load i64, ptr %i.h, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i: ; preds = %.noexc141, %bb.as
  %.0.i.i.i.i37.i.i.i = phi i64 [ %.0.copyload.i.i.i.i.i35.i.i.i, %bb.as ], [ %i.oj, %.noexc141 ] ; 5 uses
  %i.ok = icmp sgt i64 %.0.i.i.i.i37.i.i.i, -1
  %i.ol = srem i64 %.0.i.i.i.i37.i.i.i, 1000000   ; 2 uses
  %i.om = sdiv i64 %.0.i.i.i.i37.i.i.i, 1000000
  %i.on = icmp eq i64 %i.ol, 0
  %or.cond.i.i.i.i38.i.i.i = or i1 %i.ok, %i.on
  br i1 %or.cond.i.i.i.i38.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i", label %bb.au

bb.au:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i
  %.nonneg.i.i.i.i39.i.i.i = sub i64 0, %.0.i.i.i.i37.i.i.i
  %i.oo = udiv i64 %.nonneg.i.i.i.i39.i.i.i, 1000000
  %i.op = xor i64 %i.oo, -1                       ; 2 uses
  %.neg.i.i.i.i40.i.i.i = mul i64 %i.op, -1000000
  %i.oq = add i64 %.neg.i.i.i.i40.i.i.i, %.0.i.i.i.i37.i.i.i
  %i.or = srem i64 %i.oq, 1000000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i, %bb.au
  %.sroa.3.0.in.i.i.i.i42.i.i.i = phi i64 [ %i.or, %bb.au ], [ %i.ol, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i ]
  %.sroa.0.0.i.i.i.i43.i.i.i = phi i64 [ %i.op, %bb.au ], [ %i.om, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i ]
  %.sroa.3.0.i.i.i.i44.i.i.i = mul nsw i64 %.sroa.3.0.in.i.i.i.i42.i.i.i, 1000
  %i.os = sext i32 %i.no to i64
  %i.ot = getelementptr inbounds [16 x i8], ptr %i.mj, i64 %i.os ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i43.i.i.i, ptr %i.ot, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  store i64 %.sroa.3.0.i.i.i.i44.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i45.i.i.i, align 8, !tbaa !211
  %i.ou = add nuw nsw i32 %i.no, 1
  %i.ov = add nsw i64 %.011.i32.i.i.i, -1
  %i.ow = and i64 %i.ov, %.011.i32.i.i.i          ; 2 uses
  %.not10.i46.i.i.i = icmp eq i64 %i.ow, 0
  br i1 %.not10.i46.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i29.i.i.i, !llvm.loop !1129

bb.av:                                            ; preds = %bb.aq
  %.not32.i.i.i.i75 = icmp eq i32 %2, %i.mu
  br i1 %.not32.i.i.i.i75, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ox = sdiv i32 %2, 64                         ; 2 uses
  %i.oy = sub nsw i32 %i.mu, %2                   ; 2 uses
  %i.oz = zext nneg i32 %i.oy to i64
  %notmask.i.i35.i.i.i.i76 = shl nsw i64 -1, %i.oz
  %i.pa = xor i64 %notmask.i.i35.i.i.i.i76, -1
  %i.pb = sub nsw i32 64, %i.oy
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = shl i64 %i.pa, %i.pc
  %i.pe = sext i32 %i.ox to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !211
  %i.ph = and i64 %i.pg, %i.pd                    ; 2 uses
  %.not.i7.i.i.i77 = icmp eq i64 %i.ph, 0
  br i1 %.not.i7.i.i.i77, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", label %.preheader.i8.i.i.i78

.preheader.i8.i.i.i78:                            ; preds = %bb.aw
  %i.pi = shl nsw i32 %i.ox, 6                    ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i", %.preheader.i8.i.i.i78
  %.2.i79 = phi i32 [ %2, %.preheader.i8.i.i.i78 ], [ %i.qr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i" ] ; 3 uses
  %.011.i11.i.i.i80 = phi i64 [ %i.ph, %.preheader.i8.i.i.i78 ], [ %i.qt, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i" ] ; 3 uses
  %i.pj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i11.i.i.i80, i1 true)
  %i.pk = trunc nuw nsw i64 %i.pj to i32          ; 2 uses
  %i.pl = or disjoint i32 %i.pi, %i.pk            ; 3 uses
  %i.pm = icmp slt i32 %.2.i79, %i.pl
  br i1 %i.pm, label %.lr.ph.i.i26.i.i.preheader.i, label %._crit_edge.i.i12.i.i.i81

.lr.ph.i.i26.i.i.preheader.i:                     ; preds = %bb.ax
  %i.pn = sext i32 %.2.i79 to i64
  %i.po = shl nsw i64 %i.pn, 4
  %scevgep.i134 = getelementptr i8, ptr %i.mj, i64 %i.po
  %i.pp = xor i32 %.2.i79, -1
  %i.pq = add i32 %i.pi, %i.pp
  %i.pr = add i32 %i.pq, %i.pk
  %i.ps = zext i32 %i.pr to i64
  %i.pt = shl nuw nsw i64 %i.ps, 4
  %i.pu = add nuw nsw i64 %i.pt, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i134, i8 0, i64 %i.pu, i1 false)
  br label %._crit_edge.i.i12.i.i.i81

._crit_edge.i.i12.i.i.i81:                        ; preds = %.lr.ph.i.i26.i.i.preheader.i, %bb.ax
  %i.pv = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !104 ; 2 uses
  %i.py = add i64 %i.px, 8                        ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !105
  %.not.i.i.i.i13.i.i.i82 = icmp ugt i64 %i.py, %i.qa
  br i1 %.not.i.i.i.i13.i.i.i82, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i12.i.i.i81
  %i.qb = load ptr, ptr %i.pv, align 8, !tbaa !106
  %i.qc = getelementptr inbounds i8, ptr %i.qb, i64 %i.px
  store i64 %i.py, ptr %i.pw, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i14.i.i.i83 = load i64, ptr %i.qc, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i84

bb.az:                                            ; preds = %._crit_edge.i.i12.i.i.i81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.qd = load ptr, ptr %0, align 8, !tbaa !108
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  %i.qf = load ptr, ptr %i.qe, align 8
  invoke void %i.qf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.i, i32 noundef 8)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1128

.noexc142:                                        ; preds = %bb.az
  %i.qg = load i64, ptr %i.i, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i84

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i84: ; preds = %.noexc142, %bb.ay
  %.0.i.i.i.i16.i.i.i85 = phi i64 [ %.0.copyload.i.i.i.i.i14.i.i.i83, %bb.ay ], [ %i.qg, %.noexc142 ] ; 5 uses
  %i.qh = icmp sgt i64 %.0.i.i.i.i16.i.i.i85, -1
  %i.qi = srem i64 %.0.i.i.i.i16.i.i.i85, 1000000 ; 2 uses
  %i.qj = sdiv i64 %.0.i.i.i.i16.i.i.i85, 1000000
  %i.qk = icmp eq i64 %i.qi, 0
  %or.cond.i.i.i.i17.i.i.i = or i1 %i.qh, %i.qk
  br i1 %or.cond.i.i.i.i17.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i", label %bb.ba

bb.ba:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i84
  %.nonneg.i.i.i.i18.i.i.i = sub i64 0, %.0.i.i.i.i16.i.i.i85
  %i.ql = udiv i64 %.nonneg.i.i.i.i18.i.i.i, 1000000
  %i.qm = xor i64 %i.ql, -1                       ; 2 uses
  %.neg.i.i.i.i19.i.i.i = mul i64 %i.qm, -1000000
  %i.qn = add i64 %.neg.i.i.i.i19.i.i.i, %.0.i.i.i.i16.i.i.i85
  %i.qo = srem i64 %i.qn, 1000000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i84, %bb.ba
  %.sroa.3.0.in.i.i.i.i21.i.i.i = phi i64 [ %i.qo, %bb.ba ], [ %i.qi, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i84 ]
  %.sroa.0.0.i.i.i.i22.i.i.i = phi i64 [ %i.qm, %bb.ba ], [ %i.qj, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i84 ]
  %.sroa.3.0.i.i.i.i23.i.i.i = mul nsw i64 %.sroa.3.0.in.i.i.i.i21.i.i.i, 1000
  %i.qp = sext i32 %i.pl to i64
  %i.qq = getelementptr inbounds [16 x i8], ptr %i.mj, i64 %i.qp ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i22.i.i.i, ptr %i.qq, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i24.i.i.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store i64 %.sroa.3.0.i.i.i.i23.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i24.i.i.i, align 8, !tbaa !211
  %i.qr = add nsw i32 %i.pl, 1                    ; 2 uses
  %i.qs = add i64 %.011.i11.i.i.i80, -1
  %i.qt = and i64 %i.qs, %.011.i11.i.i.i80        ; 2 uses
  %.not10.i25.i.i.i = icmp eq i64 %i.qt, 0
  br i1 %.not10.i25.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", label %bb.ax, !llvm.loop !1129

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i", %bb.aw, %bb.av
  %.4.i86 = phi i32 [ %2, %bb.av ], [ %2, %bb.aw ], [ %i.qr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i20.i.i.i" ] ; 2 uses
  %i.qu = add nsw i32 %i.mu, 64                   ; 2 uses
  %.not3338.i.i.i.i87 = icmp sgt i32 %i.qu, %i.mv
  br i1 %.not3338.i.i.i.i87, label %._crit_edge.i.i.i.i94, label %.lr.ph.i.i.i.i89

._crit_edge.i.i.i.i94:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i"
  %.5.i95 = phi i32 [ %.4.i86, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ], [ %.11.i92, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ]
  %.not34.i.i.i.i96 = icmp eq i32 %i.ap, %i.mv
  br i1 %.not34.i.i.i.i96, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %bb.bk

.lr.ph.i.i.i.i89:                                 ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %.6.i90 = phi i32 [ %.11.i92, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %.4.i86, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ] ; 4 uses
  %i.qv = phi i32 [ %i.tz, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.qu, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ] ; 2 uses
  %.039.i.i.i.i91 = phi i32 [ %i.qv, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.mu, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ] ; 2 uses
  %i.qw = sdiv i32 %.039.i.i.i.i91, 64            ; 3 uses
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %i.qx
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !211 ; 2 uses
  switch i64 %i.qz, label %.lr.ph.i.i.i.i.i125 [
    i64 -1, label %bb.bb
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i125:                              ; preds = %.lr.ph.i.i.i.i89
  %i.ra = shl nsw i32 %i.qw, 6                    ; 2 uses
  br label %bb.bg

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i89
  %i.rb = shl nsw i32 %i.qw, 6                    ; 3 uses
  %i.rc = add i32 %i.rb, 64
  %i.rd = sext i32 %i.rc to i64
  %.0.off.i.i.i.i112 = add i32 %.039.i.i.i.i91, 127
  %.not36.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i112, 64
  br i1 %.not36.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph35.i.i.i.i.i

.lr.ph35.i.i.i.i.i:                               ; preds = %bb.bb
  %i.re = sext i32 %i.rb to i64
  %i.rf = add i32 %i.rb, -1
  br label %bb.bc

bb.bc:                                            ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i", %.lr.ph35.i.i.i.i.i
  %indvar.i113 = phi i32 [ %indvar.next.i122, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ], [ 0, %.lr.ph35.i.i.i.i.i ] ; 2 uses
  %.7.i114 = phi i32 [ %i.sl, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ], [ %.6.i90, %.lr.ph35.i.i.i.i.i ] ; 3 uses
  %.034.i.i.i.i.i = phi i64 [ %i.sm, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ], [ %i.re, %.lr.ph35.i.i.i.i.i ] ; 3 uses
  %i.rg = trunc i64 %.034.i.i.i.i.i to i32        ; 2 uses
  %i.rh = icmp slt i32 %.7.i114, %i.rg
  br i1 %i.rh, label %.lr.ph.i.i.i.i.i.preheader.i123, label %._crit_edge.i.i.i.i.i.i115

.lr.ph.i.i.i.i.i.preheader.i123:                  ; preds = %bb.bc
  %i.ri = add i32 %i.rf, %indvar.i113
  %i.rj = sext i32 %.7.i114 to i64
  %i.rk = shl nsw i64 %i.rj, 4
  %scevgep43.i124 = getelementptr i8, ptr %i.mj, i64 %i.rk
  %i.rl = sub i32 %i.ri, %.7.i114
  %i.rm = zext i32 %i.rl to i64
  %i.rn = shl nuw nsw i64 %i.rm, 4
  %i.ro = add nuw nsw i64 %i.rn, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep43.i124, i8 0, i64 %i.ro, i1 false)
  br label %._crit_edge.i.i.i.i.i.i115

._crit_edge.i.i.i.i.i.i115:                       ; preds = %.lr.ph.i.i.i.i.i.preheader.i123, %bb.bc
  %i.rp = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16 ; 2 uses
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !104 ; 2 uses
  %i.rs = add i64 %i.rr, 8                        ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i116 = icmp ugt i64 %i.rs, %i.ru
  br i1 %.not.i.i.i.i.i.i.i.i116, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i.i.i115
  %i.rv = load ptr, ptr %i.rp, align 8, !tbaa !106
  %i.rw = getelementptr inbounds i8, ptr %i.rv, i64 %i.rr
  store i64 %i.rs, ptr %i.rq, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i.i.i.i.i117 = load i64, ptr %i.rw, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i118

bb.be:                                            ; preds = %._crit_edge.i.i.i.i.i.i115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  %i.rx = load ptr, ptr %0, align 8, !tbaa !108
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 64
  %i.rz = load ptr, ptr %i.ry, align 8
  invoke void %i.rz(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.l, i32 noundef 8)
          to label %.noexc143 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1128

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_9TimestampEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i118, %bb.bf
  %.sroa.3.0.in.i.i.i.i.i.i.i.i = phi i64 [ %i.si, %bb.bf ], [ %i.sc, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i118 ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %i.sg, %bb.bf ], [ %i.sd, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i118 ]
  %.sroa.3.0.i.i.i.i.i.i.i.i = mul nsw i64 %.sroa.3.0.in.i.i.i.i.i.i.i.i, 1000
  %sext.i.i.i.i.i120 = shl i64 %.034.i.i.i.i.i, 32
  %i.sj = ashr exact i64 %sext.i.i.i.i.i120, 28
  %i.sk = getelementptr inbounds i8, ptr %i.mj, i64 %i.sj ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.sk, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i121 = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store i64 %.sroa.3.0.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i121, align 8, !tbaa !211
  %i.sl = add nsw i32 %i.rg, 1                    ; 2 uses
  %i.sm = add nuw i64 %.034.i.i.i.i.i, 1          ; 2 uses
  %i.sn = icmp ult i64 %i.sm, %i.rd
  %indvar.next.i122 = add i32 %indvar.i113, 1
  br i1 %i.sn, label %bb.bc, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !1130

bb.bg:                                            ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i", %.lr.ph.i.i.i.i.i125
  %.9.i126 = phi i32 [ %.6.i90, %.lr.ph.i.i.i.i.i125 ], [ %i.tw, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i" ] ; 3 uses
  %.01533.i.i.i.i.i = phi i64 [ %i.qz, %.lr.ph.i.i.i.i.i125 ], [ %i.ty, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i" ] ; 3 uses
  %i.so = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01533.i.i.i.i.i, i1 true)
  %i.sp = trunc nuw nsw i64 %i.so to i32          ; 2 uses
  %i.sq = or disjoint i32 %i.ra, %i.sp            ; 3 uses
  %i.sr = icmp slt i32 %.9.i126, %i.sq
  br i1 %i.sr, label %.lr.ph.i29.i.i.i.i.preheader.i, label %._crit_edge.i17.i.i.i.i.i127

.lr.ph.i29.i.i.i.i.preheader.i:                   ; preds = %bb.bg
  %i.ss = sext i32 %.9.i126 to i64
  %i.st = shl nsw i64 %i.ss, 4
  %scevgep47.i133 = getelementptr i8, ptr %i.mj, i64 %i.st
  %i.su = xor i32 %.9.i126, -1
  %i.sv = add i32 %i.ra, %i.su
  %i.sw = add i32 %i.sv, %i.sp
  %i.sx = zext i32 %i.sw to i64
  %i.sy = shl nuw nsw i64 %i.sx, 4
  %i.sz = add nuw nsw i64 %i.sy, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep47.i133, i8 0, i64 %i.sz, i1 false)
  br label %._crit_edge.i17.i.i.i.i.i127

._crit_edge.i17.i.i.i.i.i127:                     ; preds = %.lr.ph.i29.i.i.i.i.preheader.i, %bb.bg
  %i.ta = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16 ; 2 uses
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !104 ; 2 uses
  %i.td = add i64 %i.tc, 8                        ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !105
  %.not.i.i.i18.i.i.i.i.i128 = icmp ugt i64 %i.td, %i.tf
  br i1 %.not.i.i.i18.i.i.i.i.i128, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i17.i.i.i.i.i127
  %i.tg = load ptr, ptr %i.ta, align 8, !tbaa !106
  %i.th = getelementptr inbounds i8, ptr %i.tg, i64 %i.tc
  store i64 %i.td, ptr %i.tb, align 8, !tbaa !104
  %.0.copyload.i.i.i.i19.i.i.i.i.i129 = load i64, ptr %i.th, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i130

bb.bi:                                            ; preds = %._crit_edge.i17.i.i.i.i.i127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  %i.ti = load ptr, ptr %0, align 8, !tbaa !108
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 64
  %i.tk = load ptr, ptr %i.tj, align 8
  invoke void %i.tk(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.k, i32 noundef 8)
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1128

.noexc144:                                        ; preds = %bb.bi
  %i.tl = load i64, ptr %i.k, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i130

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i130: ; preds = %.noexc144, %bb.bh
  %.0.i.i.i21.i.i.i.i.i131 = phi i64 [ %.0.copyload.i.i.i.i19.i.i.i.i.i129, %bb.bh ], [ %i.tl, %.noexc144 ] ; 5 uses
  %i.tm = icmp sgt i64 %.0.i.i.i21.i.i.i.i.i131, -1
  %i.tn = srem i64 %.0.i.i.i21.i.i.i.i.i131, 1000000 ; 2 uses
  %i.to = sdiv i64 %.0.i.i.i21.i.i.i.i.i131, 1000000
  %i.tp = icmp eq i64 %i.tn, 0
  %or.cond.i.i.i22.i.i.i.i.i = or i1 %i.tm, %i.tp
  br i1 %or.cond.i.i.i22.i.i.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i", label %bb.bj

bb.bj:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i130
  %.nonneg.i.i.i23.i.i.i.i.i = sub i64 0, %.0.i.i.i21.i.i.i.i.i131
  %i.tq = udiv i64 %.nonneg.i.i.i23.i.i.i.i.i, 1000000
  %i.tr = xor i64 %i.tq, -1                       ; 2 uses
  %.neg.i.i.i24.i.i.i.i.i = mul i64 %i.tr, -1000000
  %i.ts = add i64 %.neg.i.i.i24.i.i.i.i.i, %.0.i.i.i21.i.i.i.i.i131
  %i.tt = srem i64 %i.ts, 1000000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i130, %bb.bj
  %.sroa.3.0.in.i.i.i25.i.i.i.i.i = phi i64 [ %i.tt, %bb.bj ], [ %i.tn, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i130 ]
  %.sroa.0.0.i.i.i26.i.i.i.i.i = phi i64 [ %i.tr, %bb.bj ], [ %i.to, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i130 ]
  %.sroa.3.0.i.i.i27.i.i.i.i.i = mul nsw i64 %.sroa.3.0.in.i.i.i25.i.i.i.i.i, 1000
  %i.tu = sext i32 %i.sq to i64
  %i.tv = getelementptr inbounds [16 x i8], ptr %i.mj, i64 %i.tu ; 2 uses
  store i64 %.sroa.0.0.i.i.i26.i.i.i.i.i, ptr %i.tv, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i28.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store i64 %.sroa.3.0.i.i.i27.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i28.i.i.i.i.i, align 8, !tbaa !211
  %i.tw = add nsw i32 %i.sq, 1                    ; 2 uses
  %i.tx = add i64 %.01533.i.i.i.i.i, -1
  %i.ty = and i64 %i.tx, %.01533.i.i.i.i.i        ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq i64 %i.ty, 0
  br i1 %.not.i.i.i.i.i132, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.bg, !llvm.loop !1131

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i", %bb.bb, %.lr.ph.i.i.i.i89
  %.11.i92 = phi i32 [ %.6.i90, %.lr.ph.i.i.i.i89 ], [ %.6.i90, %bb.bb ], [ %i.tw, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit30.i.i.i.i.i" ], [ %i.sl, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i.i" ] ; 2 uses
  %i.tz = add nsw i32 %i.qv, 64                   ; 2 uses
  %.not33.i.i.i.i93 = icmp sgt i32 %i.tz, %i.mv
  br i1 %.not33.i.i.i.i93, label %._crit_edge.i.i.i.i94, label %.lr.ph.i.i.i.i89, !llvm.loop !1132

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i94
  %i.ua = ashr i32 %i.ap, 6
  %i.ub = and i32 %i.ap, 63
  %i.uc = zext nneg i32 %i.ub to i64
  %notmask.i36.i.i.i.i97 = shl nsw i64 -1, %i.uc
  %i.ud = xor i64 %notmask.i36.i.i.i.i97, -1
  %i.ue = sext i32 %i.ua to i64
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %i.ue
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !211
  %i.uh = and i64 %i.ug, %i.ud                    ; 2 uses
  %.not.i5.i.i.i98 = icmp eq i64 %i.uh, 0
  br i1 %.not.i5.i.i.i98, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i100

.preheader.i.i.i.i100:                            ; preds = %bb.bk, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"
  %.12.i101 = phi i32 [ %i.vq, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i" ], [ %.5.i95, %bb.bk ] ; 3 uses
  %.011.i.i.i.i102 = phi i64 [ %i.vs, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i" ], [ %i.uh, %bb.bk ] ; 3 uses
  %i.ui = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i102, i1 true)
  %i.uj = trunc nuw nsw i64 %i.ui to i32          ; 2 uses
  %i.uk = or disjoint i32 %i.mv, %i.uj            ; 3 uses
  %i.ul = icmp slt i32 %.12.i101, %i.uk
  br i1 %i.ul, label %.lr.ph.i.i6.i.i.preheader.i110, label %._crit_edge.i.i.i.i.i103

.lr.ph.i.i6.i.i.preheader.i110:                   ; preds = %.preheader.i.i.i.i100
  %i.um = sext i32 %.12.i101 to i64
  %i.un = shl nsw i64 %i.um, 4
  %scevgep51.i111 = getelementptr i8, ptr %i.mj, i64 %i.un
  %i.uo = xor i32 %.12.i101, -1
  %i.up = add i32 %i.mv, %i.uo
  %i.uq = add i32 %i.up, %i.uj
  %i.ur = zext i32 %i.uq to i64
  %i.us = shl nuw nsw i64 %i.ur, 4
  %i.ut = add nuw nsw i64 %i.us, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep51.i111, i8 0, i64 %i.ut, i1 false)
  br label %._crit_edge.i.i.i.i.i103

._crit_edge.i.i.i.i.i103:                         ; preds = %.lr.ph.i.i6.i.i.preheader.i110, %.preheader.i.i.i.i100
  %i.uu = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16 ; 2 uses
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !104 ; 2 uses
  %i.ux = add i64 %i.uw, 8                        ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i104 = icmp ugt i64 %i.ux, %i.uz
  br i1 %.not.i.i.i.i.i.i.i104, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i.i103
  %i.va = load ptr, ptr %i.uu, align 8, !tbaa !106
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 %i.uw
  store i64 %i.ux, ptr %i.uv, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i.i.i.i105 = load i64, ptr %i.vb, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i106

bb.bm:                                            ; preds = %._crit_edge.i.i.i.i.i103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.vc = load ptr, ptr %0, align 8, !tbaa !108
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 64
  %i.ve = load ptr, ptr %i.vd, align 8
  invoke void %i.ve(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.j, i32 noundef 8)
          to label %.noexc145 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1128

.noexc145:                                        ; preds = %bb.bm
  %i.vf = load i64, ptr %i.j, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i106

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i106: ; preds = %.noexc145, %bb.bl
  %.0.i.i.i.i.i.i.i107 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i105, %bb.bl ], [ %i.vf, %.noexc145 ] ; 5 uses
  %i.vg = icmp sgt i64 %.0.i.i.i.i.i.i.i107, -1
  %i.vh = srem i64 %.0.i.i.i.i.i.i.i107, 1000000  ; 2 uses
  %i.vi = sdiv i64 %.0.i.i.i.i.i.i.i107, 1000000
  %i.vj = icmp eq i64 %i.vh, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.vg, %i.vj
  br i1 %or.cond.i.i.i.i.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i", label %bb.bn

bb.bn:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i106
  %.nonneg.i.i.i.i.i.i.i = sub i64 0, %.0.i.i.i.i.i.i.i107
  %i.vk = udiv i64 %.nonneg.i.i.i.i.i.i.i, 1000000
  %i.vl = xor i64 %i.vk, -1                       ; 2 uses
  %.neg.i.i.i.i.i.i.i = mul i64 %i.vl, -1000000
  %i.vm = add i64 %.neg.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i107
  %i.vn = srem i64 %i.vm, 1000000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i106, %bb.bn
  %.sroa.3.0.in.i.i.i.i.i.i.i = phi i64 [ %i.vn, %bb.bn ], [ %i.vh, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i106 ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.vl, %bb.bn ], [ %i.vi, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i106 ]
  %.sroa.3.0.i.i.i.i.i.i.i = mul nsw i64 %.sroa.3.0.in.i.i.i.i.i.i.i, 1000
  %i.vo = sext i32 %i.uk to i64
  %i.vp = getelementptr inbounds [16 x i8], ptr %i.mj, i64 %i.vo ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.vp, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i.i.i.i108 = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i64 %.sroa.3.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i108, align 8, !tbaa !211
  %i.vq = add nuw nsw i32 %i.uk, 1
  %i.vr = add nsw i64 %.011.i.i.i.i102, -1
  %i.vs = and i64 %i.vr, %.011.i.i.i.i102         ; 2 uses
  %.not10.i.i.i.i109 = icmp eq i64 %i.vs, 0
  br i1 %.not10.i.i.i.i109, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i100, !llvm.loop !1129

bb.bo:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readMicrosecondTimestampEPNS0_15ByteInputStreamE.exit.i, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ %i.mn, %.lr.ph.i66 ], [ %indvars.iv.next.i73, %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readMicrosecondTimestampEPNS0_15ByteInputStreamE.exit.i ] ; 2 uses
  %i.vt = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16 ; 2 uses
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !104 ; 2 uses
  %i.vw = add i64 %i.vv, 8                        ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !105
  %.not.i.i.i68 = icmp ugt i64 %i.vw, %i.vy
  br i1 %.not.i.i.i68, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.vz = load ptr, ptr %i.vt, align 8, !tbaa !106
  %i.wa = getelementptr inbounds i8, ptr %i.vz, i64 %i.vv
  store i64 %i.vw, ptr %i.vu, align 8, !tbaa !104
  %.0.copyload.i.i.i.i69 = load i64, ptr %i.wa, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i70

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.wb = load ptr, ptr %0, align 8, !tbaa !108
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 64
  %i.wd = load ptr, ptr %i.wc, align 8
  invoke void %i.wd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.g, i32 noundef 8)
          to label %.noexc146 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1128

.noexc146:                                        ; preds = %bb.bq
  %i.we = load i64, ptr %i.g, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i70

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i70: ; preds = %.noexc146, %bb.bp
  %.0.i.i.i71 = phi i64 [ %.0.copyload.i.i.i.i69, %bb.bp ], [ %i.we, %.noexc146 ] ; 5 uses
  %i.wf = icmp sgt i64 %.0.i.i.i71, -1
  %i.wg = srem i64 %.0.i.i.i71, 1000000           ; 2 uses
  %i.wh = sdiv i64 %.0.i.i.i71, 1000000
  %i.wi = icmp eq i64 %i.wg, 0
  %or.cond.i.i.i = or i1 %i.wf, %i.wi
  br i1 %or.cond.i.i.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readMicrosecondTimestampEPNS0_15ByteInputStreamE.exit.i, label %bb.br

bb.br:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i70
  %.nonneg.i.i.i = sub i64 0, %.0.i.i.i71
  %i.wj = udiv i64 %.nonneg.i.i.i, 1000000
  %i.wk = xor i64 %i.wj, -1                       ; 2 uses
  %.neg.i.i.i = mul i64 %i.wk, -1000000
  %i.wl = add i64 %.neg.i.i.i, %.0.i.i.i71
  %i.wm = srem i64 %i.wl, 1000000
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readMicrosecondTimestampEPNS0_15ByteInputStreamE.exit.i

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readMicrosecondTimestampEPNS0_15ByteInputStreamE.exit.i: ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i70, %bb.br
  %.sroa.3.0.in.i.i.i = phi i64 [ %i.wm, %bb.br ], [ %i.wg, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i70 ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.wk, %bb.br ], [ %i.wh, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i70 ]
  %.sroa.3.0.i.i.i = mul nsw i64 %.sroa.3.0.in.i.i.i, 1000
  %i.wn = getelementptr inbounds [16 x i8], ptr %i.mj, i64 %indvars.iv.i67 ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.wn, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  store i64 %.sroa.3.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i72, align 8, !tbaa !211
  %indvars.iv.next.i73 = add nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.wo = icmp slt i64 %indvars.iv.next.i73, %i.mo
  br i1 %i.wo, label %bb.bo, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, !llvm.loop !1133

bb.bs:                                            ; preds = %bb.an
  %i.wp = load ptr, ptr %1, align 8, !tbaa !163   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, @_ZZN8facebook5velox8UuidType3getEvE9kInstance
  br i1 %i.wq, label %bb.bt, label %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bt:                                            ; preds = %bb.bs
  %i.wr = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.val = load ptr, ptr %8, align 8, !tbaa !234
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_114readUuidValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.wr, i32 noundef %i.au, ptr %.val)
          to label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bs
  %i.ws = icmp eq ptr %i.wp, @_ZZN8facebook5velox13IPAddressType3getEvE9kInstance
  %i.wt = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 3 uses
  %.val44 = load ptr, ptr %8, align 8, !tbaa !234 ; 4 uses
  br i1 %i.ws, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.wt, i32 noundef %i.au, ptr %.val44)
          to label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.wu = getelementptr inbounds nuw i8, ptr %.val44, i64 44
  %i.wv = load i8, ptr %i.wu, align 4, !tbaa !239
  %i.ww = and i8 %i.wv, 2
  %.not.i.i153 = icmp eq i8 %i.ww, 0
  br i1 %.not.i.i153, label %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i154, label %.invoke, !prof !124

.invoke:                                          ; preds = %bb.d, %bb.bv, %bb.ao
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_vE18veloxCheckFailArgs) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i154: ; preds = %bb.bv
  %i.wx = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !240 ; 11 uses
  %.val16.i155 = load ptr, ptr %i.wt, align 8, !tbaa !234
  %i.wz = getelementptr i8, ptr %.val44, i64 24
  %.val.val.i156 = load i64, ptr %i.wz, align 8, !tbaa !325
  invoke fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115checkValuesSizeINS0_9TimestampEEEiRKN5boost13intrusive_ptrINS0_6BufferEEESC_ii(i64 %.val.val.i156, ptr %.val16.i155, i32 noundef %i.an, i32 noundef %2)
          to label %.noexc286 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc286:                                        ; preds = %_ZNK8facebook5velox6Buffer9asMutableINS0_9TimestampEEEPT_v.exit.i154
  %.not.i157 = icmp eq i32 %i.au, 0
  br i1 %.not.i157, label %.preheader.i270, label %bb.bw

.preheader.i270:                                  ; preds = %.noexc286
  %i.xa = icmp sgt i32 %i.an, 0
  br i1 %i.xa, label %.lr.ph.i271, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

.lr.ph.i271:                                      ; preds = %.preheader.i270
  %i.xb = sext i32 %2 to i64
  %i.xc = sext i32 %i.ap to i64
  br label %bb.cv

bb.bw:                                            ; preds = %.noexc286
  %i.xd = load ptr, ptr %i.wt, align 8, !tbaa !234
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !240 ; 4 uses
  %.not.i.i.i.i158 = icmp sgt i32 %i.an, 0
  br i1 %.not.i.i.i.i158, label %bb.bx, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit

bb.bx:                                            ; preds = %bb.bw
  %i.xg = add i32 %2, 63                          ; 2 uses
  %i.xh = srem i32 %i.xg, 64
  %i.xi = sub nsw i32 %i.xg, %i.xh                ; 6 uses
  %i.xj = and i32 %i.ap, -64                      ; 8 uses
  %i.xk = icmp slt i32 %i.xj, %i.xi
  br i1 %i.xk, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.bx
  %i.xl = ashr i32 %i.ap, 6
  %i.xm = and i32 %i.ap, 63
  %i.xn = zext nneg i32 %i.xm to i64
  %notmask.i.i.i.i.i249 = shl nsw i64 -1, %i.xn
  %i.xo = xor i64 %notmask.i.i.i.i.i249, -1
  %i.xp = sub nsw i32 %i.xi, %2                   ; 2 uses
  %i.xq = zext nneg i32 %i.xp to i64
  %notmask.i.i.i.i.i.i250 = shl nsw i64 -1, %i.xq
  %i.xr = xor i64 %notmask.i.i.i.i.i.i250, -1
  %i.xs = sub nsw i32 64, %i.xp
  %i.xt = zext nneg i32 %i.xs to i64
  %i.xu = shl i64 %i.xr, %i.xt
  %i.xv = and i64 %i.xu, %i.xo
  %i.xw = sext i32 %i.xl to i64
  %i.xx = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.xw
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !211
  %i.xz = and i64 %i.xv, %i.xy                    ; 2 uses
  %.not.i28.i.i.i251 = icmp eq i64 %i.xz, 0
  br i1 %.not.i28.i.i.i251, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i29.i.i.i253

.preheader.i29.i.i.i253:                          ; preds = %bb.by, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i41.i.i.i"
  %.027.i254 = phi i32 [ %i.zi, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i41.i.i.i" ], [ %2, %bb.by ] ; 3 uses
  %.011.i32.i.i.i255 = phi i64 [ %i.zk, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i41.i.i.i" ], [ %i.xz, %bb.by ] ; 3 uses
  %i.ya = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i32.i.i.i255, i1 true)
  %i.yb = trunc nuw nsw i64 %i.ya to i32          ; 2 uses
  %i.yc = or disjoint i32 %i.xj, %i.yb            ; 3 uses
  %i.yd = icmp slt i32 %.027.i254, %i.yc
  br i1 %i.yd, label %.lr.ph.i.i47.i.i.preheader.i269, label %._crit_edge.i.i33.i.i.i256

.lr.ph.i.i47.i.i.preheader.i269:                  ; preds = %.preheader.i29.i.i.i253
  %i.ye = sext i32 %.027.i254 to i64
  %i.yf = shl nsw i64 %i.ye, 4
  %scevgep46.i = getelementptr i8, ptr %i.wy, i64 %i.yf
  %i.yg = xor i32 %.027.i254, -1
  %i.yh = add i32 %i.xj, %i.yg
  %i.yi = add i32 %i.yh, %i.yb
  %i.yj = zext i32 %i.yi to i64
  %i.yk = shl nuw nsw i64 %i.yj, 4
  %i.yl = add nuw nsw i64 %i.yk, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep46.i, i8 0, i64 %i.yl, i1 false)
  br label %._crit_edge.i.i33.i.i.i256

._crit_edge.i.i33.i.i.i256:                       ; preds = %.lr.ph.i.i47.i.i.preheader.i269, %.preheader.i29.i.i.i253
  %i.ym = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16 ; 2 uses
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !104 ; 2 uses
  %i.yp = add i64 %i.yo, 8                        ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !105
  %.not.i.i.i.i34.i.i.i257 = icmp ugt i64 %i.yp, %i.yr
  br i1 %.not.i.i.i.i34.i.i.i257, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge.i.i33.i.i.i256
  %i.ys = load ptr, ptr %i.ym, align 8, !tbaa !106
  %i.yt = getelementptr inbounds i8, ptr %i.ys, i64 %i.yo
  store i64 %i.yp, ptr %i.yn, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i35.i.i.i258 = load i64, ptr %i.yt, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i259

bb.ca:                                            ; preds = %._crit_edge.i.i33.i.i.i256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.yu = load ptr, ptr %0, align 8, !tbaa !108
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 64
  %i.yw = load ptr, ptr %i.yv, align 8
  invoke void %i.yw(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i32 noundef 8)
          to label %.noexc287 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1134

.noexc287:                                        ; preds = %bb.ca
  %i.yx = load i64, ptr %i.b, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i259

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i259: ; preds = %.noexc287, %bb.bz
  %.0.i.i.i.i37.i.i.i260 = phi i64 [ %.0.copyload.i.i.i.i.i35.i.i.i258, %bb.bz ], [ %i.yx, %.noexc287 ] ; 5 uses
  %i.yy = icmp sgt i64 %.0.i.i.i.i37.i.i.i260, -1
  %i.yz = srem i64 %.0.i.i.i.i37.i.i.i260, 1000   ; 2 uses
  %i.za = sdiv i64 %.0.i.i.i.i37.i.i.i260, 1000
  %i.zb = icmp eq i64 %i.yz, 0
  %or.cond.i.i.i.i38.i.i.i261 = or i1 %i.yy, %i.zb
  br i1 %or.cond.i.i.i.i38.i.i.i261, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i41.i.i.i", label %bb.cb

bb.cb:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i259
  %.nonneg.i.i.i.i39.i.i.i262 = sub i64 0, %.0.i.i.i.i37.i.i.i260
  %i.zc = udiv i64 %.nonneg.i.i.i.i39.i.i.i262, 1000
  %i.zd = xor i64 %i.zc, -1                       ; 2 uses
  %.neg.i.i.i.i40.i.i.i263 = mul i64 %i.zd, -1000
  %i.ze = add i64 %.neg.i.i.i.i40.i.i.i263, %.0.i.i.i.i37.i.i.i260
  %i.zf = srem i64 %i.ze, 1000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i41.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i41.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i259, %bb.cb
  %.sroa.3.0.in.i.i.i.i42.i.i.i264 = phi i64 [ %i.zf, %bb.cb ], [ %i.yz, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i259 ]
  %.sroa.0.0.i.i.i.i43.i.i.i265 = phi i64 [ %i.zd, %bb.cb ], [ %i.za, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i36.i.i.i259 ]
  %.sroa.3.0.i.i.i.i44.i.i.i266 = mul nsw i64 %.sroa.3.0.in.i.i.i.i42.i.i.i264, 1000000
  %i.zg = sext i32 %i.yc to i64
  %i.zh = getelementptr inbounds [16 x i8], ptr %i.wy, i64 %i.zg ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i43.i.i.i265, ptr %i.zh, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i45.i.i.i267 = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store i64 %.sroa.3.0.i.i.i.i44.i.i.i266, ptr %.sroa.4.0..sroa_idx.i.i45.i.i.i267, align 8, !tbaa !211
  %i.zi = add nuw nsw i32 %i.yc, 1
  %i.zj = add nsw i64 %.011.i32.i.i.i255, -1
  %i.zk = and i64 %i.zj, %.011.i32.i.i.i255       ; 2 uses
  %.not10.i46.i.i.i268 = icmp eq i64 %i.zk, 0
  br i1 %.not10.i46.i.i.i268, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i29.i.i.i253, !llvm.loop !1135

bb.cc:                                            ; preds = %bb.bx
  %.not32.i.i.i.i159 = icmp eq i32 %2, %i.xi
  br i1 %.not32.i.i.i.i159, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.zl = sdiv i32 %2, 64                         ; 2 uses
  %i.zm = sub nsw i32 %i.xi, %2                   ; 2 uses
  %i.zn = zext nneg i32 %i.zm to i64
  %notmask.i.i35.i.i.i.i160 = shl nsw i64 -1, %i.zn
  %i.zo = xor i64 %notmask.i.i35.i.i.i.i160, -1
  %i.zp = sub nsw i32 64, %i.zm
  %i.zq = zext nneg i32 %i.zp to i64
  %i.zr = shl i64 %i.zo, %i.zq
  %i.zs = sext i32 %i.zl to i64
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.zs
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !211
  %i.zv = and i64 %i.zu, %i.zr                    ; 2 uses
  %.not.i7.i.i.i161 = icmp eq i64 %i.zv, 0
  br i1 %.not.i7.i.i.i161, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", label %.preheader.i8.i.i.i162

.preheader.i8.i.i.i162:                           ; preds = %bb.cd
  %i.zw = shl nsw i32 %i.zl, 6                    ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i", %.preheader.i8.i.i.i162
  %.2.i163 = phi i32 [ %2, %.preheader.i8.i.i.i162 ], [ %i.abf, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i" ] ; 3 uses
  %.011.i11.i.i.i164 = phi i64 [ %i.zv, %.preheader.i8.i.i.i162 ], [ %i.abh, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i" ] ; 3 uses
  %i.zx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i11.i.i.i164, i1 true)
  %i.zy = trunc nuw nsw i64 %i.zx to i32          ; 2 uses
  %i.zz = or disjoint i32 %i.zw, %i.zy            ; 3 uses
  %i.aaa = icmp slt i32 %.2.i163, %i.zz
  br i1 %i.aaa, label %.lr.ph.i.i26.i.i.preheader.i247, label %._crit_edge.i.i12.i.i.i165

.lr.ph.i.i26.i.i.preheader.i247:                  ; preds = %bb.ce
  %i.aab = sext i32 %.2.i163 to i64
  %i.aac = shl nsw i64 %i.aab, 4
  %scevgep.i248 = getelementptr i8, ptr %i.wy, i64 %i.aac
  %i.aad = xor i32 %.2.i163, -1
  %i.aae = add i32 %i.zw, %i.aad
  %i.aaf = add i32 %i.aae, %i.zy
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = shl nuw nsw i64 %i.aag, 4
  %i.aai = add nuw nsw i64 %i.aah, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i248, i8 0, i64 %i.aai, i1 false)
  br label %._crit_edge.i.i12.i.i.i165

._crit_edge.i.i12.i.i.i165:                       ; preds = %.lr.ph.i.i26.i.i.preheader.i247, %bb.ce
  %i.aaj = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16 ; 2 uses
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !104 ; 2 uses
  %i.aam = add i64 %i.aal, 8                      ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !105
  %.not.i.i.i.i13.i.i.i166 = icmp ugt i64 %i.aam, %i.aao
  br i1 %.not.i.i.i.i13.i.i.i166, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge.i.i12.i.i.i165
  %i.aap = load ptr, ptr %i.aaj, align 8, !tbaa !106
  %i.aaq = getelementptr inbounds i8, ptr %i.aap, i64 %i.aal
  store i64 %i.aam, ptr %i.aak, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i14.i.i.i167 = load i64, ptr %i.aaq, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i168

bb.cg:                                            ; preds = %._crit_edge.i.i12.i.i.i165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.aar = load ptr, ptr %0, align 8, !tbaa !108
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 64
  %i.aat = load ptr, ptr %i.aas, align 8
  invoke void %i.aat(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i32 noundef 8)
          to label %.noexc288 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1134

.noexc288:                                        ; preds = %bb.cg
  %i.aau = load i64, ptr %i.c, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i168

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i168: ; preds = %.noexc288, %bb.cf
  %.0.i.i.i.i16.i.i.i169 = phi i64 [ %.0.copyload.i.i.i.i.i14.i.i.i167, %bb.cf ], [ %i.aau, %.noexc288 ] ; 5 uses
  %i.aav = icmp sgt i64 %.0.i.i.i.i16.i.i.i169, -1
  %i.aaw = srem i64 %.0.i.i.i.i16.i.i.i169, 1000  ; 2 uses
  %i.aax = sdiv i64 %.0.i.i.i.i16.i.i.i169, 1000
  %i.aay = icmp eq i64 %i.aaw, 0
  %or.cond.i.i.i.i17.i.i.i170 = or i1 %i.aav, %i.aay
  br i1 %or.cond.i.i.i.i17.i.i.i170, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i", label %bb.ch

bb.ch:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i168
  %.nonneg.i.i.i.i18.i.i.i171 = sub i64 0, %.0.i.i.i.i16.i.i.i169
  %i.aaz = udiv i64 %.nonneg.i.i.i.i18.i.i.i171, 1000
  %i.aba = xor i64 %i.aaz, -1                     ; 2 uses
  %.neg.i.i.i.i19.i.i.i172 = mul i64 %i.aba, -1000
  %i.abb = add i64 %.neg.i.i.i.i19.i.i.i172, %.0.i.i.i.i16.i.i.i169
  %i.abc = srem i64 %i.abb, 1000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i168, %bb.ch
  %.sroa.3.0.in.i.i.i.i21.i.i.i173 = phi i64 [ %i.abc, %bb.ch ], [ %i.aaw, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i168 ]
  %.sroa.0.0.i.i.i.i22.i.i.i174 = phi i64 [ %i.aba, %bb.ch ], [ %i.aax, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i15.i.i.i168 ]
  %.sroa.3.0.i.i.i.i23.i.i.i175 = mul nsw i64 %.sroa.3.0.in.i.i.i.i21.i.i.i173, 1000000
  %i.abd = sext i32 %i.zz to i64
  %i.abe = getelementptr inbounds [16 x i8], ptr %i.wy, i64 %i.abd ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i22.i.i.i174, ptr %i.abe, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i24.i.i.i176 = getelementptr inbounds nuw i8, ptr %i.abe, i64 8
  store i64 %.sroa.3.0.i.i.i.i23.i.i.i175, ptr %.sroa.4.0..sroa_idx.i.i24.i.i.i176, align 8, !tbaa !211
  %i.abf = add nsw i32 %i.zz, 1                   ; 2 uses
  %i.abg = add i64 %.011.i11.i.i.i164, -1
  %i.abh = and i64 %i.abg, %.011.i11.i.i.i164     ; 2 uses
  %.not10.i25.i.i.i177 = icmp eq i64 %i.abh, 0
  br i1 %.not10.i25.i.i.i177, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", label %bb.ce, !llvm.loop !1135

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i", %bb.cd, %bb.cc
  %.4.i178 = phi i32 [ %2, %bb.cc ], [ %2, %bb.cd ], [ %i.abf, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i20.i.i.i" ] ; 2 uses
  %i.abi = add nsw i32 %i.xi, 64                  ; 2 uses
  %.not3338.i.i.i.i179 = icmp sgt i32 %i.abi, %i.xj
  br i1 %.not3338.i.i.i.i179, label %._crit_edge.i.i.i.i186, label %.lr.ph.i.i.i.i181

._crit_edge.i.i.i.i186:                           ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i"
  %.5.i187 = phi i32 [ %.4.i178, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ], [ %.11.i184, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ]
  %.not34.i.i.i.i188 = icmp eq i32 %i.ap, %i.xj
  br i1 %.not34.i.i.i.i188, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %bb.cr

.lr.ph.i.i.i.i181:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %.6.i182 = phi i32 [ %.11.i184, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %.4.i178, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ] ; 4 uses
  %i.abj = phi i32 [ %i.aen, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.abi, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ] ; 2 uses
  %.039.i.i.i.i183 = phi i32 [ %i.abj, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.xi, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit27.i.i.i" ] ; 2 uses
  %i.abk = sdiv i32 %.039.i.i.i.i183, 64          ; 3 uses
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.abl
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !211 ; 2 uses
  switch i64 %i.abn, label %.lr.ph.i.i.i.i.i230 [
    i64 -1, label %bb.ci
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i230:                              ; preds = %.lr.ph.i.i.i.i181
  %i.abo = shl nsw i32 %i.abk, 6                  ; 2 uses
  br label %bb.cn

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i181
  %i.abp = shl nsw i32 %i.abk, 6                  ; 3 uses
  %i.abq = add i32 %i.abp, 64
  %i.abr = sext i32 %i.abq to i64
  %.0.off.i.i.i.i209 = add i32 %.039.i.i.i.i183, 127
  %.not36.i.i.i.i.i210 = icmp ult i32 %.0.off.i.i.i.i209, 64
  br i1 %.not36.i.i.i.i.i210, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph35.i.i.i.i.i211

.lr.ph35.i.i.i.i.i211:                            ; preds = %bb.ci
  %i.abs = sext i32 %i.abp to i64
  %i.abt = add i32 %i.abp, -1
  br label %bb.cj

bb.cj:                                            ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i.i", %.lr.ph35.i.i.i.i.i211
  %indvar.i212 = phi i32 [ %indvar.next.i228, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i.i" ], [ 0, %.lr.ph35.i.i.i.i.i211 ] ; 2 uses
  %.7.i213 = phi i32 [ %i.acz, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i.i" ], [ %.6.i182, %.lr.ph35.i.i.i.i.i211 ] ; 3 uses
  %.034.i.i.i.i.i214 = phi i64 [ %i.ada, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i.i" ], [ %i.abs, %.lr.ph35.i.i.i.i.i211 ] ; 3 uses
  %i.abu = trunc i64 %.034.i.i.i.i.i214 to i32    ; 2 uses
  %i.abv = icmp slt i32 %.7.i213, %i.abu
  br i1 %i.abv, label %.lr.ph.i.i.i.i.i.preheader.i229, label %._crit_edge.i.i.i.i.i.i215

.lr.ph.i.i.i.i.i.preheader.i229:                  ; preds = %bb.cj
  %i.abw = add i32 %i.abt, %indvar.i212
  %i.abx = sext i32 %.7.i213 to i64
  %i.aby = shl nsw i64 %i.abx, 4
  %scevgep40.i = getelementptr i8, ptr %i.wy, i64 %i.aby
  %i.abz = sub i32 %i.abw, %.7.i213
  %i.aca = zext i32 %i.abz to i64
  %i.acb = shl nuw nsw i64 %i.aca, 4
  %i.acc = add nuw nsw i64 %i.acb, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep40.i, i8 0, i64 %i.acc, i1 false)
  br label %._crit_edge.i.i.i.i.i.i215

._crit_edge.i.i.i.i.i.i215:                       ; preds = %.lr.ph.i.i.i.i.i.preheader.i229, %bb.cj
  %i.acd = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16 ; 2 uses
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !104 ; 2 uses
  %i.acg = add i64 %i.acf, 8                      ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i216 = icmp ugt i64 %i.acg, %i.aci
  br i1 %.not.i.i.i.i.i.i.i.i216, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i.i215
  %i.acj = load ptr, ptr %i.acd, align 8, !tbaa !106
  %i.ack = getelementptr inbounds i8, ptr %i.acj, i64 %i.acf
  store i64 %i.acg, ptr %i.ace, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i.i.i.i.i217 = load i64, ptr %i.ack, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i218

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i.i.i215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.acl = load ptr, ptr %0, align 8, !tbaa !108
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 64
  %i.acn = load ptr, ptr %i.acm, align 8
  invoke void %i.acn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.f, i32 noundef 8)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1134

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_9TimestampEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i218, %bb.cm
  %.sroa.3.0.in.i.i.i.i.i.i.i.i223 = phi i64 [ %i.acw, %bb.cm ], [ %i.acq, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i218 ]
  %.sroa.0.0.i.i.i.i.i.i.i.i224 = phi i64 [ %i.acu, %bb.cm ], [ %i.acr, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i.i218 ]
  %.sroa.3.0.i.i.i.i.i.i.i.i225 = mul nsw i64 %.sroa.3.0.in.i.i.i.i.i.i.i.i223, 1000000
  %sext.i.i.i.i.i226 = shl i64 %.034.i.i.i.i.i214, 32
  %i.acx = ashr exact i64 %sext.i.i.i.i.i226, 28
  %i.acy = getelementptr inbounds i8, ptr %i.wy, i64 %i.acx ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i224, ptr %i.acy, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i227 = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  store i64 %.sroa.3.0.i.i.i.i.i.i.i.i225, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i227, align 8, !tbaa !211
  %i.acz = add nsw i32 %i.abu, 1                  ; 2 uses
  %i.ada = add nuw i64 %.034.i.i.i.i.i214, 1      ; 2 uses
  %i.adb = icmp ult i64 %i.ada, %i.abr
  %indvar.next.i228 = add i32 %indvar.i212, 1
  br i1 %i.adb, label %bb.cj, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !1136

bb.cn:                                            ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i", %.lr.ph.i.i.i.i.i230
  %.9.i231 = phi i32 [ %.6.i182, %.lr.ph.i.i.i.i.i230 ], [ %i.aek, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i" ] ; 3 uses
  %.01533.i.i.i.i.i232 = phi i64 [ %i.abn, %.lr.ph.i.i.i.i.i230 ], [ %i.aem, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i" ] ; 3 uses
  %i.adc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01533.i.i.i.i.i232, i1 true)
  %i.add = trunc nuw nsw i64 %i.adc to i32        ; 2 uses
  %i.ade = or disjoint i32 %i.abo, %i.add         ; 3 uses
  %i.adf = icmp slt i32 %.9.i231, %i.ade
  br i1 %i.adf, label %.lr.ph.i29.i.i.i.i.preheader.i246, label %._crit_edge.i17.i.i.i.i.i233

.lr.ph.i29.i.i.i.i.preheader.i246:                ; preds = %bb.cn
  %i.adg = sext i32 %.9.i231 to i64
  %i.adh = shl nsw i64 %i.adg, 4
  %scevgep42.i = getelementptr i8, ptr %i.wy, i64 %i.adh
  %i.adi = xor i32 %.9.i231, -1
  %i.adj = add i32 %i.abo, %i.adi
  %i.adk = add i32 %i.adj, %i.add
  %i.adl = zext i32 %i.adk to i64
  %i.adm = shl nuw nsw i64 %i.adl, 4
  %i.adn = add nuw nsw i64 %i.adm, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep42.i, i8 0, i64 %i.adn, i1 false)
  br label %._crit_edge.i17.i.i.i.i.i233

._crit_edge.i17.i.i.i.i.i233:                     ; preds = %.lr.ph.i29.i.i.i.i.preheader.i246, %bb.cn
  %i.ado = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 16 ; 2 uses
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !104 ; 2 uses
  %i.adr = add i64 %i.adq, 8                      ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !105
  %.not.i.i.i18.i.i.i.i.i234 = icmp ugt i64 %i.adr, %i.adt
  br i1 %.not.i.i.i18.i.i.i.i.i234, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %._crit_edge.i17.i.i.i.i.i233
  %i.adu = load ptr, ptr %i.ado, align 8, !tbaa !106
  %i.adv = getelementptr inbounds i8, ptr %i.adu, i64 %i.adq
  store i64 %i.adr, ptr %i.adp, align 8, !tbaa !104
  %.0.copyload.i.i.i.i19.i.i.i.i.i235 = load i64, ptr %i.adv, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i236

bb.cp:                                            ; preds = %._crit_edge.i17.i.i.i.i.i233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.adw = load ptr, ptr %0, align 8, !tbaa !108
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 64
  %i.ady = load ptr, ptr %i.adx, align 8
  invoke void %i.ady(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i32 noundef 8)
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1134

.noexc290:                                        ; preds = %bb.cp
  %i.adz = load i64, ptr %i.e, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i236

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i236: ; preds = %.noexc290, %bb.co
  %.0.i.i.i21.i.i.i.i.i237 = phi i64 [ %.0.copyload.i.i.i.i19.i.i.i.i.i235, %bb.co ], [ %i.adz, %.noexc290 ] ; 5 uses
  %i.aea = icmp sgt i64 %.0.i.i.i21.i.i.i.i.i237, -1
  %i.aeb = srem i64 %.0.i.i.i21.i.i.i.i.i237, 1000 ; 2 uses
  %i.aec = sdiv i64 %.0.i.i.i21.i.i.i.i.i237, 1000
  %i.aed = icmp eq i64 %i.aeb, 0
  %or.cond.i.i.i22.i.i.i.i.i238 = or i1 %i.aea, %i.aed
  br i1 %or.cond.i.i.i22.i.i.i.i.i238, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i", label %bb.cq

bb.cq:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i236
  %.nonneg.i.i.i23.i.i.i.i.i239 = sub i64 0, %.0.i.i.i21.i.i.i.i.i237
  %i.aee = udiv i64 %.nonneg.i.i.i23.i.i.i.i.i239, 1000
  %i.aef = xor i64 %i.aee, -1                     ; 2 uses
  %.neg.i.i.i24.i.i.i.i.i240 = mul i64 %i.aef, -1000
  %i.aeg = add i64 %.neg.i.i.i24.i.i.i.i.i240, %.0.i.i.i21.i.i.i.i.i237
  %i.aeh = srem i64 %i.aeg, 1000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i236, %bb.cq
  %.sroa.3.0.in.i.i.i25.i.i.i.i.i241 = phi i64 [ %i.aeh, %bb.cq ], [ %i.aeb, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i236 ]
  %.sroa.0.0.i.i.i26.i.i.i.i.i242 = phi i64 [ %i.aef, %bb.cq ], [ %i.aec, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i20.i.i.i.i.i236 ]
  %.sroa.3.0.i.i.i27.i.i.i.i.i243 = mul nsw i64 %.sroa.3.0.in.i.i.i25.i.i.i.i.i241, 1000000
  %i.aei = sext i32 %i.ade to i64
  %i.aej = getelementptr inbounds [16 x i8], ptr %i.wy, i64 %i.aei ; 2 uses
  store i64 %.sroa.0.0.i.i.i26.i.i.i.i.i242, ptr %i.aej, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i28.i.i.i.i.i244 = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  store i64 %.sroa.3.0.i.i.i27.i.i.i.i.i243, ptr %.sroa.4.0..sroa_idx.i28.i.i.i.i.i244, align 8, !tbaa !211
  %i.aek = add nsw i32 %i.ade, 1                  ; 2 uses
  %i.ael = add i64 %.01533.i.i.i.i.i232, -1
  %i.aem = and i64 %i.ael, %.01533.i.i.i.i.i232   ; 2 uses
  %.not.i.i.i.i.i245 = icmp eq i64 %i.aem, 0
  br i1 %.not.i.i.i.i.i245, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.cn, !llvm.loop !1137

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSG_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i", %bb.ci, %.lr.ph.i.i.i.i181
  %.11.i184 = phi i32 [ %.6.i182, %.lr.ph.i.i.i.i181 ], [ %.6.i182, %bb.ci ], [ %i.aek, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit30.i.i.i.i.i" ], [ %i.acz, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i.i" ] ; 2 uses
  %i.aen = add nsw i32 %i.abj, 64                 ; 2 uses
  %.not33.i.i.i.i185 = icmp sgt i32 %i.aen, %i.xj
  br i1 %.not33.i.i.i.i185, label %._crit_edge.i.i.i.i186, label %.lr.ph.i.i.i.i181, !llvm.loop !1138

bb.cr:                                            ; preds = %._crit_edge.i.i.i.i186
  %i.aeo = ashr i32 %i.ap, 6
  %i.aep = and i32 %i.ap, 63
  %i.aeq = zext nneg i32 %i.aep to i64
  %notmask.i36.i.i.i.i189 = shl nsw i64 -1, %i.aeq
  %i.aer = xor i64 %notmask.i36.i.i.i.i189, -1
  %i.aes = sext i32 %i.aeo to i64
  %i.aet = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.aes
  %i.aeu = load i64, ptr %i.aet, align 8, !tbaa !211
  %i.aev = and i64 %i.aeu, %i.aer                 ; 2 uses
  %.not.i5.i.i.i190 = icmp eq i64 %i.aev, 0
  br i1 %.not.i5.i.i.i190, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i192

.preheader.i.i.i.i192:                            ; preds = %bb.cr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i"
  %.12.i193 = phi i32 [ %i.age, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i" ], [ %.5.i187, %bb.cr ] ; 3 uses
  %.011.i.i.i.i194 = phi i64 [ %i.agg, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i" ], [ %i.aev, %bb.cr ] ; 3 uses
  %i.aew = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i194, i1 true)
  %i.aex = trunc nuw nsw i64 %i.aew to i32        ; 2 uses
  %i.aey = or disjoint i32 %i.xj, %i.aex          ; 3 uses
  %i.aez = icmp slt i32 %.12.i193, %i.aey
  br i1 %i.aez, label %.lr.ph.i.i6.i.i.preheader.i208, label %._crit_edge.i.i.i.i.i195

.lr.ph.i.i6.i.i.preheader.i208:                   ; preds = %.preheader.i.i.i.i192
  %i.afa = sext i32 %.12.i193 to i64
  %i.afb = shl nsw i64 %i.afa, 4
  %scevgep44.i = getelementptr i8, ptr %i.wy, i64 %i.afb
  %i.afc = xor i32 %.12.i193, -1
  %i.afd = add i32 %i.xj, %i.afc
  %i.afe = add i32 %i.afd, %i.aex
  %i.aff = zext i32 %i.afe to i64
  %i.afg = shl nuw nsw i64 %i.aff, 4
  %i.afh = add nuw nsw i64 %i.afg, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep44.i, i8 0, i64 %i.afh, i1 false)
  br label %._crit_edge.i.i.i.i.i195

._crit_edge.i.i.i.i.i195:                         ; preds = %.lr.ph.i.i6.i.i.preheader.i208, %.preheader.i.i.i.i192
  %i.afi = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16 ; 2 uses
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !104 ; 2 uses
  %i.afl = add i64 %i.afk, 8                      ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i196 = icmp ugt i64 %i.afl, %i.afn
  br i1 %.not.i.i.i.i.i.i.i196, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i.i195
  %i.afo = load ptr, ptr %i.afi, align 8, !tbaa !106
  %i.afp = getelementptr inbounds i8, ptr %i.afo, i64 %i.afk
  store i64 %i.afl, ptr %i.afj, align 8, !tbaa !104
  %.0.copyload.i.i.i.i.i.i.i.i197 = load i64, ptr %i.afp, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i198

bb.ct:                                            ; preds = %._crit_edge.i.i.i.i.i195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.afq = load ptr, ptr %0, align 8, !tbaa !108
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 64
  %i.afs = load ptr, ptr %i.afr, align 8
  invoke void %i.afs(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.d, i32 noundef 8)
          to label %.noexc291 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1134

.noexc291:                                        ; preds = %bb.ct
  %i.aft = load i64, ptr %i.d, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i198

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i198: ; preds = %.noexc291, %bb.cs
  %.0.i.i.i.i.i.i.i199 = phi i64 [ %.0.copyload.i.i.i.i.i.i.i.i197, %bb.cs ], [ %i.aft, %.noexc291 ] ; 5 uses
  %i.afu = icmp sgt i64 %.0.i.i.i.i.i.i.i199, -1
  %i.afv = srem i64 %.0.i.i.i.i.i.i.i199, 1000    ; 2 uses
  %i.afw = sdiv i64 %.0.i.i.i.i.i.i.i199, 1000
  %i.afx = icmp eq i64 %i.afv, 0
  %or.cond.i.i.i.i.i.i.i200 = or i1 %i.afu, %i.afx
  br i1 %or.cond.i.i.i.i.i.i.i200, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i", label %bb.cu

bb.cu:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i198
  %.nonneg.i.i.i.i.i.i.i201 = sub i64 0, %.0.i.i.i.i.i.i.i199
  %i.afy = udiv i64 %.nonneg.i.i.i.i.i.i.i201, 1000
  %i.afz = xor i64 %i.afy, -1                     ; 2 uses
  %.neg.i.i.i.i.i.i.i202 = mul i64 %i.afz, -1000
  %i.aga = add i64 %.neg.i.i.i.i.i.i.i202, %.0.i.i.i.i.i.i.i199
  %i.agb = srem i64 %i.aga, 1000
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i": ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i198, %bb.cu
  %.sroa.3.0.in.i.i.i.i.i.i.i203 = phi i64 [ %i.agb, %bb.cu ], [ %i.afv, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i198 ]
  %.sroa.0.0.i.i.i.i.i.i.i204 = phi i64 [ %i.afz, %bb.cu ], [ %i.afw, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i.i.i.i.i198 ]
  %.sroa.3.0.i.i.i.i.i.i.i205 = mul nsw i64 %.sroa.3.0.in.i.i.i.i.i.i.i203, 1000000
  %i.agc = sext i32 %i.aey to i64
  %i.agd = getelementptr inbounds [16 x i8], ptr %i.wy, i64 %i.agc ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i204, ptr %i.agd, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i.i.i.i.i206 = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  store i64 %.sroa.3.0.i.i.i.i.i.i.i205, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i206, align 8, !tbaa !211
  %i.age = add nuw nsw i32 %i.aey, 1
  %i.agf = add nsw i64 %.011.i.i.i.i194, -1
  %i.agg = and i64 %i.agf, %.011.i.i.i.i194       ; 2 uses
  %.not10.i.i.i.i207 = icmp eq i64 %i.agg, 0
  br i1 %.not10.i.i.i.i207, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, label %.preheader.i.i.i.i192, !llvm.loop !1135

bb.cv:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readTimestampEPNS0_15ByteInputStreamE.exit.i, %.lr.ph.i271
  %indvars.iv.i272 = phi i64 [ %i.xb, %.lr.ph.i271 ], [ %indvars.iv.next.i284, %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readTimestampEPNS0_15ByteInputStreamE.exit.i ] ; 2 uses
  %i.agh = load ptr, ptr %i.z, align 8, !tbaa !100 ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 16 ; 2 uses
  %i.agj = load i64, ptr %i.agi, align 8, !tbaa !104 ; 2 uses
  %i.agk = add i64 %i.agj, 8                      ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !105
  %.not.i.i.i273 = icmp ugt i64 %i.agk, %i.agm
  br i1 %.not.i.i.i273, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.agn = load ptr, ptr %i.agh, align 8, !tbaa !106
  %i.ago = getelementptr inbounds i8, ptr %i.agn, i64 %i.agj
  store i64 %i.agk, ptr %i.agi, align 8, !tbaa !104
  %.0.copyload.i.i.i.i274 = load i64, ptr %i.ago, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i275

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.agp = load ptr, ptr %0, align 8, !tbaa !108
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 64
  %i.agr = load ptr, ptr %i.agq, align 8
  invoke void %i.agr(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i32 noundef 8)
          to label %.noexc292 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !1134

.noexc292:                                        ; preds = %bb.cx
  %i.ags = load i64, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i275

_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i275: ; preds = %.noexc292, %bb.cw
  %.0.i.i.i276 = phi i64 [ %.0.copyload.i.i.i.i274, %bb.cw ], [ %i.ags, %.noexc292 ] ; 5 uses
  %i.agt = icmp sgt i64 %.0.i.i.i276, -1
  %i.agu = srem i64 %.0.i.i.i276, 1000            ; 2 uses
  %i.agv = sdiv i64 %.0.i.i.i276, 1000
  %i.agw = icmp eq i64 %i.agu, 0
  %or.cond.i.i.i277 = or i1 %i.agt, %i.agw
  br i1 %or.cond.i.i.i277, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readTimestampEPNS0_15ByteInputStreamE.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i275
  %.nonneg.i.i.i278 = sub i64 0, %.0.i.i.i276
  %i.agx = udiv i64 %.nonneg.i.i.i278, 1000
  %i.agy = xor i64 %i.agx, -1                     ; 2 uses
  %.neg.i.i.i279 = mul i64 %i.agy, -1000
  %i.agz = add i64 %.neg.i.i.i279, %.0.i.i.i276
  %i.aha = srem i64 %i.agz, 1000
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readTimestampEPNS0_15ByteInputStreamE.exit.i

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readTimestampEPNS0_15ByteInputStreamE.exit.i: ; preds = %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i275, %bb.cy
  %.sroa.3.0.in.i.i.i280 = phi i64 [ %i.aha, %bb.cy ], [ %i.agu, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i275 ]
  %.sroa.0.0.i.i.i281 = phi i64 [ %i.agy, %bb.cy ], [ %i.agv, %_ZN8facebook5velox15ByteInputStream4readIlEET_v.exit.i.i275 ]
  %.sroa.3.0.i.i.i282 = mul nsw i64 %.sroa.3.0.in.i.i.i280, 1000000
  %i.ahb = getelementptr inbounds [16 x i8], ptr %i.wy, i64 %indvars.iv.i272 ; 2 uses
  store i64 %.sroa.0.0.i.i.i281, ptr %i.ahb, align 8, !tbaa !211
  %.sroa.4.0..sroa_idx.i283 = getelementptr inbounds nuw i8, ptr %i.ahb, i64 8
  store i64 %.sroa.3.0.i.i.i282, ptr %.sroa.4.0..sroa_idx.i283, align 8, !tbaa !211
  %indvars.iv.next.i284 = add nsw i64 %indvars.iv.i272, 1 ; 2 uses
  %i.ahc = icmp slt i64 %indvars.iv.next.i284, %i.xc
  br i1 %i.ahc, label %bb.cv, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, !llvm.loop !1139

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit: ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110readValuesINS0_9TimestampEEEvPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_ENK3$_0clEi.exit.i41.i.i.i", %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readTimestampEPNS0_15ByteInputStreamE.exit.i, %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readMicrosecondTimestampEPNS0_15ByteInputStreamE.exit.i, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_130readMicrosecondTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i", %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_121readLosslessTimestampEPNS0_15ByteInputStreamE.exit.i, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i42.i.i.i", %bb.cr, %._crit_edge.i.i.i.i186, %bb.by, %bb.bw, %.preheader.i270, %bb.bk, %._crit_edge.i.i.i.i94, %bb.ar, %bb.ap, %.preheader.i65, %bb.ad, %._crit_edge.i.i.i.i, %bb.g, %bb.e, %.preheader.i, %bb.bu, %bb.bt
  %i.ahd = load ptr, ptr %8, align 8, !tbaa !234  ; 7 uses
  %.not.i293 = icmp eq ptr %i.ahd, null
  br i1 %.not.i293, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 40
  %i.ahf = atomicrmw sub ptr %i.ahe, i32 1 acq_rel, align 4
  %i.ahg = icmp eq i32 %i.ahf, 1
  br i1 %i.ahg, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.cz
  %i.ahh = load ptr, ptr %i.ahd, align 8, !tbaa !108
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 64
  %i.ahj = load ptr, ptr %i.ahi, align 8
  invoke void %i.ahj(ptr noundef nonnull align 8 dereferenceable(64) %i.ahd)
          to label %.noexc.i unwind label %bb.da, !inline_history !4

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !243
  %.not.i.i294 = icmp eq ptr %i.ahl, null
  %i.ahm = load ptr, ptr %i.ahd, align 8, !tbaa !108
  %..i.i = select i1 %.not.i.i294, i64 8, i64 48
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %..i.i
  %i.aho = load ptr, ptr %i.ahn, align 8
  invoke void %i.aho(ptr noundef nonnull align 8 dereferenceable(64) %i.ahd)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.da, !inline_history !4

bb.da:                                            ; preds = %.noexc.i, %.sink.split.i.i
  %i.ahp = landingpad { ptr, i32 }
          catch ptr null
  %i.ahq = extractvalue { ptr, i32 } %i.ahp, 0
  call void @__clang_call_terminate(ptr %i.ahq) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_127readLosslessTimestampValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_.exit, %bb.cz, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10StringViewEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %7) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.153", align 16 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i128, align 16                    ; 4 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.492", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.492", align 16 ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 9 uses
  %i.h = load atomic i8, ptr @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance acquire, align 8, !noalias !1160
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !146

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #22, !noalias !1160
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook5velox12IPPrefixTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(96) @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance)
          to label %bb.d unwind label %bb.e, !noalias !1160

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox7RowTypeD2Ev, ptr nonnull @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance, ptr nonnull @__dso_handle) #22, !noalias !1160 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #22, !noalias !1160
  br label %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40.i, %bb.be, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.e ], [ %.pn73.pn, %bb.be ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i40.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #22, !noalias !1160
  br label %common.resume

_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.b, %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !163
  %i.n = icmp eq ptr %i.m, @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !104  ; 3 uses
  %i.s = add i64 %i.r, 4                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !105
  %.not.i.i76 = icmp ugt i64 %i.s, %i.u           ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br i1 %.not.i.i76, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.r
  store i64 %i.s, ptr %i.q, align 8, !tbaa !104
  %.0.copyload.i.i.i = load i32, ptr %i.w, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.x = load ptr, ptr %0, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.g, i32 noundef 4), !inline_history !1143
  %i.aa = load i32, ptr %i.g, align 4, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit.i

_ZN8facebook5velox15ByteInputStream4readIiEET_v.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %.0.copyload.i.i.i, %bb.g ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ab = icmp eq i32 %4, 0
  %i.ac = select i1 %i.ab, i32 %.0.i.i, i32 %4    ; 3 uses
  %i.ad = load ptr, ptr %7, align 8, !tbaa !192   ; 2 uses
  %i.ae = add nsw i32 %i.ac, %2
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(94) %i.ad, i32 noundef %i.ae, i1 noundef zeroext true), !inline_history !1144
  %i.ai = shl i32 %.0.i.i, 2
  %i.aj = load ptr, ptr %0, align 8, !tbaa !108
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.al = load ptr, ptr %i.ak, align 8
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_114readUuidValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_:bb.a
  %i.fa = xor i64 %notmask.i36.i.i.i, -1
  call fastcc void @"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_114readUuidValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim"(ptr noundef nonnull readonly align 8 dereferenceable(40) %5, i32 noundef %i.ex, i64 noundef %i.fa)
  br label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_114readUuidValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit"

"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_114readUuidValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit": ; preds = %bb.c, %bb.e, %._crit_edge.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readUuidValueEPNS0_15ByteInputStreamE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readUuidValueEPNS0_15ByteInputStreamE.exit ] ; 2 uses
  %i.fb = load ptr, ptr %i.g, align 8, !tbaa !181 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !100 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !104 ; 2 uses
  %i.fg = add i64 %i.ff, 8                        ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !105 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.fg, %i.fi
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !106
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.ff
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !104
  %.0.copyload.i.i.i = load i64, ptr %i.fk, align 1
  br label %_ZN8facebook5velox15ByteInputStream4readImEET_v.exit.i

bb.x:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.fl = load ptr, ptr %i.fb, align 8, !tbaa !108
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull %i.b, i32 noundef 8), !inline_history !1250
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %.pre.i = load ptr, ptr %i.fc, align 8, !tbaa !100 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre7.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !104
  %.phi.trans.insert8.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre9.i = load i64, ptr %.phi.trans.insert8.i, align 8, !tbaa !105
  br label %_ZN8facebook5velox15ByteInputStream4readImEET_v.exit.i

_ZN8facebook5velox15ByteInputStream4readImEET_v.exit.i: ; preds = %bb.x, %bb.w
  %i.fp = phi i64 [ %i.fi, %bb.w ], [ %.pre9.i, %bb.x ]
  %i.fq = phi i64 [ %i.fg, %bb.w ], [ %.pre7.i, %bb.x ] ; 2 uses
  %i.fr = phi ptr [ %i.fd, %bb.w ], [ %.pre.i, %bb.x ] ; 2 uses
  %.0.i.i = phi i64 [ %.0.copyload.i.i.i, %bb.w ], [ %i.fo, %bb.x ]
  %i.fs = add i64 %i.fq, 8                        ; 2 uses
  %.not.i3.i = icmp ugt i64 %i.fs, %i.fp
  br i1 %.not.i3.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readImEET_v.exit.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !106
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.fq
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !104
  %.0.copyload.i.i4.i = load i64, ptr %i.fv, align 1
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readUuidValueEPNS0_15ByteInputStreamE.exit

bb.z:                                             ; preds = %_ZN8facebook5velox15ByteInputStream4readImEET_v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.fw = load ptr, ptr %i.fb, align 8, !tbaa !108
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !1250
  %i.fz = load i64, ptr %i.a, align 8, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readUuidValueEPNS0_15ByteInputStreamE.exit

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readUuidValueEPNS0_15ByteInputStreamE.exit: ; preds = %bb.y, %bb.z
  %.0.i5.i = phi i64 [ %.0.copyload.i.i4.i, %bb.y ], [ %i.fz, %bb.z ]
  %i.ga = zext i64 %.0.i.i to i128
  %i.gb = zext i64 %.0.i5.i to i128
  %i.gc = shl nuw i128 %i.gb, 64
  %i.gd = or disjoint i128 %i.gc, %i.ga
  %i.ge = call noundef i128 @llvm.bswap.i128(i128 %i.gd)
  %i.gf = load ptr, ptr %i.h, align 8, !tbaa !329
  %i.gg = getelementptr [16 x i8], ptr %i.gf, i64 %indvars.iv
  %i.gh = getelementptr [16 x i8], ptr %i.gg, i64 %i.p
  store i128 %i.ge, ptr %i.gh, align 16, !tbaa !268
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1251

.loopexit:                                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_113readUuidValueEPNS0_15ByteInputStreamE.exit, %.preheader, %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_114readUuidValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 noundef %4, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca i128, align 16                    ; 4 uses
  %i.b = alloca i128, align 16                    ; 4 uses
  %i.c = alloca i128, align 16                    ; 4 uses
  %i.d = alloca i128, align 16                    ; 4 uses
  %i.e = alloca i128, align 16                    ; 4 uses
  %i.f = alloca i128, align 16                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !239
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableInEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240  ; 11 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph.preheader, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit"

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.m = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %invariant.gep = getelementptr [16 x i8], ptr %i.k, i64 %i.m
  br label %.lr.ph

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableInEEPT_v.exit
  %.val15 = load ptr, ptr %3, align 8, !tbaa !234
  %i.n = getelementptr i8, ptr %.0.val, i64 24
  %.val.val = load i64, ptr %i.n, align 8, !tbaa !325
  %i.o = tail call fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_115checkValuesSizeInEEiRKN5boost13intrusive_ptrINS0_6BufferEEESB_ii(i64 %.val.val, ptr %.val15, i32 noundef %1, i32 noundef %2) ; 0 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !234
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 4 uses
  %i.s = add nsw i32 %2, %1                       ; 6 uses
  %.not.i.i.i = icmp sgt i32 %1, 0
  br i1 %.not.i.i.i, label %bb.d, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit"

bb.d:                                             ; preds = %bb.c
  %i.t = add i32 %2, 63                           ; 2 uses
  %i.u = srem i32 %i.t, 64
  %i.v = sub nsw i32 %i.t, %i.u                   ; 6 uses
  %i.w = and i32 %i.s, -64                        ; 6 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = ashr i32 %i.s, 6
  %i.z = and i32 %i.s, 63
  %i.aa = zext nneg i32 %i.z to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.aa
  %i.ab = xor i64 %notmask.i.i.i.i, -1
  %i.ac = sub nsw i32 %i.v, %2                    ; 2 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask.i.i.i.i.i, -1
  %i.af = sub nsw i32 64, %i.ac
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl i64 %i.ae, %i.ag
  %i.ai = and i64 %i.ah, %i.ab
  %i.aj = sext i32 %i.y to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !211
  %i.am = and i64 %i.ai, %i.al                    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit", label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.e, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"
  %i.an = phi i32 [ %i.bf, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i" ], [ %2, %bb.e ] ; 3 uses
  %.011.i.i.i.i = phi i64 [ %i.bh, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i" ], [ %i.am, %bb.e ] ; 3 uses
  %i.ao = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = or disjoint i32 %i.w, %i.ap             ; 4 uses
  %i.ar = icmp slt i32 %i.an, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.as = sext i32 %i.an to i64
  %i.at = shl nsw i64 %i.as, 4
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.k, i64 %i.at
  %i.au = xor i32 %i.an, -1
  %i.av = add i32 %i.aq, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 4
  %i.ay = add nuw nsw i64 %i.ax, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i.i.i.i.i, i8 0, i64 %i.ay, i1 false), !tbaa !268
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i
  %.pre-phi.i.i.i.i.i = sext i32 %i.aq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.az = load ptr, ptr %0, align 8, !tbaa !108
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.f, i32 noundef 16), !inline_history !1252
  %i.bc = load i128, ptr %i.f, align 16, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.bd = call noundef i128 @llvm.bswap.i128(i128 %i.bc)
  %i.be = getelementptr inbounds [16 x i8], ptr %i.k, i64 %.pre-phi.i.i.i.i.i
  store i128 %i.bd, ptr %i.be, align 16, !tbaa !268
  %i.bf = add nuw nsw i32 %i.aq, 1
  %i.bg = add nsw i64 %.011.i.i.i.i, -1
  %i.bh = and i64 %i.bg, %.011.i.i.i.i            ; 2 uses
  %.not10.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not10.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit", label %.preheader.i.i.i.i, !llvm.loop !1253

bb.f:                                             ; preds = %bb.d
  %.not32.i.i.i = icmp eq i32 %2, %i.v
  br i1 %.not32.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = sdiv i32 %2, 64                         ; 2 uses
  %i.bj = sub nsw i32 %i.v, %2                    ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %notmask.i.i35.i.i.i = shl nsw i64 -1, %i.bk
  %i.bl = xor i64 %notmask.i.i35.i.i.i, -1
  %i.bm = sub nsw i32 64, %i.bj
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl i64 %i.bl, %i.bn
  %i.bp = sext i32 %i.bi to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !211
  %i.bs = and i64 %i.br, %i.bo                    ; 2 uses
  %.not.i36.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i36.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i", label %.preheader.i37.i.i.i

.preheader.i37.i.i.i:                             ; preds = %bb.g
  %i.bt = shl nsw i32 %i.bi, 6
  br label %bb.h

bb.h:                                             ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i", %.preheader.i37.i.i.i
  %i.bu = phi i32 [ %2, %.preheader.i37.i.i.i ], [ %i.cm, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i" ] ; 3 uses
  %.011.i40.i.i.i = phi i64 [ %i.bs, %.preheader.i37.i.i.i ], [ %i.co, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i" ] ; 3 uses
  %i.bv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40.i.i.i, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = or disjoint i32 %i.bt, %i.bw            ; 4 uses
  %i.by = icmp slt i32 %i.bu, %i.bx
  br i1 %i.by, label %.lr.ph.i.i44.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i"

.lr.ph.i.i44.i.i.i:                               ; preds = %bb.h
  %i.bz = sext i32 %i.bu to i64
  %i.ca = shl nsw i64 %i.bz, 4
  %scevgep.i.i45.i.i.i = getelementptr i8, ptr %i.k, i64 %i.ca
  %i.cb = xor i32 %i.bu, -1
  %i.cc = add i32 %i.bx, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 4
  %i.cf = add nuw nsw i64 %i.ce, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i.i45.i.i.i, i8 0, i64 %i.cf, i1 false), !tbaa !268
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i": ; preds = %.lr.ph.i.i44.i.i.i, %bb.h
  %.pre-phi.i.i42.i.i.i = sext i32 %i.bx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.cg = load ptr, ptr %0, align 8, !tbaa !108
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i32 noundef 16), !inline_history !1252
  %i.cj = load i128, ptr %i.e, align 16, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.ck = call noundef i128 @llvm.bswap.i128(i128 %i.cj)
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.k, i64 %.pre-phi.i.i42.i.i.i
  store i128 %i.ck, ptr %i.cl, align 16, !tbaa !268
  %i.cm = add nsw i32 %i.bx, 1                    ; 2 uses
  %i.cn = add i64 %.011.i40.i.i.i, -1
  %i.co = and i64 %i.cn, %.011.i40.i.i.i          ; 2 uses
  %.not10.i43.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not10.i43.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i", label %bb.h, !llvm.loop !1253

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i", %bb.g, %bb.f
  %.022 = phi i32 [ %2, %bb.f ], [ %2, %bb.g ], [ %i.cm, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i41.i.i.i" ] ; 2 uses
  %i.cp = add nsw i32 %i.v, 64                    ; 2 uses
  %.not3366.i.i.i = icmp sgt i32 %i.cp, %i.w
  br i1 %.not3366.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i"
  %.1 = phi i32 [ %.022, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i" ], [ %.3, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ]
  %.not34.i.i.i = icmp eq i32 %i.s, %i.w
  br i1 %.not34.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit", label %bb.l

.lr.ph.i.i.i:                                     ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"
  %.2 = phi i32 [ %.3, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ], [ %.022, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i" ] ; 4 uses
  %i.cq = phi i32 [ %i.ep, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ], [ %i.cp, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i" ] ; 2 uses
  %.067.i.i.i = phi i32 [ %i.cq, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ], [ %i.v, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i" ] ; 2 uses
  %i.cr = sdiv i32 %.067.i.i.i, 64                ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !211 ; 2 uses
  switch i64 %i.cu, label %.lr.ph.i.i.i.i [
    i64 -1, label %bb.i
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"
  ]

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  %i.cv = shl nsw i32 %i.cr, 6
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.cw = shl nsw i32 %i.cr, 6                    ; 2 uses
  %i.cx = add i32 %i.cw, 64
  %i.cy = sext i32 %i.cx to i64
  %.0.off.i.i.i = add i32 %.067.i.i.i, 127
  %.not34.i.i.i.i = icmp ult i32 %.0.off.i.i.i, 64
  br i1 %.not34.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", label %.lr.ph33.i.i.i.i

.lr.ph33.i.i.i.i:                                 ; preds = %bb.i
  %i.cz = sext i32 %i.cw to i64
  br label %bb.j

bb.j:                                             ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i", %.lr.ph33.i.i.i.i
  %i.da = phi i32 [ %.2, %.lr.ph33.i.i.i.i ], [ %i.dr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i" ] ; 3 uses
  %.032.i.i.i.i = phi i64 [ %i.cz, %.lr.ph33.i.i.i.i ], [ %i.ds, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i" ] ; 3 uses
  %i.db = trunc i64 %.032.i.i.i.i to i32          ; 3 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph.i.i49.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i"

.lr.ph.i.i49.i.i.i:                               ; preds = %bb.j
  %i.dd = sext i32 %i.da to i64
  %i.de = shl nsw i64 %i.dd, 4
  %scevgep.i.i50.i.i.i = getelementptr i8, ptr %i.k, i64 %i.de
  %i.df = xor i32 %i.da, -1
  %i.dg = add i32 %i.db, %i.df
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 4
  %i.dj = add nuw nsw i64 %i.di, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i.i50.i.i.i, i8 0, i64 %i.dj, i1 false), !tbaa !268
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i": ; preds = %.lr.ph.i.i49.i.i.i, %bb.j
  %.pre-phi.i.in.i.i.i.i = shl i64 %.032.i.i.i.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.dk = load ptr, ptr %0, align 8, !tbaa !108
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.d, i32 noundef 16), !inline_history !1254
  %i.dn = load i128, ptr %i.d, align 16, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.do = call noundef i128 @llvm.bswap.i128(i128 %i.dn)
  %i.dp = ashr exact i64 %.pre-phi.i.in.i.i.i.i, 28
  %i.dq = getelementptr inbounds i8, ptr %i.k, i64 %i.dp
  store i128 %i.do, ptr %i.dq, align 16, !tbaa !268
  %i.dr = add nsw i32 %i.db, 1                    ; 2 uses
  %i.ds = add nuw i64 %.032.i.i.i.i, 1            ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cy
  br i1 %i.dt, label %bb.j, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", !llvm.loop !1255

bb.k:                                             ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i", %.lr.ph.i.i.i.i
  %i.du = phi i32 [ %.2, %.lr.ph.i.i.i.i ], [ %i.em, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i" ] ; 3 uses
  %.01531.i.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i.i ], [ %i.eo, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i" ] ; 3 uses
  %i.dv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01531.i.i.i.i, i1 true)
  %i.dw = trunc nuw nsw i64 %i.dv to i32
  %i.dx = or disjoint i32 %i.cv, %i.dw            ; 4 uses
  %i.dy = icmp slt i32 %i.du, %i.dx
  br i1 %i.dy, label %.lr.ph.i20.i.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i"

.lr.ph.i20.i.i.i.i:                               ; preds = %bb.k
  %i.dz = sext i32 %i.du to i64
  %i.ea = shl nsw i64 %i.dz, 4
  %scevgep.i21.i.i.i.i = getelementptr i8, ptr %i.k, i64 %i.ea
  %i.eb = xor i32 %i.du, -1
  %i.ec = add i32 %i.dx, %i.eb
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 4
  %i.ef = add nuw nsw i64 %i.ee, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i21.i.i.i.i, i8 0, i64 %i.ef, i1 false), !tbaa !268
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i": ; preds = %.lr.ph.i20.i.i.i.i, %bb.k
  %.pre-phi.i19.i.i.i.i = sext i32 %i.dx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.eg = load ptr, ptr %0, align 8, !tbaa !108
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i32 noundef 16), !inline_history !1254
  %i.ej = load i128, ptr %i.c, align 16, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.ek = call noundef i128 @llvm.bswap.i128(i128 %i.ej)
  %i.el = getelementptr inbounds [16 x i8], ptr %i.k, i64 %.pre-phi.i19.i.i.i.i
  store i128 %i.ek, ptr %i.el, align 16, !tbaa !268
  %i.em = add nsw i32 %i.dx, 1                    ; 2 uses
  %i.en = add i64 %.01531.i.i.i.i, -1
  %i.eo = and i64 %i.en, %.01531.i.i.i.i          ; 2 uses
  %.not.i51.i.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i51.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", label %bb.k, !llvm.loop !1256

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i", %bb.i, %.lr.ph.i.i.i
  %.3 = phi i32 [ %.2, %.lr.ph.i.i.i ], [ %.2, %bb.i ], [ %i.em, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit27.i.i.i.i" ], [ %i.dr, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i48.i.i.i" ] ; 2 uses
  %i.ep = add nsw i32 %i.cq, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.ep, %i.w
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1257

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.eq = ashr i32 %i.s, 6
  %i.er = and i32 %i.s, 63
  %i.es = zext nneg i32 %i.er to i64
  %notmask.i52.i.i.i = shl nsw i64 -1, %i.es
  %i.et = xor i64 %notmask.i52.i.i.i, -1
  %i.eu = sext i32 %i.eq to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !211
  %i.ex = and i64 %i.ew, %i.et                    ; 2 uses
  %.not.i53.i.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i53.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit", label %.preheader.i54.i.i.i

.preheader.i54.i.i.i:                             ; preds = %bb.l, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i58.i.i.i"
  %i.ey = phi i32 [ %i.fq, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i58.i.i.i" ], [ %.1, %bb.l ] ; 3 uses
  %.011.i57.i.i.i = phi i64 [ %i.fs, %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i58.i.i.i" ], [ %i.ex, %bb.l ] ; 3 uses
  %i.ez = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i57.i.i.i, i1 true)
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = or disjoint i32 %i.w, %i.fa             ; 4 uses
  %i.fc = icmp slt i32 %i.ey, %i.fb
  br i1 %i.fc, label %.lr.ph.i.i61.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i58.i.i.i"

.lr.ph.i.i61.i.i.i:                               ; preds = %.preheader.i54.i.i.i
  %i.fd = sext i32 %i.ey to i64
  %i.fe = shl nsw i64 %i.fd, 4
  %scevgep.i.i62.i.i.i = getelementptr i8, ptr %i.k, i64 %i.fe
  %i.ff = xor i32 %i.ey, -1
  %i.fg = add i32 %i.fb, %i.ff
  %i.fh = zext i32 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 4
  %i.fj = add nuw nsw i64 %i.fi, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep.i.i62.i.i.i, i8 0, i64 %i.fj, i1 false), !tbaa !268
  br label %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i58.i.i.i"

"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i58.i.i.i": ; preds = %.lr.ph.i.i61.i.i.i, %.preheader.i54.i.i.i
  %.pre-phi.i.i59.i.i.i = sext i32 %i.fb to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.fk = load ptr, ptr %0, align 8, !tbaa !108
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i32 noundef 16), !inline_history !1252
  %i.fn = load i128, ptr %i.b, align 16, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.fo = call noundef i128 @llvm.bswap.i128(i128 %i.fn)
  %i.fp = getelementptr inbounds [16 x i8], ptr %i.k, i64 %.pre-phi.i.i59.i.i.i
  store i128 %i.fo, ptr %i.fp, align 16, !tbaa !268
  %i.fq = add nuw nsw i32 %i.fb, 1
  %i.fr = add nsw i64 %.011.i57.i.i.i, -1
  %i.fs = and i64 %i.fr, %.011.i57.i.i.i          ; 2 uses
  %.not10.i60.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not10.i60.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit", label %.preheader.i54.i.i.i, !llvm.loop !1253

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.ft = load ptr, ptr %0, align 8, !tbaa !108
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, i32 noundef 16), !inline_history !1258
  %i.fw = load i128, ptr %i.a, align 16, !tbaa !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.fx = call noundef i128 @llvm.bswap.i128(i128 %i.fw)
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i128 %i.fx, ptr %gep, align 16, !tbaa !268
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit", label %.lr.ph, !llvm.loop !1259

"_ZN8facebook5velox4bits13forEachSetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSE_E3$_0EEvPKmiiT_.exit": ; preds = %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i58.i.i.i", %"_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119readIpAddressValuesEPNS0_15ByteInputStreamEiiRKN5boost13intrusive_ptrINS0_6BufferEEEiSC_ENK3$_0clEi.exit.i.i.i.i", %.lr.ph, %.preheader, %bb.l, %._crit_edge.i.i.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !234    ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = atomicrmw sub ptr %i.b, i32 1 acq_rel, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.sink.split.i, label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit

.sink.split.i:                                    ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !4

.noexc:                                           ; preds = %.sink.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !243
  %.not.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !108
  %..i = select i1 %.not.i, i64 8, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %..i
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit unwind label %bb.c, !inline_history !4

bb.c:                                             ; preds = %.noexc, %.sink.split.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #42
  unreachable

_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit: ; preds = %.noexc, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #16 comdat {
bb.a:
  %.not64 = icmp ult i64 %4, 64
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = and i64 %1, 7                            ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.d = and i64 %3, 7                            ; 6 uses
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1                         ; 2 uses
  %.not61 = icmp eq i64 %i.d, 0
  %i.g = trunc nuw nsw i64 %i.d to i32
  %notmask23.i = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask23.i, 255
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = xor i64 %i.i, -1                         ; 2 uses
  %i.k = sub nuw nsw i64 64, %i.d                 ; 2 uses
  br i1 %.not61, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us
  %i.l = phi i64 [ %i.v, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us.us = phi i64 [ %i.l, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.m = add i64 %.065.us.us, %1
  %i.n = lshr exact i64 %i.m, 3
  %i.o = add i64 %i.n, %i.a
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !211
  %i.r = add i64 %.065.us.us, %3
  %i.s = lshr exact i64 %i.r, 3
  %i.t = add i64 %i.s, %i.c
  %i.u = inttoptr i64 %i.t to ptr
  store i64 %i.q, ptr %i.u, align 8, !tbaa !211
  %i.v = add i64 %i.l, 64                         ; 2 uses
  %.not.us.us = icmp ugt i64 %i.v, %4
  br i1 %.not.us.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, !llvm.loop !1260

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us: ; preds = %.lr.ph.split.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us
  %i.w = phi i64 [ %i.ak, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 64, %.lr.ph.split.us ] ; 3 uses
  %.065.us = phi i64 [ %i.w, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.x = add i64 %.065.us, %1
  %i.y = lshr i64 %i.x, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !211
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !120
  %i.ae = zext i8 %i.ad to i64
  %i.af = tail call i64 @llvm.fshr.i64(i64 %i.ae, i64 %i.ab, i64 %i.b)
  %i.ag = add i64 %.065.us, %3
  %i.ah = lshr exact i64 %i.ag, 3
  %i.ai = add i64 %i.ah, %i.c
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !211
  %i.ak = add i64 %i.w, 64                        ; 2 uses
  %.not.us = icmp ugt i64 %i.ak, %4
  br i1 %.not.us, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us, !llvm.loop !1260

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67: ; preds = %.lr.ph.split, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67
  %i.al = phi i64 [ %i.bh, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ 64, %.lr.ph.split ] ; 3 uses
  %.065.us66 = phi i64 [ %i.al, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.am = add i64 %.065.us66, %1
  %i.an = lshr exact i64 %i.am, 3
  %i.ao = add i64 %i.an, %i.a
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !211 ; 2 uses
  %i.ar = add i64 %.065.us66, %3
  %i.as = lshr i64 %i.ar, 3
  %i.at = add i64 %i.as, %i.c
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !211
  %i.aw = and i64 %i.av, %i.f
  %i.ax = shl i64 %i.aq, %i.d
  %i.ay = or i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.au, align 8, !tbaa !211
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !120
  %i.bb = zext i8 %i.ba to i64
  %i.bc = and i64 %i.bb, %i.j
  %i.bd = lshr i64 %i.aq, %i.k
  %i.be = and i64 %i.bd, %i.i
  %i.bf = or disjoint i64 %i.bc, %i.be
  %i.bg = trunc nuw i64 %i.bf to i8
  store i8 %i.bg, ptr %i.az, align 8, !tbaa !120
  %i.bh = add i64 %i.al, 64                       ; 2 uses
  %.not.us69 = icmp ugt i64 %i.bh, %4
  br i1 %.not.us69, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, !llvm.loop !1260

_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit: ; preds = %.lr.ph.split, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit
  %i.bi = phi i64 [ %i.ci, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ], [ 64, %.lr.ph.split ] ; 3 uses
  %.065 = phi i64 [ %i.bi, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.bj = add i64 %.065, %1
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add i64 %i.bk, %i.a
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !211
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !120
  %i.bq = zext i8 %i.bp to i64
  %i.br = tail call i64 @llvm.fshr.i64(i64 %i.bq, i64 %i.bn, i64 %i.b) ; 2 uses
  %i.bs = add i64 %.065, %3
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add i64 %i.bt, %i.c
  %i.bv = inttoptr i64 %i.bu to ptr               ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !211
  %i.bx = and i64 %i.bw, %i.f
  %i.by = shl i64 %i.br, %i.d
  %i.bz = or i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bv, align 8, !tbaa !211
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !120
  %i.cc = zext i8 %i.cb to i64
  %i.cd = and i64 %i.cc, %i.j
  %i.ce = lshr i64 %i.br, %i.k
  %i.cf = and i64 %i.ce, %i.i
  %i.cg = or disjoint i64 %i.cd, %i.cf
  %i.ch = trunc nuw i64 %i.cg to i8
  store i8 %i.ch, ptr %i.ca, align 8, !tbaa !120
  %i.ci = add i64 %i.bi, 64                       ; 2 uses
  %.not = icmp ugt i64 %i.ci, %4
  br i1 %.not, label %._crit_edge, label %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit, !llvm.loop !1260

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.al, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us67 ], [ %i.w, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us ], [ %i.l, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit.us.us ], [ %i.bi, %_ZN8facebook5velox4bits6detail8loadBitsImEET_PKmmh.exit ] ; 4 uses
end_hunk_6
