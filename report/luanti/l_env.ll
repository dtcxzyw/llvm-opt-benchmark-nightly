Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_env?download=true
inline.NumInlined: 1766
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13BaseExceptionD2Ev:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN9ModApiEnv20l_find_nodes_in_areaEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 10 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 10 uses
  %3 = alloca %"class.std::vector.548", align 8   ; 25 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1) ; 4 uses
  store i48 %i.c, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.d = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 4 uses
  store i48 %i.d, ptr %2, align 8
  %i.e = trunc i48 %i.c to i16                    ; 2 uses
  %i.f = trunc i48 %i.d to i16                    ; 2 uses
  %i.g = icmp sgt i16 %i.e, %i.f
  %i.h = lshr i48 %i.c, 16
  %i.i = trunc i48 %i.h to i16                    ; 2 uses
  %i.j = lshr i48 %i.d, 16
  %i.k = trunc i48 %i.j to i16                    ; 2 uses
  %i.l = lshr i48 %i.c, 32
  %i.m = trunc nuw i48 %i.l to i16                ; 2 uses
  %i.n = lshr i48 %i.d, 32
  %i.o = trunc nuw i48 %i.n to i16                ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 %i.f, ptr %1, align 8, !tbaa !42
  store i16 %i.e, ptr %2, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = icmp sgt i16 %i.i, %i.k
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.k, ptr %i.r, align 2, !tbaa !42
  store i16 %i.i, ptr %i.q, align 2, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = icmp sgt i16 %i.m, %i.o
  br i1 %i.s, label %bb.g, label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.o, ptr %i.u, align 4, !tbaa !42
  store i16 %i.m, ptr %i.t, align 4, !tbaa !42
  br label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit: ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !1 ; 5 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(144) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(88) %i.a) ; 6 uses
  call void @_ZN13ModApiEnvBase9checkAreaERN4core8vector3dIsEES3_(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 2 dereferenceable(6) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN13ModApiEnvBase14collectNodeIdsEP9lua_StateiPK14NodeDefManagerRSt6vectorItSaItEE(ptr noundef %0, i32 noundef 3, ptr noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.bf

bb.h:                                             ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.af = invoke i32 @lua_type(ptr noundef %0, i32 noundef 4)
          to label %bb.i unwind label %bb.bg

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !253 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !251   ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.an = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 4)
          to label %bb.k unwind label %bb.bg

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !253 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !251   ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.au = lshr exact i64 %i.at, 1
  %i.av = trunc i64 %i.au to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.av)
          to label %.noexc unwind label %bb.bh

.noexc:                                           ; preds = %bb.l
  %i.aw = invoke i32 @lua_gettop(ptr noundef %0)
          to label %.noexc22 unwind label %bb.bh  ; 2 uses

.noexc22:                                         ; preds = %.noexc
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !253 ; 4 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !251   ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 1                 ; 3 uses
  %.not260.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not260.i, label %._crit_edge292.i, label %bb.m

bb.m:                                             ; preds = %.noexc22
  %i.bd = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bd, label %.noexc179.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

.noexc179.i:                                      ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #30
          to label %.noexc23 unwind label %bb.bh

.noexc23:                                         ; preds = %.noexc179.i
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.be = shl nuw nsw i64 %i.bb, 1
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #27
          to label %.noexc24 unwind label %bb.bh  ; 6 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bf, align 4, !tbaa !254
  %i.bg = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc24
  %i.bi = getelementptr i8, ptr %i.bf, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !254
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc24
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !253 ; 3 uses
  %.pre326.i = load ptr, ptr %3, align 8, !tbaa !251 ; 2 uses
  %i.bl = icmp eq ptr %.pre.i, %.pre326.i
  br i1 %i.bl, label %._crit_edge292.i, label %.lr.ph291.i

._crit_edge292.i:                                 ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %.noexc22
  %.pr69 = phi ptr [ %i.ay, %.noexc22 ], [ %.pre326.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.hh, %bb.z ] ; 2 uses
  %.sroa.16.1362.i = phi i64 [ 0, %.noexc22 ], [ %i.bk, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.bk, %bb.z ] ; 4 uses
  %.sroa.0.1357.i = phi ptr [ null, %.noexc22 ], [ %i.bf, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.bf, %bb.z ] ; 8 uses
  %i.bm = phi ptr [ %i.ax, %.noexc22 ], [ %.pre.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.hh, %bb.z ] ; 2 uses
  %i.bn = phi ptr [ %i.ax, %.noexc22 ], [ %.pre.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.hg, %bb.z ] ; 2 uses
  %.sroa.03.0.copyload.i.i = load i48, ptr %1, align 8, !tbaa !42 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i48, ptr %2, align 8, !tbaa !42 ; 4 uses
  %.sroa.060.0.extract.trunc.i.i.i = trunc i48 %.sroa.03.0.copyload.i.i to i16 ; 2 uses
  %.sroa.361.0.extract.shift.i.i.i = lshr i48 %.sroa.03.0.copyload.i.i, 16
  %.sroa.361.0.extract.trunc.i.i.i = trunc i48 %.sroa.361.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.058.0.extract.trunc.i.i.i = trunc i48 %.sroa.0.0.copyload.i.i to i16 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.0.0.copyload.i.i, 16
  %.sroa.3.0.extract.trunc.i.i.i = trunc i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.bo = sext i16 %.sroa.060.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.bp = add nsw i32 %i.bo, -15
  %i.bq = icmp slt i16 %.sroa.060.0.extract.trunc.i.i.i, 0
  %i.br = select i1 %i.bq, i32 %i.bp, i32 %i.bo
  %i.bs = sdiv i32 %i.br, 16                      ; 3 uses
  %i.bt = sext i16 %.sroa.361.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.bu = add nsw i32 %i.bt, -15
  %i.bv = icmp slt i16 %.sroa.361.0.extract.trunc.i.i.i, 0
  %i.bw = select i1 %i.bv, i32 %i.bu, i32 %i.bt
  %i.bx = sdiv i32 %i.bw, 16                      ; 4 uses
  %i.by = ashr i48 %.sroa.03.0.copyload.i.i, 32
  %i.bz = trunc nsw i48 %i.by to i32              ; 4 uses
  %i.ca = add nsw i32 %i.bz, -15
  %i.cb = icmp slt i48 %.sroa.03.0.copyload.i.i, 0
  %i.cc = select i1 %i.cb, i32 %i.ca, i32 %i.bz
  %i.cd = sdiv i32 %i.cc, 16                      ; 4 uses
  %.sroa.054.0.extract.trunc.i.i.i = trunc nsw i32 %i.bs to i16
  %.sroa.455.0.extract.trunc.i.i.i = trunc nsw i32 %i.bx to i16
  %.sroa.556.0.extract.trunc.i.i.i = trunc nsw i32 %i.cd to i16
  %i.ce = sext i16 %.sroa.058.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.cf = add nsw i32 %i.ce, -15
  %i.cg = icmp slt i16 %.sroa.058.0.extract.trunc.i.i.i, 0
  %i.ch = select i1 %i.cg, i32 %i.cf, i32 %i.ce
  %i.ci = sdiv i32 %i.ch, 16                      ; 3 uses
  %i.cj = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.ck = add nsw i32 %i.cj, -15
  %i.cl = icmp slt i16 %.sroa.3.0.extract.trunc.i.i.i, 0
  %i.cm = select i1 %i.cl, i32 %i.ck, i32 %i.cj
  %i.cn = sdiv i32 %i.cm, 16                      ; 4 uses
  %i.co = ashr i48 %.sroa.0.0.copyload.i.i, 32
  %i.cp = trunc nsw i48 %i.co to i32              ; 3 uses
  %i.cq = add nsw i32 %i.cp, -15
  %i.cr = icmp slt i48 %.sroa.0.0.copyload.i.i, 0
  %i.cs = select i1 %i.cr, i32 %i.cq, i32 %i.cp
  %i.ct = sdiv i32 %i.cs, 16                      ; 2 uses
  %.mask.i.i81.i.i.i = and i32 %i.ct, 65535
  %.sroa.3.0.insert.ext.i.i82.i.i.i = zext nneg i32 %.mask.i.i81.i.i.i to i48
  %.sroa.3.0.insert.shift.i.i83.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i82.i.i.i, 32
  %.sroa.051.0.extract.trunc.i.i.i = trunc nsw i32 %i.ci to i16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nsw i32 %i.cn to i16
  %i.cu = ashr exact i48 %.sroa.3.0.insert.shift.i.i83.i.i.i, 32
  %i.cv = trunc nsw i48 %i.cu to i32
  %.not166.i.i.i = icmp sgt i32 %i.cd, %i.cv
  br i1 %.not166.i.i.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i", label %.preheader137.lr.ph.i.i.i

.preheader137.lr.ph.i.i.i:                        ; preds = %._crit_edge292.i
  %.not70161.i.i.i = icmp sgt i32 %i.bs, %i.ci
  %.not71158.i.i.i = icmp sgt i32 %i.bx, %i.cn
  %or.cond.i.i.i = select i1 %.not70161.i.i.i, i1 true, i1 %.not71158.i.i.i
  br i1 %or.cond.i.i.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i", label %.preheader137.preheader.i.i.i

