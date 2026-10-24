Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/integrator?download=true
inline.NumInlined: 5918
inline.NumDeleted: 1143
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZNK6casadi10Integrator16bquad_sp_forwardEPNS_12SpForwardMemEPKyS4_S4_S4_S4_S4_S4_PyS5_:._crit_edge.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 21
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.n
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.b
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !34
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.l

bb.c:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %.077 = phi i64 [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ 0, %.preheader ] ; 2 uses
  %i.at = load i64, ptr %i.z, align 8, !tbaa !160
  %i.au = icmp slt i64 %.077, %i.at
  br i1 %i.au, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %1, align 8, !tbaa !263   ; 12 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 104
  store ptr %9, ptr %i.aw, align 8, !tbaa !246
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  store ptr %10, ptr %i.ax, align 8, !tbaa !246
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  store ptr null, ptr %i.ay, align 8, !tbaa !246
  %i.az = add nuw nsw i64 %.077, 1                ; 6 uses
  %i.ba = load i64, ptr %i.aa, align 8, !tbaa !159
  %i.bb = mul nsw i64 %i.ba, %i.az
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !246
  %i.be = load i64, ptr %i.ab, align 8, !tbaa !161
  %i.bf = mul nsw i64 %i.be, %i.az
  %i.bg = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !246
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !162
  %i.bj = mul nsw i64 %i.bi, %i.az
  %i.bk = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !246
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !163
  %i.bn = mul nsw i64 %i.bm, %i.az
  %i.bo = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !246
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i8 0, i64 32, i1 false)
  %i.br = load i64, ptr %i.ae, align 8, !tbaa !164
  %i.bs = load i64, ptr %i.af, align 8, !tbaa !165
  %i.bt = mul i64 %i.bs, %i.az                    ; 5 uses
  %i.bu = mul i64 %i.bt, %i.br
  %i.bv = getelementptr inbounds [8 x i8], ptr %6, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !246
  %i.bx = load i64, ptr %i.ag, align 8, !tbaa !166
  %i.by = mul i64 %i.bt, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !246
  %i.cb = load i64, ptr %i.ah, align 8, !tbaa !167
  %i.cc = mul i64 %i.bt, %i.cb
  %i.cd = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 208
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !246
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 216
  store ptr null, ptr %i.cf, align 8, !tbaa !246
  br i1 %.not88, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = load i64, ptr %i.ai, align 8, !tbaa !169
  %i.ch = mul i64 %i.bt, %i.cg
  %i.ci = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.cj = phi ptr [ %i.ci, %bb.e ], [ null, %bb.d ]
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !264 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !246
  br i1 %.not89, label %._crit_edge.i.i98, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !170
  %i.cm = mul i64 %i.bt, %i.cl
  %i.cn = getelementptr inbounds [8 x i8], ptr %10, i64 %i.cm
  br label %._crit_edge.i.i98

._crit_edge.i.i98:                                ; preds = %bb.f, %bb.g
  %i.co = phi ptr [ %i.cn, %bb.g ], [ null, %bb.f ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  store ptr %i.ak, ptr %13, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ak, ptr noundef nonnull align 1 dereferenceable(5) @.str.166, i64 5, i1 false)
  store i64 5, ptr %i.al, align 8, !tbaa !35
  store i8 0, ptr %i.an, align 1, !tbaa !34
  invoke void @_ZN6casadi16FunctionInternal12forward_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i98
  %i.cq = load ptr, ptr %1, align 8, !tbaa !263
  %i.cr = load ptr, ptr %i.k, align 8, !tbaa !264
  %i.cs = load ptr, ptr %i.q, align 8, !tbaa !265
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !266
  %i.cu = invoke noundef i32 @_ZNK6casadi14OracleFunction15calc_sp_forwardERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPKyPPyPxSC_(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cs, ptr noundef %i.ct)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not94 = icmp eq i32 %i.cu, 0
  %i.cv = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.am
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.i
  %i.cx = load i64, ptr %i.am, align 8, !tbaa !34
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %i.cz = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ak
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.db = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br i1 %.not94, label %bb.c, label %.loopexit, !llvm.loop !1020

