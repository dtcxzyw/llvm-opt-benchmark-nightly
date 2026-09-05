Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/overlay?download=true
inline.NumInlined: 3287
inline.NumDeleted: 1950
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev:bb.a
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !45
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !45
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.h, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = load i64, ptr %i.i, align 8
  %i.o = and i64 %i.n, -2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #25
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.h) #23
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.p) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK12ImageOverlay5writeEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51
  %i.c = icmp ugt i32 %i.b, 65535
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ugt i32 %i.e, 65535
  %narrow = select i1 %i.c, i1 true, i1 %i.f      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 3 uses
  %.not7680 = icmp eq ptr %i.h, %i.j
  br i1 %.not7680, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.069.081, i64 12 ; 2 uses
  %.not76 = icmp eq ptr %i.k, %i.j
  br i1 %.not76, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.069.081 = phi ptr [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.069.081, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !57   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 32767
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.069.081, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !58
  %i.q = icmp sgt i32 %i.m, -32769
  %i.r = add i32 %i.p, 32768
  %i.s = icmp ult i32 %i.r, 65536
  %or.cond32.not = and i1 %i.q, %i.s
  br i1 %or.cond32.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.c, %bb.a
  %.2.shrunk = phi i1 [ %narrow, %bb.a ], [ %narrow, %bb.b ], [ true, %.lr.ph ], [ true, %bb.c ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.t = select i1 %.2.shrunk, i32 4, i32 2       ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = ptrtoint ptr %i.h to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 12
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = add nsw i64 %i.z, 2
  %i.ab = select i1 %.2.shrunk, i64 2, i64 1
  %i.ac = shl nsw i64 %i.aa, %i.ab
  %i.ad = add nsw i64 %i.ac, 10
  invoke void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad)
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit unwind label %bb.d

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %.loopexit
  %.2 = zext i1 %.2.shrunk to i8
  %.pre = load ptr, ptr %0, align 8, !tbaa !24
  %i.ae = load i8, ptr %1, align 8, !tbaa !30
  store i8 %i.ae, ptr %.pre, align 1, !tbaa !17
  %i.af = load ptr, ptr %0, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %.2, ptr %i.ag, align 1, !tbaa !17
  %.027.ptr = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ah = load i16, ptr %.027.ptr, align 2, !tbaa !48 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 2
  %i.ak = lshr i16 %i.ah, 8
  %i.al = trunc nuw i16 %i.ak to i8
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !17
  %i.am = trunc i16 %i.ah to i8
  %i.an = getelementptr i8, ptr %i.ai, i64 3
  store i8 %i.am, ptr %i.an, align 1, !tbaa !17
  %.027.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i16, ptr %.027.ptr.1, align 4, !tbaa !48 ; 2 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = lshr i16 %i.ao, 8
  %i.as = trunc nuw i16 %i.ar to i8
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !17
  %i.at = trunc i16 %i.ao to i8
  %i.au = getelementptr i8, ptr %i.ap, i64 5
  store i8 %i.at, ptr %i.au, align 1, !tbaa !17
  %.027.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.av = load i16, ptr %.027.ptr.2, align 2, !tbaa !48 ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 6
  %i.ay = lshr i16 %i.av, 8
  %i.az = trunc nuw i16 %i.ay to i8
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !17
  %i.ba = trunc i16 %i.av to i8
  %i.bb = getelementptr i8, ptr %i.aw, i64 7
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !17
  %.027.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i16, ptr %.027.ptr.3, align 8, !tbaa !48 ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = lshr i16 %i.bc, 8
  %i.bg = trunc nuw i16 %i.bf to i8
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !17
  %i.bh = trunc i16 %i.bc to i8
  %i.bi = getelementptr i8, ptr %i.bd, i64 9
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !17
  %i.bj = load ptr, ptr %0, align 8, !tbaa !24
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !51  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.t to i64  ; 11 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 10     ; 2 uses
  br i1 %.2.shrunk, label %vector.ph, label %.lr.ph.i

vector.ph:                                        ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %n.vec = and i64 %wide.trip.count.i, 4
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat104 = shufflevector <4 x i32> %broadcast.splatinsert103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bm = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.bn = add nsw <4 x i32> %broadcast.splat104, %i.bm
  %i.bo = shl nsw <4 x i32> %i.bn, splat (i32 3)
  %i.bp = lshr <4 x i32> %broadcast.splat, %i.bo
  %i.bq = trunc <4 x i32> %i.bp to <4 x i8>
  %i.br = getelementptr i8, ptr %i.bl, i64 %index
  store <4 x i8> %i.bq, ptr %i.br, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %_Z8writevecIjEvPhRmT_i.exit, label %vector.body, !llvm.loop !315

.lr.ph.i:                                         ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ] ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bu = xor i32 %i.bt, -1
  %i.bv = add nsw i32 %i.t, %i.bu
  %i.bw = shl nsw i32 %i.bv, 3
  %i.bx = lshr i32 %i.bk, %i.bw
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr i8, ptr %i.bl, i64 %indvars.iv.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z8writevecIjEvPhRmT_i.exit, label %.lr.ph.i, !llvm.loop !316