.preheader137.preheader.i.i.i:                    ; preds = %.preheader137.lr.ph.i.i.i
  %i.cw = shl nsw i16 %.sroa.556.0.extract.trunc.i.i.i, 4
  %i.cx = add i32 %i.aw, 1
  %smax65 = call i32 @llvm.smax.i32(i32 %i.cd, i32 %i.ct)
  br label %.preheader137.i.i.i

.preheader137.i.i.i:                              ; preds = %._crit_edge163.i.i.i, %.preheader137.preheader.i.i.i
  %indvars.iv320.i = phi i32 [ %indvars.iv.next321.i, %._crit_edge163.i.i.i ], [ %i.cd, %.preheader137.preheader.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i16 [ %indvars.iv.next.i.i.i, %._crit_edge163.i.i.i ], [ %i.cw, %.preheader137.preheader.i.i.i ] ; 2 uses
  %i.cy = sext i16 %indvars.iv.i.i.i to i32
  %i.cz = sub nsw i32 %i.bz, %i.cy
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cz, i32 0)
  %i.da = call i32 @llvm.umin.i32(i32 %smax.i.i.i, i32 15)
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = trunc nsw i32 %indvars.iv320.i to i16
  %.mask353.i = and i32 %indvars.iv320.i, 65535
  %.sroa.7.0.insert.ext.i.i.i = zext nneg i32 %.mask353.i to i48
  %.sroa.7.0.insert.shift.i.i.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i, 32 ; 3 uses
  %i.dd = shl i16 %i.dc, 4                        ; 2 uses
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = sub nsw i32 %i.bz, %i.de
  %i.dg = call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %i.dh = call i32 @llvm.umin.i32(i32 %i.dg, i32 15)
  %i.di = sub nsw i32 %i.cp, %i.de
  %i.dj = call i32 @llvm.smax.i32(i32 %i.di, i32 0) ; 2 uses
  %.not72152.i.i.i = icmp samesign ult i32 %i.dj, %i.dh
  %.not72152.fr.i.i.i = freeze i1 %.not72152.i.i.i
  br i1 %.not72152.fr.i.i.i, label %.preheader136.us.i.i.i, label %.preheader136.preheader.i.i.i

.preheader136.preheader.i.i.i:                    ; preds = %.preheader137.i.i.i
  %i.dk = call i32 @llvm.umin.i32(i32 %i.dj, i32 15)
  %zext.i.i.i = zext nneg i32 %i.dk to i64
  br label %.preheader136.i.i.i

.preheader136.us.i.i.i:                           ; preds = %.preheader137.i.i.i, %._crit_edge160.split.us.us.i.i.i
  %.066162.us.i.i.i = phi i16 [ %i.dn, %._crit_edge160.split.us.us.i.i.i ], [ %.sroa.054.0.extract.trunc.i.i.i, %.preheader137.i.i.i ] ; 3 uses
  %.sroa.0133.0.insert.ext.us.i.i.i = zext i16 %.066162.us.i.i.i to i48
  %invariant.op158 = or disjoint i48 %.sroa.0133.0.insert.ext.us.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  br label %bb.n

bb.n:                                             ; preds = %.noexc42.i, %.preheader136.us.i.i.i
  %.065159.us.us.i.i.i = phi i16 [ %.sroa.455.0.extract.trunc.i.i.i, %.preheader136.us.i.i.i ], [ %i.dm, %.noexc42.i ] ; 3 uses
  %.sroa.5134.0.insert.ext.us.us.i.i.i = zext i16 %.065159.us.us.i.i.i to i48
  %.sroa.5134.0.insert.shift.us.us.i.i.i = shl nuw nsw i48 %.sroa.5134.0.insert.ext.us.us.i.i.i, 16
  %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = or disjoint i48 %.sroa.5134.0.insert.shift.us.us.i.i.i, %invariant.op158
  %i.dl = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.i ; 0 uses

.noexc42.i:                                       ; preds = %bb.n
  %i.dm = add nsw i16 %.065159.us.us.i.i.i, 1
  %exitcond202.i.i.i = icmp eq i16 %.065159.us.us.i.i.i, %.sroa.4.0.extract.trunc.i.i.i
  br i1 %exitcond202.i.i.i, label %._crit_edge160.split.us.us.i.i.i, label %bb.n, !llvm.loop !399

._crit_edge160.split.us.us.i.i.i:                 ; preds = %.noexc42.i
  %i.dn = add nsw i16 %.066162.us.i.i.i, 1
  %exitcond203.i.i.i = icmp eq i16 %.066162.us.i.i.i, %.sroa.051.0.extract.trunc.i.i.i
  br i1 %exitcond203.i.i.i, label %._crit_edge163.i.i.i, label %.preheader136.us.i.i.i, !llvm.loop !400

.preheader136.i.i.i:                              ; preds = %._crit_edge160.split.i.i.i, %.preheader136.preheader.i.i.i
  %indvars.iv197.i.i.i = phi i32 [ %i.bs, %.preheader136.preheader.i.i.i ], [ %indvars.iv.next198.i.i.i, %._crit_edge160.split.i.i.i ] ; 4 uses
  %i.do = trunc nsw i32 %indvars.iv197.i.i.i to i16
  %.mask.i.i.i = and i32 %indvars.iv197.i.i.i, 65535 ; 2 uses
  %i.dp = shl i16 %i.do, 4                        ; 2 uses
  %i.dq = sext i16 %i.dp to i32                   ; 2 uses
  %i.dr = sub nsw i32 %i.bo, %i.dq
  %i.ds = call i32 @llvm.smax.i32(i32 %i.dr, i32 0)
  %i.dt = call i32 @llvm.umin.i32(i32 %i.ds, i32 15) ; 2 uses
  %i.du = trunc nuw nsw i32 %i.dt to i16
  %i.dv = sub nsw i32 %i.ce, %i.dq
  %i.dw = call i32 @llvm.smax.i32(i32 %i.dv, i32 0) ; 2 uses
  %i.dx = call i32 @llvm.umin.i32(i32 %i.dw, i32 15)
  %.not76146.i.i.i = icmp samesign ult i32 %i.dw, %i.dt
  %.not76146.i.fr.i.i = freeze i1 %.not76146.i.i.i
  br i1 %.not76146.i.fr.i.i, label %.preheader135.lr.ph.i.us.i.i, label %.preheader135.lr.ph.i.i.i

.preheader135.lr.ph.i.us.i.i:                     ; preds = %.preheader136.i.i.i, %.noexc43.i
  %indvars.iv194.i.us.i.i = phi i32 [ %indvars.iv.next195.i.us.i.i, %.noexc43.i ], [ %i.bx, %.preheader136.i.i.i ] ; 3 uses
  %i.dy = shl i32 %indvars.iv194.i.us.i.i, 16
  %i.dz = or disjoint i32 %i.dy, %.mask.i.i.i
  %i.ea = zext i32 %i.dz to i48
  %.sroa.0133.0.insert.insert.reass.i.us.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i, %i.ea
  %i.eb = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.us.i.i)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 0 uses

.noexc43.i:                                       ; preds = %.preheader135.lr.ph.i.us.i.i
  %indvars.iv.next195.i.us.i.i = add nsw i32 %indvars.iv194.i.us.i.i, 1
  %exitcond.i.us.i.i = icmp eq i32 %indvars.iv194.i.us.i.i, %i.cn
  br i1 %exitcond.i.us.i.i, label %._crit_edge160.split.i.i.i, label %.preheader135.lr.ph.i.us.i.i, !llvm.loop !399

.preheader135.lr.ph.i.i.i:                        ; preds = %.preheader136.i.i.i, %._crit_edge154.i.i.i
  %indvars.iv194.i.i.i = phi i32 [ %indvars.iv.next195.i.i.i, %._crit_edge154.i.i.i ], [ %i.bx, %.preheader136.i.i.i ] ; 4 uses
  %i.ec = shl i32 %indvars.iv194.i.i.i, 16
  %i.ed = or disjoint i32 %i.ec, %.mask.i.i.i
  %i.ee = zext i32 %i.ed to i48
  %.sroa.0133.0.insert.insert.reass.i.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i, %i.ee
  %i.ef = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.i.i)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

.noexc44.i:                                       ; preds = %.preheader135.lr.ph.i.i.i
  %i.eg = trunc nsw i32 %indvars.iv194.i.i.i to i16
  %i.eh = shl i16 %i.eg, 4                        ; 2 uses
  %i.ei = sext i16 %i.eh to i32                   ; 2 uses
  %i.ej = sub nsw i32 %i.bt, %i.ei
  %i.ek = call i32 @llvm.smax.i32(i32 %i.ej, i32 0)
  %i.el = call i32 @llvm.umin.i32(i32 %i.ek, i32 15) ; 2 uses
  %i.em = trunc nuw nsw i32 %i.el to i16
  %i.en = sub nsw i32 %i.cj, %i.ei
  %i.eo = call i32 @llvm.smax.i32(i32 %i.en, i32 0) ; 2 uses
  %i.ep = call i32 @llvm.umin.i32(i32 %i.eo, i32 15)
  %.not74149.i.i.i = icmp samesign ult i32 %i.eo, %i.el
  %.not77.i.i.i = icmp eq ptr %i.ef, null
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  br i1 %.not74149.i.i.i, label %._crit_edge154.i.i.i, label %.preheader135.i.i.i

