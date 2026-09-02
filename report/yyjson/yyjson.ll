Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@unsafe_yyjson_ptr_getx:bb.a
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %i.q, %i.b
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.q, align 1, !tbaa !100
  %i.u = and i8 %i.t, -2
  %switch.i = icmp eq i8 %i.u, 48
  br i1 %switch.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.0.i93, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi i64 [ %i.v, %bb.h ], [ %.0.i93, %bb.e ] ; 2 uses
  %exitcond138.not = icmp eq ptr %i.q, %scevgep137
  br i1 %exitcond138.not, label %.critedge2.i, label %.lr.ph94, !llvm.loop !29

.critedge2.i:                                     ; preds = %bb.i, %.lr.ph94, %.preheader75
  %.140.i.lcssa = phi ptr [ %.039.i.lcssa, %.preheader75 ], [ %.140.i92, %.lr.ph94 ], [ %scevgep137, %bb.i ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %.preheader75 ], [ %.0.i93, %.lr.ph94 ], [ %.1.i, %bb.i ] ; 2 uses
  %i.w = ptrtoint ptr %.140.i.lcssa to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = add i64 %.0.i.lcssa, %i.x
  %i.z = sub i64 %i.w, %i.y
  %i.aa = icmp eq i64 %.0.i.lcssa, 0
  br label %ptr_next_token.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not30 = icmp eq ptr %3, null
  br i1 %.not30, label %.loopexit, label %.loopexit.sink.split

ptr_next_token.exit:                              ; preds = %.critedge2.i, %.critedge53.i
  %.152 = phi ptr [ %.039.i.lcssa, %.critedge53.i ], [ %.140.i.lcssa, %.critedge2.i ] ; 2 uses
  %.150 = phi i64 [ %i.o, %.critedge53.i ], [ %i.z, %.critedge2.i ] ; 7 uses
  %.148 = phi i1 [ true, %.critedge53.i ], [ %i.aa, %.critedge2.i ]
  %i.ab = load i64, ptr %.024, align 8, !tbaa !99 ; 4 uses
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = and i8 %i.ac, 7
  switch i8 %i.ad, label %ptr_token_to_idx.exit.thread [
    i8 7, label %bb.k
    i8 6, label %bb.r
  ]

bb.k:                                             ; preds = %ptr_next_token.exit
  %i.ae = lshr i64 %i.ab, 8                       ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %ptr_token_to_idx.exit.thread, label %.preheader, !prof !45

.preheader:                                       ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %.not23.i109 = icmp eq i64 %.150, 0
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %ptr_token_eq.exit.thread
  %.0.i31118 = phi i64 [ %i.ae, %.preheader ], [ %i.ba, %ptr_token_eq.exit.thread ]
  %.011.i116 = phi ptr [ %i.ag, %.preheader ], [ %i.bi, %ptr_token_eq.exit.thread ] ; 6 uses
  %i.ah = load i64, ptr %.011.i116, align 8, !tbaa !99
  %i.ai = lshr i64 %i.ah, 8
  %.not.i34 = icmp eq i64 %i.ai, %.150
  br i1 %.not.i34, label %bb.m, label %ptr_token_eq.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.148, label %ptr_token_eq.exit, label %bb.n, !prof !62

bb.n:                                             ; preds = %bb.m
  br i1 %.not23.i109, label %ptr_token_eq.exit.thread62, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i116, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !100
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %bb.q
  %.in = phi i64 [ %i.al, %bb.q ], [ %.150, %.lr.ph112.preheader ]
  %.0.i36111 = phi ptr [ %i.av, %bb.q ], [ %i.ak, %.lr.ph112.preheader ] ; 2 uses
  %.018.i110 = phi ptr [ %i.au, %bb.q ], [ %i.d, %.lr.ph112.preheader ] ; 3 uses
  %i.al = add i64 %.in, -1                        ; 2 uses
  %i.am = load i8, ptr %.018.i110, align 1, !tbaa !100 ; 2 uses
  %i.an = icmp eq i8 %i.am, 126
  %i.ao = load i8, ptr %.0.i36111, align 1, !tbaa !100 ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph112
  %i.ap = sext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i110, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !100
  %i.as = icmp eq i8 %i.ar, 48
  %i.at = select i1 %i.as, i32 126, i32 47
  %.not25.i = icmp eq i32 %i.at, %i.ap
  br i1 %.not25.i, label %bb.q, label %ptr_token_eq.exit.thread

bb.p:                                             ; preds = %.lr.ph112
  %.not24.i = icmp eq i8 %i.ao, %i.am
  br i1 %.not24.i, label %bb.q, label %ptr_token_eq.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %.119.i = phi ptr [ %i.aq, %bb.o ], [ %.018.i110, %bb.p ]
  %i.au = getelementptr inbounds nuw i8, ptr %.119.i, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i36111, i64 1
  %.not23.i = icmp eq i64 %i.al, 0
  br i1 %.not23.i, label %ptr_token_eq.exit.thread62, label %.lr.ph112, !llvm.loop !30

ptr_token_eq.exit:                                ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i116, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !100
  %bcmp.i = tail call i32 @bcmp(ptr %i.ax, ptr nonnull %i.d, i64 %.150)
  %i.ay = icmp eq i32 %bcmp.i, 0
  br i1 %i.ay, label %ptr_token_eq.exit.thread62, label %ptr_token_eq.exit.thread

ptr_token_eq.exit.thread62:                       ; preds = %ptr_token_eq.exit, %bb.n, %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i116, i64 16
  br label %ptr_obj_get.exit

ptr_token_eq.exit.thread:                         ; preds = %bb.o, %bb.p, %bb.l, %ptr_token_eq.exit
  %i.ba = add nsw i64 %.0.i31118, -1              ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i116, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !99
  %i.bd = and i64 %i.bc, 6
  %i.be = icmp eq i64 %i.bd, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %.011.i116, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !100
  %i.bh = select i1 %i.be, i64 %i.bg, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %ptr_token_to_idx.exit.thread, label %bb.l, !llvm.loop !443

bb.r:                                             ; preds = %ptr_next_token.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.024, i64 16 ; 4 uses
  %i.bk = lshr i64 %i.ab, 8                       ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %ptr_token_to_idx.exit.thread, label %bb.s, !prof !45

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 %.150
  %i.bn = add i64 %.150, -20
  %i.bo = icmp ult i64 %i.bn, -19
  br i1 %i.bo, label %ptr_token_to_idx.exit.thread, label %bb.t, !prof !45

bb.t:                                             ; preds = %bb.s
  %i.bp = load i8, ptr %i.d, align 1, !tbaa !100
  switch i8 %i.bp, label %.lr.ph102 [
    i8 48, label %bb.u
    i8 45, label %ptr_token_to_idx.exit.thread
  ]

bb.u:                                             ; preds = %bb.t
  %i.bq = icmp samesign ugt i64 %.150, 1
  br i1 %i.bq, label %ptr_token_to_idx.exit.thread, label %ptr_token_to_idx.exit, !prof !45

.lr.ph102:                                        ; preds = %bb.t, %bb.v
  %.0.i37101 = phi i64 [ %i.bw, %bb.v ], [ 0, %bb.t ]
  %.022.i100 = phi ptr [ %i.bx, %bb.v ], [ %i.d, %bb.t ] ; 2 uses
  %i.br = load i8, ptr %.022.i100, align 1, !tbaa !100
  %i.bs = zext i8 %i.br to i64
  %i.bt = add nsw i64 %i.bs, -48                  ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 10
  br i1 %i.bu, label %bb.v, label %ptr_token_to_idx.exit.thread

bb.v:                                             ; preds = %.lr.ph102
  %i.bv = mul i64 %.0.i37101, 10
  %i.bw = add i64 %i.bt, %i.bv                    ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.022.i100, i64 1 ; 2 uses
  %i.by = icmp ult ptr %i.bx, %i.bm
  br i1 %i.by, label %.lr.ph102, label %.critedge.i38, !llvm.loop !31

