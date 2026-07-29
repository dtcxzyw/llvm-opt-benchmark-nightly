inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson24unsafe_yyjson_mut_equalsEPNS_14yyjson_mut_valES1_:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bc = load i64, ptr %i.ar, align 8, !tbaa !81
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br label %.critedge

bb.q:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.as, 0
  %i.bf = icmp eq i8 %i.at, 8
  %or.cond5.i = and i1 %i.be, %i.bf
  br i1 %or.cond5.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bg = load i64, ptr %i.ar, align 8, !tbaa !81 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  br i1 %i.bh, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !81
  %i.bj = icmp eq i64 %i.bi, %i.bg
  br label %.critedge

bb.t:                                             ; preds = %bb.b, %bb.b
  %i.bk = lshr i64 %i.a, 8                        ; 2 uses
  %i.bl = lshr i64 %.fr, 8
  %.not.i = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.i, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !81
  %bcmp.i = tail call i32 @bcmp(ptr %i.bn, ptr %i.bp, i64 %i.bk)
  %.not7.i = icmp eq i32 %bcmp.i, 0
  br label %.critedge

bb.v:                                             ; preds = %bb.b, %bb.b
  %i.bq = icmp eq i64 %i.a, %.fr
  br label %.critedge

default.unreachable:                              ; preds = %bb.b
  unreachable