.preheader135.i.i.i:                              ; preds = %.noexc44.i, %._crit_edge151.split.i.i.i
  %indvars.iv181.i.i.i = phi i64 [ %indvars.iv.next182.i.i.i, %._crit_edge151.split.i.i.i ], [ %i.db, %.noexc44.i ] ; 4 uses
  %i.es = trunc nuw nsw i64 %indvars.iv181.i.i.i to i16
  %i.et = add nuw i16 %i.dd, %i.es
  %.sroa.3.0.insert.ext.i99.i.i.i = zext i16 %i.et to i48
  %.sroa.3.0.insert.shift.i100.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i99.i.i.i, 32
  %i.eu = shl nuw nsw i64 %indvars.iv181.i.i.i, 8
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader135.i.i.i
  %.063150.i.i.i = phi i16 [ %i.em, %.preheader135.i.i.i ], [ %i.hc, %._crit_edge.i.i.i ] ; 3 uses
  %i.ev = add i16 %.063150.i.i.i, %i.eh
  %.sroa.2.0.insert.ext.i101.i.i.i = zext i16 %i.ev to i48
  %.sroa.2.0.insert.shift.i102.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i101.i.i.i, 16
  %.sroa.2.0.insert.insert.i103.i.i.i = or disjoint i48 %.sroa.2.0.insert.shift.i102.i.i.i, %.sroa.3.0.insert.shift.i100.i.i.i
  %i.ew = sext i16 %.063150.i.i.i to i64
  %i.ex = shl nsw i64 %i.ew, 4
  %i.ey = add nsw i64 %i.ex, %i.eu
  br label %bb.o

bb.o:                                             ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i", %.preheader.i.i.i
  %.0147.i.i.i = phi i16 [ %i.du, %.preheader.i.i.i ], [ %i.ha, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %i.ez = add i16 %.0147.i.i.i, %i.dp
  %.sroa.0.0.insert.ext.i104.i.i.i = zext i16 %i.ez to i48
  %.sroa.0.0.insert.insert.i105.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i103.i.i.i, %.sroa.0.0.insert.ext.i104.i.i.i
  br i1 %.not77.i.i.i, label %bb.p, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i

_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i:      ; preds = %bb.o
  %i.fa = load ptr, ptr %i.eq, align 8, !tbaa !441
  %i.fb = load i8, ptr %i.er, align 4, !tbaa !442, !range !77, !noundef !78
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = sext i16 %.0147.i.i.i to i64
  %i.fe = add nsw i64 %i.ey, %i.fd
  %i.ff = and i64 %i.fe, 4294967295
  %i.fg = select i1 %i.fc, i64 0, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fg
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.fh, align 4
  %i.fi = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i16
  br label %bb.p

bb.p:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i, %bb.o
  %.sroa.0.0.insert.insert.i.i.i = phi i16 [ %i.fi, %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i ], [ 127, %bb.o ] ; 7 uses
  %i.fj = load ptr, ptr %3, align 8, !tbaa !249   ; 4 uses
  %i.fk = load ptr, ptr %i.ao, align 8, !tbaa !249 ; 3 uses
  %i.fl = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fm = ptrtoint ptr %i.fj to i64               ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = ashr i64 %i.fn, 3                       ; 2 uses
  %i.fp = icmp sgt i64 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.p
  %i.fq = and i64 %i.fn, -8
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.fj, i64 %i.fq ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i.i
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gd, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gc, %bb.u ] ; 9 uses
  %i.fr = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !42
  %i.fs = icmp eq i16 %i.fr, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !42
  %i.fv = icmp eq i16 %i.fu, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !42
  %i.fy = icmp eq i16 %i.fx, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fy, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !42
  %i.gb = icmp eq i16 %i.ga, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.gb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8
  %i.gd = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.ge = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.ge, label %bb.q, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.u
  %.pre59.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i.i.i = sub i64 %i.fl, %.pre59.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.p
  %.pre-phi61.i.i.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.fn, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.fj, %bb.p ] ; 5 uses
  %i.gf = ashr exact i64 %.pre-phi61.i.i.i.i.i.i.i, 1
  switch i64 %i.gf, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.gg = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, align 2, !tbaa !42
  %i.gh = icmp eq i16 %i.gg, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.gh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i:             ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.gj = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !42
  %i.gk = icmp eq i16 %i.gj, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.gk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i.i.i:           ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.gl, %bb.x ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.gm = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !42
  %i.gn = icmp eq i16 %i.gm, %.sroa.0.0.insert.insert.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gn, ptr %.sroa.032.2.i.i.i.i.i.i.i, ptr %i.fk
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114: ; preds = %bb.s
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116: ; preds = %bb.t
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i: ; preds = %bb.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116, %._crit_edge._crit_edge57.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %bb.v ], [ %i.gq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116 ], [ %i.gp, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114 ], [ %i.go, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i, %i.fk
  br i1 %.not.i.i.i.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i105.i.i.i)
          to label %.noexc45.i unwind label %.loopexit.i

.noexc45.i:                                       ; preds = %bb.y
  %i.gr = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i to i64
  %i.gs = sub i64 %i.gr, %i.fm
  %i.gt = ashr exact i64 %i.gs, 1                 ; 2 uses
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = add i32 %i.cx, %i.gu
  %i.gw = and i64 %i.gt, 4294967295
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1357.i, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !254
  %i.gz = add i32 %i.gy, 1                        ; 2 uses
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !254
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef %i.gv, i32 noundef %i.gz)
          to label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" unwind label %.loopexit.i

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i": ; preds = %.noexc45.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.ha = add i16 %.0147.i.i.i, 1                 ; 2 uses
  %i.hb = sext i16 %i.ha to i32
  %.not76.i.i.i = icmp slt i32 %i.dx, %i.hb
  br i1 %.not76.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !401

._crit_edge.i.i.i:                                ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i"
  %i.hc = add i16 %.063150.i.i.i, 1               ; 2 uses
  %i.hd = sext i16 %i.hc to i32
  %.not74.i.i.i = icmp slt i32 %i.ep, %i.hd
  br i1 %.not74.i.i.i, label %._crit_edge151.split.i.i.i, label %.preheader.i.i.i, !llvm.loop !402

._crit_edge151.split.i.i.i:                       ; preds = %._crit_edge.i.i.i
  %indvars.iv.next182.i.i.i = add nuw nsw i64 %indvars.iv181.i.i.i, 1
  %.not209.i.i.i = icmp samesign ult i64 %indvars.iv181.i.i.i, %zext.i.i.i
  br i1 %.not209.i.i.i, label %.preheader135.i.i.i, label %._crit_edge154.i.i.i, !llvm.loop !403

._crit_edge154.i.i.i:                             ; preds = %._crit_edge151.split.i.i.i, %.noexc44.i
  %indvars.iv.next195.i.i.i = add nsw i32 %indvars.iv194.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %indvars.iv194.i.i.i, %i.cn
  br i1 %exitcond.i.i.i, label %._crit_edge160.split.i.i.i, label %.preheader135.lr.ph.i.i.i, !llvm.loop !399

._crit_edge160.split.i.i.i:                       ; preds = %._crit_edge154.i.i.i, %.noexc43.i
  %indvars.iv.next198.i.i.i = add nsw i32 %indvars.iv197.i.i.i, 1
  %exitcond201.i.i.i = icmp eq i32 %indvars.iv197.i.i.i, %i.ci
  br i1 %exitcond201.i.i.i, label %._crit_edge163.i.i.i, label %.preheader136.i.i.i, !llvm.loop !400

._crit_edge163.i.i.i:                             ; preds = %._crit_edge160.split.i.i.i, %._crit_edge160.split.us.us.i.i.i
  %indvars.iv.next321.i = add nsw i32 %indvars.iv320.i, 1
  %indvars.iv.next.i.i.i = add i16 %indvars.iv.i.i.i, 16
  %exitcond66.not = icmp eq i32 %indvars.iv320.i, %smax65
  br i1 %exitcond66.not, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i", label %.preheader137.i.i.i, !llvm.loop !404

.lr.ph291.i:                                      ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %bb.z
  %.028290.i = phi i32 [ %i.he, %bb.z ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ]
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %bb.z unwind label %.loopexit.split-lp.thread.i

bb.z:                                             ; preds = %.lr.ph291.i
  %i.he = add i32 %.028290.i, 1                   ; 2 uses
  %i.hf = zext i32 %i.he to i64
  %i.hg = load ptr, ptr %i.ao, align 8, !tbaa !253 ; 2 uses
  %i.hh = load ptr, ptr %3, align 8, !tbaa !251   ; 3 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = ashr exact i64 %i.hk, 1
  %i.hm = icmp ugt i64 %i.hl, %i.hf
  br i1 %i.hm, label %.lr.ph291.i, label %._crit_edge292.i, !llvm.loop !405

