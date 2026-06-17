inline.NumInlined: 1092
inline.NumDeleted: 585
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.49") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #17
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #20
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25CompressedMaterialization22CompressComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.std::unordered_set", align 8 ; 16 uses
  %5 = alloca %"class.std::unordered_set", align 8 ; 18 uses
  %6 = alloca %"class.duckdb::BaseStatistics", align 8 ; 12 uses
  %7 = alloca %"class.duckdb::unique_ptr.72", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::unique_ptr.37", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::vector.58", align 8 ; 8 uses
  %10 = alloca %"struct.duckdb::CompressedMaterializationInfo", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::vector.133", align 8 ; 9 uses
  %12 = alloca %"class.duckdb::vector.58", align 8 ; 8 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  %i.c = load i8, ptr %i.b, align 1, !tbaa !188
  %i.d = icmp eq i8 %i.c, 7
  br i1 %i.d, label %bb.cq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
  %i.g = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 3 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
  %i.i = tail call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load i8, ptr %i.j, align 8, !tbaa !199, !range !200, !noundef !167
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !201
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(97) %i.i, ptr noundef nonnull align 1 %i.p)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi i64 [ %i.n, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %i.v = icmp ult i64 %i.u, 1048576
  br i1 %i.v, label %bb.cq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !159
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !160
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = icmp ult i64 %i.ad, 20
  br i1 %i.ae, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !199, !range !200, !noundef !167
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !201
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !202
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(97) %i.a, ptr noundef nonnull align 1 %i.al)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = phi i64 [ %i.aj, %bb.h ], [ %i.ap, %bb.i ]
  %i.ar = uitofp i64 %i.aq to double
  %i.as = uitofp i64 %i.u to double
  %i.at = fdiv double %i.ar, %i.as
  %i.au = fcmp ule double %i.at, 8.000000e+00
  br i1 %i.au, label %bb.k, label %bb.cq

bb.k:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.av, ptr %4, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 1, ptr %i.aw, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ay, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 1, ptr %i.bb, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bd, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !203 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !203 ; 2 uses
  %.not177190 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not177190, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %bb.bn, %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !121
  %i.bn = icmp eq i8 %i.bm, 51
  br i1 %i.bn, label %bb.bo, label %.loopexit185

bb.l:                                             ; preds = %.lr.ph, %bb.bn
  %.sroa.0164.0191 = phi ptr [ %i.bg, %.lr.ph ], [ %i.hy, %bb.bn ] ; 7 uses
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !205
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !207
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = icmp eq i64 %i.bs, 24
  br i1 %i.bt, label %13, label %.critedge.thread

13:                                               ; preds = %bb.l
  %14 = load i8, ptr %i.bj, align 8, !tbaa !121
  %.not = icmp eq i8 %14, 51
  br i1 %.not, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %13
  %i.bu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0164.0191)
          to label %bb.n unwind label %bb.ay

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !25
  %i.bx = icmp eq i8 %i.bw, -28
  br i1 %i.bx, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0164.0191, i64 8 ; 2 uses
  %i.bz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.p unwind label %bb.ay

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !25
  %i.cc = icmp eq i8 %i.cb, -28
  br i1 %i.cc, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.cd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0164.0191)
          to label %bb.r unwind label %bb.az

bb.r:                                             ; preds = %bb.q
  %i.ce = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %bb.s unwind label %bb.az      ; 3 uses

bb.s:                                             ; preds = %bb.r
  %i.cf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.t unwind label %bb.ba

bb.t:                                             ; preds = %bb.s
  %i.cg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cf)
          to label %bb.u unwind label %bb.ba      ; 4 uses

