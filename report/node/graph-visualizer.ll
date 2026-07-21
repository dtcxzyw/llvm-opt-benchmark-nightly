inline.NumInlined: 621
inline.NumDeleted: 342
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintNodesEv:bb.a
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.v, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  br i1 %.159, label %bb.e, label %bb.d

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
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
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
  %.pre.i33 = load ptr, ptr %i.bt, align 8        ; 2 uses
  %.pre13.i34 = ptrtoint ptr %.pre.i33 to i64
  %.pre = load ptr, ptr %i.br, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29: ; preds = %bb.m, %bb.l
  %i.ch = phi ptr [ %i.bs, %bb.l ], [ %.pre, %bb.m ] ; 3 uses
  %.pre-phi.i30 = phi i64 [ %i.bw, %bb.l ], [ %.pre13.i34, %bb.m ]
  %i.ci = phi ptr [ %i.bu, %bb.l ], [ %.pre.i33, %bb.m ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cb ; 4 uses
  %i.ck = icmp ult ptr %i.ch, %i.cj
  br i1 %i.ck, label %.lr.ph.preheader.i31, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i

.lr.ph.preheader.i31:                             ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29
  %i.cl = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cb, 3
  %i.cn = add nuw i64 %.pre-phi.i30, %i.cm
  %i.co = add i64 %i.cl, 8
  %umax.i32 = call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.co)
  %i.cp = xor i64 %i.cl, -1
  %i.cq = add i64 %umax.i32, %i.cp
  %i.cr = and i64 %i.cq, -8
  %i.cs = add i64 %i.cr, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %i.cs, i1 false)
  %.pre65 = load ptr, ptr %i.bt, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i: ; preds = %.lr.ph.preheader.i31, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29
  %i.ct = phi ptr [ %.pre65, %.lr.ph.preheader.i31 ], [ %i.ci, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i29 ] ; 3 uses
  %i.cu = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cx
  %i.cz = icmp ult ptr %i.cj, %i.cu
  br i1 %i.cz, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i
  %i.da = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.db = add i64 %i.da, 8
  %umax.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.db)
  %i.dc = xor i64 %i.da, -1
  %i.dd = add i64 %umax.i, %i.dc
  %i.de = and i64 %i.dd, -8
  %i.df = add i64 %i.de, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 0, i64 %i.df, i1 false)
  %.pre.i.i.pre = load ptr, ptr %i.bt, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit

_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %.pre.i.i = phi ptr [ %i.ct, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE14EnsureCapacityEm.exit.i ], [ %.pre.i.i.pre, %.lr.ph.preheader.i ]
  store ptr %i.cy, ptr %i.br, align 8
  br label %_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit

_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit: ; preds = %bb.k, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit
  %i.dg = phi ptr [ %.pre.i.i, %_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm.exit ], [ %i.bu, %bb.k ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ai
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  store i64 %i.di, ptr %3, align 8
  %.not56 = icmp eq i64 %i.di, 0
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit
  %i.dj = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull @.str.13, i64 noundef 19) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %3, ptr %4, align 8
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_20SourcePositionAsJSONE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef nonnull align 8 dereferenceable(8) %4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit
  %i.dm = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.14, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.do = load ptr, ptr %i.p, align 8
  %i.dp = lshr i32 %.sroa.039.058, 4
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 3
  %i.dv = add i32 %i.du, %.sroa.039.058           ; 2 uses
  %.not55 = icmp eq i32 %i.dv, %.sroa.0.0.copyload.i15
  br i1 %.not55, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter10PrintEdgesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.v8::base::SmallVector", align 8 ; 13 uses
  %2 = alloca %"class.v8::base::SmallVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.sink16.i.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sink16.i.sroa.gep54 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