.loopexit.split-lp.thread.i:                      ; preds = %.lr.ph291.i
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i": ; preds = %._crit_edge163.i.i.i
  %.pre327.i = load ptr, ptr %i.ao, align 8, !tbaa !253
  %.pre328.i = load ptr, ptr %3, align 8, !tbaa !251 ; 2 uses
  br label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i": ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i", %.preheader137.lr.ph.i.i.i, %._crit_edge292.i
  %.pr68 = phi ptr [ %.pre328.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %.pr69, %.preheader137.lr.ph.i.i.i ], [ %.pr69, %._crit_edge292.i ]
  %i.ho = phi ptr [ %.pre328.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %i.bm, %.preheader137.lr.ph.i.i.i ], [ %i.bm, %._crit_edge292.i ]
  %i.hp = phi ptr [ %.pre327.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %i.bn, %.preheader137.lr.ph.i.i.i ], [ %i.bn, %._crit_edge292.i ]
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = and i64 %i.hs, 8589934590
  %.not302.i = icmp eq i64 %i.ht, 0
  br i1 %.not302.i, label %._crit_edge304.i, label %.lr.ph303.i

.lr.ph303.i:                                      ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"
  %i.hu = lshr exact i64 %i.hs, 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hw = and i64 %i.hu, 4294967295
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.lr.ph303.i
  %indvars.iv323.i = phi i64 [ %i.hw, %.lr.ph303.i ], [ %i.hx, %bb.af ]
  %i.hx = add nsw i64 %indvars.iv323.i, -1        ; 4 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1357.i, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !254
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.af unwind label %.thread242.i

.loopexit.i:                                      ; preds = %.noexc45.i, %bb.y
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.n
  %lpad.loopexit261.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.preheader135.lr.ph.i.us.i.i
  %lpad.loopexit264.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.preheader135.lr.ph.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.thread242.i:                                     ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.ab
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.ic = load ptr, ptr %3, align 8, !tbaa !251
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %i.hx
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !42
  %i.if = zext i16 %i.ie to i64                   ; 2 uses
  %i.ig = load ptr, ptr %i.hv, align 8, !tbaa !108
  %i.ih = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 3 uses
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = sdiv exact i64 %i.ik, 2072
  %i.im = icmp ugt i64 %i.il, %i.if
  br i1 %i.im, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.in = getelementptr inbounds nuw [2072 x i8], ptr %i.ih, i64 %i.if ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !110
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %bb.ae, label %_ZNK14NodeDefManager3getEt.exit.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit.i

_ZNK14NodeDefManager3getEt.exit.i:                ; preds = %bb.ae, %bb.ad
  %i.is = phi ptr [ %i.ir, %bb.ae ], [ %i.in, %bb.ad ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !89
  invoke void @lua_setfield(ptr noundef %0, i32 noundef %i.aw, ptr noundef %i.iu)
          to label %bb.af unwind label %.thread242.i

bb.af:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.ab
  %.not.wide.i = icmp eq i64 %i.hx, 0
  br i1 %.not.wide.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, label %bb.aa, !llvm.loop !406

._crit_edge304.i:                                 ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"
  %.not.i.i.i47.i = icmp eq ptr %.sroa.0.1357.i, null
  br i1 %.not.i.i.i47.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn38.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit261.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit264.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.not.i.i.i48.i = icmp eq ptr %.sroa.0.1357.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

bb.ag:                                            ; preds = %.thread, %bb.k
  %i.iv = phi i64 [ %i.am, %.thread ], [ %i.at, %bb.k ] ; 2 uses
  %i.iw = phi ptr [ %i.aj, %.thread ], [ %i.aq, %bb.k ]
  %i.ix = phi ptr [ %i.ai, %.thread ], [ %i.ap, %bb.k ]
  %i.iy = phi ptr [ %i.ah, %.thread ], [ %i.ao, %bb.k ] ; 4 uses
  %i.iz = ashr exact i64 %i.iv, 1                 ; 3 uses
  %.not259.i = icmp eq ptr %i.ix, %i.iw
  br i1 %.not259.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ja = icmp ugt i64 %i.iz, 2305843009213693951
  br i1 %i.ja, label %bb.ai, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i187.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #30
          to label %.noexc195.i unwind label %bb.aw

.noexc195.i:                                      ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i187.i: ; preds = %bb.ah
  %i.jb = shl nuw nsw i64 %i.iv, 1
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #27
          to label %.noexc196.i unwind label %bb.aw ; 4 uses

.noexc196.i:                                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i187.i
  store i32 0, ptr %i.jc, align 4, !tbaa !254
  %i.jd = add nsw i64 %i.iz, -1                   ; 2 uses
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %.noexc52.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i189.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i189.i: ; preds = %.noexc196.i
  %i.jf = getelementptr i8, ptr %i.jc, i64 4
  %.idx.i.i.i.i.i31.i190.i = shl nuw nsw i64 %i.jd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jf, i8 0, i64 %.idx.i.i.i.i.i31.i190.i, i1 false), !tbaa !254
  br label %.noexc52.i

.noexc52.i:                                       ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i189.i, %.noexc196.i
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.iz
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i:           ; preds = %.noexc52.i, %bb.ag
  %.sroa.0212.2.i = phi ptr [ %i.jc, %.noexc52.i ], [ null, %bb.ag ] ; 11 uses
  %.sroa.16220.2.i = phi ptr [ %i.jg, %.noexc52.i ], [ null, %bb.ag ] ; 8 uses
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i
  %.sroa.03.0.copyload.i54.i = load i48, ptr %1, align 8, !tbaa !42 ; 4 uses
  %.sroa.0.0.copyload.i55.i = load i48, ptr %2, align 8, !tbaa !42 ; 4 uses
  %.sroa.060.0.extract.trunc.i.i63.i = trunc i48 %.sroa.03.0.copyload.i54.i to i16 ; 2 uses
  %.sroa.361.0.extract.shift.i.i64.i = lshr i48 %.sroa.03.0.copyload.i54.i, 16
  %.sroa.361.0.extract.trunc.i.i65.i = trunc i48 %.sroa.361.0.extract.shift.i.i64.i to i16 ; 2 uses
  %.sroa.058.0.extract.trunc.i.i66.i = trunc i48 %.sroa.0.0.copyload.i55.i to i16 ; 2 uses
  %.sroa.3.0.extract.shift.i.i67.i = lshr i48 %.sroa.0.0.copyload.i55.i, 16
  %.sroa.3.0.extract.trunc.i.i68.i = trunc i48 %.sroa.3.0.extract.shift.i.i67.i to i16 ; 2 uses
  %i.jh = sext i16 %.sroa.060.0.extract.trunc.i.i63.i to i32 ; 3 uses
  %i.ji = add nsw i32 %i.jh, -15
  %i.jj = icmp slt i16 %.sroa.060.0.extract.trunc.i.i63.i, 0
  %i.jk = select i1 %i.jj, i32 %i.ji, i32 %i.jh
  %i.jl = sdiv i32 %i.jk, 16                      ; 3 uses
  %i.jm = sext i16 %.sroa.361.0.extract.trunc.i.i65.i to i32 ; 3 uses
  %i.jn = add nsw i32 %i.jm, -15
  %i.jo = icmp slt i16 %.sroa.361.0.extract.trunc.i.i65.i, 0
  %i.jp = select i1 %i.jo, i32 %i.jn, i32 %i.jm
  %i.jq = sdiv i32 %i.jp, 16                      ; 4 uses
  %i.jr = ashr i48 %.sroa.03.0.copyload.i54.i, 32
  %i.js = trunc nsw i48 %i.jr to i32              ; 4 uses
  %i.jt = add nsw i32 %i.js, -15
  %i.ju = icmp slt i48 %.sroa.03.0.copyload.i54.i, 0
  %i.jv = select i1 %i.ju, i32 %i.jt, i32 %i.js
  %i.jw = sdiv i32 %i.jv, 16                      ; 4 uses
  %.sroa.054.0.extract.trunc.i.i69.i = trunc nsw i32 %i.jl to i16
  %.sroa.455.0.extract.trunc.i.i70.i = trunc nsw i32 %i.jq to i16
  %.sroa.556.0.extract.trunc.i.i71.i = trunc nsw i32 %i.jw to i16
  %i.jx = sext i16 %.sroa.058.0.extract.trunc.i.i66.i to i32 ; 3 uses
  %i.jy = add nsw i32 %i.jx, -15
  %i.jz = icmp slt i16 %.sroa.058.0.extract.trunc.i.i66.i, 0
  %i.ka = select i1 %i.jz, i32 %i.jy, i32 %i.jx
  %i.kb = sdiv i32 %i.ka, 16                      ; 3 uses
  %i.kc = sext i16 %.sroa.3.0.extract.trunc.i.i68.i to i32 ; 3 uses
  %i.kd = add nsw i32 %i.kc, -15
  %i.ke = icmp slt i16 %.sroa.3.0.extract.trunc.i.i68.i, 0
  %i.kf = select i1 %i.ke, i32 %i.kd, i32 %i.kc
  %i.kg = sdiv i32 %i.kf, 16                      ; 4 uses
  %i.kh = ashr i48 %.sroa.0.0.copyload.i55.i, 32
  %i.ki = trunc nsw i48 %i.kh to i32              ; 3 uses
  %i.kj = add nsw i32 %i.ki, -15
  %i.kk = icmp slt i48 %.sroa.0.0.copyload.i55.i, 0
  %i.kl = select i1 %i.kk, i32 %i.kj, i32 %i.ki
  %i.km = sdiv i32 %i.kl, 16                      ; 2 uses
  %.mask.i.i81.i.i72.i = and i32 %i.km, 65535
  %.sroa.3.0.insert.ext.i.i82.i.i73.i = zext nneg i32 %.mask.i.i81.i.i72.i to i48
  %.sroa.3.0.insert.shift.i.i83.i.i74.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i82.i.i73.i, 32
  %.sroa.051.0.extract.trunc.i.i75.i = trunc nsw i32 %i.kb to i16
  %.sroa.4.0.extract.trunc.i.i76.i = trunc nsw i32 %i.kg to i16
  %i.kn = ashr exact i48 %.sroa.3.0.insert.shift.i.i83.i.i74.i, 32
  %i.ko = trunc nsw i48 %i.kn to i32
  %.not166.i.i77.i = icmp sgt i32 %i.jw, %i.ko
  br i1 %.not166.i.i77.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.lr.ph.i.i78.i

