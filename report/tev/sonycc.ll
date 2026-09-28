Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/sonycc?download=true
inline.NumInlined: 483
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6LibRaw19sony_ycbcr_load_rawEv:bb.a
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !161
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = icmp ugt i32 %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.m, align 16, !tbaa !159
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 381856 ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162  ; 4 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i16, ptr %i.h, align 8, !tbaa !163
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = icmp ugt i32 %i.o, %i.r
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.t, align 16, !tbaa !159
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.f, -1
  %i.v = add nuw nsw i32 %i.u, %i.k
  %i.w = udiv i32 %i.v, %i.f                      ; 3 uses
  %i.x = add nsw i32 %i.o, -1
  %i.y = add nuw nsw i32 %i.x, %i.r
  %i.z = udiv i32 %i.y, %i.o
  %i.aa = mul nsw i32 %i.z, %i.w                  ; 6 uses
  %i.ab = add nsw i32 %i.aa, -1025
  %or.cond = icmp ult i32 %i.ab, -1024
  br i1 %or.cond, label %bb.j, label %_ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.ac, align 16, !tbaa !159
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable

_ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endEm.exit.i: ; preds = %bb.i
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ai = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3                ; 4 uses
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #15 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ak, i8 0, i64 %i.aj, i1 false), !tbaa !165
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.an = load i64, ptr %i.am, align 8, !tbaa !166
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i64 noundef %i.an, i32 noundef 0)
          to label %.lr.ph.preheader unwind label %bb.k ; 0 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endEm.exit.i
  %i.as = zext nneg i32 %i.aa to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %i.at = shl nuw nsw i64 %i.ai, 2                ; 6 uses
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #15
          to label %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i unwind label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne180100Ev.exit.i ; 11 uses

_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i: ; preds = %._crit_edge
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 0, i64 %i.at, i1 false), !tbaa !57
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 381800
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !167
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i32 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i64 noundef %i.ay, i32 noundef 0)
          to label %.lr.ph198.preheader unwind label %bb.o ; 0 uses

.lr.ph198.preheader:                              ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i
  %i.bd = zext nneg i32 %i.aa to i64
  br label %.lr.ph198

_ZNSt3__128__exception_guard_exceptionsINS_6vectorIjNS_9allocatorIjEEE16__destroy_vectorEED2B8ne180100Ev.exit.i: ; preds = %._crit_edge
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt3__16vectorIxNS_9allocatorIxEEE18__construct_at_endEm.exit.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bg = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !165
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.as
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !86

bb.m:                                             ; preds = %.lr.ph
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.n:                                             ; preds = %bb.p
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 2 uses
  %i.bl = icmp samesign ult i64 %indvars.iv.next209, %i.bd
  br i1 %i.bl, label %.lr.ph198, label %._crit_edge199, !llvm.loop !87

._crit_edge199:                                   ; preds = %bb.n
  %i.bm = load i32, ptr %i.e, align 4, !tbaa !160
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load i32, ptr %i.n, align 8, !tbaa !162
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nuw nsw i64 %i.bp, %i.bn            ; 2 uses
  %i.br = icmp samesign ugt i64 %i.bq, 715827882
  br i1 %i.br, label %.invoke, label %bb.s

bb.o:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE18__construct_at_endEm.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body101

.lr.ph198:                                        ; preds = %.lr.ph198.preheader, %bb.n
  %indvars.iv208 = phi i64 [ 0, %.lr.ph198.preheader ], [ %indvars.iv.next209, %bb.n ] ; 3 uses
  %i.bt = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.p unwind label %.loopexit190 ; 2 uses

bb.p:                                             ; preds = %.lr.ph198
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv208
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !57
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv208
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !165
  %i.bx = zext i32 %i.bt to i64
  %i.by = add nsw i64 %i.bw, %i.bx
  %i.bz = icmp sgt i64 %i.by, %i.ah
  br i1 %i.bz, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.ca, align 16, !tbaa !159
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
          to label %bb.bi unwind label %.loopexit.split-lp191

.loopexit190:                                     ; preds = %.lr.ph198
  %lpad.loopexit192 = landingpad { ptr, i32 }
          cleanup
  br label %.body101