.critedge.i38:                                    ; preds = %bb.v
  %i.bz = icmp eq i64 %i.bw, 0
  br i1 %i.bz, label %ptr_token_to_idx.exit.thread, label %ptr_token_to_idx.exit, !prof !125

ptr_token_to_idx.exit:                            ; preds = %.critedge.i38, %bb.u
  %.154 = phi i64 [ 0, %bb.u ], [ %i.bw, %.critedge.i38 ] ; 7 uses
  %.not.i32 = icmp ult i64 %.154, %i.bk
  br i1 %.not.i32, label %bb.w, label %ptr_token_to_idx.exit.thread, !prof !446

bb.w:                                             ; preds = %ptr_token_to_idx.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !100
  %i.cc = lshr i64 %i.ab, 4
  %i.cd = and i64 %i.cc, 1152921504606846960
  %i.ce = add nuw nsw i64 %i.cd, 16
  %i.cf = icmp eq i64 %i.ce, %i.cb
  br i1 %i.cf, label %bb.x, label %.preheader72

.preheader72:                                     ; preds = %bb.w
  %.not12.i104 = icmp eq i64 %.154, 0
  br i1 %.not12.i104, label %ptr_obj_get.exit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %.preheader72
  %xtraiter = and i64 %.154, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader, %.lr.ph107.prol
  %.0.i33106.prol = phi ptr [ %i.cn, %.lr.ph107.prol ], [ %i.bj, %.lr.ph107.preheader ] ; 3 uses
  %.053105.prol = phi i64 [ %i.cg, %.lr.ph107.prol ], [ %.154, %.lr.ph107.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader ]
  %i.cg = add i64 %.053105.prol, -1               ; 2 uses
  %i.ch = load i64, ptr %.0.i33106.prol, align 8, !tbaa !99
  %i.ci = and i64 %i.ch, 6
  %i.cj = icmp eq i64 %i.ci, 6
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i33106.prol, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !100
  %i.cm = select i1 %i.cj, i64 %i.cl, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i33106.prol, i64 %i.cm ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !444

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader
  %.lcssa190.unr = phi ptr [ poison, %.lr.ph107.preheader ], [ %i.cn, %.lr.ph107.prol ]
  %.0.i33106.unr = phi ptr [ %i.bj, %.lr.ph107.preheader ], [ %i.cn, %.lr.ph107.prol ]
  %.053105.unr = phi i64 [ %.154, %.lr.ph107.preheader ], [ %i.cg, %.lr.ph107.prol ]
  %i.co = icmp ult i64 %.154, 4
  br i1 %i.co, label %ptr_obj_get.exit, label %.lr.ph107

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.154
  br label %ptr_obj_get.exit

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.0.i33106 = phi ptr [ %i.ds, %.lr.ph107 ], [ %.0.i33106.unr, %.lr.ph107.prol.loopexit ] ; 3 uses
  %.053105 = phi i64 [ %i.dl, %.lr.ph107 ], [ %.053105.unr, %.lr.ph107.prol.loopexit ]
  %i.cq = load i64, ptr %.0.i33106, align 8, !tbaa !99
  %i.cr = and i64 %i.cq, 6
  %i.cs = icmp eq i64 %i.cr, 6
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i33106, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !100
  %i.cv = select i1 %i.cs, i64 %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i33106, i64 %i.cv ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !99
  %i.cy = and i64 %i.cx, 6
  %i.cz = icmp eq i64 %i.cy, 6
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !100
  %i.dc = select i1 %i.cz, i64 %i.db, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !99
  %i.df = and i64 %i.de, 6
  %i.dg = icmp eq i64 %i.df, 6
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !100
  %i.dj = select i1 %i.dg, i64 %i.di, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dj ; 3 uses
  %i.dl = add i64 %.053105, -4                    ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !99
  %i.dn = and i64 %i.dm, 6
  %i.do = icmp eq i64 %i.dn, 6
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !100
  %i.dr = select i1 %i.do, i64 %i.dq, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dr ; 2 uses
  %.not12.i.3 = icmp eq i64 %i.dl, 0
  br i1 %.not12.i.3, label %ptr_obj_get.exit, label %.lr.ph107, !llvm.loop !445

ptr_token_to_idx.exit.thread:                     ; preds = %bb.t, %.critedge.i38, %bb.u, %bb.s, %ptr_next_token.exit, %bb.k, %bb.r, %ptr_token_to_idx.exit, %.lr.ph102, %ptr_token_eq.exit.thread
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %.loopexit, label %.loopexit.sink.split

ptr_obj_get.exit:                                 ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107, %.preheader72, %ptr_token_eq.exit.thread62, %bb.x
  %.1 = phi ptr [ %i.az, %ptr_token_eq.exit.thread62 ], [ %i.cp, %bb.x ], [ %i.bj, %.preheader72 ], [ %.lcssa190.unr, %.lr.ph107.prol.loopexit ], [ %i.ds, %.lr.ph107 ] ; 2 uses
  %i.dt = icmp eq ptr %.152, %i.b
  br i1 %i.dt, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %ptr_token_to_idx.exit.thread, %bb.j
  %.sink172 = phi i32 [ 2, %bb.j ], [ 3, %ptr_token_to_idx.exit.thread ]
  %.str.33.sink = phi ptr [ @.str.32, %bb.j ], [ @.str.33, %ptr_token_to_idx.exit.thread ]
  %.sink = phi ptr [ %.140.i92, %bb.j ], [ %i.d, %ptr_token_to_idx.exit.thread ]
  store i32 %.sink172, ptr %3, align 8, !tbaa !155
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.str.33.sink, ptr %i.du, align 8, !tbaa !156
  %i.dv = ptrtoint ptr %.sink to i64
  %i.dw = ptrtoint ptr %1 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !157
  br label %.loopexit