.preheader137.lr.ph.i.i78.i:                      ; preds = %bb.aj
  %.not70161.i.i79.i = icmp sgt i32 %i.jl, %i.kb
  %.not71158.i.i80.i = icmp sgt i32 %i.jq, %i.kg
  %or.cond.i.i81.i = select i1 %.not70161.i.i79.i, i1 true, i1 %.not71158.i.i80.i
  br i1 %or.cond.i.i81.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.preheader.i.i82.i

.preheader137.preheader.i.i82.i:                  ; preds = %.preheader137.lr.ph.i.i78.i
  %i.kp = shl nsw i16 %.sroa.556.0.extract.trunc.i.i71.i, 4
  %smax = call i32 @llvm.smax.i32(i32 %i.jw, i32 %i.km)
  br label %.preheader137.i.i83.i

.preheader137.i.i83.i:                            ; preds = %._crit_edge163.i.i139.i, %.preheader137.preheader.i.i82.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %._crit_edge163.i.i139.i ], [ %i.jw, %.preheader137.preheader.i.i82.i ] ; 4 uses
  %.0236.i = phi i32 [ %.9.i, %._crit_edge163.i.i139.i ], [ 0, %.preheader137.preheader.i.i82.i ] ; 2 uses
  %indvars.iv.i.i84.i = phi i16 [ %indvars.iv.next.i.i141.i, %._crit_edge163.i.i139.i ], [ %i.kp, %.preheader137.preheader.i.i82.i ] ; 2 uses
  %i.kq = sext i16 %indvars.iv.i.i84.i to i32
  %i.kr = sub nsw i32 %i.js, %i.kq
  %smax.i.i86.i = call i32 @llvm.smax.i32(i32 %i.kr, i32 0)
  %i.ks = call i32 @llvm.umin.i32(i32 %smax.i.i86.i, i32 15)
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = trunc nsw i32 %indvars.iv.i to i16
  %.mask.i = and i32 %indvars.iv.i, 65535
  %.sroa.7.0.insert.ext.i.i87.i = zext nneg i32 %.mask.i to i48
  %.sroa.7.0.insert.shift.i.i88.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i87.i, 32 ; 3 uses
  %i.kv = shl i16 %i.ku, 4                        ; 2 uses
  %i.kw = sext i16 %i.kv to i32                   ; 2 uses
  %i.kx = sub nsw i32 %i.js, %i.kw
  %i.ky = call i32 @llvm.smax.i32(i32 %i.kx, i32 0)
  %i.kz = call i32 @llvm.umin.i32(i32 %i.ky, i32 15)
  %i.la = sub nsw i32 %i.ki, %i.kw
  %i.lb = call i32 @llvm.smax.i32(i32 %i.la, i32 0) ; 2 uses
  %.not72152.i.i89.i = icmp samesign ult i32 %i.lb, %i.kz
  %.not72152.fr.i.i90.i = freeze i1 %.not72152.i.i89.i
  br i1 %.not72152.fr.i.i90.i, label %.preheader136.us.i.i159.i, label %.preheader136.preheader.i.i91.i

.preheader136.preheader.i.i91.i:                  ; preds = %.preheader137.i.i83.i
  %i.lc = call i32 @llvm.umin.i32(i32 %i.lb, i32 15)
  %zext.i.i92.i = zext nneg i32 %i.lc to i64
  br label %.preheader136.i.i93.i

.preheader136.us.i.i159.i:                        ; preds = %.preheader137.i.i83.i, %._crit_edge160.split.us.us.i.i167.i
  %.066162.us.i.i160.i = phi i16 [ %i.lf, %._crit_edge160.split.us.us.i.i167.i ], [ %.sroa.054.0.extract.trunc.i.i69.i, %.preheader137.i.i83.i ] ; 3 uses
  %.sroa.0133.0.insert.ext.us.i.i161.i = zext i16 %.066162.us.i.i160.i to i48
  %invariant.op = or disjoint i48 %.sroa.0133.0.insert.ext.us.i.i161.i, %.sroa.7.0.insert.shift.i.i88.i
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc169.i, %.preheader136.us.i.i159.i
  %.065159.us.us.i.i162.i = phi i16 [ %.sroa.455.0.extract.trunc.i.i70.i, %.preheader136.us.i.i159.i ], [ %i.le, %.noexc169.i ] ; 3 uses
  %.sroa.5134.0.insert.ext.us.us.i.i163.i = zext i16 %.065159.us.us.i.i162.i to i48
  %.sroa.5134.0.insert.shift.us.us.i.i164.i = shl nuw nsw i48 %.sroa.5134.0.insert.ext.us.us.i.i163.i, 16
  %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i165.reass.reass.i.reass.reass.reass = or disjoint i48 %.sroa.5134.0.insert.shift.us.us.i.i164.i, %invariant.op
  %i.ld = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i165.reass.reass.i.reass.reass.reass)
          to label %.noexc169.i unwind label %.loopexit.split-lp269.loopexit.i ; 0 uses

.noexc169.i:                                      ; preds = %bb.ak
  %i.le = add nsw i16 %.065159.us.us.i.i162.i, 1
  %exitcond202.i.i166.i = icmp eq i16 %.065159.us.us.i.i162.i, %.sroa.4.0.extract.trunc.i.i76.i
  br i1 %exitcond202.i.i166.i, label %._crit_edge160.split.us.us.i.i167.i, label %bb.ak, !llvm.loop !407

._crit_edge160.split.us.us.i.i167.i:              ; preds = %.noexc169.i
  %i.lf = add nsw i16 %.066162.us.i.i160.i, 1
  %exitcond203.i.i168.i = icmp eq i16 %.066162.us.i.i160.i, %.sroa.051.0.extract.trunc.i.i75.i
  br i1 %exitcond203.i.i168.i, label %._crit_edge163.i.i139.i, label %.preheader136.us.i.i159.i, !llvm.loop !408

.preheader136.i.i93.i:                            ; preds = %._crit_edge160.split.i.i136.i, %.preheader136.preheader.i.i91.i
  %.1.i = phi i32 [ %.0236.i, %.preheader136.preheader.i.i91.i ], [ %.8.i, %._crit_edge160.split.i.i136.i ] ; 2 uses
  %indvars.iv197.i.i94.i = phi i32 [ %i.jl, %.preheader136.preheader.i.i91.i ], [ %indvars.iv.next198.i.i137.i, %._crit_edge160.split.i.i136.i ] ; 4 uses
  %i.lg = trunc nsw i32 %indvars.iv197.i.i94.i to i16
  %.mask.i.i95.i = and i32 %indvars.iv197.i.i94.i, 65535 ; 2 uses
  %i.lh = shl i16 %i.lg, 4                        ; 2 uses
  %i.li = sext i16 %i.lh to i32                   ; 2 uses
  %i.lj = sub nsw i32 %i.jh, %i.li
  %i.lk = call i32 @llvm.smax.i32(i32 %i.lj, i32 0)
  %i.ll = call i32 @llvm.umin.i32(i32 %i.lk, i32 15) ; 2 uses
  %i.lm = trunc nuw nsw i32 %i.ll to i16
  %i.ln = sub nsw i32 %i.jx, %i.li
  %i.lo = call i32 @llvm.smax.i32(i32 %i.ln, i32 0) ; 2 uses
  %i.lp = call i32 @llvm.umin.i32(i32 %i.lo, i32 15)
  %.not76146.i.i96.i = icmp samesign ult i32 %i.lo, %i.ll
  %.not76146.i.fr.i97.i = freeze i1 %.not76146.i.i96.i
  br i1 %.not76146.i.fr.i97.i, label %.preheader135.lr.ph.i.us.i154.i, label %.preheader135.lr.ph.i.i98.i

