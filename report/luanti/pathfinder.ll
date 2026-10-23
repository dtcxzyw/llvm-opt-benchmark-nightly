Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/pathfinder?download=true
inline.NumInlined: 729
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN10Pathfinder14updateAllCostsEN4core8vector3dIsEES2_ii:bb.a
  %.not.i64 = icmp eq ptr %i.cf, null
  br i1 %.not.i64, label %.thread99, label %bb.p

bb.p:                                             ; preds = %_ZN11StreamProxylsIRiEERS_OT_.exit
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !34
  %i.ch = getelementptr i8, ptr %i.cg, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !132
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %.pre.i65 = load ptr, ptr %i.ce, align 8, !tbaa !125 ; 2 uses
  %.pre = load ptr, ptr %.pre.i65, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre118 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cn = phi i64 [ %.pre118, %bb.q ], [ %i.ci, %bb.p ]
  %i.co = phi ptr [ %.pre.i65, %bb.q ], [ %i.cf, %bb.p ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !138 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !143
  %.not.i1.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i1.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 67
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !144
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cr)
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !34
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef signext i8 %i.cy(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.t, %bb.u
  %.0.i.i.i = phi i8 [ %i.cv, %bb.t ], [ %i.cz, %bb.u ]
  %i.da = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.co, i8 noundef signext %.0.i.i.i)
  %i.db = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da) ; 0 uses
  br label %.thread99

bb.v:                                             ; preds = %bb.j
  %i.dc = add nsw i32 %.sroa.866.0, %3            ; 3 uses
  %i.dd = load i32, ptr %i.ae, align 4, !tbaa !39 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  %i.df = icmp slt i32 %i.dd, %i.dc
  %or.cond = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !153 ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0
  %i.dj = icmp sgt i32 %i.dh, %i.dc
  %or.cond59 = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond59, label %bb.x, label %.thread99

bb.x:                                             ; preds = %bb.w
  %.sroa.08.0.copyload = load i48, ptr %5, align 8, !tbaa !37
  %.neg = mul i32 %.sroa.14.0, -65536
  %.sroa.4.0.insert.shift.i = zext i32 %.neg to i48
  %.sroa.4.0.insert.insert.i = sub i48 %.sroa.4.0.insert.shift.i, %.sroa.10.0.insert.shift78
  %i.dk = sub i16 0, %.sroa.067.0.copyload
  %.sroa.01.0.insert.ext.i = zext i16 %i.dk to i48
  %.sroa.01.0.insert.insert.i = or disjoint i48 %.sroa.4.0.insert.insert.i, %.sroa.01.0.insert.ext.i
  %i.dl = call noundef zeroext i1 @_ZN10Pathfinder14updateAllCostsEN4core8vector3dIsEES2_ii(ptr noundef nonnull align 8 dereferenceable(80) %0, i48 %.sroa.08.0.copyload, i48 %.sroa.01.0.insert.insert.i, i32 noundef %i.dc, i32 noundef %i.l)
  %spec.select = select i1 %i.dl, i1 true, i1 %.046116
  br label %.thread99