bb.j:                                             ; preds = %._crit_edge.i.i98
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.k:                                             ; preds = %bb.h
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.am
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.k
  %i.dh = load i64, ptr %i.am, align 8, !tbaa !34
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.j
  %.pn90 = phi { ptr, i32 } [ %i.dd, %bb.j ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.de, %bb.k ]
  %i.dj = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ak
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.dl = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.l

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.184 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.c ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  ret i32 %.184

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.pn90.pn.pn = phi { ptr, i32 } [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  resume { ptr, i32 } %.pn90.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi10Integrator10sp_forwardEPPKyPPyPxS4_Pv(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree readnone captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"struct.casadi::SpForwardMem", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !212, !range !210, !noundef !211
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi14message_prefixERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.44, i64 noundef 10) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33, !noalias !1031
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35, !noalias !1031 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !29, !alias.scope !1032
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.m, align 8, !tbaa !35, !alias.scope !1032
  store i8 0, ptr %i.l, align 8, !tbaa !34, !alias.scope !1032
  %i.n = add i64 %i.k, 12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.n)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !35, !alias.scope !1032
  %i.p = sub i64 4611686018427387903, %i.o
  %i.q = icmp ult i64 %i.p, %i.k
  br i1 %i.q, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.s = load i64, ptr %i.m, align 8, !tbaa !35, !alias.scope !1032
  %i.t = add i64 %i.s, -4611686018427387892
  %i.u = icmp ult i64 %i.t, 12
  br i1 %i.u, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.289) #34
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.180, i64 noundef 12)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !33, !alias.scope !1032 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.l
  br i1 %i.y, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.l, align 8, !tbaa !34, !alias.scope !1032
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #36
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.w, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !33
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !35
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.ab, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.49, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.af, ptr %8, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 61, ptr %i.a, align 8, !tbaa !31
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr %i.ag, ptr %8, align 8, !tbaa !33
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(61) %i.ag, ptr noundef nonnull align 1 dereferenceable(61) @.str.181, i64 61, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.noexc
  %i.ak = load ptr, ptr %7, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !35
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215 unwind label %bb.i ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215: ; preds = %bb.e
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.51, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.i ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217
  %i.aq = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.av = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.af
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !34
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.az = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.l
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.bb = load i64, ptr %i.l, align 8, !tbaa !34
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.k

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.h:                                             ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit217, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit215, %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !34
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.h ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bm = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.af
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %i.bo = load i64, ptr %i.af, align 8, !tbaa !34
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.bd, %bb.f ]
  %i.bq = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.l
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.j
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !34
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %bb.a
  %i.bu = load ptr, ptr %1, align 8, !tbaa !246   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !246 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !246 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !246 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !246 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !267
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ce
  %i.cg = load ptr, ptr %2, align 8, !tbaa !246
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !246
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !246
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !246 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !246 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !246 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !268
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 14 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !189 ; 5 uses
  %i.cw = getelementptr [8 x i8], ptr %4, i64 %i.cv ; 13 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 10 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !214 ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cw, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !215
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %i.db ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 5 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !218
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %i.de ; 20 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 4 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !194
  %i.di = getelementptr [8 x i8], ptr %i.df, i64 %i.cv
  %i.dj = getelementptr [8 x i8], ptr %i.di, i64 %i.dh ; 7 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.cy ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store ptr %i.cf, ptr %9, align 8, !tbaa !263
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ct, ptr %i.dl, align 8, !tbaa !264
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %3, ptr %i.dm, align 8, !tbaa !265
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !266
  %i.do = icmp slt i64 %i.cv, 1
  br i1 %i.do, label %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp eq i64 %i.cv, 1
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !151

bb.m:                                             ; preds = %bb.l
  %.idx.i.i = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %4, ptr align 8 %i.bu, i64 %.idx.i.i, i1 false)
  br label %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit

bb.n:                                             ; preds = %bb.l
  %i.dp = load i64, ptr %i.bu, align 8, !tbaa !209
  store i64 %i.dp, ptr %4, align 8, !tbaa !209
  br label %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit

_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit:              ; preds = %bb.m, %bb.n, %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !59 ; 2 uses
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !55 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %.not200301 = icmp sgt i64 %i.dw, 0
  br i1 %.not200301, label %.lr.ph307, label %.critedge

.lr.ph307:                                        ; preds = %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1760
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph307, %bb.ak
  %.0154306 = phi i64 [ 0, %.lr.ph307 ], [ %i.fr, %bb.ak ]
  %.0157305 = phi ptr [ %i.ck, %.lr.ph307 ], [ %.1158, %bb.ak ] ; 3 uses
  %.0159304 = phi ptr [ %i.ci, %.lr.ph307 ], [ %.1160, %bb.ak ] ; 4 uses
  %.0161303 = phi ptr [ %i.cg, %.lr.ph307 ], [ %.1162, %bb.ak ] ; 4 uses
  %.0169302 = phi ptr [ %i.by, %.lr.ph307 ], [ %.1170, %bb.ak ] ; 4 uses
  %i.ea = load i64, ptr %i.cu, align 8, !tbaa !189
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ea
  %i.ec = call noundef i32 @_ZNK6casadi10Integrator15fdae_sp_forwardEPNS_12SpForwardMemEPKyS4_S4_PyS5_(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %9, ptr noundef %4, ptr noundef %i.bw, ptr noundef %.0169302, ptr noundef %i.df, ptr noundef %i.eb)
  %.not = icmp eq i32 %i.ec, 0
  br i1 %.not, label %.preheader292, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

