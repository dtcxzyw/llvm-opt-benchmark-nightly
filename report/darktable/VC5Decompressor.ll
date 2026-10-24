Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/VC5Decompressor?download=true
inline.NumInlined: 1818
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IjSaIjEE:bb.a
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph24, label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.014.023 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bo, %bb.p ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.014.023, i64 4
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !6807
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !289
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !289
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.014.023, i64 8 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bb
  br i1 %i.bp, label %.preheader, label %bb.p

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %i.bq = phi ptr [ %i.br, %.lr.ph24 ], [ %i.bf, %.preheader ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !289
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph24, label %._crit_edge, !llvm.loop !6975

._crit_edge:                                      ; preds = %.lr.ph24
  store ptr %i.bq, ptr %i.ar, align 8, !tbaa !6813
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.preheader
  invoke void @_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEE17verifyCodeSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.r unwind label %bb.i

bb.r:                                             ; preds = %bb.q
  ret void

_ZNSt6vectorIjSaIjEED2Ev.exit8.sink.split:        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit11, %bb.d
  %.sink40 = phi ptr [ %i.i, %bb.d ], [ %i.aq, %_ZNSt6vectorIjSaIjEED2Ev.exit11 ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ae, %_ZNSt6vectorIjSaIjEED2Ev.exit11 ]
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !6794
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
define linkonce_odr hidden void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8rawspeed23PrefixCodeVectorDecoderINS_10VC5CodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6825 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !6826 ; 2 uses
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
  store ptr %i.k, ptr %i.b, align 8, !tbaa !6825
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !6811 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !6810 ; 3 uses
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
  %.04767 = phi i64 [ 0, %.lr.ph68 ], [ %i.hm, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.04767 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !6807
  %.fr73 = freeze i8 %i.x                         ; 2 uses
  %i.y = zext i8 %.fr73 to i32                    ; 6 uses
  %i.z = icmp ult i8 %.fr73, 12
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !6806
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
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !6793
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.04767
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !289
  %.fr71 = freeze i32 %i.ak                       ; 7 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !6825
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !6826 ; 8 uses
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
  %.not.not = icmp eq i32 %.fr71, 0
  %i.ba = icmp ult i32 %i.au, 12
  %i.bb = sub nuw nsw i32 11, %i.au               ; 2 uses
  %notmask = shl nsw i32 -1, %.fr71               ; 2 uses
  %i.bc = xor i32 %notmask, -1                    ; 2 uses
  %i.bd = add i32 %.fr71, -1
  %i.be = shl nuw i32 1, %i.bd                    ; 2 uses
  %.neg.i = add nuw nsw i32 %notmask, 1           ; 2 uses
  br i1 %or.cond4, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.mask164 = and i32 %i.ac, 65535
  %i.bf = zext nneg i32 %.mask164 to i64
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
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader166, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.us.preheader
  %.mask165 = and i32 %i.ac, 65535
  %i.bq = zext nneg i32 %.mask165 to i64
  %i.br = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.bq)
  %i.bs = and i32 %i.ag, 65535
  %i.bt = add nuw nsw i32 %i.bs, 1
  %i.bu = add i32 %i.ac, 1
  %i.bv = and i32 %i.bu, 65535
  %i.bw = tail call i32 @llvm.usub.sat.i32(i32 %i.bt, i32 %i.bv)
  %i.bx = zext nneg i32 %i.bw to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bx) ; 2 uses
  %i.by = trunc i64 %umin to i16                  ; 2 uses
  %i.bz = xor i16 %i.ad, -1
  %i.ca = icmp ult i16 %i.bz, %i.by
  %i.cb = sub i16 -2, %i.ad
  %i.cc = icmp ult i16 %i.cb, %i.by
  %i.cd = icmp samesign ugt i64 %umin, 65535
  %i.ce = or i1 %i.cc, %i.cd
  %i.cf = or i1 %i.ca, %i.ce
  br i1 %i.cf, label %.lr.ph.split.us.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.cg = and i32 %i.bp, 31                       ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = select i1 %i.ch, i32 32, i32 %i.cg
  %n.vec = sub nsw i32 %i.bp, %i.ci               ; 2 uses
  %i.cj = trunc i32 %n.vec to i16
  %i.ck = add i16 %i.ad, %i.cj
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat110 = shufflevector <8 x i32> %broadcast.splatinsert109, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cl = load i8, ptr %0, align 8, !tbaa !6821
  %i.cm = trunc i8 %i.cl to i1
  %i.cn = insertelement <8 x i1> poison, i1 %i.cm, i64 0
  %i.co = shufflevector <8 x i1> %i.cn, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.cp = select <8 x i1> %i.co, <8 x i32> %broadcast.splat, <8 x i32> %broadcast.splat110 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = trunc i32 %index to i16
  %i.cr = add i16 %i.ad, %i.cq
  %i.cs = zext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cs ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  store <8 x i32> %i.cp, ptr %i.ct, align 4, !tbaa !289
  store <8 x i32> %i.cp, ptr %i.cu, align 4, !tbaa !289
  store <8 x i32> %i.cp, ptr %i.cv, align 4, !tbaa !289
  store <8 x i32> %i.cp, ptr %i.cw, align 4, !tbaa !289
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.cx = icmp eq i32 %index.next, %n.vec
  br i1 %i.cx, label %.lr.ph.split.us.preheader166, label %vector.body, !llvm.loop !6976