.thread99:                                        ; preds = %bb.w, %bb.i, %bb.x, %bb.g, %bb.h, %_ZN11StreamProxylsIRiEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.450.ph = phi i1 [ %.046116, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %.046116, %_ZN11StreamProxylsIRiEERS_OT_.exit ], [ %.046116, %bb.h ], [ %.046116, %bb.g ], [ %.046116, %bb.w ], [ %.046116, %bb.i ], [ %spec.select, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit

.thread:                                          ; preds = %bb.c, %bb.f, %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit, %.thread99
  %.85493 = phi i1 [ %.046116, %bb.c ], [ %.450.ph, %.thread99 ], [ %.046116, %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit ], [ %.046116, %bb.f ] ; 2 uses
  %.056.add = add nuw nsw i64 %.056.idx115, 6     ; 2 uses
  %.not = icmp eq i64 %.056.add, 24
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %.thread, %bb.y, %bb.b
  %.10 = phi i1 [ true, %bb.b ], [ false, %bb.y ], [ %.85493, %.thread ]
  ret i1 %.10
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN10Pathfinder19updateCostHeuristicEN4core8vector3dIsEES2_(ptr noundef nonnull align 8 dereferenceable(80) %0, i48 %1, i48 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::priority_queue", align 8 ; 13 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %5 = alloca %class.PathCost, align 4            ; 8 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = ptrtoint ptr %0 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i64 %i.d, ptr %i.c, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %.sroa.0.0.extract.trunc.i = trunc i48 %1 to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 3 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !145  ; 2 uses
  %i.g = add i16 %i.f, %.sroa.0.0.extract.trunc.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !146  ; 2 uses
  %i.j = add i16 %i.i, %.sroa.2.0.extract.trunc.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !147  ; 2 uses
  %i.m = add i16 %i.l, %.sroa.3.0.extract.trunc.i
  %.sroa.3.0.insert.ext.i.i = zext i16 %i.m to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.j to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.g to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %4, align 8
  %.sroa.0.0.extract.trunc.i100 = trunc i48 %2 to i16
  %.sroa.2.0.extract.shift.i101 = lshr i48 %2, 16
  %.sroa.2.0.extract.trunc.i102 = trunc i48 %.sroa.2.0.extract.shift.i101 to i16
  %.sroa.3.0.extract.shift.i103 = lshr i48 %2, 32
  %.sroa.3.0.extract.trunc.i104 = trunc nuw i48 %.sroa.3.0.extract.shift.i103 to i16
  %i.n = add i16 %i.f, %.sroa.0.0.extract.trunc.i100 ; 3 uses
  %i.o = add i16 %i.i, %.sroa.2.0.extract.trunc.i102
  %i.p = add i16 %i.l, %.sroa.3.0.extract.trunc.i104 ; 3 uses
  invoke void @_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(6) %4)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef nonnull align 4 dereferenceable(92) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i48 %1)
          to label %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !148 ; 3 uses

