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
  store i16 %i.f, ptr %1, align 8, !tbaa !36
  store i16 %i.e, ptr %2, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = icmp sgt i16 %i.i, %i.k
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.k, ptr %i.r, align 2, !tbaa !36
  store i16 %i.i, ptr %i.q, align 2, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = icmp sgt i16 %i.m, %i.o
  br i1 %i.s, label %bb.g, label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.o, ptr %i.u, align 4, !tbaa !36
  store i16 %i.m, ptr %i.t, align 4, !tbaa !36
  br label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit: ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w), !inline_history !108 ; 5 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !9
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !300 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !295   ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.an = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 4)
          to label %bb.k unwind label %bb.bg

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !300 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !295   ; 2 uses
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
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !300 ; 4 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !295   ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 1                 ; 3 uses
  %.not254.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not254.i, label %._crit_edge286.i, label %bb.m

bb.m:                                             ; preds = %.noexc22
  %i.bd = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bd, label %.noexc173.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

.noexc173.i:                                      ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #30
          to label %.noexc23 unwind label %bb.bh

.noexc23:                                         ; preds = %.noexc173.i
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.be = shl nuw nsw i64 %i.bb, 1
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #27
          to label %.noexc24 unwind label %bb.bh  ; 6 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bf, align 4, !tbaa !301
  %i.bg = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc24
  %i.bi = getelementptr i8, ptr %i.bf, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !301
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc24
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !300 ; 3 uses
  %.pre320.i = load ptr, ptr %3, align 8, !tbaa !295 ; 2 uses
  %i.bl = icmp eq ptr %.pre.i, %.pre320.i
  br i1 %i.bl, label %._crit_edge286.i, label %.lr.ph285.i

._crit_edge286.i:                                 ; preds = %bb.z, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %.noexc22
  %.pr69 = phi ptr [ %i.ay, %.noexc22 ], [ %.pre320.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.hf, %bb.z ] ; 2 uses
  %.sroa.16.1356.i = phi i64 [ 0, %.noexc22 ], [ %i.bk, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.bk, %bb.z ] ; 4 uses
  %.sroa.0.1351.i = phi ptr [ null, %.noexc22 ], [ %i.bf, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.bf, %bb.z ] ; 8 uses
  %i.bm = phi ptr [ %i.ax, %.noexc22 ], [ %.pre.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.hf, %bb.z ] ; 2 uses
  %i.bn = phi ptr [ %i.ax, %.noexc22 ], [ %.pre.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.he, %bb.z ] ; 2 uses
  %.sroa.03.0.copyload.i.i = load i48, ptr %1, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i48, ptr %2, align 8 ; 4 uses
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
  %i.bz = trunc nsw i48 %i.by to i32              ; 3 uses
  %i.ca = add nsw i32 %i.bz, -15
  %i.cb = icmp slt i48 %.sroa.03.0.copyload.i.i, 0
  %i.cc = select i1 %i.cb, i32 %i.ca, i32 %i.bz
  %i.cd = sdiv i32 %i.cc, 16                      ; 2 uses
  %.sroa.054.0.extract.trunc.i.i.i = trunc nsw i32 %i.bs to i16
  %.sroa.455.0.extract.trunc.i.i.i = trunc nsw i32 %i.bx to i16
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

.preheader137.lr.ph.i.i.i:                        ; preds = %._crit_edge286.i
  %.not70161.i.i.i = icmp sgt i32 %i.bs, %i.ci
  %.not71158.i.i.i = icmp sgt i32 %i.bx, %i.cn
  %or.cond.i.i.i = select i1 %.not70161.i.i.i, i1 true, i1 %.not71158.i.i.i
  br i1 %or.cond.i.i.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i", label %.preheader137.i.preheader.i.i

.preheader137.i.preheader.i.i:                    ; preds = %.preheader137.lr.ph.i.i.i
  %i.cw = add i32 %i.aw, 1
  br label %.preheader137.i.i.i

.preheader137.i.i.i:                              ; preds = %._crit_edge163.i.i.i, %.preheader137.i.preheader.i.i
  %indvars.iv314.i = phi i32 [ %indvars.iv.next315.i, %._crit_edge163.i.i.i ], [ %i.cd, %.preheader137.i.preheader.i.i ] ; 4 uses
  %i.cx = trunc nsw i32 %indvars.iv314.i to i16
  %.mask347.i = and i32 %indvars.iv314.i, 65535
  %.sroa.7.0.insert.ext.i.i.i = zext nneg i32 %.mask347.i to i48
  %.sroa.7.0.insert.shift.i.i.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i, 32 ; 3 uses
  %i.cy = shl i16 %i.cx, 4                        ; 2 uses
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %i.da = sub nsw i32 %i.bz, %i.cz
  %i.db = call i32 @llvm.smax.i32(i32 %i.da, i32 0)
  %i.dc = call i32 @llvm.umin.i32(i32 %i.db, i32 15) ; 2 uses
  %i.dd = trunc nuw nsw i32 %i.dc to i16
  %i.de = sub nsw i32 %i.cp, %i.cz
  %i.df = call i32 @llvm.smax.i32(i32 %i.de, i32 0) ; 2 uses
  %i.dg = call i32 @llvm.umin.i32(i32 %i.df, i32 15)
  %.not72152.i.i.i = icmp samesign ult i32 %i.df, %i.dc
  %.not72152.fr.i.i.i = freeze i1 %.not72152.i.i.i
  br i1 %.not72152.fr.i.i.i, label %.preheader136.us.i.i.i, label %.preheader136.i.i.i

.preheader136.us.i.i.i:                           ; preds = %.preheader137.i.i.i, %._crit_edge160.split.us.us.i.i.i
  %.066162.us.i.i.i = phi i16 [ %i.dj, %._crit_edge160.split.us.us.i.i.i ], [ %.sroa.054.0.extract.trunc.i.i.i, %.preheader137.i.i.i ] ; 3 uses
  %.sroa.0133.0.insert.ext.us.i.i.i = zext i16 %.066162.us.i.i.i to i48
  %invariant.op158 = or disjoint i48 %.sroa.0133.0.insert.ext.us.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  br label %bb.n

bb.n:                                             ; preds = %.noexc42.i, %.preheader136.us.i.i.i
  %.065159.us.us.i.i.i = phi i16 [ %.sroa.455.0.extract.trunc.i.i.i, %.preheader136.us.i.i.i ], [ %i.di, %.noexc42.i ] ; 3 uses
  %.sroa.5134.0.insert.ext.us.us.i.i.i = zext i16 %.065159.us.us.i.i.i to i48
  %.sroa.5134.0.insert.shift.us.us.i.i.i = shl nuw nsw i48 %.sroa.5134.0.insert.ext.us.us.i.i.i, 16
  %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = or disjoint i48 %.sroa.5134.0.insert.shift.us.us.i.i.i, %invariant.op158
  %i.dh = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.i ; 0 uses

.noexc42.i:                                       ; preds = %bb.n
  %i.di = add nsw i16 %.065159.us.us.i.i.i, 1
  %exitcond187.i.i.i = icmp eq i16 %.065159.us.us.i.i.i, %.sroa.4.0.extract.trunc.i.i.i
  br i1 %exitcond187.i.i.i, label %._crit_edge160.split.us.us.i.i.i, label %bb.n, !llvm.loop !302

._crit_edge160.split.us.us.i.i.i:                 ; preds = %.noexc42.i
  %i.dj = add nsw i16 %.066162.us.i.i.i, 1
  %exitcond188.i.i.i = icmp eq i16 %.066162.us.i.i.i, %.sroa.051.0.extract.trunc.i.i.i
  br i1 %exitcond188.i.i.i, label %._crit_edge163.i.i.i, label %.preheader136.us.i.i.i, !llvm.loop !303