.loopexit.split-lp191:                            ; preds = %bb.q
  %lpad.loopexit.split-lp193 = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.r:                                             ; preds = %.invoke
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.s:                                             ; preds = %._crit_edge199
  %i.cc = mul nuw nsw i64 %i.bq, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !168
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 20               ; 2 uses
  %i.ch = icmp samesign ugt i64 %i.cc, %i.cg
  br i1 %i.ch, label %.invoke, label %bb.t

.invoke:                                          ; preds = %bb.s, %._crit_edge199
  %.sink259 = phi i32 [ 5, %._crit_edge199 ], [ 1, %bb.s ]
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 %.sink259, ptr %i.ci, align 16, !tbaa !159
  invoke void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.s
  %.not78.i.i.i = icmp eq i32 %i.aa, 1
  br i1 %.not78.i.i.i, label %_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPjEEEET_S4_S4_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %.pre.i.i.i = load i32, ptr %i.au, align 4, !tbaa !57 ; 2 uses
  %i.ck = add nsw i64 %i.at, -8                   ; 2 uses
  %i.cl = lshr exact i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1
  %xtraiter = and i64 %i.cm, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %i.cn = phi i32 [ %i.cs, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.co = phi ptr [ %i.cr, %.lr.ph.i.i.i.prol ], [ %i.cj, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.sroa.05.09.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.au, %.lr.ph.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !57 ; 2 uses
  %i.cq = icmp ult i32 %i.cn, %i.cp
  %spec.select.i.i.i.prol = select i1 %i.cq, ptr %i.co, ptr %.sroa.05.09.i.i.i.prol ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cs = tail call i32 @llvm.umax.i32(i32 %i.cn, i32 %i.cp) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !88

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.unr = phi i32 [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.cs, %.lr.ph.i.i.i.prol ]
  %.unr283 = phi ptr [ %i.cj, %.lr.ph.preheader.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.prol ]
  %.sroa.05.09.i.i.i.unr = phi ptr [ %i.au, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.ct = icmp ult i64 %i.ck, 12
  br i1 %i.ct, label %_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPjEEEET_S4_S4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.cu = phi i32 [ %i.dl, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.cv = phi ptr [ %i.dk, %.lr.ph.i.i.i ], [ %.unr283, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.05.09.i.i.i = phi ptr [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ], [ %.sroa.05.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !57 ; 2 uses
  %i.cx = icmp ult i32 %i.cu, %i.cw
  %spec.select.i.i.i = select i1 %i.cx, ptr %i.cv, ptr %.sroa.05.09.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cz = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cw) ; 2 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !57 ; 2 uses
  %i.db = icmp ult i32 %i.cz, %i.da
  %spec.select.i.i.i.1 = select i1 %i.db, ptr %i.cy, ptr %spec.select.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.dd = tail call i32 @llvm.umax.i32(i32 %i.cz, i32 %i.da) ; 2 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !57 ; 2 uses
  %i.df = icmp ult i32 %i.dd, %i.de
  %spec.select.i.i.i.2 = select i1 %i.df, ptr %i.dc, ptr %spec.select.i.i.i.1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.dh = tail call i32 @llvm.umax.i32(i32 %i.dd, i32 %i.de) ; 2 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !57 ; 2 uses
  %i.dj = icmp ult i32 %i.dh, %i.di
  %spec.select.i.i.i.3 = select i1 %i.dj, ptr %i.dg, ptr %spec.select.i.i.i.2 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %.not7.i.i.i.3 = icmp eq ptr %i.dk, %i.av
  %i.dl = tail call i32 @llvm.umax.i32(i32 %i.dh, i32 %i.di)
  br i1 %.not7.i.i.i.3, label %_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPjEEEET_S4_S4_.exit, label %.lr.ph.i.i.i, !llvm.loop !89

_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPjEEEET_S4_S4_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.t
  %.sroa.05.2.i.i.i = phi ptr [ %i.au, %bb.t ], [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.3, %.lr.ph.i.i.i ]
  %i.dm = load i32, ptr %.sroa.05.2.i.i.i, align 4, !tbaa !57 ; 3 uses
  %i.dn = icmp ugt i32 %i.dm, 1073741824
  br i1 %i.dn, label %.invoke261, label %bb.v

bb.u:                                             ; preds = %.invoke261
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body101

bb.v:                                             ; preds = %_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPjEEEET_S4_S4_.exit
  %i.dp = zext nneg i32 %i.dm to i64
  %i.dq = icmp samesign ult i64 %i.cg, %i.dp
  br i1 %i.dq, label %.invoke261, label %bb.w

.invoke261:                                       ; preds = %bb.v, %_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPjEEEET_S4_S4_.exit
  %.sink263 = phi i32 [ 5, %_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPjEEEET_S4_S4_.exit ], [ 1, %bb.v ]
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 %.sink263, ptr %i.dr, align 16, !tbaa !159
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
          to label %.cont262 unwind label %bb.u

.cont262:                                         ; preds = %.invoke261
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.ds = add nuw nsw i32 %i.dm, 4
  %i.dt = zext nneg i32 %i.ds to i64              ; 4 uses
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #15
          to label %.lr.ph202 unwind label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i ; 5 uses

_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i: ; preds = %bb.w
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body101

.lr.ph202:                                        ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.du, i8 0, i64 %i.dt, i1 false), !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 5560
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = zext nneg i32 %i.aa to i64
  br label %bb.x

.preheader:                                       ; preds = %_ZN24LibRaw_LjpegDecompressorD2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 136672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false), !tbaa !57
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 5560
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !170
  %i.ek = and i32 %i.ej, 64
  %.not73 = icmp eq i32 %i.ek, 0                  ; 2 uses
  %spec.select = select i1 %.not73, i32 17536, i32 18091
  %spec.select265 = select i1 %.not73, i32 1024, i32 0
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %spec.select, ptr %i.el, align 8, !tbaa !171
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 153088
  store i32 %spec.select265, ptr %i.em, align 8, !tbaa !172
  %i.en = load ptr, ptr %1, align 8, !tbaa !28    ; 4 uses
  %.not.i.i142 = icmp eq ptr %i.en, null
  br i1 %.not.i.i142, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit145, label %bb.bh

bb.x:                                             ; preds = %.lr.ph202, %_ZN24LibRaw_LjpegDecompressorD2Ev.exit
  %indvars.iv215 = phi i64 [ 0, %.lr.ph202 ], [ %indvars.iv.next216, %_ZN24LibRaw_LjpegDecompressorD2Ev.exit ] ; 4 uses
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv215
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !165
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = invoke noundef i32 %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, i64 noundef %i.eq, i32 noundef 0)
          to label %bb.y unwind label %bb.ab      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv215 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !57
  %i.ey = zext i32 %i.ex to i64
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !44
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = invoke noundef i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull %i.du, i64 noundef 1, i64 noundef %i.ey)
          to label %bb.z unwind label %.loopexit  ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.fd = load i32, ptr %i.ew, align 4, !tbaa !57
  %.not74 = icmp eq i32 %i.fc, %i.fd
  br i1 %.not74, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fe = call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 4, ptr %i.fe, align 16, !tbaa !159
  invoke void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
          to label %bb.bi unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.x
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZN24LibRaw_LjpegDecompressorC2EPhj(ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull %i.du, i32 noundef %i.fc)
          to label %_ZN27LibRaw_SonyYCC_DecompressorC2EPhj.exit unwind label %bb.ad

_ZN27LibRaw_SonyYCC_DecompressorC2EPhj.exit:      ; preds = %bb.ac
  %i.fg = load i32, ptr %i.dw, align 8, !tbaa !173
  %.not75 = icmp eq i32 %i.fg, 3
  %i.fh = load i32, ptr %i.dx, align 8
  %.not76 = icmp eq i32 %i.fh, 0
  %or.cond269 = select i1 %.not75, i1 %.not76, i1 false
  br i1 %or.cond269, label %bb.af, label %.invoke266

bb.ad:                                            ; preds = %bb.ac
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ae:                                            ; preds = %.invoke266
  %i.fj = landingpad { ptr, i32 }
          cleanup
end_hunk_0
