Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InProcessMemoryAccess?download=true
inline.NumInlined: 707
inline.NumDeleted: 412
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm3orc21InProcessMemoryAccess18writePointersAsyncENS_8ArrayRefINS0_8tpctypes12PointerWriteEEENS_15unique_functionIFvNS_5ErrorEEEE:bb.a
  %.not1831 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not1831, label %.loopexit, label %.lr.ph33.preheader

.lr.ph33.preheader:                               ; preds = %bb.b
  %i.e = add i64 %.idx34, -16                     ; 2 uses
  %i.f = lshr exact i64 %i.e, 4
  %i.g = add nuw nsw i64 %i.f, 1
  %xtraiter39 = and i64 %i.g, 7                   ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol

.lr.ph33.prol:                                    ; preds = %.lr.ph33.preheader, %.lr.ph33.prol
  %.01732.prol = phi ptr [ %i.l, %.lr.ph33.prol ], [ %1, %.lr.ph33.preheader ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph33.prol ], [ 0, %.lr.ph33.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.01732.prol, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !12
  %i.j = load i64, ptr %.01732.prol, align 8, !tbaa !12
  %i.k = inttoptr i64 %i.j to ptr
  store i64 %i.i, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %.01732.prol, i64 16 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph33.prol.loopexit, label %.lr.ph33.prol, !llvm.loop !61

.lr.ph33.prol.loopexit:                           ; preds = %.lr.ph33.prol, %.lr.ph33.preheader
  %.01732.unr = phi ptr [ %1, %.lr.ph33.preheader ], [ %i.l, %.lr.ph33.prol ]
  %i.m = icmp ult i64 %i.e, 112
  br i1 %i.m, label %.loopexit, label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.prol.loopexit, %.lr.ph33
  %.01732 = phi ptr [ %i.ba, %.lr.ph33 ], [ %.01732.unr, %.lr.ph33.prol.loopexit ] ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01732, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12
  %i.p = load i64, ptr %.01732, align 8, !tbaa !12
  %i.q = inttoptr i64 %i.p to ptr
  store i64 %i.o, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.01732, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.01732, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !12
  %i.u = load i64, ptr %i.r, align 8, !tbaa !12
  %i.v = inttoptr i64 %i.u to ptr
  store i64 %i.t, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %.01732, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.01732, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !12
  %i.z = load i64, ptr %i.w, align 8, !tbaa !12
  %i.aa = inttoptr i64 %i.z to ptr
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %.01732, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.01732, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !12
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !12
  %i.af = inttoptr i64 %i.ae to ptr
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %.01732, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01732, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12
  %i.aj = load i64, ptr %i.ag, align 8, !tbaa !12
  %i.ak = inttoptr i64 %i.aj to ptr
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %.01732, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %.01732, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !12
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !12
  %i.ap = inttoptr i64 %i.ao to ptr
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %.01732, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %.01732, i64 104
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !12
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !12
  %i.au = inttoptr i64 %i.at to ptr
  store i64 %i.as, ptr %i.au, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %.01732, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %.01732, i64 120
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !12
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !12
  %i.az = inttoptr i64 %i.ay to ptr
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %.01732, i64 128 ; 2 uses
  %.not18.7 = icmp eq ptr %i.ba, %i.d
  br i1 %.not18.7, label %.loopexit, label %.lr.ph33

bb.c:                                             ; preds = %bb.a
  br i1 %.not1831, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.bb = add i64 %.idx34, -16                    ; 2 uses
  %i.bc = lshr exact i64 %i.bb, 4
  %i.bd = add nuw nsw i64 %i.bc, 1
  %xtraiter = and i64 %i.bd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.030.prol = phi ptr [ %i.bj, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.030.prol, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !12
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = load i64, ptr %.030.prol, align 8, !tbaa !12
  %i.bi = inttoptr i64 %i.bh to ptr
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %.030.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !62

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.030.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bj, %.lr.ph.prol ]
  %i.bk = icmp ult i64 %i.bb, 112
  br i1 %i.bk, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.030 = phi ptr [ %i.dg, %.lr.ph ], [ %.030.unr, %.lr.ph.prol.loopexit ] ; 17 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !12
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = load i64, ptr %.030, align 8, !tbaa !12
  %i.bp = inttoptr i64 %i.bo to ptr
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.030, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !12
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = load i64, ptr %i.bq, align 8, !tbaa !12
  %i.bv = inttoptr i64 %i.bu to ptr
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %.030, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.030, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !12
  %i.bz = trunc i64 %i.by to i32
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !12
  %i.cb = inttoptr i64 %i.ca to ptr
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !25
  %i.cc = getelementptr inbounds nuw i8, ptr %.030, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.030, i64 56
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !12
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !12
  %i.ch = inttoptr i64 %i.cg to ptr
  store i32 %i.cf, ptr %i.ch, align 4, !tbaa !25
  %i.ci = getelementptr inbounds nuw i8, ptr %.030, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.030, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !12
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = load i64, ptr %i.ci, align 8, !tbaa !12
  %i.cn = inttoptr i64 %i.cm to ptr
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %.030, i64 80
  %i.cp = getelementptr inbounds nuw i8, ptr %.030, i64 88
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !12
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = load i64, ptr %i.co, align 8, !tbaa !12
  %i.ct = inttoptr i64 %i.cs to ptr
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %.030, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %.030, i64 104
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !12
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = load i64, ptr %i.cu, align 8, !tbaa !12
  %i.cz = inttoptr i64 %i.cy to ptr
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %.030, i64 112
  %i.db = getelementptr inbounds nuw i8, ptr %.030, i64 120
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !12
  %i.dd = trunc i64 %i.dc to i32
  %i.de = load i64, ptr %i.da, align 8, !tbaa !12
  %i.df = inttoptr i64 %i.de to ptr
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %.030, i64 128 ; 2 uses
  %.not.7 = icmp eq ptr %i.dg, %i.d
  br i1 %.not.7, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph33.prol.loopexit, %.lr.ph33, %bb.c, %bb.b
  store ptr null, ptr %4, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !20
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15, !inline_history !0
  %i.dj = load ptr, ptr %4, align 8, !tbaa !18    ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN4llvm5ErrorD2Ev.exit19, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) #15, !inline_history !1
  br label %_ZN4llvm5ErrorD2Ev.exit19

