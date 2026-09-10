Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_env?download=true
inline.NumInlined: 1766
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_State:bb.a
  store i48 %i.k, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 4 uses
  store i48 %i.l, ptr %2, align 8
  %i.m = trunc i48 %i.k to i16                    ; 2 uses
  %i.n = trunc i48 %i.l to i16                    ; 2 uses
  %i.o = icmp sgt i16 %i.m, %i.n
  %i.p = lshr i48 %i.k, 16
  %i.q = trunc i48 %i.p to i16                    ; 2 uses
  %i.r = lshr i48 %i.l, 16
  %i.s = trunc i48 %i.r to i16                    ; 2 uses
  %i.t = lshr i48 %i.k, 32
  %i.u = trunc nuw i48 %i.t to i16                ; 2 uses
  %i.v = lshr i48 %i.l, 32
  %i.w = trunc nuw i48 %i.v to i16                ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 %i.n, ptr %1, align 8, !tbaa !42
  store i16 %i.m, ptr %2, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 3 uses
  %i.z = icmp sgt i16 %i.q, %i.s
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 %i.s, ptr %i.x, align 2, !tbaa !42
  store i16 %i.q, ptr %i.y, align 2, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ac = icmp sgt i16 %i.u, %i.w
  br i1 %i.ac, label %bb.g, label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

bb.g:                                             ; preds = %bb.f
  store i16 %i.w, ptr %i.aa, align 4, !tbaa !42
  store i16 %i.u, ptr %i.ab, align 4, !tbaa !42
  br label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit: ; preds = %bb.f, %bb.g
  call void @_ZN13ModApiEnvBase9checkAreaERN4core8vector3dIsEES3_(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 2 dereferenceable(6) %2)
  %.sroa.032.0.copyload = load i16, ptr %1, align 8, !tbaa !42 ; 2 uses
  %.sroa.5.0.copyload = load i16, ptr %i.x, align 2, !tbaa !42 ; 2 uses
  %.sroa.7.0.copyload = load i16, ptr %i.aa, align 4, !tbaa !42 ; 2 uses
  %.sroa.9.6.copyload = load i16, ptr %2, align 8, !tbaa !42 ; 2 uses
  %.sroa.12.6.copyload = load i16, ptr %i.y, align 2, !tbaa !42 ; 2 uses
  %.sroa.14.6.copyload = load i16, ptr %i.ab, align 4, !tbaa !42 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !492, !noalias !493 ; 2 uses
  %i.ag = icmp slt i16 %i.af, %.sroa.032.0.copyload
  br i1 %i.ag, label %_ZNK9VoxelArea9intersectERKS_.exit, label %bb.h

bb.h:                                             ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.ah = load i16, ptr %i.ad, align 4, !tbaa !318, !noalias !493 ; 2 uses
  %i.ai = icmp sgt i16 %i.ah, %.sroa.9.6.copyload
  br i1 %i.ai, label %_ZNK9VoxelArea9intersectERKS_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !494, !noalias !493 ; 2 uses
  %i.al = icmp slt i16 %i.ak, %.sroa.5.0.copyload
  br i1 %i.al, label %_ZNK9VoxelArea9intersectERKS_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.an = load i16, ptr %i.am, align 2, !tbaa !495, !noalias !493 ; 2 uses
  %i.ao = icmp sgt i16 %i.an, %.sroa.12.6.copyload
  br i1 %i.ao, label %_ZNK9VoxelArea9intersectERKS_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !496, !noalias !493 ; 2 uses
  %i.ar = icmp slt i16 %i.aq, %.sroa.7.0.copyload
  br i1 %i.ar, label %_ZNK9VoxelArea9intersectERKS_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.at = load i16, ptr %i.as, align 4, !tbaa !319, !noalias !493 ; 2 uses
  %i.au = icmp sgt i16 %i.at, %.sroa.14.6.copyload
  br i1 %i.au, label %_ZNK9VoxelArea9intersectERKS_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = tail call i16 @llvm.smax.i16(i16 %i.ah, i16 %.sroa.032.0.copyload)
  %i.aw = tail call i16 @llvm.smin.i16(i16 %.sroa.9.6.copyload, i16 %i.af)
  %i.ax = tail call i16 @llvm.smax.i16(i16 %i.an, i16 %.sroa.5.0.copyload)
  %i.ay = tail call i16 @llvm.smin.i16(i16 %.sroa.12.6.copyload, i16 %i.ak)
  %i.az = tail call i16 @llvm.smax.i16(i16 %i.at, i16 %.sroa.7.0.copyload)
  %i.ba = tail call i16 @llvm.smin.i16(i16 %.sroa.14.6.copyload, i16 %i.aq)
  br label %_ZNK9VoxelArea9intersectERKS_.exit

