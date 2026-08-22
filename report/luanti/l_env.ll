Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_env?download=true
inline.NumInlined: 1766
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13BaseExceptionD2Ev:bb.a
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

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
  %3 = alloca %"class.std::vector.548", align 8   ; 24 uses
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
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !299 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !294   ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.an = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 4)
          to label %bb.k unwind label %bb.bg

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !299 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !294   ; 2 uses
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
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !299 ; 4 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !294   ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 1                 ; 3 uses
  %.not252.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not252.i, label %._crit_edge284.i, label %bb.m

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
          to label %.noexc24 unwind label %bb.bh  ; 5 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.bf, align 4, !tbaa !300
  %i.bg = add nsw i64 %i.bc, -1                   ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph283.preheader.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc24
  %i.bi = getelementptr i8, ptr %i.bf, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.bg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bi, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !300
  br label %.lr.ph283.preheader.i

.lr.ph283.preheader.i:                            ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc24
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  br label %.lr.ph283.i

._crit_edge284.i:                                 ; preds = %bb.z, %.noexc22
  %.pr69 = phi ptr [ %i.ay, %.noexc22 ], [ %i.he, %bb.z ] ; 2 uses
  %.sroa.16.1350.i = phi i64 [ 0, %.noexc22 ], [ %i.bk, %bb.z ] ; 4 uses
  %.sroa.0.1345.i = phi ptr [ null, %.noexc22 ], [ %i.bf, %bb.z ] ; 8 uses
  %i.bl = phi ptr [ %i.ax, %.noexc22 ], [ %i.he, %bb.z ] ; 2 uses
  %i.bm = phi ptr [ %i.ax, %.noexc22 ], [ %i.hd, %bb.z ] ; 2 uses
  %.sroa.03.0.copyload.i.i = load i48, ptr %1, align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i48, ptr %2, align 8 ; 4 uses
  %.sroa.060.0.extract.trunc.i.i.i = trunc i48 %.sroa.03.0.copyload.i.i to i16 ; 2 uses
  %.sroa.361.0.extract.shift.i.i.i = lshr i48 %.sroa.03.0.copyload.i.i, 16
  %.sroa.361.0.extract.trunc.i.i.i = trunc i48 %.sroa.361.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.058.0.extract.trunc.i.i.i = trunc i48 %.sroa.0.0.copyload.i.i to i16 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i48 %.sroa.0.0.copyload.i.i, 16
  %.sroa.3.0.extract.trunc.i.i.i = trunc i48 %.sroa.3.0.extract.shift.i.i.i to i16 ; 2 uses
  %i.bn = sext i16 %.sroa.060.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.bo = add nsw i32 %i.bn, -15
  %i.bp = icmp slt i16 %.sroa.060.0.extract.trunc.i.i.i, 0
  %i.bq = select i1 %i.bp, i32 %i.bo, i32 %i.bn
  %i.br = sdiv i32 %i.bq, 16                      ; 3 uses
  %i.bs = sext i16 %.sroa.361.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.bt = add nsw i32 %i.bs, -15
  %i.bu = icmp slt i16 %.sroa.361.0.extract.trunc.i.i.i, 0
  %i.bv = select i1 %i.bu, i32 %i.bt, i32 %i.bs
  %i.bw = sdiv i32 %i.bv, 16                      ; 4 uses
  %i.bx = ashr i48 %.sroa.03.0.copyload.i.i, 32
  %i.by = trunc nsw i48 %i.bx to i32              ; 3 uses
  %i.bz = add nsw i32 %i.by, -15
  %i.ca = icmp slt i48 %.sroa.03.0.copyload.i.i, 0
  %i.cb = select i1 %i.ca, i32 %i.bz, i32 %i.by
  %i.cc = sdiv i32 %i.cb, 16                      ; 2 uses
  %.sroa.054.0.extract.trunc.i.i.i = trunc nsw i32 %i.br to i16
  %.sroa.455.0.extract.trunc.i.i.i = trunc nsw i32 %i.bw to i16
  %i.cd = sext i16 %.sroa.058.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.ce = add nsw i32 %i.cd, -15
  %i.cf = icmp slt i16 %.sroa.058.0.extract.trunc.i.i.i, 0
  %i.cg = select i1 %i.cf, i32 %i.ce, i32 %i.cd
  %i.ch = sdiv i32 %i.cg, 16                      ; 3 uses
  %i.ci = sext i16 %.sroa.3.0.extract.trunc.i.i.i to i32 ; 3 uses
  %i.cj = add nsw i32 %i.ci, -15
  %i.ck = icmp slt i16 %.sroa.3.0.extract.trunc.i.i.i, 0
  %i.cl = select i1 %i.ck, i32 %i.cj, i32 %i.ci
  %i.cm = sdiv i32 %i.cl, 16                      ; 4 uses
  %i.cn = ashr i48 %.sroa.0.0.copyload.i.i, 32
  %i.co = trunc nsw i48 %i.cn to i32              ; 3 uses
  %i.cp = add nsw i32 %i.co, -15
  %i.cq = icmp slt i48 %.sroa.0.0.copyload.i.i, 0
  %i.cr = select i1 %i.cq, i32 %i.cp, i32 %i.co
  %i.cs = sdiv i32 %i.cr, 16                      ; 2 uses
  %.mask.i.i81.i.i.i = and i32 %i.cs, 65535
  %.sroa.3.0.insert.ext.i.i82.i.i.i = zext nneg i32 %.mask.i.i81.i.i.i to i48
  %.sroa.3.0.insert.shift.i.i83.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i82.i.i.i, 32
  %.sroa.051.0.extract.trunc.i.i.i = trunc nsw i32 %i.ch to i16
  %.sroa.4.0.extract.trunc.i.i.i = trunc nsw i32 %i.cm to i16
  %i.ct = ashr exact i48 %.sroa.3.0.insert.shift.i.i83.i.i.i, 32
  %i.cu = trunc nsw i48 %i.ct to i32
  %.not166.i.i.i = icmp sgt i32 %i.cc, %i.cu
  br i1 %.not166.i.i.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i", label %.preheader137.lr.ph.i.i.i

.preheader137.lr.ph.i.i.i:                        ; preds = %._crit_edge284.i
  %.not70161.i.i.i = icmp sgt i32 %i.br, %i.ch
  %.not71158.i.i.i = icmp sgt i32 %i.bw, %i.cm
  %or.cond.i.i.i = select i1 %.not70161.i.i.i, i1 true, i1 %.not71158.i.i.i
  br i1 %or.cond.i.i.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i", label %.preheader137.i.preheader.i.i

.preheader137.i.preheader.i.i:                    ; preds = %.preheader137.lr.ph.i.i.i
  %i.cv = add i32 %i.aw, 1
  br label %.preheader137.i.i.i

.preheader137.i.i.i:                              ; preds = %._crit_edge163.i.i.i, %.preheader137.i.preheader.i.i
  %indvars.iv312.i = phi i32 [ %indvars.iv.next313.i, %._crit_edge163.i.i.i ], [ %i.cc, %.preheader137.i.preheader.i.i ] ; 4 uses
  %i.cw = trunc nsw i32 %indvars.iv312.i to i16
  %.mask342.i = and i32 %indvars.iv312.i, 65535
  %.sroa.7.0.insert.ext.i.i.i = zext nneg i32 %.mask342.i to i48
  %.sroa.7.0.insert.shift.i.i.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i.i, 32 ; 3 uses
  %i.cx = shl i16 %i.cw, 4                        ; 2 uses
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = sub nsw i32 %i.by, %i.cy
  %i.da = call i32 @llvm.smax.i32(i32 %i.cz, i32 0)
  %i.db = call i32 @llvm.umin.i32(i32 %i.da, i32 15) ; 2 uses
  %i.dc = trunc nuw nsw i32 %i.db to i16
  %i.dd = sub nsw i32 %i.co, %i.cy
  %i.de = call i32 @llvm.smax.i32(i32 %i.dd, i32 0) ; 2 uses
  %i.df = call i32 @llvm.umin.i32(i32 %i.de, i32 15)
  %.not72152.i.i.i = icmp samesign ult i32 %i.de, %i.db
  %.not72152.fr.i.i.i = freeze i1 %.not72152.i.i.i
  br i1 %.not72152.fr.i.i.i, label %.preheader136.us.i.i.i, label %.preheader136.i.i.i

