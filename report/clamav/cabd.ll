Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/cabd?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cabd_can_merge_folders:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.03152, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !81
  %.not42 = icmp eq i32 %i.p, %i.r
  br i1 %.not42, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.03351, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %.03152, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !82
  %.not43 = icmp eq i32 %i.t, %i.v
  br i1 %.not43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %.03351, align 8, !tbaa !40 ; 2 uses
  %i.x = load ptr, ptr %.03152, align 8, !tbaa !40
  %.not40.not = icmp eq ptr %i.w, null
  br i1 %.not40.not, label %.critedge, label %.preheader49

bb.h:                                             ; preds = %.preheader49, %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.preheader

.preheader:                                       ; preds = %bb.h, %.loopexit
  %.155 = phi i32 [ 0, %bb.h ], [ %.2, %.loopexit ]
  %.13454 = phi ptr [ %i.l, %bb.h ], [ %i.an, %.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13454, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %.13454, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.13253 = phi ptr [ %i.n, %.preheader ], [ %i.aj, %bb.k ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.13253, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !81
  %i.ae = icmp eq i32 %i.aa, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.ab, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %.13253, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !82
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = load ptr, ptr %.13253, align 8, !tbaa !40 ; 2 uses
  %.not46 = icmp eq ptr %i.aj, null
  br i1 %.not46, label %.critedge48, label %bb.i

.critedge48:                                      ; preds = %bb.k
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %.13454, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  tail call void (ptr, ptr, ...) %i.ak(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef %i.am) #7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %.critedge48
  %.2 = phi i32 [ %.155, %.critedge48 ], [ 1, %bb.j ] ; 2 uses
  %i.an = load ptr, ptr %.13454, align 8, !tbaa !40 ; 2 uses
  %.not45 = icmp eq ptr %i.an, null
  br i1 %.not45, label %.critedge, label %.preheader

.critedge:                                        ; preds = %bb.g, %.loopexit, %bb.c, %bb.d, %bb.b, %bb.a
  %.035 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ %.2, %.loopexit ], [ 0, %bb.d ], [ 1, %bb.g ]
  ret i32 %.035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal i32 @cabd_sys_read(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !100
  %.not50 = icmp eq i32 %i.g, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = load i32, ptr %i.j, align 8, !tbaa !55
  %i.l = and i32 %i.k, 15
  %i.m = icmp ne i32 %i.l, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.not63.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %bb.c ]
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.v = icmp ne i32 %i.e, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.ah
  %.072 = phi i32 [ %2, %.lr.ph ], [ %.1, %bb.ah ] ; 7 uses
  %.04671 = phi ptr [ %1, %.lr.ph ], [ %.147, %bb.ah ] ; 5 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !24   ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 176 ; 6 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 168 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %.not51 = icmp eq i32 %i.ah, 0
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select = call i32 @llvm.smin.i32(i32 %.072, i32 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.aj = sext i32 %spec.select to i64            ; 3 uses
  call void %i.ai(ptr noundef %i.ad, ptr noundef %.04671, i64 noundef %i.aj) #7
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 168 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !96
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aj
  store ptr %i.an, ptr %i.al, align 8, !tbaa !96
  %i.ao = getelementptr inbounds i8, ptr %.04671, i64 %i.aj
  %i.ap = sub nsw i32 %.072, %spec.select
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131 ; 2 uses
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !131
  %i.at = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !84
  %.not52 = icmp ult i32 %i.ar, %i.av
  br i1 %.not52, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !37
  %.not55 = icmp eq i32 %i.aw, 0
  br i1 %.not55, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  store i32 8, ptr %i.y, align 4, !tbaa !97
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 184 ; 2 uses
  store ptr %i.ax, ptr %i.aa, align 8, !tbaa !95
  store ptr %i.ax, ptr %i.ac, align 8, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 152 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  br label %bb.k

bb.k:                                             ; preds = %bb.ab, %bb.j
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !53
  %i.bd = call i32 %i.bb(ptr noundef %i.bc, ptr noundef nonnull %i.a, i32 noundef 8) #7, !inline_history !132
  %.not.i = icmp eq i32 %i.bd, 8
  br i1 %.not.i, label %bb.l, label %cabd_sys_read_block.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !133
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !106 ; 2 uses
  %.not58.i = icmp eq i32 %i.bi, 0
  br i1 %.not58.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.bk = load ptr, ptr %i.ay, align 8, !tbaa !53
  %i.bl = sext i32 %i.bi to i64
  %i.bm = call i32 %i.bj(ptr noundef %i.bk, i64 noundef %i.bl, i32 noundef 1) #7, !inline_history !132
  %.not59.i = icmp eq i32 %i.bm, 0
  br i1 %.not59.i, label %bb.n, label %cabd_sys_read_block.exit.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bn = load i8, ptr %i.t, align 1, !tbaa !76   ; 2 uses
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8
  %i.bq = load i8, ptr %i.s, align 4, !tbaa !76   ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = or disjoint i32 %i.bp, %i.br            ; 5 uses
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 2 uses
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = trunc i64 %i.bx to i32
  %i.ca = add i32 %i.bs, %i.bz                    ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 38912
  %i.cc = icmp samesign ugt i32 %i.ca, 65535
  %or.cond.i = or i1 %.not, %i.cc
  %or.cond81.i = select i1 %i.cb, i1 %or.cond.i, i1 false
  br i1 %or.cond81.i, label %cabd_sys_read_block.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load i16, ptr %i.u, align 2
  %i.ce = icmp ult i16 %i.cd, -32767
  %or.cond3.i = or i1 %i.v, %i.ce
  br i1 %or.cond3.i, label %bb.p, label %cabd_sys_read_block.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !53
  %i.ch = call i32 %i.cf(ptr noundef %i.cg, ptr noundef %i.bt, i32 noundef %i.bs) #7, !inline_history !132
  %.not60.i = icmp eq i32 %i.ch, %i.bs
  br i1 %.not60.i, label %bb.q, label %cabd_sys_read_block.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ci = load i32, ptr %i.a, align 4             ; 2 uses
  %.not61.i = icmp eq i32 %i.ci, 0
  %.pre83.i = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 7 uses
  br i1 %.not61.i, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = lshr i32 %i.bs, 2                       ; 4 uses
  %.not22.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.r
  %3 = zext i8 %i.bn to i64
  %4 = shl nuw nsw i64 %3, 8
  %i.ck = zext i8 %i.bq to i64
  %5 = or disjoint i64 %4, %i.ck                  ; 2 uses
  %6 = lshr i64 %5, 2                             ; 2 uses
  %min.iters.check = icmp samesign ult i64 %5, 32
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %6, 16376                      ; 4 uses
  %i.cl = trunc nuw nsw i64 %n.vec to i32
  %i.cm = sub nsw i32 %i.cj, %i.cl
  %i.cn = shl nuw nsw i64 %n.vec, 2
  %i.co = getelementptr i8, ptr %.pre83.i, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cs, %vector.body ]
  %i.cp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.pre83.i, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load101 = load <4 x i32>, ptr %i.cq, align 1
  %i.cr = xor <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cs = xor <4 x i32> %wide.load101, %vec.phi100 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <4 x i32> %i.cs, %i.cr
  %i.cu = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader103

.lr.ph.i.i.preheader103:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.01725.i.i.ph = phi i32 [ %i.cj, %.lr.ph.i.i.preheader ], [ %i.cm, %middle.block ]
  %.01824.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.cu, %middle.block ]
  %.01923.i.i.ph = phi ptr [ %.pre83.i, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader103, %.lr.ph.i.i
  %.01725.i.i = phi i32 [ %i.cv, %.lr.ph.i.i ], [ %.01725.i.i.ph, %.lr.ph.i.i.preheader103 ]
  %.01824.i.i = phi i32 [ %i.cx, %.lr.ph.i.i ], [ %.01824.i.i.ph, %.lr.ph.i.i.preheader103 ]
  %.01923.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.01923.i.i.ph, %.lr.ph.i.i.preheader103 ] ; 2 uses
  %i.cv = add nsw i32 %.01725.i.i, -1             ; 2 uses
  %i.cw = load i32, ptr %.01923.i.i, align 1
  %i.cx = xor i32 %i.cw, %.01824.i.i              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01923.i.i, i64 4
  %.not.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !137

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i32 [ %i.cu, %middle.block ], [ %i.cx, %.lr.ph.i.i ]
  %i.cz = add nsw i32 %i.cj, -1
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 2
  %i.dc = getelementptr i8, ptr %.pre83.i, i64 %i.db
  %scevgep.i.i = getelementptr i8, ptr %i.dc, i64 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.r
  %.019.lcssa.i.i = phi ptr [ %.pre83.i, %bb.r ], [ %scevgep.i.i, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.018.lcssa.i.i = phi i32 [ 0, %bb.r ], [ %.lcssa, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.dd = and i32 %i.br, 3
  switch i32 %i.dd, label %default.unreachable [
    i32 3, label %bb.s
    i32 2, label %bb.t
    i32 1, label %bb.u
    i32 0, label %cabd_checksum.exit.i
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.019.lcssa.i.i, i64 1
  %i.df = load i8, ptr %.019.lcssa.i.i, align 1, !tbaa !76
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i
  %.120.i.i = phi ptr [ %i.de, %bb.s ], [ %.019.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ %i.dh, %bb.s ], [ 0, %._crit_edge.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.120.i.i, i64 1
  %i.dj = load i8, ptr %.120.i.i, align 1, !tbaa !76
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 8
  %i.dm = or disjoint i32 %i.dl, %.0.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i
  %.221.i.i = phi ptr [ %i.di, %bb.t ], [ %.019.lcssa.i.i, %._crit_edge.i.i ]
  %.1.i.i = phi i32 [ %i.dm, %bb.t ], [ 0, %._crit_edge.i.i ]
  %i.dn = load i8, ptr %.221.i.i, align 1, !tbaa !76
  %i.do = zext i8 %i.dn to i32
  %i.dp = or i32 %.1.i.i, %i.do
  %i.dq = xor i32 %i.dp, %.018.lcssa.i.i
  br label %cabd_checksum.exit.i

default.unreachable:                              ; preds = %._crit_edge.i.i
  unreachable

cabd_checksum.exit.i:                             ; preds = %bb.u, %._crit_edge.i.i
  %.2.i.i = phi i32 [ %i.dq, %bb.u ], [ %.018.lcssa.i.i, %._crit_edge.i.i ]
  %i.dr = load i32, ptr %i.s, align 4
  %i.ds = xor i32 %i.dr, %.2.i.i
  %.not62.i = icmp eq i32 %i.ds, %i.ci
  br i1 %.not62.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %cabd_checksum.exit.i
  br i1 %.not63.i, label %cabd_sys_read_block.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.du = load ptr, ptr %i.ay, align 8, !tbaa !53
  call void (ptr, ptr, ...) %i.dt(ptr noundef %i.du, ptr noundef nonnull @.str.11) #7, !inline_history !132
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !95
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %cabd_checksum.exit.i, %bb.q
  %i.dv = phi ptr [ %.pre.i, %bb.w ], [ %.pre83.i, %cabd_checksum.exit.i ], [ %.pre83.i, %bb.q ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.by
  store ptr %i.dw, ptr %i.aa, align 8, !tbaa !95
  %i.dx = load i16, ptr %i.u, align 2             ; 2 uses
  %.not64.i = icmp eq i16 %i.dx, 0
  br i1 %.not64.i, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.dz = load ptr, ptr %i.ay, align 8, !tbaa !53
  call void %i.dy(ptr noundef %i.dz) #7, !inline_history !132
  store ptr null, ptr %i.ay, align 8, !tbaa !53
  %i.ea = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !63 ; 3 uses
  store ptr %i.eb, ptr %i.az, align 8, !tbaa !94
  %.not65.i = icmp eq ptr %i.eb, null
  br i1 %.not65.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ec = load ptr, ptr %i.w, align 8, !tbaa !75
  call void (ptr, ptr, ...) %i.ec(ptr noundef null, ptr noundef nonnull @.str.12) #7, !inline_history !132
  br label %cabd_sys_read_block.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !133 ; 2 uses
  store ptr %i.ee, ptr %i.ba, align 8, !tbaa !91
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !28
  %i.ei = call ptr %i.ef(ptr noundef nonnull %i.c, ptr noundef %i.eh, i32 noundef 0) #7, !inline_history !132 ; 3 uses
  store ptr %i.ei, ptr %i.ay, align 8, !tbaa !53
  %.not66.i = icmp eq ptr %i.ei, null
  br i1 %.not66.i, label %cabd_sys_read_block.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.ek = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !138
  %i.en = call i32 %i.ej(ptr noundef nonnull %i.ei, i64 noundef %i.em, i32 noundef 0) #7, !inline_history !132
  %.not67.i = icmp eq i32 %i.en, 0
  br i1 %.not67.i, label %bb.k, label %cabd_sys_read_block.exit.thread

cabd_sys_read_block.exit.thread:                  ; preds = %bb.v, %bb.ab, %bb.aa, %bb.p, %bb.o, %bb.m, %bb.k, %bb.n, %bb.z
  %.3.i.ph = phi i32 [ 8, %bb.z ], [ 9, %bb.v ], [ 5, %bb.ab ], [ 2, %bb.aa ], [ 3, %bb.p ], [ 8, %bb.o ], [ 5, %bb.m ], [ 3, %bb.k ], [ 8, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store i32 %.3.i.ph, ptr %i.y, align 4, !tbaa !97
  br label %bb.ai

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.y, align 4, !tbaa !97
  %i.eo = zext i16 %i.dx to i64
  %i.ep = load ptr, ptr %i.o, align 8, !tbaa !24  ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !139
  %i.es = add nsw i64 %i.er, %i.eo
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !139
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 120
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !55
  %i.ev = and i32 %i.eu, 15
  %i.ew = icmp eq i32 %i.ev, 2
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 176 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !95 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !95
  store i8 -1, ptr %i.ey, align 1, !tbaa !76
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fa = phi ptr [ %.pre, %bb.ad ], [ %i.ep, %bb.ac ] ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !131
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !47
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !84
  %.not54 = icmp ult i32 %i.fc, %i.ff
  br i1 %.not54, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 120
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !55
  %i.fi = and i32 %i.fh, 15
  %i.fj = icmp eq i32 %i.fi, 3
  br i1 %i.fj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 136
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !139
  call void @lzxd_set_output_length(ptr noundef %i.fl, i64 noundef %i.fn) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af, %bb.f
  %.147 = phi ptr [ %i.ao, %bb.f ], [ %.04671, %bb.ag ], [ %.04671, %bb.af ], [ %.04671, %bb.ae ]
  %.1 = phi i32 [ %i.ap, %bb.f ], [ %.072, %bb.ag ], [ %.072, %bb.af ], [ %.072, %bb.ae ] ; 3 uses
  %i.fo = icmp sgt i32 %.1, 0
  br i1 %i.fo, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.ah, %bb.d, %bb.i, %bb.h
  %.067 = phi i32 [ %.072, %bb.h ], [ %.072, %bb.i ], [ %2, %bb.d ], [ %.1, %bb.ah ]
  %i.fp = sub nsw i32 %2, %.067
  br label %bb.ai

bb.ai:                                            ; preds = %cabd_sys_read_block.exit.thread, %.loopexit
  %.048 = phi i32 [ %i.fp, %.loopexit ], [ -1, %cabd_sys_read_block.exit.thread ]
  ret i32 %.048
}
end_hunk_0