_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 1, ptr %i.v, align 2, !tbaa !152
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !184  ; 2 uses
  %.sroa.0.0.extract.trunc..i = call i16 @llvm.smin.i16(i16 %i.y, i16 %i.n)
  %i.z = call i16 @llvm.smax.i16(i16 %i.y, i16 %i.n)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !185 ; 2 uses
  %i.ac = call i16 @llvm.smin.i16(i16 %i.ab, i16 %i.p)
  %i.ad = call i16 @llvm.smax.i16(i16 %i.ab, i16 %i.p)
  %i.ae = sext i16 %i.ac to i32
  %i.af = sext i16 %i.z to i32
  %i.ag = sext i16 %.sroa.0.0.extract.trunc..i to i32
  %i.ah = sext i16 %i.ad to i32
  %i.ai = add nsw i32 %i.ag, %i.ae
  %i.aj = sub nsw i32 %i.af, %i.ai
  %i.ak = add nsw i32 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !164
  %i.am = load ptr, ptr %3, align 8, !tbaa !182   ; 3 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !182 ; 2 uses
  %.not225 = icmp eq ptr %i.am, %i.an
  br i1 %.not225, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit
  %i.at = phi ptr [ %i.an, %.lr.ph ], [ %i.fs, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit ] ; 3 uses
  %i.au = phi ptr [ %i.am, %.lr.ph ], [ %i.fr, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit ] ; 6 uses
  %.sroa.0171.0.copyload = load i16, ptr %i.au, align 2, !tbaa !37 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.sroa.9.0.copyload = load i16, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !37 ; 4 uses
  %.sroa.12181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.sroa.12181.0.copyload = load i16, ptr %.sroa.12181.0..sroa_idx, align 2, !tbaa !37 ; 4 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = icmp sgt i64 %i.ax, 6
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !183
  %i.az = getelementptr inbounds i8, ptr %i.at, i64 -6 ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load i48, ptr %i.az, align 2, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.az, ptr noundef nonnull align 2 dereferenceable(6) %i.au, i64 6, i1 false), !tbaa.struct !38
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = sdiv exact i64 %i.bb, 6
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4core8vector3dIsEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterI26PathfinderCompareHeuristicEEEvT_T0_SF_T1_T2_(ptr nonnull %i.au, i64 noundef 0, i64 noundef %i.bc, i48 %.sroa.03.0.copyload.i.i.i, ptr %.sroa.0.0.copyload.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !156
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.noexc
  %i.bd = phi ptr [ %i.at, %bb.c ], [ %.pre.i, %.noexc ]
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -6
  store ptr %i.be, ptr %i.a, align 8, !tbaa !156
  %.sroa.12181.0.insert.ext182 = zext i16 %.sroa.12181.0.copyload to i48
  %.sroa.12181.0.insert.shift183 = shl nuw i48 %.sroa.12181.0.insert.ext182, 32
  %.sroa.9.0.insert.ext176 = zext i16 %.sroa.9.0.copyload to i48
  %.sroa.9.0.insert.shift177 = shl nuw nsw i48 %.sroa.9.0.insert.ext176, 16
  %.sroa.0171.0.insert.ext173 = zext i16 %.sroa.0171.0.copyload to i48
  %7 = or disjoint i48 %.sroa.9.0.insert.shift177, %.sroa.0171.0.insert.ext173
  %.sroa.0171.0.insert.insert175 = or disjoint i48 %7, %.sroa.12181.0.insert.shift183
  %i.bf = load i16, ptr %i.e, align 2, !tbaa !145
  %i.bg = sub i16 %.sroa.0171.0.copyload, %i.bf   ; 2 uses
  %i.bh = load i16, ptr %i.h, align 8, !tbaa !146
  %i.bi = sub i16 %.sroa.9.0.copyload, %i.bh
  %i.bj = load i16, ptr %i.k, align 2, !tbaa !147
  %i.bk = sub i16 %.sroa.12181.0.copyload, %i.bj  ; 3 uses
  %.sroa.3.0.insert.ext.i.i118 = zext i16 %i.bk to i48
  %.sroa.3.0.insert.shift.i.i119 = shl nuw i48 %.sroa.3.0.insert.ext.i.i118, 32
  %.sroa.2.0.insert.ext.i.i120 = zext i16 %i.bi to i48
  %.sroa.2.0.insert.shift.i.i121 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i120, 16
  %.sroa.2.0.insert.insert.i.i122 = or disjoint i48 %.sroa.3.0.insert.shift.i.i119, %.sroa.2.0.insert.shift.i.i121 ; 2 uses
  %.sroa.0.0.insert.ext.i.i123 = zext i16 %i.bg to i48 ; 2 uses
  %.sroa.0.0.insert.insert.i.i124 = or disjoint i48 %.sroa.2.0.insert.insert.i.i122, %.sroa.0.0.insert.ext.i.i123
  %i.bl = sext i16 %i.bg to i32
  %i.bm = load i32, ptr %0, align 8, !tbaa !42
  %i.bn = icmp sgt i32 %i.bm, %i.bl
  br i1 %i.bn, label %bb.f, label %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, !llvm.loop !223

bb.f:                                             ; preds = %bb.e
  %.sroa.3.0.extract.shift.i126 = lshr exact i48 %.sroa.2.0.insert.insert.i.i122, 16 ; 2 uses
  %.sroa.3.0.extract.trunc.i127 = trunc i48 %.sroa.3.0.extract.shift.i126 to i16
  %i.bo = sext i16 %.sroa.3.0.extract.trunc.i127 to i32
  %i.bp = load i32, ptr %i.ao, align 4, !tbaa !43
  %i.bq = icmp sgt i32 %i.bp, %i.bo
  br i1 %i.bq, label %bb.g, label %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, !llvm.loop !223

bb.g:                                             ; preds = %bb.f
  %i.br = sext i16 %i.bk to i32
  %i.bs = load i32, ptr %i.ap, align 8, !tbaa !44
  %i.bt = icmp sgt i32 %i.bs, %i.br
  %i.bu = or i48 %.sroa.3.0.extract.shift.i126, %.sroa.0.0.insert.ext.i.i123
  %i.bv = and i48 %i.bu, 32768
  %i.bw = icmp eq i48 %i.bv, 0
  %or.cond7.i = and i1 %i.bw, %i.bt
  %i.bx = icmp sgt i16 %i.bk, -1
  %or.cond11.i = and i1 %i.bx, %or.cond7.i
  br i1 %or.cond11.i, label %bb.h, label %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, !llvm.loop !223

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef nonnull align 4 dereferenceable(92) ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i48 %.sroa.0.0.insert.insert.i.i124)
          to label %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit131 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !148 ; 29 uses

