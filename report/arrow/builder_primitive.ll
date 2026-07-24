inline.NumInlined: 724
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !60
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !161
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20, !inline_history !161
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, !prof !64

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, !prof !149

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !150, !range !159, !noundef !160
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.101, align 8            ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !162, !noalias !163 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !61, !noalias !163
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !163
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !163, !inline_history !166
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit15.thread

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !61, !noalias !163
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !163
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !166
  %.pr = load ptr, ptr %6, align 8, !tbaa !71     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.j

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !167  ; 2 uses
  %i.t = sdiv i64 %i.s, 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 4 uses
  %i.v = srem i64 %i.s, 8                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.u, align 1, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = and i8 %i.y, %i.w                        ; 2 uses
  %i.aa = icmp sgt i64 %3, 0
  br i1 %i.aa, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.v
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.ad = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ae, %bb.e ] ; 2 uses
  %.03556.i.i = phi i64 [ %3, %.lr.ph.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.03655.i.i = phi i8 [ %i.ac, %.lr.ph.i.i ], [ %i.aj, %bb.e ] ; 2 uses
  %.03854.i.i = phi i8 [ %i.z, %.lr.ph.i.i ], [ %i.ai, %bb.e ]
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38
  %.not51.i.i = icmp eq i8 %i.ag, 0
  %i.ah = select i1 %.not51.i.i, i8 0, i8 %.03655.i.i
  %i.ai = or i8 %i.ah, %.03854.i.i                ; 2 uses
  %i.aj = shl i8 %.03655.i.i, 1                   ; 2 uses
  %i.ak = add nsw i64 %.03556.i.i, -1             ; 2 uses
  %i.al = icmp ne i8 %i.aj, 0
  %i.am = icmp samesign ugt i64 %.03556.i.i, 1
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %bb.e, label %._crit_edge.i.i, !llvm.loop !168

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.018 = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.e ]
  %.038.lcssa.i.i = phi i8 [ %i.z, %bb.d ], [ %i.ai, %bb.e ]
  %.035.lcssa.i.i = phi i64 [ %3, %bb.d ], [ %i.ak, %bb.e ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %.038.lcssa.i.i, ptr %i.u, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %.018, %._crit_edge.i.i ] ; 9 uses
  %.040.i.i = phi ptr [ %i.u, %bb.c ], [ %i.ao, %._crit_edge.i.i ] ; 9 uses
  %.1.i.i = phi i64 [ %3, %bb.c ], [ %.035.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.ap = icmp sgt i64 %.1.i.i, 7
  br i1 %i.ap, label %iter.check, label %._crit_edge60.i.i

iter.check:                                       ; preds = %bb.f
  %i.aq = lshr i64 %.1.i.i, 3                     ; 9 uses
  %i.ar = call i64 @llvm.umax.i64(i64 %i.aq, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %.1.i.i, 32
  br i1 %min.iters.check, label %.preheader53.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.as = icmp ne i64 %i.aq, 0                    ; 2 uses
  %umin.neg = sext i1 %i.as to i64
  %i.at = getelementptr i8, ptr %.040.i.i, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 1
  %scevgep = getelementptr i8, ptr %i.au, i64 %umin.neg
  %scevgep46 = getelementptr i8, ptr %2, i64 %.1
  %i.av = and i64 %.1.i.i, 9223372036854775800
  %i.aw = add i64 %.1, %i.av                      ; 2 uses
  %i.ax = add i64 %i.aw, 8
  %i.ay = select i1 %i.as, i64 %i.aw, i64 %i.ax
  %scevgep47 = getelementptr i8, ptr %2, i64 %i.ay
  %bound0 = icmp ult ptr %.040.i.i, %scevgep47
  %bound1 = icmp ult ptr %scevgep46, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader53.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check49 = icmp ult i64 %.1.i.i, 128
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ar, 12
  %n.vec = and i64 %i.ar, 1152921504606846960     ; 6 uses
  %i.az = shl nuw nsw i64 %n.vec, 3
  %i.ba = add i64 %.1, %i.az                      ; 2 uses
  %i.bb = sub nsw i64 %i.aq, %n.vec
  %i.bc = getelementptr i8, ptr %.040.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = shl i64 %index, 3
  %i.be = add i64 %.1, %i.bd                      ; 16 uses
  %next.gep = getelementptr i8, ptr %.040.i.i, i64 %index
  %i.bf = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bg = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  %i.bm = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %i.bo = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 40
  %i.bq = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 48
  %i.bs = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  %i.bu = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 64
  %i.bw = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 72
  %i.by = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  %i.ca = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 88
  %i.cc = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 96
  %i.ce = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 104
  %i.cg = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 112
  %i.ci = getelementptr i8, ptr %2, i64 %i.be     ; 8 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 120
  %i.ck = load i8, ptr %i.bf, align 1, !tbaa !38, !alias.scope !169
  %i.cl = load i8, ptr %i.bh, align 1, !tbaa !38, !alias.scope !169
  %i.cm = load i8, ptr %i.bj, align 1, !tbaa !38, !alias.scope !169
  %i.cn = load i8, ptr %i.bl, align 1, !tbaa !38, !alias.scope !169
  %i.co = load i8, ptr %i.bn, align 1, !tbaa !38, !alias.scope !169
  %i.cp = load i8, ptr %i.bp, align 1, !tbaa !38, !alias.scope !169
  %i.cq = load i8, ptr %i.br, align 1, !tbaa !38, !alias.scope !169
  %i.cr = load i8, ptr %i.bt, align 1, !tbaa !38, !alias.scope !169
  %i.cs = load i8, ptr %i.bv, align 1, !tbaa !38, !alias.scope !169
  %i.ct = load i8, ptr %i.bx, align 1, !tbaa !38, !alias.scope !169
  %i.cu = load i8, ptr %i.bz, align 1, !tbaa !38, !alias.scope !169
  %i.cv = load i8, ptr %i.cb, align 1, !tbaa !38, !alias.scope !169
  %i.cw = load i8, ptr %i.cd, align 1, !tbaa !38, !alias.scope !169
  %i.cx = load i8, ptr %i.cf, align 1, !tbaa !38, !alias.scope !169
  %i.cy = load i8, ptr %i.ch, align 1, !tbaa !38, !alias.scope !169
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !38, !alias.scope !169
  %i.da = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 1
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 2
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 3
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 4
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 5
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 6
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 7
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 8
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 9
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 10
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 11
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 12
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 13
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 14
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 15
  %i.dq = icmp ne <16 x i8> %i.dp, zeroinitializer
  %i.dr = zext <16 x i1> %i.dq to <16 x i8>
  %i.ds = getelementptr i8, ptr %i.bf, i64 1
  %i.dt = getelementptr i8, ptr %i.bg, i64 9
  %i.du = getelementptr i8, ptr %i.bi, i64 17
  %i.dv = getelementptr i8, ptr %i.bk, i64 25
  %i.dw = getelementptr i8, ptr %i.bm, i64 33
  %i.dx = getelementptr i8, ptr %i.bo, i64 41
  %i.dy = getelementptr i8, ptr %i.bq, i64 49
  %i.dz = getelementptr i8, ptr %i.bs, i64 57
  %i.ea = getelementptr i8, ptr %i.bu, i64 65
  %i.eb = getelementptr i8, ptr %i.bw, i64 73
  %i.ec = getelementptr i8, ptr %i.by, i64 81
  %i.ed = getelementptr i8, ptr %i.ca, i64 89
  %i.ee = getelementptr i8, ptr %i.cc, i64 97
  %i.ef = getelementptr i8, ptr %i.ce, i64 105
  %i.eg = getelementptr i8, ptr %i.cg, i64 113
  %i.eh = getelementptr i8, ptr %i.ci, i64 121
  %i.ei = load i8, ptr %i.ds, align 1, !tbaa !38, !alias.scope !169
  %i.ej = load i8, ptr %i.dt, align 1, !tbaa !38, !alias.scope !169
  %i.ek = load i8, ptr %i.du, align 1, !tbaa !38, !alias.scope !169
  %i.el = load i8, ptr %i.dv, align 1, !tbaa !38, !alias.scope !169
  %i.em = load i8, ptr %i.dw, align 1, !tbaa !38, !alias.scope !169
  %i.en = load i8, ptr %i.dx, align 1, !tbaa !38, !alias.scope !169
  %i.eo = load i8, ptr %i.dy, align 1, !tbaa !38, !alias.scope !169
  %i.ep = load i8, ptr %i.dz, align 1, !tbaa !38, !alias.scope !169
  %i.eq = load i8, ptr %i.ea, align 1, !tbaa !38, !alias.scope !169
  %i.er = load i8, ptr %i.eb, align 1, !tbaa !38, !alias.scope !169
  %i.es = load i8, ptr %i.ec, align 1, !tbaa !38, !alias.scope !169
  %i.et = load i8, ptr %i.ed, align 1, !tbaa !38, !alias.scope !169
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !38, !alias.scope !169
  %i.ev = load i8, ptr %i.ef, align 1, !tbaa !38, !alias.scope !169
  %i.ew = load i8, ptr %i.eg, align 1, !tbaa !38, !alias.scope !169
  %i.ex = load i8, ptr %i.eh, align 1, !tbaa !38, !alias.scope !169
  %i.ey = insertelement <16 x i8> poison, i8 %i.ei, i64 0
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 1
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 2
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 3
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 4
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 5
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 6
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 7
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 8
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 9
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 10
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 11
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 12
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 13
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 14
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 15
  %i.fo = icmp eq <16 x i8> %i.fn, zeroinitializer
  %i.fp = getelementptr i8, ptr %i.bf, i64 2
  %i.fq = getelementptr i8, ptr %i.bg, i64 10
  %i.fr = getelementptr i8, ptr %i.bi, i64 18
  %i.fs = getelementptr i8, ptr %i.bk, i64 26
  %i.ft = getelementptr i8, ptr %i.bm, i64 34
  %i.fu = getelementptr i8, ptr %i.bo, i64 42
  %i.fv = getelementptr i8, ptr %i.bq, i64 50
  %i.fw = getelementptr i8, ptr %i.bs, i64 58
  %i.fx = getelementptr i8, ptr %i.bu, i64 66
  %i.fy = getelementptr i8, ptr %i.bw, i64 74
  %i.fz = getelementptr i8, ptr %i.by, i64 82
  %i.ga = getelementptr i8, ptr %i.ca, i64 90
  %i.gb = getelementptr i8, ptr %i.cc, i64 98
  %i.gc = getelementptr i8, ptr %i.ce, i64 106
  %i.gd = getelementptr i8, ptr %i.cg, i64 114
  %i.ge = getelementptr i8, ptr %i.ci, i64 122
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !38, !alias.scope !169
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !38, !alias.scope !169
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !38, !alias.scope !169
  %i.gi = load i8, ptr %i.fs, align 1, !tbaa !38, !alias.scope !169
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !38, !alias.scope !169
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !38, !alias.scope !169
  %i.gl = load i8, ptr %i.fv, align 1, !tbaa !38, !alias.scope !169
  %i.gm = load i8, ptr %i.fw, align 1, !tbaa !38, !alias.scope !169
  %i.gn = load i8, ptr %i.fx, align 1, !tbaa !38, !alias.scope !169
  %i.go = load i8, ptr %i.fy, align 1, !tbaa !38, !alias.scope !169
  %i.gp = load i8, ptr %i.fz, align 1, !tbaa !38, !alias.scope !169
  %i.gq = load i8, ptr %i.ga, align 1, !tbaa !38, !alias.scope !169
  %i.gr = load i8, ptr %i.gb, align 1, !tbaa !38, !alias.scope !169
  %i.gs = load i8, ptr %i.gc, align 1, !tbaa !38, !alias.scope !169
  %i.gt = load i8, ptr %i.gd, align 1, !tbaa !38, !alias.scope !169
  %i.gu = load i8, ptr %i.ge, align 1, !tbaa !38, !alias.scope !169
  %i.gv = insertelement <16 x i8> poison, i8 %i.gf, i64 0
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 1
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 2
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 3
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 4
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 5
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 6
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 7
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 8
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 9
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 10
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 11
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 12
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 13
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 14
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 15
  %i.hl = icmp eq <16 x i8> %i.hk, zeroinitializer
  %i.hm = getelementptr i8, ptr %i.bf, i64 3
  %i.hn = getelementptr i8, ptr %i.bg, i64 11
  %i.ho = getelementptr i8, ptr %i.bi, i64 19
  %i.hp = getelementptr i8, ptr %i.bk, i64 27
  %i.hq = getelementptr i8, ptr %i.bm, i64 35
  %i.hr = getelementptr i8, ptr %i.bo, i64 43
  %i.hs = getelementptr i8, ptr %i.bq, i64 51
  %i.ht = getelementptr i8, ptr %i.bs, i64 59
  %i.hu = getelementptr i8, ptr %i.bu, i64 67
  %i.hv = getelementptr i8, ptr %i.bw, i64 75
  %i.hw = getelementptr i8, ptr %i.by, i64 83
  %i.hx = getelementptr i8, ptr %i.ca, i64 91
  %i.hy = getelementptr i8, ptr %i.cc, i64 99
  %i.hz = getelementptr i8, ptr %i.ce, i64 107
  %i.ia = getelementptr i8, ptr %i.cg, i64 115
  %i.ib = getelementptr i8, ptr %i.ci, i64 123
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !38, !alias.scope !169
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !38, !alias.scope !169
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !38, !alias.scope !169
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !38, !alias.scope !169
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !38, !alias.scope !169
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !38, !alias.scope !169
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !38, !alias.scope !169
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !38, !alias.scope !169
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !38, !alias.scope !169
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !38, !alias.scope !169
  %i.im = load i8, ptr %i.hw, align 1, !tbaa !38, !alias.scope !169
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !38, !alias.scope !169
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !38, !alias.scope !169
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !38, !alias.scope !169
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !38, !alias.scope !169
  %i.ir = load i8, ptr %i.ib, align 1, !tbaa !38, !alias.scope !169
  %i.is = insertelement <16 x i8> poison, i8 %i.ic, i64 0
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 1
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 2
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 3
end_hunk_0
begin_hunk_1_@_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_:bb.a
  %i.kr = insertelement <16 x i8> %i.kq, i8 %i.kb, i64 2
  %i.ks = insertelement <16 x i8> %i.kr, i8 %i.kc, i64 3
  %i.kt = insertelement <16 x i8> %i.ks, i8 %i.kd, i64 4
  %i.ku = insertelement <16 x i8> %i.kt, i8 %i.ke, i64 5
  %i.kv = insertelement <16 x i8> %i.ku, i8 %i.kf, i64 6
  %i.kw = insertelement <16 x i8> %i.kv, i8 %i.kg, i64 7
  %i.kx = insertelement <16 x i8> %i.kw, i8 %i.kh, i64 8
  %i.ky = insertelement <16 x i8> %i.kx, i8 %i.ki, i64 9
  %i.kz = insertelement <16 x i8> %i.ky, i8 %i.kj, i64 10
  %i.la = insertelement <16 x i8> %i.kz, i8 %i.kk, i64 11
  %i.lb = insertelement <16 x i8> %i.la, i8 %i.kl, i64 12
  %i.lc = insertelement <16 x i8> %i.lb, i8 %i.km, i64 13
  %i.ld = insertelement <16 x i8> %i.lc, i8 %i.kn, i64 14
  %i.le = insertelement <16 x i8> %i.ld, i8 %i.ko, i64 15
  %i.lf = icmp eq <16 x i8> %i.le, zeroinitializer
  %i.lg = getelementptr i8, ptr %i.bf, i64 5
  %i.lh = getelementptr i8, ptr %i.bg, i64 13
  %i.li = getelementptr i8, ptr %i.bi, i64 21
  %i.lj = getelementptr i8, ptr %i.bk, i64 29
  %i.lk = getelementptr i8, ptr %i.bm, i64 37
  %i.ll = getelementptr i8, ptr %i.bo, i64 45
  %i.lm = getelementptr i8, ptr %i.bq, i64 53
  %i.ln = getelementptr i8, ptr %i.bs, i64 61
  %i.lo = getelementptr i8, ptr %i.bu, i64 69
  %i.lp = getelementptr i8, ptr %i.bw, i64 77
  %i.lq = getelementptr i8, ptr %i.by, i64 85
  %i.lr = getelementptr i8, ptr %i.ca, i64 93
  %i.ls = getelementptr i8, ptr %i.cc, i64 101
  %i.lt = getelementptr i8, ptr %i.ce, i64 109
  %i.lu = getelementptr i8, ptr %i.cg, i64 117
  %i.lv = getelementptr i8, ptr %i.ci, i64 125
  %i.lw = load i8, ptr %i.lg, align 1, !tbaa !38, !alias.scope !169
  %i.lx = load i8, ptr %i.lh, align 1, !tbaa !38, !alias.scope !169
  %i.ly = load i8, ptr %i.li, align 1, !tbaa !38, !alias.scope !169
  %i.lz = load i8, ptr %i.lj, align 1, !tbaa !38, !alias.scope !169
  %i.ma = load i8, ptr %i.lk, align 1, !tbaa !38, !alias.scope !169
  %i.mb = load i8, ptr %i.ll, align 1, !tbaa !38, !alias.scope !169
  %i.mc = load i8, ptr %i.lm, align 1, !tbaa !38, !alias.scope !169
  %i.md = load i8, ptr %i.ln, align 1, !tbaa !38, !alias.scope !169
  %i.me = load i8, ptr %i.lo, align 1, !tbaa !38, !alias.scope !169
  %i.mf = load i8, ptr %i.lp, align 1, !tbaa !38, !alias.scope !169
  %i.mg = load i8, ptr %i.lq, align 1, !tbaa !38, !alias.scope !169
  %i.mh = load i8, ptr %i.lr, align 1, !tbaa !38, !alias.scope !169
  %i.mi = load i8, ptr %i.ls, align 1, !tbaa !38, !alias.scope !169
  %i.mj = load i8, ptr %i.lt, align 1, !tbaa !38, !alias.scope !169
  %i.mk = load i8, ptr %i.lu, align 1, !tbaa !38, !alias.scope !169
  %i.ml = load i8, ptr %i.lv, align 1, !tbaa !38, !alias.scope !169
  %i.mm = insertelement <16 x i8> poison, i8 %i.lw, i64 0
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 1
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 2
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 3
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 4
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 5
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 6
  %i.mt = insertelement <16 x i8> %i.ms, i8 %i.md, i64 7
  %i.mu = insertelement <16 x i8> %i.mt, i8 %i.me, i64 8
  %i.mv = insertelement <16 x i8> %i.mu, i8 %i.mf, i64 9
  %i.mw = insertelement <16 x i8> %i.mv, i8 %i.mg, i64 10
  %i.mx = insertelement <16 x i8> %i.mw, i8 %i.mh, i64 11
  %i.my = insertelement <16 x i8> %i.mx, i8 %i.mi, i64 12
  %i.mz = insertelement <16 x i8> %i.my, i8 %i.mj, i64 13
  %i.na = insertelement <16 x i8> %i.mz, i8 %i.mk, i64 14
  %i.nb = insertelement <16 x i8> %i.na, i8 %i.ml, i64 15
  %i.nc = icmp eq <16 x i8> %i.nb, zeroinitializer
  %i.nd = getelementptr i8, ptr %i.bf, i64 6
  %i.ne = getelementptr i8, ptr %i.bg, i64 14
  %i.nf = getelementptr i8, ptr %i.bi, i64 22
  %i.ng = getelementptr i8, ptr %i.bk, i64 30
  %i.nh = getelementptr i8, ptr %i.bm, i64 38
  %i.ni = getelementptr i8, ptr %i.bo, i64 46
  %i.nj = getelementptr i8, ptr %i.bq, i64 54
  %i.nk = getelementptr i8, ptr %i.bs, i64 62
  %i.nl = getelementptr i8, ptr %i.bu, i64 70
  %i.nm = getelementptr i8, ptr %i.bw, i64 78
  %i.nn = getelementptr i8, ptr %i.by, i64 86
  %i.no = getelementptr i8, ptr %i.ca, i64 94
  %i.np = getelementptr i8, ptr %i.cc, i64 102
  %i.nq = getelementptr i8, ptr %i.ce, i64 110
  %i.nr = getelementptr i8, ptr %i.cg, i64 118
  %i.ns = getelementptr i8, ptr %i.ci, i64 126
  %i.nt = load i8, ptr %i.nd, align 1, !tbaa !38, !alias.scope !169
  %i.nu = load i8, ptr %i.ne, align 1, !tbaa !38, !alias.scope !169
  %i.nv = load i8, ptr %i.nf, align 1, !tbaa !38, !alias.scope !169
  %i.nw = load i8, ptr %i.ng, align 1, !tbaa !38, !alias.scope !169
  %i.nx = load i8, ptr %i.nh, align 1, !tbaa !38, !alias.scope !169
  %i.ny = load i8, ptr %i.ni, align 1, !tbaa !38, !alias.scope !169
  %i.nz = load i8, ptr %i.nj, align 1, !tbaa !38, !alias.scope !169
  %i.oa = load i8, ptr %i.nk, align 1, !tbaa !38, !alias.scope !169
  %i.ob = load i8, ptr %i.nl, align 1, !tbaa !38, !alias.scope !169
  %i.oc = load i8, ptr %i.nm, align 1, !tbaa !38, !alias.scope !169
  %i.od = load i8, ptr %i.nn, align 1, !tbaa !38, !alias.scope !169
  %i.oe = load i8, ptr %i.no, align 1, !tbaa !38, !alias.scope !169
  %i.of = load i8, ptr %i.np, align 1, !tbaa !38, !alias.scope !169
  %i.og = load i8, ptr %i.nq, align 1, !tbaa !38, !alias.scope !169
  %i.oh = load i8, ptr %i.nr, align 1, !tbaa !38, !alias.scope !169
  %i.oi = load i8, ptr %i.ns, align 1, !tbaa !38, !alias.scope !169
  %i.oj = insertelement <16 x i8> poison, i8 %i.nt, i64 0
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 1
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 2
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 3
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 4
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 5
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 6
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 7
  %i.or = insertelement <16 x i8> %i.oq, i8 %i.ob, i64 8
  %i.os = insertelement <16 x i8> %i.or, i8 %i.oc, i64 9
  %i.ot = insertelement <16 x i8> %i.os, i8 %i.od, i64 10
  %i.ou = insertelement <16 x i8> %i.ot, i8 %i.oe, i64 11
  %i.ov = insertelement <16 x i8> %i.ou, i8 %i.of, i64 12
  %i.ow = insertelement <16 x i8> %i.ov, i8 %i.og, i64 13
  %i.ox = insertelement <16 x i8> %i.ow, i8 %i.oh, i64 14
  %i.oy = insertelement <16 x i8> %i.ox, i8 %i.oi, i64 15
  %i.oz = icmp eq <16 x i8> %i.oy, zeroinitializer
  %i.pa = getelementptr i8, ptr %i.bf, i64 7
  %i.pb = getelementptr i8, ptr %i.bg, i64 15
  %i.pc = getelementptr i8, ptr %i.bi, i64 23
  %i.pd = getelementptr i8, ptr %i.bk, i64 31
  %i.pe = getelementptr i8, ptr %i.bm, i64 39
  %i.pf = getelementptr i8, ptr %i.bo, i64 47
  %i.pg = getelementptr i8, ptr %i.bq, i64 55
  %i.ph = getelementptr i8, ptr %i.bs, i64 63
  %i.pi = getelementptr i8, ptr %i.bu, i64 71
  %i.pj = getelementptr i8, ptr %i.bw, i64 79
  %i.pk = getelementptr i8, ptr %i.by, i64 87
  %i.pl = getelementptr i8, ptr %i.ca, i64 95
  %i.pm = getelementptr i8, ptr %i.cc, i64 103
  %i.pn = getelementptr i8, ptr %i.ce, i64 111
  %i.po = getelementptr i8, ptr %i.cg, i64 119
  %i.pp = getelementptr i8, ptr %i.ci, i64 127
  %i.pq = load i8, ptr %i.pa, align 1, !tbaa !38, !alias.scope !169
  %i.pr = load i8, ptr %i.pb, align 1, !tbaa !38, !alias.scope !169
  %i.ps = load i8, ptr %i.pc, align 1, !tbaa !38, !alias.scope !169
  %i.pt = load i8, ptr %i.pd, align 1, !tbaa !38, !alias.scope !169
  %i.pu = load i8, ptr %i.pe, align 1, !tbaa !38, !alias.scope !169
  %i.pv = load i8, ptr %i.pf, align 1, !tbaa !38, !alias.scope !169
  %i.pw = load i8, ptr %i.pg, align 1, !tbaa !38, !alias.scope !169
  %i.px = load i8, ptr %i.ph, align 1, !tbaa !38, !alias.scope !169
  %i.py = load i8, ptr %i.pi, align 1, !tbaa !38, !alias.scope !169
  %i.pz = load i8, ptr %i.pj, align 1, !tbaa !38, !alias.scope !169
  %i.qa = load i8, ptr %i.pk, align 1, !tbaa !38, !alias.scope !169
  %i.qb = load i8, ptr %i.pl, align 1, !tbaa !38, !alias.scope !169
  %i.qc = load i8, ptr %i.pm, align 1, !tbaa !38, !alias.scope !169
  %i.qd = load i8, ptr %i.pn, align 1, !tbaa !38, !alias.scope !169
  %i.qe = load i8, ptr %i.po, align 1, !tbaa !38, !alias.scope !169
  %i.qf = load i8, ptr %i.pp, align 1, !tbaa !38, !alias.scope !169
  %i.qg = insertelement <16 x i8> poison, i8 %i.pq, i64 0
  %i.qh = insertelement <16 x i8> %i.qg, i8 %i.pr, i64 1
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 2
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 3
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 4
  %i.ql = insertelement <16 x i8> %i.qk, i8 %i.pv, i64 5
  %i.qm = insertelement <16 x i8> %i.ql, i8 %i.pw, i64 6
  %i.qn = insertelement <16 x i8> %i.qm, i8 %i.px, i64 7
  %i.qo = insertelement <16 x i8> %i.qn, i8 %i.py, i64 8
  %i.qp = insertelement <16 x i8> %i.qo, i8 %i.pz, i64 9
  %i.qq = insertelement <16 x i8> %i.qp, i8 %i.qa, i64 10
  %i.qr = insertelement <16 x i8> %i.qq, i8 %i.qb, i64 11
  %i.qs = insertelement <16 x i8> %i.qr, i8 %i.qc, i64 12
  %i.qt = insertelement <16 x i8> %i.qs, i8 %i.qd, i64 13
  %i.qu = insertelement <16 x i8> %i.qt, i8 %i.qe, i64 14
  %i.qv = insertelement <16 x i8> %i.qu, i8 %i.qf, i64 15
  %i.qw = icmp eq <16 x i8> %i.qv, zeroinitializer
  %i.qx = select <16 x i1> %i.fo, <16 x i8> zeroinitializer, <16 x i8> splat (i8 2)
  %i.qy = or disjoint <16 x i8> %i.qx, %i.dr
  %i.qz = select <16 x i1> %i.hl, <16 x i8> zeroinitializer, <16 x i8> splat (i8 4)
  %i.ra = or disjoint <16 x i8> %i.qy, %i.qz
  %i.rb = select <16 x i1> %i.ji, <16 x i8> zeroinitializer, <16 x i8> splat (i8 8)
  %i.rc = or disjoint <16 x i8> %i.ra, %i.rb
  %i.rd = select <16 x i1> %i.lf, <16 x i8> zeroinitializer, <16 x i8> splat (i8 16)
  %i.re = or disjoint <16 x i8> %i.rc, %i.rd
  %i.rf = select <16 x i1> %i.nc, <16 x i8> zeroinitializer, <16 x i8> splat (i8 32)
  %i.rg = or disjoint <16 x i8> %i.re, %i.rf
  %i.rh = select <16 x i1> %i.oz, <16 x i8> zeroinitializer, <16 x i8> splat (i8 64)
  %i.ri = or <16 x i8> %i.rg, %i.rh
  %i.rj = select <16 x i1> %i.qw, <16 x i8> zeroinitializer, <16 x i8> splat (i8 -128)
  %i.rk = or <16 x i8> %i.ri, %i.rj
  store <16 x i8> %i.rk, ptr %next.gep, align 1, !tbaa !38, !alias.scope !172, !noalias !169
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rl = icmp eq i64 %index.next, %n.vec
  br i1 %i.rl, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge60.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader53.i.i.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ar, 1152921504606846972   ; 5 uses
  %i.rm = shl nuw nsw i64 %n.vec53, 3
  %i.rn = add i64 %.1, %i.rm                      ; 2 uses
  %i.ro = sub nsw i64 %i.aq, %n.vec53
  %i.rp = getelementptr i8, ptr %.040.i.i, i64 %n.vec53 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 3 uses
  %i.rq = shl i64 %index54, 3
  %i.rr = add i64 %.1, %i.rq                      ; 4 uses
  %next.gep55 = getelementptr i8, ptr %.040.i.i, i64 %index54
  %i.rs = getelementptr i8, ptr %2, i64 %i.rr     ; 8 uses
  %i.rt = getelementptr i8, ptr %2, i64 %i.rr     ; 8 uses
  %i.ru = getelementptr i8, ptr %i.rt, i64 8
  %i.rv = getelementptr i8, ptr %2, i64 %i.rr     ; 8 uses
  %i.rw = getelementptr i8, ptr %i.rv, i64 16
  %i.rx = getelementptr i8, ptr %2, i64 %i.rr     ; 8 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 24
  %i.rz = load i8, ptr %i.rs, align 1, !tbaa !38, !alias.scope !169
  %i.sa = load i8, ptr %i.ru, align 1, !tbaa !38, !alias.scope !169
  %i.sb = load i8, ptr %i.rw, align 1, !tbaa !38, !alias.scope !169
  %i.sc = load i8, ptr %i.ry, align 1, !tbaa !38, !alias.scope !169
  %i.sd = insertelement <4 x i8> poison, i8 %i.rz, i64 0
  %i.se = insertelement <4 x i8> %i.sd, i8 %i.sa, i64 1
  %i.sf = insertelement <4 x i8> %i.se, i8 %i.sb, i64 2
  %i.sg = insertelement <4 x i8> %i.sf, i8 %i.sc, i64 3
  %i.sh = icmp ne <4 x i8> %i.sg, zeroinitializer
  %i.si = zext <4 x i1> %i.sh to <4 x i8>
  %i.sj = getelementptr i8, ptr %i.rs, i64 1
  %i.sk = getelementptr i8, ptr %i.rt, i64 9
  %i.sl = getelementptr i8, ptr %i.rv, i64 17
  %i.sm = getelementptr i8, ptr %i.rx, i64 25
  %i.sn = load i8, ptr %i.sj, align 1, !tbaa !38, !alias.scope !169
  %i.so = load i8, ptr %i.sk, align 1, !tbaa !38, !alias.scope !169
  %i.sp = load i8, ptr %i.sl, align 1, !tbaa !38, !alias.scope !169
  %i.sq = load i8, ptr %i.sm, align 1, !tbaa !38, !alias.scope !169
  %i.sr = insertelement <4 x i8> poison, i8 %i.sn, i64 0
  %i.ss = insertelement <4 x i8> %i.sr, i8 %i.so, i64 1
  %i.st = insertelement <4 x i8> %i.ss, i8 %i.sp, i64 2
  %i.su = insertelement <4 x i8> %i.st, i8 %i.sq, i64 3
  %i.sv = icmp eq <4 x i8> %i.su, zeroinitializer
  %i.sw = getelementptr i8, ptr %i.rs, i64 2
  %i.sx = getelementptr i8, ptr %i.rt, i64 10
  %i.sy = getelementptr i8, ptr %i.rv, i64 18
  %i.sz = getelementptr i8, ptr %i.rx, i64 26
  %i.ta = load i8, ptr %i.sw, align 1, !tbaa !38, !alias.scope !169
  %i.tb = load i8, ptr %i.sx, align 1, !tbaa !38, !alias.scope !169
  %i.tc = load i8, ptr %i.sy, align 1, !tbaa !38, !alias.scope !169
  %i.td = load i8, ptr %i.sz, align 1, !tbaa !38, !alias.scope !169
  %i.te = insertelement <4 x i8> poison, i8 %i.ta, i64 0
  %i.tf = insertelement <4 x i8> %i.te, i8 %i.tb, i64 1
  %i.tg = insertelement <4 x i8> %i.tf, i8 %i.tc, i64 2
  %i.th = insertelement <4 x i8> %i.tg, i8 %i.td, i64 3
  %i.ti = icmp eq <4 x i8> %i.th, zeroinitializer
  %i.tj = getelementptr i8, ptr %i.rs, i64 3
  %i.tk = getelementptr i8, ptr %i.rt, i64 11
  %i.tl = getelementptr i8, ptr %i.rv, i64 19
  %i.tm = getelementptr i8, ptr %i.rx, i64 27
  %i.tn = load i8, ptr %i.tj, align 1, !tbaa !38, !alias.scope !169
  %i.to = load i8, ptr %i.tk, align 1, !tbaa !38, !alias.scope !169
  %i.tp = load i8, ptr %i.tl, align 1, !tbaa !38, !alias.scope !169
  %i.tq = load i8, ptr %i.tm, align 1, !tbaa !38, !alias.scope !169
  %i.tr = insertelement <4 x i8> poison, i8 %i.tn, i64 0
  %i.ts = insertelement <4 x i8> %i.tr, i8 %i.to, i64 1
  %i.tt = insertelement <4 x i8> %i.ts, i8 %i.tp, i64 2
  %i.tu = insertelement <4 x i8> %i.tt, i8 %i.tq, i64 3
  %i.tv = icmp eq <4 x i8> %i.tu, zeroinitializer
  %i.tw = getelementptr i8, ptr %i.rs, i64 4
  %i.tx = getelementptr i8, ptr %i.rt, i64 12
  %i.ty = getelementptr i8, ptr %i.rv, i64 20
  %i.tz = getelementptr i8, ptr %i.rx, i64 28
  %i.ua = load i8, ptr %i.tw, align 1, !tbaa !38, !alias.scope !169
  %i.ub = load i8, ptr %i.tx, align 1, !tbaa !38, !alias.scope !169
  %i.uc = load i8, ptr %i.ty, align 1, !tbaa !38, !alias.scope !169
  %i.ud = load i8, ptr %i.tz, align 1, !tbaa !38, !alias.scope !169
  %i.ue = insertelement <4 x i8> poison, i8 %i.ua, i64 0
  %i.uf = insertelement <4 x i8> %i.ue, i8 %i.ub, i64 1
  %i.ug = insertelement <4 x i8> %i.uf, i8 %i.uc, i64 2
  %i.uh = insertelement <4 x i8> %i.ug, i8 %i.ud, i64 3
  %i.ui = icmp eq <4 x i8> %i.uh, zeroinitializer
  %i.uj = getelementptr i8, ptr %i.rs, i64 5
  %i.uk = getelementptr i8, ptr %i.rt, i64 13
  %i.ul = getelementptr i8, ptr %i.rv, i64 21
  %i.um = getelementptr i8, ptr %i.rx, i64 29
  %i.un = load i8, ptr %i.uj, align 1, !tbaa !38, !alias.scope !169
  %i.uo = load i8, ptr %i.uk, align 1, !tbaa !38, !alias.scope !169
  %i.up = load i8, ptr %i.ul, align 1, !tbaa !38, !alias.scope !169
  %i.uq = load i8, ptr %i.um, align 1, !tbaa !38, !alias.scope !169
  %i.ur = insertelement <4 x i8> poison, i8 %i.un, i64 0
  %i.us = insertelement <4 x i8> %i.ur, i8 %i.uo, i64 1
  %i.ut = insertelement <4 x i8> %i.us, i8 %i.up, i64 2
  %i.uu = insertelement <4 x i8> %i.ut, i8 %i.uq, i64 3
  %i.uv = icmp eq <4 x i8> %i.uu, zeroinitializer
  %i.uw = getelementptr i8, ptr %i.rs, i64 6
  %i.ux = getelementptr i8, ptr %i.rt, i64 14
  %i.uy = getelementptr i8, ptr %i.rv, i64 22
  %i.uz = getelementptr i8, ptr %i.rx, i64 30
  %i.va = load i8, ptr %i.uw, align 1, !tbaa !38, !alias.scope !169
  %i.vb = load i8, ptr %i.ux, align 1, !tbaa !38, !alias.scope !169
  %i.vc = load i8, ptr %i.uy, align 1, !tbaa !38, !alias.scope !169
  %i.vd = load i8, ptr %i.uz, align 1, !tbaa !38, !alias.scope !169
  %i.ve = insertelement <4 x i8> poison, i8 %i.va, i64 0
  %i.vf = insertelement <4 x i8> %i.ve, i8 %i.vb, i64 1
  %i.vg = insertelement <4 x i8> %i.vf, i8 %i.vc, i64 2
  %i.vh = insertelement <4 x i8> %i.vg, i8 %i.vd, i64 3
  %i.vi = icmp eq <4 x i8> %i.vh, zeroinitializer
  %i.vj = getelementptr i8, ptr %i.rs, i64 7
  %i.vk = getelementptr i8, ptr %i.rt, i64 15
  %i.vl = getelementptr i8, ptr %i.rv, i64 23
  %i.vm = getelementptr i8, ptr %i.rx, i64 31
  %i.vn = load i8, ptr %i.vj, align 1, !tbaa !38, !alias.scope !169
  %i.vo = load i8, ptr %i.vk, align 1, !tbaa !38, !alias.scope !169
  %i.vp = load i8, ptr %i.vl, align 1, !tbaa !38, !alias.scope !169
  %i.vq = load i8, ptr %i.vm, align 1, !tbaa !38, !alias.scope !169
  %i.vr = insertelement <4 x i8> poison, i8 %i.vn, i64 0
  %i.vs = insertelement <4 x i8> %i.vr, i8 %i.vo, i64 1
  %i.vt = insertelement <4 x i8> %i.vs, i8 %i.vp, i64 2
  %i.vu = insertelement <4 x i8> %i.vt, i8 %i.vq, i64 3
  %i.vv = icmp eq <4 x i8> %i.vu, zeroinitializer
  %i.vw = select <4 x i1> %i.sv, <4 x i8> zeroinitializer, <4 x i8> splat (i8 2)
  %i.vx = or disjoint <4 x i8> %i.vw, %i.si
  %i.vy = select <4 x i1> %i.ti, <4 x i8> zeroinitializer, <4 x i8> splat (i8 4)
  %i.vz = or disjoint <4 x i8> %i.vx, %i.vy
  %i.wa = select <4 x i1> %i.tv, <4 x i8> zeroinitializer, <4 x i8> splat (i8 8)
  %i.wb = or disjoint <4 x i8> %i.vz, %i.wa
  %i.wc = select <4 x i1> %i.ui, <4 x i8> zeroinitializer, <4 x i8> splat (i8 16)
  %i.wd = or disjoint <4 x i8> %i.wb, %i.wc
  %i.we = select <4 x i1> %i.uv, <4 x i8> zeroinitializer, <4 x i8> splat (i8 32)
  %i.wf = or disjoint <4 x i8> %i.wd, %i.we
  %i.wg = select <4 x i1> %i.vi, <4 x i8> zeroinitializer, <4 x i8> splat (i8 64)
  %i.wh = or <4 x i8> %i.wf, %i.wg
  %i.wi = select <4 x i1> %i.vv, <4 x i8> zeroinitializer, <4 x i8> splat (i8 -128)
  %i.wj = or <4 x i8> %i.wh, %i.wi
  store <4 x i8> %i.wj, ptr %next.gep55, align 1, !tbaa !38, !alias.scope !172, !noalias !169
  %index.next56 = add nuw i64 %index54, 4         ; 2 uses
  %i.wk = icmp eq i64 %index.next56, %n.vec53
  br i1 %i.wk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n57 = icmp eq i64 %i.aq, %n.vec53
  br i1 %cmp.n57, label %._crit_edge60.i.i, label %.preheader53.i.i.preheader

.preheader53.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.rn, %vec.epilog.middle.block ]
  %.in.i.i.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aq, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %i.ro, %vec.epilog.middle.block ]
  %.14159.i.i.ph = phi ptr [ %.040.i.i, %iter.check ], [ %.040.i.i, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.rp, %vec.epilog.middle.block ]
  br label %.preheader53.i.i

