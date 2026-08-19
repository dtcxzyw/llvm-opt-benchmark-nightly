inline.NumInlined: 313
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14LibRaw_SOFInfo9parse_sosER12ByteStreamBE:bb.a
bb.q:                                             ; preds = %_ZN12ByteStreamBE6get_u8Ev.exit46
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 5, ptr %i.ci, align 16, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #18
  unreachable

_ZN12ByteStreamBE6get_u8Ev.exit48:                ; preds = %_ZN12ByteStreamBE6get_u8Ev.exit46
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !17
  %i.cm = add nuw i32 %i.ca, 3
  store i32 %i.cm, ptr %i.c, align 4, !tbaa !11
  %i.cn = and i8 %i.cl, 15
  %i.co = zext i8 %i.ce to i32
  %i.cp = shl nuw nsw i32 %i.co, 8
  %i.cq = zext nneg i8 %i.cn to i32
  %i.cr = or disjoint i32 %i.cp, %i.cq
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %_ZN12ByteStreamBE6get_u8Ev.exit42.us, %bb.k, %bb.g, %_ZN12ByteStreamBE6get_u8Ev.exit42.us.us, %bb.f, %_ZN12ByteStreamBE6get_u8Ev.exit40, %_ZN12ByteStreamBE6get_u8Ev.exit48, %_ZN12ByteStreamBE6get_u8Ev.exit, %bb.a
  %.5 = phi i32 [ 65536, %bb.a ], [ 65536, %_ZN12ByteStreamBE6get_u8Ev.exit ], [ %i.cr, %_ZN12ByteStreamBE6get_u8Ev.exit48 ], [ 65536, %_ZN12ByteStreamBE6get_u8Ev.exit40 ], [ 65536, %bb.k ], [ 65536, %bb.f ], [ 65536, %bb.g ], [ 65536, %_ZN12ByteStreamBE6get_u8Ev.exit42.us.us ], [ 65536, %_ZN12ByteStreamBE6get_u8Ev.exit42.us ], [ 65536, %bb.l ]
  ret i32 %.5
}