_ZN4llvm5ErrorD2Ev.exit19:                        ; preds = %bb.d, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc21InProcessMemoryAccess17writeBuffersAsyncENS_8ArrayRefINS0_8tpctypes11BufferWriteEEENS_15unique_functionIFvNS_5ErrorEEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef align 8 dereferenceable(40) %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %.idx = mul i64 %2, 24                          ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not14 = icmp eq i64 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %5 = add i64 %.idx, -24                         ; 2 uses
  %6 = udiv i64 %5, 24
  %7 = and i64 %6, 1
  %lcmp.mod.not.not = icmp eq i64 %7, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %8 = load i64, ptr %1, align 8, !tbaa !12
  %9 = inttoptr i64 %8 to ptr
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %13 = load i64, ptr %12, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %11, i64 %13, i1 false)
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.015.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %14, %.lr.ph.prol ]
  %15 = icmp ult i64 %5, 24
  br i1 %15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  store ptr null, ptr %4, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #15, !inline_history !0
  %i.d = load ptr, ptr %4, align 8, !tbaa !18     ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN4llvm5ErrorD2Ev.exit9, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #15, !inline_history !1
  br label %_ZN4llvm5ErrorD2Ev.exit9

_ZN4llvm5ErrorD2Ev.exit9:                         ; preds = %bb.b, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi ptr [ %i.o, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %16 = load i64, ptr %.015, align 8, !tbaa !12
  %17 = inttoptr i64 %16 to ptr
  %18 = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds nuw i8, ptr %.015, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %19, i64 %21, i1 false)
  %22 = getelementptr inbounds nuw i8, ptr %.015, i64 24
  %i.i = load i64, ptr %22, align 8, !tbaa !12
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %.015, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %.015, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.l, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.015, i64 48 ; 2 uses
  %.not.1 = icmp eq ptr %i.o, %i.a
  br i1 %.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc21InProcessMemoryAccess15readUInt8sAsyncENS_8ArrayRefINS0_12ExecutorAddrEEENS_15unique_functionIFvNS_8ExpectedISt6vectorIhSaIhEEEEEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef align 8 dereferenceable(40) %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Expected", align 8    ; 7 uses
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not25 = icmp eq i64 %2, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2
  %.idx = shl nuw nsw i64 %2, 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  %i.e = and i8 %.pre, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %i.f = phi i8 [ %i.e, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %.sroa.11.0.lcssa = phi ptr [ %.sroa.11.2, %._crit_edge.loopexit ], [ null, %bb.c ]
  %.sroa.19.0.lcssa = phi ptr [ %.sroa.19.2, %._crit_edge.loopexit ], [ null, %bb.c ]
  %.sroa.08.0.lcssa = phi ptr [ %.sroa.08.2, %._crit_edge.loopexit ], [ null, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 %i.f, ptr %i.g, align 8
  store ptr %.sroa.08.0.lcssa, ptr %4, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.11.0.lcssa, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.sroa.19.0.lcssa, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #15, !inline_history !72
  %i.l = load i8, ptr %i.g, align 8
  %i.m = trunc i8 %i.l to i1
  %i.n = load ptr, ptr %4, align 8, !tbaa !32     ; 5 uses
  %.not.i.i = icmp eq ptr %i.n, null              ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.f:                                             ; preds = %._crit_edge
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.f
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #15, !inline_history !73
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.f, %bb.e, %bb.d
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %.033 = phi ptr [ %i.al, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.sroa.08.032 = phi ptr [ %.sroa.08.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ %i.b, %.lr.ph.preheader ] ; 5 uses
  %.sroa.19.031 = phi ptr [ %.sroa.19.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.sroa.11.030 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ], [ %i.b, %.lr.ph.preheader ] ; 3 uses
  %i.v = load i64, ptr %.033, align 8, !tbaa !12
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.11.030, %.sroa.19.031
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  store i8 %i.x, ptr %.sroa.11.030, align 1, !tbaa !13
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.h:                                             ; preds = %.lr.ph
  %i.y = ptrtoint ptr %.sroa.19.031 to i64
  %i.z = ptrtoint ptr %.sroa.08.032 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 8 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i, %i.aa  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  %i.ai = load i8, ptr %i.w, align 1, !tbaa !13
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !13
  %i.aj = icmp sgt i64 %i.aa, 0
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %.sroa.08.032, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.08.032, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.08.032, i64 noundef %i.aa) #17
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %.pn = phi ptr [ %i.ah, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.11.030, %bb.g ]
  %.sroa.19.2 = phi ptr [ %i.ak, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.19.031, %bb.g ] ; 2 uses
  %.sroa.08.2 = phi ptr [ %i.ag, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.sroa.08.032, %bb.g ] ; 2 uses
  %.sroa.11.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.033, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc21InProcessMemoryAccess16readUInt16sAsyncENS_8ArrayRefINS0_12ExecutorAddrEEENS_15unique_functionIFvNS_8ExpectedISt6vectorItSaItEEEEEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef align 8 dereferenceable(40) %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Expected.23", align 8 ; 7 uses
  %i.a = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not24 = icmp eq i64 %2, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.b = shl nuw nsw i64 %2, 1
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #16 ; 3 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %2
  %.idx = shl nuw nsw i64 %2, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8
  %i.f = and i8 %.pre, -2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit
  %i.g = phi i8 [ %i.f, %._crit_edge.loopexit ], [ 0, %bb.c ]
  %.sroa.11.0.lcssa = phi ptr [ %.sroa.11.2, %._crit_edge.loopexit ], [ null, %bb.c ]
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.18.2, %._crit_edge.loopexit ], [ null, %bb.c ]
  %.sroa.08.0.lcssa = phi ptr [ %.sroa.08.2, %._crit_edge.loopexit ], [ null, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 %i.g, ptr %i.h, align 8
  store ptr %.sroa.08.0.lcssa, ptr %4, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.11.0.lcssa, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.sroa.18.0.lcssa, ptr %i.j, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !84
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #15, !inline_history !76
  %i.m = load i8, ptr %i.h, align 8
  %i.n = trunc i8 %i.m to i1
  %i.o = load ptr, ptr %4, align 8, !tbaa !32     ; 5 uses
  %.not.i.i = icmp eq ptr %i.o, null              ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.e

end_hunk_0
