inline.NumInlined: 1822
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IjSaIjEE:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 108 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %i.ba
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.ba, ptr %i.ar, align 8, !tbaa !6929
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.o, %bb.n
  %i.bb = phi ptr [ %.pre25, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %i.r, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.r, %bb.o ], [ %i.r, %bb.n ] ; 2 uses
  %i.bc = phi ptr [ %.pre, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %i.q, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.q, %bb.o ], [ %i.q, %bb.n ] ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.bb
  br i1 %i.bd, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !6882
  br label %bb.p

.preheader:                                       ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.promoted = load ptr, ptr %i.ar, align 8, !tbaa !6942
  %i.bf = getelementptr inbounds i8, ptr %.promoted, i64 -4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !35
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph24, label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.014.023 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bo, %bb.p ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.014.023, i64 4
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !6923
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !35
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.014.023, i64 8 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bb
  br i1 %i.bp, label %.preheader, label %bb.p

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %i.bq = phi ptr [ %i.br, %.lr.ph24 ], [ %i.bf, %.preheader ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !35
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph24, label %._crit_edge, !llvm.loop !6943

._crit_edge:                                      ; preds = %.lr.ph24
  store ptr %i.bq, ptr %i.ar, align 8, !tbaa !6929
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.preheader
  invoke void @_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.r unwind label %bb.i

bb.r:                                             ; preds = %bb.q
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit8.sink.split:        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit11, %bb.d
  %.sink40 = phi ptr [ %i.i, %bb.d ], [ %i.aq, %_ZNSt6vectorIjSaIjEED2Ev.exit11 ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ae, %_ZNSt6vectorIjSaIjEED2Ev.exit11 ]
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !6883
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %.sink40 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink40, i64 noundef %i.bx) #34
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit8