.preheader136.us.i.i.i:                           ; preds = %.preheader137.i.i.i, %._crit_edge160.split.us.us.i.i.i
  %.066162.us.i.i.i = phi i16 [ %i.di, %._crit_edge160.split.us.us.i.i.i ], [ %.sroa.054.0.extract.trunc.i.i.i, %.preheader137.i.i.i ] ; 3 uses
  %.sroa.0133.0.insert.ext.us.i.i.i = zext i16 %.066162.us.i.i.i to i48
  %invariant.op158 = or disjoint i48 %.sroa.0133.0.insert.ext.us.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  br label %bb.n

bb.n:                                             ; preds = %.noexc42.i, %.preheader136.us.i.i.i
  %.065159.us.us.i.i.i = phi i16 [ %.sroa.455.0.extract.trunc.i.i.i, %.preheader136.us.i.i.i ], [ %i.dh, %.noexc42.i ] ; 3 uses
  %.sroa.5134.0.insert.ext.us.us.i.i.i = zext i16 %.065159.us.us.i.i.i to i48
  %.sroa.5134.0.insert.shift.us.us.i.i.i = shl nuw nsw i48 %.sroa.5134.0.insert.ext.us.us.i.i.i, 16
  %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = or disjoint i48 %.sroa.5134.0.insert.shift.us.us.i.i.i, %invariant.op158
  %i.dg = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass)
          to label %.noexc42.i unwind label %.loopexit.split-lp.loopexit.i ; 0 uses

.noexc42.i:                                       ; preds = %bb.n
  %i.dh = add nsw i16 %.065159.us.us.i.i.i, 1
  %exitcond187.i.i.i = icmp eq i16 %.065159.us.us.i.i.i, %.sroa.4.0.extract.trunc.i.i.i
  br i1 %exitcond187.i.i.i, label %._crit_edge160.split.us.us.i.i.i, label %bb.n, !llvm.loop !301

._crit_edge160.split.us.us.i.i.i:                 ; preds = %.noexc42.i
  %i.di = add nsw i16 %.066162.us.i.i.i, 1
  %exitcond188.i.i.i = icmp eq i16 %.066162.us.i.i.i, %.sroa.051.0.extract.trunc.i.i.i
  br i1 %exitcond188.i.i.i, label %._crit_edge163.i.i.i, label %.preheader136.us.i.i.i, !llvm.loop !302

.preheader136.i.i.i:                              ; preds = %.preheader137.i.i.i, %._crit_edge160.split.i.i.i
  %indvars.iv182.i.i.i = phi i32 [ %indvars.iv.next183.i.i.i, %._crit_edge160.split.i.i.i ], [ %i.br, %.preheader137.i.i.i ] ; 4 uses
  %i.dj = trunc nsw i32 %indvars.iv182.i.i.i to i16
  %.mask.i.i.i = and i32 %indvars.iv182.i.i.i, 65535 ; 2 uses
  %i.dk = shl i16 %i.dj, 4                        ; 2 uses
  %i.dl = sext i16 %i.dk to i32                   ; 2 uses
  %i.dm = sub nsw i32 %i.bn, %i.dl
  %i.dn = call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %i.do = call i32 @llvm.umin.i32(i32 %i.dn, i32 15) ; 2 uses
  %i.dp = trunc nuw nsw i32 %i.do to i16
  %i.dq = sub nsw i32 %i.cd, %i.dl
  %i.dr = call i32 @llvm.smax.i32(i32 %i.dq, i32 0) ; 2 uses
  %i.ds = call i32 @llvm.umin.i32(i32 %i.dr, i32 15)
  %.not76146.i.i.i = icmp samesign ult i32 %i.dr, %i.do
  %.not76146.i.fr.i.i = freeze i1 %.not76146.i.i.i
  br i1 %.not76146.i.fr.i.i, label %.preheader135.lr.ph.i.us.i.i, label %.preheader135.lr.ph.i.i.i

.preheader135.lr.ph.i.us.i.i:                     ; preds = %.preheader136.i.i.i, %.noexc43.i
  %indvars.iv.i.us.i.i = phi i32 [ %indvars.iv.next.i.us.i.i, %.noexc43.i ], [ %i.bw, %.preheader136.i.i.i ] ; 3 uses
  %i.dt = shl i32 %indvars.iv.i.us.i.i, 16
  %i.du = or disjoint i32 %i.dt, %.mask.i.i.i
  %i.dv = zext i32 %i.du to i48
  %.sroa.0133.0.insert.insert.reass.i.us.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i, %i.dv
  %i.dw = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.us.i.i)
          to label %.noexc43.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 0 uses

.noexc43.i:                                       ; preds = %.preheader135.lr.ph.i.us.i.i
  %indvars.iv.next.i.us.i.i = add nsw i32 %indvars.iv.i.us.i.i, 1
  %exitcond.i.us.i.i = icmp eq i32 %indvars.iv.i.us.i.i, %i.cm
  br i1 %exitcond.i.us.i.i, label %._crit_edge160.split.i.i.i, label %.preheader135.lr.ph.i.us.i.i, !llvm.loop !301

.preheader135.lr.ph.i.i.i:                        ; preds = %.preheader136.i.i.i, %._crit_edge154.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %._crit_edge154.i.i.i ], [ %i.bw, %.preheader136.i.i.i ] ; 4 uses
  %i.dx = shl i32 %indvars.iv.i.i.i, 16
  %i.dy = or disjoint i32 %i.dx, %.mask.i.i.i
  %i.dz = zext i32 %i.dy to i48
  %.sroa.0133.0.insert.insert.reass.i.i.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i.i, %i.dz
  %i.ea = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.i.i)
          to label %.noexc44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

.noexc44.i:                                       ; preds = %.preheader135.lr.ph.i.i.i
  %i.eb = trunc nsw i32 %indvars.iv.i.i.i to i16
  %i.ec = shl i16 %i.eb, 4                        ; 2 uses
  %i.ed = sext i16 %i.ec to i32                   ; 2 uses
  %i.ee = sub nsw i32 %i.bs, %i.ed
  %i.ef = call i32 @llvm.smax.i32(i32 %i.ee, i32 0)
  %i.eg = call i32 @llvm.umin.i32(i32 %i.ef, i32 15) ; 2 uses
  %i.eh = trunc nuw nsw i32 %i.eg to i16
  %i.ei = sub nsw i32 %i.ci, %i.ed
  %i.ej = call i32 @llvm.smax.i32(i32 %i.ei, i32 0) ; 2 uses
  %i.ek = call i32 @llvm.umin.i32(i32 %i.ej, i32 15)
  %.not74149.i.i.i = icmp samesign ult i32 %i.ej, %i.eg
  %.not77.i.i.i = icmp eq ptr %i.ea, null
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 36
  br i1 %.not74149.i.i.i, label %._crit_edge154.i.i.i, label %.preheader135.i.i.i

.preheader135.i.i.i:                              ; preds = %.noexc44.i, %._crit_edge151.split.i.i.i
  %.064153.i.i.i = phi i16 [ %i.gz, %._crit_edge151.split.i.i.i ], [ %i.dc, %.noexc44.i ] ; 3 uses
  %i.en = add i16 %.064153.i.i.i, %i.cx
  %.sroa.3.0.insert.ext.i99.i.i.i = zext i16 %i.en to i48
  %.sroa.3.0.insert.shift.i100.i.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i99.i.i.i, 32
  %i.eo = sext i16 %.064153.i.i.i to i64
  %i.ep = shl nsw i64 %i.eo, 8
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader135.i.i.i
  %.063150.i.i.i = phi i16 [ %i.eh, %.preheader135.i.i.i ], [ %i.gx, %._crit_edge.i.i.i ] ; 3 uses
  %i.eq = add i16 %.063150.i.i.i, %i.ec
  %.sroa.2.0.insert.ext.i101.i.i.i = zext i16 %i.eq to i48
  %.sroa.2.0.insert.shift.i102.i.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i101.i.i.i, 16
  %.sroa.2.0.insert.insert.i103.i.i.i = or disjoint i48 %.sroa.2.0.insert.shift.i102.i.i.i, %.sroa.3.0.insert.shift.i100.i.i.i
  %i.er = sext i16 %.063150.i.i.i to i64
  %i.es = shl nsw i64 %i.er, 4
  %i.et = add nsw i64 %i.es, %i.ep
  br label %bb.o