bb.u:                                             ; preds = %bb.t
  %i.ch = load ptr, ptr %i.bk, align 8, !tbaa !161, !nonnull !167, !align !168 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 88 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !169
  %.not.not.i.i = icmp eq i64 %i.ck, 0            ; 2 uses
  br i1 %.not.not.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = load i64, ptr %i.ci, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.co = load i64, ptr %i.cn, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.06.0.in.i.i = phi ptr [ %i.cl, %bb.v ], [ %.sroa.06.0.i.i, %bb.x ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !34 ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !35
  %i.cr = icmp eq i64 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = icmp eq i64 %i.co, %i.ct
  %i.cv = select i1 %i.cr, i1 %i.cu, i1 false
  br i1 %i.cv, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.w, !llvm.loop !171

bb.y:                                             ; preds = %bb.u
  %i.cw = load i64, ptr %i.ci, align 8, !tbaa !35 ; 3 uses
  %i.cx = lshr i64 %i.cw, 32
  %i.cy = xor i64 %i.cx, %i.cw
  %i.cz = mul i64 %i.cy, -2960836687051489901     ; 2 uses
  %i.da = lshr i64 %i.cz, 32
  %i.db = xor i64 %i.da, %i.cz
  %i.dc = mul i64 %i.db, -2960836687051489901     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !39 ; 3 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, -2960836687051489901     ; 2 uses
  %i.di = lshr i64 %i.dh, 32
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = mul i64 %i.dj, -2960836687051489901     ; 2 uses
  %i.dl = xor i64 %i.dk, %i.dc
  %i.dm = lshr i64 %i.dl, 32
  %i.dn = xor i64 %i.dc, %i.dm
  %i.do = xor i64 %i.dn, %i.dk                    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !172 ; 3 uses
  %i.dr = urem i64 %i.do, %i.dq                   ; 2 uses
  %i.ds = load ptr, ptr %i.ch, align 8, !tbaa !173 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread, label %bb.z

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread: ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  br label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !41
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.dx = phi i64 [ %.pre.i.i.i.i, %bb.z ], [ %i.ej, %bb.ab ]
  %i.dy = phi ptr [ %i.dw, %bb.z ], [ %i.eh, %bb.ab ] ; 4 uses
  %i.dz = icmp eq i64 %i.do, %i.dx
  br i1 %i.dz, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i: ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !35
  %i.ec = icmp eq i64 %i.cw, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = icmp eq i64 %i.de, %i.ee
  %i.eg = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %i.eg, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, %bb.aa
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !34 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !41 ; 2 uses
  %i.ek = urem i64 %i.ej, %i.dq
  %.not19.i.i.i.i = icmp eq i64 %i.ek, %i.dr
  br i1 %.not19.i.i.i.i, label %bb.aa, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit, !llvm.loop !174

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit: ; preds = %bb.ab, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i, %bb.x, %bb.w
  %.sroa.06.1.i.i = phi ptr [ null, %bb.w ], [ %.sroa.06.0.i.i, %bb.x ], [ null, %bb.ab ], [ null, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i ], [ %i.dy, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 2 uses
  br i1 %.not.not.i.i, label %bb.ac, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit._crit_edge

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit._crit_edge: ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !172
  %.pre207 = load ptr, ptr %i.ch, align 8, !tbaa !173
  br label %bb.af

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.en = load i64, ptr %i.el, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ep = load i64, ptr %i.eo, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.06.0.in.i.i106 = phi ptr [ %i.em, %bb.ac ], [ %.sroa.06.0.i.i107, %bb.ae ]
  %.sroa.06.0.i.i107 = load ptr, ptr %.sroa.06.0.in.i.i106, align 8, !tbaa !34 ; 5 uses
  %.not.i.i108 = icmp eq ptr %.sroa.06.0.i.i107, null
  br i1 %.not.i.i108, label %.critedge.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i107, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !35
  %i.es = icmp eq i64 %i.en, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i107, i64 16
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = icmp eq i64 %i.ep, %i.eu
  %i.ew = select i1 %i.es, i1 %i.ev, i1 false
  br i1 %i.ew, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit109, label %bb.ad, !llvm.loop !171

bb.af:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit._crit_edge, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread
  %i.ex = phi ptr [ %i.ds, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread ], [ %.pre207, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit._crit_edge ]
  %i.ey = phi i64 [ %i.dq, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread ], [ %.pre, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit._crit_edge ] ; 2 uses
  %i.ez = phi ptr [ %i.dv, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread ], [ %i.el, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit._crit_edge ]
  %.sroa.06.1.i.i169.a = phi ptr [ null, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit.thread ], [ %.sroa.06.1.i.i, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit._crit_edge ]
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !35 ; 3 uses
  %i.fb = lshr i64 %i.fa, 32
  %i.fc = xor i64 %i.fb, %i.fa
  %i.fd = mul i64 %i.fc, -2960836687051489901     ; 2 uses
  %i.fe = lshr i64 %i.fd, 32
  %i.ff = xor i64 %i.fe, %i.fd
  %i.fg = mul i64 %i.ff, -2960836687051489901     ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !39 ; 3 uses
  %i.fj = lshr i64 %i.fi, 32
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = mul i64 %i.fk, -2960836687051489901     ; 2 uses
  %i.fm = lshr i64 %i.fl, 32
  %i.fn = xor i64 %i.fm, %i.fl
  %i.fo = mul i64 %i.fn, -2960836687051489901     ; 2 uses
  %i.fp = xor i64 %i.fo, %i.fg
  %i.fq = lshr i64 %i.fp, 32
  %i.fr = xor i64 %i.fg, %i.fq
  %i.fs = xor i64 %i.fr, %i.fo                    ; 2 uses
  %i.ft = urem i64 %i.fs, %i.ey                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i98 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i98, label %.critedge.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !34 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb25CompressedMaterialization22CompressComparisonJoinERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit109: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i105, %bb.ae
  %.sroa.06.1.i.i168 = phi ptr [ %.sroa.06.1.i.i, %bb.ae ], [ %.sroa.06.1.i.i169.a, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i105 ] ; 2 uses
  %.sroa.06.1.i.i104 = phi ptr [ %.sroa.06.0.i.i107, %bb.ae ], [ %i.fy, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.i.i.i.i105 ]
  %.not248 = icmp eq ptr %.sroa.06.1.i.i168, null
  br i1 %.not248, label %.critedge.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit109
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i168, i64 24 ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !66
  %.not180.a = icmp eq ptr %i.gm, null
  br i1 %.not180.a, label %.critedge.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i104, i64 24 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !66
  %.not181.a = icmp eq ptr %i.go, null
  br i1 %.not181.a, label %.critedge.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.gp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gl)
          to label %bb.am unwind label %bb.bb

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK6duckdb14BaseStatistics4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %i.gp)
          to label %bb.an unwind label %bb.bb