_ZNSt6vectorIjSaIjEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit8.sink.split, %_ZNSt6vectorIjSaIjEED2Ev.exit11, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ae, %_ZNSt6vectorIjSaIjEED2Ev.exit11 ], [ %.pn.ph, %_ZNSt6vectorIjSaIjEED2Ev.exit8.sink.split ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6944 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !6946 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp ult i64 %i.h, 2048
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 2048, %i.h
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not59 = icmp eq i64 %i.g, 8192
  br i1 %.not59, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.k, ptr %i.b, align 8, !tbaa !6944
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6927 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !6924 ; 3 uses
  %.not70 = icmp eq ptr %i.o, %i.p
  br i1 %.not70, label %.critedge, label %.lr.ph68

.lr.ph68:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph68, %._crit_edge
  %.04667 = phi i64 [ 0, %.lr.ph68 ], [ %i.ik, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.04667 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !6923
  %.fr73 = freeze i8 %i.x                         ; 2 uses
  %i.y = zext i8 %.fr73 to i32                    ; 6 uses
  %i.z = icmp ult i8 %.fr73, 12
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !6921
  %i.ab = sub nuw nsw i32 11, %i.y
  %i.ac = shl i32 %i.aa, %i.ab                    ; 12 uses
  %i.ad = trunc i32 %i.ac to i16                  ; 21 uses
  %i.ae = lshr exact i32 2048, %i.y
  %i.af = add nuw nsw i32 %i.ae, 65535
  %i.ag = or i32 %i.ac, %i.af                     ; 6 uses
  %i.ah = trunc i32 %i.ag to i16                  ; 5 uses
  %.not5260 = icmp ugt i16 %i.ad, %i.ah
  br i1 %.not5260, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !6882
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.04667
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !35
  %.fr71 = freeze i32 %i.ak                       ; 7 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !6944
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !6946 ; 8 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 9 uses
  %i.ar = shl i32 %.fr71, 9
  %i.as = or disjoint i32 %i.ar, %i.y             ; 3 uses
  %i.at = or disjoint i32 %i.as, 256              ; 7 uses
  %i.au = add i32 %.fr71, %i.y                    ; 3 uses
  %i.av = icmp ugt i32 %i.au, 11
  %i.aw = icmp ne i32 %.fr71, 16                  ; 2 uses
  %or.cond4 = and i1 %i.aw, %i.av
  %i.ax = or disjoint i32 %i.y, 256               ; 2 uses
  %i.ay = or disjoint i32 %i.y, 272
  %i.az = add i32 %.fr71, %i.ax                   ; 4 uses
  %.not = icmp eq i32 %.fr71, 0
  %i.ba = icmp ult i32 %i.au, 12
  %i.bb = sub nuw nsw i32 11, %i.au               ; 2 uses
  %notmask = shl nsw i32 -1, %.fr71               ; 2 uses
  %i.bc = xor i32 %notmask, -1                    ; 2 uses
  %i.bd = add i32 %.fr71, -1
  %i.be = shl nuw i32 1, %i.bd                    ; 2 uses
  %.neg.i = add nuw nsw i32 %notmask, 1           ; 2 uses
  br i1 %or.cond4, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.mask172 = and i32 %i.ac, 65535
  %i.bf = zext nneg i32 %.mask172 to i64
  %i.bg = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.bf)
  %i.bh = and i32 %i.ag, 65535
  %i.bi = add nuw nsw i32 %i.bh, 1
  %i.bj = add i32 %i.ac, 1
  %i.bk = and i32 %i.bj, 65535
  %i.bl = tail call i32 @llvm.usub.sat.i32(i32 %i.bi, i32 %i.bk)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bm) ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bn, 32
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader174, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.us.preheader
  %.mask173 = and i32 %i.ac, 65535
  %i.bq = zext nneg i32 %.mask173 to i64
  %i.br = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.bq)
  %i.bs = and i32 %i.ag, 65535
  %i.bt = add nuw nsw i32 %i.bs, 1
  %i.bu = add i32 %i.ac, 1
  %i.bv = and i32 %i.bu, 65535
  %i.bw = tail call i32 @llvm.usub.sat.i32(i32 %i.bt, i32 %i.bv)
  %i.bx = zext nneg i32 %i.bw to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bx) ; 3 uses
  %i.by = trunc i64 %umin to i16
  %i.bz = xor i16 %i.ad, -1
  %i.ca = icmp ult i16 %i.bz, %i.by
  %3 = trunc i64 %umin to i16
  %i.cb = sub i16 -2, %i.ad
  %i.cc = icmp ult i16 %i.cb, %3
  %i.cd = icmp samesign ugt i64 %umin, 65535
  %i.ce = or i1 %i.cc, %i.cd
  %i.cf = or i1 %i.ca, %i.ce
  br i1 %i.cf, label %.lr.ph.split.us.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i32 %i.bp, 31                   ; 2 uses
  %i.cg = icmp eq i32 %n.mod.vf, 0
  %i.ch = select i1 %i.cg, i32 32, i32 %n.mod.vf
  %n.vec = sub nsw i32 %i.bp, %i.ch               ; 2 uses
  %i.ci = trunc i32 %n.vec to i16
  %i.cj = add i16 %i.ad, %i.ci
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat111 = shufflevector <8 x i32> %broadcast.splatinsert110, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ck = load i8, ptr %0, align 8, !tbaa !6934, !range !112, !noundef !113
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = insertelement <8 x i1> poison, i1 %i.cl, i64 0
  %i.cn = shufflevector <8 x i1> %i.cm, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.co = select <8 x i1> %i.cn, <8 x i32> %broadcast.splat, <8 x i32> %broadcast.splat111 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = trunc i32 %index to i16
  %i.cq = add i16 %i.ad, %i.cp
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cr ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store <8 x i32> %i.co, ptr %i.cs, align 4, !tbaa !35
  store <8 x i32> %i.co, ptr %i.ct, align 4, !tbaa !35
  store <8 x i32> %i.co, ptr %i.cu, align 4, !tbaa !35
  store <8 x i32> %i.co, ptr %i.cv, align 4, !tbaa !35
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.cw = icmp eq i32 %index.next, %n.vec
  br i1 %i.cw, label %.lr.ph.split.us.preheader174, label %vector.body, !llvm.loop !6947