_Z8writevecIjEvPhRmT_i.exit:                      ; preds = %.lr.ph.i, %vector.body
  %i.ca = add nuw nsw i64 %wide.trip.count.i, 10  ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !24
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 %i.ca  ; 2 uses
  br i1 %.2.shrunk, label %vector.ph107, label %.lr.ph.i35

vector.ph107:                                     ; preds = %_Z8writevecIjEvPhRmT_i.exit
  %n.vec108 = and i64 %wide.trip.count.i, 4
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph107
  %index114 = phi i64 [ 0, %vector.ph107 ], [ %index.next116, %vector.body113 ] ; 2 uses
  %vec.ind115 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph107 ], [ %vec.ind.next117, %vector.body113 ] ; 2 uses
  %i.ce = xor <4 x i32> %vec.ind115, splat (i32 -1)
  %i.cf = add nsw <4 x i32> %broadcast.splat112, %i.ce
  %i.cg = shl nuw nsw <4 x i32> %i.cf, splat (i32 3)
  %i.ch = lshr <4 x i32> %broadcast.splat110, %i.cg
  %i.ci = trunc <4 x i32> %i.ch to <4 x i8>
  %i.cj = getelementptr i8, ptr %i.cd, i64 %index114
  store <4 x i8> %i.ci, ptr %i.cj, align 1, !tbaa !17
  %index.next116 = add nuw i64 %index114, 4       ; 2 uses
  %vec.ind.next117 = add <4 x i32> %vec.ind115, splat (i32 4)
  %i.ck = icmp eq i64 %index.next116, %n.vec108
  br i1 %i.ck, label %_Z8writevecIjEvPhRmT_i.exit39, label %vector.body113, !llvm.loop !317

.lr.ph.i35:                                       ; preds = %_Z8writevecIjEvPhRmT_i.exit, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37, %.lr.ph.i35 ], [ 0, %_Z8writevecIjEvPhRmT_i.exit ] ; 3 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv.i36 to i32
  %i.cm = xor i32 %i.cl, -1
  %i.cn = add nsw i32 %i.t, %i.cm
  %i.co = shl nuw nsw i32 %i.cn, 3
  %i.cp = lshr i32 %i.cc, %i.co
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr i8, ptr %i.cd, i64 %indvars.iv.i36
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !17
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, %wide.trip.count.i
  br i1 %exitcond.not.i38, label %_Z8writevecIjEvPhRmT_i.exit39, label %.lr.ph.i35, !llvm.loop !318

_Z8writevecIjEvPhRmT_i.exit39:                    ; preds = %.lr.ph.i35, %vector.body113
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !54  ; 2 uses
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %.not7990 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not7990, label %._crit_edge, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %_Z8writevecIjEvPhRmT_i.exit39
  %n.vec140 = and i64 %wide.trip.count.i, 4
  %broadcast.splatinsert143 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat144 = shufflevector <4 x i32> %broadcast.splatinsert143, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec124 = and i64 %wide.trip.count.i, 4
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph93

bb.d:                                             ; preds = %.loopexit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %0, align 8, !tbaa !24    ; 4 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.cv, ptr %i.u, align 8, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !43
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #25
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.cu