.preheader292:                                    ; preds = %bb.o
  %i.ed = load i64, ptr %i.cu, align 8, !tbaa !189 ; 2 uses
  %i.ee = icmp sgt i64 %i.ed, 0
  br i1 %i.ee, label %.lr.ph, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit

._crit_edge:                                      ; preds = %.lr.ph
  %i.ef = icmp slt i64 %i.er, 1
  br i1 %i.ef, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.eg = shl i64 %i.er, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dk, ptr align 8 %i.df, i64 %i.eg, i1 false)
  %.pre = load i64, ptr %i.cu, align 8, !tbaa !189
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit:              ; preds = %.preheader292, %._crit_edge, %bb.p
  %i.eh = phi i64 [ %i.er, %._crit_edge ], [ %.pre, %bb.p ], [ %i.ed, %.preheader292 ]
  %i.ei = load i64, ptr %i.dg, align 8, !tbaa !194
  %i.ej = add nsw i64 %i.ei, %i.eh                ; 2 uses
  %i.ek = icmp slt i64 %i.ej, 1
  br i1 %i.ek, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit
  %.idx.i.i237 = shl nuw nsw i64 %i.ej, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %.idx.i.i237, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit
  call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef %i.df, ptr noundef %i.dk, i1 noundef zeroext false)
  %.not196 = icmp eq ptr %.0161303, null          ; 2 uses
  br i1 %.not196, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit241, label %bb.q