.lr.ph.split.us.preheader166:                     ; preds = %vector.body, %vector.scevcheck, %.lr.ph.split.us.preheader
  %.04561.us.ph = phi i16 [ %i.ad, %vector.scevcheck ], [ %i.ad, %.lr.ph.split.us.preheader ], [ %i.ck, %vector.body ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader166, %.thread.us
  %.04561.us = phi i16 [ %i.dd, %.thread.us ], [ %.04561.us.ph, %.lr.ph.split.us.preheader166 ] ; 2 uses
  %i.cy = zext i16 %.04561.us to i64              ; 2 uses
  %i.cz = icmp ugt i64 %i.aq, %i.cy
  br i1 %i.cz, label %.thread.us, label %.split64.us

.thread.us:                                       ; preds = %.lr.ph.split.us
  %i.da = load i8, ptr %0, align 8, !tbaa !6821, !range !305, !noundef !306
  %i.db = trunc nuw i8 %i.da to i1
  %spec.select = select i1 %i.db, i32 %i.as, i32 %i.at
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cy
  store i32 %spec.select, ptr %i.dc, align 4, !tbaa !289
  %i.dd = add i16 %.04561.us, 1                   ; 2 uses
  %.not52.us = icmp ugt i16 %i.dd, %i.ah
  br i1 %.not52.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !6977

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.aw, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.mask162 = and i32 %i.ac, 65535
  %i.de = zext nneg i32 %.mask162 to i64
  %i.df = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.de)
  %i.dg = and i32 %i.ag, 65535
  %i.dh = add nuw nsw i32 %i.dg, 1
  %i.di = add i32 %i.ac, 1
  %i.dj = and i32 %i.di, 65535
  %i.dk = tail call i32 @llvm.usub.sat.i32(i32 %i.dh, i32 %i.dj)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = tail call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dl) ; 3 uses
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %i.do = add nuw nsw i32 %i.dn, 1                ; 4 uses
  br i1 %.not.not, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %min.iters.check137 = icmp samesign ult i64 %i.dm, 24
  br i1 %min.iters.check137, label %.lr.ph.split.split.us.split.preheader170, label %vector.scevcheck132