._crit_edge98:                                    ; preds = %._crit_edge93, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph97, %._crit_edge93
  %.095 = phi i1 [ true, %.lr.ph97 ], [ %.1.lcssa, %._crit_edge93 ] ; 2 uses
  %.sroa.065.094 = phi ptr [ %i.d, %.lr.ph97 ], [ %i.t, %._crit_edge93 ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.065.094, align 8    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.o, align 4, !noalias !12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.p, align 8, !noalias !12 ; 2 uses
  %.not8288 = icmp eq i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i31
  br i1 %.not8288, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  br label %bb.c

._crit_edge93:                                    ; preds = %._crit_edge, %bb.b
  %.1.lcssa = phi i1 [ %.095, %bb.b ], [ %.2.lcssa, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.065.094, i64 8 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.f
  br i1 %i.u, label %._crit_edge98, label %bb.b

bb.c:                                             ; preds = %.lr.ph92, %._crit_edge
  %.190 = phi i1 [ %.095, %.lr.ph92 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.056.089 = phi i32 [ %.sroa.01.0.copyload.i, %.lr.ph92 ], [ %i.cp, %._crit_edge ] ; 3 uses
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = zext i32 %.sroa.056.089 to i64
  %i.y = add i64 %i.w, %i.x                       ; 3 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 7 uses
  %i.aa = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.y, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = lshr i32 %i.af, 4                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.ah = load i8, ptr %i.z, align 4
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal8compiler10turboshaftL19kOperationSizeTableE, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ak ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2            ; 3 uses
  %i.ao = zext i16 %i.an to i64                   ; 3 uses
  store ptr %i.h, ptr %1, align 8
  store ptr %i.h, ptr %.sink16.i.sroa.gep, align 8
  store ptr %i.i, ptr %.sink16.i.sroa.gep54, align 8
  %i.ap = icmp ugt i16 %i.an, 32
  br i1 %i.ap, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread: ; preds = %bb.c
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 noundef %i.ao)
  %.pre = load ptr, ptr %1, align 8
  br label %.lr.ph.i.i.i.preheader

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit: ; preds = %bb.c
  %.not9.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit
  %i.aq = phi ptr [ %.pre, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.thread ], [ %i.h, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit ] ; 5 uses
  %.idx110.pn = shl nuw nsw i64 %i.ao, 2          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx110.pn
  %i.as = add nsw i64 %.idx110.pn, -4             ; 2 uses
  %i.at = lshr exact i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader115, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.av = ptrtoaddr ptr %i.aq to i64
  %i.aw = add i64 %i.ak, %i.y
  %i.ax = sub i64 %i.aw, %i.av
  %diff.check = icmp ugt i64 %i.ax, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.aq, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.al, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.bb ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.al, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep112, align 4
  %wide.load113 = load <4 x i32>, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load113, ptr %i.bd, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader115

.lr.ph.i.i.i.preheader115:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader115, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader115 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader115 ] ; 2 uses
  %i.bf = load i32, ptr %.0810.i.i.i, align 4
  store i32 %i.bf, ptr %.011.i.i.i, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.bg, %i.ar
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre100 = load ptr, ptr %1, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit
  %i.bi = phi ptr [ %.pre100, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.h, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.ao ; 4 uses
  store ptr %i.bj, ptr %.sink16.i.sroa.gep, align 8
  %i.bk = load i8, ptr %i.z, align 4
  %.not = icmp eq i8 %i.bk, 78
  br i1 %.not, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

bb.d:                                             ; preds = %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit
  %i.bl = load i16, ptr %i.am, align 2
  %i.bm = icmp eq i16 %i.bl, 3
  br i1 %i.bm, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit: ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bn, align 4 ; 2 uses
  %.not84 = icmp eq i32 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not84, label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEaSEOS7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEaSEOS7_.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.0.0.copyload.i.i43 = load i32, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %.sroa.0.0.copyload.i.i48 = load i32, ptr %i.bp, align 4
  store i32 %.sroa.0.0.copyload.i.i43, ptr %i.j, align 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx, align 4
  store i32 %.sroa.0.0.copyload.i.i48, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %i.j, i64 12, i1 false)
  %i.bq = load ptr, ptr %1, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store ptr %i.br, ptr %.sink16.i.sroa.gep, align 8
  store ptr %i.j, ptr %2, align 8
  store ptr %i.j, ptr %i.k, align 8
  store ptr %i.m, ptr %i.l, align 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.pre101 = load ptr, ptr %1, align 8
  %.pre102 = load ptr, ptr %.sink16.i.sroa.gep, align 8
  br label %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread

_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread: ; preds = %bb.d, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEaSEOS7_.exit, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit
  %i.bs = phi ptr [ %i.bj, %bb.d ], [ %i.bj, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit ], [ %.pre102, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEaSEOS7_.exit ], [ %i.bj, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit ] ; 3 uses
  %i.bt = phi ptr [ %i.bi, %bb.d ], [ %i.bi, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit ], [ %.pre101, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EEaSEOS7_.exit ], [ %i.bi, %_ZSt18uninitialized_copyIPKN2v88internal8compiler10turboshaft7OpIndexEPS4_ET0_T_S9_S8_.exit ] ; 3 uses
  %.not2985 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not2985, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread
  %i.bu = load i32, ptr %i.bt, align 4
  br i1 %.190, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.bv = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.4, i64 noundef 2) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.preheader
  %i.bx = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.15, i64 noundef 10) #17 ; 0 uses
  %i.bz = lshr i32 %i.bu, 4
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 noundef %i.ca) #17
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  %i.cd = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.16, i64 noundef 9) #17 ; 0 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef %i.ag) #17
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.14, i64 noundef 1) #17 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %.not29.peel = icmp eq ptr %i.ch, %i.bs
  br i1 %.not29.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.f, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread
  %.2.lcssa = phi i1 [ %.190, %_ZNK2v88internal8compiler10turboshaft7StoreOp5indexEv.exit.thread ], [ false, %bb.f ], [ false, %.lr.ph.peel.next ] ; 2 uses
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ci = load ptr, ptr %i.s, align 8
  %i.cj = lshr i32 %.sroa.056.089, 4
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = zext i16 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 3
  %i.cp = add i32 %i.co, %.sroa.056.089           ; 2 uses
  %.not82 = icmp eq i32 %i.cp, %.sroa.0.0.copyload.i31
  br i1 %.not82, label %._crit_edge93, label %bb.c

