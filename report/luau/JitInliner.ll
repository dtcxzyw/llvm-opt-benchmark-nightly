Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/JitInliner?download=true
inline.NumInlined: 5848
inline.NumDeleted: 2548
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE9makeBlockEj:bb.a
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 16) #25
  resume { ptr, i32 } %i.y

_ZNSt13unordered_mapIjN4Luau8Bytecode4BcOpESt4hashIjESt8equal_toIjESaISt4pairIKjS2_EEEixERS8_.exit: ; preds = %bb.c, %bb.b, %.loopexit.i.i
  %.pn.i.i = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.k, %bb.b ], [ %i.p, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 12
  store i32 %i.b, ptr %.1.i.i, align 4, !tbaa !16
  %i.z = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = lshr i32 %i.b, 4
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  store i32 %1, ptr %i.af, align 8, !tbaa !788
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !176  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !176  ; 4 uses
  %.not = icmp ugt i32 %i.c, %i.e
  %i.f = load ptr, ptr %1, align 8, !tbaa !184    ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !184    ; 4 uses
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i32 %i.c, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !572

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.c, 1
  br i1 %i.j, label %bb.f, label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.f, align 4
  store i64 %i.k, ptr %i.g, align 4
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load i32, ptr %i.d, align 8, !tbaa !176  ; 2 uses
  %i.m = load i32, ptr %i.b, align 8, !tbaa !176
  %i.n = icmp ugt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %.lr.ph
  %i.o = phi i32 [ %i.p, %.lr.ph ], [ %i.l, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit ]
  %i.p = add i32 %i.o, -1                         ; 3 uses
  store i32 %i.p, ptr %i.d, align 8, !tbaa !176
  %i.q = load i32, ptr %i.b, align 8, !tbaa !176
  %i.r = icmp ugt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !789

bb.g:                                             ; preds = %bb.b
  %i.s = icmp ugt i32 %i.e, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !572

bb.h:                                             ; preds = %bb.g
  %i.t = zext i32 %i.e to i64
  %.idx16 = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.f, i64 %.idx16, i1 false)
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15

bb.i:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.e, 1
  br i1 %i.u, label %bb.j, label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.f, align 4
  store i64 %i.v, ptr %i.g, align 4
  br label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15

_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15: ; preds = %bb.h, %bb.i, %bb.j
  %i.w = load i32, ptr %i.b, align 8, !tbaa !176  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !679  ; 3 uses
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge

_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge: ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !184
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

bb.k:                                             ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15
  %i.aa = lshr i32 %i.y, 1
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = icmp ugt i32 %i.ab, %i.w
  %i.ad = add i32 %i.w, 4
  %.09.i.i = select i1 %i.ac, i32 %i.ab, i32 %i.ad ; 2 uses
  %i.ae = zext i32 %.09.i.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27 ; 6 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !184   ; 7 uses
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !176 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx.i.i = shl nuw nsw i64 %i.aj, 3            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %i.al = ptrtoaddr ptr %i.ah to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ao = lshr exact i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 72
  %i.aq = sub i64 %i.al, %i.am
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ag, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ah, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.au ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 4
  %wide.load28 = load <2 x i64>, ptr %i.av, align 4
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load28, ptr %i.aw, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.preheader49:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %i.ay = load i64, ptr %.sroa.08.012.i.i.i.i.i.i, align 4
  store i64 %i.ay, ptr %.013.i.i.i.i.i.i, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !791

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.ah, %i.bb
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.ah) #23
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.l, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !184
  store i32 %.09.i.i, ptr %i.x, align 4, !tbaa !679
  %.pre = load i32, ptr %i.b, align 8, !tbaa !176
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit: ; preds = %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i
  %i.bc = phi ptr [ %.pre17, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge ], [ %i.ag, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ] ; 2 uses
  %i.bd = phi i32 [ %i.w, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit15._ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit_crit_edge ], [ %.pre, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ] ; 3 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !184   ; 3 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !176 ; 2 uses
  %i.bg = zext i32 %i.bd to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %.not9.i.i.i = icmp eq i32 %i.bf, %i.bd
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.bi = ptrtoaddr ptr %i.be to i64
  %i.bj = ptrtoaddr ptr %i.bc to i64
  %i.bk = zext i32 %i.bf to i64                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bk ; 3 uses
  %i.bn = shl nuw nsw i64 %i.bg, 3
  %2 = shl nuw nsw i64 %i.bk, 3
  %3 = add nsw i64 %i.bn, -8
  %i.bo = sub nsw i64 %3, %2                      ; 2 uses
  %i.bp = lshr exact i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %i.bo, 72
  %i.br = sub i64 %i.bi, %i.bj
  %diff.check31 = icmp ugt i64 %i.br, -32
  %or.cond47 = select i1 %min.iters.check33, i1 true, i1 %diff.check31
  br i1 %or.cond47, label %.lr.ph.i.i.i.preheader48, label %vector.ph34

vector.ph34:                                      ; preds = %.lr.ph.i.i.i.preheader
  %n.vec35 = and i64 %i.bq, 4611686018427387900   ; 3 uses
  %i.bs = shl i64 %n.vec35, 3                     ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bl, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bm, i64 %i.bs
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.bv = shl i64 %index37, 3                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.bl, i64 %i.bv ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bm, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load40 = load <2 x i64>, ptr %next.gep39, align 4
  %wide.load41 = load <2 x i64>, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %next.gep38, i64 16
  store <2 x i64> %wide.load40, ptr %next.gep38, align 4
  store <2 x i64> %wide.load41, ptr %i.bx, align 4
  %index.next42 = add nuw i64 %index37, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.by, label %middle.block43, label %vector.body36, !llvm.loop !792

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %i.bq, %n.vec35
  br i1 %cmp.n44, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.preheader48