.preheader53.i.i:                                 ; preds = %.preheader53.i.i.preheader, %.preheader53.i.i
  %.3 = phi i64 [ %i.wm, %.preheader53.i.i ], [ %.3.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.in.i.i = phi i64 [ %i.wn, %.preheader53.i.i ], [ %.in.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.14159.i.i = phi ptr [ %i.wq, %.preheader53.i.i ], [ %.14159.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %i.wl = getelementptr i8, ptr %2, i64 %.3
  %i.wm = add nuw nsw i64 %.3, 8                  ; 2 uses
  %i.wn = add nsw i64 %.in.i.i, -1
  %i.wo = load <8 x i8>, ptr %i.wl, align 1, !tbaa !38
  %i.wp = icmp ne <8 x i8> %i.wo, zeroinitializer
  %i.wq = getelementptr inbounds nuw i8, ptr %.14159.i.i, i64 1 ; 2 uses
  store <8 x i1> %i.wp, ptr %.14159.i.i, align 1, !tbaa !38
  %i.wr = icmp samesign ugt i64 %.in.i.i, 1
  br i1 %i.wr, label %.preheader53.i.i, label %._crit_edge60.i.i, !llvm.loop !179

._crit_edge60.i.i:                                ; preds = %.preheader53.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %.2 = phi i64 [ %.1, %bb.f ], [ %i.rn, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %i.wm, %.preheader53.i.i ] ; 2 uses
  %.141.lcssa.i.i = phi ptr [ %.040.i.i, %bb.f ], [ %i.rp, %vec.epilog.middle.block ], [ %i.bc, %middle.block ], [ %i.wq, %.preheader53.i.i ]
  %i.ws = srem i64 %.1.i.i, 8                     ; 6 uses
  %.not45.i.i = icmp eq i64 %i.ws, 0
  br i1 %.not45.i.i, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlS5_E3$_0EEvlOT0_.exit.thread", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge60.i.i
  %i.wt = icmp sgt i64 %i.ws, 0
  br i1 %i.wt, label %.lr.ph65.i.i.preheader, label %._crit_edge66.i.i

.lr.ph65.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.ws, 1
  %i.wu = icmp eq i64 %i.ws, 1
  br i1 %i.wu, label %.lr.ph65.i.i.epil.preheader, label %.lr.ph65.i.i.preheader.new

.lr.ph65.i.i.preheader.new:                       ; preds = %.lr.ph65.i.i.preheader
  %unroll_iter = and i64 %i.ws, 9223372036854775806
  br label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %.lr.ph65.i.i, %.lr.ph65.i.i.preheader.new
  %i.wv = phi i64 [ %.2, %.lr.ph65.i.i.preheader.new ], [ %i.xb, %.lr.ph65.i.i ] ; 3 uses
  %.13763.i.i = phi i8 [ 1, %.lr.ph65.i.i.preheader.new ], [ %i.xh, %.lr.ph65.i.i ] ; 3 uses
  %.13962.i.i = phi i8 [ 0, %.lr.ph65.i.i.preheader.new ], [ %i.xg, %.lr.ph65.i.i ]
  %niter = phi i64 [ 0, %.lr.ph65.i.i.preheader.new ], [ %niter.next.1, %.lr.ph65.i.i ]
  %i.ww = getelementptr inbounds i8, ptr %2, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !38
  %.not52.i.i = icmp eq i8 %i.wx, 0
  %i.wy = select i1 %.not52.i.i, i8 0, i8 %.13763.i.i
  %i.wz = or i8 %i.wy, %.13962.i.i
  %i.xa = shl nuw i8 %.13763.i.i, 1
  %i.xb = add nsw i64 %i.wv, 2                    ; 2 uses
  %i.xc = getelementptr i8, ptr %2, i64 %i.wv
  %i.xd = getelementptr i8, ptr %i.xc, i64 1
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !38
  %.not52.i.i.1 = icmp eq i8 %i.xe, 0
  %i.xf = select i1 %.not52.i.i.1, i8 0, i8 %i.xa
  %i.xg = or i8 %i.xf, %i.wz                      ; 3 uses
  %i.xh = shl nuw i8 %.13763.i.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge66.i.i.loopexit.unr-lcssa, label %.lr.ph65.i.i, !llvm.loop !180

._crit_edge66.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph65.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66.i.i, label %.lr.ph65.i.i.epil.preheader

.lr.ph65.i.i.epil.preheader:                      ; preds = %._crit_edge66.i.i.loopexit.unr-lcssa, %.lr.ph65.i.i.preheader
end_hunk_1
begin_hunk_2_@_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_l:bb.a

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit16.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit: ; preds = %bb.b
  %i.n = icmp eq ptr %4, null
  br i1 %i.n, label %bb.c, label %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !167
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %2, i64 noundef %5, i64 noundef %3, ptr noundef %i.p, i64 noundef %i.r)
  %i.s = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %2, i64 noundef %5, i64 noundef %3)
  %i.t = sub i64 %3, %i.s
  %i.u = load <2 x i64>, ptr %i.q, align 8, !tbaa !106
  %i.v = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.w = insertelement <2 x i64> %i.v, i64 %i.t, i64 1
  %i.x = add nsw <2 x i64> %i.w, %i.u
  store <2 x i64> %i.x, ptr %i.q, align 8, !tbaa !106
  %i.y = icmp eq ptr %4, null
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i: ; preds = %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !190
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

bb.d:                                             ; preds = %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !167
  call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3, ptr noundef %i.aa, i64 noundef %i.ac)
  %i.ad = call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %4, i64 noundef %5, i64 noundef %3)
  %i.ae = sub i64 %3, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !190
  %i.ah = add nsw i64 %i.ae, %i.ag                ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !190
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !167
  %i.aj = add nsw i64 %i.ai, %3
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !167
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i: ; preds = %bb.d, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i
  %i.ak = phi i64 [ %.pre.i, %._ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit_crit_edge.i ], [ %i.ah, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !39
  %i.an = add nsw i64 %i.am, %3
  store i64 %i.an, ptr %i.al, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !144
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhll.exit.i
  store ptr null, ptr %0, align 8, !tbaa !71, !alias.scope !197
  br label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !162, !noalias !200 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !61, !noalias !200
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !200
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !200, !inline_history !166
  %i.g = add nsw i64 %i.f, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit14.thread

_ZN5arrow6StatusD2Ev.exit14.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !61, !noalias !200
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !200
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !166
  %.pr = load ptr, ptr %5, align 8, !tbaa !71     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !167  ; 2 uses
  %i.r = sdiv i64 %i.q, 8
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %i.r ; 4 uses
  %i.t = srem i64 %i.q, 8                         ; 3 uses
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.s, align 1, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38
  %i.x = and i8 %i.w, %i.u                        ; 2 uses
  %i.y = icmp sgt i64 %3, 0
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.ab = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  %.03556.i.i = phi i64 [ %3, %.lr.ph.i.i ], [ %i.ai, %bb.e ] ; 2 uses
  %.03655.i.i = phi i8 [ %i.aa, %.lr.ph.i.i ], [ %i.ah, %bb.e ] ; 2 uses
  %.03854.i.i = phi i8 [ %i.x, %.lr.ph.i.i ], [ %i.ag, %bb.e ]
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !38
  %.not51.i.i = icmp eq i8 %i.ae, 0
  %i.af = select i1 %.not51.i.i, i8 0, i8 %.03655.i.i
  %i.ag = or i8 %i.af, %.03854.i.i                ; 2 uses
  %i.ah = shl i8 %.03655.i.i, 1                   ; 2 uses
  %i.ai = add nsw i64 %.03556.i.i, -1             ; 2 uses
  %i.aj = icmp ne i8 %i.ah, 0
  %i.ak = icmp samesign ugt i64 %.03556.i.i, 1
  %i.al = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %i.al, label %bb.e, label %._crit_edge.i.i, !llvm.loop !203

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %.017 = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.e ]
  %.038.lcssa.i.i = phi i8 [ %i.x, %bb.d ], [ %i.ag, %bb.e ]
  %.035.lcssa.i.i = phi i64 [ %3, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %.038.lcssa.i.i, ptr %i.s, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %.017, %._crit_edge.i.i ] ; 9 uses
  %.040.i.i = phi ptr [ %i.s, %bb.c ], [ %i.am, %._crit_edge.i.i ] ; 9 uses
  %.1.i.i = phi i64 [ %3, %bb.c ], [ %.035.lcssa.i.i, %._crit_edge.i.i ] ; 6 uses
  %i.an = icmp sgt i64 %.1.i.i, 7
  br i1 %i.an, label %iter.check, label %._crit_edge60.i.i