.preheader135.lr.ph.i.us.i154.i:                  ; preds = %.preheader136.i.i93.i, %.noexc170.i
  %indvars.iv194.i.us.i155.i = phi i32 [ %indvars.iv.next195.i.us.i157.i, %.noexc170.i ], [ %i.jq, %.preheader136.i.i93.i ] ; 3 uses
  %i.lq = shl i32 %indvars.iv194.i.us.i155.i, 16
  %i.lr = or disjoint i32 %i.lq, %.mask.i.i95.i
  %i.ls = zext i32 %i.lr to i48
  %.sroa.0133.0.insert.insert.reass.i.us.i156.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i88.i, %i.ls
  %i.lt = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.us.i156.i)
          to label %.noexc170.i unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.i ; 0 uses

.noexc170.i:                                      ; preds = %.preheader135.lr.ph.i.us.i154.i
  %indvars.iv.next195.i.us.i157.i = add nsw i32 %indvars.iv194.i.us.i155.i, 1
  %exitcond.i.us.i158.i = icmp eq i32 %indvars.iv194.i.us.i155.i, %i.kg
  br i1 %exitcond.i.us.i158.i, label %._crit_edge160.split.i.i136.i, label %.preheader135.lr.ph.i.us.i154.i, !llvm.loop !407

.preheader135.lr.ph.i.i98.i:                      ; preds = %.preheader136.i.i93.i, %._crit_edge154.i.i133.i
  %.2.i = phi i32 [ %.7.i, %._crit_edge154.i.i133.i ], [ %.1.i, %.preheader136.i.i93.i ] ; 2 uses
  %indvars.iv194.i.i99.i = phi i32 [ %indvars.iv.next195.i.i134.i, %._crit_edge154.i.i133.i ], [ %i.jq, %.preheader136.i.i93.i ] ; 4 uses
  %i.lu = shl i32 %indvars.iv194.i.i99.i, 16
  %i.lv = or disjoint i32 %i.lu, %.mask.i.i95.i
  %i.lw = zext i32 %i.lv to i48
  %.sroa.0133.0.insert.insert.reass.i.i100.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i88.i, %i.lw
  %i.lx = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.i100.i)
          to label %.noexc171.i unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

.noexc171.i:                                      ; preds = %.preheader135.lr.ph.i.i98.i
  %i.ly = trunc nsw i32 %indvars.iv194.i.i99.i to i16
  %i.lz = shl i16 %i.ly, 4                        ; 2 uses
  %i.ma = sext i16 %i.lz to i32                   ; 2 uses
  %i.mb = sub nsw i32 %i.jm, %i.ma
  %i.mc = call i32 @llvm.smax.i32(i32 %i.mb, i32 0)
  %i.md = call i32 @llvm.umin.i32(i32 %i.mc, i32 15) ; 2 uses
  %i.me = trunc nuw nsw i32 %i.md to i16
  %i.mf = sub nsw i32 %i.kc, %i.ma
  %i.mg = call i32 @llvm.smax.i32(i32 %i.mf, i32 0) ; 2 uses
  %i.mh = call i32 @llvm.umin.i32(i32 %i.mg, i32 15)
  %.not74149.i.i101.i = icmp samesign ult i32 %i.mg, %i.md
  %.not77.i.i102.i = icmp eq ptr %i.lx, null
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 36
  br i1 %.not74149.i.i101.i, label %._crit_edge154.i.i133.i, label %.preheader135.i.i103.i

.preheader135.i.i103.i:                           ; preds = %.noexc171.i, %._crit_edge151.split.i.i130.i
  %.3.i = phi i32 [ %.6.i, %._crit_edge151.split.i.i130.i ], [ %.2.i, %.noexc171.i ]
  %indvars.iv181.i.i104.i = phi i64 [ %indvars.iv.next182.i.i131.i, %._crit_edge151.split.i.i130.i ], [ %i.kt, %.noexc171.i ] ; 4 uses
  %i.mk = trunc nuw nsw i64 %indvars.iv181.i.i104.i to i16
  %i.ml = add nuw i16 %i.kv, %i.mk
  %.sroa.3.0.insert.ext.i99.i.i105.i = zext i16 %i.ml to i48
  %.sroa.3.0.insert.shift.i100.i.i106.i = shl nuw i48 %.sroa.3.0.insert.ext.i99.i.i105.i, 32
  %i.mm = shl nuw nsw i64 %indvars.iv181.i.i104.i, 8
  br label %.preheader.i.i107.i

.preheader.i.i107.i:                              ; preds = %._crit_edge.i.i128.i, %.preheader135.i.i103.i
  %.4.i = phi i32 [ %.3.i, %.preheader135.i.i103.i ], [ %.6.i, %._crit_edge.i.i128.i ]
  %.063150.i.i108.i = phi i16 [ %i.me, %.preheader135.i.i103.i ], [ %i.ov, %._crit_edge.i.i128.i ] ; 3 uses
  %i.mn = add i16 %.063150.i.i108.i, %i.lz
  %.sroa.2.0.insert.ext.i101.i.i109.i = zext i16 %i.mn to i48
  %.sroa.2.0.insert.shift.i102.i.i110.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i101.i.i109.i, 16
  %.sroa.2.0.insert.insert.i103.i.i111.i = or disjoint i48 %.sroa.2.0.insert.shift.i102.i.i110.i, %.sroa.3.0.insert.shift.i100.i.i106.i
  %i.mo = sext i16 %.063150.i.i108.i to i64
  %i.mp = shl nsw i64 %i.mo, 4
  %i.mq = add nsw i64 %i.mp, %i.mm
  br label %bb.al