.loopexit:                                        ; preds = %ptr_obj_get.exit, %.loopexit.sink.split, %ptr_token_to_idx.exit.thread, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %.loopexit.sink.split ], [ %.1, %ptr_obj_get.exit ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @unsafe_yyjson_mut_ptr_getx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #21 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %.not40 = icmp ne ptr %3, null                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = add nuw i64 %2, %i.a                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.af, %bb.a
  %.076 = phi ptr [ %1, %bb.a ], [ %.177, %bb.af ] ; 3 uses
  %.069 = phi ptr [ null, %bb.a ], [ %.170102, %bb.af ]
  %.067 = phi i1 [ false, %bb.a ], [ %.168103, %bb.af ] ; 4 uses
  %.034 = phi ptr [ %0, %bb.a ], [ %.1105, %bb.af ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.076, i64 1 ; 12 uses
  %i.f = icmp ult ptr %i.e, %i.b
  br i1 %i.f, label %.lr.ph.preheader, label %.critedge.i

.lr.ph.preheader:                                 ; preds = %bb.b
  %.076180 = ptrtoaddr ptr %.076 to i64
  %scevgep = getelementptr i8, ptr %.076, i64 %i.d
  %i.g = sub i64 0, %.076180
  %scevgep181 = getelementptr i8, ptr %scevgep, i64 %i.g ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.039.i133 = phi ptr [ %i.i, %bb.c ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.h = load i8, ptr %.039.i133, align 1, !tbaa !100
  switch i8 %i.h, label %bb.c [
    i8 47, label %.critedge.i
    i8 126, label %.critedge.i
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.039.i133, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.i, %scevgep181
  br i1 %exitcond.not, label %.critedge.i, label %.lr.ph, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.c, %.lr.ph, %.lr.ph, %bb.b
  %.039.i.lcssa = phi ptr [ %i.e, %bb.b ], [ %.039.i133, %.lr.ph ], [ %.039.i133, %.lr.ph ], [ %scevgep181, %bb.c ] ; 9 uses
  %.039.i.lcssa183 = ptrtoaddr ptr %.039.i.lcssa to i64
  %i.j = icmp eq ptr %.039.i.lcssa, %i.b
  br i1 %i.j, label %.critedge53.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.k = load i8, ptr %.039.i.lcssa, align 1, !tbaa !100
  %.not = icmp eq i8 %i.k, 126
  br i1 %.not, label %.preheader122, label %.critedge53.i, !prof !45

.preheader122:                                    ; preds = %bb.d
  %i.l = icmp ult ptr %.039.i.lcssa, %i.b
  br i1 %i.l, label %.lr.ph140.preheader, label %.critedge2.i

.lr.ph140.preheader:                              ; preds = %.preheader122
  %scevgep182 = getelementptr i8, ptr %.039.i.lcssa, i64 %i.d
  %i.m = sub i64 0, %.039.i.lcssa183
  %scevgep184 = getelementptr i8, ptr %scevgep182, i64 %i.m ; 2 uses
  br label %.lr.ph140

.critedge53.i:                                    ; preds = %bb.d, %.critedge.i
  %i.n = ptrtoint ptr %.039.i.lcssa to i64
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.n, %i.o
  br label %ptr_next_token.exit

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.i
  %.0.i139 = phi i64 [ %.1.i, %bb.i ], [ 0, %.lr.ph140.preheader ] ; 3 uses
  %.140.i138 = phi ptr [ %i.r, %bb.i ], [ %.039.i.lcssa, %.lr.ph140.preheader ] ; 4 uses
  %i.q = load i8, ptr %.140.i138, align 1, !tbaa !100 ; 2 uses
  %.not49.i = icmp eq i8 %i.q, 47
  br i1 %.not49.i, label %.critedge2.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph140
  %i.r = getelementptr inbounds nuw i8, ptr %.140.i138, i64 1 ; 4 uses
  %i.s = icmp eq i8 %i.q, 126
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %i.r, %i.b
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.r, align 1, !tbaa !100
  %i.v = and i8 %i.u, -2
  %switch.i = icmp eq i8 %i.v, 48
  br i1 %switch.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = add i64 %.0.i139, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi i64 [ %i.w, %bb.h ], [ %.0.i139, %bb.e ] ; 2 uses
  %exitcond185.not = icmp eq ptr %i.r, %scevgep184
  br i1 %exitcond185.not, label %.critedge2.i, label %.lr.ph140, !llvm.loop !29

.critedge2.i:                                     ; preds = %bb.i, %.lr.ph140, %.preheader122
  %.140.i.lcssa = phi ptr [ %.039.i.lcssa, %.preheader122 ], [ %.140.i138, %.lr.ph140 ], [ %scevgep184, %bb.i ] ; 2 uses
  %.0.i.lcssa = phi i64 [ 0, %.preheader122 ], [ %.0.i139, %.lr.ph140 ], [ %.1.i, %bb.i ] ; 2 uses
  %i.x = ptrtoint ptr %.140.i.lcssa to i64
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = add i64 %.0.i.lcssa, %i.y
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = icmp eq i64 %.0.i.lcssa, 0
  br label %ptr_next_token.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not43 = icmp eq ptr %4, null
  br i1 %.not43, label %.loopexit, label %.loopexit.sink.split

ptr_next_token.exit:                              ; preds = %.critedge2.i, %.critedge53.i
  %.177 = phi ptr [ %.039.i.lcssa, %.critedge53.i ], [ %.140.i.lcssa, %.critedge2.i ] ; 3 uses
  %.175 = phi i64 [ %i.p, %.critedge53.i ], [ %i.aa, %.critedge2.i ] ; 9 uses
  %.173 = phi i1 [ true, %.critedge53.i ], [ %i.ab, %.critedge2.i ]
  %i.ac = load i64, ptr %.034, align 8, !tbaa !99 ; 3 uses
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i8 %i.ad, 7                         ; 3 uses
  %i.af = icmp eq i8 %i.ae, 7                     ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.r

bb.k:                                             ; preds = %ptr_next_token.exit
  %i.ag = lshr i64 %i.ac, 8                       ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %ptr_mut_obj_get.exit.thread, label %.preheader, !prof !45

.preheader:                                       ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !100
  %.not23.i155 = icmp eq i64 %.175, 0
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %ptr_token_eq.exit.thread
  %.0.i46166 = phi i64 [ %i.ag, %.preheader ], [ %i.bi, %ptr_token_eq.exit.thread ]
  %.017.i165 = phi ptr [ %i.aj, %.preheader ], [ %i.an, %ptr_token_eq.exit.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.017.i165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !104
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104 ; 5 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !99
  %i.ap = lshr i64 %i.ao, 8
  %.not.i49 = icmp eq i64 %i.ap, %.175
  br i1 %.not.i49, label %bb.m, label %ptr_token_eq.exit.thread

bb.m:                                             ; preds = %bb.l
  br i1 %.173, label %ptr_token_eq.exit, label %bb.n, !prof !62

bb.n:                                             ; preds = %bb.m
  br i1 %.not23.i155, label %ptr_token_eq.exit.thread89, label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !100
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %bb.q
  %.in = phi i64 [ %i.as, %bb.q ], [ %.175, %.lr.ph159.preheader ]
  %.0.i53157 = phi ptr [ %i.bc, %bb.q ], [ %i.ar, %.lr.ph159.preheader ] ; 2 uses
  %.018.i51156 = phi ptr [ %i.bb, %bb.q ], [ %i.e, %.lr.ph159.preheader ] ; 3 uses
  %i.as = add i64 %.in, -1                        ; 2 uses
  %i.at = load i8, ptr %.018.i51156, align 1, !tbaa !100 ; 2 uses
  %i.au = icmp eq i8 %i.at, 126
  %i.av = load i8, ptr %.0.i53157, align 1, !tbaa !100 ; 2 uses
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph159
  %i.aw = sext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.018.i51156, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !100
  %i.az = icmp eq i8 %i.ay, 48
  %i.ba = select i1 %i.az, i32 126, i32 47
  %.not25.i = icmp eq i32 %i.ba, %i.aw
  br i1 %.not25.i, label %bb.q, label %ptr_token_eq.exit.thread

bb.p:                                             ; preds = %.lr.ph159
  %.not24.i = icmp eq i8 %i.av, %i.at
  br i1 %.not24.i, label %bb.q, label %ptr_token_eq.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %.119.i = phi ptr [ %i.ax, %bb.o ], [ %.018.i51156, %bb.p ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.119.i, i64 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i53157, i64 1
  %.not23.i = icmp eq i64 %i.as, 0
  br i1 %.not23.i, label %ptr_token_eq.exit.thread89, label %.lr.ph159, !llvm.loop !30

ptr_token_eq.exit:                                ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !100
  %bcmp.i = tail call i32 @bcmp(ptr %i.be, ptr nonnull %i.e, i64 %.175)
  %i.bf = icmp eq i32 %bcmp.i, 0
  br i1 %i.bf, label %ptr_token_eq.exit.thread89, label %ptr_token_eq.exit.thread

ptr_token_eq.exit.thread89:                       ; preds = %ptr_token_eq.exit, %bb.n, %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !104
  br label %ptr_mut_obj_get.exit

ptr_token_eq.exit.thread:                         ; preds = %bb.o, %bb.p, %bb.l, %ptr_token_eq.exit
  %i.bi = add nsw i64 %.0.i46166, -1              ; 2 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %ptr_mut_obj_get.exit, label %bb.l, !llvm.loop !32

bb.r:                                             ; preds = %ptr_next_token.exit
  %i.bj = icmp eq i8 %i.ae, 6
  br i1 %i.bj, label %bb.s, label %ptr_mut_obj_get.exit

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !100 ; 3 uses
  %i.bm = lshr i64 %i.ac, 8                       ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %bb.w, !prof !45

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp eq i64 %.175, 1
  br i1 %i.bo, label %bb.u, label %ptr_mut_obj_get.exit

bb.u:                                             ; preds = %bb.t
  %i.bp = load i8, ptr %i.e, align 1, !tbaa !100
  switch i8 %i.bp, label %ptr_mut_obj_get.exit [
    i8 48, label %bb.v
    i8 45, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  br label %ptr_mut_obj_get.exit

bb.w:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.175
  %i.br = add i64 %.175, -20
  %i.bs = icmp ult i64 %i.br, -19
  br i1 %i.bs, label %ptr_token_to_idx.exit.thread, label %bb.x, !prof !45

bb.x:                                             ; preds = %bb.w
  %i.bt = load i8, ptr %i.e, align 1, !tbaa !100
  switch i8 %i.bt, label %.lr.ph148 [
    i8 48, label %bb.y
    i8 45, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.bu = icmp samesign ugt i64 %.175, 1
  br i1 %i.bu, label %ptr_token_to_idx.exit.thread, label %._crit_edge, !prof !45

bb.z:                                             ; preds = %bb.x
  %i.bv = icmp samesign ugt i64 %.175, 1
  br i1 %i.bv, label %ptr_token_to_idx.exit.thread, label %ptr_mut_obj_get.exit, !prof !45

.lr.ph148:                                        ; preds = %bb.x, %bb.aa
  %.0.i54147 = phi i64 [ %i.cb, %bb.aa ], [ 0, %bb.x ] ; 2 uses
  %.022.i146 = phi ptr [ %i.cc, %bb.aa ], [ %i.e, %bb.x ] ; 2 uses
  %i.bw = load i8, ptr %.022.i146, align 1, !tbaa !100 ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nsw i64 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i64 %i.by, 10
  br i1 %i.bz, label %bb.aa, label %ptr_token_to_idx.exit.thread, !prof !136

bb.aa:                                            ; preds = %.lr.ph148
  %i.ca = mul i64 %.0.i54147, 10
  %i.cb = add i64 %i.by, %i.ca                    ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.022.i146, i64 1 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bq
  br i1 %i.cd, label %.lr.ph148, label %.critedge.i55, !llvm.loop !31

.critedge.i55:                                    ; preds = %bb.aa
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %ptr_token_to_idx.exit.thread, label %ptr_token_to_idx.exit, !prof !125

ptr_token_to_idx.exit.thread:                     ; preds = %.lr.ph148, %bb.w, %bb.y, %bb.z, %.critedge.i55
  br label %ptr_mut_obj_get.exit

ptr_token_to_idx.exit:                            ; preds = %.critedge.i55
  %i.cf = icmp eq i64 %i.cb, %i.bm
  %i.cg = icmp eq i64 %i.cb, -1
  %i.ch = or i1 %i.cf, %i.cg                      ; 3 uses
  %.not.i47 = icmp ult i64 %i.cb, %i.bm
  br i1 %.not.i47, label %.lr.ph153.preheader, label %ptr_mut_obj_get.exit, !prof !137

.lr.ph153.preheader:                              ; preds = %ptr_token_to_idx.exit
  %i.ci = mul i64 %.0.i54147, 10
  %i.cj = add i64 %i.ci, -49
  %i.ck = zext i8 %i.bw to i64
  %i.cl = add i64 %i.cj, %i.ck
  %xtraiter = and i64 %i.cb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol

.lr.ph153.prol:                                   ; preds = %.lr.ph153.preheader, %.lr.ph153.prol
  %.0.i48152.prol = phi ptr [ %i.co, %.lr.ph153.prol ], [ %i.bl, %.lr.ph153.preheader ]
  %.078151.prol = phi i64 [ %i.cm, %.lr.ph153.prol ], [ %i.cb, %.lr.ph153.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph153.prol ], [ 0, %.lr.ph153.preheader ]
  %i.cm = add i64 %.078151.prol, -1               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i48152.prol, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !104 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph153.prol.loopexit, label %.lr.ph153.prol, !llvm.loop !447

.lr.ph153.prol.loopexit:                          ; preds = %.lr.ph153.prol, %.lr.ph153.preheader
  %.lcssa239.unr = phi ptr [ poison, %.lr.ph153.preheader ], [ %i.co, %.lr.ph153.prol ]
  %.0.i48152.unr = phi ptr [ %i.bl, %.lr.ph153.preheader ], [ %i.co, %.lr.ph153.prol ]
  %.078151.unr = phi i64 [ %i.cb, %.lr.ph153.preheader ], [ %i.cm, %.lr.ph153.prol ]
  %i.cp = icmp ult i64 %i.cl, 7
  br i1 %i.cp, label %._crit_edge, label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153
  %.0.i48152 = phi ptr [ %i.dg, %.lr.ph153 ], [ %.0.i48152.unr, %.lr.ph153.prol.loopexit ]
  %.078151 = phi i64 [ %i.de, %.lr.ph153 ], [ %.078151.unr, %.lr.ph153.prol.loopexit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i48152, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !104
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !104
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !104
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !104
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !104
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !104
  %i.de = add i64 %.078151, -8                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !104 ; 2 uses
  %.not30.i.7 = icmp eq i64 %i.de, 0
  br i1 %.not30.i.7, label %._crit_edge, label %.lr.ph153, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph153.prol.loopexit, %.lr.ph153, %bb.y
  %i.dh = phi i1 [ false, %bb.y ], [ %i.ch, %.lr.ph153 ], [ %i.ch, %.lr.ph153.prol.loopexit ]
  %.0.i48.lcssa = phi ptr [ %i.bl, %bb.y ], [ %.lcssa239.unr, %.lr.ph153.prol.loopexit ], [ %i.dg, %.lr.ph153 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i48.lcssa, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !104
  br label %ptr_mut_obj_get.exit

ptr_mut_obj_get.exit:                             ; preds = %ptr_token_eq.exit.thread, %bb.z, %._crit_edge, %ptr_token_to_idx.exit, %bb.v, %bb.u, %bb.t, %ptr_token_to_idx.exit.thread, %ptr_token_eq.exit.thread89, %bb.r
  %.170 = phi ptr [ %.069, %bb.r ], [ %.017.i165, %ptr_token_eq.exit.thread89 ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.t ], [ %.0.i48.lcssa, %._crit_edge ], [ null, %ptr_token_to_idx.exit ], [ null, %ptr_token_eq.exit.thread ] ; 4 uses
  %.168 = phi i1 [ %.067, %bb.r ], [ %.067, %ptr_token_eq.exit.thread89 ], [ false, %ptr_token_to_idx.exit.thread ], [ true, %bb.z ], [ false, %bb.u ], [ true, %bb.v ], [ false, %bb.t ], [ %i.dh, %._crit_edge ], [ %i.ch, %ptr_token_to_idx.exit ], [ %.067, %ptr_token_eq.exit.thread ] ; 5 uses
  %.1 = phi ptr [ null, %bb.r ], [ %i.bh, %ptr_token_eq.exit.thread89 ], [ null, %ptr_token_to_idx.exit.thread ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.t ], [ %i.dj, %._crit_edge ], [ null, %ptr_token_to_idx.exit ], [ null, %ptr_token_eq.exit.thread ] ; 5 uses
  %i.dk = icmp eq ptr %.177, %i.b                 ; 2 uses
  %or.cond45 = and i1 %.not40, %i.dk
  br i1 %or.cond45, label %bb.ab, label %bb.ae

ptr_mut_obj_get.exit.thread:                      ; preds = %bb.k
  %i.dl = icmp eq ptr %.177, %i.b
  %or.cond45100 = and i1 %.not40, %i.dl
  br i1 %or.cond45100, label %.thread, label %.thread113

bb.ab:                                            ; preds = %ptr_mut_obj_get.exit
  br i1 %i.af, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = icmp eq i8 %i.ae, 6
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = icmp ne ptr %.1, null
  %or.cond = select i1 %i.dn, i1 true, i1 %.168
  br i1 %or.cond, label %.thread, label %.thread113

.thread:                                          ; preds = %ptr_mut_obj_get.exit.thread, %bb.ad, %bb.ab
  %.170101112 = phi ptr [ %.170, %bb.ab ], [ %.170, %bb.ad ], [ null, %ptr_mut_obj_get.exit.thread ] ; 2 uses
  %.168104111 = phi i1 [ %.168, %bb.ab ], [ %.168, %bb.ad ], [ %.067, %ptr_mut_obj_get.exit.thread ]
  %.1106110 = phi ptr [ %.1, %bb.ab ], [ %.1, %bb.ad ], [ null, %ptr_mut_obj_get.exit.thread ]
  store ptr %.034, ptr %3, align 8, !tbaa !159
  store ptr %.170101112, ptr %i.c, align 8, !tbaa !160
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %.thread, %ptr_mut_obj_get.exit
  %i.do = phi i1 [ %i.dk, %ptr_mut_obj_get.exit ], [ true, %bb.ac ], [ true, %.thread ]
  %.1105 = phi ptr [ %.1, %ptr_mut_obj_get.exit ], [ %.1, %bb.ac ], [ %.1106110, %.thread ] ; 3 uses
  %.168103 = phi i1 [ %.168, %ptr_mut_obj_get.exit ], [ %.168, %bb.ac ], [ %.168104111, %.thread ]
  %.170102 = phi ptr [ %.170, %ptr_mut_obj_get.exit ], [ %.170, %bb.ac ], [ %.170101112, %.thread ]
  %.not41 = icmp eq ptr %.1105, null
  br i1 %.not41, label %.thread113, label %bb.af

.thread113:                                       ; preds = %bb.ad, %ptr_mut_obj_get.exit.thread, %bb.ae
  %.not42 = icmp eq ptr %4, null
  br i1 %.not42, label %.loopexit, label %.loopexit.sink.split

bb.af:                                            ; preds = %bb.ae
  br i1 %i.do, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %.thread113, %bb.j
  %.sink = phi i32 [ 2, %bb.j ], [ 3, %.thread113 ]
  %.str.33.sink = phi ptr [ @.str.32, %bb.j ], [ @.str.33, %.thread113 ]
  %.lcssa220.sink = phi ptr [ %.140.i138, %bb.j ], [ %i.e, %.thread113 ]
  store i32 %.sink, ptr %4, align 8, !tbaa !155
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.str.33.sink, ptr %i.dp, align 8, !tbaa !156
  %i.dq = ptrtoint ptr %.lcssa220.sink to i64
  %i.dr = ptrtoint ptr %1 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !157
  br label %.loopexit

.loopexit:                                        ; preds = %bb.af, %.loopexit.sink.split, %.thread113, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ null, %.thread113 ], [ null, %.loopexit.sink.split ], [ %.1105, %bb.af ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @unsafe_yyjson_mut_ptr_putx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 16 uses
  %i.c = add i64 %2, %i.a                         ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %ptr_mut_obj_get.exit, %bb.a
  %.0435 = phi ptr [ %1, %bb.a ], [ %.5440, %ptr_mut_obj_get.exit ] ; 3 uses
  %.0416 = phi i8 [ 0, %bb.a ], [ %.1417, %ptr_mut_obj_get.exit ] ; 5 uses
  %.0197 = phi ptr [ %0, %bb.a ], [ %.1198, %ptr_mut_obj_get.exit ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0435, i64 1 ; 17 uses
  %i.e = icmp ult ptr %i.d, %i.b
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge.i267

.lr.ph.preheader:                                 ; preds = %bb.b
  %.0435900 = ptrtoaddr ptr %.0435 to i64
  %scevgep = getelementptr i8, ptr %.0435, i64 %i.c
  %i.f = sub i64 0, %.0435900
  %scevgep901 = getelementptr i8, ptr %scevgep, i64 %i.f ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.039.i266723 = phi ptr [ %i.h, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.g = load i8, ptr %.039.i266723, align 1, !tbaa !100
  switch i8 %i.g, label %bb.c [
    i8 47, label %.critedge.i267
    i8 126, label %.critedge.i267
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.039.i266723, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.h, %scevgep901
  br i1 %exitcond.not, label %.critedge.i267, label %.lr.ph, !llvm.loop !28

.critedge.i267:                                   ; preds = %bb.c, %.lr.ph, %.lr.ph, %bb.b
  %.039.i266.lcssa = phi ptr [ %i.d, %bb.b ], [ %.039.i266723, %.lr.ph ], [ %.039.i266723, %.lr.ph ], [ %scevgep901, %bb.c ] ; 9 uses
  %.039.i266.lcssa903 = ptrtoaddr ptr %.039.i266.lcssa to i64
  %i.i = icmp eq ptr %.039.i266.lcssa, %i.b
  br i1 %i.i, label %.critedge53.i276, label %bb.d

bb.d:                                             ; preds = %.critedge.i267
  %i.j = load i8, ptr %.039.i266.lcssa, align 1, !tbaa !100
  %.not = icmp eq i8 %i.j, 126
  br i1 %.not, label %.preheader619, label %.critedge53.i276, !prof !45

.preheader619:                                    ; preds = %bb.d
  %i.k = icmp ult ptr %.039.i266.lcssa, %i.b
  br i1 %i.k, label %.lr.ph730.preheader, label %.critedge2.i270

.lr.ph730.preheader:                              ; preds = %.preheader619
  %scevgep902 = getelementptr i8, ptr %.039.i266.lcssa, i64 %i.c
  %i.l = sub i64 0, %.039.i266.lcssa903
  %scevgep904 = getelementptr i8, ptr %scevgep902, i64 %i.l ; 2 uses
  br label %.lr.ph730

.critedge53.i276:                                 ; preds = %bb.d, %.critedge.i267
  %i.m = ptrtoint ptr %.039.i266.lcssa to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n
  br label %ptr_next_token.exit277

.lr.ph730:                                        ; preds = %.lr.ph730.preheader, %bb.i
  %.0.i269729 = phi i64 [ %.1.i273, %bb.i ], [ 0, %.lr.ph730.preheader ] ; 3 uses
  %.140.i268728 = phi ptr [ %i.q, %bb.i ], [ %.039.i266.lcssa, %.lr.ph730.preheader ] ; 4 uses
  %i.p = load i8, ptr %.140.i268728, align 1, !tbaa !100 ; 2 uses
  %.not49.i272 = icmp eq i8 %i.p, 47
  br i1 %.not49.i272, label %.critedge2.i270, label %bb.e

bb.e:                                             ; preds = %.lr.ph730
  %i.q = getelementptr inbounds nuw i8, ptr %.140.i268728, i64 1 ; 4 uses
  %i.r = icmp eq i8 %i.p, 126
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %i.q, %i.b
  br i1 %i.s, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.q, align 1, !tbaa !100
  %i.u = and i8 %i.t, -2
  %switch.i275 = icmp eq i8 %i.u, 48
  br i1 %switch.i275, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.0.i269729, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1.i273 = phi i64 [ %i.v, %bb.h ], [ %.0.i269729, %bb.e ] ; 2 uses
  %exitcond905.not = icmp eq ptr %i.q, %scevgep904
  br i1 %exitcond905.not, label %.critedge2.i270, label %.lr.ph730, !llvm.loop !29

.critedge2.i270:                                  ; preds = %bb.i, %.lr.ph730, %.preheader619
  %.140.i268.lcssa = phi ptr [ %.039.i266.lcssa, %.preheader619 ], [ %.140.i268728, %.lr.ph730 ], [ %scevgep904, %bb.i ] ; 2 uses
  %.0.i269.lcssa = phi i64 [ 0, %.preheader619 ], [ %.0.i269729, %.lr.ph730 ], [ %.1.i273, %bb.i ] ; 2 uses
  %i.w = ptrtoint ptr %.140.i268.lcssa to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = add i64 %.0.i269.lcssa, %i.x
  %i.z = sub i64 %i.w, %i.y
  br label %ptr_next_token.exit277

bb.j:                                             ; preds = %bb.g, %bb.f
  %.not249 = icmp eq ptr %8, null
  br i1 %.not249, label %yyjson_mut_obj_add.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %8, align 8, !tbaa !155
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.32, ptr %i.aa, align 8, !tbaa !156
  %i.ab = ptrtoint ptr %.140.i268728 to i64
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

ptr_next_token.exit277:                           ; preds = %.critedge2.i270, %.critedge53.i276
  %.5440 = phi ptr [ %.039.i266.lcssa, %.critedge53.i276 ], [ %.140.i268.lcssa, %.critedge2.i270 ] ; 7 uses
  %.6434 = phi i64 [ %i.o, %.critedge53.i276 ], [ %i.z, %.critedge2.i270 ] ; 20 uses
  %.6 = phi i64 [ 0, %.critedge53.i276 ], [ %.0.i269.lcssa, %.critedge2.i270 ] ; 4 uses
  %i.af = load i64, ptr %.0197, align 8, !tbaa !99 ; 6 uses
  %i.ag = trunc i64 %i.af to i8
  %i.ah = and i8 %i.ag, 7                         ; 5 uses
  switch i8 %i.ah, label %bb.aa [
    i8 7, label %bb.l
    i8 6, label %bb.s
  ]

bb.l:                                             ; preds = %ptr_next_token.exit277
  %i.ai = lshr i64 %i.af, 8                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %ptr_mut_obj_get.exit.thread, label %.preheader614, !prof !45

.preheader614:                                    ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.0197, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !100
  %.not22.i = icmp eq i64 %.6, 0
  %.not23.i745 = icmp eq i64 %.6434, 0
  br label %bb.m

bb.m:                                             ; preds = %.preheader614, %ptr_token_eq.exit.thread
  %.0.i278755 = phi i64 [ %i.ai, %.preheader614 ], [ %i.bi, %ptr_token_eq.exit.thread ]
  %.017.i754 = phi ptr [ %i.al, %.preheader614 ], [ %i.ap, %ptr_token_eq.exit.thread ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i754, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !104 ; 7 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !99
  %i.ar = lshr i64 %i.aq, 8
  %.not.i332 = icmp eq i64 %i.ar, %.6434
  br i1 %.not.i332, label %bb.n, label %ptr_token_eq.exit.thread

bb.n:                                             ; preds = %bb.m
  br i1 %.not22.i, label %ptr_token_eq.exit, label %bb.o, !prof !62

bb.o:                                             ; preds = %bb.n
  br i1 %.not23.i745, label %ptr_mut_obj_get.exit, label %.lr.ph748.preheader

.lr.ph748.preheader:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !100
  br label %.lr.ph748

.lr.ph748:                                        ; preds = %.lr.ph748.preheader, %bb.r
  %.in = phi i64 [ %i.au, %bb.r ], [ %.6434, %.lr.ph748.preheader ]
  %.0.i336747 = phi ptr [ %i.be, %bb.r ], [ %i.at, %.lr.ph748.preheader ] ; 2 uses
  %.018.i334746 = phi ptr [ %i.bd, %bb.r ], [ %i.d, %.lr.ph748.preheader ] ; 3 uses
  %i.au = add i64 %.in, -1                        ; 2 uses
  %i.av = load i8, ptr %.018.i334746, align 1, !tbaa !100 ; 2 uses
  %i.aw = icmp eq i8 %i.av, 126
  %i.ax = load i8, ptr %.0.i336747, align 1, !tbaa !100 ; 2 uses
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph748
  %i.ay = sext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i334746, i64 1 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !100
  %i.bb = icmp eq i8 %i.ba, 48
  %i.bc = select i1 %i.bb, i32 126, i32 47
  %.not25.i = icmp eq i32 %i.bc, %i.ay
  br i1 %.not25.i, label %bb.r, label %ptr_token_eq.exit.thread

bb.q:                                             ; preds = %.lr.ph748
  %.not24.i = icmp eq i8 %i.ax, %i.av
  br i1 %.not24.i, label %bb.r, label %ptr_token_eq.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %.119.i = phi ptr [ %i.az, %bb.p ], [ %.018.i334746, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.119.i, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i336747, i64 1
  %.not23.i = icmp eq i64 %i.au, 0
  br i1 %.not23.i, label %ptr_mut_obj_get.exit, label %.lr.ph748, !llvm.loop !30

ptr_token_eq.exit:                                ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !100
  %bcmp.i337 = tail call i32 @bcmp(ptr %i.bg, ptr nonnull %i.d, i64 %.6434)
  %i.bh = icmp eq i32 %bcmp.i337, 0
  br i1 %i.bh, label %ptr_mut_obj_get.exit, label %ptr_token_eq.exit.thread

ptr_token_eq.exit.thread:                         ; preds = %bb.p, %bb.q, %bb.m, %ptr_token_eq.exit
  %i.bi = add nsw i64 %.0.i278755, -1             ; 2 uses
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %ptr_mut_obj_get.exit.thread, label %bb.m, !llvm.loop !32

bb.s:                                             ; preds = %ptr_next_token.exit277
  %i.bj = getelementptr inbounds nuw i8, ptr %.0197, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !100 ; 4 uses
  %i.bl = lshr i64 %i.af, 8                       ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %bb.v, !prof !45

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp eq i64 %.6434, 1
  br i1 %i.bn, label %bb.u, label %ptr_mut_obj_get.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bo = load i8, ptr %i.d, align 1, !tbaa !100  ; 2 uses
  %switch.selectcmp.case1 = icmp eq i8 %i.bo, 48
  %switch.selectcmp.case2 = icmp eq i8 %i.bo, 45
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.bp = zext i1 %switch.selectcmp to i8
  br label %ptr_mut_obj_get.exit.thread

bb.v:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.6434
  %i.br = add i64 %.6434, -20
  %i.bs = icmp ult i64 %i.br, -19
  br i1 %i.bs, label %ptr_mut_obj_get.exit.thread, label %bb.w, !prof !45

bb.w:                                             ; preds = %bb.v
  %i.bt = load i8, ptr %i.d, align 1, !tbaa !100
  switch i8 %i.bt, label %.lr.ph738 [
    i8 48, label %bb.x
    i8 45, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bu = icmp samesign ugt i64 %.6434, 1
  br i1 %i.bu, label %ptr_mut_obj_get.exit.thread, label %ptr_mut_obj_get.exit, !prof !45

bb.y:                                             ; preds = %bb.w
  %i.bv = icmp samesign ugt i64 %.6434, 1
  br i1 %i.bv, label %ptr_token_to_idx.exit.thread, label %ptr_mut_obj_get.exit.thread, !prof !45

.lr.ph738:                                        ; preds = %bb.w, %bb.z
  %.0.i339737 = phi i64 [ %i.cb, %bb.z ], [ 0, %bb.w ] ; 2 uses
  %.022.i338736 = phi ptr [ %i.cc, %bb.z ], [ %i.d, %bb.w ] ; 2 uses
  %i.bw = load i8, ptr %.022.i338736, align 1, !tbaa !100 ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nsw i64 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i64 %i.by, 10
  br i1 %i.bz, label %bb.z, label %ptr_mut_obj_get.exit.thread, !prof !136

bb.z:                                             ; preds = %.lr.ph738
  %i.ca = mul i64 %.0.i339737, 10
  %i.cb = add i64 %i.by, %i.ca                    ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.022.i338736, i64 1 ; 2 uses
  %i.cd = icmp ult ptr %i.cc, %i.bq
  br i1 %i.cd, label %.lr.ph738, label %.critedge.i340, !llvm.loop !31

.critedge.i340:                                   ; preds = %bb.z
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %ptr_mut_obj_get.exit.thread, label %ptr_token_to_idx.exit, !prof !125

ptr_token_to_idx.exit.thread:                     ; preds = %bb.y
  br label %ptr_mut_obj_get.exit.thread

ptr_token_to_idx.exit:                            ; preds = %.critedge.i340
  %i.cf = icmp eq i64 %i.cb, %i.bl
  %i.cg = icmp eq i64 %i.cb, -1
  %i.ch = or i1 %i.cf, %i.cg
  %i.ci = zext i1 %i.ch to i8                     ; 3 uses
  %.not.i279 = icmp ult i64 %i.cb, %i.bl
  br i1 %.not.i279, label %.lr.ph743.preheader, label %ptr_mut_obj_get.exit.thread, !prof !137

.lr.ph743.preheader:                              ; preds = %ptr_token_to_idx.exit
  %i.cj = mul i64 %.0.i339737, 10
  %i.ck = add i64 %i.cj, -49
  %i.cl = zext i8 %i.bw to i64
  %i.cm = add i64 %i.ck, %i.cl
  %xtraiter = and i64 %i.cb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph743.prol.loopexit, label %.lr.ph743.prol

.lr.ph743.prol:                                   ; preds = %.lr.ph743.preheader, %.lr.ph743.prol
  %.0.i280742.prol = phi ptr [ %i.cp, %.lr.ph743.prol ], [ %i.bk, %.lr.ph743.preheader ]
  %.0441741.prol = phi i64 [ %i.cn, %.lr.ph743.prol ], [ %i.cb, %.lr.ph743.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph743.prol ], [ 0, %.lr.ph743.preheader ]
  %i.cn = add i64 %.0441741.prol, -1              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i280742.prol, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !104 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph743.prol.loopexit, label %.lr.ph743.prol, !llvm.loop !448

.lr.ph743.prol.loopexit:                          ; preds = %.lr.ph743.prol, %.lr.ph743.preheader
  %.lcssa1214.unr = phi ptr [ poison, %.lr.ph743.preheader ], [ %i.cp, %.lr.ph743.prol ] ; 2 uses
  %.0.i280742.unr = phi ptr [ %i.bk, %.lr.ph743.preheader ], [ %i.cp, %.lr.ph743.prol ]
  %.0441741.unr = phi i64 [ %i.cb, %.lr.ph743.preheader ], [ %i.cn, %.lr.ph743.prol ]
  %i.cq = icmp ult i64 %i.cm, 7
  br i1 %i.cq, label %ptr_mut_obj_get.exit, label %.lr.ph743

.lr.ph743:                                        ; preds = %.lr.ph743.prol.loopexit, %.lr.ph743
  %.0.i280742 = phi ptr [ %i.dh, %.lr.ph743 ], [ %.0.i280742.unr, %.lr.ph743.prol.loopexit ]
  %.0441741 = phi i64 [ %i.df, %.lr.ph743 ], [ %.0441741.unr, %.lr.ph743.prol.loopexit ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i280742, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !104
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !104
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !104
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !104
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !104
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !104
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !104
  %i.df = add i64 %.0441741, -8                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !104 ; 3 uses
  %.not30.i.7 = icmp eq i64 %i.df, 0
  br i1 %.not30.i.7, label %ptr_mut_obj_get.exit, label %.lr.ph743, !llvm.loop !33

bb.aa:                                            ; preds = %ptr_next_token.exit277
  %.not220 = icmp eq ptr %8, null
  br i1 %.not220, label %yyjson_mut_obj_add.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 3, ptr %8, align 8, !tbaa !155
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.di, align 8, !tbaa !156
  %i.dj = ptrtoint ptr %i.d to i64
  %i.dk = ptrtoint ptr %1 to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

ptr_mut_obj_get.exit.thread:                      ; preds = %bb.l, %ptr_token_to_idx.exit, %.critedge.i340, %bb.x, %bb.v, %.lr.ph738, %ptr_token_eq.exit.thread, %bb.u, %bb.t, %ptr_token_to_idx.exit.thread, %bb.y
  %.6434890 = phi i64 [ 1, %bb.y ], [ %.6434, %.lr.ph738 ], [ %.6434, %ptr_token_to_idx.exit.thread ], [ %.6434, %bb.t ], [ 1, %bb.u ], [ %.6434, %ptr_token_eq.exit.thread ], [ %.6434, %bb.v ], [ %.6434, %bb.x ], [ %.6434, %.critedge.i340 ], [ %.6434, %ptr_token_to_idx.exit ], [ %.6434, %bb.l ] ; 2 uses
  %i.dn = phi i8 [ 6, %bb.y ], [ 6, %.lr.ph738 ], [ 6, %ptr_token_to_idx.exit.thread ], [ 6, %bb.t ], [ 6, %bb.u ], [ 7, %ptr_token_eq.exit.thread ], [ %i.ah, %ptr_token_to_idx.exit ], [ %i.ah, %.critedge.i340 ], [ 6, %bb.x ], [ 6, %bb.v ], [ 7, %bb.l ] ; 2 uses
  %.1417.ph = phi i8 [ 1, %bb.y ], [ 0, %.lr.ph738 ], [ 0, %ptr_token_to_idx.exit.thread ], [ 0, %bb.t ], [ %i.bp, %bb.u ], [ %.0416, %ptr_token_eq.exit.thread ], [ %i.ci, %ptr_token_to_idx.exit ], [ 0, %.critedge.i340 ], [ 0, %bb.x ], [ 0, %bb.v ], [ %.0416, %bb.l ] ; 2 uses
  %i.do = icmp eq ptr %.5440, %i.b
  br i1 %i.do, label %.loopexit, label %bb.ad, !prof !62

ptr_mut_obj_get.exit:                             ; preds = %.lr.ph743.prol.loopexit, %.lr.ph743, %ptr_token_eq.exit, %bb.o, %bb.r, %bb.x
  %.0419 = phi ptr [ %.017.i754, %bb.r ], [ %.017.i754, %ptr_token_eq.exit ], [ %i.bk, %bb.x ], [ %.017.i754, %bb.o ], [ %.lcssa1214.unr, %.lr.ph743.prol.loopexit ], [ %i.dh, %.lr.ph743 ] ; 2 uses
  %.1417 = phi i8 [ %.0416, %bb.r ], [ %.0416, %ptr_token_eq.exit ], [ 0, %bb.x ], [ %.0416, %bb.o ], [ %i.ci, %.lr.ph743 ], [ %i.ci, %.lr.ph743.prol.loopexit ] ; 3 uses
  %.pn = phi ptr [ %i.ap, %bb.r ], [ %i.ap, %ptr_token_eq.exit ], [ %i.bk, %bb.x ], [ %i.ap, %bb.o ], [ %.lcssa1214.unr, %.lr.ph743.prol.loopexit ], [ %i.dh, %.lr.ph743 ]
  %.1198.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.1198 = load ptr, ptr %.1198.in, align 8, !tbaa !104 ; 4 uses
  %.not221 = icmp eq ptr %.1198, null
  %i.dp = icmp eq ptr %.5440, %i.b                ; 2 uses
  %or.cond251 = or i1 %i.dp, %.not221
  br i1 %or.cond251, label %bb.ac, label %bb.b

bb.ac:                                            ; preds = %ptr_mut_obj_get.exit
  br i1 %i.dp, label %.loopexit, label %bb.ad, !prof !62

bb.ad:                                            ; preds = %ptr_mut_obj_get.exit.thread, %bb.ac
  %.6434889 = phi i64 [ %.6434890, %ptr_mut_obj_get.exit.thread ], [ %.6434, %bb.ac ]
  %i.dq = phi i8 [ %i.dn, %ptr_mut_obj_get.exit.thread ], [ %i.ah, %bb.ac ] ; 2 uses
  %.0419468474 = phi ptr [ null, %ptr_mut_obj_get.exit.thread ], [ %.0419, %bb.ac ] ; 2 uses
  %.1417469472 = phi i8 [ %.1417.ph, %ptr_mut_obj_get.exit.thread ], [ %.1417, %bb.ac ] ; 3 uses
  %.1198470471 = phi ptr [ null, %ptr_mut_obj_get.exit.thread ], [ %.1198, %bb.ac ]
  %.5440897906 = ptrtoaddr ptr %.5440 to i64
  br i1 %5, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not223 = icmp eq ptr %8, null
  br i1 %.not223, label %yyjson_mut_obj_add.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 3, ptr %8, align 8, !tbaa !155
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.dr, align 8, !tbaa !156
  %i.ds = ptrtoint ptr %i.d to i64
  %i.dt = ptrtoint ptr %1 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

bb.ag:                                            ; preds = %bb.ad
  %i.dw = icmp eq i8 %i.dq, 6
  br i1 %i.dw, label %bb.ah, label %ptr_next_token.exit265

bb.ah:                                            ; preds = %bb.ag
  %i.dx = trunc nuw i8 %.1417469472 to i1
  %or.cond = and i1 %6, %i.dx
  br i1 %or.cond, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not224 = icmp eq ptr %8, null
  br i1 %.not224, label %yyjson_mut_obj_add.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 3, ptr %8, align 8, !tbaa !155
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.33, ptr %i.dy, align 8, !tbaa !156
  %i.dz = ptrtoint ptr %i.d to i64
  %i.ea = ptrtoint ptr %1 to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

bb.ak:                                            ; preds = %bb.ah
  %.not.i283 = icmp eq ptr %4, null
  br i1 %.not.i283, label %.thread, label %bb.al, !prof !45

bb.al:                                            ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !87
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !86 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.am, label %unsafe_yyjson_mut_val.exit.i284, !prof !45

bb.am:                                            ; preds = %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ej = tail call zeroext i1 @unsafe_yyjson_val_pool_grow(ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ei, i64 noundef 1)
  br i1 %i.ej, label %.unsafe_yyjson_mut_val.exit.i284_crit_edge, label %.thread, !prof !62

.unsafe_yyjson_mut_val.exit.i284_crit_edge:       ; preds = %bb.am
  %.pre = load ptr, ptr %i.ed, align 8, !tbaa !86
  br label %unsafe_yyjson_mut_val.exit.i284

unsafe_yyjson_mut_val.exit.i284:                  ; preds = %.unsafe_yyjson_mut_val.exit.i284_crit_edge, %bb.al
  %i.ek = phi ptr [ %.pre, %.unsafe_yyjson_mut_val.exit.i284_crit_edge ], [ %i.eg, %bb.al ] ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %i.el, ptr %i.ed, align 8, !tbaa !86
  %.not9.i286.not = icmp eq ptr %i.ek, null
  br i1 %.not9.i286.not, label %.thread, label %bb.ao, !prof !103

.thread:                                          ; preds = %bb.am, %unsafe_yyjson_mut_val.exit.i284, %bb.ak
  %.not226 = icmp eq ptr %8, null
  br i1 %.not226, label %yyjson_mut_obj_add.exit, label %bb.an

bb.an:                                            ; preds = %.thread
  store i32 6, ptr %8, align 8, !tbaa !155
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.34, ptr %i.em, align 8, !tbaa !156
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.en, align 8, !tbaa !157
  br label %yyjson_mut_obj_add.exit

bb.ao:                                            ; preds = %unsafe_yyjson_mut_val.exit.i284
  store i64 7, ptr %i.ek, align 8, !tbaa !102
  %i.eo = getelementptr inbounds nuw i8, ptr %.5440, i64 1 ; 7 uses
  %i.ep = icmp ult ptr %i.eo, %i.b
  br i1 %i.ep, label %.lr.ph757.preheader, label %.critedge.i255

.lr.ph757.preheader:                              ; preds = %bb.ao
  %i.eq = sub i64 %i.c, %.5440897906
  %scevgep907 = getelementptr i8, ptr %.5440, i64 %i.eq ; 2 uses
  br label %.lr.ph757

.lr.ph757:                                        ; preds = %.lr.ph757.preheader, %bb.ap
  %.039.i254756 = phi ptr [ %i.es, %bb.ap ], [ %i.eo, %.lr.ph757.preheader ] ; 4 uses
  %i.er = load i8, ptr %.039.i254756, align 1, !tbaa !100
  switch i8 %i.er, label %bb.ap [
    i8 47, label %.critedge.i255
    i8 126, label %.critedge.i255
  ]

bb.ap:                                            ; preds = %.lr.ph757
  %i.es = getelementptr inbounds nuw i8, ptr %.039.i254756, i64 1 ; 2 uses
  %exitcond908.not = icmp eq ptr %i.es, %scevgep907
  br i1 %exitcond908.not, label %.critedge.i255, label %.lr.ph757, !llvm.loop !28

.critedge.i255:                                   ; preds = %bb.ap, %.lr.ph757, %.lr.ph757, %bb.ao
  %.039.i254.lcssa = phi ptr [ %i.eo, %bb.ao ], [ %.039.i254756, %.lr.ph757 ], [ %.039.i254756, %.lr.ph757 ], [ %scevgep907, %bb.ap ] ; 9 uses
  %.039.i254.lcssa909 = ptrtoaddr ptr %.039.i254.lcssa to i64
  %i.et = icmp eq ptr %.039.i254.lcssa, %i.b
  br i1 %i.et, label %.critedge53.i264, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i255
  %i.eu = load i8, ptr %.039.i254.lcssa, align 1, !tbaa !100
  %.not598 = icmp eq i8 %i.eu, 126
  br i1 %.not598, label %.preheader613, label %.critedge53.i264, !prof !45

.preheader613:                                    ; preds = %bb.aq
  %i.ev = icmp ult ptr %.039.i254.lcssa, %i.b
  br i1 %i.ev, label %.lr.ph765.preheader, label %.critedge2.i258

.lr.ph765.preheader:                              ; preds = %.preheader613
  %i.ew = sub i64 %i.c, %.039.i254.lcssa909
  %scevgep910 = getelementptr i8, ptr %.039.i254.lcssa, i64 %i.ew ; 2 uses
  br label %.lr.ph765

.critedge53.i264:                                 ; preds = %bb.aq, %.critedge.i255
  %i.ex = ptrtoint ptr %.039.i254.lcssa to i64
  %i.ey = ptrtoint ptr %i.eo to i64
  %i.ez = sub i64 %i.ex, %i.ey
  br label %ptr_next_token.exit265

.lr.ph765:                                        ; preds = %.lr.ph765.preheader, %bb.av
  %.0.i257764 = phi i64 [ %.1.i261, %bb.av ], [ 0, %.lr.ph765.preheader ] ; 3 uses
  %.140.i256763 = phi ptr [ %i.fb, %bb.av ], [ %.039.i254.lcssa, %.lr.ph765.preheader ] ; 3 uses
  %i.fa = load i8, ptr %.140.i256763, align 1, !tbaa !100 ; 2 uses
  %.not49.i260 = icmp eq i8 %i.fa, 47
  br i1 %.not49.i260, label %.critedge2.i258, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph765
  %i.fb = getelementptr inbounds nuw i8, ptr %.140.i256763, i64 1 ; 4 uses
  %i.fc = icmp eq i8 %i.fa, 126
  br i1 %i.fc, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fd = icmp eq ptr %i.fb, %i.b
  br i1 %i.fd, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fe = load i8, ptr %i.fb, align 1, !tbaa !100
  %i.ff = and i8 %i.fe, -2
  %switch.i263 = icmp eq i8 %i.ff, 48
  br i1 %switch.i263, label %bb.au, label %bb.aw
end_hunk_0