._crit_edge:                                      ; preds = %_Z8writevecIiEvPhRmT_i.exit54, %_Z8writevecIjEvPhRmT_i.exit39
  ret void

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %_Z8writevecIiEvPhRmT_i.exit54
  %.pn = phi i64 [ %i.dt, %_Z8writevecIiEvPhRmT_i.exit54 ], [ %i.ca, %.lr.ph93.preheader ]
  %.sroa.055.091 = phi ptr [ %i.em, %_Z8writevecIiEvPhRmT_i.exit54 ], [ %i.cs, %.lr.ph93.preheader ] ; 3 uses
  %.17392 = add i64 %.pn, %wide.trip.count.i      ; 2 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !57 ; 2 uses
  %i.de = getelementptr i8, ptr %i.db, i64 %.17392 ; 2 uses
  br i1 %.2.shrunk, label %vector.ph139, label %.lr.ph.i45

vector.ph139:                                     ; preds = %.lr.ph93
  %broadcast.splatinsert141 = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %broadcast.splat142 = shufflevector <4 x i32> %broadcast.splatinsert141, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph139
  %index146 = phi i64 [ 0, %vector.ph139 ], [ %index.next148, %vector.body145 ] ; 2 uses
  %vec.ind147 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph139 ], [ %vec.ind.next149, %vector.body145 ] ; 2 uses
  %i.df = xor <4 x i32> %vec.ind147, splat (i32 -1)
  %i.dg = add nsw <4 x i32> %broadcast.splat144, %i.df
  %i.dh = shl nuw nsw <4 x i32> %i.dg, splat (i32 3)
  %i.di = ashr <4 x i32> %broadcast.splat142, %i.dh
  %i.dj = trunc <4 x i32> %i.di to <4 x i8>
  %i.dk = getelementptr i8, ptr %i.de, i64 %index146
  store <4 x i8> %i.dj, ptr %i.dk, align 1, !tbaa !17
  %index.next148 = add nuw i64 %index146, 4       ; 2 uses
  %vec.ind.next149 = add <4 x i32> %vec.ind147, splat (i32 4)
  %i.dl = icmp eq i64 %index.next148, %n.vec140
  br i1 %i.dl, label %_Z8writevecIiEvPhRmT_i.exit, label %vector.body145, !llvm.loop !319

.lr.ph.i45:                                       ; preds = %.lr.ph93, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47, %.lr.ph.i45 ], [ 0, %.lr.ph93 ] ; 3 uses
  %i.dm = trunc nuw nsw i64 %indvars.iv.i46 to i32
  %i.dn = xor i32 %i.dm, -1
  %i.do = add nsw i32 %i.t, %i.dn
  %i.dp = shl nuw nsw i32 %i.do, 3
  %i.dq = ashr i32 %i.dd, %i.dp
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr i8, ptr %i.de, i64 %indvars.iv.i46
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !17
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %indvars.iv.next.i47, %wide.trip.count.i
  br i1 %exitcond.not.i48, label %_Z8writevecIiEvPhRmT_i.exit, label %.lr.ph.i45, !llvm.loop !320

_Z8writevecIiEvPhRmT_i.exit:                      ; preds = %.lr.ph.i45, %vector.body145
  %i.dt = add i64 %.17392, %wide.trip.count.i     ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !58 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.du, i64 %i.dt  ; 2 uses
  br i1 %.2.shrunk, label %vector.ph123, label %.lr.ph.i50