bb.an:                                            ; preds = %bb.am
  %i.gq = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %bb.ao unwind label %bb.bc

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN6duckdb14BaseStatistics5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(128) %i.gq)
          to label %bb.ap unwind label %bb.bc

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.gr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0164.0191)
          to label %bb.aq unwind label %bb.bd     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 136
  %i.gu = load ptr, ptr %i.gt, align 8
  invoke void %i.gu(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.37") align 8 %8, ptr noundef nonnull align 8 dereferenceable(88) %i.gr)
          to label %bb.ar unwind label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6duckdb25CompressedMaterialization21GetCompressExpressionENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.72") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.as unwind label %bb.be

bb.as:                                            ; preds = %bb.ar
  %i.gv = load ptr, ptr %8, align 8, !tbaa !70    ; 3 uses
  %.not.i = icmp eq ptr %i.gv, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.as
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !68
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(88) %i.gv) #17, !inline_history !72
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.as, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  %i.gz = load ptr, ptr %7, align 8, !tbaa !73
  %.not182 = icmp eq ptr %i.gz, null
  br i1 %.not182, label %_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ha = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gl)
          to label %bb.au unwind label %bb.bf

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN6duckdb14BaseStatistics5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.ha, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.av unwind label %bb.bf

bb.av:                                            ; preds = %bb.au
  %i.hb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14BaseStatisticsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %bb.aw unwind label %bb.bf

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6duckdb14BaseStatistics5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.hb, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.ax unwind label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %4, ptr %3, align 8, !tbaa !44
  %i.hc = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.bg unwind label %bb.bf     ; 0 uses

bb.ay:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %.critedge.thread, %bb.o, %bb.m
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.az:                                            ; preds = %bb.r, %bb.q
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ba:                                            ; preds = %bb.t, %bb.s
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.bb:                                            ; preds = %bb.am, %bb.al
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bc:                                            ; preds = %bb.ao, %bb.an
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bd:                                            ; preds = %bb.aq, %bb.ap
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112

bb.be:                                            ; preds = %bb.ar
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hk = load ptr, ptr %8, align 8, !tbaa !70    ; 3 uses
  %.not.i110 = icmp eq ptr %i.hk, null
  br i1 %.not.i110, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i111

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i111: ; preds = %bb.be
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !68
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(88) %i.hk) #17, !inline_history !72
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112

bb.bf:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112