_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit131: ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  store i8 1, ptr %i.cc, align 4, !tbaa !165
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 89
  store i8 0, ptr %i.cd, align 1, !tbaa !166
  %i.ce = load i8, ptr %i.cb, align 4, !tbaa !150, !range !108, !noundef !109
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.i, label %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, !llvm.loop !223

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.d, %bb.a, %bb.b
  %lpad.loopexit.split-lp245 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.i:                                             ; preds = %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit131
  %i.cg = icmp eq i16 %.sroa.0171.0.copyload, %i.n
  %i.ch = icmp eq i16 %.sroa.9.0.copyload, %i.o
  %or.cond203 = select i1 %i.cg, i1 %i.ch, i1 false
  %i.ci = icmp eq i16 %.sroa.12181.0.copyload, %i.p
  %or.cond204 = select i1 %or.cond203, i1 %i.ci, i1 false
  br i1 %or.cond204, label %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201, label %_ZNK4core8vector3dIsEeqERKS1_.exit.preheader

_ZNK4core8vector3dIsEeqERKS1_.exit.preheader:     ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 76
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 84
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 60
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 68
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  br label %bb.j

_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201: ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 1, ptr %i.da, align 1, !tbaa !151
  %.pr = load ptr, ptr %3, align 8, !tbaa !157
  br label %.loopexit

bb.j:                                             ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.preheader, %_ZNK4core8vector3dIsEeqERKS1_.exit
  %.085.idx223 = phi i64 [ 0, %_ZNK4core8vector3dIsEeqERKS1_.exit.preheader ], [ %.085.add, %_ZNK4core8vector3dIsEeqERKS1_.exit ] ; 2 uses
  %.085.ptr = getelementptr inbounds nuw i8, ptr @_ZZN10Pathfinder19updateCostHeuristicEN4core8vector3dIsEES2_E10directions, i64 %.085.idx223
  %.sroa.025.0.copyload = load i48, ptr %.085.ptr, align 2, !tbaa !37 ; 7 uses
  %i.db = load i32, ptr %i.cj, align 4, !tbaa !153
  %.sroa.0.0.extract.trunc.i132 = trunc i48 %.sroa.025.0.copyload to i16 ; 4 uses
  %i.dc = icmp sgt i16 %.sroa.0.0.extract.trunc.i132, 0 ; 2 uses
  br i1 %i.dc, label %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = icmp slt i16 %.sroa.0.0.extract.trunc.i132, 0
  br i1 %i.dd, label %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = ashr i48 %.sroa.025.0.copyload, 32
  %i.df = trunc nsw i48 %i.de to i32              ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = icmp slt i32 %i.df, 0
  br i1 %i.dh, label %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit, label %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit.thread

_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.sroa.12160.1.in = phi ptr [ %i.cq, %bb.l ], [ %i.cy, %bb.j ], [ %i.cu, %bb.k ], [ %i.cm, %bb.m ]
  %.sroa.21.1.in = phi ptr [ %i.cp, %bb.l ], [ %i.cx, %bb.j ], [ %i.ct, %bb.k ], [ %i.cl, %bb.m ]
  %.sroa.29.0.in = phi ptr [ %i.cr, %bb.l ], [ %i.cz, %bb.j ], [ %i.cv, %bb.k ], [ %i.cn, %bb.m ]
  %.sroa.0157.1.in = phi ptr [ %i.co, %bb.l ], [ %i.cw, %bb.j ], [ %i.cs, %bb.k ], [ %i.ck, %bb.m ]
  %.sroa.0157.1 = load i8, ptr %.sroa.0157.1.in, align 4, !tbaa !161, !range !108, !noalias !226, !noundef !109
  %.sroa.29.0 = load i8, ptr %.sroa.29.0.in, align 4, !tbaa !163, !range !108, !noalias !226, !noundef !109
  %.sroa.21.1 = load i32, ptr %.sroa.21.1.in, align 4, !tbaa !169, !noalias !226
  %.sroa.12160.1 = load i32, ptr %.sroa.12160.1.in, align 4, !tbaa !170, !noalias !226
  %i.di = trunc nuw i8 %.sroa.29.0 to i1
  br i1 %i.di, label %bb.s, label %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit.thread