.lr.ph.split.split.us.split.preheader170:         ; preds = %vector.body154, %vector.scevcheck132, %.lr.ph.split.split.us.split.preheader
  %.04561.us65.ph = phi i16 [ %i.ad, %vector.scevcheck132 ], [ %i.ad, %.lr.ph.split.split.us.split.preheader ], [ %i.ej, %vector.body154 ]
  br label %.lr.ph.split.split.us.split

vector.scevcheck132:                              ; preds = %.lr.ph.split.split.us.split.preheader
  %.mask161 = and i32 %i.ac, 65535
  %i.dp = zext nneg i32 %.mask161 to i64
  %i.dq = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.dp)
  %i.dr = and i32 %i.ag, 65535
  %i.ds = add nuw nsw i32 %i.dr, 1
  %i.dt = add i32 %i.ac, 1
  %i.du = and i32 %i.dt, 65535
  %i.dv = tail call i32 @llvm.usub.sat.i32(i32 %i.ds, i32 %i.du)
  %i.dw = zext nneg i32 %i.dv to i64
  %umin135 = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.dw) ; 2 uses
  %i.dx = trunc i64 %umin135 to i16               ; 2 uses
  %i.dy = xor i16 %i.ad, -1
  %i.dz = icmp ult i16 %i.dy, %i.dx
  %i.ea = sub i16 -2, %i.ad
  %i.eb = icmp ult i16 %i.ea, %i.dx
  %i.ec = icmp samesign ugt i64 %umin135, 65535
  %i.ed = or i1 %i.eb, %i.ec
  %i.ee = or i1 %i.dz, %i.ed
  br i1 %i.ee, label %.lr.ph.split.split.us.split.preheader170, label %vector.ph138

vector.ph138:                                     ; preds = %vector.scevcheck132
  %i.ef = and i32 %i.do, 7                        ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = select i1 %i.eg, i32 8, i32 %i.ef
  %n.vec139 = sub nsw i32 %i.do, %i.eh            ; 2 uses
  %i.ei = trunc i32 %n.vec139 to i16
  %i.ej = add i16 %i.ad, %i.ei
  %broadcast.splatinsert140 = insertelement <8 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat141 = shufflevector <8 x i32> %broadcast.splatinsert140, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat143 = shufflevector <8 x i32> %broadcast.splatinsert142, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert144 = insertelement <8 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat145 = shufflevector <8 x i32> %broadcast.splatinsert144, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <8 x i32> poison, i32 %.neg.i, i64 0
  %broadcast.splat147 = shufflevector <8 x i32> %broadcast.splatinsert146, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert148 = insertelement <8 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat149 = shufflevector <8 x i32> %broadcast.splatinsert148, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert150 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat151 = shufflevector <8 x i32> %broadcast.splatinsert150, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert152 = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat153 = shufflevector <8 x i16> %broadcast.splatinsert152, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat153, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %i.ek = load i8, ptr %0, align 8, !tbaa !6821
  %i.el = trunc i8 %i.ek to i1
  %i.em = insertelement <8 x i1> poison, i1 %i.el, i64 0
  %i.en = shufflevector <8 x i1> %i.em, <8 x i1> poison, <8 x i32> zeroinitializer
  %invariant.op = and <8 x i32> %broadcast.splat143, %broadcast.splat145
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph138
  %index155 = phi i32 [ 0, %vector.ph138 ], [ %index.next158, %vector.body154 ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph138 ], [ %vec.ind.next, %vector.body154 ] ; 2 uses
  %i.eo = trunc i32 %index155 to i16
  %i.ep = add i16 %i.ad, %i.eo
  %i.eq = zext i16 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.eq
  %i.es = zext <8 x i16> %vec.ind to <8 x i32>
  %i.et = lshr <8 x i32> %i.es, %broadcast.splat141 ; 2 uses
  %i.eu = and <8 x i32> %i.et, %broadcast.splat143
  %.reass = and <8 x i32> %i.et, %invariant.op
  %i.ev = icmp eq <8 x i32> %.reass, zeroinitializer
  %i.ew = select <8 x i1> %i.ev, <8 x i32> %broadcast.splat147, <8 x i32> zeroinitializer
  %i.ex = add nsw <8 x i32> %i.ew, %i.eu
  %i.ey = shl <8 x i32> %i.ex, splat (i32 9)
  %i.ez = or <8 x i32> %broadcast.splat149, %i.ey
  %predphi = select <8 x i1> %i.en, <8 x i32> %i.ez, <8 x i32> %broadcast.splat151
  store <8 x i32> %predphi, ptr %i.er, align 4, !tbaa !289
  %index.next158 = add nuw i32 %index155, 8       ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 8)
  %i.fa = icmp eq i32 %index.next158, %n.vec139
  br i1 %i.fa, label %.lr.ph.split.split.us.split.preheader170, label %vector.body154, !llvm.loop !6978

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %min.iters.check118 = icmp samesign ult i64 %i.dm, 32
  br i1 %min.iters.check118, label %.lr.ph.split.split.us.split.us.preheader167, label %vector.scevcheck113