iter.check:                                       ; preds = %bb.f
  %i.ao = lshr i64 %.1.i.i, 3                     ; 9 uses
  %i.ap = call i64 @llvm.umax.i64(i64 %i.ao, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %.1.i.i, 32
  br i1 %min.iters.check, label %.preheader53.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = icmp ne i64 %i.ao, 0                    ; 2 uses
  %umin.neg = sext i1 %i.aq to i64
  %i.ar = getelementptr i8, ptr %.040.i.i, i64 %i.ao
  %i.as = getelementptr i8, ptr %i.ar, i64 1
  %scevgep = getelementptr i8, ptr %i.as, i64 %umin.neg
  %scevgep43 = getelementptr i8, ptr %2, i64 %.1
  %i.at = and i64 %.1.i.i, 9223372036854775800
  %i.au = add i64 %.1, %i.at                      ; 2 uses
  %i.av = add i64 %i.au, 8
  %i.aw = select i1 %i.aq, i64 %i.au, i64 %i.av
  %scevgep44 = getelementptr i8, ptr %2, i64 %i.aw
  %bound0 = icmp ult ptr %.040.i.i, %scevgep44
  %bound1 = icmp ult ptr %scevgep43, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader53.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i64 %.1.i.i, 128
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ap, 12
  %n.vec = and i64 %i.ap, 1152921504606846960     ; 6 uses
  %i.ax = shl nuw nsw i64 %n.vec, 3
  %i.ay = add i64 %.1, %i.ax                      ; 2 uses
  %i.az = sub nsw i64 %i.ao, %n.vec
  %i.ba = getelementptr i8, ptr %.040.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = shl i64 %index, 3
  %i.bc = add i64 %.1, %i.bb                      ; 16 uses
  %next.gep = getelementptr i8, ptr %.040.i.i, i64 %index
  %i.bd = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.be = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  %i.bk = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 32
  %i.bm = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 40
  %i.bo = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %i.bq = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 56
  %i.bs = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 64
  %i.bu = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 72
  %i.bw = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 80
  %i.by = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 88
  %i.ca = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 96
  %i.cc = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 104
  %i.ce = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 112
  %i.cg = getelementptr i8, ptr %2, i64 %i.bc     ; 8 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 120
  %i.ci = load i8, ptr %i.bd, align 1, !tbaa !38, !alias.scope !204
  %i.cj = load i8, ptr %i.bf, align 1, !tbaa !38, !alias.scope !204
  %i.ck = load i8, ptr %i.bh, align 1, !tbaa !38, !alias.scope !204
  %i.cl = load i8, ptr %i.bj, align 1, !tbaa !38, !alias.scope !204
  %i.cm = load i8, ptr %i.bl, align 1, !tbaa !38, !alias.scope !204
  %i.cn = load i8, ptr %i.bn, align 1, !tbaa !38, !alias.scope !204
  %i.co = load i8, ptr %i.bp, align 1, !tbaa !38, !alias.scope !204
  %i.cp = load i8, ptr %i.br, align 1, !tbaa !38, !alias.scope !204
  %i.cq = load i8, ptr %i.bt, align 1, !tbaa !38, !alias.scope !204
  %i.cr = load i8, ptr %i.bv, align 1, !tbaa !38, !alias.scope !204
  %i.cs = load i8, ptr %i.bx, align 1, !tbaa !38, !alias.scope !204
  %i.ct = load i8, ptr %i.bz, align 1, !tbaa !38, !alias.scope !204
  %i.cu = load i8, ptr %i.cb, align 1, !tbaa !38, !alias.scope !204
  %i.cv = load i8, ptr %i.cd, align 1, !tbaa !38, !alias.scope !204
  %i.cw = load i8, ptr %i.cf, align 1, !tbaa !38, !alias.scope !204
  %i.cx = load i8, ptr %i.ch, align 1, !tbaa !38, !alias.scope !204
  %i.cy = insertelement <16 x i8> poison, i8 %i.ci, i64 0
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 1
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 2
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 3
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 4
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 5
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 6
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 7
  %i.dg = insertelement <16 x i8> %i.df, i8 %i.cq, i64 8
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 9
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 10
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 11
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 12
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 13
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 14
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 15
  %i.do = icmp ne <16 x i8> %i.dn, zeroinitializer
  %i.dp = zext <16 x i1> %i.do to <16 x i8>
  %i.dq = getelementptr i8, ptr %i.bd, i64 1
  %i.dr = getelementptr i8, ptr %i.be, i64 9
  %i.ds = getelementptr i8, ptr %i.bg, i64 17
  %i.dt = getelementptr i8, ptr %i.bi, i64 25
  %i.du = getelementptr i8, ptr %i.bk, i64 33
  %i.dv = getelementptr i8, ptr %i.bm, i64 41
  %i.dw = getelementptr i8, ptr %i.bo, i64 49
  %i.dx = getelementptr i8, ptr %i.bq, i64 57
  %i.dy = getelementptr i8, ptr %i.bs, i64 65
  %i.dz = getelementptr i8, ptr %i.bu, i64 73
  %i.ea = getelementptr i8, ptr %i.bw, i64 81
  %i.eb = getelementptr i8, ptr %i.by, i64 89
  %i.ec = getelementptr i8, ptr %i.ca, i64 97
  %i.ed = getelementptr i8, ptr %i.cc, i64 105
  %i.ee = getelementptr i8, ptr %i.ce, i64 113
  %i.ef = getelementptr i8, ptr %i.cg, i64 121
  %i.eg = load i8, ptr %i.dq, align 1, !tbaa !38, !alias.scope !204
  %i.eh = load i8, ptr %i.dr, align 1, !tbaa !38, !alias.scope !204
  %i.ei = load i8, ptr %i.ds, align 1, !tbaa !38, !alias.scope !204
  %i.ej = load i8, ptr %i.dt, align 1, !tbaa !38, !alias.scope !204
  %i.ek = load i8, ptr %i.du, align 1, !tbaa !38, !alias.scope !204
  %i.el = load i8, ptr %i.dv, align 1, !tbaa !38, !alias.scope !204
  %i.em = load i8, ptr %i.dw, align 1, !tbaa !38, !alias.scope !204
  %i.en = load i8, ptr %i.dx, align 1, !tbaa !38, !alias.scope !204
  %i.eo = load i8, ptr %i.dy, align 1, !tbaa !38, !alias.scope !204
  %i.ep = load i8, ptr %i.dz, align 1, !tbaa !38, !alias.scope !204
  %i.eq = load i8, ptr %i.ea, align 1, !tbaa !38, !alias.scope !204
  %i.er = load i8, ptr %i.eb, align 1, !tbaa !38, !alias.scope !204
  %i.es = load i8, ptr %i.ec, align 1, !tbaa !38, !alias.scope !204
  %i.et = load i8, ptr %i.ed, align 1, !tbaa !38, !alias.scope !204
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !38, !alias.scope !204
  %i.ev = load i8, ptr %i.ef, align 1, !tbaa !38, !alias.scope !204
  %i.ew = insertelement <16 x i8> poison, i8 %i.eg, i64 0
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 1
  %i.ey = insertelement <16 x i8> %i.ex, i8 %i.ei, i64 2
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 3
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 4
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 5
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 6
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 7
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 8
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 9
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 10
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 11
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 12
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 13
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 14
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 15
  %i.fm = icmp eq <16 x i8> %i.fl, zeroinitializer
  %i.fn = getelementptr i8, ptr %i.bd, i64 2
  %i.fo = getelementptr i8, ptr %i.be, i64 10
  %i.fp = getelementptr i8, ptr %i.bg, i64 18
  %i.fq = getelementptr i8, ptr %i.bi, i64 26
  %i.fr = getelementptr i8, ptr %i.bk, i64 34
  %i.fs = getelementptr i8, ptr %i.bm, i64 42
  %i.ft = getelementptr i8, ptr %i.bo, i64 50
  %i.fu = getelementptr i8, ptr %i.bq, i64 58
  %i.fv = getelementptr i8, ptr %i.bs, i64 66
  %i.fw = getelementptr i8, ptr %i.bu, i64 74
  %i.fx = getelementptr i8, ptr %i.bw, i64 82
  %i.fy = getelementptr i8, ptr %i.by, i64 90
  %i.fz = getelementptr i8, ptr %i.ca, i64 98
  %i.ga = getelementptr i8, ptr %i.cc, i64 106
  %i.gb = getelementptr i8, ptr %i.ce, i64 114
  %i.gc = getelementptr i8, ptr %i.cg, i64 122
  %i.gd = load i8, ptr %i.fn, align 1, !tbaa !38, !alias.scope !204
  %i.ge = load i8, ptr %i.fo, align 1, !tbaa !38, !alias.scope !204
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !38, !alias.scope !204
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !38, !alias.scope !204
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !38, !alias.scope !204
  %i.gi = load i8, ptr %i.fs, align 1, !tbaa !38, !alias.scope !204
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !38, !alias.scope !204
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !38, !alias.scope !204
  %i.gl = load i8, ptr %i.fv, align 1, !tbaa !38, !alias.scope !204
  %i.gm = load i8, ptr %i.fw, align 1, !tbaa !38, !alias.scope !204
  %i.gn = load i8, ptr %i.fx, align 1, !tbaa !38, !alias.scope !204
  %i.go = load i8, ptr %i.fy, align 1, !tbaa !38, !alias.scope !204
  %i.gp = load i8, ptr %i.fz, align 1, !tbaa !38, !alias.scope !204
  %i.gq = load i8, ptr %i.ga, align 1, !tbaa !38, !alias.scope !204
  %i.gr = load i8, ptr %i.gb, align 1, !tbaa !38, !alias.scope !204
  %i.gs = load i8, ptr %i.gc, align 1, !tbaa !38, !alias.scope !204
  %i.gt = insertelement <16 x i8> poison, i8 %i.gd, i64 0
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 1
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 2
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 3
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 4
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 5
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 6
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 7
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 8
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 9
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 10
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 11
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 12
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 13
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 14
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 15
  %i.hj = icmp eq <16 x i8> %i.hi, zeroinitializer
  %i.hk = getelementptr i8, ptr %i.bd, i64 3
  %i.hl = getelementptr i8, ptr %i.be, i64 11
  %i.hm = getelementptr i8, ptr %i.bg, i64 19
  %i.hn = getelementptr i8, ptr %i.bi, i64 27
  %i.ho = getelementptr i8, ptr %i.bk, i64 35
  %i.hp = getelementptr i8, ptr %i.bm, i64 43
  %i.hq = getelementptr i8, ptr %i.bo, i64 51
  %i.hr = getelementptr i8, ptr %i.bq, i64 59
  %i.hs = getelementptr i8, ptr %i.bs, i64 67
  %i.ht = getelementptr i8, ptr %i.bu, i64 75
  %i.hu = getelementptr i8, ptr %i.bw, i64 83
  %i.hv = getelementptr i8, ptr %i.by, i64 91
  %i.hw = getelementptr i8, ptr %i.ca, i64 99
  %i.hx = getelementptr i8, ptr %i.cc, i64 107
  %i.hy = getelementptr i8, ptr %i.ce, i64 115
  %i.hz = getelementptr i8, ptr %i.cg, i64 123
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !38, !alias.scope !204
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !38, !alias.scope !204
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !38, !alias.scope !204
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !38, !alias.scope !204
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !38, !alias.scope !204
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !38, !alias.scope !204
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !38, !alias.scope !204
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !38, !alias.scope !204
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !38, !alias.scope !204
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !38, !alias.scope !204
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !38, !alias.scope !204
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !38, !alias.scope !204
  %i.im = load i8, ptr %i.hw, align 1, !tbaa !38, !alias.scope !204
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !38, !alias.scope !204
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !38, !alias.scope !204
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !38, !alias.scope !204
  %i.iq = insertelement <16 x i8> poison, i8 %i.ia, i64 0
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 1
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 2
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 3
end_hunk_2
begin_hunk_3_@_ZN5arrow14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEE:bb.a
  %i.kp = insertelement <16 x i8> %i.ko, i8 %i.jz, i64 2
  %i.kq = insertelement <16 x i8> %i.kp, i8 %i.ka, i64 3
  %i.kr = insertelement <16 x i8> %i.kq, i8 %i.kb, i64 4
  %i.ks = insertelement <16 x i8> %i.kr, i8 %i.kc, i64 5
  %i.kt = insertelement <16 x i8> %i.ks, i8 %i.kd, i64 6
  %i.ku = insertelement <16 x i8> %i.kt, i8 %i.ke, i64 7
  %i.kv = insertelement <16 x i8> %i.ku, i8 %i.kf, i64 8
  %i.kw = insertelement <16 x i8> %i.kv, i8 %i.kg, i64 9
  %i.kx = insertelement <16 x i8> %i.kw, i8 %i.kh, i64 10
  %i.ky = insertelement <16 x i8> %i.kx, i8 %i.ki, i64 11
  %i.kz = insertelement <16 x i8> %i.ky, i8 %i.kj, i64 12
  %i.la = insertelement <16 x i8> %i.kz, i8 %i.kk, i64 13
  %i.lb = insertelement <16 x i8> %i.la, i8 %i.kl, i64 14
  %i.lc = insertelement <16 x i8> %i.lb, i8 %i.km, i64 15
  %i.ld = icmp eq <16 x i8> %i.lc, zeroinitializer
  %i.le = getelementptr i8, ptr %i.bd, i64 5
  %i.lf = getelementptr i8, ptr %i.be, i64 13
  %i.lg = getelementptr i8, ptr %i.bg, i64 21
  %i.lh = getelementptr i8, ptr %i.bi, i64 29
  %i.li = getelementptr i8, ptr %i.bk, i64 37
  %i.lj = getelementptr i8, ptr %i.bm, i64 45
  %i.lk = getelementptr i8, ptr %i.bo, i64 53
  %i.ll = getelementptr i8, ptr %i.bq, i64 61
  %i.lm = getelementptr i8, ptr %i.bs, i64 69
  %i.ln = getelementptr i8, ptr %i.bu, i64 77
  %i.lo = getelementptr i8, ptr %i.bw, i64 85
  %i.lp = getelementptr i8, ptr %i.by, i64 93
  %i.lq = getelementptr i8, ptr %i.ca, i64 101
  %i.lr = getelementptr i8, ptr %i.cc, i64 109
  %i.ls = getelementptr i8, ptr %i.ce, i64 117
  %i.lt = getelementptr i8, ptr %i.cg, i64 125
  %i.lu = load i8, ptr %i.le, align 1, !tbaa !38, !alias.scope !204
  %i.lv = load i8, ptr %i.lf, align 1, !tbaa !38, !alias.scope !204
  %i.lw = load i8, ptr %i.lg, align 1, !tbaa !38, !alias.scope !204
  %i.lx = load i8, ptr %i.lh, align 1, !tbaa !38, !alias.scope !204
  %i.ly = load i8, ptr %i.li, align 1, !tbaa !38, !alias.scope !204
  %i.lz = load i8, ptr %i.lj, align 1, !tbaa !38, !alias.scope !204
  %i.ma = load i8, ptr %i.lk, align 1, !tbaa !38, !alias.scope !204
  %i.mb = load i8, ptr %i.ll, align 1, !tbaa !38, !alias.scope !204
  %i.mc = load i8, ptr %i.lm, align 1, !tbaa !38, !alias.scope !204
  %i.md = load i8, ptr %i.ln, align 1, !tbaa !38, !alias.scope !204
  %i.me = load i8, ptr %i.lo, align 1, !tbaa !38, !alias.scope !204
  %i.mf = load i8, ptr %i.lp, align 1, !tbaa !38, !alias.scope !204
  %i.mg = load i8, ptr %i.lq, align 1, !tbaa !38, !alias.scope !204
  %i.mh = load i8, ptr %i.lr, align 1, !tbaa !38, !alias.scope !204
  %i.mi = load i8, ptr %i.ls, align 1, !tbaa !38, !alias.scope !204
  %i.mj = load i8, ptr %i.lt, align 1, !tbaa !38, !alias.scope !204
  %i.mk = insertelement <16 x i8> poison, i8 %i.lu, i64 0
  %i.ml = insertelement <16 x i8> %i.mk, i8 %i.lv, i64 1
  %i.mm = insertelement <16 x i8> %i.ml, i8 %i.lw, i64 2
  %i.mn = insertelement <16 x i8> %i.mm, i8 %i.lx, i64 3
  %i.mo = insertelement <16 x i8> %i.mn, i8 %i.ly, i64 4
  %i.mp = insertelement <16 x i8> %i.mo, i8 %i.lz, i64 5
  %i.mq = insertelement <16 x i8> %i.mp, i8 %i.ma, i64 6
  %i.mr = insertelement <16 x i8> %i.mq, i8 %i.mb, i64 7
  %i.ms = insertelement <16 x i8> %i.mr, i8 %i.mc, i64 8
  %i.mt = insertelement <16 x i8> %i.ms, i8 %i.md, i64 9
  %i.mu = insertelement <16 x i8> %i.mt, i8 %i.me, i64 10
  %i.mv = insertelement <16 x i8> %i.mu, i8 %i.mf, i64 11
  %i.mw = insertelement <16 x i8> %i.mv, i8 %i.mg, i64 12
  %i.mx = insertelement <16 x i8> %i.mw, i8 %i.mh, i64 13
  %i.my = insertelement <16 x i8> %i.mx, i8 %i.mi, i64 14
  %i.mz = insertelement <16 x i8> %i.my, i8 %i.mj, i64 15
  %i.na = icmp eq <16 x i8> %i.mz, zeroinitializer
  %i.nb = getelementptr i8, ptr %i.bd, i64 6
  %i.nc = getelementptr i8, ptr %i.be, i64 14
  %i.nd = getelementptr i8, ptr %i.bg, i64 22
  %i.ne = getelementptr i8, ptr %i.bi, i64 30
  %i.nf = getelementptr i8, ptr %i.bk, i64 38
  %i.ng = getelementptr i8, ptr %i.bm, i64 46
  %i.nh = getelementptr i8, ptr %i.bo, i64 54
  %i.ni = getelementptr i8, ptr %i.bq, i64 62
  %i.nj = getelementptr i8, ptr %i.bs, i64 70
  %i.nk = getelementptr i8, ptr %i.bu, i64 78
  %i.nl = getelementptr i8, ptr %i.bw, i64 86
  %i.nm = getelementptr i8, ptr %i.by, i64 94
  %i.nn = getelementptr i8, ptr %i.ca, i64 102
  %i.no = getelementptr i8, ptr %i.cc, i64 110
  %i.np = getelementptr i8, ptr %i.ce, i64 118
  %i.nq = getelementptr i8, ptr %i.cg, i64 126
  %i.nr = load i8, ptr %i.nb, align 1, !tbaa !38, !alias.scope !204
  %i.ns = load i8, ptr %i.nc, align 1, !tbaa !38, !alias.scope !204
  %i.nt = load i8, ptr %i.nd, align 1, !tbaa !38, !alias.scope !204
  %i.nu = load i8, ptr %i.ne, align 1, !tbaa !38, !alias.scope !204
  %i.nv = load i8, ptr %i.nf, align 1, !tbaa !38, !alias.scope !204
  %i.nw = load i8, ptr %i.ng, align 1, !tbaa !38, !alias.scope !204
  %i.nx = load i8, ptr %i.nh, align 1, !tbaa !38, !alias.scope !204
  %i.ny = load i8, ptr %i.ni, align 1, !tbaa !38, !alias.scope !204
  %i.nz = load i8, ptr %i.nj, align 1, !tbaa !38, !alias.scope !204
  %i.oa = load i8, ptr %i.nk, align 1, !tbaa !38, !alias.scope !204
  %i.ob = load i8, ptr %i.nl, align 1, !tbaa !38, !alias.scope !204
  %i.oc = load i8, ptr %i.nm, align 1, !tbaa !38, !alias.scope !204
  %i.od = load i8, ptr %i.nn, align 1, !tbaa !38, !alias.scope !204
  %i.oe = load i8, ptr %i.no, align 1, !tbaa !38, !alias.scope !204
  %i.of = load i8, ptr %i.np, align 1, !tbaa !38, !alias.scope !204
  %i.og = load i8, ptr %i.nq, align 1, !tbaa !38, !alias.scope !204
  %i.oh = insertelement <16 x i8> poison, i8 %i.nr, i64 0
  %i.oi = insertelement <16 x i8> %i.oh, i8 %i.ns, i64 1
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 2
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 3
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 4
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 5
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 6
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 7
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 8
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 9
  %i.or = insertelement <16 x i8> %i.oq, i8 %i.ob, i64 10
  %i.os = insertelement <16 x i8> %i.or, i8 %i.oc, i64 11
  %i.ot = insertelement <16 x i8> %i.os, i8 %i.od, i64 12
  %i.ou = insertelement <16 x i8> %i.ot, i8 %i.oe, i64 13
  %i.ov = insertelement <16 x i8> %i.ou, i8 %i.of, i64 14
  %i.ow = insertelement <16 x i8> %i.ov, i8 %i.og, i64 15
  %i.ox = icmp eq <16 x i8> %i.ow, zeroinitializer
  %i.oy = getelementptr i8, ptr %i.bd, i64 7
  %i.oz = getelementptr i8, ptr %i.be, i64 15
  %i.pa = getelementptr i8, ptr %i.bg, i64 23
  %i.pb = getelementptr i8, ptr %i.bi, i64 31
  %i.pc = getelementptr i8, ptr %i.bk, i64 39
  %i.pd = getelementptr i8, ptr %i.bm, i64 47
  %i.pe = getelementptr i8, ptr %i.bo, i64 55
  %i.pf = getelementptr i8, ptr %i.bq, i64 63
  %i.pg = getelementptr i8, ptr %i.bs, i64 71
  %i.ph = getelementptr i8, ptr %i.bu, i64 79
  %i.pi = getelementptr i8, ptr %i.bw, i64 87
  %i.pj = getelementptr i8, ptr %i.by, i64 95
  %i.pk = getelementptr i8, ptr %i.ca, i64 103
  %i.pl = getelementptr i8, ptr %i.cc, i64 111
  %i.pm = getelementptr i8, ptr %i.ce, i64 119
  %i.pn = getelementptr i8, ptr %i.cg, i64 127
  %i.po = load i8, ptr %i.oy, align 1, !tbaa !38, !alias.scope !204
  %i.pp = load i8, ptr %i.oz, align 1, !tbaa !38, !alias.scope !204
  %i.pq = load i8, ptr %i.pa, align 1, !tbaa !38, !alias.scope !204
  %i.pr = load i8, ptr %i.pb, align 1, !tbaa !38, !alias.scope !204
  %i.ps = load i8, ptr %i.pc, align 1, !tbaa !38, !alias.scope !204
  %i.pt = load i8, ptr %i.pd, align 1, !tbaa !38, !alias.scope !204
  %i.pu = load i8, ptr %i.pe, align 1, !tbaa !38, !alias.scope !204
  %i.pv = load i8, ptr %i.pf, align 1, !tbaa !38, !alias.scope !204
  %i.pw = load i8, ptr %i.pg, align 1, !tbaa !38, !alias.scope !204
  %i.px = load i8, ptr %i.ph, align 1, !tbaa !38, !alias.scope !204
  %i.py = load i8, ptr %i.pi, align 1, !tbaa !38, !alias.scope !204
  %i.pz = load i8, ptr %i.pj, align 1, !tbaa !38, !alias.scope !204
  %i.qa = load i8, ptr %i.pk, align 1, !tbaa !38, !alias.scope !204
  %i.qb = load i8, ptr %i.pl, align 1, !tbaa !38, !alias.scope !204
  %i.qc = load i8, ptr %i.pm, align 1, !tbaa !38, !alias.scope !204
  %i.qd = load i8, ptr %i.pn, align 1, !tbaa !38, !alias.scope !204
  %i.qe = insertelement <16 x i8> poison, i8 %i.po, i64 0
  %i.qf = insertelement <16 x i8> %i.qe, i8 %i.pp, i64 1
  %i.qg = insertelement <16 x i8> %i.qf, i8 %i.pq, i64 2
  %i.qh = insertelement <16 x i8> %i.qg, i8 %i.pr, i64 3
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 4
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 5
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 6
  %i.ql = insertelement <16 x i8> %i.qk, i8 %i.pv, i64 7
  %i.qm = insertelement <16 x i8> %i.ql, i8 %i.pw, i64 8
  %i.qn = insertelement <16 x i8> %i.qm, i8 %i.px, i64 9
  %i.qo = insertelement <16 x i8> %i.qn, i8 %i.py, i64 10
  %i.qp = insertelement <16 x i8> %i.qo, i8 %i.pz, i64 11
  %i.qq = insertelement <16 x i8> %i.qp, i8 %i.qa, i64 12
  %i.qr = insertelement <16 x i8> %i.qq, i8 %i.qb, i64 13
  %i.qs = insertelement <16 x i8> %i.qr, i8 %i.qc, i64 14
  %i.qt = insertelement <16 x i8> %i.qs, i8 %i.qd, i64 15
  %i.qu = icmp eq <16 x i8> %i.qt, zeroinitializer
  %i.qv = select <16 x i1> %i.fm, <16 x i8> zeroinitializer, <16 x i8> splat (i8 2)
  %i.qw = or disjoint <16 x i8> %i.qv, %i.dp
  %i.qx = select <16 x i1> %i.hj, <16 x i8> zeroinitializer, <16 x i8> splat (i8 4)
  %i.qy = or disjoint <16 x i8> %i.qw, %i.qx
  %i.qz = select <16 x i1> %i.jg, <16 x i8> zeroinitializer, <16 x i8> splat (i8 8)
  %i.ra = or disjoint <16 x i8> %i.qy, %i.qz
  %i.rb = select <16 x i1> %i.ld, <16 x i8> zeroinitializer, <16 x i8> splat (i8 16)
  %i.rc = or disjoint <16 x i8> %i.ra, %i.rb
  %i.rd = select <16 x i1> %i.na, <16 x i8> zeroinitializer, <16 x i8> splat (i8 32)
  %i.re = or disjoint <16 x i8> %i.rc, %i.rd
  %i.rf = select <16 x i1> %i.ox, <16 x i8> zeroinitializer, <16 x i8> splat (i8 64)
  %i.rg = or <16 x i8> %i.re, %i.rf
  %i.rh = select <16 x i1> %i.qu, <16 x i8> zeroinitializer, <16 x i8> splat (i8 -128)
  %i.ri = or <16 x i8> %i.rg, %i.rh
  store <16 x i8> %i.ri, ptr %next.gep, align 1, !tbaa !38, !alias.scope !207, !noalias !204
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rj = icmp eq i64 %index.next, %n.vec
  br i1 %i.rj, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge60.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader53.i.i.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.ap, 1152921504606846972   ; 5 uses
  %i.rk = shl nuw nsw i64 %n.vec50, 3
  %i.rl = add i64 %.1, %i.rk                      ; 2 uses
  %i.rm = sub nsw i64 %i.ao, %n.vec50
  %i.rn = getelementptr i8, ptr %.040.i.i, i64 %n.vec50 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %i.ro = shl i64 %index51, 3
  %i.rp = add i64 %.1, %i.ro                      ; 4 uses
  %next.gep52 = getelementptr i8, ptr %.040.i.i, i64 %index51
  %i.rq = getelementptr i8, ptr %2, i64 %i.rp     ; 8 uses
  %i.rr = getelementptr i8, ptr %2, i64 %i.rp     ; 8 uses
  %i.rs = getelementptr i8, ptr %i.rr, i64 8
  %i.rt = getelementptr i8, ptr %2, i64 %i.rp     ; 8 uses
  %i.ru = getelementptr i8, ptr %i.rt, i64 16
  %i.rv = getelementptr i8, ptr %2, i64 %i.rp     ; 8 uses
  %i.rw = getelementptr i8, ptr %i.rv, i64 24
  %i.rx = load i8, ptr %i.rq, align 1, !tbaa !38, !alias.scope !204
  %i.ry = load i8, ptr %i.rs, align 1, !tbaa !38, !alias.scope !204
  %i.rz = load i8, ptr %i.ru, align 1, !tbaa !38, !alias.scope !204
  %i.sa = load i8, ptr %i.rw, align 1, !tbaa !38, !alias.scope !204
  %i.sb = insertelement <4 x i8> poison, i8 %i.rx, i64 0
  %i.sc = insertelement <4 x i8> %i.sb, i8 %i.ry, i64 1
  %i.sd = insertelement <4 x i8> %i.sc, i8 %i.rz, i64 2
  %i.se = insertelement <4 x i8> %i.sd, i8 %i.sa, i64 3
  %i.sf = icmp ne <4 x i8> %i.se, zeroinitializer
  %i.sg = zext <4 x i1> %i.sf to <4 x i8>
  %i.sh = getelementptr i8, ptr %i.rq, i64 1
  %i.si = getelementptr i8, ptr %i.rr, i64 9
  %i.sj = getelementptr i8, ptr %i.rt, i64 17
  %i.sk = getelementptr i8, ptr %i.rv, i64 25
  %i.sl = load i8, ptr %i.sh, align 1, !tbaa !38, !alias.scope !204
  %i.sm = load i8, ptr %i.si, align 1, !tbaa !38, !alias.scope !204
  %i.sn = load i8, ptr %i.sj, align 1, !tbaa !38, !alias.scope !204
  %i.so = load i8, ptr %i.sk, align 1, !tbaa !38, !alias.scope !204
  %i.sp = insertelement <4 x i8> poison, i8 %i.sl, i64 0
  %i.sq = insertelement <4 x i8> %i.sp, i8 %i.sm, i64 1
  %i.sr = insertelement <4 x i8> %i.sq, i8 %i.sn, i64 2
  %i.ss = insertelement <4 x i8> %i.sr, i8 %i.so, i64 3
  %i.st = icmp eq <4 x i8> %i.ss, zeroinitializer
  %i.su = getelementptr i8, ptr %i.rq, i64 2
  %i.sv = getelementptr i8, ptr %i.rr, i64 10
  %i.sw = getelementptr i8, ptr %i.rt, i64 18
  %i.sx = getelementptr i8, ptr %i.rv, i64 26
  %i.sy = load i8, ptr %i.su, align 1, !tbaa !38, !alias.scope !204
  %i.sz = load i8, ptr %i.sv, align 1, !tbaa !38, !alias.scope !204
  %i.ta = load i8, ptr %i.sw, align 1, !tbaa !38, !alias.scope !204
  %i.tb = load i8, ptr %i.sx, align 1, !tbaa !38, !alias.scope !204
  %i.tc = insertelement <4 x i8> poison, i8 %i.sy, i64 0
  %i.td = insertelement <4 x i8> %i.tc, i8 %i.sz, i64 1
  %i.te = insertelement <4 x i8> %i.td, i8 %i.ta, i64 2
  %i.tf = insertelement <4 x i8> %i.te, i8 %i.tb, i64 3
  %i.tg = icmp eq <4 x i8> %i.tf, zeroinitializer
  %i.th = getelementptr i8, ptr %i.rq, i64 3
  %i.ti = getelementptr i8, ptr %i.rr, i64 11
  %i.tj = getelementptr i8, ptr %i.rt, i64 19
  %i.tk = getelementptr i8, ptr %i.rv, i64 27
  %i.tl = load i8, ptr %i.th, align 1, !tbaa !38, !alias.scope !204
  %i.tm = load i8, ptr %i.ti, align 1, !tbaa !38, !alias.scope !204
  %i.tn = load i8, ptr %i.tj, align 1, !tbaa !38, !alias.scope !204
  %i.to = load i8, ptr %i.tk, align 1, !tbaa !38, !alias.scope !204
  %i.tp = insertelement <4 x i8> poison, i8 %i.tl, i64 0
  %i.tq = insertelement <4 x i8> %i.tp, i8 %i.tm, i64 1
  %i.tr = insertelement <4 x i8> %i.tq, i8 %i.tn, i64 2
  %i.ts = insertelement <4 x i8> %i.tr, i8 %i.to, i64 3
  %i.tt = icmp eq <4 x i8> %i.ts, zeroinitializer
  %i.tu = getelementptr i8, ptr %i.rq, i64 4
  %i.tv = getelementptr i8, ptr %i.rr, i64 12
  %i.tw = getelementptr i8, ptr %i.rt, i64 20
  %i.tx = getelementptr i8, ptr %i.rv, i64 28
  %i.ty = load i8, ptr %i.tu, align 1, !tbaa !38, !alias.scope !204
  %i.tz = load i8, ptr %i.tv, align 1, !tbaa !38, !alias.scope !204
  %i.ua = load i8, ptr %i.tw, align 1, !tbaa !38, !alias.scope !204
  %i.ub = load i8, ptr %i.tx, align 1, !tbaa !38, !alias.scope !204
  %i.uc = insertelement <4 x i8> poison, i8 %i.ty, i64 0
  %i.ud = insertelement <4 x i8> %i.uc, i8 %i.tz, i64 1
  %i.ue = insertelement <4 x i8> %i.ud, i8 %i.ua, i64 2
  %i.uf = insertelement <4 x i8> %i.ue, i8 %i.ub, i64 3
  %i.ug = icmp eq <4 x i8> %i.uf, zeroinitializer
  %i.uh = getelementptr i8, ptr %i.rq, i64 5
  %i.ui = getelementptr i8, ptr %i.rr, i64 13
  %i.uj = getelementptr i8, ptr %i.rt, i64 21
  %i.uk = getelementptr i8, ptr %i.rv, i64 29
  %i.ul = load i8, ptr %i.uh, align 1, !tbaa !38, !alias.scope !204
  %i.um = load i8, ptr %i.ui, align 1, !tbaa !38, !alias.scope !204
  %i.un = load i8, ptr %i.uj, align 1, !tbaa !38, !alias.scope !204
  %i.uo = load i8, ptr %i.uk, align 1, !tbaa !38, !alias.scope !204
  %i.up = insertelement <4 x i8> poison, i8 %i.ul, i64 0
  %i.uq = insertelement <4 x i8> %i.up, i8 %i.um, i64 1
  %i.ur = insertelement <4 x i8> %i.uq, i8 %i.un, i64 2
  %i.us = insertelement <4 x i8> %i.ur, i8 %i.uo, i64 3
  %i.ut = icmp eq <4 x i8> %i.us, zeroinitializer
  %i.uu = getelementptr i8, ptr %i.rq, i64 6
  %i.uv = getelementptr i8, ptr %i.rr, i64 14
  %i.uw = getelementptr i8, ptr %i.rt, i64 22
  %i.ux = getelementptr i8, ptr %i.rv, i64 30
  %i.uy = load i8, ptr %i.uu, align 1, !tbaa !38, !alias.scope !204
  %i.uz = load i8, ptr %i.uv, align 1, !tbaa !38, !alias.scope !204
  %i.va = load i8, ptr %i.uw, align 1, !tbaa !38, !alias.scope !204
  %i.vb = load i8, ptr %i.ux, align 1, !tbaa !38, !alias.scope !204
  %i.vc = insertelement <4 x i8> poison, i8 %i.uy, i64 0
  %i.vd = insertelement <4 x i8> %i.vc, i8 %i.uz, i64 1
  %i.ve = insertelement <4 x i8> %i.vd, i8 %i.va, i64 2
  %i.vf = insertelement <4 x i8> %i.ve, i8 %i.vb, i64 3
  %i.vg = icmp eq <4 x i8> %i.vf, zeroinitializer
  %i.vh = getelementptr i8, ptr %i.rq, i64 7
  %i.vi = getelementptr i8, ptr %i.rr, i64 15
  %i.vj = getelementptr i8, ptr %i.rt, i64 23
  %i.vk = getelementptr i8, ptr %i.rv, i64 31
  %i.vl = load i8, ptr %i.vh, align 1, !tbaa !38, !alias.scope !204
  %i.vm = load i8, ptr %i.vi, align 1, !tbaa !38, !alias.scope !204
  %i.vn = load i8, ptr %i.vj, align 1, !tbaa !38, !alias.scope !204
  %i.vo = load i8, ptr %i.vk, align 1, !tbaa !38, !alias.scope !204
  %i.vp = insertelement <4 x i8> poison, i8 %i.vl, i64 0
  %i.vq = insertelement <4 x i8> %i.vp, i8 %i.vm, i64 1
  %i.vr = insertelement <4 x i8> %i.vq, i8 %i.vn, i64 2
  %i.vs = insertelement <4 x i8> %i.vr, i8 %i.vo, i64 3
  %i.vt = icmp eq <4 x i8> %i.vs, zeroinitializer
  %i.vu = select <4 x i1> %i.st, <4 x i8> zeroinitializer, <4 x i8> splat (i8 2)
  %i.vv = or disjoint <4 x i8> %i.vu, %i.sg
  %i.vw = select <4 x i1> %i.tg, <4 x i8> zeroinitializer, <4 x i8> splat (i8 4)
  %i.vx = or disjoint <4 x i8> %i.vv, %i.vw
  %i.vy = select <4 x i1> %i.tt, <4 x i8> zeroinitializer, <4 x i8> splat (i8 8)
  %i.vz = or disjoint <4 x i8> %i.vx, %i.vy
  %i.wa = select <4 x i1> %i.ug, <4 x i8> zeroinitializer, <4 x i8> splat (i8 16)
  %i.wb = or disjoint <4 x i8> %i.vz, %i.wa
  %i.wc = select <4 x i1> %i.ut, <4 x i8> zeroinitializer, <4 x i8> splat (i8 32)
  %i.wd = or disjoint <4 x i8> %i.wb, %i.wc
  %i.we = select <4 x i1> %i.vg, <4 x i8> zeroinitializer, <4 x i8> splat (i8 64)
  %i.wf = or <4 x i8> %i.wd, %i.we
  %i.wg = select <4 x i1> %i.vt, <4 x i8> zeroinitializer, <4 x i8> splat (i8 -128)
  %i.wh = or <4 x i8> %i.wf, %i.wg
  store <4 x i8> %i.wh, ptr %next.gep52, align 1, !tbaa !38, !alias.scope !207, !noalias !204
  %index.next53 = add nuw i64 %index51, 4         ; 2 uses
  %i.wi = icmp eq i64 %index.next53, %n.vec50
  br i1 %i.wi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.ao, %n.vec50
  br i1 %cmp.n54, label %._crit_edge60.i.i, label %.preheader53.i.i.preheader

.preheader53.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.ay, %vec.epilog.iter.check ], [ %i.rl, %vec.epilog.middle.block ]
  %.in.i.i.ph = phi i64 [ %i.ao, %iter.check ], [ %i.ao, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.rm, %vec.epilog.middle.block ]
  %.14159.i.i.ph = phi ptr [ %.040.i.i, %iter.check ], [ %.040.i.i, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.rn, %vec.epilog.middle.block ]
  br label %.preheader53.i.i