bb.al:                                            ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i", %.preheader.i.i107.i
  %.5.i = phi i32 [ %.4.i, %.preheader.i.i107.i ], [ %.6.i, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %.0147.i.i112.i = phi i16 [ %i.lm, %.preheader.i.i107.i ], [ %i.ot, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %i.mr = add i16 %.0147.i.i112.i, %i.lh
  %.sroa.0.0.insert.ext.i104.i.i113.i = zext i16 %i.mr to i48
  %.sroa.0.0.insert.insert.i105.i.i114.i = or disjoint i48 %.sroa.2.0.insert.insert.i103.i.i111.i, %.sroa.0.0.insert.ext.i104.i.i113.i
  br i1 %.not77.i.i102.i, label %bb.am, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i115.i

_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i115.i:   ; preds = %bb.al
  %i.ms = load ptr, ptr %i.mi, align 8, !tbaa !441
  %i.mt = load i8, ptr %i.mj, align 4, !tbaa !442, !range !77, !noundef !78
  %i.mu = trunc nuw i8 %i.mt to i1
  %i.mv = sext i16 %.0147.i.i112.i to i64
  %i.mw = add nsw i64 %i.mq, %i.mv
  %i.mx = and i64 %i.mw, 4294967295
  %i.my = select i1 %i.mu, i64 0, i64 %i.mx
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.my
  %.sroa.0.0.copyload.i.i.i116.i = load i32, ptr %i.mz, align 4
  %i.na = trunc i32 %.sroa.0.0.copyload.i.i.i116.i to i16
  br label %bb.am

bb.am:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i115.i, %bb.al
  %.sroa.0.0.insert.insert.i.i117.i = phi i16 [ %i.na, %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i115.i ], [ 127, %bb.al ] ; 7 uses
  %i.nb = load ptr, ptr %3, align 8, !tbaa !249   ; 4 uses
  %i.nc = load ptr, ptr %i.iy, align 8, !tbaa !249 ; 3 uses
  %i.nd = ptrtoint ptr %i.nc to i64               ; 2 uses
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 3 uses
  %i.ng = ashr i64 %i.nf, 3                       ; 2 uses
  %i.nh = icmp sgt i64 %i.ng, 0
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i144.i, label %._crit_edge.i.i.i.i.i.i118.i

.lr.ph.i.i.i.i.i.i144.i:                          ; preds = %bb.am
  %i.ni = and i64 %i.nf, -8
  %scevgep.i.i.i.i.i.i145.i = getelementptr i8, ptr %i.nb, i64 %i.ni ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i144.i
  %.052.i.i.i.i.i.i146.i = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i.i144.i ], [ %i.nv, %bb.ar ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i147.i = phi ptr [ %i.nb, %.lr.ph.i.i.i.i.i.i144.i ], [ %i.nu, %bb.ar ] ; 9 uses
  %i.nj = load i16, ptr %.sroa.032.051.i.i.i.i.i.i147.i, align 2, !tbaa !42
  %i.nk = icmp eq i16 %i.nj, %.sroa.0.0.insert.insert.i.i117.i
  br i1 %i.nk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i147.i, i64 2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !42
  %i.nn = icmp eq i16 %i.nm, %.sroa.0.0.insert.insert.i.i117.i
  br i1 %i.nn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i147.i, i64 4
  %i.np = load i16, ptr %i.no, align 2, !tbaa !42
  %i.nq = icmp eq i16 %i.np, %.sroa.0.0.insert.insert.i.i117.i
  br i1 %i.nq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit106, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i147.i, i64 6
  %i.ns = load i16, ptr %i.nr, align 2, !tbaa !42
  %i.nt = icmp eq i16 %i.ns, %.sroa.0.0.insert.insert.i.i117.i
  br i1 %i.nt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit108, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i147.i, i64 8
  %i.nv = add nsw i64 %.052.i.i.i.i.i.i146.i, -1
  %i.nw = icmp sgt i64 %.052.i.i.i.i.i.i146.i, 1
  br i1 %i.nw, label %bb.an, label %._crit_edge.loopexit.i.i.i.i.i.i148.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i.i148.i:            ; preds = %bb.ar
  %.pre59.i.i.i.i.i.i149.i = ptrtoint ptr %scevgep.i.i.i.i.i.i145.i to i64
  %.pre60.i.i.i.i.i.i150.i = sub i64 %i.nd, %.pre59.i.i.i.i.i.i149.i
  br label %._crit_edge.i.i.i.i.i.i118.i

._crit_edge.i.i.i.i.i.i118.i:                     ; preds = %._crit_edge.loopexit.i.i.i.i.i.i148.i, %bb.am
  %.pre-phi61.i.i.i.i.i.i119.i = phi i64 [ %.pre60.i.i.i.i.i.i150.i, %._crit_edge.loopexit.i.i.i.i.i.i148.i ], [ %i.nf, %bb.am ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i120.i = phi ptr [ %scevgep.i.i.i.i.i.i145.i, %._crit_edge.loopexit.i.i.i.i.i.i148.i ], [ %i.nb, %bb.am ] ; 5 uses
  %i.nx = ashr exact i64 %.pre-phi61.i.i.i.i.i.i119.i, 1
  switch i64 %i.nx, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" [
    i64 3, label %bb.as
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i142.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i121.i
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i.i118.i
  %i.ny = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i120.i, align 2, !tbaa !42
  %i.nz = icmp eq i16 %i.ny, %.sroa.0.0.insert.insert.i.i117.i
  br i1 %i.nz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i120.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i142.i

._crit_edge._crit_edge.i.i.i.i.i.i142.i:          ; preds = %bb.at, %._crit_edge.i.i.i.i.i.i118.i
  %.sroa.032.1.i.i.i.i.i.i143.i = phi ptr [ %i.oa, %bb.at ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i120.i, %._crit_edge.i.i.i.i.i.i118.i ] ; 3 uses
  %i.ob = load i16, ptr %.sroa.032.1.i.i.i.i.i.i143.i, align 2, !tbaa !42
  %i.oc = icmp eq i16 %i.ob, %.sroa.0.0.insert.insert.i.i117.i
  br i1 %i.oc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i142.i
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i143.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i121.i

._crit_edge._crit_edge57.i.i.i.i.i.i121.i:        ; preds = %bb.au, %._crit_edge.i.i.i.i.i.i118.i
  %.sroa.032.2.i.i.i.i.i.i122.i = phi ptr [ %i.od, %bb.au ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i120.i, %._crit_edge.i.i.i.i.i.i118.i ] ; 2 uses
  %i.oe = load i16, ptr %.sroa.032.2.i.i.i.i.i.i122.i, align 2, !tbaa !42
  %i.of = icmp eq i16 %i.oe, %.sroa.0.0.insert.insert.i.i117.i
  %spec.select.i.i.i.i.i.i123.i = select i1 %i.of, ptr %.sroa.032.2.i.i.i.i.i.i122.i, ptr %i.nc
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit: ; preds = %bb.ao
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i147.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit106: ; preds = %bb.ap
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i147.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit108: ; preds = %bb.aq
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i147.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i: ; preds = %bb.an, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit106, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit108, %._crit_edge._crit_edge57.i.i.i.i.i.i121.i, %._crit_edge._crit_edge.i.i.i.i.i.i142.i, %bb.as
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i125.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i143.i, %._crit_edge._crit_edge.i.i.i.i.i.i142.i ], [ %spec.select.i.i.i.i.i.i123.i, %._crit_edge._crit_edge57.i.i.i.i.i.i121.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i120.i, %bb.as ], [ %i.oi, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit108 ], [ %i.oh, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit106 ], [ %i.og, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i147.i, %bb.an ] ; 2 uses
  %.not.i.i.i126.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i125.i, %i.nc
  br i1 %.not.i.i.i126.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i", label %bb.av

bb.av:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i105.i.i114.i)
          to label %.noexc172.i unwind label %.loopexit268.i

.noexc172.i:                                      ; preds = %bb.av
  %i.oj = add i32 %.5.i, 1                        ; 2 uses
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.oj)
          to label %.noexc173.i unwind label %.loopexit268.i

.noexc173.i:                                      ; preds = %.noexc172.i
  %i.ok = load ptr, ptr %3, align 8, !tbaa !249
  %i.ol = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i125.i to i64
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = sub i64 %i.ol, %i.om
  %i.oo = lshr exact i64 %i.on, 1
  %i.op = and i64 %i.oo, 4294967295
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0212.2.i, i64 %i.op ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !254
  %i.os = add i32 %i.or, 1
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !254
  br label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i"

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i": ; preds = %.noexc173.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i, %._crit_edge.i.i.i.i.i.i118.i
  %.6.i = phi i32 [ %.5.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i124.i ], [ %i.oj, %.noexc173.i ], [ %.5.i, %._crit_edge.i.i.i.i.i.i118.i ] ; 4 uses
  %i.ot = add i16 %.0147.i.i112.i, 1              ; 2 uses
  %i.ou = sext i16 %i.ot to i32
  %.not76.i.i127.i = icmp slt i32 %i.lp, %i.ou
  br i1 %.not76.i.i127.i, label %._crit_edge.i.i128.i, label %bb.al, !llvm.loop !409

._crit_edge.i.i128.i:                             ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i"
  %i.ov = add i16 %.063150.i.i108.i, 1            ; 2 uses
  %i.ow = sext i16 %i.ov to i32
  %.not74.i.i129.i = icmp slt i32 %i.mh, %i.ow
  br i1 %.not74.i.i129.i, label %._crit_edge151.split.i.i130.i, label %.preheader.i.i107.i, !llvm.loop !410

._crit_edge151.split.i.i130.i:                    ; preds = %._crit_edge.i.i128.i
  %indvars.iv.next182.i.i131.i = add nuw nsw i64 %indvars.iv181.i.i104.i, 1
  %.not209.i.i132.i = icmp samesign ult i64 %indvars.iv181.i.i104.i, %zext.i.i92.i
  br i1 %.not209.i.i132.i, label %.preheader135.i.i103.i, label %._crit_edge154.i.i133.i, !llvm.loop !411

._crit_edge154.i.i133.i:                          ; preds = %._crit_edge151.split.i.i130.i, %.noexc171.i
  %.7.i = phi i32 [ %.2.i, %.noexc171.i ], [ %.6.i, %._crit_edge151.split.i.i130.i ] ; 2 uses
  %indvars.iv.next195.i.i134.i = add nsw i32 %indvars.iv194.i.i99.i, 1
  %exitcond.i.i135.i = icmp eq i32 %indvars.iv194.i.i99.i, %i.kg
  br i1 %exitcond.i.i135.i, label %._crit_edge160.split.i.i136.i, label %.preheader135.lr.ph.i.i98.i, !llvm.loop !407

._crit_edge160.split.i.i136.i:                    ; preds = %._crit_edge154.i.i133.i, %.noexc170.i
  %.8.i = phi i32 [ %.1.i, %.noexc170.i ], [ %.7.i, %._crit_edge154.i.i133.i ] ; 2 uses
  %indvars.iv.next198.i.i137.i = add nsw i32 %indvars.iv197.i.i94.i, 1
  %exitcond201.i.i138.i = icmp eq i32 %indvars.iv197.i.i94.i, %i.kb
  br i1 %exitcond201.i.i138.i, label %._crit_edge163.i.i139.i, label %.preheader136.i.i93.i, !llvm.loop !408

._crit_edge163.i.i139.i:                          ; preds = %._crit_edge160.split.i.i136.i, %._crit_edge160.split.us.us.i.i167.i
  %.9.i = phi i32 [ %.0236.i, %._crit_edge160.split.us.us.i.i167.i ], [ %.8.i, %._crit_edge160.split.i.i136.i ]
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, 1
  %indvars.iv.next.i.i141.i = add i16 %indvars.iv.i.i84.i, 16
  %exitcond.not = icmp eq i32 %indvars.iv.i, %smax
  br i1 %exitcond.not, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.i.i83.i, !llvm.loop !412

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i": ; preds = %._crit_edge163.i.i139.i, %.preheader137.lr.ph.i.i78.i, %bb.aj
  %i.ox = load ptr, ptr %i.iy, align 8, !tbaa !253
  %i.oy = load ptr, ptr %3, align 8, !tbaa !251
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = sub i64 %i.oz, %i.pa
  %i.pc = lshr exact i64 %i.pb, 1
  %i.pd = trunc i64 %i.pc to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.pd)
          to label %.preheader.i unwind label %bb.ax

.preheader.i:                                     ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i"
  %i.pe = load ptr, ptr %i.iy, align 8, !tbaa !253
  %i.pf = load ptr, ptr %3, align 8, !tbaa !251   ; 2 uses
  %.not305.i = icmp eq ptr %i.pe, %i.pf
  br i1 %.not305.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.ay