vector.scevcheck113:                              ; preds = %.lr.ph.split.split.us.split.us.preheader
  %.mask163 = and i32 %i.ac, 65535
  %i.fb = zext nneg i32 %.mask163 to i64
  %i.fc = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %i.fb)
  %i.fd = and i32 %i.ag, 65535
  %i.fe = add nuw nsw i32 %i.fd, 1
  %i.ff = add i32 %i.ac, 1
  %i.fg = and i32 %i.ff, 65535
  %i.fh = tail call i32 @llvm.usub.sat.i32(i32 %i.fe, i32 %i.fg)
  %i.fi = zext nneg i32 %i.fh to i64
  %umin116 = tail call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.fi) ; 2 uses
  %i.fj = trunc i64 %umin116 to i16               ; 2 uses
  %i.fk = xor i16 %i.ad, -1
  %i.fl = icmp ult i16 %i.fk, %i.fj
  %i.fm = sub i16 -2, %i.ad
  %i.fn = icmp ult i16 %i.fm, %i.fj
  %i.fo = icmp samesign ugt i64 %umin116, 65535
  %i.fp = or i1 %i.fn, %i.fo
  %i.fq = or i1 %i.fl, %i.fp
  br i1 %i.fq, label %.lr.ph.split.split.us.split.us.preheader167, label %vector.ph119

vector.ph119:                                     ; preds = %vector.scevcheck113
  %i.fr = and i32 %i.do, 31                       ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = select i1 %i.fs, i32 32, i32 %i.fr
  %n.vec120 = sub nsw i32 %i.do, %i.ft            ; 2 uses
  %i.fu = trunc i32 %n.vec120 to i16
  %i.fv = add i16 %i.ad, %i.fu
  %broadcast.splatinsert121 = insertelement <8 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat122 = shufflevector <8 x i32> %broadcast.splatinsert121, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat124 = shufflevector <8 x i32> %broadcast.splatinsert123, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fw = load i8, ptr %0, align 8, !tbaa !6821
  %i.fx = trunc i8 %i.fw to i1
  %i.fy = insertelement <8 x i1> poison, i1 %i.fx, i64 0
  %i.fz = shufflevector <8 x i1> %i.fy, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.ga = select <8 x i1> %i.fz, <8 x i32> %broadcast.splat122, <8 x i32> %broadcast.splat124 ; 4 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph119
  %index126 = phi i32 [ 0, %vector.ph119 ], [ %index.next129, %vector.body125 ] ; 2 uses
  %i.gb = trunc i32 %index126 to i16
  %i.gc = add i16 %i.ad, %i.gb
  %i.gd = zext i16 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.gd ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 96
  store <8 x i32> %i.ga, ptr %i.ge, align 4, !tbaa !289
  store <8 x i32> %i.ga, ptr %i.gf, align 4, !tbaa !289
  store <8 x i32> %i.ga, ptr %i.gg, align 4, !tbaa !289
  store <8 x i32> %i.ga, ptr %i.gh, align 4, !tbaa !289
  %index.next129 = add nuw i32 %index126, 32      ; 2 uses
  %i.gi = icmp eq i32 %index.next129, %n.vec120
  br i1 %i.gi, label %.lr.ph.split.split.us.split.us.preheader167, label %vector.body125, !llvm.loop !6979