_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit.thread: ; preds = %bb.m, %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN10Pathfinder8calcCostEN4core8vector3dIsEES2_(ptr dead_on_unwind nonnull writable sret(%class.PathCost) align 4 %5, ptr noundef nonnull align 8 dereferenceable(80) %0, i48 %.sroa.0171.0.insert.insert175, i48 %.sroa.025.0.copyload)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit.thread
  %i.dj = load i8, ptr %5, align 4, !tbaa !161, !range !108, !noundef !109 ; 4 uses
  %i.dk = load i32, ptr %i.aq, align 4, !tbaa !169 ; 4 uses
  %i.dl = load i32, ptr %i.ar, align 4, !tbaa !170 ; 4 uses
  %i.dm = load i8, ptr %i.as, align 4, !tbaa !163, !range !108, !noundef !109 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.dc, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = icmp slt i16 %.sroa.0.0.extract.trunc.i132, 0
  br i1 %i.dn, label %.sink.split.i, label %bb.p

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi i64 [ 24, %bb.n ], [ 40, %bb.o ]
  %.sink16.i = phi i64 [ 32, %bb.n ], [ 48, %bb.o ]
  %.sink13.i = phi i64 [ 28, %bb.n ], [ 44, %bb.o ]
  %.sink10.i = phi i64 [ 36, %bb.n ], [ 52, %bb.o ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink.i
  store i8 %i.dj, ptr %i.do, align 4, !tbaa !161
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink16.i
  store i32 %i.dk, ptr %i.dp, align 4, !tbaa !169
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink13.i
  store i32 %i.dl, ptr %i.dq, align 4, !tbaa !170
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink10.i
  store i8 %i.dm, ptr %i.dr, align 4, !tbaa !163
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i, %bb.o
  %i.ds = ashr i48 %.sroa.025.0.copyload, 32
  %i.dt = trunc nsw i48 %i.ds to i32              ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.sink.split19.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = icmp slt i32 %i.dt, 0
  br i1 %i.dv, label %.sink.split19.i, label %bb.s

.sink.split19.i:                                  ; preds = %bb.q, %bb.p
  %.sink34.i = phi i64 [ 56, %bb.p ], [ 72, %bb.q ]
  %.sink30.i = phi i64 [ 64, %bb.p ], [ 80, %bb.q ]
  %.sink26.i = phi i64 [ 60, %bb.p ], [ 76, %bb.q ]
  %.sink22.i = phi i64 [ 68, %bb.p ], [ 84, %bb.q ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink34.i
  store i8 %i.dj, ptr %i.dw, align 4, !tbaa !161
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink30.i
  store i32 %i.dk, ptr %i.dx, align 4, !tbaa !169
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink26.i
  store i32 %i.dl, ptr %i.dy, align 4, !tbaa !170
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink22.i
  store i8 %i.dm, ptr %i.dz, align 4, !tbaa !163
  br label %bb.s

bb.r:                                             ; preds = %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit.thread
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.loopexit.split-lp

bb.s:                                             ; preds = %.sink.split19.i, %bb.q, %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit
  %.sroa.12160.0 = phi i32 [ %.sroa.12160.1, %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit ], [ %i.dl, %bb.q ], [ %i.dl, %.sink.split19.i ]
  %.sroa.21.0 = phi i32 [ %.sroa.21.1, %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit ], [ %i.dk, %bb.q ], [ %i.dk, %.sink.split19.i ] ; 2 uses
  %.sroa.0157.0 = phi i8 [ %.sroa.0157.1, %_ZN12PathGridnode7getCostEN4core8vector3dIsEE.exit ], [ %i.dj, %bb.q ], [ %i.dj, %.sink.split19.i ]
  %.sroa.8.0.extract.shift = lshr i48 %.sroa.025.0.copyload, 32
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i16
  %i.eb = trunc i32 %.sroa.21.0 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ec = add i16 %.sroa.0171.0.copyload, %.sroa.0.0.extract.trunc.i132 ; 2 uses
  %i.ed = add i16 %.sroa.9.0.copyload, %i.eb      ; 2 uses
  %i.ee = add i16 %.sroa.12181.0.copyload, %.sroa.8.0.extract.trunc ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.ee to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.ed to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.ec to i48
  %i.ef = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.shift.i, %i.ef
  store i48 %.sroa.0.0.insert.insert.i, ptr %6, align 8
  %i.eg = load i16, ptr %i.e, align 2, !tbaa !145
  %i.eh = sub i16 %i.ec, %i.eg
  %i.ei = load i16, ptr %i.h, align 8, !tbaa !146
  %i.ej = sub i16 %i.ed, %i.ei
  %i.ek = load i16, ptr %i.k, align 2, !tbaa !147
  %i.el = sub i16 %i.ee, %i.ek
  %.sroa.3.0.insert.ext.i.i139 = zext i16 %i.el to i48
  %.sroa.3.0.insert.shift.i.i140 = shl nuw i48 %.sroa.3.0.insert.ext.i.i139, 32
  %.sroa.2.0.insert.ext.i.i141 = zext i16 %i.ej to i48
  %.sroa.2.0.insert.shift.i.i142 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i141, 16
  %.sroa.2.0.insert.insert.i.i143 = or disjoint i48 %.sroa.3.0.insert.shift.i.i140, %.sroa.2.0.insert.shift.i.i142
  %.sroa.0.0.insert.ext.i.i144 = zext i16 %i.eh to i48
  %.sroa.0.0.insert.insert.i.i145 = or disjoint i48 %.sroa.2.0.insert.insert.i.i143, %.sroa.0.0.insert.ext.i.i144
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !34
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef nonnull align 4 dereferenceable(92) ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i48 %.sroa.0.0.insert.insert.i.i145)
          to label %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit147 unwind label %bb.v, !inline_history !148 ; 5 uses

_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit147: ; preds = %bb.s
  %i.eq = trunc nuw i8 %.sroa.0157.0 to i1
  %.not96 = xor i1 %i.eq, true
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 88
  %i.es = load i8, ptr %i.er, align 4, !range !108
  %i.et = trunc nuw i8 %i.es to i1
  %or.cond = select i1 %.not96, i1 true, i1 %i.et
  br i1 %or.cond, label %_ZNK4core8vector3dIsEeqERKS1_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit147
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 89 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !166, !range !108, !noundef !109
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZNK4core8vector3dIsEeqERKS1_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.03.0.copyload = load i48, ptr %6, align 8, !tbaa !37 ; 2 uses
  %.sroa.0.0.extract.trunc.i148 = trunc i48 %.sroa.03.0.copyload to i16 ; 2 uses
  %.sroa.57.0.extract.shift.i149 = lshr i48 %.sroa.03.0.copyload, 32
  %.sroa.57.0.extract.trunc.i150 = trunc nuw i48 %.sroa.57.0.extract.shift.i149 to i16 ; 2 uses
  %i.ex = load i16, ptr %i.x, align 8, !tbaa !184 ; 2 uses
  %.sroa.0.0.extract.trunc..i151 = call i16 @llvm.smin.i16(i16 %i.ex, i16 %.sroa.0.0.extract.trunc.i148)
  %i.ey = call i16 @llvm.smax.i16(i16 %i.ex, i16 %.sroa.0.0.extract.trunc.i148)
  %i.ez = load i16, ptr %i.aa, align 4, !tbaa !185 ; 2 uses
  %i.fa = call i16 @llvm.smin.i16(i16 %i.ez, i16 %.sroa.57.0.extract.trunc.i150)
  %i.fb = call i16 @llvm.smax.i16(i16 %i.ez, i16 %.sroa.57.0.extract.trunc.i150)
  %i.fc = sext i16 %i.fa to i32
  %i.fd = sext i16 %i.ey to i32
  %i.fe = sext i16 %.sroa.0.0.extract.trunc..i151 to i32
  %i.ff = sext i16 %i.fb to i32
  %.neg = mul i32 %.sroa.21.0, -65536
  %i.fg = and i48 %.sroa.025.0.copyload, -4294967296
  %.sroa.4.0.insert.shift.i = zext i32 %.neg to i48
  %.sroa.4.0.insert.insert.i = sub i48 %.sroa.4.0.insert.shift.i, %i.fg
  %i.fh = sub i48 0, %.sroa.025.0.copyload
  %.sroa.01.0.insert.ext.i = and i48 %i.fh, 65535
  %.sroa.01.0.insert.insert.i = or disjoint i48 %.sroa.4.0.insert.insert.i, %.sroa.01.0.insert.ext.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i48 %.sroa.01.0.insert.insert.i, ptr %i.fi, align 4, !tbaa !37
  %i.fj = add nsw i32 %.sroa.12160.0, %i.db       ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !153
  %i.fl = add i32 %i.fj, %i.fd
  %i.fm = add nsw i32 %i.fe, %i.fc
  %i.fn = sub i32 %i.fl, %i.fm
  %i.fo = add i32 %i.fn, %i.ff
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !164
  store i8 1, ptr %i.eu, align 1, !tbaa !166
  invoke void @_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicE4pushERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(6) %6)
          to label %_ZNK4core8vector3dIsEeqERKS1_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit.split-lp