.lr.ph.i.i.i.preheader48:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block43
  %.011.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.preheader ], [ %i.bt, %middle.block43 ]
  %.0810.i.i.i.ph = phi ptr [ %i.bm, %.lr.ph.i.i.i.preheader ], [ %i.bu, %middle.block43 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader48, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %i.bz = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.bz, ptr %.011.i.i.i, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.ca, %i.bh
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !793

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block43
  %.pre18 = load i32, ptr %i.b, align 8, !tbaa !176
  br label %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit

_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit: ; preds = %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit
  %i.cc = phi i32 [ %.pre18, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit.loopexit ], [ %i.bd, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE7reserveEj.exit ]
  store i32 %i.cc, ptr %i.d, align 8, !tbaa !176
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZSt4copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %_ZSt18uninitialized_copyIPKN4Luau8Bytecode11BcBlockEdgeEPS2_ET0_T_S7_S6_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode19BytecodeGraphParserIP10lua_TValueE12addSuccessorENS0_4BcOpES5_NS0_15BcBlockEdgeKindE(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 %1, i32 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !158, !nonnull !167, !align !168
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i32 %1, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !170  ; 2 uses
  %i.f = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = lshr i32 %2, 4
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %i.e, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !176  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 68 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !679
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !184
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.l, 1
  %i.q = lshr i32 %i.l, 1
  %i.r = add i32 %i.q, %i.l                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %i.p
  %i.t = add i32 %i.l, 5
  %.09.i.i = select i1 %i.s, i32 %i.r, i32 %i.t   ; 2 uses
  %i.u = zext i32 %.09.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 6 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !184  ; 7 uses
  %i.y = load i32, ptr %i.k, align 8, !tbaa !176  ; 3 uses
  %i.z = zext i32 %i.y to i64
  %.idx.i.i = shl nuw nsw i64 %i.z, 3             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.ab = ptrtoaddr ptr %i.x to i64
  %i.ac = ptrtoaddr ptr %i.w to i64
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 72
  %i.ag = sub i64 %i.ab, %i.ac
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 4
  %wide.load29 = load <2 x i64>, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load29, ptr %i.am, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.i.preheader50:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader50 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader50 ] ; 2 uses
  %i.ao = load i64, ptr %.sroa.08.012.i.i.i.i.i.i, align 4
  store i64 %i.ao, ptr %.013.i.i.i.i.i.i, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !795

_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.not.i.i = icmp eq ptr %i.x, %i.ar
  br i1 %.not.i.i, label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.x) #23
  %.pre2.pre.i = load i32, ptr %i.k, align 8, !tbaa !176
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i: ; preds = %bb.c, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i
  %.pre2.i = phi i32 [ %i.y, %_ZSt18uninitialized_moveIPN4Luau8Bytecode11BcBlockEdgeES3_ET0_T_S5_S4_.exit.i.i ], [ %.pre2.pre.i, %bb.c ]
  store ptr %i.w, ptr %i.j, align 8, !tbaa !184
  store i32 %.09.i.i, ptr %i.m, align 4, !tbaa !679
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit

_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit: ; preds = %._crit_edge.i, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i
  %i.as = phi i32 [ %i.l, %._crit_edge.i ], [ %.pre2.i, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ]
  %i.at = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.w, %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE4growEj.exit.i ]
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %.sroa.423.0.insert.ext = zext i32 %2 to i64
  %.sroa.423.0.insert.shift = shl nuw i64 %.sroa.423.0.insert.ext, 32
  %.sroa.022.0.insert.ext = zext i32 %3 to i64    ; 2 uses
  %.sroa.022.0.insert.insert = or disjoint i64 %.sroa.423.0.insert.shift, %.sroa.022.0.insert.ext
  store i64 %.sroa.022.0.insert.insert, ptr %i.av, align 4
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !176
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.k, align 8, !tbaa !176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !176 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 100 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !679
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.d, label %._crit_edge.i7

._crit_edge.i7:                                   ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit
  %.pre.i8 = load ptr, ptr %i.ay, align 8, !tbaa !184
  br label %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit21

bb.d:                                             ; preds = %_ZN4Luau11SmallVectorINS_8Bytecode11BcBlockEdgeELj2EE9push_backEOS2_.exit
  %i.be = add i32 %i.ba, 1
end_hunk_0
begin_hunk_1_@_ZN4Luau8Bytecode4SccpIP10lua_TValueE9propagateEv:bb.a
  %i.ov = lshr i64 %i.os, 6                       ; 2 uses
  %i.ow = and i64 %i.os, 63                       ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ov
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !551 ; 2 uses
  %i.oz = lshr i64 %i.oy, %i.ow
  %i.pa = trunc i64 %i.oz to i1
  %.pre.i.i130 = load ptr, ptr %i.ng, align 8, !tbaa !1272 ; 2 uses
  br i1 %i.pa, label %.lr.ph.i.i.i137, label %.loopexit.i3.i131

.lr.ph.i.i.i137:                                  ; preds = %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127, %bb.ak
  %.08.i.i.i138 = phi i64 [ %i.pf, %bb.ak ], [ %i.os, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ] ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i130, i64 %.08.i.i.i138
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = icmp eq i32 %i.pc, %.sroa.054.0.copyload
  br i1 %i.pd, label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i137
  %i.pe = add i64 %.08.i.i.i138, 1
  %i.pf = and i64 %i.pe, %i.oo                    ; 4 uses
  %i.pg = lshr i64 %i.pf, 6                       ; 2 uses
  %i.ph = and i64 %i.pf, 63                       ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.pg
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !551 ; 2 uses
  %i.pk = lshr i64 %i.pj, %i.ph
  %i.pl = trunc i64 %i.pk to i1
  br i1 %i.pl, label %.lr.ph.i.i.i137, label %.loopexit.i3.i131, !llvm.loop !1274