.preheader136.i.i.i:                              ; preds = %.preheader137.i.i.i, %._crit_edge160.split.i.i.i
  %indvars.iv182.i.i.i = phi i32 [ %indvars.iv.next183.i.i.i, %._crit_edge160.split.i.i.i ], [ %i.bs, %.preheader137.i.i.i ] ; 4 uses
  %i.dk = trunc nsw i32 %indvars.iv182.i.i.i to i16
  %.mask.i.i.i = and i32 %indvars.iv182.i.i.i, 65535 ; 2 uses
  %i.dl = shl i16 %i.dk, 4                        ; 2 uses
  %i.dm = sext i16 %i.dl to i32                   ; 2 uses
  %i.dn = sub nsw i32 %i.bo, %i.dm
  %i.do = call i32 @llvm.smax.i32(i32 %i.dn, i32 0)
  %i.dp = call i32 @llvm.umin.i32(i32 %i.do, i32 15) ; 2 uses
  %i.dq = trunc nuw nsw i32 %i.dp to i16
  %i.dr = sub nsw i32 %i.ce, %i.dm
  %i.ds = call i32 @llvm.smax.i32(i32 %i.dr, i32 0) ; 2 uses
  %i.dt = call i32 @llvm.umin.i32(i32 %i.ds, i32 15)
  %.not76146.i.i.i = icmp samesign ult i32 %i.ds, %i.dp
  %.not76146.i.fr.i.i = freeze i1 %.not76146.i.i.i
  br i1 %.not76146.i.fr.i.i, label %.preheader135.lr.ph.i.us.i.i, label %.preheader135.lr.ph.i.i.i

.preheader135.lr.ph.i.us.i.i:                     ; preds = %.preheader136.i.i.i, %.noexc43.i
  %indvars.iv.i.us.i.i = phi i32 [ %indvars.iv.next.i.us.i.i, %.noexc43.i ], [ %i.bx, %.preheader136.i.i.i ] ; 3 uses
  %i.du = shl i32 %indvars.iv.i.us.i.i, 16
  %i.dv = or disjoint i32 %i.du, %.mask.i.i.i
  %i.dw = zext i32 %i.dv to i48
  %.sroa.0133.0.insert.insert.reass.i.us.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i, %i.dw
  %i.dx = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.us.i.i)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 0 uses

.noexc43.i:                                       ; preds = %.preheader135.lr.ph.i.us.i.i
  %indvars.iv.next.i.us.i.i = add nsw i32 %indvars.iv.i.us.i.i, 1
  %exitcond.i.us.i.i = icmp eq i32 %indvars.iv.i.us.i.i, %i.cn
  br i1 %exitcond.i.us.i.i, label %._crit_edge160.split.i.i.i, label %.preheader135.lr.ph.i.us.i.i, !llvm.loop !302

.preheader135.lr.ph.i.i.i:                        ; preds = %.preheader136.i.i.i, %._crit_edge154.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %._crit_edge154.i.i.i ], [ %i.bx, %.preheader136.i.i.i ] ; 4 uses
  %i.dy = shl i32 %indvars.iv.i.i.i, 16
  %i.dz = or disjoint i32 %i.dy, %.mask.i.i.i
  %i.ea = zext i32 %i.dz to i48
  %.sroa.0133.0.insert.insert.reass.i.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i, %i.ea
  %i.eb = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.i.i)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

.noexc44.i:                                       ; preds = %.preheader135.lr.ph.i.i.i
  %i.ec = trunc nsw i32 %indvars.iv.i.i.i to i16
  %i.ed = shl i16 %i.ec, 4                        ; 2 uses
  %i.ee = sext i16 %i.ed to i32                   ; 2 uses
  %i.ef = sub nsw i32 %i.bt, %i.ee
  %i.eg = call i32 @llvm.smax.i32(i32 %i.ef, i32 0)
  %i.eh = call i32 @llvm.umin.i32(i32 %i.eg, i32 15) ; 2 uses
  %i.ei = trunc nuw nsw i32 %i.eh to i16
  %i.ej = sub nsw i32 %i.cj, %i.ee
  %i.ek = call i32 @llvm.smax.i32(i32 %i.ej, i32 0) ; 2 uses
  %i.el = call i32 @llvm.umin.i32(i32 %i.ek, i32 15)
  %.not74149.i.i.i = icmp samesign ult i32 %i.ek, %i.eh
  %.not77.i.i.i = icmp eq ptr %i.eb, null
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 36
  br i1 %.not74149.i.i.i, label %._crit_edge154.i.i.i, label %.preheader135.i.i.i

.preheader135.i.i.i:                              ; preds = %.noexc44.i, %._crit_edge151.split.i.i.i
  %.064153.i.i.i = phi i16 [ %i.ha, %._crit_edge151.split.i.i.i ], [ %i.dd, %.noexc44.i ] ; 3 uses
  %i.eo = add i16 %.064153.i.i.i, %i.cy
  %.sroa.3.0.insert.ext.i99.i.i.i = zext i16 %i.eo to i48
  %.sroa.3.0.insert.shift.i100.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i99.i.i.i, 32
  %i.ep = sext i16 %.064153.i.i.i to i64
  %i.eq = shl nsw i64 %i.ep, 8
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader135.i.i.i
  %.063150.i.i.i = phi i16 [ %i.ei, %.preheader135.i.i.i ], [ %i.gy, %._crit_edge.i.i.i ] ; 3 uses
  %i.er = add i16 %.063150.i.i.i, %i.ed
  %.sroa.2.0.insert.ext.i101.i.i.i = zext i16 %i.er to i48
  %.sroa.2.0.insert.shift.i102.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i101.i.i.i, 16
  %.sroa.2.0.insert.insert.i103.i.i.i = or disjoint i48 %.sroa.2.0.insert.shift.i102.i.i.i, %.sroa.3.0.insert.shift.i100.i.i.i
  %i.es = sext i16 %.063150.i.i.i to i64
  %i.et = shl nsw i64 %i.es, 4
  %i.eu = add nsw i64 %i.et, %i.eq
  br label %bb.o

bb.o:                                             ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i", %.preheader.i.i.i
  %.0147.i.i.i = phi i16 [ %i.dq, %.preheader.i.i.i ], [ %i.gw, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %i.ev = add i16 %.0147.i.i.i, %i.dl
  %.sroa.0.0.insert.ext.i104.i.i.i = zext i16 %i.ev to i48
  %.sroa.0.0.insert.insert.i105.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i103.i.i.i, %.sroa.0.0.insert.ext.i104.i.i.i
  br i1 %.not77.i.i.i, label %bb.p, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i

_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i:      ; preds = %bb.o
  %i.ew = load ptr, ptr %i.em, align 8, !tbaa !304
  %i.ex = load i8, ptr %i.en, align 4, !tbaa !333, !range !72, !noundef !73
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = sext i16 %.0147.i.i.i to i64
  %i.fa = add nsw i64 %i.eu, %i.ez
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = select i1 %i.ey, i64 0, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fc
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.fd, align 4
  %i.fe = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i16
  br label %bb.p

bb.p:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i, %bb.o
  %.sroa.0.0.insert.insert.i.i.i = phi i16 [ %i.fe, %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i ], [ 127, %bb.o ] ; 7 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !291   ; 4 uses
  %i.fg = load ptr, ptr %i.ao, align 8, !tbaa !291 ; 3 uses
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fi = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 3 uses
  %i.fk = ashr i64 %i.fj, 3                       ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.p
  %i.fm = and i64 %i.fj, -8
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ff, i64 %i.fm ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i.i
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fz, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fy, %bb.u ] ; 9 uses
  %i.fn = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.fo = icmp eq i16 %i.fn, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !36
  %i.fr = icmp eq i16 %i.fq, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fr, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !36
  %i.fu = icmp eq i16 %i.ft, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !36
  %i.fx = icmp eq i16 %i.fw, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8
  %i.fz = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.ga = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.ga, label %bb.q, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !293

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.u
  %.pre59.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i.i.i = sub i64 %i.fh, %.pre59.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.p
  %.pre-phi61.i.i.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.fj, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.ff, %bb.p ] ; 5 uses
  %i.gb = ashr exact i64 %.pre-phi61.i.i.i.i.i.i.i, 1
  switch i64 %i.gb, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.gc = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.gd = icmp eq i16 %i.gc, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.gd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i:             ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.gf = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.gg = icmp eq i16 %i.gf, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.gg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i.i.i:           ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.x ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.gi = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.gj = icmp eq i16 %i.gi, %.sroa.0.0.insert.insert.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gj, ptr %.sroa.032.2.i.i.i.i.i.i.i, ptr %i.fg
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.r
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114: ; preds = %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116: ; preds = %bb.t
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i: ; preds = %bb.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116, %._crit_edge._crit_edge57.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %bb.v ], [ %i.gm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116 ], [ %i.gl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114 ], [ %i.gk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i, %i.fg
  br i1 %.not.i.i.i.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i105.i.i.i)
          to label %.noexc45.i unwind label %.loopexit.i

