Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/graph-visualizer?download=true
inline.NumInlined: 621
inline.NumDeleted: 342
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriterC2ERSoRKNS2_5GraphEPNS1_15NodeOriginTableEPNS0_4ZoneE:bb.a
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter5PrintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str, i64 noundef 11) #17 ; 0 uses
  tail call void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.1, i64 noundef 13) #17 ; 0 uses
  tail call void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.e = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.2, i64 noundef 14) #17 ; 0 uses
  tail call void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter11PrintBlocksEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.g = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.3, i64 noundef 3) #17 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintNodesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::NodeOrigin", align 8 ; 5 uses
  %2 = alloca %"struct.v8::internal::compiler::NodeOriginAsJSON", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::SourcePosition", align 8 ; 4 uses
  %4 = alloca %"struct.v8::internal::compiler::SourcePositionAsJSON", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge62:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph61, %._crit_edge
  %.059 = phi i1 [ true, %.lr.ph61 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.046.058 = phi ptr [ %i.d, %.lr.ph61 ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.j = load ptr, ptr %.sroa.046.058, align 8    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.k, align 4, !noalias !7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.l, align 8, !noalias !7 ; 2 uses
  %.not5355 = icmp eq i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i15
  br i1 %.not5355, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %bb.o, %bb.b
  %.1.lcssa = phi i1 [ %.059, %bb.b ], [ false, %bb.o ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.046.058, i64 8 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %._crit_edge62, label %bb.b

bb.c:                                             ; preds = %.lr.ph, %bb.o
  %.157 = phi i1 [ %.059, %.lr.ph ], [ false, %bb.o ]
  %.sroa.037.056 = phi i32 [ %.sroa.01.0.copyload.i, %.lr.ph ], [ %i.du, %bb.o ] ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = zext i32 %.sroa.037.056 to i64
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.v, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  br i1 %.157, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.4, i64 noundef 2) #17 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.5, i64 noundef 6) #17 ; 0 uses
  %i.ah = lshr i32 %i.ac, 4                       ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 5 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.ai) #17
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  %i.al = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 5 uses
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.7, i64 noundef 9) #17 ; 0 uses
  %i.an = load i8, ptr %i.w, align 4
  %i.ao = call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.an) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.al, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 8
  %i.av = or i32 %i.au, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.as, i32 noundef %i.av) #17
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #17
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.ao, i64 noundef %i.aw) #17 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.8, i64 noundef 2) #17 ; 0 uses
  %i.az = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.9, i64 noundef 11) #17 ; 0 uses
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.o, align 4
  %i.bb = zext i32 %.sroa.0.0.copyload.i25 to i64
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i64 noundef %i.bb) #17
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  %i.be = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.10, i64 noundef 14) #17 ; 0 uses
  %i.bg = call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.w)
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler10turboshaftlsERSoNS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i32 %i.bg) #17
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.11, i64 noundef 1) #17 ; 0 uses
  %i.bj = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @_ZNK2v88internal8compiler15NodeOriginTable13GetNodeOriginEj(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::NodeOrigin") align 8 %1, ptr noundef nonnull align 8 dereferenceable(104) %i.bj, i32 noundef %i.ah) #17
  %i.bk = load i64, ptr %i.i, align 8
  %i.bl = icmp sgt i64 %i.bk, -1
  br i1 %i.bl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull @.str.12, i64 noundef 11) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %1, ptr %2, align 8
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_16NodeOriginAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bp = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 184 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 176 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3
  %.not.i.i = icmp ugt i64 %i.by, %i.ai
  br i1 %.not.i.i, label %_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.bz = lshr i64 %i.ai, 1
  %i.ca = add nuw nsw i64 %i.ai, 32
  %i.cb = add nuw nsw i64 %i.ca, %i.bz            ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 192 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.bw
  %i.cg = ashr exact i64 %i.cf, 3
  %.not.i.i28 = icmp ugt i64 %i.cb, %i.cg
  br i1 %.not.i.i28, label %bb.m, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29, !prof !11

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 noundef %i.cb)
  %.pre.i32 = load ptr, ptr %i.bt, align 8
  %.pre = load ptr, ptr %i.br, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29: ; preds = %bb.m, %bb.l
  %i.ch = phi ptr [ %i.bs, %bb.l ], [ %.pre, %bb.m ] ; 3 uses
  %i.ci = phi ptr [ %i.bu, %bb.l ], [ %.pre.i32, %bb.m ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cb ; 4 uses
  %i.ck = icmp ult ptr %i.ch, %i.cj
  br i1 %i.ck, label %.lr.ph.preheader.i30, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i

.lr.ph.preheader.i30:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29
  %i.cl = ptrtoaddr ptr %i.ch to i64              ; 2 uses
  %i.cm = ptrtoaddr ptr %i.ci to i64
  %i.cn = shl nuw nsw i64 %i.cb, 3
  %5 = add nuw i64 %i.cn, %i.cm
  %i.co = add i64 %i.cl, 8
  %umax.i31 = call i64 @llvm.umax.i64(i64 %5, i64 %i.co)
  %i.cp = xor i64 %i.cl, -1
  %i.cq = add i64 %umax.i31, %i.cp
  %i.cr = and i64 %i.cq, -8
  %i.cs = add i64 %i.cr, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %i.cs, i1 false)
  %.pre63 = load ptr, ptr %i.bt, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i: ; preds = %.lr.ph.preheader.i30, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29
  %i.ct = phi ptr [ %.pre63, %.lr.ph.preheader.i30 ], [ %i.ci, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29 ] ; 3 uses
  %i.cu = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cx
  %i.cz = icmp ult ptr %i.cj, %i.cu
  br i1 %i.cz, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i
  %i.da = ptrtoaddr ptr %i.cj to i64              ; 2 uses
  %6 = add i64 %i.da, 8
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 %6)
  %i.db = xor i64 %i.da, -1
  %i.dc = add i64 %umax.i, %i.db
  %i.dd = and i64 %i.dc, -8
  %i.de = add i64 %i.dd, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 0, i64 %i.de, i1 false)
  %.pre.i.i.pre = load ptr, ptr %i.bt, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %.pre.i.i = phi ptr [ %i.ct, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i ], [ %.pre.i.i.pre, %.lr.ph.preheader.i ]
  store ptr %i.cy, ptr %i.br, align 8
  br label %_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit

_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit: ; preds = %bb.k, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit
  %i.df = phi ptr [ %.pre.i.i, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit ], [ %i.bu, %bb.k ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ai
  %i.dh = load i64, ptr %i.dg, align 8            ; 2 uses
  store i64 %i.dh, ptr %3, align 8
  %.not54 = icmp eq i64 %i.dh, 0
  br i1 %.not54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit
  %i.di = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.13, i64 noundef 19) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %3, ptr %4, align 8
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_20SourcePositionAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(8) %4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit
  %i.dl = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.14, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.dn = load ptr, ptr %i.p, align 8
  %i.do = lshr i32 %.sroa.037.056, 4
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 3
  %i.du = add i32 %i.dt, %.sroa.037.056           ; 2 uses
  %.not53 = icmp eq i32 %i.du, %.sroa.0.0.copyload.i15
  br i1 %.not53, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::SmallVector", align 16 ; 13 uses
  %2 = alloca %"class.v8::base::SmallVector", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.sink16.i.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sink16.i.sroa.gep54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %i.n = shufflevector <2 x ptr> %i.m, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.o = insertelement <2 x ptr> poison, ptr %i.h, i64 0
  %i.p = shufflevector <2 x ptr> %i.o, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge98:                                    ; preds = %._crit_edge93, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph97, %._crit_edge93
  %.02795 = phi i1 [ true, %.lr.ph97 ], [ %.1.lcssa, %._crit_edge93 ] ; 2 uses
  %.sroa.065.094 = phi ptr [ %i.d, %.lr.ph97 ], [ %i.w, %._crit_edge93 ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.065.094, align 8    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.r, align 4, !noalias !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.s, align 8, !noalias !12 ; 2 uses
  %.not8288 = icmp eq i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i31
  br i1 %.not8288, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  br label %bb.c

._crit_edge93:                                    ; preds = %._crit_edge, %bb.b
  %.1.lcssa = phi i1 [ %.02795, %bb.b ], [ %.2.lcssa, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.065.094, i64 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.f
  br i1 %i.x, label %._crit_edge98, label %bb.b

bb.c:                                             ; preds = %.lr.ph92, %._crit_edge
  %.190 = phi i1 [ %.02795, %.lr.ph92 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.056.089 = phi i32 [ %.sroa.01.0.copyload.i, %.lr.ph92 ], [ %i.cu, %._crit_edge ] ; 3 uses
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = zext i32 %.sroa.056.089 to i64
  %i.ab = add i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 7 uses
  %i.ad = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ab, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ak = load i8, ptr %i.ac, align 4
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 3 uses
  %i.aq = load i16, ptr %i.ap, align 2            ; 3 uses
  %i.ar = zext i16 %i.aq to i64                   ; 3 uses
  store <2 x ptr> %i.p, ptr %1, align 16
  store ptr %i.i, ptr %.sink16.i.sroa.gep54, align 16
  %i.as = icmp ugt i16 %i.aq, 32
  br i1 %i.as, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread: ; preds = %bb.c
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 noundef %i.ar)
  %.pre = load ptr, ptr %1, align 16
  br label %.lr.ph.i.i.i.preheader

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit: ; preds = %bb.c
  %.not9.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit
  %i.at = phi ptr [ %.pre, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread ], [ %i.h, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit ] ; 5 uses
  %.idx110.pn = shl nuw nsw i64 %i.ar, 2          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx110.pn
  %i.av = add nsw i64 %.idx110.pn, -4             ; 2 uses
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader115, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ay = ptrtoaddr ptr %i.at to i64
  %i.az = add i64 %i.an, %i.ab
  %i.ba = sub i64 %i.az, %i.ay
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.at, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.ao, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.be ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.ao, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep112, align 4
  %wide.load113 = load <4 x i32>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load113, ptr %i.bg, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader115

.lr.ph.i.i.i.preheader115:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader115, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader115 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader115 ] ; 2 uses
  %i.bi = load i32, ptr %.0810.i.i.i, align 4
  store i32 %i.bi, ptr %.011.i.i.i, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bj, %i.au
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre100 = load ptr, ptr %1, align 16
  br label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit

end_hunk_0