.lr.ph.split.split.us.split.us.preheader167:      ; preds = %vector.body125, %vector.scevcheck113, %.lr.ph.split.split.us.split.us.preheader
  %.04561.us65.us.ph = phi i16 [ %i.ad, %vector.scevcheck113 ], [ %i.ad, %.lr.ph.split.split.us.split.us.preheader ], [ %i.fv, %vector.body125 ]
  br label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.preheader167, %bb.g
  %.04561.us65.us = phi i16 [ %i.go, %bb.g ], [ %.04561.us65.us.ph, %.lr.ph.split.split.us.split.us.preheader167 ] ; 2 uses
  %i.gj = zext i16 %.04561.us65.us to i64         ; 2 uses
  %i.gk = icmp ugt i64 %i.aq, %i.gj
  br i1 %i.gk, label %bb.g, label %.split64.us

bb.g:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.gl = load i8, ptr %0, align 8, !tbaa !6821, !range !305, !noundef !306
  %i.gm = trunc nuw i8 %i.gl to i1
  %spec.select100 = select i1 %i.gm, i32 %i.az, i32 %i.at
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.gj
  store i32 %spec.select100, ptr %i.gn, align 4, !tbaa !289
  %i.go = add i16 %.04561.us65.us, 1              ; 2 uses
  %.not52.us66.us = icmp ugt i16 %i.go, %i.ah
  br i1 %.not52.us66.us, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !6980

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader170, %bb.i
  %.04561.us65 = phi i16 [ %i.hc, %bb.i ], [ %.04561.us65.ph, %.lr.ph.split.split.us.split.preheader170 ] ; 3 uses
  %i.gp = zext i16 %.04561.us65 to i64            ; 2 uses
  %i.gq = icmp ugt i64 %i.aq, %i.gp
  br i1 %i.gq, label %bb.h, label %.split64.us

bb.h:                                             ; preds = %.lr.ph.split.split.us.split
  %i.gr = load i8, ptr %0, align 8, !tbaa !6821, !range !305, !noundef !306
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.gp
  br i1 %i.gs, label %.split.us, label %bb.i

.split.us:                                        ; preds = %bb.h
  tail call void @llvm.assume(i1 %i.ba)
  %i.gu = zext i16 %.04561.us65 to i32
  %i.gv = lshr i32 %i.gu, %i.bb
  %i.gw = and i32 %i.gv, %i.bc                    ; 2 uses
  %i.gx = and i32 %i.gw, %i.be
  %i.gy = icmp eq i32 %i.gx, 0
  %i.gz = select i1 %i.gy, i32 %.neg.i, i32 0
  %.0.i.us = add nsw i32 %i.gz, %i.gw
  %i.ha = shl i32 %.0.i.us, 9
  %i.hb = or i32 %i.az, %i.ha
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.split.us
  %.sink = phi i32 [ %i.hb, %.split.us ], [ %i.at, %bb.h ]
  store i32 %.sink, ptr %i.gt, align 4, !tbaa !289
  %i.hc = add i16 %.04561.us65, 1                 ; 2 uses
  %.not52.us66 = icmp ugt i16 %i.hc, %i.ah
  br i1 %.not52.us66, label %._crit_edge, label %.lr.ph.split.split.us.split, !llvm.loop !6981

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.k
  %.04561 = phi i16 [ %i.hl, %bb.k ], [ %i.ad, %.lr.ph.split ] ; 2 uses
  %i.hd = zext i16 %.04561 to i64                 ; 2 uses
  %i.he = icmp ugt i64 %i.aq, %i.hd
  br i1 %i.he, label %bb.j, label %.split64.us