_ZNK4core8vector3dIsEeqERKS1_.exit:               ; preds = %bb.u, %bb.t, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.085.add = add nuw nsw i64 %.085.idx223, 6     ; 2 uses
  %.not = icmp eq i64 %.085.add, 24
  br i1 %.not, label %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, label %bb.j

_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit, %bb.g, %bb.f, %bb.e, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit131
  %i.fr = load ptr, ptr %3, align 8, !tbaa !182   ; 3 uses
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !182 ; 2 uses
  %.not226 = icmp eq ptr %i.fr, %i.fs
  br i1 %.not226, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201
  %i.ft = phi i1 [ true, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201 ], [ false, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit ], [ false, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit ]
  %i.fu = phi ptr [ %.pr, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit.thread201 ], [ %i.am, %_ZN10Pathfinder15getIndexElementEN4core8vector3dIsEE.exit ], [ %i.fr, %_ZN10Pathfinder12isValidIndexEN4core8vector3dIsEE.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not.i.i.i.i152 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i152, label %_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fy) #24
  br label %_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicED2Ev.exit

_ZNSt14priority_queueIN4core8vector3dIsEESt6vectorIS2_SaIS2_EE26PathfinderCompareHeuristicED2Ev.exit: ; preds = %.loopexit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %i.ft

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.r, %bb.v
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.r ], [ %i.fq, %bb.v ], [ %lpad.loopexit.split-lp245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.fz = load ptr, ptr %3, align 8, !tbaa !157   ; 3 uses
  %.not.i.i.i.i154 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i154, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit129, label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gd) #24
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit129

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit129: ; preds = %bb.x, %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10Pathfinder9buildPathERSt6vectorIN4core8vector3dIsEESaIS3_EES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i48 %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.split:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  %.sroa.6.0.extract.shift = lshr i48 %2, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16
  %.sroa.8.0.extract.shift = lshr i48 %2, 32
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.i

bb.a:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit21
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.a, %bb.b
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122, !nonnull !109, !align !123 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !0
  %.v.i = select i1 %i.l, i64 976, i64 984
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @.str, ptr %i.d, align 8, !tbaa !124
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.17, ptr %i.c, align 8, !tbaa !124
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125  ; 5 uses
  %.not.i15 = icmp eq ptr %i.p, null
  br i1 %.not.i15, label %_ZN11StreamProxylsEPFRSoS0_E.exit28, label %bb.c

bb.c:                                             ; preds = %_ZTW13warningstream.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !132
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !125 ; 2 uses
  %.pre57 = load ptr, ptr %.pre.i, align 8, !tbaa !34
  %.phi.trans.insert58 = getelementptr i8, ptr %.pre57, i64 -24
  %.pre59 = load i64, ptr %.phi.trans.insert58, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