.critedge:                                        ; preds = %bb.k, %bb.g, %_ZN13duckdb_yyjsonL24yyjson_mut_obj_iter_getnEPNS_19yyjson_mut_obj_iterEPKcm.exit.us, %bb.e, %_ZN13duckdb_yyjsonL24yyjson_mut_obj_iter_initEPNS_14yyjson_mut_valEPNS_19yyjson_mut_obj_iterE.exit.split.us, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit.backedge.us, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.d, %bb.b, %bb.h, %bb.i, %bb.c, %bb.a, %bb.v
  %.3 = phi i1 [ %i.bq, %bb.v ], [ true, %bb.i ], [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.q ], [ false, %bb.b ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.h ], [ false, %_ZN13duckdb_yyjsonL24yyjson_mut_obj_iter_getnEPNS_19yyjson_mut_obj_iterEPKcm.exit.us ], [ false, %bb.t ], [ %.not7.i, %bb.u ], [ false, %_ZN13duckdb_yyjsonL25unsafe_yyjson_equals_strnEPvPKcm.exit.backedge.us ], [ %i.ax, %bb.m ], [ %i.bj, %bb.s ], [ %i.bd, %bb.p ], [ false, %_ZN13duckdb_yyjsonL24yyjson_mut_obj_iter_initEPNS_14yyjson_mut_valEPNS_19yyjson_mut_obj_iterE.exit.split.us ], [ true, %bb.e ], [ false, %bb.g ], [ %i.am, %bb.k ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN13duckdb_yyjson22unsafe_yyjson_ptr_getxEPNS_10yyjson_valEPKcmPNS_14yyjson_ptr_errE(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.c = add nuw i64 %2, %i.a                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit, %bb.a
  %.051 = phi ptr [ %1, %bb.a ], [ %.152, %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit ] ; 3 uses
  %.024 = phi ptr [ %0, %bb.a ], [ %.1, %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.051, i64 1 ; 11 uses
  %i.e = icmp ult ptr %i.d, %i.b
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %.051133 = ptrtoaddr ptr %.051 to i64
  %scevgep = getelementptr i8, ptr %.051, i64 %i.c
  %i.f = sub i64 0, %.051133
  %scevgep134 = getelementptr i8, ptr %scevgep, i64 %i.f ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.039.i87 = phi ptr [ %i.h, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.g = load i8, ptr %.039.i87, align 1, !tbaa !81
  switch i8 %i.g, label %bb.c [
    i8 47, label %.critedge.i
    i8 126, label %.critedge.i
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.039.i87, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %scevgep134
  br i1 %exitcond.not, label %.critedge.i, label %.lr.ph, !llvm.loop !104

.critedge.i:                                      ; preds = %bb.c, %.lr.ph, %.lr.ph, %bb.b
  %.039.i.lcssa = phi ptr [ %i.d, %bb.b ], [ %.039.i87, %.lr.ph ], [ %.039.i87, %.lr.ph ], [ %scevgep134, %bb.c ] ; 9 uses
  %.039.i.lcssa136 = ptrtoaddr ptr %.039.i.lcssa to i64
  %i.i = icmp eq ptr %.039.i.lcssa, %i.b
  br i1 %i.i, label %.critedge53.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.j = load i8, ptr %.039.i.lcssa, align 1, !tbaa !81
  %.not = icmp eq i8 %i.j, 126
  br i1 %.not, label %.preheader75, label %.critedge53.i, !prof !7

.preheader75:                                     ; preds = %bb.d
  %i.k = icmp ult ptr %.039.i.lcssa, %i.b
  br i1 %i.k, label %.lr.ph94.preheader, label %.critedge2.i

.lr.ph94.preheader:                               ; preds = %.preheader75
  %scevgep135 = getelementptr i8, ptr %.039.i.lcssa, i64 %i.c
  %i.l = sub i64 0, %.039.i.lcssa136
  %scevgep137 = getelementptr i8, ptr %scevgep135, i64 %i.l ; 2 uses
  br label %.lr.ph94

.critedge53.i:                                    ; preds = %bb.d, %.critedge.i
  %i.m = ptrtoint ptr %.039.i.lcssa to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n
  br label %_ZN13duckdb_yyjsonL14ptr_next_tokenEPPKcS1_PmS3_.exit

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %bb.i
  %.0.i93 = phi i64 [ %.1.i, %bb.i ], [ 0, %.lr.ph94.preheader ] ; 3 uses
  %.140.i92 = phi ptr [ %i.q, %bb.i ], [ %.039.i.lcssa, %.lr.ph94.preheader ] ; 4 uses
  %i.p = load i8, ptr %.140.i92, align 1, !tbaa !81 ; 2 uses
  %.not49.i = icmp eq i8 %i.p, 47
  br i1 %.not49.i, label %.critedge2.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph94
  %i.q = getelementptr inbounds nuw i8, ptr %.140.i92, i64 1 ; 4 uses
  %i.r = icmp eq i8 %i.p, 126
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %i.q, %i.b
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.q, align 1, !tbaa !81
  %i.u = and i8 %i.t, -2
  %switch.i = icmp eq i8 %i.u, 48
  br i1 %switch.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.0.i93, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi i64 [ %i.v, %bb.h ], [ %.0.i93, %bb.e ] ; 2 uses
  %exitcond138.not = icmp eq ptr %i.q, %scevgep137
  br i1 %exitcond138.not, label %.critedge2.i, label %.lr.ph94, !llvm.loop !105

.critedge2.i:                                     ; preds = %bb.i, %.lr.ph94, %.preheader75
  %.140.i.lcssa = phi ptr [ %.039.i.lcssa, %.preheader75 ], [ %.140.i92, %.lr.ph94 ], [ %scevgep137, %bb.i ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %.preheader75 ], [ %.0.i93, %.lr.ph94 ], [ %.1.i, %bb.i ] ; 2 uses
  %i.w = ptrtoint ptr %.140.i.lcssa to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = add i64 %.0.i.lcssa, %i.x
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp eq i64 %.0.i.lcssa, 0
  br label %_ZN13duckdb_yyjsonL14ptr_next_tokenEPPKcS1_PmS3_.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %.loopexit, label %.loopexit.sink.split

_ZN13duckdb_yyjsonL14ptr_next_tokenEPPKcS1_PmS3_.exit: ; preds = %.critedge2.i, %.critedge53.i
  %.152 = phi ptr [ %.039.i.lcssa, %.critedge53.i ], [ %.140.i.lcssa, %.critedge2.i ] ; 2 uses
  %.150 = phi i64 [ %i.o, %.critedge53.i ], [ %i.z, %.critedge2.i ] ; 7 uses
  %.148 = phi i1 [ true, %.critedge53.i ], [ %i.aa, %.critedge2.i ]
  %i.ab = load i64, ptr %.024, align 8, !tbaa !79 ; 4 uses
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = and i8 %i.ac, 7
  switch i8 %i.ad, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread [
    i8 7, label %bb.k
    i8 6, label %bb.r
  ]

bb.k:                                             ; preds = %_ZN13duckdb_yyjsonL14ptr_next_tokenEPPKcS1_PmS3_.exit
  %i.ae = lshr i64 %i.ab, 8                       ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, label %.preheader, !prof !7

.preheader:                                       ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %.not23.i109 = icmp eq i64 %.150, 0
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread
  %.0.i31118 = phi i64 [ %i.ae, %.preheader ], [ %i.ba, %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread ]
  %.011.i116 = phi ptr [ %i.ag, %.preheader ], [ %i.bi, %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread ] ; 6 uses
  %i.ah = load i64, ptr %.011.i116, align 8, !tbaa !79
  %i.ai = lshr i64 %i.ah, 8
  %.not.i34 = icmp eq i64 %i.ai, %.150
  br i1 %.not.i34, label %bb.m, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.148, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit, label %bb.n, !prof !24

bb.n:                                             ; preds = %bb.m
  br i1 %.not23.i109, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread62, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i116, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !81
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %bb.q
  %.in = phi i64 [ %i.al, %bb.q ], [ %.150, %.lr.ph112.preheader ]
  %.0.i36111 = phi ptr [ %i.av, %bb.q ], [ %i.ak, %.lr.ph112.preheader ] ; 2 uses
  %.017.i110 = phi ptr [ %i.au, %bb.q ], [ %i.d, %.lr.ph112.preheader ] ; 3 uses
  %i.al = add nsw i64 %.in, -1                    ; 2 uses
  %i.am = load i8, ptr %.017.i110, align 1, !tbaa !81 ; 2 uses
  %i.an = icmp eq i8 %i.am, 126
  %i.ao = load i8, ptr %.0.i36111, align 1, !tbaa !81 ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph112
  %i.ap = sext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.017.i110, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !81
  %i.as = icmp eq i8 %i.ar, 48
  %i.at = select i1 %i.as, i32 126, i32 47
  %.not25.i = icmp eq i32 %i.at, %i.ap
  br i1 %.not25.i, label %bb.q, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread

bb.p:                                             ; preds = %.lr.ph112
  %.not24.i = icmp eq i8 %i.ao, %i.am
  br i1 %.not24.i, label %bb.q, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %.118.i = phi ptr [ %i.aq, %bb.o ], [ %.017.i110, %bb.p ]
  %i.au = getelementptr inbounds nuw i8, ptr %.118.i, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i36111, i64 1
  %.not23.i = icmp eq i64 %i.al, 0
  br i1 %.not23.i, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread62, label %.lr.ph112, !llvm.loop !106

_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit:   ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i116, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81
  %bcmp.i = tail call i32 @bcmp(ptr %i.ax, ptr nonnull %i.d, i64 %.150)
  %i.ay = icmp eq i32 %bcmp.i, 0
  br i1 %i.ay, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread62, label %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread

_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread62: ; preds = %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit, %bb.n, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i116, i64 16
  br label %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit

_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread: ; preds = %bb.o, %bb.p, %bb.l, %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit
  %i.ba = add nsw i64 %.0.i31118, -1              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i116, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79
  %i.bd = and i64 %i.bc, 6
  %i.be = icmp eq i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i116, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !81
  %i.bh = select i1 %i.be, i64 %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, label %bb.l, !llvm.loop !107

bb.r:                                             ; preds = %_ZN13duckdb_yyjsonL14ptr_next_tokenEPPKcS1_PmS3_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.024, i64 16 ; 4 uses
  %i.bk = lshr i64 %i.ab, 8                       ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %.150
  %i.bn = add i64 %.150, -20
  %i.bo = icmp ult i64 %i.bn, -19
  br i1 %i.bo, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.bp = load i8, ptr %i.d, align 1, !tbaa !81
  switch i8 %i.bp, label %.lr.ph102 [
    i8 48, label %bb.u
    i8 45, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread
  ]

bb.u:                                             ; preds = %bb.t
  %i.bq = icmp samesign ugt i64 %.150, 1
  br i1 %i.bq, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit, !prof !7

.lr.ph102:                                        ; preds = %bb.t, %bb.v
  %.021.i101 = phi i64 [ %i.bw, %bb.v ], [ 0, %bb.t ]
  %.022.i100 = phi ptr [ %i.bx, %bb.v ], [ %i.d, %bb.t ] ; 2 uses
  %i.br = load i8, ptr %.022.i100, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i64
  %i.bt = add nsw i64 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 10
  br i1 %i.bu, label %bb.v, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread

bb.v:                                             ; preds = %.lr.ph102
  %i.bv = mul i64 %.021.i101, 10
  %i.bw = add i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.022.i100, i64 1 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.bm
  br i1 %i.by, label %.lr.ph102, label %.critedge.i38, !llvm.loop !108

.critedge.i38:                                    ; preds = %bb.v
  %i.bz = icmp eq i64 %i.bw, 0
  br i1 %i.bz, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit, !prof !109

_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit: ; preds = %.critedge.i38, %bb.u
  %.154 = phi i64 [ 0, %bb.u ], [ %i.bw, %.critedge.i38 ] ; 7 uses
  %.not.i32 = icmp ult i64 %.154, %i.bk
  br i1 %.not.i32, label %bb.w, label %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, !prof !110

bb.w:                                             ; preds = %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !81
  %i.cc = lshr i64 %i.ab, 4
  %i.cd = and i64 %i.cc, 1152921504606846960
  %i.ce = add nuw nsw i64 %i.cd, 16
  %i.cf = icmp eq i64 %i.ce, %i.cb
  br i1 %i.cf, label %bb.x, label %.preheader72

.preheader72:                                     ; preds = %bb.w
  %.not12.i104 = icmp eq i64 %.154, 0
  br i1 %.not12.i104, label %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %.preheader72
  %xtraiter = and i64 %.154, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.010.i106.prol = phi ptr [ %i.cn, %.lr.ph107.prol ], [ %i.bj, %.lr.ph107.preheader ] ; 3 uses
  %.053105.prol = phi i64 [ %i.cg, %.lr.ph107.prol ], [ %.154, %.lr.ph107.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.cg = add i64 %.053105.prol, -1               ; 2 uses
  %i.ch = load i64, ptr %.010.i106.prol, align 8, !tbaa !79
  %i.ci = and i64 %i.ch, 6
  %i.cj = icmp eq i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i106.prol, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !81
  %i.cm = select i1 %i.cj, i64 %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.010.i106.prol, i64 %i.cm ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !111

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.lcssa190.unr = phi ptr [ poison, %.lr.ph107.preheader ], [ %i.cn, %.lr.ph107.prol ]
  %.010.i106.unr = phi ptr [ %i.bj, %.lr.ph107.preheader ], [ %i.cn, %.lr.ph107.prol ]
  %.053105.unr = phi i64 [ %.154, %.lr.ph107.preheader ], [ %i.cg, %.lr.ph107.prol ]
  %i.co = icmp ult i64 %.154, 4
  br i1 %i.co, label %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit, label %.lr.ph107

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.154
  br label %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.010.i106 = phi ptr [ %i.ds, %.lr.ph107 ], [ %.010.i106.unr, %.lr.ph107.prol.loopexit ] ; 3 uses
  %.053105 = phi i64 [ %i.dl, %.lr.ph107 ], [ %.053105.unr, %.lr.ph107.prol.loopexit ]
  %i.cq = load i64, ptr %.010.i106, align 8, !tbaa !79
  %i.cr = and i64 %i.cq, 6
  %i.cs = icmp eq i64 %i.cr, 6
  %i.ct = getelementptr inbounds nuw i8, ptr %.010.i106, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !81
  %i.cv = select i1 %i.cs, i64 %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i106, i64 %i.cv ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !79
  %i.cy = and i64 %i.cx, 6
  %i.cz = icmp eq i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !81
  %i.dc = select i1 %i.cz, i64 %i.db, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !79
  %i.df = and i64 %i.de, 6
  %i.dg = icmp eq i64 %i.df, 6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !81
  %i.dj = select i1 %i.dg, i64 %i.di, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dj ; 3 uses
  %i.dl = add i64 %.053105, -4                    ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !79
  %i.dn = and i64 %i.dm, 6
  %i.do = icmp eq i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !81
  %i.dr = select i1 %i.do, i64 %i.dq, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dr ; 2 uses
  %.not12.i.3 = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.3, label %_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit, label %.lr.ph107, !llvm.loop !113

_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread: ; preds = %bb.t, %.critedge.i38, %bb.u, %bb.s, %_ZN13duckdb_yyjsonL14ptr_next_tokenEPPKcS1_PmS3_.exit, %bb.k, %bb.r, %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit, %.lr.ph102, %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %.loopexit, label %.loopexit.sink.split

_ZN13duckdb_yyjsonL11ptr_obj_getEPNS_10yyjson_valEPKcmm.exit: ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107, %.preheader72, %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread62, %bb.x
  %.1 = phi ptr [ %i.az, %_ZN13duckdb_yyjsonL12ptr_token_eqEPvPKcmm.exit.thread62 ], [ %i.cp, %bb.x ], [ %i.bj, %.preheader72 ], [ %.lcssa190.unr, %.lr.ph107.prol.loopexit ], [ %i.ds, %.lr.ph107 ] ; 2 uses
  %i.dt = icmp eq ptr %.152, %i.b
  br i1 %i.dt, label %.loopexit, label %bb.b, !llvm.loop !114

.loopexit.sink.split:                             ; preds = %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread, %bb.j
  %.sink172 = phi i32 [ 2, %bb.j ], [ 3, %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread ]
  %.str.1.sink = phi ptr [ @.str, %bb.j ], [ @.str.1, %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread ]
  %.sink = phi ptr [ %.140.i92, %bb.j ], [ %i.d, %_ZN13duckdb_yyjsonL16ptr_token_to_idxEPKcmPm.exit.thread ]
  store i32 %.sink172, ptr %3, align 8, !tbaa !115
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.str.1.sink, ptr %i.du, align 8, !tbaa !117
  %i.dv = ptrtoint ptr %.sink to i64
  %i.dw = ptrtoint ptr %1 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !118
  br label %.loopexit

end_hunk_0