.lr.ph.peel.next:                                 ; preds = %bb.f, %.lr.ph.peel.next
  %.02786 = phi ptr [ %i.dd, %.lr.ph.peel.next ], [ %i.ch, %bb.f ] ; 2 uses
  %i.cq = load i32, ptr %.02786, align 4
  %i.cr = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.cs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.4, i64 noundef 2) #17 ; 0 uses
  %i.ct = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.15, i64 noundef 10) #17 ; 0 uses
  %i.cv = lshr i32 %i.cq, 4
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i64 noundef %i.cw) #17
  %i.cy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  %i.cz = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.16, i64 noundef 9) #17 ; 0 uses
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef %i.ag) #17
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.14, i64 noundef 1) #17 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02786, i64 4 ; 2 uses
  %.not29 = icmp eq ptr %i.dd, %i.bs
  br i1 %.not29, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !20
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft25JSONTurboshaftGraphWriter11PrintBlocksEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.v8::base::SmallVector.18", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.b

._crit_edge32:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph31, %._crit_edge
  %.029 = phi i1 [ true, %.lr.ph31 ], [ false, %._crit_edge ]
  %.sroa.021.028 = phi ptr [ %i.e, %.lr.ph31 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.021.028, align 8    ; 3 uses
  br i1 %.029, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.4, i64 noundef 2) #17 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.5, i64 noundef 6) #17 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %.sroa.0.0.copyload.i17 = load i32, ptr %i.r, align 4
  %i.s = zext i32 %.sroa.0.0.copyload.i17 to i64
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %i.s) #17
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.6, i64 noundef 1) #17 ; 0 uses
  %i.v = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.17, i64 noundef 8) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load i8, ptr %i.x, align 8
  store i8 %i.y, ptr %i.a, align 1
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler10turboshaftlsERSoRKNS2_5Block4KindE(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #17
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.8, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ab = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.18, i64 noundef 16) #17 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  store ptr %i.i, ptr %1, align 8, !alias.scope !22
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !22
  store ptr %i.l, ptr %i.k, align 8, !alias.scope !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.05.i = load ptr, ptr %i.ad, align 8, !noalias !22 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %._crit_edge, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.pre.i = load ptr, ptr %1, align 8, !alias.scope !22 ; 4 uses
  %.pre8.i = load ptr, ptr %i.j, align 8, !alias.scope !22 ; 3 uses
  %i.ae = icmp ne ptr %.pre.i, %.pre8.i
  %.012.i.i.i = getelementptr inbounds i8, ptr %.pre8.i, i64 -8 ; 2 uses
  %i.af = icmp ult ptr %.pre.i, %.012.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.012.i.i.i, %._crit_edge.i ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %i.ag = load ptr, ptr %.0913.i.i.i, align 8
  %i.ah = load ptr, ptr %.014.i.i.i, align 8
  store ptr %i.ah, ptr %.0913.i.i.i, align 8
  store ptr %i.ag, ptr %.014.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  %.0.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i, i64 -8 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %.0.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, !llvm.loop !25

.lr.ph.i:                                         ; preds = %bb.d, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i
  %.07.i = phi ptr [ %.0.i, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i ], [ %.05.i, %bb.d ] ; 2 uses
  %i.ak = load ptr, ptr %i.j, align 8, !alias.scope !22 ; 2 uses
  %i.al = load ptr, ptr %i.k, align 8, !alias.scope !22
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i, !prof !11

bb.e:                                             ; preds = %.lr.ph.i
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !22
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE9push_backES6_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %i.an = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.j, align 8, !alias.scope !22
  store ptr %.07.i, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  %.0.i = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !26

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %1, align 8
  %.pre34 = load ptr, ptr %i.j, align 8
  br label %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit

_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit, %._crit_edge.i
  %i.aq = phi ptr [ %.pre34, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre8.i, %._crit_edge.i ] ; 3 uses
  %i.ar = phi ptr [ %.pre, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit.loopexit ], [ %.pre.i, %._crit_edge.i ] ; 3 uses
  %.not25 = icmp eq ptr %i.ar, %i.aq
  br i1 %.not25, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit
  %.pre35 = load ptr, ptr %0, align 8
  %i.as = load ptr, ptr %i.ar, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.as, i64 52
  %.sroa.0.0.copyload.i18.peel.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.at = zext i32 %.sroa.0.0.copyload.i18.peel.pre to i64
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pre35, i64 noundef %i.at) #17 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.av, %i.aq
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %.lr.ph.peel.next, %bb.d, %bb.f, %_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm8ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.aw = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.20, i64 noundef 2) #17 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.021.028, i64 8 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.g
  br i1 %i.az, label %._crit_edge32, label %bb.b

.lr.ph.peel.next:                                 ; preds = %bb.f, %.lr.ph.peel.next
  %.01427 = phi ptr [ %i.bh, %.lr.ph.peel.next ], [ %i.av, %bb.f ] ; 2 uses
  %i.ba = load ptr, ptr %.01427, align 8
  %i.bb = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.19, i64 noundef 2) #17 ; 0 uses
  %i.bd = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  %.sroa.0.0.copyload.i18 = load i32, ptr %i.be, align 4
  %i.bf = zext i32 %.sroa.0.0.copyload.i18 to i64
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef %i.bf) #17 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01427, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.aq
  br i1 %.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !27
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compiler10turboshaftlsERSoNS2_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4                 ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw [5 x i8], ptr @_ZN2v88internal8compiler10turboshaftL22kOperationEffectsTableE, i64 %i.b ; 2 uses
  %.sroa.0.0.copyload26 = load i32, ptr %i.c, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.d = trunc nuw i8 %.sroa.4.0.copyload to i1
  br i1 %i.d, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.r [
    i8 77, label %bb.c
    i8 78, label %bb.d
    i8 93, label %bb.e
    i8 95, label %bb.f
    i8 72, label %switch.lookup
    i8 100, label %bb.g
    i8 101, label %bb.h
    i8 -85, label %bb.i
    i8 8, label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit
    i8 23, label %bb.j
    i8 24, label %bb.k
    i8 25, label %bb.l
    i8 28, label %bb.m
    i8 29, label %bb.n
    i8 45, label %bb.o
    i8 46, label %bb.p
    i8 50, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = and i8 %i.f, 4                           ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  %spec.select.i = select i1 %.not.i, i8 3, i8 67 ; 2 uses
  %i.h = and i8 %i.f, 64
  %.not2.i = icmp eq i8 %i.h, 0                   ; 3 uses
  %.sroa.0.0.insert.insert.i17.i.i = or disjoint i8 %spec.select.i, 12
  %.sroa.014.1.i = select i1 %.not2.i, i8 %spec.select.i, i8 %.sroa.0.0.insert.insert.i17.i.i
  %.sroa.6.1.i = select i1 %.not2.i, i32 19456, i32 20224
  %.sroa.8.1.i = select i1 %.not2.i, i8 %i.g, i8 4
  %.sroa.8.0.insert.ext.i = zext nneg i8 %.sroa.8.1.i to i32
  %.sroa.8.0.insert.shift.i = shl nuw nsw i32 %.sroa.8.0.insert.ext.i, 16
  %.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.6.1.i
  %.sroa.014.0.insert.ext.i = zext nneg i8 %.sroa.014.1.i to i32
  %.sroa.014.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i, %.sroa.014.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %i.k = and i8 %i.j, 4
  %.not.i1 = icmp eq i8 %i.k, 0
  %spec.select.i2 = select i1 %.not.i1, i8 12, i8 79
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i8, ptr %i.l, align 4, !range !28, !noundef !5 ; 2 uses
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = shl nuw nsw i8 %i.m, 5
  %spec.select60.i = or disjoint i8 %spec.select.i2, %i.o ; 2 uses
  %spec.select61.i = select i1 %i.n, i32 286464, i32 282368
  %i.p = and i8 %i.j, 64
  %.not3.i = icmp eq i8 %i.p, 0
  %i.q = or i8 %spec.select60.i, 3
  %.sroa.021.2.i = select i1 %.not3.i, i8 %spec.select60.i, i8 %i.q
  %.sroa.021.0.insert.ext.i = zext nneg i8 %.sroa.021.2.i to i32
  %.sroa.021.0.insert.insert.i = or disjoint i32 %spec.select61.i, %.sroa.021.0.insert.ext.i
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 8
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.s, align 4
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.t, align 4
  %i.v = zext nneg i8 %i.u to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv, i64 %i.v
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZNK2v88internal8compiler10turboshaft15TaggedBitcastOp7EffectsEv.exit

bb.g:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7
end_hunk_0