.split64.us:                                      ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us.split, %.lr.ph.split.split.us.split.us, %.lr.ph.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.51, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20PrefixCodeLUTDecoderINS_10VC5CodeTagENS_23PrefixCodeVectorDecoderIS1_EEE5setupEbb) #22
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.split
  %i.hf = load i8, ptr %0, align 8, !tbaa !6821, !range !305, !noundef !306
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.hd
  br i1 %i.hg, label %.split49, label %bb.k

.split49:                                         ; preds = %bb.j
  %i.hi = load i8, ptr %i.u, align 1, !tbaa !6822, !range !305, !noundef !306
  %i.hj = trunc nuw i8 %i.hi to i1
  %spec.store.select = select i1 %i.hj, i32 %i.ay, i32 %i.ax
  %i.hk = or disjoint i32 %spec.store.select, -16777216
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split49
  %.sink101 = phi i32 [ %i.hk, %.split49 ], [ %i.at, %bb.j ]
  store i32 %.sink101, ptr %i.hh, align 4, !tbaa !289
  %i.hl = add i16 %.04561, 1                      ; 2 uses
  %.not52 = icmp ugt i16 %i.hl, %i.ah
  br i1 %.not52, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !6982

._crit_edge:                                      ; preds = %bb.k, %bb.i, %bb.g, %.thread.us, %bb.f
  %i.hm = add nuw i64 %.04767, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.hm, %i.t
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !6983

.critedge:                                        ; preds = %._crit_edge, %bb.e, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10PrefixCodeINS_10VC5CodeTagEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6810 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !6812
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6793 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !6794
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #34
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_10VC5CodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !6793   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed18AbstractPrefixCodeINS_10VC5CodeTagEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !6794
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #34
  br label %_ZN8rawspeed18AbstractPrefixCodeINS_10VC5CodeTagEED2Ev.exit

_ZN8rawspeed18AbstractPrefixCodeINS_10VC5CodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed15VC5Decompressor15initVC5LogTableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1000) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !6791
  %i.c = tail call noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #33 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16384 ; 2 uses
  %i.e = sub nsw i32 16, %i.b
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i
  %.sroa.0.1 = phi ptr [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i ], [ %.sroa.0.2, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 3 uses
  %.sroa.15.1 = phi ptr [ %i.d, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i ], [ %.sroa.15.2, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 3 uses
  %.val3.val.i.i = phi ptr [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i ], [ %.val3.val.i7.i, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 4 uses
  %i.f = phi ptr [ %i.d, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i ], [ %i.ah, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 3 uses
  %.val3.val4.i.i = phi ptr [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i ], [ %.sroa.10.0, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ] ; 4 uses
  %.07.i.i = phi i32 [ 4096, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i ], [ %i.ai, %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i ]
  %i.g = ptrtoint ptr %.val3.val4.i.i to i64
  %i.h = ptrtoint ptr %.val3.val.i.i to i64       ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = uitofp i64 %i.j to double
  %i.l = fdiv double %i.k, 4.095000e+03
  %i.m = tail call double @pow(double noundef 1.130000e+02, double noundef %i.l) #35
  %i.n = fadd double %i.m, -1.000000e+00
  %i.o = fdiv double %i.n, 1.120000e+02
  %i.p = fmul double %i.o, 6.553500e+04
  %i.q = fptoui double %i.p to i32
  %i.r = lshr i32 %i.q, %i.e                      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val3.val4.i.i, %i.f
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.r, ptr %.val3.val4.i.i, align 4, !tbaa !289
  br label %_ZNSt20back_insert_iteratorISt6vectorIjSaIjEEEaSEOj.exit.i.i

bb.c:                                             ; preds = %bb.a
end_hunk_0
