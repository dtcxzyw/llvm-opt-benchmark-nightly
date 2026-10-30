Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/servermap?download=true
inline.NumInlined: 2220
inline.NumDeleted: 1080
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9ServerMap13initBlockMakeEN4core8vector3dIsEEP13BlockMakeData:bb.a
  %i.q = lshr i48 %i.k, 32
  %i.r = trunc nuw i48 %i.q to i16
  %i.s = add i16 %.sroa.0135.0.copyload, -1
  %i.t = add i16 %i.s, %i.l
  %i.u = add i16 %i.h, -1
  %i.v = add i16 %i.u, %i.o
  %i.w = add i16 %i.j, -1
  %i.x = add i16 %i.w, %i.r
  %.sroa.3.0.insert.ext.i79 = zext i16 %i.x to i48
  %.sroa.3.0.insert.shift.i80 = shl nuw i48 %.sroa.3.0.insert.ext.i79, 32
  %.sroa.2.0.insert.ext.i81 = zext i16 %i.v to i48
  %.sroa.2.0.insert.shift.i82 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i81, 16
  %.sroa.2.0.insert.insert.i83 = or disjoint i48 %.sroa.3.0.insert.shift.i80, %.sroa.2.0.insert.shift.i82
  %.sroa.0.0.insert.ext.i84 = zext i16 %i.t to i48
  %.sroa.0.0.insert.insert.i85 = or disjoint i48 %.sroa.2.0.insert.insert.i83, %.sroa.0.0.insert.ext.i84
  store i48 %.sroa.0.0.insert.insert.i85, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = call { ptr, i8 } @_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 2 dereferenceable(6) %3)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.z, 1
  %i.aa = trunc i8 %.fca.1.extract to i1
  br i1 %i.aa, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !236, !range !227, !noundef !177
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.c, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.c, %bb.d
  %i.ag = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176, !nonnull !177, !align !178 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ah), !inline_history !10
  %.v.i = select i1 %i.ak, i64 976, i64 984
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.27, ptr %i.b, align 8, !tbaa !179
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRKN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 2 dereferenceable(6) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.28, ptr %i.a, align 8, !tbaa !179
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRKN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 2 dereferenceable(6) %4) ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !180 ; 5 uses
  %.not.i86 = icmp eq ptr %i.aq, null
  br i1 %.not.i86, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZTW10infostream.exit
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !187
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !180 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre154 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = phi i64 [ %.pre154, %bb.f ], [ %i.at, %bb.e ]
  %i.az = phi ptr [ %.pre.i, %bb.f ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !193 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !199
  %.not.i1.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 67
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bc)
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef signext i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext 10), !inline_history !12
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i = phi i8 [ %i.bg, %bb.i ], [ %i.bk, %bb.j ]
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext %.0.i.i.i)
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW10infostream.exit, %bb.b
  %i.bn = load i16, ptr %3, align 8, !tbaa !237
  %i.bo = add i16 %i.bn, -1                       ; 5 uses
  %i.bp = load i16, ptr %i.m, align 2, !tbaa !238
  %i.bq = add i16 %i.bp, -1                       ; 5 uses
  %i.br = load i16, ptr %i.p, align 4, !tbaa !239
  %i.bs = add i16 %i.br, -1                       ; 5 uses
  %.sroa.3.0.insert.ext.i87 = zext i16 %i.bs to i48
  %.sroa.3.0.insert.shift.i88 = shl nuw i48 %.sroa.3.0.insert.ext.i87, 32
  %.sroa.2.0.insert.ext.i89 = zext i16 %i.bq to i48
  %.sroa.2.0.insert.shift.i90 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i89, 16
  %.sroa.0.0.insert.ext.i92 = zext i16 %i.bo to i48
  %i.bt = or disjoint i48 %.sroa.2.0.insert.shift.i90, %.sroa.0.0.insert.ext.i92
  %.sroa.0.0.insert.insert.i93 = or disjoint i48 %i.bt, %.sroa.3.0.insert.shift.i88
  %i.bu = load i16, ptr %4, align 8, !tbaa !237   ; 2 uses
  %i.bv = add i16 %i.bu, 1                        ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !238 ; 2 uses
  %i.by = add i16 %i.bx, 1                        ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !239 ; 2 uses
  %i.cb = add i16 %i.ca, 1                        ; 4 uses
  %.sroa.3.0.insert.ext.i94 = zext i16 %i.cb to i48
  %.sroa.3.0.insert.shift.i95 = shl nuw i48 %.sroa.3.0.insert.ext.i94, 32
  %.sroa.2.0.insert.ext.i96 = zext i16 %i.by to i48
  %.sroa.2.0.insert.shift.i97 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i96, 16
  %.sroa.0.0.insert.ext.i99 = zext i16 %i.bv to i48
  %i.cc = or disjoint i48 %.sroa.2.0.insert.shift.i97, %.sroa.0.0.insert.ext.i99
  %.sroa.0.0.insert.insert.i100 = or disjoint i48 %i.cc, %.sroa.3.0.insert.shift.i95
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !229 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 34
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !235
  %i.cg = call i16 @llvm.smax.i16(i16 %i.cf, i16 0)
  %.0.i.i = call i16 @llvm.umin.i16(i16 %i.cg, i16 31007)
  %i.ch = lshr i16 %.0.i.i, 4                     ; 7 uses
  %i.ci = sext i16 %i.bo to i32
  %i.cj = zext nneg i16 %i.ch to i32
  %i.ck = sub nsw i32 0, %i.cj                    ; 6 uses
  %i.cl = icmp slt i32 %i.ci, %i.ck
  %i.cm = icmp slt i16 %i.ch, %i.bo
  %or.cond.i = or i1 %i.cm, %i.cl
  %i.cn = sext i16 %i.bq to i32
  %i.co = icmp slt i32 %i.cn, %i.ck
  %or.cond14.i = or i1 %i.co, %or.cond.i
  %i.cp = icmp slt i16 %i.ch, %i.bq
  %or.cond15.i = or i1 %i.cp, %or.cond14.i
  %i.cq = sext i16 %i.bs to i32
  %i.cr = icmp slt i32 %i.cq, %i.ck
  %i.cs = icmp sgt i16 %i.bs, %i.ch
  %spec.select.i = or i1 %i.cs, %i.cr
  %i.ct = select i1 %or.cond15.i, i1 true, i1 %spec.select.i
  br i1 %i.ct, label %bb.u, label %bb.k