bb.o:                                             ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i", %.preheader.i.i.i
  %.0147.i.i.i = phi i16 [ %i.dp, %.preheader.i.i.i ], [ %i.gv, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %i.eu = add i16 %.0147.i.i.i, %i.dk
  %.sroa.0.0.insert.ext.i104.i.i.i = zext i16 %i.eu to i48
  %.sroa.0.0.insert.insert.i105.i.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i103.i.i.i, %.sroa.0.0.insert.ext.i104.i.i.i
  br i1 %.not77.i.i.i, label %bb.p, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i

_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i:      ; preds = %bb.o
  %i.ev = load ptr, ptr %i.el, align 8, !tbaa !303
  %i.ew = load i8, ptr %i.em, align 4, !tbaa !332, !range !72, !noundef !73
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = sext i16 %.0147.i.i.i to i64
  %i.ez = add nsw i64 %i.et, %i.ey
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = select i1 %i.ex, i64 0, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fb
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.fc, align 4
  %i.fd = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i16
  br label %bb.p

bb.p:                                             ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i, %bb.o
  %.sroa.0.0.insert.insert.i.i.i = phi i16 [ %i.fd, %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i.i ], [ 127, %bb.o ] ; 7 uses
  %i.fe = load ptr, ptr %3, align 8, !tbaa !290   ; 4 uses
  %i.ff = load ptr, ptr %i.ao, align 8, !tbaa !290 ; 3 uses
  %i.fg = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fh = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh                    ; 3 uses
  %i.fj = ashr i64 %i.fi, 3                       ; 2 uses
  %i.fk = icmp sgt i64 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.p
  %i.fl = and i64 %i.fi, -8
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.fe, i64 %i.fl ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i.i
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fy, %bb.u ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fx, %bb.u ] ; 9 uses
  %i.fm = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.fn = icmp eq i16 %i.fm, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fn, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !36
  %i.fq = icmp eq i16 %i.fp, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !36
  %i.ft = icmp eq i16 %i.fs, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.ft, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !36
  %i.fw = icmp eq i16 %i.fv, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.fw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8
  %i.fy = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.fz = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.q, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !292

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.u
  %.pre59.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i.i.i = sub i64 %i.fg, %.pre59.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.p
  %.pre-phi61.i.i.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.fi, %bb.p ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.fe, %bb.p ] ; 5 uses
  %i.ga = ashr exact i64 %.pre-phi61.i.i.i.i.i.i.i, 1
  switch i64 %i.ga, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" [
    i64 3, label %bb.v
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.gb = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.gc = icmp eq i16 %i.gb, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.gc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i:             ; preds = %bb.w, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.gd, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.ge = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.gf = icmp eq i16 %i.ge, %.sroa.0.0.insert.insert.i.i.i
  br i1 %i.gf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i.i.i:           ; preds = %bb.x, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.x ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.gh = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !36
  %i.gi = icmp eq i16 %i.gh, %.sroa.0.0.insert.insert.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gi, ptr %.sroa.032.2.i.i.i.i.i.i.i, ptr %i.ff
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.r
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114: ; preds = %bb.s
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116: ; preds = %bb.t
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i: ; preds = %bb.q, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116, %._crit_edge._crit_edge57.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i, %bb.v
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %bb.v ], [ %i.gl, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit116 ], [ %i.gk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit114 ], [ %i.gj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i.i, %bb.q ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i, %i.ff
  br i1 %.not.i.i.i.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i105.i.i.i)
          to label %.noexc45.i unwind label %.loopexit.i

.noexc45.i:                                       ; preds = %bb.y
  %i.gm = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i to i64
  %i.gn = sub i64 %i.gm, %i.fh
  %i.go = ashr exact i64 %i.gn, 1                 ; 2 uses
  %i.gp = trunc i64 %i.go to i32
  %i.gq = add i32 %i.cv, %i.gp
  %i.gr = and i64 %i.go, 4294967295
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1345.i, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !300
  %i.gu = add i32 %i.gt, 1                        ; 2 uses
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !300
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef %i.gq, i32 noundef %i.gu)
          to label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i" unwind label %.loopexit.i

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i": ; preds = %.noexc45.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.gv = add i16 %.0147.i.i.i, 1                 ; 2 uses
  %i.gw = sext i16 %i.gv to i32
  %.not76.i.i.i = icmp slt i32 %i.ds, %i.gw
  br i1 %.not76.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !333

._crit_edge.i.i.i:                                ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i.i"
  %i.gx = add i16 %.063150.i.i.i, 1               ; 2 uses
  %i.gy = sext i16 %i.gx to i32
  %.not74.i.i.i = icmp slt i32 %i.ek, %i.gy
  br i1 %.not74.i.i.i, label %._crit_edge151.split.i.i.i, label %.preheader.i.i.i, !llvm.loop !334

._crit_edge151.split.i.i.i:                       ; preds = %._crit_edge.i.i.i
  %i.gz = add i16 %.064153.i.i.i, 1               ; 2 uses
  %i.ha = sext i16 %i.gz to i32
  %.not72.i.i.i = icmp slt i32 %i.df, %i.ha
  br i1 %.not72.i.i.i, label %._crit_edge154.i.i.i, label %.preheader135.i.i.i, !llvm.loop !335

._crit_edge154.i.i.i:                             ; preds = %._crit_edge151.split.i.i.i, %.noexc44.i
  %indvars.iv.next.i.i.i = add nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %indvars.iv.i.i.i, %i.cm
  br i1 %exitcond.i.i.i, label %._crit_edge160.split.i.i.i, label %.preheader135.lr.ph.i.i.i, !llvm.loop !301

._crit_edge160.split.i.i.i:                       ; preds = %._crit_edge154.i.i.i, %.noexc43.i
  %indvars.iv.next183.i.i.i = add nsw i32 %indvars.iv182.i.i.i, 1
  %exitcond186.i.i.i = icmp eq i32 %indvars.iv182.i.i.i, %i.ch
  br i1 %exitcond186.i.i.i, label %._crit_edge163.i.i.i, label %.preheader136.i.i.i, !llvm.loop !302

._crit_edge163.i.i.i:                             ; preds = %._crit_edge160.split.i.i.i, %._crit_edge160.split.us.us.i.i.i
  %indvars.iv.next313.i = add nsw i32 %indvars.iv312.i, 1
  %exitcond66.not = icmp eq i32 %indvars.iv312.i, %i.cs
  br i1 %exitcond66.not, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i", label %.preheader137.i.i.i, !llvm.loop !336

.lr.ph283.i:                                      ; preds = %bb.z, %.lr.ph283.preheader.i
  %.028282.i = phi i32 [ %i.hb, %bb.z ], [ 0, %.lr.ph283.preheader.i ]
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %bb.z unwind label %.loopexit.split-lp.thread.i

bb.z:                                             ; preds = %.lr.ph283.i
  %i.hb = add i32 %.028282.i, 1                   ; 2 uses
  %i.hc = zext i32 %i.hb to i64
  %i.hd = load ptr, ptr %i.ao, align 8, !tbaa !299 ; 2 uses
  %i.he = load ptr, ptr %3, align 8, !tbaa !294   ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = ashr exact i64 %i.hh, 1
  %i.hj = icmp ugt i64 %i.hi, %i.hc
  br i1 %i.hj, label %.lr.ph283.i, label %._crit_edge284.i, !llvm.loop !337