.noexc45.i:                                       ; preds = %bb.y
  %i.gn = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i to i64
  %i.go = sub i64 %i.gn, %i.fi
  %i.gp = ashr exact i64 %i.go, 1                 ; 2 uses
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = add i32 %i.cw, %i.gq
  %i.gs = and i64 %i.gp, 4294967295
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1351.i, i64 %i.gs ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !301
  %i.gv = add i32 %i.gu, 1                        ; 2 uses
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !301
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef %i.gr, i32 noundef %i.gv)
          to label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" unwind label %.loopexit.i

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i": ; preds = %.noexc45.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.gw = add i16 %.0147.i.i.i, 1                 ; 2 uses
  %i.gx = sext i16 %i.gw to i32
  %.not76.i.i.i = icmp slt i32 %i.dt, %i.gx
  br i1 %.not76.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !334

._crit_edge.i.i.i:                                ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i"
  %i.gy = add i16 %.063150.i.i.i, 1               ; 2 uses
  %i.gz = sext i16 %i.gy to i32
  %.not74.i.i.i = icmp slt i32 %i.el, %i.gz
  br i1 %.not74.i.i.i, label %._crit_edge151.split.i.i.i, label %.preheader.i.i.i, !llvm.loop !335

._crit_edge151.split.i.i.i:                       ; preds = %._crit_edge.i.i.i
  %i.ha = add i16 %.064153.i.i.i, 1               ; 2 uses
  %i.hb = sext i16 %i.ha to i32
  %.not72.i.i.i = icmp slt i32 %i.dg, %i.hb
  br i1 %.not72.i.i.i, label %._crit_edge154.i.i.i, label %.preheader135.i.i.i, !llvm.loop !336

._crit_edge154.i.i.i:                             ; preds = %._crit_edge151.split.i.i.i, %.noexc44.i
  %indvars.iv.next.i.i.i = add nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %indvars.iv.i.i.i, %i.cn
  br i1 %exitcond.i.i.i, label %._crit_edge160.split.i.i.i, label %.preheader135.lr.ph.i.i.i, !llvm.loop !302

._crit_edge160.split.i.i.i:                       ; preds = %._crit_edge154.i.i.i, %.noexc43.i
  %indvars.iv.next183.i.i.i = add nsw i32 %indvars.iv182.i.i.i, 1
  %exitcond186.i.i.i = icmp eq i32 %indvars.iv182.i.i.i, %i.ci
  br i1 %exitcond186.i.i.i, label %._crit_edge163.i.i.i, label %.preheader136.i.i.i, !llvm.loop !303

._crit_edge163.i.i.i:                             ; preds = %._crit_edge160.split.i.i.i, %._crit_edge160.split.us.us.i.i.i
  %indvars.iv.next315.i = add nsw i32 %indvars.iv314.i, 1
  %exitcond66.not = icmp eq i32 %indvars.iv314.i, %i.ct
  br i1 %exitcond66.not, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i", label %.preheader137.i.i.i, !llvm.loop !337

.lr.ph285.i:                                      ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %bb.z
  %.028284.i = phi i32 [ %i.hc, %bb.z ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ]
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %bb.z unwind label %.loopexit.split-lp.thread.i

bb.z:                                             ; preds = %.lr.ph285.i
  %i.hc = add i32 %.028284.i, 1                   ; 2 uses
  %i.hd = zext i32 %i.hc to i64
  %i.he = load ptr, ptr %i.ao, align 8, !tbaa !300 ; 2 uses
  %i.hf = load ptr, ptr %3, align 8, !tbaa !295   ; 3 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = ashr exact i64 %i.hi, 1
  %i.hk = icmp ugt i64 %i.hj, %i.hd
  br i1 %i.hk, label %.lr.ph285.i, label %._crit_edge286.i, !llvm.loop !338

.loopexit.split-lp.thread.i:                      ; preds = %.lr.ph285.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i": ; preds = %._crit_edge163.i.i.i
  %.pre321.i = load ptr, ptr %i.ao, align 8, !tbaa !300
  %.pre322.i = load ptr, ptr %3, align 8, !tbaa !295 ; 2 uses
  br label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i": ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i", %.preheader137.lr.ph.i.i.i, %._crit_edge286.i
  %.pr68 = phi ptr [ %.pre322.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %.pr69, %.preheader137.lr.ph.i.i.i ], [ %.pr69, %._crit_edge286.i ]
  %i.hm = phi ptr [ %.pre322.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %i.bm, %.preheader137.lr.ph.i.i.i ], [ %i.bm, %._crit_edge286.i ]
  %i.hn = phi ptr [ %.pre321.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %i.bn, %.preheader137.lr.ph.i.i.i ], [ %i.bn, %._crit_edge286.i ]
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 2 uses
  %i.hr = and i64 %i.hq, 8589934590
  %.not296.i = icmp eq i64 %i.hr, 0
  br i1 %.not296.i, label %._crit_edge298.i, label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"
  %i.hs = lshr exact i64 %i.hq, 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hu = and i64 %i.hs, 4294967295
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.lr.ph297.i
  %indvars.iv317.i = phi i64 [ %i.hu, %.lr.ph297.i ], [ %i.hv, %bb.af ]
  %i.hv = add nsw i64 %indvars.iv317.i, -1        ; 4 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1351.i, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !301
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.af unwind label %.thread236.i

.loopexit.i:                                      ; preds = %.noexc45.i, %bb.y
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.n
  %lpad.loopexit255.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.preheader135.lr.ph.i.us.i.i
  %lpad.loopexit258.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.preheader135.lr.ph.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.thread236.i:                                     ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.ab
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.ia = load ptr, ptr %3, align 8, !tbaa !295
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %i.hv
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !36
  %i.id = zext i16 %i.ic to i64                   ; 2 uses
  %i.ie = load ptr, ptr %i.ht, align 8, !tbaa !110
  %i.if = load ptr, ptr %i.aa, align 8, !tbaa !113 ; 3 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = sdiv exact i64 %i.ii, 2072
  %i.ik = icmp ugt i64 %i.ij, %i.id
  br i1 %i.ik, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.il = getelementptr inbounds nuw [2072 x i8], ptr %i.if, i64 %i.id ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !114
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.ae, label %_ZNK14NodeDefManager3getEt.exit.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit.i

_ZNK14NodeDefManager3getEt.exit.i:                ; preds = %bb.ae, %bb.ad
  %i.iq = phi ptr [ %i.ip, %bb.ae ], [ %i.il, %bb.ad ]
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !81
  invoke void @lua_setfield(ptr noundef %0, i32 noundef %i.aw, ptr noundef %i.is)
          to label %bb.af unwind label %.thread236.i

bb.af:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.ab
  %.not.wide.i = icmp eq i64 %i.hv, 0
  br i1 %.not.wide.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, label %bb.aa, !llvm.loop !339

._crit_edge298.i:                                 ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"
  %.not.i.i.i47.i = icmp eq ptr %.sroa.0.1351.i, null
  br i1 %.not.i.i.i47.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn38.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit255.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit258.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.not.i.i.i48.i = icmp eq ptr %.sroa.0.1351.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