; Function Attrs: mustprogress uwtable
define void @_ZN9HuffTable7initvalEPjS0_b(ptr noundef nonnull align 8 dereferenceable(2177) initializes((0, 1092), (2116, 2117), (2120, 2124)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.PseudoPump, align 8         ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = zext i1 %3 to i8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(68) %1, i64 68, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.c, ptr noundef nonnull align 4 dereferenceable(1024) %2, i64 1024, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2116
  store i8 %i.b, ptr %i.d, align 4, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2120 ; 20 uses
  store i32 16, ptr %i.e, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !72
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  store i32 15, ptr %i.e, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !72
  %.not.1 = icmp eq i32 %i.i, 0
  br i1 %.not.1, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  store i32 14, ptr %i.e, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !72
  %.not.2 = icmp eq i32 %i.k, 0
  br i1 %.not.2, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  store i32 13, ptr %i.e, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !72
  %.not.3 = icmp eq i32 %i.m, 0
  br i1 %.not.3, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  store i32 12, ptr %i.e, align 8, !tbaa !85
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !72
  %.not.4 = icmp eq i32 %i.o, 0
  br i1 %.not.4, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  store i32 11, ptr %i.e, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !72
  %.not.5 = icmp eq i32 %i.q, 0
  br i1 %.not.5, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  store i32 10, ptr %i.e, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !72
  %.not.6 = icmp eq i32 %i.s, 0
  br i1 %.not.6, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  store i32 9, ptr %i.e, align 8, !tbaa !85
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !72
  %.not.7 = icmp eq i32 %i.u, 0
  br i1 %.not.7, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  store i32 8, ptr %i.e, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !72
  %.not.8 = icmp eq i32 %i.w, 0
  br i1 %.not.8, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %i.e, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !72
  %.not.9 = icmp eq i32 %i.y, 0
  br i1 %.not.9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  store i32 6, ptr %i.e, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !72
  %.not.10 = icmp eq i32 %i.aa, 0
  br i1 %.not.10, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  store i32 5, ptr %i.e, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !72
  %.not.11 = icmp eq i32 %i.ac, 0
  br i1 %.not.11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i32 4, ptr %i.e, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !72
  %.not.12 = icmp eq i32 %i.ae, 0
  br i1 %.not.12, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store i32 3, ptr %i.e, align 8, !tbaa !85
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !72
  %.not.13 = icmp eq i32 %i.ag, 0
  br i1 %.not.13, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.e, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !72
  %.not.14 = icmp eq i32 %i.ai, 0
  br i1 %.not.14, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.e, align 8, !tbaa !85
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !72
  %.not.15 = icmp ne i32 %i.ak, 0                 ; 2 uses
  %spec.store.select = zext i1 %.not.15 to i32
  store i32 %spec.store.select, ptr %i.e, align 8
  %spec.select = zext i1 %.not.15 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.al = phi i32 [ 16, %bb.a ], [ %spec.select, %bb.p ], [ 2, %bb.o ], [ 3, %bb.n ], [ 4, %bb.m ], [ 5, %bb.l ], [ 6, %bb.k ], [ 7, %bb.j ], [ 8, %bb.i ], [ 9, %bb.h ], [ 10, %bb.g ], [ 11, %bb.f ], [ 12, %bb.e ], [ 13, %bb.d ], [ 14, %bb.c ], [ 15, %bb.b ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 3 uses
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = shl nuw nsw i64 1, %i.an                ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86 ; 4 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !49 ; 5 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 4 uses
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2                 ; 3 uses
  %i.aw = icmp ugt i64 %i.ao, %i.av
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = sub nuw nsw i64 %i.ao, %i.av
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.ax)
  %.pre = load i32, ptr %i.e, align 8, !tbaa !85
  %.pre93 = load ptr, ptr %i.ap, align 8, !tbaa !86
  %.pre94 = load ptr, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %.pre96 = ptrtoint ptr %.pre94 to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.s:                                             ; preds = %bb.q
  %i.ay = icmp ult i64 %i.ao, %i.av
  br i1 %i.ay, label %bb.t, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ao ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !86
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre96, %bb.r ], [ %i.at, %bb.s ], [ %i.at, %bb.t ], [ %i.at, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ba = phi ptr [ %.pre94, %bb.r ], [ %i.ar, %bb.s ], [ %i.ar, %bb.t ], [ %i.ar, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 5 uses
  %i.bb = phi ptr [ %.pre93, %bb.r ], [ %i.aq, %bb.s ], [ %i.aq, %bb.t ], [ %i.az, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bc = phi i32 [ %.pre, %bb.r ], [ %i.al, %bb.s ], [ %i.al, %bb.t ], [ %i.al, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bd, %.pre-phi
  %i.bf = ashr exact i64 %i.be, 2                 ; 7 uses
  %.not72 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not72, label %.preheader49, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %umax114 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %i.bf, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = icmp eq i64 %i.bh, 4294967295
  %i.bj = icmp ugt i64 %i.bg, 4294967295
  %i.bk = or i1 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check115 = icmp ult i64 %i.bf, 32
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %umax114, 28
  %n.vec = and i64 %umax114, 8589934560           ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store <8 x i32> zeroinitializer, ptr %i.bm, align 4, !tbaa !72
  store <8 x i32> zeroinitializer, ptr %i.bn, align 4, !tbaa !72
  store <8 x i32> zeroinitializer, ptr %i.bo, align 4, !tbaa !72
  store <8 x i32> zeroinitializer, ptr %i.bp, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.preheader49.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %umax114, 8589934588        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index117
  store <4 x i32> zeroinitializer, ptr %i.br, align 4, !tbaa !72
  %index.next118 = add nuw i64 %index117, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next118, %n.vec116
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n119, label %.preheader49.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec116, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader49.loopexit:                            ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre95 = load i32, ptr %i.e, align 8, !tbaa !85
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.loopexit, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.bt = phi i32 [ %.pre95, %.preheader49.loopexit ], [ %i.bc, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ] ; 2 uses
  %.not73 = icmp eq i32 %i.bt, 0
  br i1 %.not73, label %._crit_edge70, label %.preheader48.lr.ph

.preheader48.lr.ph:                               ; preds = %.preheader49
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1092
  br label %.preheader48

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.a
  store i32 0, ptr %i.bv, align 4, !tbaa !72
  %indvars.iv.next = add i64 %indvars.iv.a, 1     ; 2 uses
  %5 = and i64 %indvars.iv.next, 4294967295
  %i.bw = icmp ugt i64 %i.bf, %5
  br i1 %i.bw, label %.lr.ph, label %.preheader49.loopexit, !llvm.loop !92

.preheader48:                                     ; preds = %.preheader48.lr.ph, %._crit_edge64
  %i.bx = phi i32 [ %i.bt, %.preheader48.lr.ph ], [ %i.cr, %._crit_edge64 ] ; 3 uses
  %i.by = phi i32 [ 0, %.preheader48.lr.ph ], [ %i.ct, %._crit_edge64 ] ; 3 uses
  %.03669 = phi i8 [ 0, %.preheader48.lr.ph ], [ %i.cs, %._crit_edge64 ]
  %.03768 = phi i32 [ 0, %.preheader48.lr.ph ], [ %.1.lcssa, %._crit_edge64 ] ; 4 uses
  %.03867 = phi i32 [ 0, %.preheader48.lr.ph ], [ %.139.lcssa, %._crit_edge64 ] ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1                ; 2 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !72
  %.not74 = icmp eq i32 %i.cc, 0
  br i1 %.not74, label %._crit_edge64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader48
  %i.cd = xor i32 %i.by, -1
  %i.ce = shl nuw nsw i32 %i.bz, 16
  %i.cf = sext i32 %.03768 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %.03768, i32 255)
  %i.cg = sub i32 %smax, %.03768
  br label %.preheader

._crit_edge70:                                    ; preds = %._crit_edge64, %.preheader49
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2117
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !93, !range !55, !noundef !56
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ad, label %.noexc

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.y
  %i.ck = phi i32 [ %i.bx, %.preheader.lr.ph ], [ %i.cw, %bb.y ]
  %i.cl = phi i32 [ %i.bx, %.preheader.lr.ph ], [ %i.cx, %bb.y ] ; 2 uses
  %indvars.iv84 = phi i64 [ %i.cf, %.preheader.lr.ph ], [ %indvars.iv.next85, %bb.y ] ; 3 uses
  %.03563 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.do, %bb.y ] ; 2 uses
  %.13961 = phi i32 [ %.03867, %.preheader.lr.ph ], [ %.2.lcssa, %bb.y ] ; 2 uses
  %i.cm = sub i32 %i.by, %i.cl
  %.not75 = icmp eq i32 %i.cm, -32
  br i1 %.not75, label %._crit_edge, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv84
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %indvars.iv84
  %i.cp = sext i32 %.13961 to i64
  br label %bb.u

._crit_edge64.loopexit:                           ; preds = %bb.y
  %i.cq = trunc nsw i64 %indvars.iv.next85 to i32
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %.preheader48
  %i.cr = phi i32 [ %i.bx, %.preheader48 ], [ %i.cw, %._crit_edge64.loopexit ] ; 2 uses
  %.139.lcssa = phi i32 [ %.03867, %.preheader48 ], [ %.2.lcssa, %._crit_edge64.loopexit ]
  %.1.lcssa = phi i32 [ %.03768, %.preheader48 ], [ %i.cq, %._crit_edge64.loopexit ]
  %i.cs = add i8 %.03669, 1                       ; 2 uses
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = icmp ugt i32 %i.cr, %i.ct
  br i1 %i.cu, label %.preheader48, label %._crit_edge70, !llvm.loop !94

._crit_edge.loopexit:                             ; preds = %bb.w
  %i.cv = trunc nsw i64 %indvars.iv.next81.a to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cw = phi i32 [ %i.ck, %.preheader ], [ %i.dj, %._crit_edge.loopexit ] ; 2 uses
  %i.cx = phi i32 [ %i.cl, %.preheader ], [ %i.dj, %._crit_edge.loopexit ]
  %.2.lcssa = phi i32 [ %.13961, %.preheader ], [ %i.cv, %._crit_edge.loopexit ] ; 2 uses
  %exitcond = icmp eq i32 %.03563, %i.cg
  br i1 %exitcond, label %bb.x, label %bb.y

bb.u:                                             ; preds = %.lr.ph59, %bb.w
  %indvars.iv80 = phi i64 [ %i.cp, %.lr.ph59 ], [ %indvars.iv.next81.a, %bb.w ] ; 3 uses
  %.03458 = phi i32 [ 0, %.lr.ph59 ], [ %i.di, %bb.w ]
  %i.cy = trunc nsw i64 %indvars.iv80 to i32
  %.2.highbits = lshr i32 %i.cy, %i.bc
  %.not44 = icmp eq i32 %.2.highbits, 0
  br i1 %.not44, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 5, ptr %i.cz, align 16, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #18
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.da = load i32, ptr %i.cn, align 4, !tbaa !72
  %i.db = shl i32 %i.da, 8
  %i.dc = and i32 %i.db, 65280
  %i.dd = or disjoint i32 %i.dc, %i.ce
  %i.de = load i32, ptr %i.co, align 4, !tbaa !72
  %i.df = and i32 %i.de, 255
  %i.dg = or disjoint i32 %i.dd, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv80
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !72
  %indvars.iv.next81.a = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.di = add nuw nsw i32 %.03458, 1              ; 2 uses
  %i.dj = load i32, ptr %i.e, align 8, !tbaa !85  ; 3 uses
  %i.dk = add i32 %i.dj, %i.cd
  %i.dl = shl nuw i32 1, %i.dk
  %i.dm = icmp slt i32 %i.di, %i.dl
  br i1 %i.dm, label %bb.u, label %._crit_edge.loopexit, !llvm.loop !95

bb.x:                                             ; preds = %._crit_edge
  %i.dn = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 5, ptr %i.dn, align 16, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #18
  unreachable

bb.y:                                             ; preds = %._crit_edge
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.do = add nuw i32 %.03563, 1                  ; 2 uses
  %i.dp = load i32, ptr %i.cb, align 4, !tbaa !72
  %i.dq = icmp ult i32 %i.do, %i.dp
  br i1 %i.dq, label %.preheader, label %._crit_edge64.loopexit, !llvm.loop !96

.noexc:                                           ; preds = %._crit_edge70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV10PseudoPump, i64 16), ptr %4, align 8, !tbaa !97
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dt = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #19 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.dt, i8 0, i64 65536, i1 false), !tbaa !99
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 65536 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !45 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !48
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !45
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !101
  store ptr %i.du, ptr %i.dy, align 8, !tbaa !48
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.preheader, label %bb.z

_ZNSt6vectorImSaImEED2Ev.exit.preheader:          ; preds = %bb.z, %.noexc
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.z:                                             ; preds = %.noexc
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dw to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ec) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit.preheader

bb.aa:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ad

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.preheader, %bb.ac
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.ac ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit.preheader ] ; 3 uses
  %i.ed = shl nuw nsw i64 %indvars.iv88, 32
  store i64 %i.ed, ptr %i.dr, align 8, !tbaa !102
  store i32 45, ptr %i.ds, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ee = call noundef i32 @_ZN9HuffTable12decode_slow2ER7BitPumpRj(ptr noundef nonnull align 8 dereferenceable(2177) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ef = load i32, ptr %i.ds, align 8, !tbaa !105
  %i.eg = icmp sgt i32 %i.ef, 31
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !72
  %i.ei = shl i32 %i.eh, 16
  %i.ej = and i32 %i.ei, 16711680
  %i.ek = and i32 %i.ee, 65535
  %i.el = or disjoint i32 %i.ej, %i.ek
  %i.em = zext nneg i32 %i.el to i64
  %i.en = or disjoint i64 %i.em, 4294967296
  %i.eo = load ptr, ptr %i.dv, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv88
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !99
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt6vectorImSaImEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, 8192
  br i1 %exitcond92.not, label %bb.aa, label %_ZNSt6vectorImSaImEED2Ev.exit, !llvm.loop !106

bb.ad:                                            ; preds = %bb.aa, %._crit_edge70
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2176
  store i8 1, ptr %i.eq, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN24LibRaw_LjpegDecompressor16decode_ljpeg_422ERSt6vectorItSaItEEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(108) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %struct.BitPumpJpeg, align 8        ; 38 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %i.c = mul i32 %i.b, 3
  %.not = icmp eq i32 %i.c, %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %.not70 = icmp eq i32 %i.e, %3
  %or.cond75 = select i1 %.not, i1 %.not70, i1 false
  br i1 %or.cond75, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.f = srem i32 %2, 6
  %i.g = or i32 %3, %2
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEE17_M_default_appendEm:bb.a
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !86
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #19 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !72
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !72
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #17
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !86
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold noreturn }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !8, i64 12}
!12 = !{!"_ZTS12ByteStreamBE", !13, i64 0, !8, i64 8, !8, i64 12}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!12, !8, i64 8}
!16 = !{!12, !13, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !34, i64 104}
!21 = !{!"_ZTS24LibRaw_LjpegDecompressor", !12, i64 0, !22, i64 16, !8, i64 64, !8, i64 68, !8, i64 72, !29, i64 80, !34, i64 104}
!22 = !{!"_ZTS14LibRaw_SOFInfo", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !23, i64 16, !28, i64 40}
!23 = !{!"_ZTSSt6vectorI24LibRaw_JpegComponentInfoSaIS0_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseI24LibRaw_JpegComponentInfoSaIS0_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseI24LibRaw_JpegComponentInfoSaIS0_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseI24LibRaw_JpegComponentInfoSaIS0_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTS24LibRaw_JpegComponentInfo", !14, i64 0}
!28 = !{!"bool", !9, i64 0}
!29 = !{!"_ZTSSt6vectorI9HuffTableSaIS0_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseI9HuffTableSaIS0_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseI9HuffTableSaIS0_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI9HuffTableSaIS0_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTS9HuffTable", !14, i64 0}
!34 = !{!"_ZTSN24LibRaw_LjpegDecompressor5State6StatesE", !9, i64 0}
!35 = !{!26, !27, i64 0}
!36 = !{!26, !27, i64 16}
!37 = !{!21, !28, i64 56}
!38 = !{!39, !39, i64 0}
!39 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!40 = !{!21, !8, i64 28}
!41 = !{!21, !8, i64 64}
!42 = !{!21, !8, i64 68}
!43 = !{!32, !33, i64 8}
!44 = !{!32, !33, i64 0}
!45 = !{!46, !47, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!47 = !{!"p1 long", !14, i64 0}
!48 = !{!46, !47, i64 16}
!49 = !{!50, !51, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!51 = !{!"p1 int", !14, i64 0}
!52 = !{!50, !51, i64 16}
!53 = distinct !{!53, !19}
!54 = !{!28, !28, i64 0}
!55 = !{i8 0, i8 2}
!56 = !{}
!57 = !{!21, !8, i64 12}
!58 = !{!21, !8, i64 72}
!59 = !{!32, !33, i64 16}
!60 = !{!22, !8, i64 12}
!61 = !{!22, !8, i64 4}
!62 = !{!22, !8, i64 0}
!63 = !{!22, !8, i64 8}
!64 = !{!26, !27, i64 8}
!65 = !{!66, !8, i64 0}
!66 = !{!"_ZTS24LibRaw_JpegComponentInfo", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!67 = !{!66, !8, i64 4}
!68 = !{!66, !8, i64 8}
!69 = !{!66, !8, i64 12}
!70 = !{!66, !8, i64 16}
!71 = distinct !{!71, !19}
!72 = !{!8, !8, i64 0}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = !{!78, !28, i64 2116}
!78 = !{!"_ZTS9HuffTable", !9, i64 0, !9, i64 68, !9, i64 1092, !28, i64 2116, !28, i64 2117, !8, i64 2120, !79, i64 2128, !82, i64 2152, !28, i64 2176}
!79 = !{!"_ZTSSt6vectorIjSaIjEE", !80, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !81, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !50, i64 0}
!82 = !{!"_ZTSSt6vectorImSaImEE", !83, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseImSaImEE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !46, i64 0}
!85 = !{!78, !8, i64 2120}
!86 = !{!50, !51, i64 8}
!87 = distinct !{!87, !19, !88, !89}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!"branch_weights", i32 4, i32 28}
!91 = distinct !{!91, !19, !88, !89}
!92 = distinct !{!92, !19, !88}
!93 = !{!78, !28, i64 2117}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = !{!98, !98, i64 0}
!98 = !{!"vtable pointer", !10, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"long", !9, i64 0}
!101 = !{!46, !47, i64 8}
!102 = !{!103, !100, i64 8}
!103 = !{!"_ZTS10PseudoPump", !104, i64 0, !100, i64 8, !8, i64 16}
!104 = !{!"_ZTS7BitPump"}
!105 = !{!103, !8, i64 16}
!106 = distinct !{!106, !19}
!107 = !{!78, !28, i64 2176}
!108 = !{!21, !8, i64 16}
!109 = !{!110, !111, i64 8}
!110 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"p1 short", !14, i64 0}
!112 = !{!110, !111, i64 0}
!113 = !{!114, !13, i64 8}
!114 = !{!"_ZTS11BitPumpJpeg", !104, i64 0, !13, i64 8, !8, i64 16, !8, i64 20, !100, i64 24, !8, i64 32, !28, i64 36}
!115 = !{!114, !8, i64 16}
!116 = !{!117, !117, i64 0}
!117 = !{!"short", !9, i64 0}
!118 = distinct !{!118, !19}
!119 = !DISubprogram(name: "peek", linkageName: "_ZN7BitPump4peekEj", scope: !121, file: !120, line: 27, type: !139, scopeLine: 27, containingType: !121, virtualIndex: 0, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!120 = !DIFile(filename: "src/external/LibRaw/src/decompressors/../../internal/losslessjpeg.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "250b3db04dec5767cf262fb4042ecb42")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "BitPump", file: !120, line: 25, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !122, vtableHolder: !121, identifier: "_ZTS7BitPump")
!122 = !{!123, !119, !129, !138}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$BitPump", scope: !120, file: !120, baseType: !124, size: 64, flags: DIFlagArtificial)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!128}
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DISubprogram(name: "consume", linkageName: "_ZN7BitPump7consumeEj", scope: !121, file: !120, line: 28, type: !130, scopeLine: 28, containingType: !121, virtualIndex: 1, flags: DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132, !133}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !134, line: 26, baseType: !135)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !136, line: 42, baseType: !137)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!138 = !DISubprogram(name: "get", linkageName: "_ZN7BitPump3getEj", scope: !121, file: !120, line: 30, type: !139, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DISubroutineType(types: !140)
!140 = !{!133, !132, !133}
!141 = !{ptr @_ZN9HuffTable6decodeER7BitPump}
!142 = distinct !{!142, !19}
!143 = distinct !{null}
!144 = distinct !{null, null}
!145 = !{!114, !8, i64 32}
!146 = !{!114, !28, i64 36}
!147 = !{!114, !8, i64 20}
!148 = !{!114, !100, i64 24}
!149 = distinct !{!149, !19}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZSt19__relocate_object_aI9HuffTableS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!152 = distinct !{!152, !"_ZSt19__relocate_object_aI9HuffTableS0_SaIS0_EEvPT_PT0_RT1_"}
!153 = !{!154}
!154 = distinct !{!154, !152, !"_ZSt19__relocate_object_aI9HuffTableS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!155 = !{!151, !154}
!156 = !{!47, !47, i64 0}
!157 = distinct !{!157, !19}
!158 = distinct !{!158, !19}
end_hunk_1