.lr.ph.split.us.preheader174:                     ; preds = %vector.body, %vector.scevcheck, %.lr.ph.split.us.preheader
  %.04561.us.ph = phi i16 [ %i.ad, %vector.scevcheck ], [ %i.ad, %.lr.ph.split.us.preheader ], [ %i.cj, %vector.body ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader174, %.thread.us
  %.04561.us = phi i16 [ %i.dc, %.thread.us ], [ %.04561.us.ph, %.lr.ph.split.us.preheader174 ] ; 2 uses
  %i.cx = zext i16 %.04561.us to i64              ; 2 uses
  %i.cy = icmp ugt i64 %i.aq, %i.cx
  br i1 %i.cy, label %.thread.us, label %.split64.us

.thread.us:                                       ; preds = %.lr.ph.split.us
  %i.cz = load i8, ptr %0, align 8, !tbaa !6934, !range !112, !noundef !113
  %i.da = trunc nuw i8 %i.cz to i1
  %spec.select = select i1 %i.da, i32 %i.as, i32 %i.at
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cx
  store i32 %spec.select, ptr %i.db, align 4, !tbaa !35
  %i.dc = add i16 %.04561.us, 1                   ; 2 uses
  %.not52.us = icmp ugt i16 %i.dc, %i.ah
  br i1 %.not52.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !6948

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.aw, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.mask170 = and i32 %i.ac, 65535
  %i.dd = zext nneg i32 %.mask170 to i64
  %i.de = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.dd)
  %i.df = and i32 %i.ag, 65535
  %i.dg = add nuw nsw i32 %i.df, 1
  %i.dh = add i32 %i.ac, 1
  %i.di = and i32 %i.dh, 65535
  %i.dj = tail call i32 @llvm.usub.sat.i32(i32 %i.dg, i32 %i.di)
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.de, i64 %i.dk) ; 2 uses
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dm, 1                ; 4 uses
  %min.iters.check120 = icmp samesign ult i64 %i.dl, 32 ; 2 uses
  br i1 %.not, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  br i1 %min.iters.check120, label %.lr.ph.split.split.us.split.preheader178, label %vector.scevcheck135

.lr.ph.split.split.us.split.preheader178:         ; preds = %vector.body159, %vector.scevcheck135, %.lr.ph.split.split.us.split.preheader
  %.04561.us65.ph = phi i16 [ %i.ad, %vector.scevcheck135 ], [ %i.ad, %.lr.ph.split.split.us.split.preheader ], [ %i.eh, %vector.body159 ]
  br label %.lr.ph.split.split.us.split

vector.scevcheck135:                              ; preds = %.lr.ph.split.split.us.split.preheader
  %.mask169 = and i32 %i.ac, 65535
  %i.do = zext nneg i32 %.mask169 to i64
  %i.dp = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.do)
  %i.dq = and i32 %i.ag, 65535
  %i.dr = add nuw nsw i32 %i.dq, 1
  %i.ds = add i32 %i.ac, 1
  %i.dt = and i32 %i.ds, 65535
  %i.du = tail call i32 @llvm.usub.sat.i32(i32 %i.dr, i32 %i.dt)
  %i.dv = zext nneg i32 %i.du to i64
  %umin138 = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dv) ; 3 uses
  %i.dw = trunc i64 %umin138 to i16
  %i.dx = xor i16 %i.ad, -1
  %i.dy = icmp ult i16 %i.dx, %i.dw
  %4 = trunc i64 %umin138 to i16
  %i.dz = sub i16 -2, %i.ad
  %i.ea = icmp ult i16 %i.dz, %4
  %i.eb = icmp samesign ugt i64 %umin138, 65535
  %i.ec = or i1 %i.ea, %i.eb
  %i.ed = or i1 %i.dy, %i.ec
  br i1 %i.ed, label %.lr.ph.split.split.us.split.preheader178, label %vector.ph142