.preheader53.i.i:                                 ; preds = %.preheader53.i.i.preheader, %.preheader53.i.i
  %.3 = phi i64 [ %i.wk, %.preheader53.i.i ], [ %.3.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.in.i.i = phi i64 [ %i.wl, %.preheader53.i.i ], [ %.in.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %.14159.i.i = phi ptr [ %i.wo, %.preheader53.i.i ], [ %.14159.i.i.ph, %.preheader53.i.i.preheader ] ; 2 uses
  %i.wj = getelementptr i8, ptr %2, i64 %.3
  %i.wk = add nuw nsw i64 %.3, 8                  ; 2 uses
  %i.wl = add nsw i64 %.in.i.i, -1
  %i.wm = load <8 x i8>, ptr %i.wj, align 1, !tbaa !38
  %i.wn = icmp ne <8 x i8> %i.wm, zeroinitializer
  %i.wo = getelementptr inbounds nuw i8, ptr %.14159.i.i, i64 1 ; 2 uses
  store <8 x i1> %i.wn, ptr %.14159.i.i, align 1, !tbaa !38
  %i.wp = icmp samesign ugt i64 %.in.i.i, 1
  br i1 %i.wp, label %.preheader53.i.i, label %._crit_edge60.i.i, !llvm.loop !211

._crit_edge60.i.i:                                ; preds = %.preheader53.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %.2 = phi i64 [ %.1, %bb.f ], [ %i.rl, %vec.epilog.middle.block ], [ %i.ay, %middle.block ], [ %i.wk, %.preheader53.i.i ] ; 2 uses
  %.141.lcssa.i.i = phi ptr [ %.040.i.i, %bb.f ], [ %i.rn, %vec.epilog.middle.block ], [ %i.ba, %middle.block ], [ %i.wo, %.preheader53.i.i ]
  %i.wq = srem i64 %.1.i.i, 8                     ; 6 uses
  %.not45.i.i = icmp eq i64 %i.wq, 0
  br i1 %.not45.i.i, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge60.i.i
  %i.wr = icmp sgt i64 %i.wq, 0
  br i1 %i.wr, label %.lr.ph65.i.i.preheader, label %._crit_edge66.i.i

.lr.ph65.i.i.preheader:                           ; preds = %.preheader.i.i
  %xtraiter = and i64 %i.wq, 1
  %i.ws = icmp eq i64 %i.wq, 1
  br i1 %i.ws, label %.lr.ph65.i.i.epil.preheader, label %.lr.ph65.i.i.preheader.new

.lr.ph65.i.i.preheader.new:                       ; preds = %.lr.ph65.i.i.preheader
  %unroll_iter = and i64 %i.wq, 9223372036854775806
  br label %.lr.ph65.i.i

.lr.ph65.i.i:                                     ; preds = %.lr.ph65.i.i, %.lr.ph65.i.i.preheader.new
  %i.wt = phi i64 [ %.2, %.lr.ph65.i.i.preheader.new ], [ %i.wz, %.lr.ph65.i.i ] ; 3 uses
  %.13763.i.i = phi i8 [ 1, %.lr.ph65.i.i.preheader.new ], [ %i.xf, %.lr.ph65.i.i ] ; 3 uses
  %.13962.i.i = phi i8 [ 0, %.lr.ph65.i.i.preheader.new ], [ %i.xe, %.lr.ph65.i.i ]
  %niter = phi i64 [ 0, %.lr.ph65.i.i.preheader.new ], [ %niter.next.1, %.lr.ph65.i.i ]
  %i.wu = getelementptr inbounds i8, ptr %2, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !38
  %.not52.i.i = icmp eq i8 %i.wv, 0
  %i.ww = select i1 %.not52.i.i, i8 0, i8 %.13763.i.i
  %i.wx = or i8 %i.ww, %.13962.i.i
  %i.wy = shl nuw i8 %.13763.i.i, 1
  %i.wz = add nsw i64 %i.wt, 2                    ; 2 uses
  %i.xa = getelementptr i8, ptr %2, i64 %i.wt
  %i.xb = getelementptr i8, ptr %i.xa, i64 1
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !38
  %.not52.i.i.1 = icmp eq i8 %i.xc, 0
  %i.xd = select i1 %.not52.i.i.1, i8 0, i8 %i.wy
  %i.xe = or i8 %i.xd, %i.wx                      ; 3 uses
  %i.xf = shl nuw i8 %.13763.i.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge66.i.i.loopexit.unr-lcssa, label %.lr.ph65.i.i, !llvm.loop !212

._crit_edge66.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph65.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66.i.i, label %.lr.ph65.i.i.epil.preheader

.lr.ph65.i.i.epil.preheader:                      ; preds = %._crit_edge66.i.i.loopexit.unr-lcssa, %.lr.ph65.i.i.preheader
end_hunk_3