.loopexit.split-lp.thread.i:                      ; preds = %.lr.ph283.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i": ; preds = %._crit_edge163.i.i.i
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !299
  %.pre318.i = load ptr, ptr %3, align 8, !tbaa !294 ; 2 uses
  br label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i": ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i", %.preheader137.lr.ph.i.i.i, %._crit_edge284.i
  %.pr68 = phi ptr [ %.pre318.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %.pr69, %.preheader137.lr.ph.i.i.i ], [ %.pr69, %._crit_edge284.i ]
  %i.hl = phi ptr [ %.pre318.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %i.bl, %.preheader137.lr.ph.i.i.i ], [ %i.bl, %._crit_edge284.i ]
  %i.hm = phi ptr [ %.pre.i, %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.loopexit.i" ], [ %i.bm, %.preheader137.lr.ph.i.i.i ], [ %i.bm, %._crit_edge284.i ]
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho                    ; 2 uses
  %i.hq = and i64 %i.hp, 8589934590
  %.not294.i = icmp eq i64 %i.hq, 0
  br i1 %.not294.i, label %._crit_edge296.i, label %.lr.ph295.i

.lr.ph295.i:                                      ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"
  %i.hr = lshr exact i64 %i.hp, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ht = and i64 %i.hr, 4294967295
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.lr.ph295.i
  %indvars.iv315.i = phi i64 [ %i.ht, %.lr.ph295.i ], [ %i.hu, %bb.af ]
  %i.hu = add nsw i64 %indvars.iv315.i, -1        ; 4 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1345.i, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !300
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.af unwind label %.thread234.i

.loopexit.i:                                      ; preds = %.noexc45.i, %bb.y
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.n
  %lpad.loopexit253.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.preheader135.lr.ph.i.us.i.i
  %lpad.loopexit256.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.preheader135.lr.ph.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.thread234.i:                                     ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.ab
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.hz = load ptr, ptr %3, align 8, !tbaa !294
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.hu
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !36
  %i.ic = zext i16 %i.ib to i64                   ; 2 uses
  %i.id = load ptr, ptr %i.hs, align 8, !tbaa !110
  %i.ie = load ptr, ptr %i.aa, align 8, !tbaa !113 ; 3 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = sdiv exact i64 %i.ih, 2072
  %i.ij = icmp ugt i64 %i.ii, %i.ic
  br i1 %i.ij, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ik = getelementptr inbounds nuw [2072 x i8], ptr %i.ie, i64 %i.ic ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load i64, ptr %i.il, align 8, !tbaa !114
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.ae, label %_ZNK14NodeDefManager3getEt.exit.i

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit.i

_ZNK14NodeDefManager3getEt.exit.i:                ; preds = %bb.ae, %bb.ad
  %i.ip = phi ptr [ %i.io, %bb.ae ], [ %i.ik, %bb.ad ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !81
  invoke void @lua_setfield(ptr noundef %0, i32 noundef %i.aw, ptr noundef %i.ir)
          to label %bb.af unwind label %.thread234.i

bb.af:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.ab
  %.not.wide.i = icmp eq i64 %i.hu, 0
  br i1 %.not.wide.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, label %bb.aa, !llvm.loop !338

._crit_edge296.i:                                 ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSG_.exit.i"
  %.not.i.i.i47.i = icmp eq ptr %.sroa.0.1345.i, null
  br i1 %.not.i.i.i47.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn38.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit253.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit256.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.not.i.i.i48.i = icmp eq ptr %.sroa.0.1345.i, null
  br i1 %.not.i.i.i48.i, label %.body, label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

bb.ag:                                            ; preds = %.thread, %bb.k
  %i.is = phi i64 [ %i.am, %.thread ], [ %i.at, %bb.k ] ; 2 uses
  %i.it = phi ptr [ %i.aj, %.thread ], [ %i.aq, %bb.k ]
  %i.iu = phi ptr [ %i.ai, %.thread ], [ %i.ap, %bb.k ]
  %i.iv = phi ptr [ %i.ah, %.thread ], [ %i.ao, %bb.k ] ; 4 uses
  %i.iw = ashr exact i64 %i.is, 1                 ; 3 uses
  %.not251.i = icmp eq ptr %i.iu, %i.it
  br i1 %.not251.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ix = icmp ugt i64 %i.iw, 2305843009213693951
  br i1 %i.ix, label %bb.ai, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #30
          to label %.noexc189.i unwind label %bb.aw

.noexc189.i:                                      ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i: ; preds = %bb.ah
  %i.iy = shl nuw nsw i64 %i.is, 1
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #27
          to label %.noexc190.i unwind label %bb.aw ; 4 uses

.noexc190.i:                                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i
  store i32 0, ptr %i.iz, align 4, !tbaa !300
  %i.ja = add nsw i64 %i.iw, -1                   ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  br i1 %i.jb, label %.noexc52.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i183.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i183.i: ; preds = %.noexc190.i
  %i.jc = getelementptr i8, ptr %i.iz, i64 4
  %.idx.i.i.i.i.i31.i184.i = shl nuw nsw i64 %i.ja, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.jc, i8 0, i64 %.idx.i.i.i.i.i31.i184.i, i1 false), !tbaa !300
  br label %.noexc52.i

.noexc52.i:                                       ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i183.i, %.noexc190.i
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.iw
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i:           ; preds = %.noexc52.i, %bb.ag
  %.sroa.0205.2.i = phi ptr [ %i.iz, %.noexc52.i ], [ null, %bb.ag ] ; 11 uses
  %.sroa.16213.2.i = phi ptr [ %i.jd, %.noexc52.i ], [ null, %bb.ag ] ; 8 uses
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
  %i.je = sext i16 %.sroa.060.0.extract.trunc.i.i63.i to i32 ; 3 uses
  %i.jf = add nsw i32 %i.je, -15
  %i.jg = icmp slt i16 %.sroa.060.0.extract.trunc.i.i63.i, 0
  %i.jh = select i1 %i.jg, i32 %i.jf, i32 %i.je
  %i.ji = sdiv i32 %i.jh, 16                      ; 3 uses
  %i.jj = sext i16 %.sroa.361.0.extract.trunc.i.i65.i to i32 ; 3 uses
  %i.jk = add nsw i32 %i.jj, -15
  %i.jl = icmp slt i16 %.sroa.361.0.extract.trunc.i.i65.i, 0
  %i.jm = select i1 %i.jl, i32 %i.jk, i32 %i.jj
  %i.jn = sdiv i32 %i.jm, 16                      ; 4 uses
  %i.jo = ashr i48 %.sroa.03.0.copyload.i54.i, 32
  %i.jp = trunc nsw i48 %i.jo to i32              ; 3 uses
  %i.jq = add nsw i32 %i.jp, -15
  %i.jr = icmp slt i48 %.sroa.03.0.copyload.i54.i, 0
  %i.js = select i1 %i.jr, i32 %i.jq, i32 %i.jp
  %i.jt = sdiv i32 %i.js, 16                      ; 2 uses
  %.sroa.054.0.extract.trunc.i.i69.i = trunc nsw i32 %i.ji to i16
  %.sroa.455.0.extract.trunc.i.i70.i = trunc nsw i32 %i.jn to i16
  %i.ju = sext i16 %.sroa.058.0.extract.trunc.i.i66.i to i32 ; 3 uses
  %i.jv = add nsw i32 %i.ju, -15
  %i.jw = icmp slt i16 %.sroa.058.0.extract.trunc.i.i66.i, 0
  %i.jx = select i1 %i.jw, i32 %i.jv, i32 %i.ju
  %i.jy = sdiv i32 %i.jx, 16                      ; 3 uses
  %i.jz = sext i16 %.sroa.3.0.extract.trunc.i.i68.i to i32 ; 3 uses
  %i.ka = add nsw i32 %i.jz, -15
  %i.kb = icmp slt i16 %.sroa.3.0.extract.trunc.i.i68.i, 0
  %i.kc = select i1 %i.kb, i32 %i.ka, i32 %i.jz
  %i.kd = sdiv i32 %i.kc, 16                      ; 4 uses
  %i.ke = ashr i48 %.sroa.0.0.copyload.i55.i, 32
  %i.kf = trunc nsw i48 %i.ke to i32              ; 3 uses
  %i.kg = add nsw i32 %i.kf, -15
  %i.kh = icmp slt i48 %.sroa.0.0.copyload.i55.i, 0
  %i.ki = select i1 %i.kh, i32 %i.kg, i32 %i.kf
  %i.kj = sdiv i32 %i.ki, 16                      ; 2 uses
  %.mask.i.i81.i.i71.i = and i32 %i.kj, 65535
  %.sroa.3.0.insert.ext.i.i82.i.i72.i = zext nneg i32 %.mask.i.i81.i.i71.i to i48
  %.sroa.3.0.insert.shift.i.i83.i.i73.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i82.i.i72.i, 32
  %.sroa.051.0.extract.trunc.i.i74.i = trunc nsw i32 %i.jy to i16
  %.sroa.4.0.extract.trunc.i.i75.i = trunc nsw i32 %i.kd to i16
  %i.kk = ashr exact i48 %.sroa.3.0.insert.shift.i.i83.i.i73.i, 32
  %i.kl = trunc nsw i48 %i.kk to i32
  %.not166.i.i76.i = icmp sgt i32 %i.jt, %i.kl
  br i1 %.not166.i.i76.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.lr.ph.i.i77.i

.preheader137.lr.ph.i.i77.i:                      ; preds = %bb.aj
  %.not70161.i.i78.i = icmp sgt i32 %i.ji, %i.jy
  %.not71158.i.i79.i = icmp sgt i32 %i.jn, %i.kd
  %or.cond.i.i80.i = select i1 %.not70161.i.i78.i, i1 true, i1 %.not71158.i.i79.i
  br i1 %or.cond.i.i80.i, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.i.i83.i

.preheader137.i.i83.i:                            ; preds = %.preheader137.lr.ph.i.i77.i, %._crit_edge163.i.i134.i
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %._crit_edge163.i.i134.i ], [ %i.jt, %.preheader137.lr.ph.i.i77.i ] ; 4 uses
  %.0228.i = phi i32 [ %.9.i, %._crit_edge163.i.i134.i ], [ 0, %.preheader137.lr.ph.i.i77.i ] ; 2 uses
  %i.km = trunc nsw i32 %indvars.iv.i to i16
  %.mask.i = and i32 %indvars.iv.i, 65535
  %.sroa.7.0.insert.ext.i.i85.i = zext nneg i32 %.mask.i to i48
  %.sroa.7.0.insert.shift.i.i86.i = shl nuw i48 %.sroa.7.0.insert.ext.i.i85.i, 32 ; 3 uses
  %i.kn = shl i16 %i.km, 4                        ; 2 uses
  %i.ko = sext i16 %i.kn to i32                   ; 2 uses
  %i.kp = sub nsw i32 %i.jp, %i.ko
  %i.kq = call i32 @llvm.smax.i32(i32 %i.kp, i32 0)
  %i.kr = call i32 @llvm.umin.i32(i32 %i.kq, i32 15) ; 2 uses
  %i.ks = trunc nuw nsw i32 %i.kr to i16
  %i.kt = sub nsw i32 %i.kf, %i.ko
  %i.ku = call i32 @llvm.smax.i32(i32 %i.kt, i32 0) ; 2 uses
  %i.kv = call i32 @llvm.umin.i32(i32 %i.ku, i32 15)
  %.not72152.i.i87.i = icmp samesign ult i32 %i.ku, %i.kr
  %.not72152.fr.i.i88.i = freeze i1 %.not72152.i.i87.i
  br i1 %.not72152.fr.i.i88.i, label %.preheader136.us.i.i153.i, label %.preheader136.i.i89.i