vector.ph142:                                     ; preds = %vector.scevcheck135
  %n.mod.vf143 = and i32 %i.dn, 31                ; 2 uses
  %i.ee = icmp eq i32 %n.mod.vf143, 0
  %i.ef = select i1 %i.ee, i32 32, i32 %n.mod.vf143
  %n.vec144 = sub nsw i32 %i.dn, %i.ef            ; 2 uses
  %i.eg = trunc i32 %n.vec144 to i16
  %i.eh = add i16 %i.ad, %i.eg
  %broadcast.splatinsert145 = insertelement <8 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat146 = shufflevector <8 x i32> %broadcast.splatinsert145, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert147 = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat148 = shufflevector <8 x i32> %broadcast.splatinsert147, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert149 = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat150 = shufflevector <8 x i32> %broadcast.splatinsert149, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert151 = insertelement <8 x i32> poison, i32 %.neg.i, i64 0
  %broadcast.splat152 = shufflevector <8 x i32> %broadcast.splatinsert151, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert153 = insertelement <8 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert155 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat156 = shufflevector <8 x i32> %broadcast.splatinsert155, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert157 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat158 = shufflevector <8 x i16> %broadcast.splatinsert157, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat158, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %i.ei = load i8, ptr %0, align 8, !tbaa !6934, !range !112, !noundef !113
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = insertelement <8 x i1> poison, i1 %i.ej, i64 0
  %i.el = shufflevector <8 x i1> %i.ek, <8 x i1> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = and <8 x i32> %broadcast.splat148, %broadcast.splat150
  %invariant.op183 = and <8 x i32> %broadcast.splat148, %broadcast.splat150
  %invariant.op185 = and <8 x i32> %broadcast.splat148, %broadcast.splat150
  %invariant.op187 = and <8 x i32> %broadcast.splat148, %broadcast.splat150
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph142
  %index160 = phi i32 [ 0, %vector.ph142 ], [ %index.next166, %vector.body159 ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph142 ], [ %vec.ind.next, %vector.body159 ] ; 5 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %step.add.2 = add <8 x i16> %vec.ind, splat (i16 16)
  %step.add.3 = add <8 x i16> %vec.ind, splat (i16 24)
  %i.em = trunc i32 %index160 to i16
  %i.en = add i16 %i.ad, %i.em
  %i.eo = zext i16 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.eo ; 4 uses
  %i.eq = zext <8 x i16> %vec.ind to <8 x i32>
  %i.er = zext <8 x i16> %step.add to <8 x i32>
  %i.es = zext <8 x i16> %step.add.2 to <8 x i32>
  %i.et = zext <8 x i16> %step.add.3 to <8 x i32>
  %i.eu = lshr <8 x i32> %i.eq, %broadcast.splat146 ; 2 uses
  %i.ev = lshr <8 x i32> %i.er, %broadcast.splat146 ; 2 uses
  %i.ew = lshr <8 x i32> %i.es, %broadcast.splat146 ; 2 uses
  %i.ex = lshr <8 x i32> %i.et, %broadcast.splat146 ; 2 uses
  %i.ey = and <8 x i32> %i.eu, %broadcast.splat148
  %i.ez = and <8 x i32> %i.ev, %broadcast.splat148
  %i.fa = and <8 x i32> %i.ew, %broadcast.splat148
  %i.fb = and <8 x i32> %i.ex, %broadcast.splat148
  %.reass = and <8 x i32> %i.eu, %invariant.op
  %.reass184 = and <8 x i32> %i.ev, %invariant.op183
  %.reass186 = and <8 x i32> %i.ew, %invariant.op185
  %.reass188 = and <8 x i32> %i.ex, %invariant.op187
  %i.fc = icmp eq <8 x i32> %.reass, zeroinitializer
  %i.fd = icmp eq <8 x i32> %.reass184, zeroinitializer
  %i.fe = icmp eq <8 x i32> %.reass186, zeroinitializer
  %i.ff = icmp eq <8 x i32> %.reass188, zeroinitializer
  %i.fg = select <8 x i1> %i.fc, <8 x i32> %broadcast.splat152, <8 x i32> zeroinitializer
  %i.fh = select <8 x i1> %i.fd, <8 x i32> %broadcast.splat152, <8 x i32> zeroinitializer
  %i.fi = select <8 x i1> %i.fe, <8 x i32> %broadcast.splat152, <8 x i32> zeroinitializer
  %i.fj = select <8 x i1> %i.ff, <8 x i32> %broadcast.splat152, <8 x i32> zeroinitializer
  %i.fk = add nsw <8 x i32> %i.fg, %i.ey
  %i.fl = add nsw <8 x i32> %i.fh, %i.ez
  %i.fm = add nsw <8 x i32> %i.fi, %i.fa
  %i.fn = add nsw <8 x i32> %i.fj, %i.fb
  %i.fo = shl <8 x i32> %i.fk, splat (i32 9)
  %i.fp = shl <8 x i32> %i.fl, splat (i32 9)
  %i.fq = shl <8 x i32> %i.fm, splat (i32 9)
  %i.fr = shl <8 x i32> %i.fn, splat (i32 9)
  %i.fs = or <8 x i32> %broadcast.splat154, %i.fo
  %i.ft = or <8 x i32> %broadcast.splat154, %i.fp
  %i.fu = or <8 x i32> %broadcast.splat154, %i.fq
  %i.fv = or <8 x i32> %broadcast.splat154, %i.fr
  %predphi = select <8 x i1> %i.el, <8 x i32> %i.fs, <8 x i32> %broadcast.splat156
  %predphi163 = select <8 x i1> %i.el, <8 x i32> %i.ft, <8 x i32> %broadcast.splat156
  %predphi164 = select <8 x i1> %i.el, <8 x i32> %i.fu, <8 x i32> %broadcast.splat156
  %predphi165 = select <8 x i1> %i.el, <8 x i32> %i.fv, <8 x i32> %broadcast.splat156
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  store <8 x i32> %predphi, ptr %i.ep, align 4, !tbaa !35
  store <8 x i32> %predphi163, ptr %i.fw, align 4, !tbaa !35
  store <8 x i32> %predphi164, ptr %i.fx, align 4, !tbaa !35
  store <8 x i32> %predphi165, ptr %i.fy, align 4, !tbaa !35
  %index.next166 = add nuw i32 %index160, 32      ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 32)
  %i.fz = icmp eq i32 %index.next166, %n.vec144
  br i1 %i.fz, label %.lr.ph.split.split.us.split.preheader178, label %vector.body159, !llvm.loop !6949

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  br i1 %min.iters.check120, label %.lr.ph.split.split.us.split.us.preheader175, label %vector.scevcheck114