_ZNK9VoxelArea9intersectERKS_.exit:               ; preds = %bb.k, %bb.l, %bb.i, %bb.j, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit, %bb.h, %bb.m
  %i.bb = phi i16 [ %i.aw, %bb.m ], [ 0, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bc = phi i16 [ %i.ay, %bb.m ], [ 0, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bd = phi i16 [ %i.ba, %bb.m ], [ 0, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.11.0 = phi i16 [ %i.az, %bb.m ], [ 1, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.k ] ; 5 uses
  %.sroa.740.0 = phi i16 [ %i.ax, %bb.m ], [ 1, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.k ] ; 5 uses
  %.sroa.039.0 = phi i16 [ %i.av, %bb.m ], [ 1, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.k ] ; 7 uses
  store i16 %.sroa.039.0, ptr %1, align 8, !tbaa !42
  store i16 %.sroa.740.0, ptr %i.x, align 2, !tbaa !42
  store i16 %.sroa.11.0, ptr %i.aa, align 4, !tbaa !42
  store i16 %i.bb, ptr %2, align 8, !tbaa !42
  store i16 %i.bc, ptr %i.y, align 2, !tbaa !42
  store i16 %i.bd, ptr %i.ab, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN13ModApiEnvBase14collectNodeIdsEP9lua_StateiPK14NodeDefManagerRSt6vectorItSaItEE(ptr noundef %0, i32 noundef 3, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.n unwind label %bb.bh

bb.n:                                             ; preds = %_ZNK9VoxelArea9intersectERKS_.exit
  %i.be = invoke i32 @lua_type(ptr noundef %0, i32 noundef 4)
          to label %bb.o unwind label %bb.bi

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !253 ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !251   ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  br label %bb.al

bb.p:                                             ; preds = %bb.o
  %i.bm = invoke noundef zeroext i1 @_ZN9LuaHelper9readParamIbEET_P9lua_Statei(ptr noundef %0, i32 noundef 4)
          to label %bb.q unwind label %bb.bi

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !253 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !251   ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  br i1 %i.bm, label %bb.r, label %bb.al

bb.r:                                             ; preds = %bb.q
  %i.bt = lshr exact i64 %i.bs, 1
  %i.bu = trunc i64 %i.bt to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.bu)
          to label %.noexc unwind label %bb.bj

.noexc:                                           ; preds = %bb.r
  %i.bv = invoke i32 @lua_gettop(ptr noundef %0)
          to label %.noexc18 unwind label %bb.bj  ; 2 uses

.noexc18:                                         ; preds = %.noexc
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !253 ; 4 uses
  %i.bx = load ptr, ptr %3, align 8, !tbaa !251   ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = ashr exact i64 %i.ca, 1                 ; 3 uses
  %.not187.i = icmp eq ptr %i.bw, %i.bx
  br i1 %.not187.i, label %._crit_edge214.i, label %bb.s

bb.s:                                             ; preds = %.noexc18
  %i.cc = icmp ugt i64 %i.cb, 2305843009213693951
  br i1 %i.cc, label %.noexc105.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

.noexc105.i:                                      ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #30
          to label %.noexc19 unwind label %bb.bj

.noexc19:                                         ; preds = %.noexc105.i
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.cd = shl nuw nsw i64 %i.ca, 1
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #27
          to label %.noexc20 unwind label %bb.bj  ; 6 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  store i32 0, ptr %i.ce, align 4, !tbaa !254
  %i.cf = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc20
  %i.ch = getelementptr i8, ptr %i.ce, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.cf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !254
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc20
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cb ; 3 uses
  %.pre.i = load ptr, ptr %i.bn, align 8, !tbaa !253 ; 3 uses
  %.pre244.i = load ptr, ptr %3, align 8, !tbaa !251 ; 2 uses
  %i.cj = icmp eq ptr %.pre.i, %.pre244.i
  br i1 %i.cj, label %._crit_edge214.i, label %.lr.ph213.i

._crit_edge214.i:                                 ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %.noexc18
  %.pre246.i101 = phi ptr [ %i.bx, %.noexc18 ], [ %.pre244.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.fn, %bb.ad ] ; 3 uses
  %.sroa.16.2283.i = phi ptr [ null, %.noexc18 ], [ %i.ci, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.ci, %bb.ad ] ; 5 uses
  %.sroa.0.2282.i = phi ptr [ null, %.noexc18 ], [ %i.ce, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.ce, %bb.ad ] ; 9 uses
  %i.ck = phi ptr [ %i.bw, %.noexc18 ], [ %.pre.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.fn, %bb.ad ]
  %i.cl = phi ptr [ %i.bw, %.noexc18 ], [ %.pre.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ], [ %i.fm, %bb.ad ] ; 2 uses
  %.not47.i.i = icmp sgt i16 %.sroa.11.0, %i.bd
  %i.cm = icmp sgt i16 %.sroa.740.0, %i.bc
  %or.cond = select i1 %.not47.i.i, i1 true, i1 %i.cm
  br i1 %or.cond, label %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.i", label %.lr.ph50.split.i.preheader.i.split

.lr.ph50.split.i.preheader.i.split:               ; preds = %._crit_edge214.i
  %i.cn = add i32 %i.bv, 1
  %i.co = sext i16 %.sroa.039.0 to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cu = icmp sgt i16 %.sroa.039.0, %i.bb
  br i1 %i.cu, label %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.i", label %.lr.ph50.split.i.i

.lr.ph50.split.i.i:                               ; preds = %.lr.ph50.split.i.preheader.i.split, %._crit_edge46.i.i.loopexit
  %.048.i.i = phi i16 [ %i.fj, %._crit_edge46.i.i.loopexit ], [ %.sroa.11.0, %.lr.ph50.split.i.preheader.i.split ] ; 3 uses
  %i.cv = sext i16 %.048.i.i to i32
  %.sroa.5.0.insert.ext.i.i = zext i16 %.048.i.i to i48
  %.sroa.5.0.insert.shift.i.i = shl nuw i48 %.sroa.5.0.insert.ext.i.i, 32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph50.split.i.i
  %.02443.i.i = phi i16 [ %i.fi, %._crit_edge.i.i ], [ %.sroa.740.0, %.lr.ph50.split.i.i ] ; 3 uses
  %i.cw = load i16, ptr %i.ad, align 4, !tbaa !318
  %i.cx = sext i16 %i.cw to i32
  %i.cy = sub nsw i32 %i.co, %i.cx
  %i.cz = load i16, ptr %i.cp, align 4, !tbaa !319
  %i.da = sext i16 %i.cz to i32
  %i.db = sub nsw i32 %i.cv, %i.da
  %i.dc = load i32, ptr %i.cq, align 4, !tbaa !322
  %i.dd = mul nsw i32 %i.db, %i.dc
  %i.de = sext i16 %.02443.i.i to i32
  %i.df = add i32 %i.dd, %i.de
  %i.dg = load i16, ptr %i.cr, align 2, !tbaa !495
  %i.dh = sext i16 %i.dg to i32
  %i.di = sub i32 %i.df, %i.dh
  %i.dj = load i32, ptr %i.cs, align 4, !tbaa !323
  %i.dk = mul i32 %i.di, %i.dj
  %i.dl = add nsw i32 %i.cy, %i.dk
  %.sroa.4.0.insert.ext.i.i = zext i16 %.02443.i.i to i48
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.4.0.insert.ext.i.i, 16
  %.sroa.4.0.insert.insert.i.i = or disjoint i48 %.sroa.4.0.insert.shift.i.i, %.sroa.5.0.insert.shift.i.i
  br label %bb.t

bb.t:                                             ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i", %.lr.ph.i.i
  %.02541.i.i = phi i16 [ %.sroa.039.0, %.lr.ph.i.i ], [ %i.fh, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i" ] ; 2 uses
  %.02640.i.i = phi i32 [ %i.dl, %.lr.ph.i.i ], [ %i.fg, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i" ] ; 2 uses
  %i.dm = load ptr, ptr %i.ct, align 8, !tbaa !324
  %i.dn = zext i32 %.02640.i.i to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn
  %.sroa.05.0.copyload.i.i = load i32, ptr %i.do, align 4
  %.sroa.0.0.insert.ext.i.i = zext i16 %.02541.i.i to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.4.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.012.0.extract.trunc.i.i.i = trunc i32 %.sroa.05.0.copyload.i.i to i16 ; 7 uses
  %i.dp = load ptr, ptr %3, align 8, !tbaa !249   ; 4 uses
  %i.dq = load ptr, ptr %i.bn, align 8, !tbaa !249 ; 3 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 3 uses
  %i.du = ashr i64 %i.dt, 3                       ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t
  %i.dw = and i64 %i.dt, -8
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.dp, i64 %i.dw ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i
  %.052.i.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i ], [ %i.ej, %bb.y ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %i.ei, %bb.y ] ; 9 uses
  %i.dx = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !42
  %i.dy = icmp eq i16 %i.dx, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.dy, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !42
  %i.eb = icmp eq i16 %i.ea, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.eb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !42
  %i.ee = icmp eq i16 %i.ed, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.ee, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit159, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !42
  %i.eh = icmp eq i16 %i.eg, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.eh, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit161, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.ej = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.ek = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.ek, label %bb.u, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.y
  %.pre59.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i.i = sub i64 %i.dr, %.pre59.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.t
  %.pre-phi61.i.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.dt, %bb.t ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.dp, %bb.t ] ; 5 uses
  %i.el = ashr exact i64 %.pre-phi61.i.i.i.i.i.i, 1
  switch i64 %i.el, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i" [
    i64 3, label %bb.z
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i.i
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.em = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !42
  %i.en = icmp eq i16 %i.em, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.en, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.aa, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.eo, %bb.aa ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ep = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !42
  %i.eq = icmp eq i16 %i.ep, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.eq, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i.i:             ; preds = %bb.ab, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.er, %bb.ab ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.es = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !42
  %i.et = icmp eq i16 %i.es, %.sroa.012.0.extract.trunc.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.et, ptr %.sroa.032.2.i.i.i.i.i.i, ptr %i.dq
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit159: ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit161: ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i: ; preds = %bb.u, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit159, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit161, %._crit_edge._crit_edge57.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.z
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.z ], [ %i.ew, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit161 ], [ %i.eu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.ev, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i.loopexit.split.loop.exit159 ], [ %.sroa.032.051.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %.not.i.i41.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %i.dq
  br i1 %.not.i.i41.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i", label %bb.ac

bb.ac:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i.i)
          to label %.noexc42.i unwind label %bb.ak

.noexc42.i:                                       ; preds = %bb.ac
  %i.ex = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i to i64
  %i.ey = sub i64 %i.ex, %i.ds
  %i.ez = ashr exact i64 %i.ey, 1                 ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = add i32 %i.cn, %i.fa
  %i.fc = and i64 %i.ez, 4294967295
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.2282.i, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !254
  %i.ff = add i32 %i.fe, 1                        ; 2 uses
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !254
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef %i.fb, i32 noundef %i.ff)
          to label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i" unwind label %.thread295.i

.thread295.i:                                     ; preds = %.noexc42.i
  %lpad.loopexit296.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i": ; preds = %.noexc42.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i.i, %._crit_edge.i.i.i.i.i.i
  %i.fg = add i32 %.02640.i.i, 1
  %i.fh = add i16 %.02541.i.i, 1                  ; 2 uses
  %.not29.i.i = icmp sgt i16 %i.fh, %i.bb
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %bb.t, !llvm.loop !483

._crit_edge.i.i:                                  ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE_clESI_SJ_.exit.i.i"
  %i.fi = add i16 %.02443.i.i, 1                  ; 2 uses
  %.not28.i.i = icmp sgt i16 %i.fi, %i.bc
  br i1 %.not28.i.i, label %._crit_edge46.i.i.loopexit, label %.lr.ph.i.i, !llvm.loop !484

._crit_edge46.i.i.loopexit:                       ; preds = %._crit_edge.i.i
  %i.fj = add i16 %.048.i.i, 1                    ; 2 uses
  %.not.i.i = icmp sgt i16 %i.fj, %i.bd
  br i1 %.not.i.i, label %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.loopexit.i.loopexit83", label %.lr.ph50.split.i.i, !llvm.loop !485

.lr.ph213.i:                                      ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %bb.ad
  %.028212.i = phi i32 [ %i.fk, %bb.ad ], [ 0, %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i ]
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %bb.ad unwind label %.thread290.i

bb.ad:                                            ; preds = %.lr.ph213.i
  %i.fk = add i32 %.028212.i, 1                   ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = load ptr, ptr %i.bn, align 8, !tbaa !253 ; 2 uses
  %i.fn = load ptr, ptr %3, align 8, !tbaa !251   ; 3 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 1
  %i.fs = icmp ugt i64 %i.fr, %i.fl
  br i1 %i.fs, label %.lr.ph213.i, label %._crit_edge214.i, !llvm.loop !486

.thread290.i:                                     ; preds = %.lr.ph213.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i

"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.loopexit.i.loopexit83": ; preds = %._crit_edge46.i.i.loopexit
  %.pre245.i.pre.a = load ptr, ptr %i.bn, align 8, !tbaa !253
  %.pre246.i.pre = load ptr, ptr %3, align 8, !tbaa !251 ; 2 uses
  br label %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.i"

"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.i": ; preds = %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.loopexit.i.loopexit83", %.lr.ph50.split.i.preheader.i.split, %._crit_edge214.i
  %.pr103 = phi ptr [ %.pre246.i101, %._crit_edge214.i ], [ %.pre246.i.pre, %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.loopexit.i.loopexit83" ], [ %.pre246.i101, %.lr.ph50.split.i.preheader.i.split ]
  %4 = phi ptr [ %i.ck, %._crit_edge214.i ], [ %.pre246.i.pre, %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.loopexit.i.loopexit83" ], [ %.pre246.i101, %.lr.ph50.split.i.preheader.i.split ]
  %5 = phi ptr [ %i.cl, %._crit_edge214.i ], [ %.pre245.i.pre.a, %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.loopexit.i.loopexit83" ], [ %i.cl, %.lr.ph50.split.i.preheader.i.split ]
  %i.fu = ptrtoint ptr %5 to i64
  %i.fv = ptrtoint ptr %4 to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = and i64 %i.fw, 8589934590
  %.not223.i = icmp eq i64 %i.fx, 0
  br i1 %.not223.i, label %._crit_edge225.i, label %.lr.ph224.i

.lr.ph224.i:                                      ; preds = %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.i"
  %i.fy = lshr exact i64 %i.fw, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ga = and i64 %i.fy, 4294967295
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aj, %.lr.ph224.i
  %indvars.iv.i = phi i64 [ %i.ga, %.lr.ph224.i ], [ %i.gb, %bb.aj ]
  %i.gb = add nsw i64 %indvars.iv.i, -1           ; 4 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.2282.i, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !254
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.aj unwind label %.thread.i

.thread.i:                                        ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.af
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i

bb.ag:                                            ; preds = %bb.ae
  %i.gg = load ptr, ptr %3, align 8, !tbaa !251
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.gb
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !42
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = load ptr, ptr %i.fz, align 8, !tbaa !108
  %i.gl = load ptr, ptr %i.j, align 8, !tbaa !109 ; 3 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 2072
  %i.gq = icmp ugt i64 %i.gp, %i.gj
  br i1 %i.gq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw [2072 x i8], ptr %i.gl, i64 %i.gj ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !110
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.ai, label %_ZNK14NodeDefManager3getEt.exit.i

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit.i

_ZNK14NodeDefManager3getEt.exit.i:                ; preds = %bb.ai, %bb.ah
  %i.gw = phi ptr [ %i.gv, %bb.ai ], [ %i.gr, %bb.ah ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !89
  invoke void @lua_setfield(ptr noundef %0, i32 noundef %i.bv, ptr noundef %i.gy)
          to label %bb.aj unwind label %.thread.i

bb.aj:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit.i, %bb.af
  %.not.wide.i = icmp eq i64 %i.gb, 0
  br i1 %.not.wide.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, label %bb.ae, !llvm.loop !487

._crit_edge225.i:                                 ; preds = %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE_EEDaSF_.exit.i"
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.2282.i, null
  br i1 %.not.i.i.i.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

bb.ak:                                            ; preds = %bb.ac
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i44.i = icmp eq ptr %.sroa.0.2282.i, null
  br i1 %.not.i.i.i44.i, label %.body, label %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i

bb.al:                                            ; preds = %.thread, %bb.q
  %i.gz = phi i64 [ %i.bl, %.thread ], [ %i.bs, %bb.q ] ; 2 uses
  %i.ha = phi ptr [ %i.bi, %.thread ], [ %i.bp, %bb.q ]
  %i.hb = phi ptr [ %i.bh, %.thread ], [ %i.bo, %bb.q ]
  %i.hc = phi ptr [ %i.bg, %.thread ], [ %i.bn, %bb.q ] ; 4 uses
  %i.hd = ashr exact i64 %i.gz, 1                 ; 3 uses
  %.not186.i = icmp eq ptr %i.hb, %i.ha
  br i1 %.not186.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit49.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.he = icmp ugt i64 %i.hd, 2305843009213693951
  br i1 %i.he, label %bb.an, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i113.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #30
          to label %.noexc121.i unwind label %bb.az

.noexc121.i:                                      ; preds = %bb.an
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i113.i: ; preds = %bb.am
  %i.hf = shl nuw nsw i64 %i.gz, 1
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #27
          to label %.noexc122.i unwind label %bb.az ; 4 uses

.noexc122.i:                                      ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i113.i
  store i32 0, ptr %i.hg, align 4, !tbaa !254
  %i.hh = add nsw i64 %i.hd, -1                   ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %.noexc48.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i115.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i115.i: ; preds = %.noexc122.i
  %i.hj = getelementptr i8, ptr %i.hg, i64 4
  %.idx.i.i.i.i.i31.i116.i = shl nuw nsw i64 %i.hh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hj, i8 0, i64 %.idx.i.i.i.i.i31.i116.i, i1 false), !tbaa !254
  br label %.noexc48.i

.noexc48.i:                                       ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i115.i, %.noexc122.i
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hd
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit49.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit49.i:           ; preds = %.noexc48.i, %bb.al
  %.sroa.0144.2.i = phi ptr [ %i.hg, %.noexc48.i ], [ null, %bb.al ] ; 9 uses
  %.sroa.16152.2.i = phi ptr [ %i.hk, %.noexc48.i ], [ null, %bb.al ] ; 6 uses
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %bb.ao unwind label %bb.az

bb.ao:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit49.i
  %.not47.i50.i = icmp sgt i16 %.sroa.11.0, %i.bd
  %i.hl = icmp sgt i16 %.sroa.740.0, %i.bc
  %or.cond48 = select i1 %.not47.i50.i, i1 true, i1 %i.hl
  br i1 %or.cond48, label %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSF_.exit.i", label %.lr.ph50.split.i52.i.preheader.split

.lr.ph50.split.i52.i.preheader.split:             ; preds = %bb.ao
  %i.hm = sext i16 %.sroa.039.0 to i32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.hs = icmp sgt i16 %.sroa.039.0, %i.bb
  br i1 %i.hs, label %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSF_.exit.i", label %.lr.ph50.split.i52.i

.lr.ph50.split.i52.i:                             ; preds = %.lr.ph50.split.i52.i.preheader.split, %._crit_edge46.i84.i.loopexit
  %.0168.i = phi i32 [ %.3.i, %._crit_edge46.i84.i.loopexit ], [ 0, %.lr.ph50.split.i52.i.preheader.split ]
  %.048.i53.i = phi i16 [ %i.kj, %._crit_edge46.i84.i.loopexit ], [ %.sroa.11.0, %.lr.ph50.split.i52.i.preheader.split ] ; 3 uses
  %i.ht = sext i16 %.048.i53.i to i32
  %.sroa.5.0.insert.ext.i56.i = zext i16 %.048.i53.i to i48
  %.sroa.5.0.insert.shift.i57.i = shl nuw i48 %.sroa.5.0.insert.ext.i56.i, 32
  br label %.lr.ph.i61.i

.lr.ph.i61.i:                                     ; preds = %._crit_edge.i82.i, %.lr.ph50.split.i52.i
  %.1.i = phi i32 [ %.3.i, %._crit_edge.i82.i ], [ %.0168.i, %.lr.ph50.split.i52.i ]
  %.02443.i59.i = phi i16 [ %i.ki, %._crit_edge.i82.i ], [ %.sroa.740.0, %.lr.ph50.split.i52.i ] ; 3 uses
  %i.hu = load i16, ptr %i.ad, align 4, !tbaa !318
  %i.hv = sext i16 %i.hu to i32
  %i.hw = sub nsw i32 %i.hm, %i.hv
  %i.hx = load i16, ptr %i.hn, align 4, !tbaa !319
  %i.hy = sext i16 %i.hx to i32
  %i.hz = sub nsw i32 %i.ht, %i.hy
  %i.ia = load i32, ptr %i.ho, align 4, !tbaa !322
  %i.ib = mul nsw i32 %i.hz, %i.ia
  %i.ic = sext i16 %.02443.i59.i to i32
  %i.id = add i32 %i.ib, %i.ic
  %i.ie = load i16, ptr %i.hp, align 2, !tbaa !495
  %i.if = sext i16 %i.ie to i32
  %i.ig = sub i32 %i.id, %i.if
  %i.ih = load i32, ptr %i.hq, align 4, !tbaa !323
  %i.ii = mul i32 %i.ig, %i.ih
  %i.ij = add nsw i32 %i.hw, %i.ii
  %.sroa.4.0.insert.ext.i62.i = zext i16 %.02443.i59.i to i48
  %.sroa.4.0.insert.shift.i63.i = shl nuw nsw i48 %.sroa.4.0.insert.ext.i62.i, 16
  %.sroa.4.0.insert.insert.i64.i = or disjoint i48 %.sroa.4.0.insert.shift.i63.i, %.sroa.5.0.insert.shift.i57.i
  %.pre.i65.i = load ptr, ptr %3, align 8, !tbaa !249
  br label %bb.ap

bb.ap:                                            ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i", %.lr.ph.i61.i
  %.2.i = phi i32 [ %.1.i, %.lr.ph.i61.i ], [ %.3.i, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i" ] ; 3 uses
  %i.ik = phi ptr [ %.pre.i65.i, %.lr.ph.i61.i ], [ %i.kf, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i" ] ; 6 uses
  %.02541.i66.i = phi i16 [ %.sroa.039.0, %.lr.ph.i61.i ], [ %i.kh, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i" ] ; 2 uses
  %.02640.i67.i = phi i32 [ %i.ij, %.lr.ph.i61.i ], [ %i.kg, %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i" ] ; 2 uses
  %i.il = load ptr, ptr %i.hr, align 8, !tbaa !324
  %i.im = zext i32 %.02640.i67.i to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.im
  %.sroa.05.0.copyload.i68.i = load i32, ptr %i.in, align 4
  %.sroa.0.0.insert.ext.i69.i = zext i16 %.02541.i66.i to i48
  %.sroa.0.0.insert.insert.i70.i = or disjoint i48 %.sroa.4.0.insert.insert.i64.i, %.sroa.0.0.insert.ext.i69.i
  %.sroa.011.0.extract.trunc.i.i.i = trunc i32 %.sroa.05.0.copyload.i68.i to i16 ; 7 uses
  %i.io = load ptr, ptr %i.hc, align 8, !tbaa !249 ; 3 uses
  %i.ip = ptrtoint ptr %i.io to i64               ; 2 uses
  %i.iq = ptrtoint ptr %i.ik to i64
  %i.ir = sub i64 %i.ip, %i.iq                    ; 3 uses
  %i.is = ashr i64 %i.ir, 3                       ; 2 uses
  %i.it = icmp sgt i64 %i.is, 0
  br i1 %i.it, label %.lr.ph.i.i.i.i.i88.i, label %._crit_edge.i.i.i.i.i71.i

.lr.ph.i.i.i.i.i88.i:                             ; preds = %bb.ap
  %i.iu = and i64 %i.ir, -8
  %scevgep.i.i.i.i.i89.i = getelementptr i8, ptr %i.ik, i64 %i.iu ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.au, %.lr.ph.i.i.i.i.i88.i
  %.052.i.i.i.i.i90.i = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i88.i ], [ %i.jh, %bb.au ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i91.i = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i88.i ], [ %i.jg, %bb.au ] ; 9 uses
  %i.iv = load i16, ptr %.sroa.032.051.i.i.i.i.i91.i, align 2, !tbaa !42
  %i.iw = icmp eq i16 %i.iv, %.sroa.011.0.extract.trunc.i.i.i
  br i1 %i.iw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i91.i, i64 2
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !42
  %i.iz = icmp eq i16 %i.iy, %.sroa.011.0.extract.trunc.i.i.i
  br i1 %i.iz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i91.i, i64 4
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !42
  %i.jc = icmp eq i16 %i.jb, %.sroa.011.0.extract.trunc.i.i.i
  br i1 %i.jc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit151, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i91.i, i64 6
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !42
  %i.jf = icmp eq i16 %i.je, %.sroa.011.0.extract.trunc.i.i.i
  br i1 %i.jf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit153, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i91.i, i64 8
  %i.jh = add nsw i64 %.052.i.i.i.i.i90.i, -1
  %i.ji = icmp sgt i64 %.052.i.i.i.i.i90.i, 1
  br i1 %i.ji, label %bb.aq, label %._crit_edge.loopexit.i.i.i.i.i92.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i92.i:               ; preds = %bb.au
  %.pre59.i.i.i.i.i93.i = ptrtoint ptr %scevgep.i.i.i.i.i89.i to i64
  %.pre60.i.i.i.i.i94.i = sub i64 %i.ip, %.pre59.i.i.i.i.i93.i
  br label %._crit_edge.i.i.i.i.i71.i

._crit_edge.i.i.i.i.i71.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i92.i, %bb.ap
  %.pre-phi61.i.i.i.i.i72.i = phi i64 [ %.pre60.i.i.i.i.i94.i, %._crit_edge.loopexit.i.i.i.i.i92.i ], [ %i.ir, %bb.ap ]
  %.sroa.032.0.lcssa.i.i.i.i.i73.i = phi ptr [ %scevgep.i.i.i.i.i89.i, %._crit_edge.loopexit.i.i.i.i.i92.i ], [ %i.ik, %bb.ap ] ; 5 uses
  %i.jj = ashr exact i64 %.pre-phi61.i.i.i.i.i72.i, 1
  switch i64 %i.jj, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i" [
    i64 3, label %bb.av
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i86.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i74.i
  ]

bb.av:                                            ; preds = %._crit_edge.i.i.i.i.i71.i
  %i.jk = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i73.i, align 2, !tbaa !42
  %i.jl = icmp eq i16 %i.jk, %.sroa.011.0.extract.trunc.i.i.i
  br i1 %i.jl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i73.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i.i.i86.i

._crit_edge._crit_edge.i.i.i.i.i86.i:             ; preds = %bb.aw, %._crit_edge.i.i.i.i.i71.i
  %.sroa.032.1.i.i.i.i.i87.i = phi ptr [ %i.jm, %bb.aw ], [ %.sroa.032.0.lcssa.i.i.i.i.i73.i, %._crit_edge.i.i.i.i.i71.i ] ; 3 uses
  %i.jn = load i16, ptr %.sroa.032.1.i.i.i.i.i87.i, align 2, !tbaa !42
  %i.jo = icmp eq i16 %i.jn, %.sroa.011.0.extract.trunc.i.i.i
  br i1 %i.jo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i86.i
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i87.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i.i.i74.i

._crit_edge._crit_edge57.i.i.i.i.i74.i:           ; preds = %bb.ax, %._crit_edge.i.i.i.i.i71.i
  %.sroa.032.2.i.i.i.i.i75.i = phi ptr [ %i.jp, %bb.ax ], [ %.sroa.032.0.lcssa.i.i.i.i.i73.i, %._crit_edge.i.i.i.i.i71.i ] ; 2 uses
  %i.jq = load i16, ptr %.sroa.032.2.i.i.i.i.i75.i, align 2, !tbaa !42
  %i.jr = icmp eq i16 %i.jq, %.sroa.011.0.extract.trunc.i.i.i
  %spec.select.i.i.i.i.i76.i = select i1 %i.jr, ptr %.sroa.032.2.i.i.i.i.i75.i, ptr %i.io
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit: ; preds = %bb.ar
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i91.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit151: ; preds = %bb.as
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i91.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit153: ; preds = %bb.at
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i91.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i: ; preds = %bb.aq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit151, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit153, %._crit_edge._crit_edge57.i.i.i.i.i74.i, %._crit_edge._crit_edge.i.i.i.i.i86.i, %bb.av
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i78.i = phi ptr [ %.sroa.032.1.i.i.i.i.i87.i, %._crit_edge._crit_edge.i.i.i.i.i86.i ], [ %spec.select.i.i.i.i.i76.i, %._crit_edge._crit_edge57.i.i.i.i.i74.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i73.i, %bb.av ], [ %i.ju, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit153 ], [ %i.js, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit ], [ %i.jt, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i.loopexit.split.loop.exit151 ], [ %.sroa.032.051.i.i.i.i.i91.i, %bb.aq ] ; 2 uses
  %.not.i.i79.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i78.i, %i.io
  br i1 %.not.i.i79.i, label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i", label %bb.ay

bb.ay:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i
  invoke void @_Z10push_v3s16P9lua_StateN4core8vector3dIsEE(ptr noundef %0, i48 %.sroa.0.0.insert.insert.i70.i)
          to label %.noexc96.i unwind label %.loopexit191.i

.noexc96.i:                                       ; preds = %bb.ay
  %i.jv = add i32 %.2.i, 1                        ; 2 uses
  invoke void @lua_rawseti(ptr noundef %0, i32 noundef -2, i32 noundef %i.jv)
          to label %.noexc97.i unwind label %.loopexit191.i

.noexc97.i:                                       ; preds = %.noexc96.i
  %i.jw = load ptr, ptr %3, align 8, !tbaa !249   ; 2 uses
  %i.jx = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i78.i to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = lshr exact i64 %i.jz, 1
  %i.kb = and i64 %i.ka, 4294967295
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0144.2.i, i64 %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !254
  %i.ke = add i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !254
  br label %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i"

"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i": ; preds = %.noexc97.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i, %._crit_edge.i.i.i.i.i71.i
  %.3.i = phi i32 [ %.2.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i ], [ %i.jv, %.noexc97.i ], [ %.2.i, %._crit_edge.i.i.i.i.i71.i ] ; 3 uses
  %i.kf = phi ptr [ %i.ik, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEtET_S8_S8_RKT0_.exit.i.i77.i ], [ %i.jw, %.noexc97.i ], [ %i.ik, %._crit_edge.i.i.i.i.i71.i ]
  %i.kg = add i32 %.02640.i67.i, 1
  %i.kh = add i16 %.02541.i66.i, 1                ; 2 uses
  %.not29.i81.i = icmp sgt i16 %i.kh, %i.bb
  br i1 %.not29.i81.i, label %._crit_edge.i82.i, label %bb.ap, !llvm.loop !488

._crit_edge.i82.i:                                ; preds = %"_ZZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_ENKUlN4core8vector3dIsEE7MapNodeE0_clESI_SJ_.exit.i.i"
  %i.ki = add i16 %.02443.i59.i, 1                ; 2 uses
  %.not28.i83.i = icmp sgt i16 %i.ki, %i.bc
  br i1 %.not28.i83.i, label %._crit_edge46.i84.i.loopexit, label %.lr.ph.i61.i, !llvm.loop !489

._crit_edge46.i84.i.loopexit:                     ; preds = %._crit_edge.i82.i
  %i.kj = add i16 %.048.i53.i, 1                  ; 2 uses
  %.not.i85.i = icmp sgt i16 %i.kj, %i.bd
  br i1 %.not.i85.i, label %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSF_.exit.i", label %.lr.ph50.split.i52.i, !llvm.loop !490

"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSF_.exit.i": ; preds = %._crit_edge46.i84.i.loopexit, %.lr.ph50.split.i52.i.preheader.split, %bb.ao
  %i.kk = load ptr, ptr %i.hc, align 8, !tbaa !253
  %i.kl = load ptr, ptr %3, align 8, !tbaa !251
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = lshr exact i64 %i.ko, 1
  %i.kq = trunc i64 %i.kp to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef %i.kq)
          to label %.preheader.i unwind label %.loopexit.split-lp192.i

.preheader.i:                                     ; preds = %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSF_.exit.i"
  %i.kr = load ptr, ptr %i.hc, align 8, !tbaa !253
  %i.ks = load ptr, ptr %3, align 8, !tbaa !251   ; 2 uses
  %.not226.i = icmp eq ptr %i.kr, %i.ks
  br i1 %.not226.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.ba

._crit_edge.i:                                    ; preds = %.preheader.i
  %.not.i.i.i98.i = icmp eq ptr %.sroa.0144.2.i, null
  br i1 %.not.i.i.i98.i, label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i

bb.az:                                            ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit49.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i113.i, %bb.an
  %.sroa.0144.0.i = phi ptr [ %.sroa.0144.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit49.i ], [ null, %bb.an ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i113.i ]
  %.sroa.16152.0.i = phi ptr [ %.sroa.16152.2.i, %_ZNSt6vectorIjSaIjEE6resizeEm.exit49.i ], [ null, %bb.an ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i113.i ]
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit191.i:                                   ; preds = %.noexc96.i, %bb.ay
  %lpad.loopexit193.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp192.i:                          ; preds = %"_ZZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateENK3$_0clIZN13ModApiEnvBase15findNodesInAreaIRS2_EEiS1_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_EUlN4core8vector3dIsEE7MapNodeE0_EEDaSF_.exit.i"
  %lpad.loopexit.split-lp194.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ba:                                            ; preds = %bb.be, %.lr.ph.i
  %i.kv = phi i64 [ 0, %.lr.ph.i ], [ %i.lt, %bb.be ] ; 2 uses
  %.0211.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ls, %bb.be ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0144.2.i, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !254
  %i.ky = zext i32 %i.kx to i64
  invoke void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ky)
          to label %bb.bb unwind label %.thread177.i

bb.bb:                                            ; preds = %bb.ba
  %i.kz = load ptr, ptr %3, align 8, !tbaa !251
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %i.kv
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !42
  %i.lc = zext i16 %i.lb to i64                   ; 2 uses
  %i.ld = load ptr, ptr %i.kt, align 8, !tbaa !108
  %i.le = load ptr, ptr %i.j, align 8, !tbaa !109 ; 3 uses
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = sdiv exact i64 %i.lh, 2072
  %i.lj = icmp ugt i64 %i.li, %i.lc
  br i1 %i.lj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.lk = getelementptr inbounds nuw [2072 x i8], ptr %i.le, i64 %i.lc ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !110
  %i.ln = icmp eq i64 %i.lm, 0
  br i1 %i.ln, label %bb.bd, label %_ZNK14NodeDefManager3getEt.exit100.i

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.lo = getelementptr inbounds nuw i8, ptr %i.le, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit100.i

_ZNK14NodeDefManager3getEt.exit100.i:             ; preds = %bb.bd, %bb.bc
  %i.lp = phi ptr [ %i.lo, %bb.bd ], [ %i.lk, %bb.bc ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !89
  invoke void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef %i.lr)
          to label %bb.be unwind label %.thread177.i

bb.be:                                            ; preds = %_ZNK14NodeDefManager3getEt.exit100.i
  %i.ls = add i32 %.0211.i, 1                     ; 2 uses
  %i.lt = zext i32 %i.ls to i64                   ; 2 uses
  %i.lu = load ptr, ptr %i.hc, align 8, !tbaa !253
  %i.lv = load ptr, ptr %3, align 8, !tbaa !251
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = ashr exact i64 %i.ly, 1
  %i.ma = icmp ugt i64 %i.lz, %i.lt
  br i1 %i.ma, label %bb.ba, label %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, !llvm.loop !491

.thread177.i:                                     ; preds = %_ZNK14NodeDefManager3getEt.exit100.i, %bb.ba
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i

bb.bf:                                            ; preds = %.loopexit.split-lp192.i, %.loopexit191.i, %bb.az
  %.sroa.0144.1.i = phi ptr [ %.sroa.0144.0.i, %bb.az ], [ %.sroa.0144.2.i, %.loopexit.split-lp192.i ], [ %.sroa.0144.2.i, %.loopexit191.i ] ; 2 uses
  %.sroa.16152.1.i = phi ptr [ %.sroa.16152.0.i, %bb.az ], [ %.sroa.16152.2.i, %.loopexit.split-lp192.i ], [ %.sroa.16152.2.i, %.loopexit191.i ]
  %.pn.pn.i = phi { ptr, i32 } [ %i.ku, %bb.az ], [ %lpad.loopexit.split-lp194.i, %.loopexit.split-lp192.i ], [ %lpad.loopexit193.i, %.loopexit191.i ] ; 2 uses
  %.not.i.i.i101.i = icmp eq ptr %.sroa.0144.1.i, null
  br i1 %.not.i.i.i101.i, label %.body, label %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i

_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i:       ; preds = %bb.be, %bb.aj, %._crit_edge.i, %._crit_edge225.i
  %.sroa.16152.2.sink.i = phi ptr [ %.sroa.16.2283.i, %._crit_edge225.i ], [ %.sroa.16152.2.i, %._crit_edge.i ], [ %.sroa.16.2283.i, %bb.aj ], [ %.sroa.16152.2.i, %bb.be ]
  %.sroa.0144.2.sink326.i = phi ptr [ %.sroa.0.2282.i, %._crit_edge225.i ], [ %.sroa.0144.2.i, %._crit_edge.i ], [ %.sroa.0.2282.i, %bb.aj ], [ %.sroa.0144.2.i, %bb.be ] ; 2 uses
  %.034.ph.i = phi i32 [ 1, %._crit_edge225.i ], [ 2, %._crit_edge.i ], [ 1, %bb.aj ], [ 2, %bb.be ]
  %i.mc = ptrtoint ptr %.sroa.16152.2.sink.i to i64
  %i.md = ptrtoint ptr %.sroa.0144.2.sink326.i to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.2.sink326.i, i64 noundef %i.me) #28
  %.pr.pre = load ptr, ptr %3, align 8, !tbaa !251
  br label %"_ZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"

_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i:     ; preds = %bb.bf, %.thread177.i, %bb.ak, %.thread.i, %.thread290.i, %.thread295.i
  %.sroa.16152.1183.sink.i = phi ptr [ %.sroa.16.2283.i, %.thread295.i ], [ %.sroa.16.2283.i, %.thread.i ], [ %.sroa.16.2283.i, %bb.ak ], [ %i.ci, %.thread290.i ], [ %.sroa.16152.2.i, %.thread177.i ], [ %.sroa.16152.1.i, %bb.bf ]
  %.sroa.0144.1182.sink329.i = phi ptr [ %.sroa.0.2282.i, %.thread295.i ], [ %.sroa.0.2282.i, %.thread.i ], [ %.sroa.0.2282.i, %bb.ak ], [ %i.ce, %.thread290.i ], [ %.sroa.0144.2.i, %.thread177.i ], [ %.sroa.0144.1.i, %bb.bf ] ; 2 uses
  %.pn38.pn.ph.i = phi { ptr, i32 } [ %lpad.loopexit296.i, %.thread295.i ], [ %i.gf, %.thread.i ], [ %lpad.loopexit.i, %bb.ak ], [ %i.ft, %.thread290.i ], [ %i.mb, %.thread177.i ], [ %.pn.pn.i, %bb.bf ]
  %i.mf = ptrtoint ptr %.sroa.16152.1183.sink.i to i64
  %i.mg = ptrtoint ptr %.sroa.0144.1182.sink329.i to i64
  %i.mh = sub i64 %i.mf, %i.mg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0144.1182.sink329.i, i64 noundef %i.mh) #28
  br label %.body

"_ZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit": ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i, %._crit_edge225.i, %._crit_edge.i
  %i.mi = phi ptr [ %i.ks, %._crit_edge.i ], [ %.pr.pre, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ %.pr103, %._crit_edge225.i ] ; 3 uses
  %.034.i = phi i32 [ 2, %._crit_edge.i ], [ %.034.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit.sink.split.i ], [ 1, %._crit_edge225.i ]
  %.not.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit"
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !252
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mn) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %"_ZN13ModApiEnvBase15findNodesInAreaIRZN11ModApiEnvVM20l_find_nodes_in_areaEP9lua_StateE3$_0EEiS3_PK14NodeDefManagerRKSt6vectorItSaItEEbOT_.exit", %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZN11ModApiEnvVM9getVManipEP9lua_State.exit.thread

bb.bh:                                            ; preds = %_ZNK9VoxelArea9intersectERKS_.exit
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %bb.p, %bb.n
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bj:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i, %.noexc105.i, %.noexc, %bb.r
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bj, %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i, %bb.bf, %bb.ak, %bb.bi, %bb.bh
  %.pn.pn = phi { ptr, i32 } [ %i.mo, %bb.bh ], [ %i.mp, %bb.bi ], [ %i.mq, %bb.bj ], [ %.pn.pn.i, %bb.bf ], [ %lpad.loopexit.i, %bb.ak ], [ %.pn38.pn.ph.i, %_ZNSt6vectorIjSaIjEED2Ev.exit45.sink.split.i ]
  %i.mr = load ptr, ptr %3, align 8, !tbaa !251   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorItSaItEED2Ev.exit22, label %bb.bk

bb.bk:                                            ; preds = %.body
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !252
  %i.mu = ptrtoint ptr %i.mt to i64
  %i.mv = ptrtoint ptr %i.mr to i64
  %i.mw = sub i64 %i.mu, %i.mv
  call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.mw) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit22