.preheader136.us.i.i153.i:                        ; preds = %.preheader137.i.i83.i, %._crit_edge160.split.us.us.i.i161.i
  %.066162.us.i.i154.i = phi i16 [ %i.ky, %._crit_edge160.split.us.us.i.i161.i ], [ %.sroa.054.0.extract.trunc.i.i69.i, %.preheader137.i.i83.i ] ; 3 uses
  %.sroa.0133.0.insert.ext.us.i.i155.i = zext i16 %.066162.us.i.i154.i to i48
  %invariant.op = or disjoint i48 %.sroa.0133.0.insert.ext.us.i.i155.i, %.sroa.7.0.insert.shift.i.i86.i
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc163.i, %.preheader136.us.i.i153.i
  %.065159.us.us.i.i156.i = phi i16 [ %.sroa.455.0.extract.trunc.i.i70.i, %.preheader136.us.i.i153.i ], [ %i.kx, %.noexc163.i ] ; 3 uses
  %.sroa.5134.0.insert.ext.us.us.i.i157.i = zext i16 %.065159.us.us.i.i156.i to i48
  %.sroa.5134.0.insert.shift.us.us.i.i158.i = shl nuw nsw i48 %.sroa.5134.0.insert.ext.us.us.i.i157.i, 16
  %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i159.reass.reass.i.reass.reass.reass = or disjoint i48 %.sroa.5134.0.insert.shift.us.us.i.i158.i, %invariant.op
  %i.kw = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.us.us.reass.i.reass.reass.i159.reass.reass.i.reass.reass.reass)
          to label %.noexc163.i unwind label %.loopexit.split-lp261.loopexit.i ; 0 uses

.noexc163.i:                                      ; preds = %bb.ak
  %i.kx = add nsw i16 %.065159.us.us.i.i156.i, 1
  %exitcond187.i.i160.i = icmp eq i16 %.065159.us.us.i.i156.i, %.sroa.4.0.extract.trunc.i.i75.i
  br i1 %exitcond187.i.i160.i, label %._crit_edge160.split.us.us.i.i161.i, label %bb.ak, !llvm.loop !339

._crit_edge160.split.us.us.i.i161.i:              ; preds = %.noexc163.i
  %i.ky = add nsw i16 %.066162.us.i.i154.i, 1
  %exitcond188.i.i162.i = icmp eq i16 %.066162.us.i.i154.i, %.sroa.051.0.extract.trunc.i.i74.i
  br i1 %exitcond188.i.i162.i, label %._crit_edge163.i.i134.i, label %.preheader136.us.i.i153.i, !llvm.loop !340

.preheader136.i.i89.i:                            ; preds = %.preheader137.i.i83.i, %._crit_edge160.split.i.i131.i
  %.1.i = phi i32 [ %.8.i, %._crit_edge160.split.i.i131.i ], [ %.0228.i, %.preheader137.i.i83.i ] ; 2 uses
  %indvars.iv182.i.i90.i = phi i32 [ %indvars.iv.next183.i.i132.i, %._crit_edge160.split.i.i131.i ], [ %i.ji, %.preheader137.i.i83.i ] ; 4 uses
  %i.kz = trunc nsw i32 %indvars.iv182.i.i90.i to i16
  %.mask.i.i91.i = and i32 %indvars.iv182.i.i90.i, 65535 ; 2 uses
  %i.la = shl i16 %i.kz, 4                        ; 2 uses
  %i.lb = sext i16 %i.la to i32                   ; 2 uses
  %i.lc = sub nsw i32 %i.je, %i.lb
  %i.ld = call i32 @llvm.smax.i32(i32 %i.lc, i32 0)
  %i.le = call i32 @llvm.umin.i32(i32 %i.ld, i32 15) ; 2 uses
  %i.lf = trunc nuw nsw i32 %i.le to i16
  %i.lg = sub nsw i32 %i.ju, %i.lb
  %i.lh = call i32 @llvm.smax.i32(i32 %i.lg, i32 0) ; 2 uses
  %i.li = call i32 @llvm.umin.i32(i32 %i.lh, i32 15)
  %.not76146.i.i92.i = icmp samesign ult i32 %i.lh, %i.le
  %.not76146.i.fr.i93.i = freeze i1 %.not76146.i.i92.i
  br i1 %.not76146.i.fr.i93.i, label %.preheader135.lr.ph.i.us.i148.i, label %.preheader135.lr.ph.i.i94.i

.preheader135.lr.ph.i.us.i148.i:                  ; preds = %.preheader136.i.i89.i, %.noexc164.i
  %indvars.iv.i.us.i149.i = phi i32 [ %indvars.iv.next.i.us.i151.i, %.noexc164.i ], [ %i.jn, %.preheader136.i.i89.i ] ; 3 uses
  %i.lj = shl i32 %indvars.iv.i.us.i149.i, 16
  %i.lk = or disjoint i32 %i.lj, %.mask.i.i91.i
  %i.ll = zext i32 %i.lk to i48
  %.sroa.0133.0.insert.insert.reass.i.us.i150.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i86.i, %i.ll
  %i.lm = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.us.i150.i)
          to label %.noexc164.i unwind label %.loopexit.split-lp261.loopexit.split-lp.loopexit.i ; 0 uses

.noexc164.i:                                      ; preds = %.preheader135.lr.ph.i.us.i148.i
  %indvars.iv.next.i.us.i151.i = add nsw i32 %indvars.iv.i.us.i149.i, 1
  %exitcond.i.us.i152.i = icmp eq i32 %indvars.iv.i.us.i149.i, %i.kd
  br i1 %exitcond.i.us.i152.i, label %._crit_edge160.split.i.i131.i, label %.preheader135.lr.ph.i.us.i148.i, !llvm.loop !339

.preheader135.lr.ph.i.i94.i:                      ; preds = %.preheader136.i.i89.i, %._crit_edge154.i.i128.i
  %.2.i = phi i32 [ %.7.i, %._crit_edge154.i.i128.i ], [ %.1.i, %.preheader136.i.i89.i ] ; 2 uses
  %indvars.iv.i.i95.i = phi i32 [ %indvars.iv.next.i.i129.i, %._crit_edge154.i.i128.i ], [ %i.jn, %.preheader136.i.i89.i ] ; 4 uses
  %i.ln = shl i32 %indvars.iv.i.i95.i, 16
  %i.lo = or disjoint i32 %i.ln, %.mask.i.i91.i
  %i.lp = zext i32 %i.lo to i48
  %.sroa.0133.0.insert.insert.reass.i.i96.i = or disjoint i48 %.sroa.7.0.insert.shift.i.i86.i, %i.lp
  %i.lq = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, i48 %.sroa.0133.0.insert.insert.reass.i.i96.i)
          to label %.noexc165.i unwind label %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