vector.scevcheck114:                              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %.mask171 = and i32 %i.ac, 65535
  %i.ga = zext nneg i32 %.mask171 to i64
  %i.gb = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.ga)
  %i.gc = and i32 %i.ag, 65535
  %i.gd = add nuw nsw i32 %i.gc, 1
  %i.ge = add i32 %i.ac, 1
  %i.gf = and i32 %i.ge, 65535
  %i.gg = tail call i32 @llvm.usub.sat.i32(i32 %i.gd, i32 %i.gf)
  %i.gh = zext nneg i32 %i.gg to i64
  %umin117 = tail call i64 @llvm.umin.i64(i64 %i.gb, i64 %i.gh) ; 3 uses
  %i.gi = trunc i64 %umin117 to i16
  %i.gj = xor i16 %i.ad, -1
  %i.gk = icmp ult i16 %i.gj, %i.gi
  %5 = trunc i64 %umin117 to i16
  %i.gl = sub i16 -2, %i.ad
  %i.gm = icmp ult i16 %i.gl, %5
  %i.gn = icmp samesign ugt i64 %umin117, 65535
  %i.go = or i1 %i.gm, %i.gn
  %i.gp = or i1 %i.gk, %i.go
  br i1 %i.gp, label %.lr.ph.split.split.us.split.us.preheader175, label %vector.ph121