.lr.ph:                                           ; preds = %.preheader292, %.lr.ph
  %.0152300 = phi i64 [ %i.eq, %.lr.ph ], [ 0, %.preheader292 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0152300
  %i.em = load i64, ptr %i.el, align 8, !tbaa !209
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.0152300 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !209
  %i.ep = or i64 %i.eo, %i.em
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !209
  %i.eq = add nuw nsw i64 %.0152300, 1            ; 2 uses
  %i.er = load i64, ptr %i.cu, align 8, !tbaa !189 ; 4 uses
  %i.es = icmp slt i64 %i.eq, %i.er
  br i1 %i.es, label %.lr.ph, label %._crit_edge, !llvm.loop !1025

bb.q:                                             ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit
  %i.et = load i64, ptr %i.cu, align 8, !tbaa !189 ; 3 uses
  %i.eu = icmp slt i64 %i.et, 1
  br i1 %i.eu, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit241, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i239 = icmp eq i64 %i.et, 1
  br i1 %.not.i239, label %bb.t, label %bb.s, !prof !151

bb.s:                                             ; preds = %bb.r
  %.idx.i.i238 = shl nuw nsw i64 %i.et, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0161303, ptr align 8 %i.df, i64 %.idx.i.i238, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit241

bb.t:                                             ; preds = %bb.r
  %i.ev = load i64, ptr %i.df, align 8, !tbaa !209
  store i64 %i.ev, ptr %.0161303, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit241

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit241:           ; preds = %bb.q, %bb.t, %bb.s, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit
  %.not197 = icmp eq ptr %.0159304, null          ; 2 uses
  br i1 %.not197, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246, label %bb.u

bb.u:                                             ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit241
  %i.ew = load i64, ptr %i.cu, align 8, !tbaa !189
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ew ; 2 uses
  %i.ey = load i64, ptr %i.dg, align 8, !tbaa !194 ; 3 uses
  %i.ez = icmp slt i64 %i.ey, 1
  br i1 %i.ez, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i243 = icmp eq i64 %i.ey, 1
  br i1 %.not.i243, label %bb.x, label %bb.w, !prof !151

bb.w:                                             ; preds = %bb.v
  %.idx.i.i242 = shl nuw nsw i64 %i.ey, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0159304, ptr align 8 %i.ex, i64 %.idx.i.i242, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246

bb.x:                                             ; preds = %bb.v
  %i.fa = load i64, ptr %i.ex, align 8, !tbaa !209
  store i64 %i.fa, ptr %.0159304, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246:           ; preds = %bb.u, %bb.x, %bb.w, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit241
  %i.fb = load i64, ptr %i.dy, align 8, !tbaa !171
  %i.fc = icmp sgt i64 %i.fb, 0
  %i.fd = icmp ne ptr %.0157305, null             ; 2 uses
  %or.cond = select i1 %i.fc, i1 %i.fd, i1 false
  %.pre328 = load i64, ptr %i.cu, align 8, !tbaa !189 ; 2 uses
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.df, i64 %.pre328
  %i.ff = call noundef i32 @_ZNK6casadi10Integrator16fquad_sp_forwardEPNS_12SpForwardMemEPKyS4_S4_S4_Py(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %9, ptr noundef %i.df, ptr noundef %i.fe, ptr noundef %i.bw, ptr noundef %.0169302, ptr noundef nonnull %.0157305)
  %.not198 = icmp eq i32 %i.ff, 0
  br i1 %.not198, label %._crit_edge326, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

._crit_edge326:                                   ; preds = %bb.y
  %.pre327 = load i64, ptr %i.cu, align 8, !tbaa !189
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge326, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246
  %i.fg = phi i64 [ %.pre327, %._crit_edge326 ], [ %.pre328, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit246 ] ; 3 uses
  %i.fh = icmp slt i64 %i.fg, 1
  br i1 %i.fh, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit251, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not.i248 = icmp eq i64 %i.fg, 1
  br i1 %.not.i248, label %bb.ac, label %bb.ab, !prof !151

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i247 = shl nuw nsw i64 %i.fg, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %4, ptr align 8 %i.df, i64 %.idx.i.i247, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit251

bb.ac:                                            ; preds = %bb.aa
  %i.fi = load i64, ptr %i.df, align 8, !tbaa !209
  store i64 %i.fi, ptr %4, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit251

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit251:           ; preds = %bb.ab, %bb.ac, %bb.z
  br i1 %.not196, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit251
  %i.fj = load i64, ptr %i.cu, align 8, !tbaa !189
  %i.fk = getelementptr inbounds [8 x i8], ptr %.0161303, i64 %i.fj
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit251
  %.1162 = phi ptr [ %i.fk, %bb.ad ], [ null, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit251 ]
  br i1 %.not197, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = load i64, ptr %i.dg, align 8, !tbaa !194
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0159304, i64 %i.fl
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1160 = phi ptr [ %i.fm, %bb.af ], [ null, %bb.ae ]
  br i1 %i.fd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fn = load i64, ptr %i.dy, align 8, !tbaa !171
  %i.fo = getelementptr inbounds [8 x i8], ptr %.0157305, i64 %i.fn
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1158 = phi ptr [ %i.fo, %bb.ah ], [ null, %bb.ag ]
  %.not199 = icmp eq ptr %.0169302, null
  br i1 %.not199, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load i64, ptr %i.dz, align 8, !tbaa !203
  %i.fq = getelementptr inbounds [8 x i8], ptr %.0169302, i64 %i.fp
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.1170 = phi ptr [ %i.fq, %bb.aj ], [ null, %bb.ai ] ; 2 uses
  %i.fr = add nuw nsw i64 %.0154306, 1            ; 2 uses
  %i.fs = load ptr, ptr %i.dr, align 8, !tbaa !59 ; 2 uses
  %i.ft = load ptr, ptr %i.dq, align 8, !tbaa !55 ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = ashr exact i64 %i.fw, 3
  %.not200 = icmp slt i64 %i.fr, %i.fx
  br i1 %.not200, label %bb.o, label %.critedge, !llvm.loop !1026

.critedge:                                        ; preds = %bb.ak, %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit
  %i.fy = phi ptr [ %i.dt, %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit ], [ %i.ft, %bb.ak ] ; 4 uses
  %i.fz = phi ptr [ %i.ds, %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit ], [ %i.fs, %bb.ak ] ; 4 uses
  %.0169.lcssa = phi ptr [ %i.by, %_ZSt6copy_nIPKyxPyET1_T_T0_S3_.exit ], [ %.1170, %bb.ak ]
  %i.ga = load i64, ptr %i.cx, align 8, !tbaa !214 ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, 0
  br i1 %i.gb, label %.lr.ph.i.i.i.i252, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

.lr.ph.i.i.i.i252:                                ; preds = %.critedge
  %.idx.i.i253 = shl nuw nsw i64 %i.ga, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dj, i8 0, i64 %.idx.i.i253, i1 false), !tbaa !209
  %i.gc = icmp ne ptr %i.co, null                 ; 3 uses
  br i1 %i.gc, label %bb.al, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit263

bb.al:                                            ; preds = %.lr.ph.i.i.i.i252
  %i.gd = load i64, ptr %i.dd, align 8, !tbaa !218 ; 2 uses
  %i.ge = icmp slt i64 %i.gd, 1
  br i1 %i.ge, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit263, label %.lr.ph.i.i.i.i258