.loopexit.i3.i131:                                ; preds = %bb.ak, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127
  %.pre-phi14.i.i132 = phi i64 [ %i.ow, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.ph, %bb.ak ]
  %i.pm = phi i64 [ %i.oy, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.pj, %bb.ak ]
  %.pre-phi.i.i133 = phi i64 [ %i.ov, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.pg, %bb.ak ]
  %.0.lcssa.i.ph.i.i134 = phi i64 [ %i.os, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit.i127 ], [ %i.pf, %bb.ak ]
  %i.pn = shl nuw i64 1, %.pre-phi14.i.i132
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %.pre-phi.i.i133
  %i.pp = or i64 %i.pm, %i.pn
  store i64 %i.pp, ptr %i.po, align 8, !tbaa !551
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i130, i64 %.0.lcssa.i.ph.i.i134
  store i32 %.sroa.054.0.copyload, ptr %i.pq, align 4, !tbaa !16
  %i.pr = load i64, ptr %i.nh, align 8, !tbaa !1269
  %i.ps = add i64 %i.pr, 1
  store i64 %i.ps, ptr %i.nh, align 8, !tbaa !1269
  br label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141

_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141: ; preds = %.lr.ph.i.i.i137, %.loopexit.i3.i131
  %i.pt = load i64, ptr %i.at, align 8, !tbaa !1269
  %i.pu = icmp eq i64 %i.pt, 0
  br i1 %i.pu, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141
  %i.pv = load i64, ptr %i.au, align 8, !tbaa !1270
  %i.pw = add i64 %i.pv, -1
  %i.px = mul i64 %.sroa.4.0.extract.shift, -7046029254386353131
  %i.py = load i8, ptr %i.av, align 8, !tbaa !625
  %i.pz = zext nneg i8 %i.py to i64
  %i.qa = lshr i64 %i.px, %i.pz                   ; 3 uses
  %i.qb = load ptr, ptr %i.aw, align 8, !tbaa !1271 ; 2 uses
  %i.qc = lshr i64 %i.qa, 6
  %i.qd = and i64 %i.qa, 63
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.qc
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !551
  %i.qg = lshr i64 %i.qf, %i.qd
  %i.qh = trunc i64 %i.qg to i1
  br i1 %i.qh, label %.lr.ph.i.i.i145, label %.loopexit

.lr.ph.i.i.i145:                                  ; preds = %bb.al
  %i.qi = load ptr, ptr %i.as, align 8, !tbaa !1272
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph.i.i.i145
  %.08.i.i.i146 = phi i64 [ %i.qa, %.lr.ph.i.i.i145 ], [ %i.qn, %bb.an ] ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %.08.i.i.i146
  %i.qk = load i32, ptr %i.qj, align 4
  %i.ql = icmp eq i32 %i.qk, %.sroa.4.0.extract.trunc
  br i1 %i.ql, label %_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit147, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qm = add i64 %.08.i.i.i146, 1
  %i.qn = and i64 %i.qm, %i.pw                    ; 3 uses
  %i.qo = lshr i64 %i.qn, 6
  %i.qp = and i64 %i.qn, 63
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %i.qo
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !551
  %i.qs = lshr i64 %i.qr, %i.qp
  %i.qt = trunc i64 %i.qs to i1
  br i1 %i.qt, label %bb.am, label %.loopexit, !llvm.loop !1274

.loopexit:                                        ; preds = %bb.an, %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE6insertERKS2_.exit141, %bb.al
  %i.qu = load i64, ptr %i.ab, align 8, !tbaa !1264 ; 10 uses
  %i.qv = load i64, ptr %i.ad, align 8, !tbaa !1265 ; 2 uses
  %i.qw = icmp eq i64 %i.qu, %i.qv
  br i1 %i.qw, label %bb.ao, label %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge

.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge: ; preds = %.loopexit
  %.pre254 = load i64, ptr %i.ai, align 8, !tbaa !1266
  %.pre255 = load ptr, ptr %i.y, align 8, !tbaa !1267
  br label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150