bb.ag:                                            ; preds = %.thread, %bb.k
  %i.it = phi i64 [ %i.am, %.thread ], [ %i.at, %bb.k ] ; 2 uses
  %i.iu = phi ptr [ %i.aj, %.thread ], [ %i.aq, %bb.k ]
  %i.iv = phi ptr [ %i.ai, %.thread ], [ %i.ap, %bb.k ]
  %i.iw = phi ptr [ %i.ah, %.thread ], [ %i.ao, %bb.k ] ; 4 uses
  %i.ix = ashr exact i64 %i.it, 1                 ; 3 uses
  %.not253.i = icmp eq ptr %i.iv, %i.iu
  br i1 %.not253.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iy = icmp ugt i64 %i.ix, 2305843009213693951
  br i1 %i.iy, label %bb.ai, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #30
          to label %.noexc189.i unwind label %bb.aw

.noexc189.i:                                      ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i: ; preds = %bb.ah
  %i.iz = shl nuw nsw i64 %i.it, 1
  %i.ja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #27
          to label %.noexc190.i unwind label %bb.aw ; 4 uses

.noexc190.i:                                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i
  store i32 0, ptr %i.ja, align 4, !tbaa !301
  %i.jb = add nsw i64 %i.ix, -1                   ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 0
  br i1 %i.jc, label %.noexc52.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i183.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i183.i: ; preds = %.noexc190.i
  %i.jd = getelementptr i8, ptr %i.ja, i64 4
  %.idx.i.i.i.i.i31.i184.i = shl nuw nsw i64 %i.jb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jd, i8 0, i64 %.idx.i.i.i.i.i31.i184.i, i1 false), !tbaa !301
  br label %.noexc52.i

.noexc52.i:                                       ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i183.i, %.noexc190.i
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.ix
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i:           ; preds = %.noexc52.i, %bb.ag
  %.sroa.0206.2.i = phi ptr [ %i.ja, %.noexc52.i ], [ null, %bb.ag ] ; 11 uses
  %.sroa.16214.2.i = phi ptr [ %i.je, %.noexc52.i ], [ null, %bb.ag ] ; 8 uses
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %bb.aj unwind label %bb.aw

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i
  %.sroa.03.0.copyload.i54.i = load i48, ptr %1, align 8 ; 4 uses
  %.sroa.0.0.copyload.i55.i = load i48, ptr %2, align 8 ; 4 uses
  %.sroa.060.0.extract.trunc.i.i63.i = trunc i48 %.sroa.03.0.copyload.i54.i to i16 ; 2 uses
  %.sroa.361.0.extract.shift.i.i64.i = lshr i48 %.sroa.03.0.copyload.i54.i, 16
  %.sroa.361.0.extract.trunc.i.i65.i = trunc i48 %.sroa.361.0.extract.shift.i.i64.i to i16 ; 2 uses
  %.sroa.058.0.extract.trunc.i.i66.i = trunc i48 %.sroa.0.0.copyload.i55.i to i16 ; 2 uses
  %.sroa.3.0.extract.shift.i.i67.i = lshr i48 %.sroa.0.0.copyload.i55.i, 16
  %.sroa.3.0.extract.trunc.i.i68.i = trunc i48 %.sroa.3.0.extract.shift.i.i67.i to i16 ; 2 uses
  %i.jf = sext i16 %.sroa.060.0.extract.trunc.i.i63.i to i32 ; 3 uses
  %i.jg = add nsw i32 %i.jf, -15
  %i.jh = icmp slt i16 %.sroa.060.0.extract.trunc.i.i63.i, 0
  %i.ji = select i1 %i.jh, i32 %i.jg, i32 %i.jf
  %i.jj = sdiv i32 %i.ji, 16                      ; 3 uses
  %i.jk = sext i16 %.sroa.361.0.extract.trunc.i.i65.i to i32 ; 3 uses
  %i.jl = add nsw i32 %i.jk, -15
  %i.jm = icmp slt i16 %.sroa.361.0.extract.trunc.i.i65.i, 0
  %i.jn = select i1 %i.jm, i32 %i.jl, i32 %i.jk
  %i.jo = sdiv i32 %i.jn, 16                      ; 4 uses
  %i.jp = ashr i48 %.sroa.03.0.copyload.i54.i, 32
  %i.jq = trunc nsw i48 %i.jp to i32              ; 3 uses
  %i.jr = add nsw i32 %i.jq, -15
  %i.js = icmp slt i48 %.sroa.03.0.copyload.i54.i, 0
  %i.jt = select i1 %i.js, i32 %i.jr, i32 %i.jq
  %i.ju = sdiv i32 %i.jt, 16                      ; 2 uses
  %.sroa.054.0.extract.trunc.i.i69.i = trunc nsw i32 %i.jj to i16
  %.sroa.455.0.extract.trunc.i.i70.i = trunc nsw i32 %i.jo to i16
  %i.jv = sext i16 %.sroa.058.0.extract.trunc.i.i66.i to i32 ; 3 uses
  %i.jw = add nsw i32 %i.jv, -15
  %i.jx = icmp slt i16 %.sroa.058.0.extract.trunc.i.i66.i, 0
  %i.jy = select i1 %i.jx, i32 %i.jw, i32 %i.jv
  %i.jz = sdiv i32 %i.jy, 16                      ; 3 uses
  %i.ka = sext i16 %.sroa.3.0.extract.trunc.i.i68.i to i32 ; 3 uses
  %i.kb = add nsw i32 %i.ka, -15
  %i.kc = icmp slt i16 %.sroa.3.0.extract.trunc.i.i68.i, 0
  %i.kd = select i1 %i.kc, i32 %i.kb, i32 %i.ka
  %i.ke = sdiv i32 %i.kd, 16                      ; 4 uses
  %i.kf = ashr i48 %.sroa.0.0.copyload.i55.i, 32
  %i.kg = trunc nsw i48 %i.kf to i32              ; 3 uses
  %i.kh = add nsw i32 %i.kg, -15
  %i.ki = icmp slt i48 %.sroa.0.0.copyload.i55.i, 0
  %i.kj = select i1 %i.ki, i32 %i.kh, i32 %i.kg
  %i.kk = sdiv i32 %i.kj, 16                      ; 2 uses
  %.mask.i.i81.i.i71.i = and i32 %i.kk, 65535
  %.sroa.3.0.insert.ext.i.i82.i.i72.i = zext nneg i32 %.mask.i.i81.i.i71.i to i48
  %.sroa.3.0.insert.shift.i.i83.i.i73.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i82.i.i72.i, 32
  %.sroa.051.0.extract.trunc.i.i74.i = trunc nsw i32 %i.jz to i16
  %.sroa.4.0.extract.trunc.i.i75.i = trunc nsw i32 %i.ke to i16
  %i.kl = ashr exact i48 %.sroa.3.0.insert.shift.i.i83.i.i73.i, 32
  %i.km = trunc nsw i48 %i.kl to i32
  %.not166.i.i76.i = icmp sgt i32 %i.ju, %i.km
  br i1 %.not166.i.i76.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.lr.ph.i.i77.i

.preheader137.lr.ph.i.i77.i:                      ; preds = %bb.aj
  %.not70161.i.i78.i = icmp sgt i32 %i.jj, %i.jz
  %.not71158.i.i79.i = icmp sgt i32 %i.jo, %i.ke
  %or.cond.i.i80.i = select i1 %.not70161.i.i78.i, i1 true, i1 %.not71158.i.i79.i
  br i1 %or.cond.i.i80.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.i.i83.i

.preheader137.i.i83.i:                            ; preds = %.preheader137.lr.ph.i.i77.i, %._crit_edge163.i.i134.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %._crit_edge163.i.i134.i ], [ %i.ju, %.preheader137.lr.ph.i.i77.i ] ; 4 uses
  %.0230.i = phi i32 [ %.9.i, %._crit_edge163.i.i134.i ], [ 0, %.preheader137.lr.ph.i.i77.i ] ; 2 uses
  %i.kn = trunc nsw i32 %indvars.iv.i to i16
  %.mask.i = and i32 %indvars.iv.i, 65535
  %.sroa.7.0.insert.ext.i.i85.i = zext nneg i32 %.mask.i to i48
  %.sroa.7.0.insert.shift.i.i86.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i85.i, 32 ; 3 uses
  %i.ko = shl i16 %i.kn, 4                        ; 2 uses
  %i.kp = sext i16 %i.ko to i32                   ; 2 uses
  %i.kq = sub nsw i32 %i.jq, %i.kp
  %i.kr = call i32 @llvm.smax.i32(i32 %i.kq, i32 0)
  %i.ks = call i32 @llvm.umin.i32(i32 %i.kr, i32 15) ; 2 uses
  %i.kt = trunc nuw nsw i32 %i.ks to i16
  %i.ku = sub nsw i32 %i.kg, %i.kp
  %i.kv = call i32 @llvm.smax.i32(i32 %i.ku, i32 0) ; 2 uses
  %i.kw = call i32 @llvm.umin.i32(i32 %i.kv, i32 15)
  %.not72152.i.i87.i = icmp samesign ult i32 %i.kv, %i.ks
  %.not72152.fr.i.i88.i = freeze i1 %.not72152.i.i87.i
  br i1 %.not72152.fr.i.i88.i, label %.preheader136.us.i.i153.i, label %.preheader136.i.i89.i