.lr.ph.i.i.i.i258:                                ; preds = %bb.al
  %.idx.i.i259 = shl nuw nsw i64 %i.gd, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.co, i8 0, i64 %.idx.i.i259, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit263

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit263:           ; preds = %.lr.ph.i.i.i.i258, %bb.al, %.lr.ph.i.i.i.i252
  %.not201 = icmp eq ptr %i.ca, null
  br i1 %.not201, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit263
  %i.gf = load i64, ptr %i.cx, align 8, !tbaa !214
  %i.gg = ptrtoint ptr %i.fz to i64
  %i.gh = ptrtoint ptr %i.fy to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 3
  %i.gk = mul nsw i64 %i.gj, %i.gf
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.gk
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit263
  %.0166 = phi ptr [ %i.gl, %bb.am ], [ null, %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit263 ]
  %.not202 = icmp eq ptr %i.cc, null
  br i1 %.not202, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !216
  %i.go = ptrtoint ptr %i.fz to i64
  %i.gp = ptrtoint ptr %i.fy to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = ashr exact i64 %i.gq, 3
  %i.gs = mul nsw i64 %i.gr, %i.gn
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.gs
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0163 = phi ptr [ %i.gt, %bb.ao ], [ null, %bb.an ]
  %.not203 = icmp eq ptr %i.cq, null
  br i1 %.not203, label %._crit_edge329, label %bb.aq

._crit_edge329:                                   ; preds = %bb.ap
  %.pre330 = ptrtoint ptr %i.fz to i64
  %.pre331 = ptrtoint ptr %i.fy to i64
  %.pre333 = sub i64 %.pre330, %.pre331
  %.pre335 = ashr exact i64 %.pre333, 3
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !217
  %i.gw = ptrtoint ptr %i.fz to i64
  %i.gx = ptrtoint ptr %i.fy to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = ashr exact i64 %i.gy, 3                 ; 2 uses
  %i.ha = mul nsw i64 %i.gz, %i.gv
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.ha
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge329, %bb.aq
  %.pre-phi336 = phi i64 [ %.pre335, %._crit_edge329 ], [ %i.gz, %bb.aq ] ; 2 uses
  %.0155 = phi ptr [ null, %._crit_edge329 ], [ %i.hb, %bb.aq ]
  %i.hc = icmp slt i64 %.pre-phi336, 1
  br i1 %i.hc, label %.critedge213, label %.lr.ph322

.lr.ph322:                                        ; preds = %bb.ar
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1736
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1552
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph322, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279
  %.in = phi i64 [ %.pre-phi336, %.lr.ph322 ], [ %i.hh, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279 ] ; 2 uses
  %.1156320 = phi ptr [ %.0155, %.lr.ph322 ], [ %.2, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279 ] ; 2 uses
  %.1164319 = phi ptr [ %.0163, %.lr.ph322 ], [ %.2165, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279 ] ; 2 uses
  %.1167318 = phi ptr [ %.0166, %.lr.ph322 ], [ %.2168, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279 ] ; 2 uses
  %.2171317 = phi ptr [ %.0169.lcssa, %.lr.ph322 ], [ %.3, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279 ] ; 2 uses
  %i.hh = add nsw i64 %.in, -1
  %.not204 = icmp eq ptr %.1167318, null
  br i1 %.not204, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hi = load i64, ptr %i.cx, align 8, !tbaa !214
  %i.hj = sub i64 0, %i.hi
  %i.hk = getelementptr inbounds [8 x i8], ptr %.1167318, i64 %i.hj
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.2168 = phi ptr [ %i.hk, %bb.at ], [ null, %bb.as ] ; 3 uses
  %.not205 = icmp eq ptr %.1164319, null
  br i1 %.not205, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hl = load i64, ptr %i.hd, align 8, !tbaa !216
  %i.hm = sub i64 0, %i.hl
  %i.hn = getelementptr inbounds [8 x i8], ptr %.1164319, i64 %i.hm
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.2165 = phi ptr [ %i.hn, %bb.av ], [ null, %bb.au ] ; 4 uses
  %.not206 = icmp eq ptr %.1156320, null
  br i1 %.not206, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ho = load i64, ptr %i.he, align 8, !tbaa !217
  %i.hp = sub i64 0, %i.ho
  %i.hq = getelementptr inbounds [8 x i8], ptr %.1156320, i64 %i.hp
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.2 = phi ptr [ %i.hq, %bb.ax ], [ null, %bb.aw ] ; 4 uses
  %.not207 = icmp eq ptr %.2171317, null
  br i1 %.not207, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hr = load i64, ptr %i.hf, align 8, !tbaa !203
  %i.hs = sub i64 0, %i.hr
  %i.ht = getelementptr inbounds [8 x i8], ptr %.2171317, i64 %i.hs
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.3 = phi ptr [ %i.ht, %bb.az ], [ null, %bb.ay ] ; 4 uses
  %.not208 = icmp eq ptr %.2168, null
  br i1 %.not208, label %.loopexit291, label %.preheader290