._crit_edge.i:                                    ; preds = %.preheader.i
  %.not.i.i.i174.i = icmp eq ptr %.sroa.0212.2.i, null
  br i1 %.not.i.i.i174.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bc, %._crit_edge.i
  %i.ph = ptrtoint ptr %.sroa.16220.2.i to i64
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i187.i, %bb.ai
  %.sroa.0212.0.i = phi ptr [ %.sroa.0212.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i ], [ null, %bb.ai ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i187.i ]
  %.sroa.16220.0.i = phi ptr [ %.sroa.16220.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i ], [ null, %bb.ai ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i187.i ]
  %i.pi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp269.i

.loopexit268.i:                                   ; preds = %.noexc172.i, %bb.av
  %lpad.loopexit270.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp269.i

.loopexit.split-lp269.loopexit.i:                 ; preds = %bb.ak
  %lpad.loopexit273.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp269.i

.loopexit.split-lp269.loopexit.split-lp.loopexit.i: ; preds = %.preheader135.lr.ph.i.us.i154.i
  %lpad.loopexit276.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp269.i

.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.preheader135.lr.ph.i.i98.i
  %lpad.loopexit.split-lp277.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp269.i

bb.ax:                                            ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i"
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp269.i

bb.ay:                                            ; preds = %bb.bc, %.lr.ph.i
  %i.pk = phi i64 [ 0, %.lr.ph.i ], [ %i.qi, %bb.bc ] ; 2 uses
  %.0289.i = phi i32 [ 0, %.lr.ph.i ], [ %i.qh, %bb.bc ]
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0212.2.i, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !254
  %i.pn = zext i32 %i.pm to i64
  invoke void @lua_pushinteger(ptr noundef %0, i64 noundef %i.pn)
          to label %bb.az unwind label %.thread250.i

bb.az:                                            ; preds = %bb.ay
  %i.po = load ptr, ptr %3, align 8, !tbaa !251
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.po, i64 %i.pk
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !42
  %i.pr = zext i16 %i.pq to i64                   ; 2 uses
  %i.ps = load ptr, ptr %i.pg, align 8, !tbaa !108
  %i.pt = load ptr, ptr %i.aa, align 8, !tbaa !109 ; 3 uses
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = sdiv exact i64 %i.pw, 2072
  %i.py = icmp ugt i64 %i.px, %i.pr
  br i1 %i.py, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pz = getelementptr inbounds nuw [2072 x i8], ptr %i.pt, i64 %i.pr ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !110
  %i.qc = icmp eq i64 %i.qb, 0
  br i1 %i.qc, label %bb.bb, label %_ZNK14NodeDefManager3getEt.exit176.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pt, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit176.i

_ZNK14NodeDefManager3getEt.exit176.i:             ; preds = %bb.bb, %bb.ba
  %i.qe = phi ptr [ %i.qd, %bb.bb ], [ %i.pz, %bb.ba ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !89
  invoke void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef %i.qg)
          to label %bb.bc unwind label %.thread250.i

bb.bc:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit176.i
  %i.qh = add i32 %.0289.i, 1                     ; 2 uses
  %i.qi = zext i32 %i.qh to i64                   ; 2 uses
  %i.qj = load ptr, ptr %i.iy, align 8, !tbaa !253
  %i.qk = load ptr, ptr %3, align 8, !tbaa !251
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = sub i64 %i.ql, %i.qm
  %i.qo = ashr exact i64 %i.qn, 1
  %i.qp = icmp ugt i64 %i.qo, %i.qi
  br i1 %i.qp, label %bb.ay, label %._crit_edge.thread.i, !llvm.loop !413

.thread250.i:                                     ; preds = %_ZNK14NodeDefManager3getEt.exit176.i, %bb.ay
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp269.i:                          ; preds = %bb.ax, %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp269.loopexit.split-lp.loopexit.i, %.loopexit.split-lp269.loopexit.i, %.loopexit268.i, %bb.aw
  %.sroa.0212.1.i = phi ptr [ %.sroa.0212.0.i, %bb.aw ], [ %.sroa.0212.2.i, %bb.ax ], [ %.sroa.0212.2.i, %.loopexit.split-lp269.loopexit.i ], [ %.sroa.0212.2.i, %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.0212.2.i, %.loopexit.split-lp269.loopexit.split-lp.loopexit.i ], [ %.sroa.0212.2.i, %.loopexit268.i ] ; 2 uses
  %.sroa.16220.1.i = phi ptr [ %.sroa.16220.0.i, %bb.aw ], [ %.sroa.16220.2.i, %bb.ax ], [ %.sroa.16220.2.i, %.loopexit.split-lp269.loopexit.i ], [ %.sroa.16220.2.i, %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.16220.2.i, %.loopexit.split-lp269.loopexit.split-lp.loopexit.i ], [ %.sroa.16220.2.i, %.loopexit268.i ]
  %.pn.pn.i = phi { ptr, i32 } [ %i.pi, %bb.aw ], [ %i.pj, %bb.ax ], [ %lpad.loopexit273.i, %.loopexit.split-lp269.loopexit.i ], [ %lpad.loopexit.split-lp277.i, %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit276.i, %.loopexit.split-lp269.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit270.i, %.loopexit268.i ] ; 2 uses
  %.not.i.i.i177.i = icmp eq ptr %.sroa.0212.1.i, null
  br i1 %.not.i.i.i177.i, label %.body, label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp269.i, %.thread250.i
  %.pn.pn257.i = phi { ptr, i32 } [ %i.qq, %.thread250.i ], [ %.pn.pn.i, %.loopexit.split-lp269.i ]
  %.sroa.16220.1256.i = phi ptr [ %.sroa.16220.2.i, %.thread250.i ], [ %.sroa.16220.1.i, %.loopexit.split-lp269.i ]
  %.sroa.0212.1255.i = phi ptr [ %.sroa.0212.2.i, %.thread250.i ], [ %.sroa.0212.1.i, %.loopexit.split-lp269.i ]
  %i.qr = ptrtoint ptr %.sroa.16220.1256.i to i64
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i:       ; preds = %bb.af, %._crit_edge.thread.i, %._crit_edge304.i
  %.sroa.0212.2.sink393.i = phi ptr [ %.sroa.0212.2.i, %._crit_edge.thread.i ], [ %.sroa.0.1357.i, %._crit_edge304.i ], [ %.sroa.0.1357.i, %bb.af ] ; 2 uses
  %.sink391.i = phi i64 [ %i.ph, %._crit_edge.thread.i ], [ %.sroa.16.1362.i, %._crit_edge304.i ], [ %.sroa.16.1362.i, %bb.af ]
  %.034.ph.i = phi i32 [ 2, %._crit_edge.thread.i ], [ 1, %._crit_edge304.i ], [ 1, %bb.af ]
  %i.qs = ptrtoint ptr %.sroa.0212.2.sink393.i to i64
  %i.qt = sub i64 %.sink391.i, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0212.2.sink393.i, i64 noundef %i.qt) #28
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !251
  br label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"

_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i:     ; preds = %bb.bd, %.loopexit.split-lp.i, %.thread242.i, %.loopexit.split-lp.thread.i
  %.sroa.0212.1255.sink396.i = phi ptr [ %.sroa.0212.1255.i, %bb.bd ], [ %.sroa.0.1357.i, %.thread242.i ], [ %.sroa.0.1357.i, %.loopexit.split-lp.i ], [ %i.bf, %.loopexit.split-lp.thread.i ] ; 2 uses
  %.sink394.i = phi i64 [ %i.qr, %bb.bd ], [ %.sroa.16.1362.i, %.thread242.i ], [ %.sroa.16.1362.i, %.loopexit.split-lp.i ], [ %i.bk, %.loopexit.split-lp.thread.i ]
  %.pn38.pn.ph.i = phi { ptr, i32 } [ %.pn.pn257.i, %bb.bd ], [ %i.ib, %.thread242.i ], [ %.pn38.i, %.loopexit.split-lp.i ], [ %i.hn, %.loopexit.split-lp.thread.i ]
  %i.qu = ptrtoint ptr %.sroa.0212.1255.sink396.i to i64
  %i.qv = sub i64 %.sink394.i, %i.qu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0212.1255.sink396.i, i64 noundef %i.qv) #28
  br label %.body

"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit": ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, %._crit_edge304.i, %._crit_edge.i
  %i.qw = phi ptr [ %i.pf, %._crit_edge.i ], [ %.pr.pre, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ %.pr68, %._crit_edge304.i ] ; 3 uses
  %.034.i = phi i32 [ 2, %._crit_edge.i ], [ %.034.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ 1, %._crit_edge304.i ]
  %.not.i.i.i = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"
  %i.qx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !252
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rb) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bj

bb.bf:                                            ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.j, %bb.h
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %.noexc179.i, %.noexc, %bb.l
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i, %.loopexit.split-lp269.i, %.loopexit.split-lp.i, %bb.bg, %bb.bf
  %.pn.pn = phi { ptr, i32 } [ %i.rc, %bb.bf ], [ %i.rd, %bb.bg ], [ %i.re, %bb.bh ], [ %.pn38.i, %.loopexit.split-lp.i ], [ %.pn.pn.i, %.loopexit.split-lp269.i ], [ %.pn38.pn.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i ]
  %i.rf = load ptr, ptr %3, align 8, !tbaa !251   ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorItSaItEED2Ev.exit26, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !252
  %i.ri = ptrtoint ptr %i.rh to i64
end_hunk_0