bb.ao:                                            ; preds = %.loopexit
  %.not.i = icmp eq i64 %i.qu, 0
  %i.qx = mul i64 %i.qu, 3
  %i.qy = lshr i64 %i.qx, 1
  %i.qz = add nuw i64 %i.qy, 1
  %i.ra = select i1 %.not.i, i64 4, i64 %i.qz     ; 5 uses
  %i.rb = icmp ugt i64 %i.ra, 4611686018427387903
  br i1 %i.rb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.rc = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %i.rc, align 8, !tbaa !342
  call void @__cxa_throw(ptr nonnull %i.rc, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #26
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.rd = icmp samesign ugt i64 %i.ra, 2305843009213693951
  br i1 %i.rd, label %bb.ar, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i, !prof !477

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i: ; preds = %bb.aq
  %i.re = shl nuw nsw i64 %i.ra, 2
  %i.rf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.re) #24 ; 8 uses
  %i.rg = ptrtoaddr ptr %i.rf to i64              ; 2 uses
  %i.rh = load i64, ptr %i.ai, align 8, !tbaa !1266 ; 3 uses
  %i.ri = sub i64 %i.qu, %i.rh                    ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ri, i64 %i.qu) ; 6 uses
  %i.rj = sub i64 %i.qu, %.sroa.speculated.i
  %.not19.i = icmp eq i64 %.sroa.speculated.i, 0
  %.pre.pre.i = load ptr, ptr %i.y, align 8, !tbaa !1267 ; 8 uses
  %.pre.pre.i313 = ptrtoaddr ptr %.pre.pre.i to i64 ; 2 uses
  br i1 %.not19.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.i, i64 %i.rh ; 5 uses
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx.i
  %i.rm = add nsw i64 %.idx.i, -4                 ; 2 uses
  %i.rn = lshr exact i64 %i.rm, 2
  %i.ro = add nuw nsw i64 %i.rn, 1                ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.rm, 28
  br i1 %min.iters.check320, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %bb.as
  %i.rp = shl i64 %i.rh, 2
  %i.rq = add i64 %i.rp, %.pre.pre.i313
  %i.rr = sub i64 %i.rq, %i.rg
  %diff.check318 = icmp ugt i64 %i.rr, -32
  br i1 %diff.check318, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck317
  %n.vec322 = and i64 %i.ro, 9223372036854775800  ; 3 uses
  %i.rs = shl i64 %n.vec322, 2                    ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rf, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.rk, i64 %i.rs
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.rv = shl i64 %index324, 2                    ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.rf, i64 %i.rv ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.rk, i64 %i.rv ; 2 uses
  %i.rw = getelementptr i8, ptr %next.gep326, i64 16
  %wide.load327 = load <4 x i32>, ptr %next.gep326, align 4, !tbaa !16
  %wide.load328 = load <4 x i32>, ptr %i.rw, align 4, !tbaa !16
  %i.rx = getelementptr i8, ptr %next.gep325, i64 16
  store <4 x i32> %wide.load327, ptr %next.gep325, align 4, !tbaa !16
  store <4 x i32> %wide.load328, ptr %i.rx, align 4, !tbaa !16
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.ry = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.ry, label %middle.block330, label %vector.body323, !llvm.loop !1284

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.ro, %n.vec322
  br i1 %cmp.n331, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck317, %bb.as, %middle.block330
  %.013.i.i.i.i.i.ph = phi ptr [ %i.rf, %vector.memcheck317 ], [ %i.rf, %bb.as ], [ %i.rt, %middle.block330 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.rk, %vector.memcheck317 ], [ %i.rk, %bb.as ], [ %i.ru, %middle.block330 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.sb, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.rz = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !16
  store i32 %i.rz, ptr %.013.i.i.i.i.i, align 4, !tbaa !16
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.sa, %i.rl
  br i1 %.not.i.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1285

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block330, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit.i
  %.not20.not.i = icmp ugt i64 %i.qu, %i.ri
  br i1 %.not20.not.i, label %bb.at, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit

bb.at:                                            ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i
  %.idx29.i = shl nuw nsw i64 %i.rj, 2
  %i.sc = getelementptr inbounds nuw i8, ptr %.pre.pre.i, i64 %.idx29.i
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %.sroa.speculated.i ; 4 uses
  %i.se = shl i64 %i.qu, 2
  %4 = shl i64 %.sroa.speculated.i, 2
  %5 = add i64 %i.se, -4
  %i.sf = sub i64 %5, %4                          ; 2 uses
  %i.sg = lshr exact i64 %i.sf, 2
  %i.sh = add nuw nsw i64 %i.sg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.sf, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i22.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.at
  %i.si = shl i64 %.sroa.speculated.i, 2
  %i.sj = add i64 %i.si, %i.rg
  %i.sk = sub i64 %.pre.pre.i313, %i.sj
  %diff.check = icmp ugt i64 %i.sk, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i22.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.sh, 9223372036854775800     ; 3 uses
  %i.sl = shl i64 %n.vec, 2                       ; 2 uses
  %i.sm = getelementptr i8, ptr %i.sd, i64 %i.sl
  %i.sn = getelementptr i8, ptr %.pre.pre.i, i64 %i.sl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.so = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.sd, i64 %i.so ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.pre.pre.i, i64 %i.so ; 2 uses
  %i.sp = getelementptr i8, ptr %next.gep314, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep314, align 4, !tbaa !16
  %wide.load315 = load <4 x i32>, ptr %i.sp, align 4, !tbaa !16
  %i.sq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load315, ptr %i.sq, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sr = icmp eq i64 %index.next, %n.vec
  br i1 %i.sr, label %middle.block, label %vector.body, !llvm.loop !1286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sh, %n.vec
  br i1 %cmp.n, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit, label %.lr.ph.i.i.i.i22.i.preheader

.lr.ph.i.i.i.i22.i.preheader:                     ; preds = %vector.memcheck, %bb.at, %middle.block
  %.013.i.i.i.i23.i.ph = phi ptr [ %i.sd, %vector.memcheck ], [ %i.sd, %bb.at ], [ %i.sm, %middle.block ]
  %.sroa.08.012.i.i.i.i24.i.ph = phi ptr [ %.pre.pre.i, %vector.memcheck ], [ %.pre.pre.i, %bb.at ], [ %i.sn, %middle.block ]
  br label %.lr.ph.i.i.i.i22.i

.lr.ph.i.i.i.i22.i:                               ; preds = %.lr.ph.i.i.i.i22.i.preheader, %.lr.ph.i.i.i.i22.i
  %.013.i.i.i.i23.i = phi ptr [ %i.su, %.lr.ph.i.i.i.i22.i ], [ %.013.i.i.i.i23.i.ph, %.lr.ph.i.i.i.i22.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i24.i = phi ptr [ %i.st, %.lr.ph.i.i.i.i22.i ], [ %.sroa.08.012.i.i.i.i24.i.ph, %.lr.ph.i.i.i.i22.i.preheader ] ; 2 uses
  %i.ss = load i32, ptr %.sroa.08.012.i.i.i.i24.i, align 4, !tbaa !16
  store i32 %i.ss, ptr %.013.i.i.i.i23.i, align 4, !tbaa !16
  %i.st = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i24.i, i64 4 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i23.i, i64 4
  %.not.i.i.i.i25.i = icmp eq ptr %i.st, %i.sc
  br i1 %.not.i.i.i.i25.i, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit, label %.lr.ph.i.i.i.i22.i, !llvm.loop !1287

_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit: ; preds = %.lr.ph.i.i.i.i22.i, %middle.block, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit.i
  %i.sv = shl i64 %i.qu, 2
  call void @_ZdlPvm(ptr noundef %.pre.pre.i, i64 noundef %i.sv) #25
  store ptr %i.rf, ptr %i.y, align 8, !tbaa !1267
  store i64 %i.ra, ptr %i.ad, align 8, !tbaa !1265
  store i64 0, ptr %i.ai, align 8, !tbaa !1266
  %.pre.i148 = load i64, ptr %i.ab, align 8, !tbaa !1264
  br label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150

_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150: ; preds = %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit
  %i.sw = phi ptr [ %i.rf, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %.pre255, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.sx = phi i64 [ 0, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %.pre254, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.sy = phi i64 [ %i.ra, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %i.qv, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.sz = phi i64 [ %.pre.i148, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv.exit ], [ %i.qu, %.loopexit._ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150_crit_edge ]
  %i.ta = add i64 %i.sx, %i.sz
  %i.tb = urem i64 %i.ta, %i.sy
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.tb
  store i32 %.sroa.4.0.extract.trunc, ptr %i.tc, align 4, !tbaa !16
  %i.td = load i64, ptr %i.ab, align 8, !tbaa !1264
  %i.te = add i64 %i.td, 1
  store i64 %i.te, ptr %i.ab, align 8, !tbaa !1264
  br label %_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit147

_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit147: ; preds = %bb.aa, %bb.am, %bb.y, %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEEixERKj.exit, %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9push_backERKS2_.exit150, %bb.q
  %i.tf = getelementptr inbounds nuw i8, ptr %.067221, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.tf, %i.eq
  br i1 %.not, label %._crit_edge224, label %bb.q

_ZNK4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EE8containsERKS2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i84, %.loopexit.i3.i
  %i.tg = load i64, ptr %i.ab, align 8, !tbaa !1264 ; 2 uses
  %i.th = icmp eq i64 %i.tg, 0
  br i1 %i.th, label %.preheader, label %.lr.ph225

bb.au:                                            ; preds = %.lr.ph226, %bb.ay
  %i.ti = phi i64 [ %i.bk, %.lr.ph226 ], [ %i.tv, %bb.ay ]
  %i.tj = load ptr, ptr %i.bd, align 8, !tbaa !1267
  %i.tk = load i64, ptr %i.be, align 8, !tbaa !1266 ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.tk
  %.sroa.011.0.copyload = load i32, ptr %i.tl, align 4, !tbaa !16 ; 3 uses
  %i.tm = add i64 %i.tk, 1                        ; 2 uses
  store i64 %i.tm, ptr %i.be, align 8, !tbaa !1266
  %i.tn = add i64 %i.ti, -1
  store i64 %i.tn, ptr %i.ar, align 8, !tbaa !1264
  %i.to = load i64, ptr %i.bf, align 8, !tbaa !1265
  %i.tp = icmp eq i64 %i.tm, %i.to
  br i1 %i.tp, label %bb.av, label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151

bb.av:                                            ; preds = %bb.au
  store i64 0, ptr %i.be, align 8, !tbaa !1266
  br label %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151

_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151: ; preds = %bb.au, %bb.av
  %i.tq = and i32 %.sroa.011.0.copyload, 15
  switch i32 %i.tq, label %bb.ay [
    i32 2, label %bb.aw
    i32 4, label %bb.ax
  ]

bb.aw:                                            ; preds = %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151
  %i.tr = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  call void @_ZN4Luau8Bytecode4SccpIP10lua_TValueE9visitInstENS0_5BcRefINS0_6BcInstEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nonnull %i.ts, i32 %.sroa.011.0.copyload)
  br label %bb.ay

bb.ax:                                            ; preds = %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151
  %i.tt = load ptr, ptr %0, align 8, !tbaa !1263, !nonnull !167, !align !168
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 104
  call void @_ZN4Luau8Bytecode4SccpIP10lua_TValueE8visitPhiENS0_5BcRefINS0_5BcPhiEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nonnull %i.tu, i32 %.sroa.011.0.copyload)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE9pop_frontEv.exit151, %bb.ax, %bb.aw
  %i.tv = load i64, ptr %i.ar, align 8, !tbaa !1264 ; 2 uses
  %i.tw = icmp eq i64 %i.tv, 0
  br i1 %i.tw, label %.thread-pre-split_crit_edge, label %bb.au, !llvm.loop !1288

bb.az:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode4SccpIP10lua_TValueED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1267
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1265
  %i.e = shl i64 %i.d, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.e) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #23
  store ptr null, ptr %i.f, align 8, !tbaa !1272
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1271
  tail call void @_ZdlPv(ptr noundef %i.j) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  tail call void @_ZdlPv(ptr noundef null) #23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.k, align 8, !tbaa !1270
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 64, ptr %i.l, align 8, !tbaa !625
  br label %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit

_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit: ; preds = %bb.a, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1271
  tail call void @_ZdlPv(ptr noundef %i.n) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1267
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1265
  %i.s = shl i64 %i.r, 2
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1282
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit
  invoke void @_ZN4Luau6detail15DenseHashTable2IjSt4pairIjNS_13DenseHashSet2INS_8Bytecode4BcOpENS4_8BcOpHashESt8equal_toIS5_EEEES2_IKjS9_ENS0_17ItemInterfaceMap2IjS9_EESt4hashIjES7_IjEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit: ; preds = %_ZN4Luau13DenseHashSet2INS_8Bytecode4BcOpENS1_8BcOpHashESt8equal_toIS2_EED2Ev.exit, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1281
  tail call void @_ZdlPv(ptr noundef %i.y) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1289 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN4Luau8Bytecode9SccpStateD2Ev.exit, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i.i

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE7destroyEv.exit.i.i.i: ; preds = %_ZN4Luau13DenseHashMap2IjNS_13DenseHashSet2INS_8Bytecode4BcOpENS2_8BcOpHashESt8equal_toIS3_EEESt4hashIjES5_IjEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_1
begin_hunk_2_@_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE4growEv:bb.a
  %i.am = load i64, ptr %i.al, align 8, !tbaa !551 ; 2 uses
  %i.an = lshr i64 %i.am, %i.ak
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i17, label %.loopexit

.lr.ph.i17:                                       ; preds = %bb.e, %bb.f
  %.08.i = phi i64 [ %i.at, %bb.f ], [ %i.ai, %bb.e ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.08.i
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp eq i32 %i.aq, %.0.copyload.i.i.i
  br i1 %i.ar, label %.lr.ph.i17..loopexit.loopexit_crit_edge, label %bb.f

.lr.ph.i17..loopexit.loopexit_crit_edge:          ; preds = %.lr.ph.i17
  %.pre56 = lshr i64 %.08.i, 6
  %.pre57 = and i64 %.08.i, 63
  br label %.loopexit.loopexit

bb.f:                                             ; preds = %.lr.ph.i17
  %i.as = add i64 %.08.i, 1
  %i.at = and i64 %i.as, %i.ad                    ; 4 uses
  %i.au = lshr i64 %i.at, 6                       ; 2 uses
  %i.av = and i64 %i.at, 63                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !551
  %i.ay = lshr i64 %i.ax, %i.av
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %.lr.ph.i17, label %.loopexit.loopexit, !llvm.loop !1274

.loopexit.loopexit:                               ; preds = %bb.f, %.lr.ph.i17..loopexit.loopexit_crit_edge
  %.pre54.pre-phi = phi i64 [ %.pre57, %.lr.ph.i17..loopexit.loopexit_crit_edge ], [ %i.av, %bb.f ]
  %.pre52.pre-phi = phi i64 [ %.pre56, %.lr.ph.i17..loopexit.loopexit_crit_edge ], [ %i.au, %bb.f ] ; 2 uses
  %.0.lcssa.i.ph = phi i64 [ %.08.i, %.lr.ph.i17..loopexit.loopexit_crit_edge ], [ %i.at, %bb.f ]
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0, i64 %.pre52.pre-phi
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !551
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %.pre-phi55 = phi i64 [ %.pre54.pre-phi, %.loopexit.loopexit ], [ %i.ak, %bb.e ]
  %i.ba = phi i64 [ %.pre, %.loopexit.loopexit ], [ %i.am, %bb.e ]
  %.pre-phi = phi i64 [ %.pre52.pre-phi, %.loopexit.loopexit ], [ %i.aj, %bb.e ]
  %.0.lcssa.i = phi i64 [ %.0.lcssa.i.ph, %.loopexit.loopexit ], [ %i.ai, %bb.e ]
  %i.bb = shl nuw i64 1, %.pre-phi55
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0, i64 %.pre-phi
  %i.bd = or i64 %i.ba, %i.bb
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !551
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.0.lcssa.i
  %i.bf = load i32, ptr %i.ag, align 4, !tbaa !16
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !16
  %i.bg = add i64 %.sroa.14.034, -1
  %i.bh = and i64 %i.bg, %.sroa.14.034            ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i18.preheader, label %._crit_edge.i

.lr.ph.i18.preheader:                             ; preds = %.loopexit
  %i.bj = add i64 %.sroa.722.033, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.bj) ; 2 uses
  %i.bk = add i64 %.sroa.722.033, 1               ; 2 uses
  %.not.i1993 = icmp ult i64 %i.bk, %i.s
  br i1 %.not.i1993, label %.lr.ph94, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit

.lr.ph.i18:                                       ; preds = %.lr.ph94
  %i.bl = add i64 %i.bm, 1                        ; 2 uses
  %.not.i19 = icmp ult i64 %i.bl, %i.s
  br i1 %.not.i19, label %.lr.ph94, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit, !llvm.loop !1360

.lr.ph94:                                         ; preds = %.lr.ph.i18.preheader, %.lr.ph.i18
  %i.bm = phi i64 [ %i.bl, %.lr.ph.i18 ], [ %i.bk, %.lr.ph.i18.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !551 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i18, label %._crit_edge.i, !llvm.loop !1360

._crit_edge.i:                                    ; preds = %.lr.ph94, %.loopexit
  %.sroa.722.2 = phi i64 [ %.sroa.722.033, %.loopexit ], [ %i.bm, %.lr.ph94 ] ; 2 uses
  %.sroa.14.2 = phi i64 [ %i.bh, %.loopexit ], [ %i.bo, %.lr.ph94 ] ; 2 uses
  %i.bq = shl i64 %.sroa.722.2, 6
  %i.br = tail call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.14.2, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bq
  br label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpES3_S3_NS0_17ItemInterfaceSet2IS3_EENS2_8BcOpHashESt8equal_toIS3_EE6BitSet8iteratorppEv.exit: ; preds = %.lr.ph.i18, %.lr.ph.i18.preheader, %._crit_edge.i
  %.sroa.722.3 = phi i64 [ %.sroa.722.2, %._crit_edge.i ], [ %umax, %.lr.ph.i18.preheader ], [ %umax, %.lr.ph.i18 ] ; 2 uses
  %.sroa.14.4 = phi i64 [ %.sroa.14.2, %._crit_edge.i ], [ 0, %.lr.ph.i18.preheader ], [ 0, %.lr.ph.i18 ] ; 2 uses
  %.sroa.19.2 = phi i64 [ %i.bs, %._crit_edge.i ], [ %.sroa.19.035, %.lr.ph.i18.preheader ], [ %.sroa.19.035, %.lr.ph.i18 ]
  %.not.i14 = icmp ne i64 %.sroa.722.3, %i.s
  %i.bt = icmp ne i64 %.sroa.14.4, 0
  %i.bu = or i1 %.not.i14, %i.bt
  br i1 %i.bu, label %bb.e, label %._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8VecDequeINS_8Bytecode4BcOpESaIS2_EE4growEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1265 ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = mul i64 %i.b, 3
  %i.d = lshr i64 %i.c, 1
  %i.e = add nuw i64 %i.d, 1
  %i.f = select i1 %.not, i64 4, i64 %i.e         ; 4 uses
  %i.g = icmp ugt i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt20bad_array_new_length, i64 16), ptr %i.h, align 8, !tbaa !342
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit, !prof !477

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit: ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.f, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 7 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1266 ; 3 uses
  %i.p = sub i64 %i.b, %i.o                       ; 2 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !551  ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 6 uses
  %i.r = sub i64 %i.q, %.sroa.speculated
  %.not19 = icmp eq i64 %.sroa.speculated, 0
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !1267 ; 8 uses
  %.pre.pre30 = ptrtoaddr ptr %.pre.pre to i64    ; 2 uses
  br i1 %.not19, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %i.o ; 5 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.u = add nsw i64 %.idx, -4                    ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.e
  %i.x = shl i64 %i.o, 2
  %i.y = add i64 %i.x, %.pre.pre30
  %i.z = sub i64 %i.y, %i.l
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ad ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep31, align 4, !tbaa !16
  %wide.load32 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !16
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !16
  store <4 x i32> %wide.load32, ptr %i.af, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1361

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %bb.e, %middle.block
  %.013.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %bb.e ], [ %i.ab, %middle.block ]
  %.sroa.08.012.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %bb.e ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ah = load i32, ptr %.sroa.08.012.i.i.i.i, align 4, !tbaa !16
  store i32 %i.ah, ptr %.013.i.i.i.i, align 4, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.t
  br i1 %.not.i.i.i.i, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1362

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt15__new_allocatorIN4Luau8Bytecode4BcOpEE8allocateEmPKv.exit
  %.not20.not = icmp ugt i64 %i.q, %i.p
  br i1 %.not20.not, label %bb.f, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27

bb.f:                                             ; preds = %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit
  %.idx29 = shl nuw nsw i64 %i.r, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.idx29
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.speculated ; 4 uses
  %i.am = shl i64 %i.q, 2
  %1 = shl i64 %.sroa.speculated, 2
  %2 = add i64 %i.am, -4
  %i.an = sub i64 %2, %1                          ; 2 uses
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check37 = icmp ult i64 %i.an, 76
  br i1 %min.iters.check37, label %.lr.ph.i.i.i.i22.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %bb.f
  %i.aq = shl i64 %.sroa.speculated, 2
  %i.ar = add i64 %i.aq, %i.l
  %i.as = sub i64 %.pre.pre30, %i.ar
  %diff.check35 = icmp ugt i64 %i.as, -32
  br i1 %diff.check35, label %.lr.ph.i.i.i.i22.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %vector.memcheck34
  %n.vec39 = and i64 %i.ap, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec39, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.al, i64 %i.at
  %i.av = getelementptr i8, ptr %.pre.pre, i64 %i.at
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph38
  %index41 = phi i64 [ 0, %vector.ph38 ], [ %index.next46, %vector.body40 ] ; 2 uses
  %i.aw = shl i64 %index41, 2                     ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.al, i64 %i.aw ; 2 uses
  %next.gep43 = getelementptr i8, ptr %.pre.pre, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load44 = load <4 x i32>, ptr %next.gep43, align 4, !tbaa !16
  %wide.load45 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !16
  %i.ay = getelementptr i8, ptr %next.gep42, i64 16
  store <4 x i32> %wide.load44, ptr %next.gep42, align 4, !tbaa !16
  store <4 x i32> %wide.load45, ptr %i.ay, align 4, !tbaa !16
  %index.next46 = add nuw i64 %index41, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next46, %n.vec39
  br i1 %i.az, label %middle.block47, label %vector.body40, !llvm.loop !1363

middle.block47:                                   ; preds = %vector.body40
  %cmp.n48 = icmp eq i64 %i.ap, %n.vec39
  br i1 %cmp.n48, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27, label %.lr.ph.i.i.i.i22.preheader

.lr.ph.i.i.i.i22.preheader:                       ; preds = %vector.memcheck34, %bb.f, %middle.block47
  %.013.i.i.i.i23.ph = phi ptr [ %i.al, %vector.memcheck34 ], [ %i.al, %bb.f ], [ %i.au, %middle.block47 ]
  %.sroa.08.012.i.i.i.i24.ph = phi ptr [ %.pre.pre, %vector.memcheck34 ], [ %.pre.pre, %bb.f ], [ %i.av, %middle.block47 ]
  br label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %.lr.ph.i.i.i.i22.preheader, %.lr.ph.i.i.i.i22
  %.013.i.i.i.i23 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i22 ], [ %.013.i.i.i.i23.ph, %.lr.ph.i.i.i.i22.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i24 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i22 ], [ %.sroa.08.012.i.i.i.i24.ph, %.lr.ph.i.i.i.i22.preheader ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.08.012.i.i.i.i24, align 4, !tbaa !16
  store i32 %i.ba, ptr %.013.i.i.i.i23, align 4, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i24, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i23, i64 4
  %.not.i.i.i.i25 = icmp eq ptr %i.bb, %i.ak
  br i1 %.not.i.i.i.i25, label %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27, label %.lr.ph.i.i.i.i22, !llvm.loop !1364

_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit27: ; preds = %.lr.ph.i.i.i.i22, %middle.block47, %_ZSt18uninitialized_moveIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit
  %i.bd = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.bd) #25
  store ptr %i.k, ptr %0, align 8, !tbaa !1267
  store i64 %i.f, ptr %i.a, align 8, !tbaa !1265
  store i64 0, ptr %i.n, align 8, !tbaa !1266
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(24) ptr @_ZN4Luau13DenseHashMap2INS_8Bytecode4BcOpENS1_16ConstnessLatticeENS1_8BcOpHashESt8equal_toIS2_EEixERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1365 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1291 ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.d, -1
  %.0.copyload.i.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %.0.insert.ext.i.i.i.i.i = zext i32 %.0.copyload.i.i.i.i.i to i64
  %i.i = mul i64 %.0.insert.ext.i.i.i.i.i, -7046029254386353131
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !621
  %i.l = zext nneg i8 %i.k to i64
  %i.m = lshr i64 %i.i, %i.l                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1290 ; 2 uses
  %i.p = lshr i64 %i.m, 6
  %i.q = and i64 %i.m, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !551
  %i.t = lshr i64 %i.s, %i.q
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !1289
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw [28 x i8], ptr %i.v, i64 %.08.i.i.i
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, %.0.copyload.i.i.i.i.i
  br i1 %i.y, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add i64 %.08.i.i.i, 1
  %i.aa = and i64 %i.z, %i.h                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = and i64 %i.aa, 63
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ab
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !551
  %i.af = lshr i64 %i.ae, %i.ac
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.d, label %.loopexit.i, !llvm.loop !1366