bb.k:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.cu = sext i16 %i.bv to i32
  %i.cv = icmp slt i32 %i.cu, %i.ck
  %i.cw = icmp slt i16 %i.ch, %i.bv
  %or.cond.i105 = or i1 %i.cw, %i.cv
  %i.cx = sext i16 %i.by to i32
  %i.cy = icmp slt i32 %i.cx, %i.ck
  %or.cond14.i106 = or i1 %i.cy, %or.cond.i105
  %i.cz = icmp slt i16 %i.ch, %i.by
  %or.cond15.i107 = or i1 %i.cz, %or.cond14.i106
  %i.da = sext i16 %i.cb to i32
  %i.db = icmp slt i32 %i.da, %i.ck
  %i.dc = icmp sgt i16 %i.cb, %i.ch
  %spec.select.i108 = or i1 %i.dc, %i.db
  %i.dd = select i1 %or.cond15.i107, i1 true, i1 %spec.select.i108
  br i1 %i.dd, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.df = load i64, ptr %i.de, align 8, !tbaa !234
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !502
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dh, ptr noundef nonnull align 8 dereferenceable(6) %3, i64 6, i1 false), !tbaa.struct !242
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.di, ptr noundef nonnull align 8 dereferenceable(6) %4, i64 6, i1 false), !tbaa.struct !242
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !243
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 168
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !503
  %.not144 = icmp sgt i16 %i.bo, %i.bv
  br i1 %.not144, label %._crit_edge146, label %.preheader138.lr.ph

.preheader138.lr.ph:                              ; preds = %bb.l
  %.not76141 = icmp sgt i16 %i.bs, %i.cb
  %.not77139 = icmp sgt i16 %i.bq, %i.by
  %brmerge = select i1 %.not76141, i1 true, i1 %.not77139
  br i1 %brmerge, label %._crit_edge146, label %.preheader138.preheader

.preheader138.preheader:                          ; preds = %.preheader138.lr.ph
  %i.dm = add i16 %i.bx, 1
  %i.dn = add i16 %i.ca, 1
  %i.do = add i16 %i.bu, 1
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.preheader, %._crit_edge143.split
  %.071145 = phi i16 [ %i.dq, %._crit_edge143.split ], [ %i.bo, %.preheader138.preheader ] ; 3 uses
  %.sroa.0.0.insert.ext112 = zext i16 %.071145 to i48
  br label %.preheader

._crit_edge146:                                   ; preds = %._crit_edge143.split, %.preheader138.lr.ph, %bb.l
  %i.dp = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #34 ; 4 uses
  invoke void @_ZN8MMVManipC1EP3Map(ptr noundef nonnull align 8 dereferenceable(88) %i.dp, ptr noundef nonnull %0)
          to label %bb.s unwind label %bb.t

.preheader:                                       ; preds = %.preheader138, %._crit_edge
  %.072142 = phi i16 [ %i.bs, %.preheader138 ], [ %i.dr, %._crit_edge ] ; 3 uses
  %.sroa.7.0.insert.ext127 = zext i16 %.072142 to i48
  %.sroa.7.0.insert.shift128 = shl nuw i48 %.sroa.7.0.insert.ext127, 32
  %invariant.op = or disjoint i48 %.sroa.7.0.insert.shift128, %.sroa.0.0.insert.ext112
  br label %bb.m

._crit_edge143.split:                             ; preds = %._crit_edge
  %i.dq = add i16 %.071145, 1
  %exitcond153.not = icmp eq i16 %.071145, %i.do
  br i1 %exitcond153.not, label %._crit_edge146, label %.preheader138, !llvm.loop !499

