Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpz?download=true
inline.NumInlined: 1746
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN11mpz_managerILb1EE15is_power_of_twoERK3mpzRj:bb.a

.loopexit.sink.split:                             ; preds = %bb.d, %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit
  %.sink = phi i32 [ %i.v, %_ZN11mpz_managerILb1EE4log2ERK3mpz.exit ], [ %i.i, %bb.d ]
  store i32 %.sink, ptr %2, align 4, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %.critedge, %bb.c, %bb.a
  %.3 = phi i1 [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.a ], [ true, %.loopexit.sink.split ], [ false, %.lr.ph ]
  ret i1 %.3
}

declare noundef i32 @_Z4log2j(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb1EE4log2ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_Z4log2j(i32 noundef %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = shl i32 %i.l, 5
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  %i.q = tail call noundef i32 @_Z4log2j(i32 noundef %i.p)
  %i.r = add i32 %i.m, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.r, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN11mpz_managerILb1EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZN11mpz_managerILb1EE9normalizeER3mpz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN11mpz_managerILb1EE9normalizeER3mpz.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %2, 32
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %2 to i64
  %i.j = shl nuw nsw i64 1, %i.i
  %i.k = sext i32 %i.b to i64
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc nsw i64 %i.l to i32
  store i32 %i.m, ptr %1, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb1EE9normalizeER3mpz.exit

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %1, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb1EE9normalizeER3mpz.exit

bb.g:                                             ; preds = %bb.c
  %i.n = lshr i32 %2, 5                           ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 9 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35   ; 3 uses
  %.not = icmp ult i32 %i.n, %i.q
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 8, !tbaa !27
  %i.r = and i8 %i.e, -2
  store i8 %i.r, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb1EE9normalizeER3mpz.exit

bb.i:                                             ; preds = %bb.g
  %i.s = and i32 %2, 31                           ; 10 uses
  %narrow = sub nuw nsw i32 32, %i.s              ; 6 uses
  %i.t = sub nuw i32 %i.q, %i.n                   ; 6 uses
  %i.u = getelementptr i8, ptr %i.p, i64 8        ; 36 uses
  %.not81 = icmp eq i32 %i.n, 0
  br i1 %.not81, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.v = add i32 %i.t, -1                         ; 4 uses
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %._crit_edge94, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.preheader
  %wide.trip.count111 = zext i32 %i.v to i64      ; 3 uses
  %.pre = load i32, ptr %i.u, align 4, !tbaa !36  ; 2 uses
  %min.iters.check156 = icmp ult i32 %i.v, 8
  br i1 %min.iters.check156, label %.lr.ph93.preheader172, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph93.preheader
  %n.vec158 = and i64 %wide.trip.count111, 4294967288 ; 3 uses
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat162 = shufflevector <4 x i32> %broadcast.splatinsert161, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre, i64 3
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph157
  %index164 = phi i64 [ 0, %vector.ph157 ], [ %index.next167, %vector.body163 ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph157 ], [ %wide.load166, %vector.body163 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index164 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index164 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %wide.load165 = load <4 x i32>, ptr %i.y, align 4, !tbaa !36 ; 3 uses
  %wide.load166 = load <4 x i32>, ptr %i.z, align 4, !tbaa !36 ; 4 uses
  %i.aa = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load165, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = shufflevector <4 x i32> %wide.load165, <4 x i32> %wide.load166, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ac = lshr <4 x i32> %i.aa, %broadcast.splat160
  %i.ad = lshr <4 x i32> %i.ab, %broadcast.splat160
  %i.ae = shl <4 x i32> %wide.load165, %broadcast.splat162
  %i.af = shl <4 x i32> %wide.load166, %broadcast.splat162
  %i.ag = or disjoint <4 x i32> %i.ae, %i.ac
  %i.ah = or disjoint <4 x i32> %i.af, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.ag, ptr %i.w, align 4, !tbaa !36
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !36
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.aj = icmp eq i64 %index.next167, %n.vec158
  br i1 %i.aj, label %middle.block168, label %vector.body163, !llvm.loop !187

middle.block168:                                  ; preds = %vector.body163
  %vector.recur.extract = extractelement <4 x i32> %wide.load166, i64 3
  %cmp.n169 = icmp eq i64 %n.vec158, %wide.trip.count111
  br i1 %cmp.n169, label %._crit_edge94.loopexit, label %.lr.ph93.preheader172

.lr.ph93.preheader172:                            ; preds = %.lr.ph93.preheader, %middle.block168
  %.ph = phi i32 [ %.pre, %.lr.ph93.preheader ], [ %vector.recur.extract, %middle.block168 ]
  %indvars.iv108.ph = phi i64 [ 0, %.lr.ph93.preheader ], [ %n.vec158, %middle.block168 ]
  br label %.lr.ph93

bb.j:                                             ; preds = %bb.i
  %.not82 = icmp eq i32 %i.s, 0
  br i1 %.not82, label %.lr.ph91.preheader, label %.preheader84

.preheader84:                                     ; preds = %bb.j
  %i.ak = add i32 %i.t, -1                        ; 4 uses
  %.not96 = icmp eq i32 %i.ak, 0
  br i1 %.not96, label %.preheader84.._crit_edge_crit_edge, label %.lr.ph.preheader

.preheader84.._crit_edge_crit_edge:               ; preds = %.preheader84
  %.pre113 = zext nneg i32 %i.n to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader84
  %wide.trip.count = zext i32 %i.ak to i64        ; 7 uses
  %min.iters.check = icmp ult i32 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.preheader174, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.al = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = sub nuw nsw i32 -2, %i.n
  %i.ao = icmp ult i32 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, 4294967295
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ar = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.as = getelementptr i8, ptr %i.p, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %i.au = lshr i32 %2, 5
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 3 uses
  %i.ax = getelementptr i8, ptr %i.p, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = add nuw nsw i64 %i.aw, %i.ar            ; 2 uses
  %i.ba = getelementptr i8, ptr %i.p, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %3 = getelementptr i8, ptr %i.p, i64 %i.aw
  %4 = getelementptr i8, ptr %3, i64 12
  %5 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.bc = getelementptr i8, ptr %5, i64 12
  %bound0 = icmp ult ptr %i.u, %i.bb
  %bound1 = icmp ult ptr %i.ay, %i.at
  %found.conflict = and i1 %bound0, %bound1
  %bound0134 = icmp ult ptr %i.u, %i.bc
  %bound1135 = icmp ult ptr %4, %i.at
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx = or i1 %found.conflict, %found.conflict136
  br i1 %conflict.rdx, label %.lr.ph.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 5 uses
  %i.bd = trunc nuw i64 %n.vec to i32
  %i.be = add i32 %i.n, %i.bd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = trunc i64 %index to i32
  %i.bg = add i32 %i.n, %i.bf                     ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bh
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !36, !alias.scope !198
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bk = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  store <4 x i32> %i.bk, ptr %i.bj, align 4, !tbaa !36, !alias.scope !199, !noalias !200
  %i.bl = add i32 %i.bg, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm
  %wide.load139 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !36, !alias.scope !201
  %i.bo = shl <4 x i32> %wide.load139, %broadcast.splat138
  %i.bp = or disjoint <4 x i32> %i.bo, %i.bk
  store <4 x i32> %i.bp, ptr %i.bj, align 4, !tbaa !36, !alias.scope !199, !noalias !200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %i.br = add nuw nsw i64 %n.vec, %i.av
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader174

.lr.ph.preheader174:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.07387.ph = phi i32 [ %i.n, %vector.memcheck ], [ %i.n, %vector.scevcheck ], [ %i.n, %.lr.ph.preheader ], [ %i.be, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader174
  %i.bs = zext i32 %.07387.ph to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.ph ; 2 uses
  %i.bw = lshr i32 %i.bu, %i.s                    ; 2 uses
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !36
  %i.bx = add i32 %.07387.ph, 1                   ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36
  %i.cb = shl i32 %i.ca, %narrow
  %i.cc = or disjoint i32 %i.cb, %i.bw
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !36
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader174
  %.lcssa175.unr = phi i64 [ poison, %.lr.ph.preheader174 ], [ %i.by, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader174 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.07387.unr = phi i32 [ %.07387.ph, %.lr.ph.preheader174 ], [ %i.bx, %.lr.ph.prol ]
  %i.cd = add nsw i64 %wide.trip.count, -1
  %i.ce = icmp eq i64 %indvars.iv.ph, %i.cd
  br i1 %i.ce, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph91.preheader:                               ; preds = %bb.j
  %wide.trip.count106 = zext i32 %i.t to i64      ; 6 uses
  %min.iters.check143 = icmp ult i32 %i.t, 12
  br i1 %min.iters.check143, label %.lr.ph91.preheader173, label %vector.scevcheck141

vector.scevcheck141:                              ; preds = %.lr.ph91.preheader
  %i.cf = add nsw i64 %wide.trip.count106, -1     ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = xor i32 %i.n, -1
  %i.ci = icmp ult i32 %i.ch, %i.cg
  %i.cj = icmp ugt i64 %i.cf, 4294967295
  %i.ck = or i1 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph91.preheader173, label %vector.ph144

vector.ph144:                                     ; preds = %vector.scevcheck141
  %n.vec145 = and i64 %wide.trip.count106, 4294967288 ; 4 uses
  %i.cl = trunc nuw i64 %n.vec145 to i32
  %i.cm = add i32 %i.n, %i.cl
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next150, %vector.body146 ] ; 3 uses
  %i.cn = trunc i64 %index147 to i32
  %i.co = add i32 %i.n, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load148 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !36
  %wide.load149 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !36
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index147 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %wide.load148, ptr %i.cs, align 4, !tbaa !36
  store <4 x i32> %wide.load149, ptr %i.ct, align 4, !tbaa !36
  %index.next150 = add nuw i64 %index147, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.cu, label %middle.block151, label %vector.body146, !llvm.loop !193

middle.block151:                                  ; preds = %vector.body146
  %cmp.n152 = icmp eq i64 %n.vec145, %wide.trip.count106
  br i1 %cmp.n152, label %.loopexit, label %.lr.ph91.preheader173

.lr.ph91.preheader173:                            ; preds = %vector.scevcheck141, %.lr.ph91.preheader, %middle.block151
  %indvars.iv103.ph = phi i64 [ 0, %vector.scevcheck141 ], [ 0, %.lr.ph91.preheader ], [ %n.vec145, %middle.block151 ] ; 3 uses
  %.190.ph = phi i32 [ %i.n, %vector.scevcheck141 ], [ %i.n, %.lr.ph91.preheader ], [ %i.cm, %middle.block151 ] ; 2 uses
  %xtraiter176 = and i64 %wide.trip.count106, 3   ; 2 uses
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.lr.ph91.prol.loopexit, label %.lr.ph91.prol

.lr.ph91.prol:                                    ; preds = %.lr.ph91.preheader173, %.lr.ph91.prol
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %.lr.ph91.prol ], [ %indvars.iv103.ph, %.lr.ph91.preheader173 ] ; 2 uses
  %.190.prol = phi i32 [ %i.cz, %.lr.ph91.prol ], [ %.190.ph, %.lr.ph91.preheader173 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.prol ], [ 0, %.lr.ph91.preheader173 ]
  %i.cv = zext i32 %.190.prol to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !36
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv103.prol
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !36
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %i.cz = add i32 %.190.prol, 1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter176
  br i1 %prol.iter.cmp.not, label %.lr.ph91.prol.loopexit, label %.lr.ph91.prol, !llvm.loop !194

.lr.ph91.prol.loopexit:                           ; preds = %.lr.ph91.prol, %.lr.ph91.preheader173
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %.lr.ph91.preheader173 ], [ %indvars.iv.next104.prol, %.lr.ph91.prol ]
  %.190.unr = phi i32 [ %.190.ph, %.lr.ph91.preheader173 ], [ %i.cz, %.lr.ph91.prol ]
  %i.da = sub nsw i64 %indvars.iv103.ph, %wide.trip.count106
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %.loopexit, label %.lr.ph91

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.07387 = phi i32 [ %i.dt, %.lr.ph ], [ %.07387.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.dc = zext i32 %.07387 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !36
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.dg = lshr i32 %i.de, %i.s                    ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !36
  %i.dh = add i32 %.07387, 1                      ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !36
  %i.dl = shl i32 %i.dk, %narrow
  %i.dm = or disjoint i32 %i.dl, %i.dg
  store i32 %i.dm, ptr %i.df, align 4, !tbaa !36
  %i.dn = zext i32 %i.dh to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.s                    ; 2 uses
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !36
  %i.dt = add i32 %.07387, 2                      ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !36
  %i.dx = shl i32 %i.dw, %narrow
  %i.dy = or disjoint i32 %i.dx, %i.ds
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !195

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.br, %middle.block ], [ %.lcssa175.unr, %.lr.ph.prol.loopexit ], [ %i.du, %.lr.ph ]
  %i.dz = zext i32 %i.ak to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader84.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre113, %.preheader84.._crit_edge_crit_edge ], [ %.lcssa, %._crit_edge.loopexit ]
  %.074.lcssa = phi i64 [ 0, %.preheader84.._crit_edge_crit_edge ], [ %i.dz, %._crit_edge.loopexit ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.pre-phi
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.074.lcssa
  %i.ed = lshr i32 %i.eb, %i.s
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !36
  br label %.loopexit

.lr.ph91:                                         ; preds = %.lr.ph91.prol.loopexit, %.lr.ph91
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph91 ], [ %indvars.iv103.unr, %.lr.ph91.prol.loopexit ] ; 5 uses
  %.190 = phi i32 [ %i.fa, %.lr.ph91 ], [ %.190.unr, %.lr.ph91.prol.loopexit ] ; 5 uses
  %i.ee = zext i32 %.190 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !36
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv103
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !36
  %i.ei = add i32 %.190, 1
end_hunk_0
begin_hunk_1_@_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj:bb.a
  %i.v = add i32 %i.u, %i.t
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.d, %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit
  %.sink = phi i32 [ %i.v, %_ZN11mpz_managerILb0EE4log2ERK3mpz.exit ], [ %i.i, %bb.d ]
  store i32 %.sink, ptr %2, align 4, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %.critedge, %bb.c, %bb.a
  %.3 = phi i1 [ false, %bb.c ], [ false, %.critedge ], [ false, %bb.a ], [ true, %.loopexit.sink.split ], [ false, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZN11mpz_managerILb0EE4log2ERK3mpz(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_Z4log2j(i32 noundef %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = shl i32 %i.l, 5
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  %i.q = tail call noundef i32 @_Z4log2j(i32 noundef %i.p)
  %i.r = add i32 %i.m, %i.q
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.r, %bb.d ], [ %i.g, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN11mpz_managerILb0EE13machine_div2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %_ZN11mpz_managerILb0EE9normalizeER3mpz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN11mpz_managerILb0EE9normalizeER3mpz.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = and i8 %i.e, 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %2, 32
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %2 to i64
  %i.j = shl nuw nsw i64 1, %i.i
  %i.k = sext i32 %i.b to i64
  %i.l = sdiv i64 %i.k, %i.j
  %i.m = trunc nsw i64 %i.l to i32
  store i32 %i.m, ptr %1, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb0EE9normalizeER3mpz.exit

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %1, align 8, !tbaa !27
  br label %_ZN11mpz_managerILb0EE9normalizeER3mpz.exit

bb.g:                                             ; preds = %bb.c
  %i.n = lshr i32 %2, 5                           ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 9 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35   ; 3 uses
  %.not = icmp ult i32 %i.n, %i.q
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 8, !tbaa !27
  %i.r = and i8 %i.e, -2
  store i8 %i.r, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb0EE9normalizeER3mpz.exit

bb.i:                                             ; preds = %bb.g
  %i.s = and i32 %2, 31                           ; 10 uses
  %narrow = sub nuw nsw i32 32, %i.s              ; 6 uses
  %i.t = sub nuw i32 %i.q, %i.n                   ; 6 uses
  %i.u = getelementptr i8, ptr %i.p, i64 8        ; 36 uses
  %.not81 = icmp eq i32 %i.n, 0
  br i1 %.not81, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.v = add i32 %i.t, -1                         ; 4 uses
  %.not98 = icmp eq i32 %i.v, 0
  br i1 %.not98, label %._crit_edge94, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.preheader
  %wide.trip.count111 = zext i32 %i.v to i64      ; 3 uses
  %.pre = load i32, ptr %i.u, align 4, !tbaa !36  ; 2 uses
  %min.iters.check156 = icmp ult i32 %i.v, 8
  br i1 %min.iters.check156, label %.lr.ph93.preheader172, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph93.preheader
  %n.vec158 = and i64 %wide.trip.count111, 4294967288 ; 3 uses
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat162 = shufflevector <4 x i32> %broadcast.splatinsert161, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre, i64 3
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph157
  %index164 = phi i64 [ 0, %vector.ph157 ], [ %index.next167, %vector.body163 ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph157 ], [ %wide.load166, %vector.body163 ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index164 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index164 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %wide.load165 = load <4 x i32>, ptr %i.y, align 4, !tbaa !36 ; 3 uses
  %wide.load166 = load <4 x i32>, ptr %i.z, align 4, !tbaa !36 ; 4 uses
  %i.aa = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load165, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ab = shufflevector <4 x i32> %wide.load165, <4 x i32> %wide.load166, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ac = lshr <4 x i32> %i.aa, %broadcast.splat160
  %i.ad = lshr <4 x i32> %i.ab, %broadcast.splat160
  %i.ae = shl <4 x i32> %wide.load165, %broadcast.splat162
  %i.af = shl <4 x i32> %wide.load166, %broadcast.splat162
  %i.ag = or disjoint <4 x i32> %i.ae, %i.ac
  %i.ah = or disjoint <4 x i32> %i.af, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.ag, ptr %i.w, align 4, !tbaa !36
  store <4 x i32> %i.ah, ptr %i.ai, align 4, !tbaa !36
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.aj = icmp eq i64 %index.next167, %n.vec158
  br i1 %i.aj, label %middle.block168, label %vector.body163, !llvm.loop !275

middle.block168:                                  ; preds = %vector.body163
  %vector.recur.extract = extractelement <4 x i32> %wide.load166, i64 3
  %cmp.n169 = icmp eq i64 %n.vec158, %wide.trip.count111
  br i1 %cmp.n169, label %._crit_edge94.loopexit, label %.lr.ph93.preheader172

.lr.ph93.preheader172:                            ; preds = %.lr.ph93.preheader, %middle.block168
  %.ph = phi i32 [ %.pre, %.lr.ph93.preheader ], [ %vector.recur.extract, %middle.block168 ]
  %indvars.iv108.ph = phi i64 [ 0, %.lr.ph93.preheader ], [ %n.vec158, %middle.block168 ]
  br label %.lr.ph93

bb.j:                                             ; preds = %bb.i
  %.not82 = icmp eq i32 %i.s, 0
  br i1 %.not82, label %.lr.ph91.preheader, label %.preheader84

.preheader84:                                     ; preds = %bb.j
  %i.ak = add i32 %i.t, -1                        ; 4 uses
  %.not96 = icmp eq i32 %i.ak, 0
  br i1 %.not96, label %.preheader84.._crit_edge_crit_edge, label %.lr.ph.preheader

.preheader84.._crit_edge_crit_edge:               ; preds = %.preheader84
  %.pre113 = zext nneg i32 %i.n to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader84
  %wide.trip.count = zext i32 %i.ak to i64        ; 7 uses
  %min.iters.check = icmp ult i32 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.preheader174, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.al = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = sub nuw nsw i32 -2, %i.n
  %i.ao = icmp ult i32 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, 4294967295
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ar = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.as = getelementptr i8, ptr %i.p, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 8      ; 2 uses
  %i.au = lshr i32 %2, 5
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 3 uses
  %i.ax = getelementptr i8, ptr %i.p, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = add nuw nsw i64 %i.aw, %i.ar            ; 2 uses
  %i.ba = getelementptr i8, ptr %i.p, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %3 = getelementptr i8, ptr %i.p, i64 %i.aw
  %4 = getelementptr i8, ptr %3, i64 12
  %5 = getelementptr i8, ptr %i.p, i64 %i.az
  %i.bc = getelementptr i8, ptr %5, i64 12
  %bound0 = icmp ult ptr %i.u, %i.bb
  %bound1 = icmp ult ptr %i.ay, %i.at
  %found.conflict = and i1 %bound0, %bound1
  %bound0134 = icmp ult ptr %i.u, %i.bc
  %bound1135 = icmp ult ptr %4, %i.at
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx = or i1 %found.conflict, %found.conflict136
  br i1 %conflict.rdx, label %.lr.ph.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 5 uses
  %i.bd = trunc nuw i64 %n.vec to i32
  %i.be = add i32 %i.n, %i.bd
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %narrow, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = trunc i64 %index to i32
  %i.bg = add i32 %i.n, %i.bf                     ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bh
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !36, !alias.scope !286
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.bk = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  store <4 x i32> %i.bk, ptr %i.bj, align 4, !tbaa !36, !alias.scope !287, !noalias !288
  %i.bl = add i32 %i.bg, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bm
  %wide.load139 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !36, !alias.scope !289
  %i.bo = shl <4 x i32> %wide.load139, %broadcast.splat138
  %i.bp = or disjoint <4 x i32> %i.bo, %i.bk
  store <4 x i32> %i.bp, ptr %i.bj, align 4, !tbaa !36, !alias.scope !287, !noalias !288
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %i.br = add nuw nsw i64 %n.vec, %i.av
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader174

.lr.ph.preheader174:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.07387.ph = phi i32 [ %i.n, %vector.memcheck ], [ %i.n, %vector.scevcheck ], [ %i.n, %.lr.ph.preheader ], [ %i.be, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader174
  %i.bs = zext i32 %.07387.ph to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !36
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.ph ; 2 uses
  %i.bw = lshr i32 %i.bu, %i.s                    ; 2 uses
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !36
  %i.bx = add i32 %.07387.ph, 1                   ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36
  %i.cb = shl i32 %i.ca, %narrow
  %i.cc = or disjoint i32 %i.cb, %i.bw
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !36
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader174
  %.lcssa175.unr = phi i64 [ poison, %.lr.ph.preheader174 ], [ %i.by, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader174 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.07387.unr = phi i32 [ %.07387.ph, %.lr.ph.preheader174 ], [ %i.bx, %.lr.ph.prol ]
  %i.cd = add nsw i64 %wide.trip.count, -1
  %i.ce = icmp eq i64 %indvars.iv.ph, %i.cd
  br i1 %i.ce, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph91.preheader:                               ; preds = %bb.j
  %wide.trip.count106 = zext i32 %i.t to i64      ; 6 uses
  %min.iters.check143 = icmp ult i32 %i.t, 12
  br i1 %min.iters.check143, label %.lr.ph91.preheader173, label %vector.scevcheck141

vector.scevcheck141:                              ; preds = %.lr.ph91.preheader
  %i.cf = add nsw i64 %wide.trip.count106, -1     ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = xor i32 %i.n, -1
  %i.ci = icmp ult i32 %i.ch, %i.cg
  %i.cj = icmp ugt i64 %i.cf, 4294967295
  %i.ck = or i1 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph91.preheader173, label %vector.ph144

vector.ph144:                                     ; preds = %vector.scevcheck141
  %n.vec145 = and i64 %wide.trip.count106, 4294967288 ; 4 uses
  %i.cl = trunc nuw i64 %n.vec145 to i32
  %i.cm = add i32 %i.n, %i.cl
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next150, %vector.body146 ] ; 3 uses
  %i.cn = trunc i64 %index147 to i32
  %i.co = add i32 %i.n, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load148 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !36
  %wide.load149 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !36
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index147 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %wide.load148, ptr %i.cs, align 4, !tbaa !36
  store <4 x i32> %wide.load149, ptr %i.ct, align 4, !tbaa !36
  %index.next150 = add nuw i64 %index147, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.cu, label %middle.block151, label %vector.body146, !llvm.loop !281

middle.block151:                                  ; preds = %vector.body146
  %cmp.n152 = icmp eq i64 %n.vec145, %wide.trip.count106
  br i1 %cmp.n152, label %.loopexit, label %.lr.ph91.preheader173

.lr.ph91.preheader173:                            ; preds = %vector.scevcheck141, %.lr.ph91.preheader, %middle.block151
  %indvars.iv103.ph = phi i64 [ 0, %vector.scevcheck141 ], [ 0, %.lr.ph91.preheader ], [ %n.vec145, %middle.block151 ] ; 3 uses
  %.190.ph = phi i32 [ %i.n, %vector.scevcheck141 ], [ %i.n, %.lr.ph91.preheader ], [ %i.cm, %middle.block151 ] ; 2 uses
  %xtraiter176 = and i64 %wide.trip.count106, 3   ; 2 uses
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.lr.ph91.prol.loopexit, label %.lr.ph91.prol

.lr.ph91.prol:                                    ; preds = %.lr.ph91.preheader173, %.lr.ph91.prol
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %.lr.ph91.prol ], [ %indvars.iv103.ph, %.lr.ph91.preheader173 ] ; 2 uses
  %.190.prol = phi i32 [ %i.cz, %.lr.ph91.prol ], [ %.190.ph, %.lr.ph91.preheader173 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.prol ], [ 0, %.lr.ph91.preheader173 ]
  %i.cv = zext i32 %.190.prol to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !36
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv103.prol
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !36
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %i.cz = add i32 %.190.prol, 1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter176
  br i1 %prol.iter.cmp.not, label %.lr.ph91.prol.loopexit, label %.lr.ph91.prol, !llvm.loop !282

.lr.ph91.prol.loopexit:                           ; preds = %.lr.ph91.prol, %.lr.ph91.preheader173
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %.lr.ph91.preheader173 ], [ %indvars.iv.next104.prol, %.lr.ph91.prol ]
  %.190.unr = phi i32 [ %.190.ph, %.lr.ph91.preheader173 ], [ %i.cz, %.lr.ph91.prol ]
  %i.da = sub nsw i64 %indvars.iv103.ph, %wide.trip.count106
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %.loopexit, label %.lr.ph91

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.07387 = phi i32 [ %i.dt, %.lr.ph ], [ %.07387.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.dc = zext i32 %.07387 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !36
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.dg = lshr i32 %i.de, %i.s                    ; 2 uses
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !36
  %i.dh = add i32 %.07387, 1                      ; 2 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !36
  %i.dl = shl i32 %i.dk, %narrow
  %i.dm = or disjoint i32 %i.dl, %i.dg
  store i32 %i.dm, ptr %i.df, align 4, !tbaa !36
  %i.dn = zext i32 %i.dh to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.ds = lshr i32 %i.dp, %i.s                    ; 2 uses
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !36
  %i.dt = add i32 %.07387, 2                      ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !36
  %i.dx = shl i32 %i.dw, %narrow
  %i.dy = or disjoint i32 %i.dx, %i.ds
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !283

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.br, %middle.block ], [ %.lcssa175.unr, %.lr.ph.prol.loopexit ], [ %i.du, %.lr.ph ]
  %i.dz = zext i32 %i.ak to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader84.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %.pre113, %.preheader84.._crit_edge_crit_edge ], [ %.lcssa, %._crit_edge.loopexit ]
  %.074.lcssa = phi i64 [ 0, %.preheader84.._crit_edge_crit_edge ], [ %i.dz, %._crit_edge.loopexit ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.pre-phi
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.074.lcssa
  %i.ed = lshr i32 %i.eb, %i.s
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !36
  br label %.loopexit

.lr.ph91:                                         ; preds = %.lr.ph91.prol.loopexit, %.lr.ph91
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.lr.ph91 ], [ %indvars.iv103.unr, %.lr.ph91.prol.loopexit ] ; 5 uses
  %.190 = phi i32 [ %i.fa, %.lr.ph91 ], [ %.190.unr, %.lr.ph91.prol.loopexit ] ; 5 uses
  %i.ee = zext i32 %.190 to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !36
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv103
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !36
  %i.ei = add i32 %.190, 1
end_hunk_1