.preheader136.us.i.i153.i:                        ; preds = %.preheader137.i.i83.i, %._crit_edge160.split.us.us.i.i161.i
  %.066162.us.i.i154.i = phi i16 [ %i.kz, %._crit_edge160.split.us.us.i.i161.i ], [ %.sroa.054.0.extract.trunc.i.i69.i, %.preheader137.i.i83.i ] ; 3 uses
  %.sroa.0133.0.insert.ext.us.i.i155.i = zext i16 %.066162.us.i.i154.i to i48
  %invariant.op = or disjoint i48 %.sroa.0133.0.insert.ext.us.i.i155.i, %.sroa.7.0.insert.shift.i.i86.i
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc163.i, %.preheader136.us.i.i153.i
  %.065159.us.us.i.i156.i = phi i16 [ %.sroa.455.0.extract.trunc.i.i70.i, %.preheader136.us.i.i153.i ], [ %i.ky, %.noexc163.i ] ; 3 uses
  %.sroa.5134.0.insert.ext.us.us.i.i157.i = zext i16 %.065159.us.us.i.i156.i to i48
  %.sroa.5134.0.insert.shift.us.us.i.i158.i = shl nuw nsw i48 %.sroa.5134.0.insert.ext.us.us.i.i157.i, 16
  %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i159.reass.reass.i.reass.reass.reass = or disjoint i48 %.sroa.5134.0.insert.shift.us.us.i.i158.i, %invariant.op
  %i.kx = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i159.reass.reass.i.reass.reass.reass)
          to label %.noexc163.i unwind label %.loopexit.split-lp263.loopexit.i ; 0 uses

.noexc163.i:                                      ; preds = %bb.ak
  %i.ky = add nsw i16 %.065159.us.us.i.i156.i, 1
  %exitcond187.i.i160.i = icmp eq i16 %.065159.us.us.i.i156.i, %.sroa.4.0.extract.trunc.i.i75.i
  br i1 %exitcond187.i.i160.i, label %._crit_edge160.split.us.us.i.i161.i, label %bb.ak, !llvm.loop !340

._crit_edge160.split.us.us.i.i161.i:              ; preds = %.noexc163.i
  %i.kz = add nsw i16 %.066162.us.i.i154.i, 1
  %exitcond188.i.i162.i = icmp eq i16 %.066162.us.i.i154.i, %.sroa.051.0.extract.trunc.i.i74.i
  br i1 %exitcond188.i.i162.i, label %._crit_edge163.i.i134.i, label %.preheader136.us.i.i153.i, !llvm.loop !341

.preheader136.i.i89.i:                            ; preds = %.preheader137.i.i83.i, %._crit_edge160.split.i.i131.i
  %.1.i = phi i32 [ %.8.i, %._crit_edge160.split.i.i131.i ], [ %.0230.i, %.preheader137.i.i83.i ] ; 2 uses
  %indvars.iv182.i.i90.i = phi i32 [ %indvars.iv.next183.i.i132.i, %._crit_edge160.split.i.i131.i ], [ %i.jj, %.preheader137.i.i83.i ] ; 4 uses
  %i.la = trunc nsw i32 %indvars.iv182.i.i90.i to i16
  %.mask.i.i91.i = and i32 %indvars.iv182.i.i90.i, 65535 ; 2 uses
  %i.lb = shl i16 %i.la, 4                        ; 2 uses
  %i.lc = sext i16 %i.lb to i32                   ; 2 uses
  %i.ld = sub nsw i32 %i.jf, %i.lc
  %i.le = call i32 @llvm.smax.i32(i32 %i.ld, i32 0)
  %i.lf = call i32 @llvm.umin.i32(i32 %i.le, i32 15) ; 2 uses
  %i.lg = trunc nuw nsw i32 %i.lf to i16
  %i.lh = sub nsw i32 %i.jv, %i.lc
  %i.li = call i32 @llvm.smax.i32(i32 %i.lh, i32 0) ; 2 uses
  %i.lj = call i32 @llvm.umin.i32(i32 %i.li, i32 15)
  %.not76146.i.i92.i = icmp samesign ult i32 %i.li, %i.lf
  %.not76146.i.fr.i93.i = freeze i1 %.not76146.i.i92.i
  br i1 %.not76146.i.fr.i93.i, label %.preheader135.lr.ph.i.us.i148.i, label %.preheader135.lr.ph.i.i94.i

.preheader135.lr.ph.i.us.i148.i:                  ; preds = %.preheader136.i.i89.i, %.noexc164.i
  %indvars.iv.i.us.i149.i = phi i32 [ %indvars.iv.next.i.us.i151.i, %.noexc164.i ], [ %i.jo, %.preheader136.i.i89.i ] ; 3 uses
  %i.lk = shl i32 %indvars.iv.i.us.i149.i, 16
  %i.ll = or disjoint i32 %i.lk, %.mask.i.i91.i
  %i.lm = zext i32 %i.ll to i48
  %.sroa.0133.0.insert.insert.reass.i.us.i150.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i86.i, %i.lm
  %i.ln = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.us.i150.i)
          to label %.noexc164.i unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.i ; 0 uses

.noexc164.i:                                      ; preds = %.preheader135.lr.ph.i.us.i148.i
  %indvars.iv.next.i.us.i151.i = add nsw i32 %indvars.iv.i.us.i149.i, 1
  %exitcond.i.us.i152.i = icmp eq i32 %indvars.iv.i.us.i149.i, %i.ke
  br i1 %exitcond.i.us.i152.i, label %._crit_edge160.split.i.i131.i, label %.preheader135.lr.ph.i.us.i148.i, !llvm.loop !340

.preheader135.lr.ph.i.i94.i:                      ; preds = %.preheader136.i.i89.i, %._crit_edge154.i.i128.i
  %.2.i = phi i32 [ %.7.i, %._crit_edge154.i.i128.i ], [ %.1.i, %.preheader136.i.i89.i ] ; 2 uses
  %indvars.iv.i.i95.i = phi i32 [ %indvars.iv.next.i.i129.i, %._crit_edge154.i.i128.i ], [ %i.jo, %.preheader136.i.i89.i ] ; 4 uses
  %i.lo = shl i32 %indvars.iv.i.i95.i, 16
  %i.lp = or disjoint i32 %i.lo, %.mask.i.i91.i
  %i.lq = zext i32 %i.lp to i48
  %.sroa.0133.0.insert.insert.reass.i.i96.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i86.i, %i.lq
  %i.lr = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.i96.i)
          to label %.noexc165.i unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

.noexc165.i:                                      ; preds = %.preheader135.lr.ph.i.i94.i
  %i.ls = trunc nsw i32 %indvars.iv.i.i95.i to i16
  %i.lt = shl i16 %i.ls, 4                        ; 2 uses
  %i.lu = sext i16 %i.lt to i32                   ; 2 uses
  %i.lv = sub nsw i32 %i.jk, %i.lu
  %i.lw = call i32 @llvm.smax.i32(i32 %i.lv, i32 0)
  %i.lx = call i32 @llvm.umin.i32(i32 %i.lw, i32 15) ; 2 uses
  %i.ly = trunc nuw nsw i32 %i.lx to i16
  %i.lz = sub nsw i32 %i.ka, %i.lu
  %i.ma = call i32 @llvm.smax.i32(i32 %i.lz, i32 0) ; 2 uses
  %i.mb = call i32 @llvm.umin.i32(i32 %i.ma, i32 15)
  %.not74149.i.i97.i = icmp samesign ult i32 %i.ma, %i.lx
  %.not77.i.i98.i = icmp eq ptr %i.lr, null
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.lr, i64 36
  br i1 %.not74149.i.i97.i, label %._crit_edge154.i.i128.i, label %.preheader135.i.i99.i