.noexc165.i:                                      ; preds = %.preheader135.lr.ph.i.i94.i
  %i.lr = trunc nsw i32 %indvars.iv.i.i95.i to i16
  %i.ls = shl i16 %i.lr, 4                        ; 2 uses
  %i.lt = sext i16 %i.ls to i32                   ; 2 uses
  %i.lu = sub nsw i32 %i.jj, %i.lt
  %i.lv = call i32 @llvm.smax.i32(i32 %i.lu, i32 0)
  %i.lw = call i32 @llvm.umin.i32(i32 %i.lv, i32 15) ; 2 uses
  %i.lx = trunc nuw nsw i32 %i.lw to i16
  %i.ly = sub nsw i32 %i.jz, %i.lt
  %i.lz = call i32 @llvm.smax.i32(i32 %i.ly, i32 0) ; 2 uses
  %i.ma = call i32 @llvm.umin.i32(i32 %i.lz, i32 15)
  %.not74149.i.i97.i = icmp samesign ult i32 %i.lz, %i.lw
  %.not77.i.i98.i = icmp eq ptr %i.lq, null
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 36
  br i1 %.not74149.i.i97.i, label %._crit_edge154.i.i128.i, label %.preheader135.i.i99.i

.preheader135.i.i99.i:                            ; preds = %.noexc165.i, %._crit_edge151.split.i.i126.i
  %.3.i = phi i32 [ %.6.i, %._crit_edge151.split.i.i126.i ], [ %.2.i, %.noexc165.i ]
  %.064153.i.i100.i = phi i16 [ %i.oq, %._crit_edge151.split.i.i126.i ], [ %i.ks, %.noexc165.i ] ; 3 uses
  %i.md = add i16 %.064153.i.i100.i, %i.kn
  %.sroa.3.0.insert.ext.i99.i.i101.i = zext i16 %i.md to i48
  %.sroa.3.0.insert.shift.i100.i.i102.i = shl nuw i48 %.sroa.3.0.insert.ext.i99.i.i101.i, 32
  %i.me = sext i16 %.064153.i.i100.i to i64
  %i.mf = shl nsw i64 %i.me, 8
  br label %.preheader.i.i103.i

.preheader.i.i103.i:                              ; preds = %._crit_edge.i.i124.i, %.preheader135.i.i99.i
  %.4.i = phi i32 [ %.3.i, %.preheader135.i.i99.i ], [ %.6.i, %._crit_edge.i.i124.i ]
  %.063150.i.i104.i = phi i16 [ %i.lx, %.preheader135.i.i99.i ], [ %i.oo, %._crit_edge.i.i124.i ] ; 3 uses
  %i.mg = add i16 %.063150.i.i104.i, %i.ls
  %.sroa.2.0.insert.ext.i101.i.i105.i = zext i16 %i.mg to i48
  %.sroa.2.0.insert.shift.i102.i.i106.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i101.i.i105.i, 16
  %.sroa.2.0.insert.insert.i103.i.i107.i = or disjoint i48 %.sroa.2.0.insert.shift.i102.i.i106.i, %.sroa.3.0.insert.shift.i100.i.i102.i
  %i.mh = sext i16 %.063150.i.i104.i to i64
  %i.mi = shl nsw i64 %i.mh, 4
  %i.mj = add nsw i64 %i.mi, %i.mf
  br label %bb.al

bb.al:                                            ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i", %.preheader.i.i103.i
  %.5.i = phi i32 [ %.4.i, %.preheader.i.i103.i ], [ %.6.i, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %.0147.i.i108.i = phi i16 [ %i.lf, %.preheader.i.i103.i ], [ %i.om, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" ] ; 3 uses
  %i.mk = add i16 %.0147.i.i108.i, %i.la
  %.sroa.0.0.insert.ext.i104.i.i109.i = zext i16 %i.mk to i48
  %.sroa.0.0.insert.insert.i105.i.i110.i = or disjoint i48 %.sroa.2.0.insert.insert.i103.i.i107.i, %.sroa.0.0.insert.ext.i104.i.i109.i
  br i1 %.not77.i.i98.i, label %bb.am, label %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i

_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i:   ; preds = %bb.al
  %i.ml = load ptr, ptr %i.mb, align 8, !tbaa !303
  %i.mm = load i8, ptr %i.mc, align 4, !tbaa !332, !range !72, !noundef !73
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = sext i16 %.0147.i.i108.i to i64
  %i.mp = add nsw i64 %i.mj, %i.mo
  %i.mq = and i64 %i.mp, 4294967295
  %i.mr = select i1 %i.mn, i64 0, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mr
  %.sroa.0.0.copyload.i.i.i112.i = load i32, ptr %i.ms, align 4
  %i.mt = trunc i32 %.sroa.0.0.copyload.i.i.i112.i to i16
  br label %bb.am

bb.am:                                            ; preds = %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i, %bb.al
  %.sroa.0.0.insert.insert.i.i113.i = phi i16 [ %i.mt, %_ZN8MapBlock14getNodeNoCheckEsss.exit.i.i111.i ], [ 127, %bb.al ] ; 7 uses
  %i.mu = load ptr, ptr %3, align 8, !tbaa !290   ; 4 uses
  %i.mv = load ptr, ptr %i.iv, align 8, !tbaa !290 ; 3 uses
  %i.mw = ptrtoint ptr %i.mv to i64               ; 2 uses
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = sub i64 %i.mw, %i.mx                    ; 3 uses
  %i.mz = ashr i64 %i.my, 3                       ; 2 uses
  %i.na = icmp sgt i64 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.i.i.i.i.i138.i, label %._crit_edge.i.i.i.i.i.i114.i

.lr.ph.i.i.i.i.i.i138.i:                          ; preds = %bb.am
  %i.nb = and i64 %i.my, -8
  %scevgep.i.i.i.i.i.i139.i = getelementptr i8, ptr %i.mu, i64 %i.nb ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i.i.i138.i
  %.052.i.i.i.i.i.i140.i = phi i64 [ %i.mz, %.lr.ph.i.i.i.i.i.i138.i ], [ %i.no, %bb.ar ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i141.i = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i.i138.i ], [ %i.nn, %bb.ar ] ; 9 uses
  %i.nc = load i16, ptr %.sroa.032.051.i.i.i.i.i.i141.i, align 2, !tbaa !36
  %i.nd = icmp eq i16 %i.nc, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 2
  %i.nf = load i16, ptr %i.ne, align 2, !tbaa !36
  %i.ng = icmp eq i16 %i.nf, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.ng, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 4
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !36
  %i.nj = icmp eq i16 %i.ni, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 6
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !36
  %i.nm = icmp eq i16 %i.nl, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 8
  %i.no = add nsw i64 %.052.i.i.i.i.i.i140.i, -1
  %i.np = icmp sgt i64 %.052.i.i.i.i.i.i140.i, 1
  br i1 %i.np, label %bb.an, label %._crit_edge.loopexit.i.i.i.i.i.i142.i, !llvm.loop !292

._crit_edge.loopexit.i.i.i.i.i.i142.i:            ; preds = %bb.ar
  %.pre59.i.i.i.i.i.i143.i = ptrtoint ptr %scevgep.i.i.i.i.i.i139.i to i64
  %.pre60.i.i.i.i.i.i144.i = sub i64 %i.mw, %.pre59.i.i.i.i.i.i143.i
  br label %._crit_edge.i.i.i.i.i.i114.i

._crit_edge.i.i.i.i.i.i114.i:                     ; preds = %._crit_edge.loopexit.i.i.i.i.i.i142.i, %bb.am
  %.pre-phi61.i.i.i.i.i.i115.i = phi i64 [ %.pre60.i.i.i.i.i.i144.i, %._crit_edge.loopexit.i.i.i.i.i.i142.i ], [ %i.my, %bb.am ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i116.i = phi ptr [ %scevgep.i.i.i.i.i.i139.i, %._crit_edge.loopexit.i.i.i.i.i.i142.i ], [ %i.mu, %bb.am ] ; 5 uses
  %i.nq = ashr exact i64 %.pre-phi61.i.i.i.i.i.i115.i, 1
  switch i64 %i.nq, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i" [
    i64 3, label %bb.as
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i136.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i117.i
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i.i114.i
  %i.nr = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, align 2, !tbaa !36
  %i.ns = icmp eq i16 %i.nr, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.ns, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i136.i

._crit_edge._crit_edge.i.i.i.i.i.i136.i:          ; preds = %bb.at, %._crit_edge.i.i.i.i.i.i114.i
  %.sroa.032.1.i.i.i.i.i.i137.i = phi ptr [ %i.nt, %bb.at ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, %._crit_edge.i.i.i.i.i.i114.i ] ; 3 uses
  %i.nu = load i16, ptr %.sroa.032.1.i.i.i.i.i.i137.i, align 2, !tbaa !36
  %i.nv = icmp eq i16 %i.nu, %.sroa.0.0.insert.insert.i.i113.i
  br i1 %i.nv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, label %bb.au

bb.au:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i136.i
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i137.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i117.i

._crit_edge._crit_edge57.i.i.i.i.i.i117.i:        ; preds = %bb.au, %._crit_edge.i.i.i.i.i.i114.i
  %.sroa.032.2.i.i.i.i.i.i118.i = phi ptr [ %i.nw, %bb.au ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, %._crit_edge.i.i.i.i.i.i114.i ] ; 2 uses
  %i.nx = load i16, ptr %.sroa.032.2.i.i.i.i.i.i118.i, align 2, !tbaa !36
  %i.ny = icmp eq i16 %i.nx, %.sroa.0.0.insert.insert.i.i113.i
  %spec.select.i.i.i.i.i.i119.i = select i1 %i.ny, ptr %.sroa.032.2.i.i.i.i.i.i118.i, ptr %i.mv
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit: ; preds = %bb.ao
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106: ; preds = %bb.ap
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108: ; preds = %bb.aq
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i141.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i: ; preds = %bb.an, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108, %._crit_edge._crit_edge57.i.i.i.i.i.i117.i, %._crit_edge._crit_edge.i.i.i.i.i.i136.i, %bb.as
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i121.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i137.i, %._crit_edge._crit_edge.i.i.i.i.i.i136.i ], [ %spec.select.i.i.i.i.i.i119.i, %._crit_edge._crit_edge57.i.i.i.i.i.i117.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i116.i, %bb.as ], [ %i.ob, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit108 ], [ %i.oa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit106 ], [ %i.nz, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i141.i, %bb.an ] ; 2 uses
  %.not.i.i.i122.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i121.i, %i.mv
  br i1 %.not.i.i.i122.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i", label %bb.av

bb.av:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i105.i.i110.i)
          to label %.noexc166.i unwind label %.loopexit260.i

.noexc166.i:                                      ; preds = %bb.av
  %i.oc = add i32 %.5.i, 1                        ; 2 uses
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.oc)
          to label %.noexc167.i unwind label %.loopexit260.i