.preheader290:                                    ; preds = %bb.ba
  %i.hu = load i64, ptr %i.cx, align 8, !tbaa !214
  %i.hv = icmp sgt i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph310, label %.loopexit291

.lr.ph310:                                        ; preds = %.preheader290, %.lr.ph310
  %.0150309 = phi i64 [ %i.ib, %.lr.ph310 ], [ 0, %.preheader290 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.2168, i64 %.0150309
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !209
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0150309 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !209
  %i.ia = or i64 %i.hz, %i.hx
  store i64 %i.ia, ptr %i.hy, align 8, !tbaa !209
  %i.ib = add nuw nsw i64 %.0150309, 1            ; 2 uses
  %i.ic = load i64, ptr %i.cx, align 8, !tbaa !214
  %i.id = icmp slt i64 %i.ib, %i.ic
  br i1 %i.id, label %.lr.ph310, label %.loopexit291, !llvm.loop !1027

.loopexit291:                                     ; preds = %.lr.ph310, %.preheader290, %bb.ba
  %i.ie = load i64, ptr %i.cu, align 8, !tbaa !189
  %i.if = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ie
  %i.ig = call noundef i32 @_ZNK6casadi10Integrator15bdae_sp_forwardEPNS_12SpForwardMemEPKyS4_S4_S4_S4_S4_PyS5_(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %9, ptr noundef %i.df, ptr noundef %i.if, ptr noundef %i.bw, ptr noundef %.3, ptr noundef %i.dj, ptr noundef %.2165, ptr noundef %i.cw, ptr noundef %i.cz)
  %.not209 = icmp eq i32 %i.ig, 0
  br i1 %.not209, label %.preheader289, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

.preheader289:                                    ; preds = %.loopexit291
  %i.ih = load i64, ptr %i.cx, align 8, !tbaa !214 ; 2 uses
  %i.ii = icmp sgt i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph312, label %._crit_edge313

._crit_edge313:                                   ; preds = %.lr.ph312, %.preheader289
  %.lcssa = phi i64 [ %i.ih, %.preheader289 ], [ %i.iz, %.lr.ph312 ]
  %i.ij = load i64, ptr %i.da, align 8, !tbaa !215
  %i.ik = add nsw i64 %i.ij, %.lcssa              ; 3 uses
  %i.il = icmp slt i64 %i.ik, 1
  br i1 %i.il, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit268, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge313
  %.not.i265 = icmp eq i64 %i.ik, 1
  br i1 %.not.i265, label %bb.bd, label %bb.bc, !prof !151

bb.bc:                                            ; preds = %bb.bb
  %.idx.i.i264 = shl nuw nsw i64 %i.ik, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dk, ptr align 8 %i.cw, i64 %.idx.i.i264, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit268

bb.bd:                                            ; preds = %bb.bb
  %i.im = load i64, ptr %i.cw, align 8, !tbaa !209
  store i64 %i.im, ptr %i.dk, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit268

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit268:           ; preds = %bb.bc, %bb.bd, %._crit_edge313
  %i.in = load i64, ptr %i.cx, align 8, !tbaa !214
  %i.io = load i64, ptr %i.da, align 8, !tbaa !215
  %i.ip = add nsw i64 %i.io, %i.in                ; 2 uses
  %i.iq = icmp slt i64 %i.ip, 1
  br i1 %i.iq, label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit274, label %.lr.ph.i.i.i.i269

.lr.ph.i.i.i.i269:                                ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit268
  %.idx.i.i270 = shl nuw nsw i64 %i.ip, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cw, i8 0, i64 %.idx.i.i270, i1 false), !tbaa !209
  br label %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit274

_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit274:           ; preds = %.lr.ph.i.i.i.i269, %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit268
  call void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef %i.cw, ptr noundef %i.dk, i1 noundef zeroext false)
  %i.ir = load i64, ptr %i.dd, align 8, !tbaa !218
  %i.is = icmp sgt i64 %i.ir, 0
  %or.cond4 = and i1 %i.gc, %i.is
  br i1 %or.cond4, label %bb.bf, label %bb.be