.loopexit.i:                                      ; preds = %bb.e, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE4growEv(ptr noundef nonnull align 8 dereferenceable(51) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !1291
  br label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit: ; preds = %bb.d, %bb.a, %.loopexit.i
  %i.ah = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.d ]
  %i.ai = add i64 %i.ah, -1
  %.0.copyload.i.i.i.i = load i32, ptr %1, align 4 ; 2 uses
  %.0.insert.ext.i.i.i.i = zext i32 %.0.copyload.i.i.i.i to i64
  %i.aj = mul i64 %.0.insert.ext.i.i.i.i, -7046029254386353131
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !621
  %i.am = zext nneg i8 %i.al to i64
  %i.an = lshr i64 %i.aj, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1290 ; 3 uses
  %i.aq = lshr i64 %i.an, 6                       ; 2 uses
  %i.ar = and i64 %i.an, 63                       ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !551 ; 2 uses
  %i.au = lshr i64 %i.at, %i.ar
  %i.av = trunc i64 %i.au to i1
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !1289 ; 3 uses
  br i1 %i.av, label %.lr.ph.i.i, label %.loopexit.i3

.lr.ph.i.i:                                       ; preds = %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit, %bb.f
  %.08.i.i = phi i64 [ %i.ba, %bb.f ], [ %i.an, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [28 x i8], ptr %.pre.i, i64 %.08.i.i
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.ax, %.0.copyload.i.i.i.i
  br i1 %i.ay, label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE13insert_unsafeERS7_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.az = add i64 %.08.i.i, 1
  %i.ba = and i64 %i.az, %i.ai                    ; 4 uses
  %i.bb = lshr i64 %i.ba, 6                       ; 2 uses
  %i.bc = and i64 %i.ba, 63                       ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !551 ; 2 uses
  %i.bf = lshr i64 %i.be, %i.bc
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i, label %.loopexit.i3, !llvm.loop !1366

.loopexit.i3:                                     ; preds = %bb.f, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit
  %.pre-phi14.i = phi i64 [ %i.ar, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.bc, %bb.f ]
  %i.bh = phi i64 [ %i.at, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.be, %bb.f ]
  %.pre-phi.i = phi i64 [ %i.aq, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.bb, %bb.f ]
  %.0.lcssa.i.ph.i = phi i64 [ %i.an, %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE14rehash_if_fullERS7_.exit ], [ %i.ba, %bb.f ] ; 2 uses
  %i.bi = shl nuw i64 1, %.pre-phi14.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.pre-phi.i
  %i.bk = or i64 %i.bh, %i.bi
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !551
  %i.bl = getelementptr inbounds nuw [28 x i8], ptr %.pre.i, i64 %.0.lcssa.i.ph.i ; 2 uses
  %i.bm = load i32, ptr %1, align 4, !tbaa !16
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !1365
  %i.bp = add i64 %i.bo, 1
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !1365
  %.pre13.i = load ptr, ptr %0, align 8, !tbaa !1289
  br label %_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE13insert_unsafeERS7_.exit

_ZN4Luau6detail15DenseHashTable2INS_8Bytecode4BcOpESt4pairIS3_NS2_16ConstnessLatticeEES4_IKS3_S5_ENS0_17ItemInterfaceMap2IS3_S5_EENS2_8BcOpHashESt8equal_toIS3_EE13insert_unsafeERS7_.exit: ; preds = %.lr.ph.i.i, %.loopexit.i3
  %i.bq = phi ptr [ %.pre13.i, %.loopexit.i3 ], [ %.pre.i, %.lr.ph.i.i ]
  %.0.lcssa.i10.i = phi i64 [ %.0.lcssa.i.ph.i, %.loopexit.i3 ], [ %.08.i.i, %.lr.ph.i.i ]
  %i.br = getelementptr inbounds nuw [28 x i8], ptr %i.bq, i64 %.0.lcssa.i10.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  ret ptr %i.bs
}

; Function Attrs: mustprogress uwtable
end_hunk_2