.preheader135.i.i99.i:                            ; preds = %.noexc165.i, %._crit_edge151.split.i.i126.i
  %.3.i = phi i32 [ %.6.i, %._crit_edge151.split.i.i126.i ], [ %.2.i, %.noexc165.i ]
  %.064153.i.i100.i = phi i16 [ %i.or, %._crit_edge151.split.i.i126.i ], [ %i.kt, %.noexc165.i ] ; 3 uses
  %i.me = add i16 %.064153.i.i100.i, %i.ko
  %.sroa.3.0.insert.ext.i99.i.i101.i = zext i16 %i.me to i48
  %.sroa.3.0.insert.shift.i100.i.i102.i = shl nuw i48 %.sroa.3.0.insert.ext.i99.i.i101.i, 32
  %i.mf = sext i16 %.064153.i.i100.i to i64
  %i.mg = shl nsw i64 %i.mf, 8
  br label %.preheader.i.i103.i

.preheader.i.i103.i:                              ; preds = %._crit_edge.i.i124.i, %.preheader135.i.i99.i
  %.4.i = phi i32 [ %.3.i, %.preheader135.i.i99.i ], [ %.6.i, %._crit_edge.i.i124.i ]
  %.063150.i.i104.i = phi i16 [ %i.ly, %.preheader135.i.i99.i ], [ %i.op, %._crit_edge.i.i124.i ] ; 3 uses
  %i.mh = add i16 %.063150.i.i104.i, %i.lt
  %.sroa.2.0.insert.ext.i101.i.i105.i = zext i16 %i.mh to i48
  %.sroa.2.0.insert.shift.i102.i.i106.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i101.i.i105.i, 16
  %.sroa.2.0.insert.insert.i103.i.i107.i = or disjoint i48 %.sroa.2.0.insert.shift.i102.i.i106.i, %.sroa.3.0.insert.shift.i100.i.i102.i
  %i.mi = sext i16 %.063150.i.i104.i to i64
  %i.mj = shl nsw i64 %i.mi, 4
  %i.mk = add nsw i64 %i.mj, %i.mg
  br label %bb.al

bb.al:                                            ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i", %.preheader.i.i103.i
  %.5.i = phi i32 [ %.4.i, %.preheader.i.i103.i ], [ %.6.i, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %.0147.i.i108.i = phi i16 [ %i.lg, %.preheader.i.i103.i ], [ %i.on, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %i.ml = add i16 %.0147.i.i108.i, %i.lb
  %.sroa.0.0.insert.ext.i104.i.i109.i = zext i16 %i.ml to i48
  %.sroa.0.0.insert.insert.i105.i.i110.i = or disjoint i48 %.sroa.2.0.insert.insert.i103.i.i107.i, %.sroa.0.0.insert.ext.i104.i.i109.i
  br i1 %.not77.i.i98.i, label %bb.am, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i

_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i:   ; preds = %bb.al
  %i.mm = load ptr, ptr %i.mc, align 8, !tbaa !304
  %i.mn = load i8, ptr %i.md, align 4, !tbaa !333, !range !72, !noundef !73
  %i.mo = trunc nuw i8 %i.mn to i1
  %i.mp = sext i16 %.0147.i.i108.i to i64
  %i.mq = add nsw i64 %i.mk, %i.mp
  %i.mr = and i64 %i.mq, 4294967295
  %i.ms = select i1 %i.mo, i64 0, i64 %i.mr
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.ms
  %.sroa.0.0.copyload.i.i.i112.i = load i32, ptr %i.mt, align 4
  %i.mu = trunc i32 %.sroa.0.0.copyload.i.i.i112.i to i16
  br label %bb.am

bb.am:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i, %bb.al
  %.sroa.0.0.insert.insert.i.i113.i = phi i16 [ %i.mu, %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i ], [ 127, %bb.al ] ; 7 uses
  %i.mv = load ptr, ptr %3, align 8, !tbaa !291   ; 4 uses
  %i.mw = load ptr, ptr %i.iw, align 8, !tbaa !291 ; 3 uses
  %i.mx = ptrtoint ptr %i.mw to i64               ; 2 uses
  %i.my = ptrtoint ptr %i.mv to i64
  %i.mz = sub i64 %i.mx, %i.my                    ; 3 uses
  %i.na = ashr i64 %i.mz, 3                       ; 2 uses
  %i.nb = icmp sgt i64 %i.na, 0
  br i1 %i.nb, label %.lr.ph.i.i.i.i.i.i138.i, label %._crit_edge.i.i.i.i.i.i114.i

.lr.ph.i.i.i.i.i.i138.i:                          ; preds = %bb.am
  %i.nc = and i64 %i.mz, -8
  %scevgep.i.i.i.i.i.i139.i = getelementptr i8, ptr %i.mv, i64 %i.nc ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i138.i
  %.052.i.i.i.i.i.i140.i = phi i64 [ %i.na, %.lr.ph.i.i.i.i.i.i138.i ], [ %i.np, %bb.ar ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i141.i = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i138.i ], [ %i.no, %bb.ar ] ; 9 uses
  %i.nd = load i16, ptr %.sroa.032.051.i.i.i.i.i.i141.i, align 2, !tbaa !36
  %i.ne = icmp eq i16 %i.nd, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.ne, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 2
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !36
  %i.nh = icmp eq i16 %i.ng, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 4
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !36
  %i.nk = icmp eq i16 %i.nj, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nk, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 6
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !36
  %i.nn = icmp eq i16 %i.nm, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 8
  %i.np = add nsw i64 %.052.i.i.i.i.i.i140.i, -1
  %i.nq = icmp sgt i64 %.052.i.i.i.i.i.i140.i, 1
  br i1 %i.nq, label %bb.an, label %._crit_edge.loopexit.i.i.i.i.i.i142.i, !llvm.loop !293

._crit_edge.loopexit.i.i.i.i.i.i142.i:            ; preds = %bb.ar
  %.pre59.i.i.i.i.i.i143.i = ptrtoint ptr %scevgep.i.i.i.i.i.i139.i to i64
  %.pre60.i.i.i.i.i.i144.i = sub i64 %i.mx, %.pre59.i.i.i.i.i.i143.i
  br label %._crit_edge.i.i.i.i.i.i114.i

._crit_edge.i.i.i.i.i.i114.i:                     ; preds = %._crit_edge.loopexit.i.i.i.i.i.i142.i, %bb.am
  %.pre-phi61.i.i.i.i.i.i115.i = phi i64 [ %.pre60.i.i.i.i.i.i144.i, %._crit_edge.loopexit.i.i.i.i.i.i142.i ], [ %i.mz, %bb.am ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i116.i = phi ptr [ %scevgep.i.i.i.i.i.i139.i, %._crit_edge.loopexit.i.i.i.i.i.i142.i ], [ %i.mv, %bb.am ] ; 5 uses
  %i.nr = ashr exact i64 %.pre-phi61.i.i.i.i.i.i115.i, 1
  switch i64 %i.nr, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" [
    i64 3, label %bb.as
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i136.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i117.i
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i.i114.i
  %i.ns = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, align 2, !tbaa !36
  %i.nt = icmp eq i16 %i.ns, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nt, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i136.i

._crit_edge._crit_edge.i.i.i.i.i.i136.i:          ; preds = %bb.at, %._crit_edge.i.i.i.i.i.i114.i
  %.sroa.032.1.i.i.i.i.i.i137.i = phi ptr [ %i.nu, %bb.at ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, %._crit_edge.i.i.i.i.i.i114.i ] ; 3 uses
  %i.nv = load i16, ptr %.sroa.032.1.i.i.i.i.i.i137.i, align 2, !tbaa !36
  %i.nw = icmp eq i16 %i.nv, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i136.i
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i137.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i117.i

._crit_edge._crit_edge57.i.i.i.i.i.i117.i:        ; preds = %bb.au, %._crit_edge.i.i.i.i.i.i114.i
  %.sroa.032.2.i.i.i.i.i.i118.i = phi ptr [ %i.nx, %bb.au ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, %._crit_edge.i.i.i.i.i.i114.i ] ; 2 uses
  %i.ny = load i16, ptr %.sroa.032.2.i.i.i.i.i.i118.i, align 2, !tbaa !36
  %i.nz = icmp eq i16 %i.ny, %.sroa.0.0.insert.insert.i.i113.i
  %spec.select.i.i.i.i.i.i119.i = select i1 %i.nz, ptr %.sroa.032.2.i.i.i.i.i.i118.i, ptr %i.mw
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit: ; preds = %bb.ao
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106: ; preds = %bb.ap
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108: ; preds = %bb.aq
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i: ; preds = %bb.an, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108, %._crit_edge._crit_edge57.i.i.i.i.i.i117.i, %._crit_edge._crit_edge.i.i.i.i.i.i136.i, %bb.as
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i121.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i137.i, %._crit_edge._crit_edge.i.i.i.i.i.i136.i ], [ %spec.select.i.i.i.i.i.i119.i, %._crit_edge._crit_edge57.i.i.i.i.i.i117.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, %bb.as ], [ %i.oc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108 ], [ %i.ob, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106 ], [ %i.oa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i141.i, %bb.an ] ; 2 uses
  %.not.i.i.i122.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i121.i, %i.mw
  br i1 %.not.i.i.i122.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i", label %bb.av

bb.av:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i105.i.i110.i)
          to label %.noexc166.i unwind label %.loopexit262.i

.noexc166.i:                                      ; preds = %bb.av
  %i.od = add i32 %.5.i, 1                        ; 2 uses
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.od)
          to label %.noexc167.i unwind label %.loopexit262.i