.noexc167.i:                                      ; preds = %.noexc166.i
  %i.od = load ptr, ptr %3, align 8, !tbaa !290
  %i.oe = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i121.i to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = lshr exact i64 %i.og, 1
  %i.oi = and i64 %i.oh, 4294967295
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0205.2.i, i64 %i.oi ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !300
  %i.ol = add i32 %i.ok, 1
  store i32 %i.ol, ptr %i.oj, align 4, !tbaa !300
  br label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i"

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i": ; preds = %.noexc167.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i, %._crit_edge.i.i.i.i.i.i114.i
  %.6.i = phi i32 [ %.5.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i120.i ], [ %i.oc, %.noexc167.i ], [ %.5.i, %._crit_edge.i.i.i.i.i.i114.i ] ; 4 uses
  %i.om = add i16 %.0147.i.i108.i, 1              ; 2 uses
  %i.on = sext i16 %i.om to i32
  %.not76.i.i123.i = icmp slt i32 %i.li, %i.on
  br i1 %.not76.i.i123.i, label %._crit_edge.i.i124.i, label %bb.al, !llvm.loop !341

._crit_edge.i.i124.i:                             ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i.i"
  %i.oo = add i16 %.063150.i.i104.i, 1            ; 2 uses
  %i.op = sext i16 %i.oo to i32
  %.not74.i.i125.i = icmp slt i32 %i.ma, %i.op
  br i1 %.not74.i.i125.i, label %._crit_edge151.split.i.i126.i, label %.preheader.i.i103.i, !llvm.loop !342

._crit_edge151.split.i.i126.i:                    ; preds = %._crit_edge.i.i124.i
  %i.oq = add i16 %.064153.i.i100.i, 1            ; 2 uses
  %i.or = sext i16 %i.oq to i32
  %.not72.i.i127.i = icmp slt i32 %i.kv, %i.or
  br i1 %.not72.i.i127.i, label %._crit_edge154.i.i128.i, label %.preheader135.i.i99.i, !llvm.loop !343

._crit_edge154.i.i128.i:                          ; preds = %._crit_edge151.split.i.i126.i, %.noexc165.i
  %.7.i = phi i32 [ %.2.i, %.noexc165.i ], [ %.6.i, %._crit_edge151.split.i.i126.i ] ; 2 uses
  %indvars.iv.next.i.i129.i = add nsw i32 %indvars.iv.i.i95.i, 1
  %exitcond.i.i130.i = icmp eq i32 %indvars.iv.i.i95.i, %i.kd
  br i1 %exitcond.i.i130.i, label %._crit_edge160.split.i.i131.i, label %.preheader135.lr.ph.i.i94.i, !llvm.loop !339

._crit_edge160.split.i.i131.i:                    ; preds = %._crit_edge154.i.i128.i, %.noexc164.i
  %.8.i = phi i32 [ %.1.i, %.noexc164.i ], [ %.7.i, %._crit_edge154.i.i128.i ] ; 2 uses
  %indvars.iv.next183.i.i132.i = add nsw i32 %indvars.iv182.i.i90.i, 1
  %exitcond186.i.i133.i = icmp eq i32 %indvars.iv182.i.i90.i, %i.jy
  br i1 %exitcond186.i.i133.i, label %._crit_edge163.i.i134.i, label %.preheader136.i.i89.i, !llvm.loop !340

._crit_edge163.i.i134.i:                          ; preds = %._crit_edge160.split.i.i131.i, %._crit_edge160.split.us.us.i.i161.i
  %.9.i = phi i32 [ %.0228.i, %._crit_edge160.split.us.us.i.i161.i ], [ %.8.i, %._crit_edge160.split.i.i131.i ]
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, 1
  %exitcond.not = icmp eq i32 %indvars.iv.i, %i.kj
  br i1 %exitcond.not, label %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i", label %.preheader137.i.i83.i, !llvm.loop !344

"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i": ; preds = %._crit_edge163.i.i134.i, %.preheader137.lr.ph.i.i77.i, %bb.aj
  %i.os = load ptr, ptr %i.iv, align 8, !tbaa !299
  %i.ot = load ptr, ptr %3, align 8, !tbaa !294
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = sub i64 %i.ou, %i.ov
  %i.ox = lshr exact i64 %i.ow, 1
  %i.oy = trunc i64 %i.ox to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.oy)
          to label %.preheader.i unwind label %bb.ax

.preheader.i:                                     ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i"
  %i.oz = load ptr, ptr %i.iv, align 8, !tbaa !299
  %i.pa = load ptr, ptr %3, align 8, !tbaa !294   ; 2 uses
  %.not297.i = icmp eq ptr %i.oz, %i.pa
  br i1 %.not297.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %bb.ay

._crit_edge.i:                                    ; preds = %.preheader.i
  %.not.i.i.i168.i = icmp eq ptr %.sroa.0205.2.i, null
  br i1 %.not.i.i.i168.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.bc, %._crit_edge.i
  %i.pc = ptrtoint ptr %.sroa.16213.2.i to i64
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

bb.aw:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i, %bb.ai
  %.sroa.0205.0.i = phi ptr [ %.sroa.0205.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i ], [ null, %bb.ai ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i ]
  %.sroa.16213.0.i = phi ptr [ %.sroa.16213.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit53.i ], [ null, %bb.ai ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i181.i ]
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp261.i

.loopexit260.i:                                   ; preds = %.noexc166.i, %bb.av
  %lpad.loopexit262.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp261.i

.loopexit.split-lp261.loopexit.i:                 ; preds = %bb.ak
  %lpad.loopexit265.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp261.i

.loopexit.split-lp261.loopexit.split-lp.loopexit.i: ; preds = %.preheader135.lr.ph.i.us.i148.i
  %lpad.loopexit268.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp261.i

.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.preheader135.lr.ph.i.i94.i
  %lpad.loopexit.split-lp269.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp261.i

bb.ax:                                            ; preds = %"_ZZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSG_.exit.i"
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp261.i