bb.bg:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.pr = load ptr, ptr %7, align 8, !tbaa !73     ; 4 uses
  %.not.i113 = icmp eq ptr %.pr, null
  br i1 %.not.i113, label %.critedge, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hp = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !66 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i114, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i: ; preds = %bb.bh
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.hq) #17
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #20
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i, %bb.bh
  %i.hr = load ptr, ptr %.pr, align 8, !tbaa !70  ; 3 uses
  %.not.i1.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i1.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !68
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(88) %i.hr) #17, !inline_history !76
  br label %_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pr) #20
  br label %.critedge

_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.critedge.thread

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i111, %bb.be, %bb.bf, %bb.bd
  %.pn86 = phi { ptr, i32 } [ %i.ho, %bb.bf ], [ %i.hi, %bb.bd ], [ %i.hj, %bb.be ], [ %i.hj, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112, %bb.bc
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit112 ], [ %i.hh, %bb.bc ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bb
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.bi ], [ %i.hg, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.db

.critedge:                                        ; preds = %bb.bg, %_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bn

.critedge.thread:                                 ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_10unique_ptrINS1_14BaseStatisticsESt14default_deleteIS6_ELb1EEEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.i.i.i.i101, %bb.ai, %bb.ad, %bb.af, %bb.ak, %_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE4findERSA_.exit109, %bb.aj, %bb.n, %bb.p, %13, %bb.l
  %i.hv = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0164.0191)
          to label %bb.bk unwind label %bb.ay

bb.bk:                                            ; preds = %.critedge.thread
  invoke void @_ZN6duckdb25CompressedMaterialization21GetReferencedBindingsERKNS_10ExpressionERSt13unordered_setINS_13ColumnBindingENS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.hv, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.bl unwind label %bb.ay

bb.bl:                                            ; preds = %bb.bk
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0164.0191, i64 8
  %i.hx = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %bb.bm unwind label %bb.ay

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6duckdb25CompressedMaterialization21GetReferencedBindingsERKNS_10ExpressionERSt13unordered_setINS_13ColumnBindingENS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.hx, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.bn unwind label %bb.ay

bb.bn:                                            ; preds = %.critedge, %bb.bm
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0164.0191, i64 24 ; 2 uses
  %.not177 = icmp eq ptr %i.hy, %i.bi
  br i1 %.not177, label %._crit_edge, label %bb.l

bb.bo:                                            ; preds = %._crit_edge
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !23 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !23 ; 2 uses
  %.not178192 = icmp eq ptr %i.ia, %i.ic
  br i1 %.not178192, label %.loopexit185, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.bo, %bb.bq
  %.sroa.0150.0193 = phi ptr [ %i.ie, %bb.bq ], [ %i.ia, %bb.bo ] ; 2 uses
  %i.id = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0150.0193)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %.lr.ph195
  invoke void @_ZN6duckdb25CompressedMaterialization21GetReferencedBindingsERKNS_10ExpressionERSt13unordered_setINS_13ColumnBindingENS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.id, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0150.0193, i64 8 ; 2 uses
  %.not178 = icmp eq ptr %i.ie, %i.ic
  br i1 %.not178, label %.loopexit185, label %.lr.ph195