.noexc167.i:                                      ; preds = %.noexc166.i
  %i.oe = load ptr, ptr %3, align 8, !tbaa !291
  %i.of = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i121.i to i64
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = lshr exact i64 %i.oh, 1
  %i.oj = and i64 %i.oi, 4294967295
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.2.i, i64 %i.oj ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !301
  %i.om = add i32 %i.ol, 1
  store i32 %i.om, ptr %i.ok, align 4, !tbaa !301
  br label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i"

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i": ; preds = %.noexc167.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, %._crit_edge.i.i.i.i.i.i114.i
  %.6.i = phi i32 [ %.5.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i ], [ %i.od, %.noexc167.i ], [ %.5.i, %._crit_edge.i.i.i.i.i.i114.i ] ; 4 uses
  %i.on = add i16 %.0147.i.i108.i, 1              ; 2 uses
  %i.oo = sext i16 %i.on to i32
  %.not76.i.i123.i = icmp slt i32 %i.lj, %i.oo
  br i1 %.not76.i.i123.i, label %._crit_edge.i.i124.i, label %bb.al, !llvm.loop !342

._crit_edge.i.i124.i:                             ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i"
  %i.op = add i16 %.063150.i.i104.i, 1            ; 2 uses
  %i.oq = sext i16 %i.op to i32
  %.not74.i.i125.i = icmp slt i32 %i.mb, %i.oq
  br i1 %.not74.i.i125.i, label %._crit_edge151.split.i.i126.i, label %.preheader.i.i103.i, !llvm.loop !343

._crit_edge151.split.i.i126.i:                    ; preds = %._crit_edge.i.i124.i
  %i.or = add i16 %.064153.i.i100.i, 1            ; 2 uses
  %i.os = sext i16 %i.or to i32
  %.not72.i.i127.i = icmp slt i32 %i.kw, %i.os
  br i1 %.not72.i.i127.i, label %._crit_edge154.i.i128.i, label %.preheader135.i.i99.i, !llvm.loop !344

._crit_edge154.i.i128.i:                          ; preds = %._crit_edge151.split.i.i126.i, %.noexc165.i
  %.7.i = phi i32 [ %.2.i, %.noexc165.i ], [ %.6.i, %._crit_edge151.split.i.i126.i ] ; 2 uses
  %indvars.iv.next.i.i129.i = add nsw i32 %indvars.iv.i.i95.i, 1
  %exitcond.i.i130.i = icmp eq i32 %indvars.iv.i.i95.i, %i.ke
  br i1 %exitcond.i.i130.i, label %._crit_edge160.split.i.i131.i, label %.preheader135.lr.ph.i.i94.i, !llvm.loop !340

._crit_edge160.split.i.i131.i:                    ; preds = %._crit_edge154.i.i128.i, %.noexc164.i
  %.8.i = phi i32 [ %.1.i, %.noexc164.i ], [ %.7.i, %._crit_edge154.i.i128.i ] ; 2 uses
  %indvars.iv.next183.i.i132.i = add nsw i32 %indvars.iv182.i.i90.i, 1
  %exitcond186.i.i133.i = icmp eq i32 %indvars.iv182.i.i90.i, %i.jz
  br i1 %exitcond186.i.i133.i, label %._crit_edge163.i.i134.i, label %.preheader136.i.i89.i, !llvm.loop !341

._crit_edge163.i.i134.i:                          ; preds = %._crit_edge160.split.i.i131.i, %._crit_edge160.split.us.us.i.i161.i
  %.9.i = phi i32 [ %.0230.i, %._crit_edge160.split.us.us.i.i161.i ], [ %.8.i, %._crit_edge160.split.i.i131.i ]
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, 1
  %exitcond.not = icmp eq i32 %indvars.iv.i, %i.kk
  br i1 %exitcond.not, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.i.i83.i, !llvm.loop !345

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i": ; preds = %._crit_edge163.i.i134.i, %.preheader137.lr.ph.i.i77.i, %bb.aj
  %i.ot = load ptr, ptr %i.iw, align 8, !tbaa !300
  %i.ou = load ptr, ptr %3, align 8, !tbaa !295
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = lshr exact i64 %i.ox, 1
  %i.oz = trunc i64 %i.oy to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.oz)
          to label %.preheader.i unwind label %bb.ax

.preheader.i:                                     ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i"
  %i.pa = load ptr, ptr %i.iw, align 8, !tbaa !300
  %i.pb = load ptr, ptr %3, align 8, !tbaa !295   ; 2 uses
  %.not299.i = icmp eq ptr %i.pa, %i.pb
  br i1 %.not299.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.ay

._crit_edge.i:                                    ; preds = %.preheader.i
  %.not.i.i.i168.i = icmp eq ptr %.sroa.0206.2.i, null
  br i1 %.not.i.i.i168.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bc, %._crit_edge.i
  %i.pd = ptrtoint ptr %.sroa.16214.2.i to i64
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i, %bb.ai
  %.sroa.0206.0.i = phi ptr [ %.sroa.0206.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i ], [ null, %bb.ai ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i ]
  %.sroa.16214.0.i = phi ptr [ %.sroa.16214.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i ], [ null, %bb.ai ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i ]
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263.i

.loopexit262.i:                                   ; preds = %.noexc166.i, %bb.av
  %lpad.loopexit264.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263.i

.loopexit.split-lp263.loopexit.i:                 ; preds = %bb.ak
  %lpad.loopexit267.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263.i

.loopexit.split-lp263.loopexit.split-lp.loopexit.i: ; preds = %.preheader135.lr.ph.i.us.i148.i
  %lpad.loopexit270.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263.i

.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.preheader135.lr.ph.i.i94.i
  %lpad.loopexit.split-lp271.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263.i

bb.ax:                                            ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i"
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263.i