bb.ay:                                            ; preds = %bb.bc, %.lr.ph.i
  %i.pf = phi i64 [ 0, %.lr.ph.i ], [ %i.qd, %bb.bc ] ; 2 uses
  %.0281.i = phi i32 [ 0, %.lr.ph.i ], [ %i.qc, %bb.bc ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0205.2.i, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !300
  %i.pi = zext i32 %i.ph to i64
  invoke void @lua_pushinteger(ptr noundef %0, i64 noundef %i.pi)
          to label %bb.az unwind label %.thread242.i

bb.az:                                            ; preds = %bb.ay
  %i.pj = load ptr, ptr %3, align 8, !tbaa !294
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.pj, i64 %i.pf
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !36
  %i.pm = zext i16 %i.pl to i64                   ; 2 uses
  %i.pn = load ptr, ptr %i.pb, align 8, !tbaa !110
  %i.po = load ptr, ptr %i.aa, align 8, !tbaa !113 ; 3 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = sdiv exact i64 %i.pr, 2072
  %i.pt = icmp ugt i64 %i.ps, %i.pm
  br i1 %i.pt, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pu = getelementptr inbounds nuw [2072 x i8], ptr %i.po, i64 %i.pm ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !114
  %i.px = icmp eq i64 %i.pw, 0
  br i1 %i.px, label %bb.bb, label %_ZNK14NodeDefManager3getEt.exit170.i

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit170.i

_ZNK14NodeDefManager3getEt.exit170.i:             ; preds = %bb.bb, %bb.ba
  %i.pz = phi ptr [ %i.py, %bb.bb ], [ %i.pu, %bb.ba ]
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !81
  invoke void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef %i.qb)
          to label %bb.bc unwind label %.thread242.i

bb.bc:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit170.i
  %i.qc = add i32 %.0281.i, 1                     ; 2 uses
  %i.qd = zext i32 %i.qc to i64                   ; 2 uses
  %i.qe = load ptr, ptr %i.iv, align 8, !tbaa !299
  %i.qf = load ptr, ptr %3, align 8, !tbaa !294
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = ashr exact i64 %i.qi, 1
  %i.qk = icmp ugt i64 %i.qj, %i.qd
  br i1 %i.qk, label %bb.ay, label %._crit_edge.thread.i, !llvm.loop !345

.thread242.i:                                     ; preds = %_ZNK14NodeDefManager3getEt.exit170.i, %bb.ay
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp261.i:                          ; preds = %bb.ax, %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp261.loopexit.split-lp.loopexit.i, %.loopexit.split-lp261.loopexit.i, %.loopexit260.i, %bb.aw
  %.sroa.0205.1.i = phi ptr [ %.sroa.0205.0.i, %bb.aw ], [ %.sroa.0205.2.i, %bb.ax ], [ %.sroa.0205.2.i, %.loopexit.split-lp261.loopexit.i ], [ %.sroa.0205.2.i, %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.0205.2.i, %.loopexit.split-lp261.loopexit.split-lp.loopexit.i ], [ %.sroa.0205.2.i, %.loopexit260.i ] ; 2 uses
  %.sroa.16213.1.i = phi ptr [ %.sroa.16213.0.i, %bb.aw ], [ %.sroa.16213.2.i, %bb.ax ], [ %.sroa.16213.2.i, %.loopexit.split-lp261.loopexit.i ], [ %.sroa.16213.2.i, %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.16213.2.i, %.loopexit.split-lp261.loopexit.split-lp.loopexit.i ], [ %.sroa.16213.2.i, %.loopexit260.i ]
  %.pn.pn.i = phi { ptr, i32 } [ %i.pd, %bb.aw ], [ %i.pe, %bb.ax ], [ %lpad.loopexit265.i, %.loopexit.split-lp261.loopexit.i ], [ %lpad.loopexit.split-lp269.i, %.loopexit.split-lp261.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit268.i, %.loopexit.split-lp261.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit262.i, %.loopexit260.i ] ; 2 uses
  %.not.i.i.i171.i = icmp eq ptr %.sroa.0205.1.i, null
  br i1 %.not.i.i.i171.i, label %.body, label %bb.bd

bb.bd:                                            ; preds = %.loopexit.split-lp261.i, %.thread242.i
  %.pn.pn249.i = phi { ptr, i32 } [ %i.ql, %.thread242.i ], [ %.pn.pn.i, %.loopexit.split-lp261.i ]
  %.sroa.16213.1248.i = phi ptr [ %.sroa.16213.2.i, %.thread242.i ], [ %.sroa.16213.1.i, %.loopexit.split-lp261.i ]
  %.sroa.0205.1247.i = phi ptr [ %.sroa.0205.2.i, %.thread242.i ], [ %.sroa.0205.1.i, %.loopexit.split-lp261.i ]
  %i.qm = ptrtoint ptr %.sroa.16213.1248.i to i64
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i

_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i:       ; preds = %bb.af, %._crit_edge.thread.i, %._crit_edge296.i
  %.sroa.0205.2.sink381.i = phi ptr [ %.sroa.0205.2.i, %._crit_edge.thread.i ], [ %.sroa.0.1345.i, %._crit_edge296.i ], [ %.sroa.0.1345.i, %bb.af ] ; 2 uses
  %.sink379.i = phi i64 [ %i.pc, %._crit_edge.thread.i ], [ %.sroa.16.1350.i, %._crit_edge296.i ], [ %.sroa.16.1350.i, %bb.af ]
  %.034.ph.i = phi i32 [ 2, %._crit_edge.thread.i ], [ 1, %._crit_edge296.i ], [ 1, %bb.af ]
  %i.qn = ptrtoint ptr %.sroa.0205.2.sink381.i to i64
  %i.qo = sub i64 %.sink379.i, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.2.sink381.i, i64 noundef %i.qo) #28
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !294
  br label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"

_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i:     ; preds = %bb.bd, %.loopexit.split-lp.i, %.thread234.i, %.loopexit.split-lp.thread.i
  %.sroa.0205.1247.sink384.i = phi ptr [ %.sroa.0205.1247.i, %bb.bd ], [ %.sroa.0.1345.i, %.thread234.i ], [ %.sroa.0.1345.i, %.loopexit.split-lp.i ], [ %i.bf, %.loopexit.split-lp.thread.i ] ; 2 uses
  %.sink382.i = phi i64 [ %i.qm, %bb.bd ], [ %.sroa.16.1350.i, %.thread234.i ], [ %.sroa.16.1350.i, %.loopexit.split-lp.i ], [ %i.bk, %.loopexit.split-lp.thread.i ]
  %.pn38.pn.ph.i = phi { ptr, i32 } [ %.pn.pn249.i, %bb.bd ], [ %i.hy, %.thread234.i ], [ %.pn38.i, %.loopexit.split-lp.i ], [ %i.hk, %.loopexit.split-lp.thread.i ]
  %i.qp = ptrtoint ptr %.sroa.0205.1247.sink384.i to i64
  %i.qq = sub i64 %.sink382.i, %i.qp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.1247.sink384.i, i64 noundef %i.qq) #28
  br label %.body

"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit": ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, %._crit_edge296.i, %._crit_edge.i
  %i.qr = phi ptr [ %i.pa, %._crit_edge.i ], [ %.pr.pre, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ %.pr68, %._crit_edge296.i ] ; 3 uses
  %.034.i = phi i32 [ 2, %._crit_edge.i ], [ %.034.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ 1, %._crit_edge296.i ]
  %.not.i.i.i = icmp eq ptr %i.qr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !296
  %i.qu = ptrtoint ptr %i.qt to i64
  %i.qv = ptrtoint ptr %i.qr to i64
  %i.qw = sub i64 %i.qu, %i.qv
  call void @_ZdlPvm(ptr noundef nonnull %i.qr, i64 noundef %i.qw) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN9ModApiEnv20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bj

bb.bf:                                            ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.j, %bb.h
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %.noexc173.i, %.noexc, %bb.l
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bh, %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i, %.loopexit.split-lp261.i, %.loopexit.split-lp.i, %bb.bg, %bb.bf
  %.pn.pn = phi { ptr, i32 } [ %i.qx, %bb.bf ], [ %i.qy, %bb.bg ], [ %i.qz, %bb.bh ], [ %.pn38.i, %.loopexit.split-lp.i ], [ %.pn.pn.i, %.loopexit.split-lp261.i ], [ %.pn38.pn.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit49.sink.split.i ]
  %i.ra = load ptr, ptr %3, align 8, !tbaa !294   ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.ra, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorItSaItEED2Ev.exit26, label %bb.bi

bb.bi:                                            ; preds = %.body
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !296
  %i.rd = ptrtoint ptr %i.rc to i64
end_hunk_0