bb.br:                                            ; preds = %bb.bp, %.lr.ph195
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit185:                                     ; preds = %bb.bq, %bb.bo, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ig = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  invoke void %i.ii(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.58") align 8 %9, ptr noundef nonnull align 8 dereferenceable(97) %i.g)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.loopexit185
  %i.ij = load ptr, ptr %9, align 8, !tbaa !208   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !208 ; 2 uses
  %.not179196 = icmp eq ptr %i.ij, %i.il
  br i1 %.not179196, label %._crit_edge200, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.bs
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.bu

._crit_edge200:                                   ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.in = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.cd unwind label %bb.cr

bb.bt:                                            ; preds = %.loopexit185
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit141

bb.bu:                                            ; preds = %.lr.ph199, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit
  %.sroa.0146.0197 = phi ptr [ %i.ij, %.lr.ph199 ], [ %i.ko, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit ] ; 6 uses
  %i.ip = load i64, ptr %i.im, align 8, !tbaa !33
  %.not.not.i.i115 = icmp eq i64 %i.ip, 0
  %i.iq = load i64, ptr %.sroa.0146.0197, align 8 ; 4 uses
  br i1 %.not.not.i.i115, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0146.0197, i64 8
  %i.is = load i64, ptr %i.ir, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %.sroa.06.0.in.i.i122 = phi ptr [ %i.ax, %bb.bv ], [ %.sroa.06.0.i.i123, %bb.bx ]
  %.sroa.06.0.i.i123 = load ptr, ptr %.sroa.06.0.in.i.i122, align 8, !tbaa !34 ; 4 uses
  %.not.i.i124 = icmp eq ptr %.sroa.06.0.i.i123, null
  br i1 %.not.i.i124, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i123, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !35
  %i.iv = icmp eq i64 %i.iq, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i123, i64 16
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = icmp eq i64 %i.is, %i.ix
  %i.iz = select i1 %i.iv, i1 %i.iy, i1 false
  br i1 %i.iz, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit, label %bb.bw, !llvm.loop !37

bb.by:                                            ; preds = %bb.bu
  %i.ja = lshr i64 %i.iq, 32
  %i.jb = xor i64 %i.ja, %i.iq
  %i.jc = mul i64 %i.jb, -2960836687051489901     ; 2 uses
  %i.jd = lshr i64 %i.jc, 32
  %i.je = xor i64 %i.jd, %i.jc
  %i.jf = mul i64 %i.je, -2960836687051489901     ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0146.0197, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !39 ; 3 uses
  %i.ji = lshr i64 %i.jh, 32
  %i.jj = xor i64 %i.ji, %i.jh
  %i.jk = mul i64 %i.jj, -2960836687051489901     ; 2 uses
  %i.jl = lshr i64 %i.jk, 32
  %i.jm = xor i64 %i.jl, %i.jk
  %i.jn = mul i64 %i.jm, -2960836687051489901     ; 2 uses
  %i.jo = xor i64 %i.jn, %i.jf
  %i.jp = lshr i64 %i.jo, 32
  %i.jq = xor i64 %i.jf, %i.jp
  %i.jr = xor i64 %i.jq, %i.jn                    ; 2 uses
  %i.js = load i64, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.jt = urem i64 %i.jr, %i.js                   ; 2 uses
  %i.ju = load ptr, ptr %4, align 8, !tbaa !12
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jt
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i116 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i.i116, label %.loopexit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert.i.i.i.i117 = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %.pre.i.i.i.i118 = load i64, ptr %.phi.trans.insert.i.i.i.i117, align 8, !tbaa !41
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %bb.bz
  %i.jy = phi i64 [ %.pre.i.i.i.i118, %bb.bz ], [ %i.kk, %bb.cb ]
  %i.jz = phi ptr [ %i.jx, %bb.bz ], [ %i.ki, %bb.cb ] ; 3 uses
  %i.ka = icmp eq i64 %i.jr, %i.jy
  br i1 %i.ka, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i: ; preds = %bb.ca
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !35
  %i.kd = icmp eq i64 %i.iq, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = icmp eq i64 %i.jh, %i.kf
  %i.kh = select i1 %i.kd, i1 %i.kg, i1 false
  br i1 %i.kh, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, %bb.ca
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !34 ; 3 uses
  %.not18.i.i.i.i119 = icmp eq ptr %i.ki, null
  br i1 %.not18.i.i.i.i119, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !41 ; 2 uses
  %i.kl = urem i64 %i.kk, %i.js
  %.not19.i.i.i.i120 = icmp eq i64 %i.kl, %i.jt
  br i1 %.not19.i.i.i.i120, label %bb.ca, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i, %bb.cb, %bb.bw, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %5, ptr %2, align 8, !tbaa !44
  %i.km = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0146.0197, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0146.0197, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE6insertERKS1_.exit125 unwind label %bb.cc ; 0 uses

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE6insertERKS1_.exit125: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit

bb.cc:                                            ; preds = %.loopexit
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE4findERKS1_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingES2_NS_9_IdentityENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, %bb.bx, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE6insertERKS1_.exit125
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0146.0197, i64 16 ; 2 uses
  %.not179 = icmp eq ptr %i.ko, %i.il
  br i1 %.not179, label %._crit_edge200, label %bb.bu

bb.cd:                                            ; preds = %._crit_edge200
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.kp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
          to label %bb.ce unwind label %bb.cs     ; 4 uses

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.kp, ptr %11, align 8, !tbaa !88
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !90
  store i64 0, ptr %i.kp, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %11, i64 8
end_hunk_1