bb.ay:                                            ; preds = %bb.bc, %.lr.ph.i
  %i.pg = phi i64 [ 0, %.lr.ph.i ], [ %i.qe, %bb.bc ] ; 2 uses
  %.0283.i = phi i32 [ 0, %.lr.ph.i ], [ %i.qd, %bb.bc ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0206.2.i, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !301
  %i.pj = zext i32 %i.pi to i64
  invoke void @lua_pushinteger(ptr noundef %0, i64 noundef %i.pj)
          to label %bb.az unwind label %.thread244.i

bb.az:                                            ; preds = %bb.ay
  %i.pk = load ptr, ptr %3, align 8, !tbaa !295
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %i.pg
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !36
  %i.pn = zext i16 %i.pm to i64                   ; 2 uses
  %i.po = load ptr, ptr %i.pc, align 8, !tbaa !110
  %i.pp = load ptr, ptr %i.aa, align 8, !tbaa !113 ; 3 uses
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = sdiv exact i64 %i.ps, 2072
  %i.pu = icmp ugt i64 %i.pt, %i.pn
  br i1 %i.pu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pv = getelementptr inbounds nuw [2072 x i8], ptr %i.pp, i64 %i.pn ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !114
  %i.py = icmp eq i64 %i.px, 0
  br i1 %i.py, label %bb.bb, label %_ZNK14NodeDefManager3getEt.exit170.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pp, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit170.i

_ZNK14NodeDefManager3getEt.exit170.i:             ; preds = %bb.bb, %bb.ba
  %i.qa = phi ptr [ %i.pz, %bb.bb ], [ %i.pv, %bb.ba ]
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !81
  invoke void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef %i.qc)
          to label %bb.bc unwind label %.thread244.i

bb.bc:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit170.i
  %i.qd = add i32 %.0283.i, 1                     ; 2 uses
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  %i.qf = load ptr, ptr %i.iw, align 8, !tbaa !300
  %i.qg = load ptr, ptr %3, align 8, !tbaa !295
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = sub i64 %i.qh, %i.qi
  %i.qk = ashr exact i64 %i.qj, 1
  %i.ql = icmp ugt i64 %i.qk, %i.qe
  br i1 %i.ql, label %bb.ay, label %._crit_edge.thread.i, !llvm.loop !346

.thread244.i:                                     ; preds = %_ZNK14NodeDefManager3getEt.exit170.i, %bb.ay
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp263.i:                          ; preds = %bb.ax, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp263.loopexit.split-lp.loopexit.i, %.loopexit.split-lp263.loopexit.i, %.loopexit262.i, %bb.aw
  %.sroa.0206.1.i = phi ptr [ %.sroa.0206.0.i, %bb.aw ], [ %.sroa.0206.2.i, %bb.ax ], [ %.sroa.0206.2.i, %.loopexit.split-lp263.loopexit.i ], [ %.sroa.0206.2.i, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.0206.2.i, %.loopexit.split-lp263.loopexit.split-lp.loopexit.i ], [ %.sroa.0206.2.i, %.loopexit262.i ] ; 2 uses
  %.sroa.16214.1.i = phi ptr [ %.sroa.16214.0.i, %bb.aw ], [ %.sroa.16214.2.i, %bb.ax ], [ %.sroa.16214.2.i, %.loopexit.split-lp263.loopexit.i ], [ %.sroa.16214.2.i, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.16214.2.i, %.loopexit.split-lp263.loopexit.split-lp.loopexit.i ], [ %.sroa.16214.2.i, %.loopexit262.i ]
  %.pn.pn.i = phi { ptr, i32 } [ %i.pe, %bb.aw ], [ %i.pf, %bb.ax ], [ %lpad.loopexit267.i, %.loopexit.split-lp263.loopexit.i ], [ %lpad.loopexit.split-lp271.i, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit270.i, %.loopexit.split-lp263.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit264.i, %.loopexit262.i ] ; 2 uses
  %.not.i.i.i171.i = icmp eq ptr %.sroa.0206.1.i, null
  br i1 %.not.i.i.i171.i, label %.body, label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp263.i, %.thread244.i
  %.pn.pn251.i = phi { ptr, i32 } [ %i.qm, %.thread244.i ], [ %.pn.pn.i, %.loopexit.split-lp263.i ]
  %.sroa.16214.1250.i = phi ptr [ %.sroa.16214.2.i, %.thread244.i ], [ %.sroa.16214.1.i, %.loopexit.split-lp263.i ]
  %.sroa.0206.1249.i = phi ptr [ %.sroa.0206.2.i, %.thread244.i ], [ %.sroa.0206.1.i, %.loopexit.split-lp263.i ]
  %i.qn = ptrtoint ptr %.sroa.16214.1250.i to i64
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i:       ; preds = %bb.af, %._crit_edge.thread.i, %._crit_edge298.i
  %.sroa.0206.2.sink387.i = phi ptr [ %.sroa.0206.2.i, %._crit_edge.thread.i ], [ %.sroa.0.1351.i, %._crit_edge298.i ], [ %.sroa.0.1351.i, %bb.af ] ; 2 uses
  %.sink385.i = phi i64 [ %i.pd, %._crit_edge.thread.i ], [ %.sroa.16.1356.i, %._crit_edge298.i ], [ %.sroa.16.1356.i, %bb.af ]
  %.034.ph.i = phi i32 [ 2, %._crit_edge.thread.i ], [ 1, %._crit_edge298.i ], [ 1, %bb.af ]
  %i.qo = ptrtoint ptr %.sroa.0206.2.sink387.i to i64
  %i.qp = sub i64 %.sink385.i, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.2.sink387.i, i64 noundef %i.qp) #28
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !295
  br label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"

_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i:     ; preds = %bb.bd, %.loopexit.split-lp.i, %.thread236.i, %.loopexit.split-lp.thread.i
  %.sroa.0206.1249.sink390.i = phi ptr [ %.sroa.0206.1249.i, %bb.bd ], [ %.sroa.0.1351.i, %.thread236.i ], [ %.sroa.0.1351.i, %.loopexit.split-lp.i ], [ %i.bf, %.loopexit.split-lp.thread.i ] ; 2 uses
  %.sink388.i = phi i64 [ %i.qn, %bb.bd ], [ %.sroa.16.1356.i, %.thread236.i ], [ %.sroa.16.1356.i, %.loopexit.split-lp.i ], [ %i.bk, %.loopexit.split-lp.thread.i ]
  %.pn38.pn.ph.i = phi { ptr, i32 } [ %.pn.pn251.i, %bb.bd ], [ %i.hz, %.thread236.i ], [ %.pn38.i, %.loopexit.split-lp.i ], [ %i.hl, %.loopexit.split-lp.thread.i ]
  %i.qq = ptrtoint ptr %.sroa.0206.1249.sink390.i to i64
  %i.qr = sub i64 %.sink388.i, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0206.1249.sink390.i, i64 noundef %i.qr) #28
  br label %.body

"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit": ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, %._crit_edge298.i, %._crit_edge.i
  %i.qs = phi ptr [ %i.pb, %._crit_edge.i ], [ %.pr.pre, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ %.pr68, %._crit_edge298.i ] ; 3 uses
  %.034.i = phi i32 [ 2, %._crit_edge.i ], [ %.034.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ 1, %._crit_edge298.i ]
  %.not.i.i.i = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !297
  %i.qv = ptrtoint ptr %i.qu to i64
  %i.qw = ptrtoint ptr %i.qs to i64
  %i.qx = sub i64 %i.qv, %i.qw
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef %i.qx) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bj

bb.bf:                                            ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.j, %bb.h
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %.noexc173.i, %.noexc, %bb.l
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i, %.loopexit.split-lp263.i, %.loopexit.split-lp.i, %bb.bg, %bb.bf
  %.pn.pn = phi { ptr, i32 } [ %i.qy, %bb.bf ], [ %i.qz, %bb.bg ], [ %i.ra, %bb.bh ], [ %.pn38.i, %.loopexit.split-lp.i ], [ %.pn.pn.i, %.loopexit.split-lp263.i ], [ %.pn38.pn.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i ]
  %i.rb = load ptr, ptr %3, align 8, !tbaa !295   ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorItSaItEED2Ev.exit26, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !297
  %i.re = ptrtoint ptr %i.rd to i64
end_hunk_0