._crit_edge:                                      ; preds = %_ZN8MapBlock16setIsUndergroundEb.exit
  %i.dr = add i16 %.072142, 1
  %exitcond152.not = icmp eq i16 %.072142, %i.dn
  br i1 %exitcond152.not, label %._crit_edge143.split, label %.preheader, !llvm.loop !500

bb.m:                                             ; preds = %.preheader, %_ZN8MapBlock16setIsUndergroundEb.exit
  %.073140 = phi i16 [ %i.bq, %.preheader ], [ %i.et, %_ZN8MapBlock16setIsUndergroundEb.exit ] ; 3 uses
  %.sroa.6.0.insert.ext119 = zext i16 %.073140 to i48
  %.sroa.6.0.insert.shift120 = shl nuw nsw i48 %.sroa.6.0.insert.ext119, 16
  %.sroa.0.0.insert.insert114.reass = or disjoint i48 %.sroa.6.0.insert.shift120, %invariant.op ; 3 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef ptr %i.du(ptr noundef nonnull align 8 dereferenceable(608) %0, i48 %.sroa.0.0.insert.insert114.reass, i1 noundef zeroext false) ; 2 uses
  %.not78 = icmp eq ptr %i.dv, null
  br i1 %.not78, label %bb.n, label %_ZN8MapBlock16setIsUndergroundEb.exit

bb.n:                                             ; preds = %bb.m
  %i.dw = call noundef ptr @_ZN9ServerMap11createBlockEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(608) %0, i48 %.sroa.0.0.insert.insert114.reass) ; 10 uses
  %i.dx = load ptr, ptr %i.ab, align 8, !tbaa !115
  %i.dy = call noundef zeroext i1 @_ZN13EmergeManager18isBlockUndergroundEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(480) %i.dx, i48 %.sroa.0.0.insert.insert114.reass)
  %i.dz = zext i1 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 83
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !504
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 66 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !275 ; 2 uses
  %i.ed = icmp ult i16 %i.ec, 4
  br i1 %i.ed, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 4, ptr %i.eb, align 2, !tbaa !275
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 68
  store i32 2, ptr %i.ee, align 4, !tbaa !276
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !277
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 76
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !278
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ei = icmp eq i16 %i.ec, 4
  br i1 %i.ei, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 68 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !276
  %i.el = or i32 %i.ek, 2
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !276
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !279 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 48 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !280
  %.not.i.i.i.i = icmp eq ptr %i.ep, %i.en
  br i1 %.not.i.i.i.i, label %_ZN8MapBlock16setIsUndergroundEb.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.r
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !280
  br label %_ZN8MapBlock16setIsUndergroundEb.exit

_ZN8MapBlock16setIsUndergroundEb.exit:            ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.r, %bb.m
  %.074 = phi ptr [ %i.dv, %bb.m ], [ %i.dw, %bb.r ], [ %i.dw, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.074, i64 14 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !281
  %i.es = add i16 %i.er, 1
  store i16 %i.es, ptr %i.eq, align 2, !tbaa !281
  %i.et = add i16 %.073140, 1
  %exitcond.not = icmp eq i16 %.073140, %i.dm
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !501

bb.s:                                             ; preds = %._crit_edge146
  store ptr %i.dp, ptr %2, align 8, !tbaa !282
  call void @_ZN8MMVManip13initialEmergeEN4core8vector3dIsEES2_b(ptr noundef nonnull align 8 dereferenceable(88) %i.dp, i48 %.sroa.0.0.insert.insert.i93, i48 %.sroa.0.0.insert.insert.i100, i1 noundef zeroext false)
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge146
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 88) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.eu

bb.u:                                             ; preds = %bb.s, %bb.k, %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.s ], [ false, %bb.k ], [ false, %_ZN11StreamProxylsEPFRSoS0_E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i48 @_ZN13EmergeManager18getContainingChunkEN4core8vector3dIsEES2_(i48, i48) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRKN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !187
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !180
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i48, ptr %1, align 2, !tbaa !235 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.75, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.56, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.56, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.57, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN9ServerMap11createBlockEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(608) %0, i48 %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %.sroa.015.0.extract.trunc = trunc i48 %1 to i32
  %.sroa.2.0.extract.shift = lshr i48 %1, 16      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 2 uses
  %tr.sh.diff = trunc nuw i48 %.sroa.2.0.extract.shift to i32
  %.sroa.5.0.insert.shift = and i32 %tr.sh.diff, -65536
  %.sroa.0.0.insert.ext = and i32 %.sroa.015.0.extract.trunc, 65535
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  %i.c = invoke noundef ptr @_ZN9ServerMap12createSectorEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(608) %0, i32 %.sroa.0.0.insert.insert)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN9MapSector20getBlockNoCreateNoExEs(ptr noundef nonnull align 8 dereferenceable(98) %i.c, i16 noundef signext %.sroa.2.0.extract.trunc) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.n, label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI24InvalidPositionException ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI24InvalidPositionException) #30
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { ptr, i32 } %i.e, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #30
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.d, %bb.e
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !176, !nonnull !177, !align !178 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = load ptr, ptr %i.m, align 8
end_hunk_0