_ZNSt6vectorItSaItEED2Ev.exit22:                  ; preds = %.body, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn.pn

_ZN11ModApiEnvVM9getVManipEP9lua_State.exit.thread: ; preds = %bb.a, %_ZN11ModApiEnvVM9getVManipEP9lua_State.exit, %_ZNSt6vectorItSaItEED2Ev.exit
  %.015 = phi i32 [ %.034.i, %_ZNSt6vectorItSaItEED2Ev.exit ], [ 0, %_ZN11ModApiEnvVM9getVManipEP9lua_State.exit ], [ 0, %bb.a ]
  ret i32 %.015
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN11ModApiEnvVM30l_find_nodes_in_area_under_airEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 9 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 9 uses
  %3 = alloca %"class.std::vector.548", align 8   ; 11 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase15getEmergeThreadEP9lua_State(ptr noundef %0) ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN11ModApiEnvVM9getVManipEP9lua_State.exit.thread, label %_ZN11ModApiEnvVM9getVManipEP9lua_State.exit

_ZN11ModApiEnvVM9getVManipEP9lua_State.exit:      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !301
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !315  ; 11 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN11ModApiEnvVM9getVManipEP9lua_State.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN11ModApiEnvVM9getVManipEP9lua_State.exit
  %i.f = tail call noundef ptr @_ZN10ModApiBase10getGameDefEP9lua_State(ptr noundef %0) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.k = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1) ; 4 uses
  store i48 %i.k, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.l = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 4 uses
  store i48 %i.l, ptr %2, align 8
  %i.m = trunc i48 %i.k to i16                    ; 2 uses
  %i.n = trunc i48 %i.l to i16                    ; 2 uses
  %i.o = icmp sgt i16 %i.m, %i.n
  %i.p = lshr i48 %i.k, 16
  %i.q = trunc i48 %i.p to i16                    ; 2 uses
  %i.r = lshr i48 %i.l, 16
  %i.s = trunc i48 %i.r to i16                    ; 2 uses
  %i.t = lshr i48 %i.k, 32
  %i.u = trunc nuw i48 %i.t to i16                ; 2 uses
  %i.v = lshr i48 %i.l, 32
  %i.w = trunc nuw i48 %i.v to i16                ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 %i.n, ptr %1, align 8, !tbaa !42
  store i16 %i.m, ptr %2, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = icmp sgt i16 %i.q, %i.s
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.s, ptr %i.z, align 2, !tbaa !42
  store i16 %i.q, ptr %i.y, align 2, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = icmp sgt i16 %i.u, %i.w
  br i1 %i.aa, label %bb.g, label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.w, ptr %i.ac, align 4, !tbaa !42
  store i16 %i.u, ptr %i.ab, align 4, !tbaa !42
  br label %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit

_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit: ; preds = %bb.f, %bb.g
  call void @_ZN13ModApiEnvBase9checkAreaERN4core8vector3dIsEES3_(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 2 dereferenceable(6) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN13ModApiEnvBase14collectNodeIdsEP9lua_StateiPK14NodeDefManagerRSt6vectorItSaItEE(ptr noundef %0, i32 noundef 3, ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.aa

bb.h:                                             ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %.sroa.03.0.copyload = load i48, ptr %1, align 8 ; 3 uses
  %.sroa.0.0.copyload = load i48, ptr %2, align 8 ; 3 uses
  %.sroa.020.0.extract.trunc.i = trunc i48 %.sroa.03.0.copyload to i16 ; 2 uses
  %.sroa.221.0.extract.shift.i = lshr i48 %.sroa.03.0.copyload, 16
  %.sroa.221.0.extract.trunc.i = trunc i48 %.sroa.221.0.extract.shift.i to i16 ; 5 uses
  %.sroa.322.0.extract.shift.i = lshr i48 %.sroa.03.0.copyload, 32
  %.sroa.322.0.extract.trunc.i = trunc nuw i48 %.sroa.322.0.extract.shift.i to i16 ; 2 uses
  %.sroa.019.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16 ; 2 uses
  invoke void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %.not58.i = icmp sgt i16 %.sroa.020.0.extract.trunc.i, %.sroa.019.0.extract.trunc.i
  br i1 %.not58.i, label %"_ZN13ModApiEnvBase23findNodesInAreaUnderAirIRZN11ModApiEnvVM30l_find_nodes_in_area_under_airEP9lua_StateE3$_0EEiS3_N4core8vector3dIsEES8_RKSt6vectorItSaItEEOT_.exit", label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.noexc
  %i.ad = ashr i48 %.sroa.0.0.copyload, 32
  %i.ae = trunc nsw i48 %i.ad to i32              ; 2 uses
  %i.af = sext i16 %.sroa.322.0.extract.trunc.i to i32
  %.not2451.i = icmp sgt i32 %i.af, %i.ae
  %i.ag = sext i16 %.sroa.221.0.extract.trunc.i to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not2546.i = icmp sgt i16 %.sroa.221.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  %or.cond97.i = select i1 %.not2451.i, i1 true, i1 %.not2546.i
  br i1 %or.cond97.i, label %"_ZN13ModApiEnvBase23findNodesInAreaUnderAirIRZN11ModApiEnvVM30l_find_nodes_in_area_under_airEP9lua_StateE3$_0EEiS3_N4core8vector3dIsEES8_RKSt6vectorItSaItEEOT_.exit", label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 18 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge55.split.i
  %.061.i = phi i32 [ %.3.i, %._crit_edge55.split.i ], [ 0, %.preheader.i.preheader ]
  %storemerge59.i = phi i16 [ %i.en, %._crit_edge55.split.i ], [ %.sroa.020.0.extract.trunc.i, %.preheader.i.preheader ] ; 7 uses
  %.sroa.010.0.insert.ext12.i = zext i16 %storemerge59.i to i48
  %i.as = sext i16 %storemerge59.i to i32         ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.preheader.i
  %.153.i = phi i32 [ %.061.i, %.preheader.i ], [ %.3.i, %._crit_edge.i ]
  %storemerge2352.i = phi i16 [ %.sroa.322.0.extract.trunc.i, %.preheader.i ], [ %i.el, %._crit_edge.i ] ; 8 uses
  %.sroa.14.0.insert.ext21.i = zext i16 %storemerge2352.i to i48
  %.sroa.14.0.insert.shift22.i = shl nuw i48 %.sroa.14.0.insert.ext21.i, 32
  %i.at = load i16, ptr %i.ai, align 4, !tbaa !318 ; 2 uses
  %.not.i.i.i.i = icmp sgt i16 %i.at, %storemerge59.i
  %i.au = load i16, ptr %i.aj, align 2
  %.not6.i.i.i.i = icmp slt i16 %i.au, %storemerge59.i
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not6.i.i.i.i
  %i.av = load i16, ptr %i.ak, align 2            ; 2 uses
  %.not7.i.i.i.i = icmp sgt i16 %i.av, %.sroa.221.0.extract.trunc.i
  %or.cond12.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 true, i1 %.not7.i.i.i.i
  %i.aw = load i16, ptr %i.al, align 4
end_hunk_0
begin_hunk_1_@llvm.smin.v2i16
!284 = !{!"_ZTSSt11_Tuple_implILm0EJP15EmergeScriptingSt14default_deleteIS0_EEE", !283, i64 0}
!285 = !{!"_ZTSSt5tupleIJP15EmergeScriptingSt14default_deleteIS0_EEE", !284, i64 0}
!286 = !{!"_ZTSSt15__uniq_ptr_implI15EmergeScriptingSt14default_deleteIS0_EE", !285, i64 0}
!287 = !{!"_ZTSSt15__uniq_ptr_dataI15EmergeScriptingSt14default_deleteIS0_ELb1ELb1EE", !286, i64 0}
!288 = !{!"_ZTSSt10unique_ptrI15EmergeScriptingSt14default_deleteIS0_EE", !287, i64 0}
!289 = !{!"p1 _ZTS11UniqueQueueIN4core8vector3dIsEEE", !19, i64 0}
!290 = !{!"_ZTSSt9__condvar", !13, i64 0}
!291 = !{!"_ZTSSt18condition_variable", !290, i64 0}
!292 = !{!"_ZTS5Event", !291, i64 0, !103, i64 48, !48, i64 88}
!293 = !{!"p2 _ZTSN4core8vector3dIsEE", !60, i64 0}
!294 = !{!"_ZTSSt15_Deque_iteratorIN4core8vector3dIsEERS2_PS2_E", !184, i64 0, !184, i64 8, !184, i64 16, !293, i64 24}
!295 = !{!"_ZTSNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_Deque_impl_dataE", !293, i64 0, !35, i64 8, !294, i64 16, !294, i64 48}
!296 = !{!"_ZTSNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE11_Deque_implE", !295, i64 0}
!297 = !{!"_ZTSSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE", !296, i64 0}
!298 = !{!"_ZTSSt5dequeIN4core8vector3dIsEESaIS2_EE", !297, i64 0}
!299 = !{!"_ZTSSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE", !298, i64 0}
!300 = !{!"_ZTS12EmergeThread", !280, i64 0, !48, i64 144, !14, i64 148, !124, i64 152, !117, i64 160, !274, i64 168, !281, i64 176, !288, i64 184, !289, i64 192, !292, i64 200, !299, i64 296}
!301 = !{!300, !281, i64 176}
!302 = !{!"p1 _ZTS8MMVManip", !19, i64 0}
!303 = !{!"p1 _ZTS12EmergeParams", !19, i64 0}
!304 = !{!"p1 _ZTS14NodeDefManager", !19, i64 0}
!305 = !{!"p1 _ZTS8BiomeGen", !19, i64 0}
!306 = !{!"p1 _ZTSSt3setIjSt4lessIjESaIjEE", !19, i64 0}
!307 = !{!"p1 _ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !19, i64 0}
!308 = !{!"p1 _ZTSN16GenerateNotifier14GenNotifyEventE", !19, i64 0}
!309 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE17_Vector_impl_dataE", !308, i64 0, !308, i64 8, !308, i64 16}
!310 = !{!"_ZTSNSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE12_Vector_implE", !309, i64 0}
!311 = !{!"_ZTSSt12_Vector_baseIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !310, i64 0}
!312 = !{!"_ZTSSt6vectorIN16GenerateNotifier14GenNotifyEventESaIS1_EE", !311, i64 0}
!313 = !{!"_ZTS16GenerateNotifier", !14, i64 0, !306, i64 8, !307, i64 16, !312, i64 24, !194, i64 48}
!314 = !{!"_ZTS6Mapgen", !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !48, i64 24, !14, i64 28, !302, i64 32, !303, i64 40, !304, i64 48, !14, i64 56, !248, i64 64, !248, i64 72, !25, i64 80, !305, i64 88, !313, i64 96}
!315 = !{!314, !302, i64 32}
!316 = !{!"_ZTSN4core8vector3dIiEE", !14, i64 0, !14, i64 4, !14, i64 8}
!317 = !{!"_ZTS9VoxelArea", !25, i64 0, !25, i64 6, !316, i64 12}
!318 = !{!317, !24, i64 0}
!319 = !{!317, !24, i64 4}
!320 = !{!"_ZTS16VoxelManipulator", !317, i64 8, !255, i64 32, !86, i64 40}
!321 = !{!320, !86, i64 40}
!322 = !{!317, !14, i64 16}
!323 = !{!317, !14, i64 12}
!324 = !{!320, !255, i64 32}
!325 = !{!193, !61, i64 0}
!326 = !{!193, !35, i64 8}
!327 = !{i64 0, i64 4, !81, i64 8, i64 8, !112}
!328 = !{!193, !62, i64 48}
!329 = !{!196, !48, i64 112}
!330 = !{!197, !48, i64 56}
!331 = !{!34, !33, i64 16}
!332 = !{!34, !33, i64 24}
!333 = !{!193, !62, i64 16}
!334 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !35, i64 0}
!335 = !{!334, !35, i64 0}
!336 = !{!62, !62, i64 0}
!337 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !19, i64 0}
!338 = !{!34, !32, i64 0}
!339 = !{!34, !33, i64 8}
!340 = !{!"p1 _ZTSSt4pairIifE", !19, i64 0}
!341 = !{!"_ZTSNSt12_Vector_baseISt4pairIifESaIS1_EE17_Vector_impl_dataE", !340, i64 0, !340, i64 8, !340, i64 16}
!342 = !{!341, !340, i64 0}
!343 = !{!341, !340, i64 16}
!344 = !{ptr @_ZN13BaseExceptionD2Ev}
!345 = !{!83, !62, i64 48}
!346 = !{!83, !35, i64 24}
!347 = !{!64, !35, i64 8}
!348 = distinct !{!348, !44}
!349 = !{!28, !24, i64 20}
!350 = !{!40, !14, i64 96}
!351 = !{!"p1 _ZTS12PointedThing", !19, i64 0}
!352 = !{!"_ZTSNSt12_Vector_baseI12PointedThingSaIS0_EE17_Vector_impl_dataE", !351, i64 0, !351, i64 8, !351, i64 16}
!353 = !{!352, !351, i64 0}
!354 = !{!352, !351, i64 16}
!355 = distinct !{!355, !44}
!356 = distinct !{!356, !44}
!357 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !19, i64 0}
!358 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !357, i64 0, !357, i64 8, !357, i64 16}
!359 = !{!358, !357, i64 0}
!360 = !{!358, !357, i64 16}
!361 = distinct !{!361, !44}
!362 = distinct !{!362, !"_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_StateiRKS7_"}
!363 = distinct !{!363, !362, !"_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_StateiRKS7_: argument 0"}
!364 = distinct !{ptr @_ZNSt10unique_ptrI18ServerActiveObjectSt14default_deleteIS0_EED2Ev, null}
!365 = !{!363}
!366 = distinct !{null}
!367 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb1ELb0ELb0EE", !196, i64 0}
!368 = !{!"_ZTSSt17_Optional_payloadI16ToolCapabilitiesLb0ELb0ELb0EE", !367, i64 0}
!369 = !{!"_ZTSSt14_Optional_baseI16ToolCapabilitiesLb0ELb0EE", !368, i64 0}
!370 = !{!"_ZTSSt8optionalI16ToolCapabilitiesE", !369, i64 0}
!371 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb1ELb0ELb0EE", !197, i64 0}
!372 = !{!"_ZTSSt17_Optional_payloadI13WearBarParamsLb0ELb0ELb0EE", !371, i64 0}
!373 = !{!"_ZTSSt14_Optional_baseI13WearBarParamsLb0ELb0EE", !372, i64 0}
!374 = !{!"_ZTSSt8optionalI13WearBarParamsE", !373, i64 0}
!375 = !{!"_ZTS17ItemStackMetadata", !195, i64 0, !370, i64 72, !374, i64 192}
!376 = !{!"_ZTS9ItemStack", !88, i64 0, !24, i64 32, !24, i64 34, !375, i64 40}
!377 = !{!376, !24, i64 32}
!378 = distinct !{!378, !"_ZNK17ServerEnvironment10getPlayersEv"}
!379 = distinct !{!379, !378, !"_ZNK17ServerEnvironment10getPlayersEv: argument 0"}
!380 = !{!164, !163, i64 8}
!381 = !{!164, !163, i64 0}
!382 = !{!379}
!383 = !{!163, !163, i64 0}
!384 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!385 = !{!"p1 _ZTS12RemotePlayer", !19, i64 0}
!386 = !{!385, !385, i64 0}
!387 = !{!"_ZTSN4core8aabbox3dIfEE", !27, i64 0, !27, i64 12}
!388 = !{!387, !26, i64 0}
!389 = !{!387, !26, i64 12}
!390 = !{!387, !26, i64 4}
!391 = !{!387, !26, i64 16}
!392 = !{!387, !26, i64 8}
!393 = !{!387, !26, i64 20}
!394 = !{!182, !14, i64 3172}
!395 = distinct !{!395, !44}
!396 = distinct !{!396, !44}
!397 = distinct !{!397, !44}
!398 = distinct !{!398, !44}
!399 = distinct !{!399, !44}
!400 = distinct !{!400, !44}
!401 = distinct !{!401, !44}
!402 = distinct !{!402, !44}
!403 = distinct !{!403, !44}
!404 = distinct !{!404, !44}
!405 = distinct !{!405, !44}
!406 = distinct !{!406, !44}
!407 = distinct !{!407, !44}
!408 = distinct !{!408, !44}
!409 = distinct !{!409, !44}
!410 = distinct !{!410, !44}
!411 = distinct !{!411, !44}
!412 = distinct !{!412, !44}
!413 = distinct !{!413, !44}
!414 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !250, i64 0}
!415 = !{!"_ZTSSt12_Vector_baseItSaItEE", !414, i64 0}
!416 = !{!"_ZTSSt6vectorItSaItEE", !415, i64 0}
!417 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !145, i64 0, !36, i64 8}
!418 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P12NodeMetadataESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !417, i64 0}
!419 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP12NodeMetadataSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !418, i64 0}
!420 = !{!"_ZTS16NodeMetadataList", !48, i64 0, !419, i64 8}
!421 = !{!"p1 _ZTS12StaticObject", !19, i64 0}
!422 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE17_Vector_impl_dataE", !421, i64 0, !421, i64 8, !421, i64 16}
!423 = !{!"_ZTSNSt12_Vector_baseI12StaticObjectSaIS0_EE12_Vector_implE", !422, i64 0}
!424 = !{!"_ZTSSt12_Vector_baseI12StaticObjectSaIS0_EE", !423, i64 0}
!425 = !{!"_ZTSSt6vectorI12StaticObjectSaIS0_EE", !424, i64 0}
!426 = !{!"_ZTSNSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !31, i64 0, !36, i64 8}
!427 = !{!"_ZTSSt8_Rb_treeItSt4pairIKt12StaticObjectESt10_Select1stIS3_ESt4lessItESaIS3_EE", !426, i64 0}
!428 = !{!"_ZTSSt3mapIt12StaticObjectSt4lessItESaISt4pairIKtS0_EEE", !427, i64 0}
!429 = !{!"_ZTS16StaticObjectList", !425, i64 0, !428, i64 24}
!430 = !{!"_ZTSSt4lessIdE"}
!431 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIdEE", !430, i64 0}
!432 = !{!"_ZTSNSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !431, i64 0, !36, i64 8}
!433 = !{!"_ZTSSt8_Rb_treeIdSt4pairIKd9NodeTimerESt10_Select1stIS3_ESt4lessIdESaIS3_EE", !432, i64 0}
!434 = !{!"_ZTSSt8multimapId9NodeTimerSt4lessIdESaISt4pairIKdS0_EEE", !433, i64 0}
!435 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !145, i64 0, !36, i64 8}
!436 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_St17_Rb_tree_iteratorIS3_IKd9NodeTimerEEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE", !435, i64 0}
!437 = !{!"_ZTSSt3mapIN4core8vector3dIsEESt17_Rb_tree_iteratorISt4pairIKd9NodeTimerEESt4lessIS2_ESaIS4_IKS2_S8_EEE", !436, i64 0}
!438 = !{!"double", !13, i64 0}
!439 = !{!"_ZTS13NodeTimerList", !434, i64 0, !437, i64 48, !438, i64 96, !438, i64 104}
!440 = !{!"_ZTS8MapBlock", !48, i64 0, !25, i64 2, !25, i64 8, !24, i64 14, !255, i64 16, !101, i64 24, !26, i64 32, !48, i64 36, !48, i64 37, !416, i64 40, !48, i64 64, !48, i64 65, !24, i64 66, !14, i64 68, !14, i64 72, !14, i64 76, !24, i64 80, !48, i64 82, !48, i64 83, !420, i64 88, !429, i64 144, !439, i64 216}
!441 = !{!440, !255, i64 16}
!442 = !{!440, !48, i64 36}
!443 = distinct !{!443, !44}
!444 = distinct !{!444, !44}
!445 = distinct !{!445, !44}
!446 = !{!257, !26, i64 28}
!447 = distinct !{!447, !44}
!448 = distinct !{!448, !44}
!449 = distinct !{!449, !44}
!450 = distinct !{!450, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_"}
!451 = distinct !{!451, !450, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!452 = distinct !{!452, !450, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!453 = distinct !{!453, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_"}
!454 = distinct !{!454, !453, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!455 = distinct !{!455, !453, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!456 = !{!452, !451}
!457 = !{!455, !454}
!458 = distinct !{!458, !44}
!459 = distinct !{!459, !44}
!460 = distinct !{!460, !44}
!461 = distinct !{!461, !44}
!462 = distinct !{!462, !44}
!463 = distinct !{!463, !44}
!464 = !{!274, !274, i64 0}
!465 = !{!93, !93, i64 0}
!466 = !{!94, !14, i64 8}
!467 = !{!94, !14, i64 12}
!468 = distinct !{!468, !44}
!469 = distinct !{!469, !44}
!470 = distinct !{!470, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_"}
!471 = distinct !{!471, !470, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!472 = distinct !{!472, !470, !"_ZSt19__relocate_object_aIN4core8vector3dIsEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!473 = distinct !{!473, !44}
!474 = !{!472, !471}
!475 = !{!"p1 wchar_t", !19, i64 0}
!476 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !475, i64 0}
!477 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !476, i64 0, !35, i64 8, !13, i64 16}
!478 = !{!477, !475, i64 0}
!479 = !{!477, !35, i64 8}
!480 = distinct !{!480, !44}
!481 = distinct !{!481, !"_ZNK9VoxelArea9intersectERKS_"}
!482 = distinct !{!482, !481, !"_ZNK9VoxelArea9intersectERKS_: argument 0"}
!483 = distinct !{!483, !44}
!484 = distinct !{!484, !44, !497}
!485 = distinct !{!485, !44, !497}
!486 = distinct !{!486, !44}
!487 = distinct !{!487, !44}
!488 = distinct !{!488, !44}
!489 = distinct !{!489, !44, !497}
!490 = distinct !{!490, !44, !497}
!491 = distinct !{!491, !44}
!492 = !{!317, !24, i64 6}
!493 = !{!482}
!494 = !{!317, !24, i64 8}
!495 = !{!317, !24, i64 2}
!496 = !{!317, !24, i64 10}
!497 = !{!"llvm.loop.unswitch.partial.disable"}
!498 = distinct !{!498, !44}
!499 = distinct !{!499, !44}
!500 = distinct !{!500, !44}
!501 = !{!195, !48, i64 8}
!502 = !{!193, !35, i64 24}
!503 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEEE", !19, i64 0}
!504 = !{!503, !503, i64 0}
!505 = !{!"p1 _ZTSSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE", !19, i64 0}
!506 = !{!505, !505, i64 0}
!507 = !{!"_ZTSSt4lessIfE"}
!508 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIfEE", !507, i64 0}
!509 = !{!"_ZTSNSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !508, i64 0, !36, i64 8}
!510 = !{!"_ZTSSt8_Rb_treeIfSt4pairIKfN5video6SColorEESt10_Select1stIS4_ESt4lessIfESaIS4_EE", !509, i64 0}
!511 = !{!"_ZTSSt3mapIfN5video6SColorESt4lessIfESaISt4pairIKfS1_EEE", !510, i64 0}
!512 = !{!"_ZTSN13WearBarParams9BlendModeE", !13, i64 0}
!513 = !{!"_ZTS13WearBarParams", !511, i64 0, !512, i64 48}
!514 = !{!513, !512, i64 48}
!515 = distinct !{!515, !44}
!516 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !19, i64 0}
!517 = !{!516, !516, i64 0}
!518 = !{!337, !337, i64 0}
!519 = distinct !{!519, !44}
!520 = distinct !{!520, !44}
!521 = distinct !{!521, !44}
!522 = !{!341, !340, i64 8}
!523 = !{!340, !340, i64 0}
!524 = distinct !{!524, !44}
!525 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeE", !337, i64 0}
!526 = !{!525, !337, i64 0}
!527 = !{i64 8}
!528 = distinct !{!528, !44}
!529 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEsE", !88, i64 0, !24, i64 32}
!530 = !{!529, !24, i64 32}
!531 = distinct !{!531, !44}
!532 = distinct !{!532, !44}
!533 = distinct !{!533, !44}
!534 = distinct !{!534, !44}
!535 = distinct !{!535, !44}
!536 = distinct !{!536, !44}
!537 = distinct !{!537, !44}
!538 = distinct !{!538, !44}
!539 = distinct !{!539, !44}
end_hunk_1