vector.ph121:                                     ; preds = %vector.scevcheck114
  %n.mod.vf122 = and i32 %i.dn, 31                ; 2 uses
  %i.gq = icmp eq i32 %n.mod.vf122, 0
  %i.gr = select i1 %i.gq, i32 32, i32 %n.mod.vf122
  %n.vec123 = sub nsw i32 %i.dn, %i.gr            ; 2 uses
  %i.gs = trunc i32 %n.vec123 to i16
  %i.gt = add i16 %i.ad, %i.gs
  %broadcast.splatinsert124.a = insertelement <8 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat125.a = shufflevector <8 x i32> %broadcast.splatinsert124.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert126 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat127 = shufflevector <8 x i32> %broadcast.splatinsert126, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.gu = load i8, ptr %0, align 8, !tbaa !6934, !range !112, !noundef !113
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = insertelement <8 x i1> poison, i1 %i.gv, i64 0
  %i.gx = shufflevector <8 x i1> %i.gw, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.gy = select <8 x i1> %i.gx, <8 x i32> %broadcast.splat125.a, <8 x i32> %broadcast.splat127 ; 4 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph121
  %index129 = phi i32 [ 0, %vector.ph121 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.gz = trunc i32 %index129 to i16
  %i.ha = add i16 %i.ad, %i.gz
  %i.hb = zext i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.hb ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  store <8 x i32> %i.gy, ptr %i.hc, align 4, !tbaa !35
  store <8 x i32> %i.gy, ptr %i.hd, align 4, !tbaa !35
  store <8 x i32> %i.gy, ptr %i.he, align 4, !tbaa !35
  store <8 x i32> %i.gy, ptr %i.hf, align 4, !tbaa !35
  %index.next132 = add nuw i32 %index129, 32      ; 2 uses
  %i.hg = icmp eq i32 %index.next132, %n.vec123
  br i1 %i.hg, label %.lr.ph.split.split.us.split.us.preheader175, label %vector.body128, !llvm.loop !6950

.lr.ph.split.split.us.split.us.preheader175:      ; preds = %vector.body128, %vector.scevcheck114, %.lr.ph.split.split.us.split.us.preheader
  %.04561.us65.us.ph = phi i16 [ %i.ad, %vector.scevcheck114 ], [ %i.ad, %.lr.ph.split.split.us.split.us.preheader ], [ %i.gt, %vector.body128 ]
  br label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.preheader175, %bb.g
  %.04561.us65.us = phi i16 [ %i.hm, %bb.g ], [ %.04561.us65.us.ph, %.lr.ph.split.split.us.split.us.preheader175 ] ; 2 uses
  %i.hh = zext i16 %.04561.us65.us to i64         ; 2 uses
  %i.hi = icmp ugt i64 %i.aq, %i.hh
  br i1 %i.hi, label %bb.g, label %.split64.us

bb.g:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.hj = load i8, ptr %0, align 8, !tbaa !6934, !range !112, !noundef !113
  %i.hk = trunc nuw i8 %i.hj to i1
  %spec.select100 = select i1 %i.hk, i32 %i.az, i32 %i.at
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.hh
  store i32 %spec.select100, ptr %i.hl, align 4, !tbaa !35
  %i.hm = add i16 %.04561.us65.us, 1              ; 2 uses
  %.not52.us66.us = icmp ugt i16 %i.hm, %i.ah
  br i1 %.not52.us66.us, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !6951

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader178, %bb.i
  %.04561.us65 = phi i16 [ %i.ia, %bb.i ], [ %.04561.us65.ph, %.lr.ph.split.split.us.split.preheader178 ] ; 3 uses
  %i.hn = zext i16 %.04561.us65 to i64            ; 2 uses
  %i.ho = icmp ugt i64 %i.aq, %i.hn
  br i1 %i.ho, label %bb.h, label %.split64.us

bb.h:                                             ; preds = %.lr.ph.split.split.us.split
  %i.hp = load i8, ptr %0, align 8, !tbaa !6934, !range !112, !noundef !113
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.hn
  br i1 %i.hq, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.h
  tail call void @llvm.assume(i1 %i.ba)
  %i.hs = zext i16 %.04561.us65 to i32
  %i.ht = lshr i32 %i.hs, %i.bb
  %i.hu = and i32 %i.ht, %i.bc                    ; 2 uses
  %i.hv = and i32 %i.hu, %i.be
  %i.hw = icmp eq i32 %i.hv, 0
  %i.hx = select i1 %i.hw, i32 %.neg.i, i32 0
  %.0.i.us = add nsw i32 %i.hx, %i.hu
  %i.hy = shl i32 %.0.i.us, 9
  %i.hz = or i32 %i.az, %i.hy
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.us
  %.sink = phi i32 [ %i.hz, %.split.us ], [ %i.at, %bb.h ]
  store i32 %.sink, ptr %i.hr, align 4, !tbaa !35
  %i.ia = add i16 %.04561.us65, 1                 ; 2 uses
  %.not52.us66 = icmp ugt i16 %i.ia, %i.ah
  br i1 %.not52.us66, label %._crit_edge, label %.lr.ph.split.split.us.split, !llvm.loop !6952

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %.04561 = phi i16 [ %i.ij, %bb.k ], [ %i.ad, %.lr.ph.split ] ; 2 uses
  %i.ib = zext i16 %.04561 to i64                 ; 2 uses
  %i.ic = icmp ugt i64 %i.aq, %i.ib
  br i1 %i.ic, label %bb.j, label %.split64.us

.split64.us:                                      ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us.split, %.lr.ph.split.split.us.split.us, %.lr.ph.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.51, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE5setupEbb) #22
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.split
  %i.id = load i8, ptr %0, align 8, !tbaa !6934, !range !112, !noundef !113
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ib
  br i1 %i.ie, label %.split49, label %bb.k