vector.ph123:                                     ; preds = %_Z8writevecIiEvPhRmT_i.exit
  %broadcast.splatinsert125 = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %broadcast.splat126 = shufflevector <4 x i32> %broadcast.splatinsert125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph123
  %index130 = phi i64 [ 0, %vector.ph123 ], [ %index.next132, %vector.body129 ] ; 2 uses
  %vec.ind131 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph123 ], [ %vec.ind.next133, %vector.body129 ] ; 2 uses
  %i.dy = xor <4 x i32> %vec.ind131, splat (i32 -1)
  %i.dz = add nsw <4 x i32> %broadcast.splat128, %i.dy
  %i.ea = shl nuw nsw <4 x i32> %i.dz, splat (i32 3)
  %i.eb = ashr <4 x i32> %broadcast.splat126, %i.ea
  %i.ec = trunc <4 x i32> %i.eb to <4 x i8>
  %i.ed = getelementptr i8, ptr %i.dx, i64 %index130
  store <4 x i8> %i.ec, ptr %i.ed, align 1, !tbaa !17
  %index.next132 = add nuw i64 %index130, 4       ; 2 uses
  %vec.ind.next133 = add <4 x i32> %vec.ind131, splat (i32 4)
  %i.ee = icmp eq i64 %index.next132, %n.vec124
  br i1 %i.ee, label %_Z8writevecIiEvPhRmT_i.exit54, label %vector.body129, !llvm.loop !321

.lr.ph.i50:                                       ; preds = %_Z8writevecIiEvPhRmT_i.exit, %.lr.ph.i50
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i52, %.lr.ph.i50 ], [ 0, %_Z8writevecIiEvPhRmT_i.exit ] ; 3 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv.i51 to i32
  %i.eg = xor i32 %i.ef, -1
  %i.eh = add nsw i32 %i.t, %i.eg
  %i.ei = shl nuw nsw i32 %i.eh, 3
  %i.ej = ashr i32 %i.dw, %i.ei
  %i.ek = trunc i32 %i.ej to i8
  %i.el = getelementptr i8, ptr %i.dx, i64 %indvars.iv.i51
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !17
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count.i
  br i1 %exitcond.not.i53, label %_Z8writevecIiEvPhRmT_i.exit54, label %.lr.ph.i50, !llvm.loop !322

_Z8writevecIiEvPhRmT_i.exit54:                    ; preds = %.lr.ph.i50, %vector.body129
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.055.091, i64 12 ; 2 uses
  %.not79 = icmp eq ptr %i.em, %i.ct
  br i1 %.not79, label %._crit_edge, label %.lr.ph93
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK12ImageOverlay4dumpEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_stringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.4, i64 noundef 9)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8, !tbaa !30
  %i.d = zext i8 %i.c to i32
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.d)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8: ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.6, i64 noundef 7)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !46
  %i.j = zext i8 %i.i to i32
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef %i.j)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.7, i64 noundef 18)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !48
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef zeroext %i.o)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i16, ptr %i.r, align 4, !tbaa !48
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i16 noundef zeroext %i.s)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.w = load i16, ptr %i.v, align 2, !tbaa !48
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i16 noundef zeroext %i.w)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit14 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit14: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !48
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i16 noundef zeroext %i.aa)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit14
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit15 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit15: ; preds = %bb.g
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.9, i64 noundef 13)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit16 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit16: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !51
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %i.af)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit16
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit17 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit17: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !52
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i32 noundef %i.aj)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit17
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit18 unwind label %bb.j

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit18: ; preds = %bb.i
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.11, i64 noundef 9)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit19 unwind label %bb.j ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit19: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit18
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53 ; 2 uses
  %.not27 = icmp eq ptr %i.ao, %i.aq
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit22, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit19
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %.thread.i.i.i.i.i, %bb.s, %._crit_edge, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit18, %bb.i, %bb.h, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit15, %bb.g, %bb.f, %bb.e, %bb.d, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10, %bb.c, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8, %bb.b, %bb.a, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit17, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit16, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit14, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit19, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit22
  %.sroa.024.028 = phi ptr [ %i.bb, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit22 ], [ %i.ao, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit19 ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !57
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.au)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21 unwind label %bb.m

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21: ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !58
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.ay)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit22 unwind label %bb.m ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit22: ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.aq
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %bb.l, %bb.k, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit21, %.lr.ph
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20: ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !39, !noalias !332 ; 2 uses
  %i.bf = and i32 %i.be, 16
  %.not.i.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40, !noalias !332 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41, !noalias !332 ; 3 uses
  %i.bk = icmp ult ptr %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !40, !noalias !332
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = phi ptr [ %i.bj, %bb.o ], [ %i.bh, %bb.n ]
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.q:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit20
  %i.bn = and i32 %i.be, 8
  %.not1.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.r
end_hunk_0