.lr.ph312:                                        ; preds = %.preheader289, %.lr.ph312
  %.0149311 = phi i64 [ %i.iy, %.lr.ph312 ], [ 0, %.preheader289 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.0149311
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !209
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.0149311 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !209
  %i.ix = or i64 %i.iw, %i.iu
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !209
  %i.iy = add nuw nsw i64 %.0149311, 1            ; 2 uses
  %i.iz = load i64, ptr %i.cx, align 8, !tbaa !214 ; 2 uses
  %i.ja = icmp slt i64 %i.iy, %i.iz
  br i1 %i.ja, label %.lr.ph312, label %._crit_edge313, !llvm.loop !1028

bb.be:                                            ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit274
  %i.jb = load i64, ptr %i.he, align 8, !tbaa !217
  %i.jc = icmp sgt i64 %i.jb, 0
  %i.jd = icmp ne ptr %.2, null
  %or.cond6 = select i1 %i.jc, i1 %i.jd, i1 false
  br i1 %or.cond6, label %10, label %.loopexit

10:                                               ; preds = %bb.be
  %11 = load i64, ptr %i.cu, align 8, !tbaa !189
  %12 = getelementptr inbounds [8 x i8], ptr %i.df, i64 %11
  %13 = call noundef i32 @_ZNK6casadi10Integrator16bquad_sp_forwardEPNS_12SpForwardMemEPKyS4_S4_S4_S4_S4_S4_PyS5_(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %9, ptr noundef %i.df, ptr noundef %12, ptr noundef %i.bw, ptr noundef %.3, ptr noundef %i.cw, ptr noundef %i.cz, ptr noundef %.2165, ptr noundef %i.dc, ptr noundef nonnull %.2)
  %.not210 = icmp eq i32 %13, 0
  br i1 %.not210, label %bb.bg, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

bb.bf:                                            ; preds = %_ZSt6fill_nIPyxiET_S1_T0_RKT1_.exit274
  %i.je = load i64, ptr %i.cu, align 8, !tbaa !189
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.je
  %i.jg = call noundef i32 @_ZNK6casadi10Integrator16bquad_sp_forwardEPNS_12SpForwardMemEPKyS4_S4_S4_S4_S4_S4_PyS5_(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef nonnull %9, ptr noundef %i.df, ptr noundef %i.jf, ptr noundef %i.bw, ptr noundef %.3, ptr noundef %i.cw, ptr noundef %i.cz, ptr noundef %.2165, ptr noundef %i.dc, ptr noundef %.2)
  %.not210.a = icmp eq i32 %i.jg, 0
  br i1 %.not210.a, label %.preheader, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

bb.bg:                                            ; preds = %10
  br i1 %i.gc, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.bf, %bb.bg
  %i.jh = load i64, ptr %i.dd, align 8, !tbaa !218
  %i.ji = icmp sgt i64 %i.jh, 0
  br i1 %i.ji, label %.lr.ph316, label %.loopexit

.lr.ph316:                                        ; preds = %.preheader, %.lr.ph316
  %.0315 = phi i64 [ %i.jo, %.lr.ph316 ], [ 0, %.preheader ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.0315
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !209
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.0315 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !209
  %i.jn = or i64 %i.jm, %i.jk
  store i64 %i.jn, ptr %i.jl, align 8, !tbaa !209
  %i.jo = add nuw nsw i64 %.0315, 1               ; 2 uses
  %i.jp = load i64, ptr %i.dd, align 8, !tbaa !218
  %i.jq = icmp slt i64 %i.jo, %i.jp
  br i1 %i.jq, label %.lr.ph316, label %.loopexit, !llvm.loop !1029

.loopexit:                                        ; preds = %.lr.ph316, %.preheader, %bb.bg, %bb.be
  %i.jr = load i64, ptr %i.cu, align 8, !tbaa !189 ; 3 uses
  %i.js = icmp slt i64 %i.jr, 1
  br i1 %i.js, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %.not.i276 = icmp eq i64 %i.jr, 1
  br i1 %.not.i276, label %bb.bj, label %bb.bi, !prof !151

bb.bi:                                            ; preds = %bb.bh
  %.idx.i.i275 = shl nuw nsw i64 %i.jr, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dj, ptr align 8 %i.cw, i64 %.idx.i.i275, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279

bb.bj:                                            ; preds = %bb.bh
  %i.jt = load i64, ptr %i.cw, align 8, !tbaa !209
  store i64 %i.jt, ptr %i.dj, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279:           ; preds = %bb.bi, %bb.bj, %.loopexit
  %i.ju = icmp samesign ult i64 %.in, 2
  br i1 %i.ju, label %.critedge213, label %bb.as, !llvm.loop !1030

.critedge213:                                     ; preds = %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit279, %bb.ar
  %.not211 = icmp eq ptr %i.cm, null
  br i1 %.not211, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284, label %bb.bk

bb.bk:                                            ; preds = %.critedge213
  %i.jv = load i64, ptr %i.cx, align 8, !tbaa !214 ; 3 uses
  %i.jw = icmp slt i64 %i.jv, 1
  br i1 %i.jw, label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not.i281 = icmp eq i64 %i.jv, 1
  br i1 %.not.i281, label %bb.bn, label %bb.bm, !prof !151

bb.bm:                                            ; preds = %bb.bl
  %.idx.i.i280 = shl nuw nsw i64 %i.jv, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cm, ptr align 8 %i.cw, i64 %.idx.i.i280, i1 false)
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

bb.bn:                                            ; preds = %bb.bl
  %i.jx = load i64, ptr %i.cw, align 8, !tbaa !209
  store i64 %i.jx, ptr %i.cm, align 8, !tbaa !209
  br label %_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284

_ZSt6copy_nIPyxS0_ET1_T_T0_S1_.exit284:           ; preds = %bb.o, %bb.y, %.loopexit291, %10, %bb.bf, %bb.bk, %bb.bn, %bb.bm, %.critedge, %.critedge213
  %.2180 = phi i32 [ 0, %.critedge ], [ 0, %bb.bm ], [ 0, %.critedge213 ], [ 0, %bb.bn ], [ 1, %.loopexit291 ], [ 0, %bb.bk ], [ 1, %bb.bf ], [ 1, %10 ], [ 1, %bb.y ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  ret i32 %.2180
}

declare void @_ZNK6casadi8Sparsity7spsolveEPyS1_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZNK6casadi10Integrator15fdae_sp_reverseEPNS_12SpReverseMemEPyS3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !270    ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !246
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !246
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !246
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.e, align 8, !tbaa !246
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 20
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.a
  %.052 = phi i64 [ 0, %bb.a ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ] ; 2 uses
  %i.r = load i64, ptr %i.f, align 8, !tbaa !160
  %i.s = icmp slt i64 %.052, %i.r
  br i1 %i.s, label %._crit_edge.i.i, label %._crit_edge.i.i70

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.t = add nuw nsw i64 %.052, 1                 ; 5 uses
  %i.u = load i64, ptr %i.g, align 8, !tbaa !159
  %i.v = mul nsw i64 %i.u, %i.t                   ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %5, i64 %i.v
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !271  ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !246
  %i.y = load i64, ptr %i.i, align 8, !tbaa !161
  %i.z = mul nsw i64 %i.y, %i.t
  %i.aa = getelementptr inbounds [8 x i8], ptr %6, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !246
  %i.ac = load ptr, ptr %1, align 8, !tbaa !270   ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %5, ptr %i.ad, align 8, !tbaa !246
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %6, ptr %i.ae, align 8, !tbaa !246
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr null, ptr %i.af, align 8, !tbaa !246
  %i.ag = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !246
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store ptr null, ptr %i.ai, align 8, !tbaa !246
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !162
  %i.ak = mul nsw i64 %i.aj, %i.t
  %i.al = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %i.al, ptr %i.am, align 8, !tbaa !246
  %i.an = load i64, ptr %i.k, align 8, !tbaa !163
  %i.ao = mul nsw i64 %i.an, %i.t
  %i.ap = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store ptr %i.l, ptr %8, align 8, !tbaa !29
  store i32 1181049188, ptr %i.l, align 8
  store i64 4, ptr %i.m, align 8, !tbaa !35
  store i8 0, ptr %i.q, align 4, !tbaa !34
  invoke void @_ZN6casadi16FunctionInternal12forward_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ar = load ptr, ptr %1, align 8, !tbaa !270
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !271
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !272
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !273
  %i.av = invoke noundef i32 @_ZNK6casadi14OracleFunction15calc_sp_reverseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPySA_PxS9_(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.au)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.av, 0
  %i.aw = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !34
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.l
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !34
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br i1 %.not, label %bb.b, label %.loopexit, !llvm.loop !1033

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.f:                                             ; preds = %bb.c
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.p
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.f
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !34
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.e
  %.pn = phi { ptr, i32 } [ %i.be, %bb.e ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.bf, %bb.f ]
  %i.bk = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !34
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %bb.i

._crit_edge.i.i70:                                ; preds = %bb.b
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !271 ; 3 uses
  store ptr %5, ptr %i.bo, align 8, !tbaa !246
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %6, ptr %i.bp, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bq, ptr %9, align 8, !tbaa !29
  store i32 1181049188, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.br, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.bs, align 4, !tbaa !34
  %i.bt = load ptr, ptr %1, align 8, !tbaa !270
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !272
  %i.bv = load ptr, ptr %i.o, align 8, !tbaa !273
  %i.bw = invoke noundef i32 @_ZNK6casadi14OracleFunction15calc_sp_reverseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPPySA_PxS9_(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.bt, ptr noundef nonnull %i.bo, ptr noundef %i.bu, ptr noundef %i.bv)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i70
  %.not60 = icmp ne i32 %i.bw, 0
  %i.bx = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bq
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.g
  %i.bz = load i64, ptr %i.bq, align 8, !tbaa !34
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %. = zext i1 %.not60 to i32
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge.i.i70
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bq
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.h
end_hunk_0