.split49:                                         ; preds = %bb.j
  %i.ig = load i8, ptr %i.u, align 1, !tbaa !6941, !range !112, !noundef !113
  %i.ih = trunc nuw i8 %i.ig to i1
  %spec.store.select = select i1 %i.ih, i32 %i.ay, i32 %i.ax
  %i.ii = or disjoint i32 %spec.store.select, -16777216
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split49
  %.sink101 = phi i32 [ %i.ii, %.split49 ], [ %i.at, %bb.j ]
  store i32 %.sink101, ptr %i.if, align 4, !tbaa !35
  %i.ij = add i16 %.04561, 1                      ; 2 uses
  %.not52 = icmp ugt i16 %i.ij, %i.ah
  br i1 %.not52, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !6953

._crit_edge:                                      ; preds = %bb.k, %bb.i, %bb.g, %.thread.us, %bb.f
  %i.ik = add nuw i64 %.04667, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ik, %i.t
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !6954

.critedge:                                        ; preds = %._crit_edge, %bb.e, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6924 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6928
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6882 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !6883
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #34
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !6882   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed18AbstractPrefixCodeINS_10VC5CodeTagEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6883
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #34
  br label %_ZN8rawspeed18AbstractPrefixCodeINS_10VC5CodeTagEED2Ev.exit

_ZN8rawspeed18AbstractPrefixCodeINS_10VC5CodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor15initVC5LogTableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1000) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !6879
  %i.c = invoke noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #31
          to label %.noexc.i unwind label %.loopexit.split-lp.i ; 4 uses

.noexc.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16384 ; 2 uses
  %i.e = sub nsw i32 16, %i.b
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i, %.noexc.i
  %.sroa.0.1 = phi ptr [ %i.c, %.noexc.i ], [ %.sroa.0.2, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.d, %.noexc.i ], [ %.sroa.13.3, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 3 uses
  %.val3.val.i.i = phi ptr [ %i.c, %.noexc.i ], [ %.val3.val.i6.i, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 5 uses
  %i.f = phi ptr [ %i.d, %.noexc.i ], [ %i.af, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 3 uses
  %.val3.val4.i.i = phi ptr [ %i.c, %.noexc.i ], [ %.sroa.9.0, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 4 uses
end_hunk_0
