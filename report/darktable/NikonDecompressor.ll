inline.NumInlined: 1176
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj:.noexc
  %bound1214 = icmp ult ptr %scevgep204, %scevgep203
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  br i1 %conflict.rdx216, label %.lr.ph104.split.us.preheader242, label %vector.ph219

vector.ph219:                                     ; preds = %vector.memcheck200
  %i.de = and i64 %i.bs, 31                       ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  %i.dg = select i1 %i.df, i64 32, i64 %i.de
  %n.vec220 = sub i64 %i.bs, %i.dg                ; 3 uses
  %i.dh = shl i64 %n.vec220, 1
  %i.di = add i64 %i.dh, %i.bn
  %i.dj = add nuw nsw i64 %i.bn, 14
  %invariant.gep250 = getelementptr i8, ptr %i.as, i64 %i.bn
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph219
  %index225 = phi i64 [ 0, %vector.ph219 ], [ %index.next234, %vector.body224 ] ; 3 uses
  %i.dk = phi i64 [ %i.dj, %vector.ph219 ], [ %i.dt, %vector.body224 ] ; 2 uses
  %i.dl = shl nuw i64 %index225, 1
  %gep251 = getelementptr i8, ptr %invariant.gep250, i64 %i.dl ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %gep251, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %gep251, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %gep251, i64 48
  %wide.load230 = load <8 x i16>, ptr %gep251, align 1, !alias.scope !44
  %wide.load231 = load <8 x i16>, ptr %i.dm, align 1, !alias.scope !44
  %wide.load232 = load <8 x i16>, ptr %i.dn, align 1, !alias.scope !44
  %wide.load233 = load <8 x i16>, ptr %i.do, align 1, !alias.scope !44
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index225 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  store <8 x i16> %wide.load230, ptr %i.dp, align 2, !tbaa !16, !alias.scope !47, !noalias !44
  store <8 x i16> %wide.load231, ptr %i.dq, align 2, !tbaa !16, !alias.scope !47, !noalias !44
  store <8 x i16> %wide.load232, ptr %i.dr, align 2, !tbaa !16, !alias.scope !47, !noalias !44
  store <8 x i16> %wide.load233, ptr %i.ds, align 2, !tbaa !16, !alias.scope !47, !noalias !44
  %index.next234 = add nuw i64 %index225, 32      ; 2 uses
  %i.dt = add nuw nsw i64 %i.dk, 64
  %i.du = icmp eq i64 %index.next234, %n.vec220
  br i1 %i.du, label %middle.block236, label %vector.body224, !llvm.loop !49

middle.block236:                                  ; preds = %vector.body224
  %i.dv = trunc i64 %i.dk to i32
  %i.dw = add i32 %i.dv, 50
  store i32 %i.dw, ptr %i.af, align 8, !tbaa !25, !alias.scope !50, !noalias !52
  br label %.lr.ph104.split.us.preheader242

.lr.ph104.split.us.preheader242:                  ; preds = %vector.memcheck200, %.lr.ph104.split.us.preheader, %middle.block236
  %indvars.iv126.ph = phi i64 [ %i.bn, %vector.memcheck200 ], [ %i.bn, %.lr.ph104.split.us.preheader ], [ %i.di, %middle.block236 ]
  %.067103.us.ph = phi i64 [ 0, %vector.memcheck200 ], [ 0, %.lr.ph104.split.us.preheader ], [ %n.vec220, %middle.block236 ]
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader242, %bb.h
  %indvars.iv126 = phi i64 [ %i.dx, %bb.h ], [ %indvars.iv126.ph, %.lr.ph104.split.us.preheader242 ] ; 2 uses
  %.067103.us = phi i64 [ %i.ec, %bb.h ], [ %.067103.us.ph, %.lr.ph104.split.us.preheader242 ] ; 2 uses
  %i.dx = add nuw nsw i64 %indvars.iv126, 2       ; 3 uses
  %.not.i.i.i.i.i.i76.us = icmp samesign ugt i64 %i.dx, %i.al
  br i1 %.not.i.i.i.i.i.i76.us, label %.split.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph104.split.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv126
  %.0.copyload.i.i.i.i.i.i77.us = load i16, ptr %i.dy, align 1
  %i.dz = trunc nuw i64 %i.dx to i32
  store i32 %i.dz, ptr %i.af, align 8, !tbaa !25
  %i.ea = mul nuw nsw i64 %.067103.us, %i.bm
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ea
  store i16 %.0.copyload.i.i.i.i.i.i77.us, ptr %i.eb, align 2, !tbaa !16
  %i.ec = add nuw nsw i64 %.067103.us, 1          ; 2 uses
  %exitcond129.not = icmp eq i64 %i.ec, %i.bl
  br i1 %exitcond129.not, label %.preheader, label %.lr.ph104.split.us, !llvm.loop !53

.preheader:                                       ; preds = %bb.i, %bb.h, %.preheader99
  %.not113 = icmp eq i32 %i.bi, 0
  br i1 %.not113, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader
  %i.ed = zext i32 %.068 to i64                   ; 3 uses
  %xtraiter = and i64 %i.bj, 1
  %i.ee = icmp eq i32 %i.bi, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.lr.ph107
  %unroll_iter = and i64 %i.bj, 4294967294
  br label %bb.k

.lr.ph104.split:                                  ; preds = %.lr.ph104.split.preheader243, %bb.i
  %indvars.iv122 = phi i64 [ %i.ef, %bb.i ], [ %indvars.iv122.ph, %.lr.ph104.split.preheader243 ] ; 2 uses
  %.067103 = phi i64 [ %i.el, %bb.i ], [ %.067103.ph, %.lr.ph104.split.preheader243 ] ; 2 uses
  %i.ef = add nuw nsw i64 %indvars.iv122, 2       ; 3 uses
  %.not.i.i.i.i.i.i76 = icmp samesign ugt i64 %i.ef, %i.al
  br i1 %.not.i.i.i.i.i.i76, label %.split.us, label %bb.i

.split.us:                                        ; preds = %.lr.ph104.split, %.lr.ph104.split.us
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #16
          to label %.noexc79 unwind label %bb.j

.noexc79:                                         ; preds = %.split.us
  unreachable

bb.i:                                             ; preds = %.lr.ph104.split
  %i.eg = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv122
  %.0.copyload.i.i.i.i.i.i77 = load i16, ptr %i.eg, align 1
  %i.eh = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i77)
  %i.ei = trunc nuw i64 %i.ef to i32
  store i32 %i.ei, ptr %i.af, align 8, !tbaa !25
  %i.ej = mul nuw nsw i64 %.067103, %i.bm
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ej
  store i16 %i.eh, ptr %i.ek, align 2, !tbaa !16
  %i.el = add nuw nsw i64 %.067103, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond125.not, label %.preheader, label %.lr.ph104.split, !llvm.loop !54

bb.j:                                             ; preds = %.split.us
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

._crit_edge108.loopexit.unr-lcssa:                ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge108, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge108.loopexit.unr-lcssa, %.lr.ph107
  %.066106.epil.init = phi i64 [ 0, %.lr.ph107 ], [ %i.gw, %._crit_edge108.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod247 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.en = urem i64 %.066106.epil.init, %i.ed      ; 2 uses
  %i.eo = trunc nuw i64 %i.en to i32              ; 2 uses
  %i.ep = sub nuw i64 %.066106.epil.init, %i.en   ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = add i32 %.068, %i.eq
  %i.es = sub i32 %.068, %i.eo
  %i.et = and i64 %i.ep, 4294967295
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !16
  %i.ew = zext i16 %i.ev to i32
  %i.ex = mul i32 %i.es, %i.ew
  %i.ey = zext i32 %i.er to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !16
  %i.fb = zext i16 %i.fa to i32
  %i.fc = mul i32 %i.fb, %i.eo
  %i.fd = add i32 %i.fc, %i.ex
  %i.fe = udiv i32 %i.fd, %.068
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.066106.epil.init
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !16
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %.epil.preheader, %._crit_edge108.loopexit.unr-lcssa, %.preheader
  store i32 562, ptr %i.af, align 8, !tbaa !25
  %.not.i.i = icmp samesign ult i32 %i.ak, 562
  br i1 %.not.i.i, label %.invoke, label %_ZN8rawspeed10ByteStream11setPositionEj.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph107.new
  %.066106 = phi i64 [ 0, %.lr.ph107.new ], [ %i.gw, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph107.new ], [ %niter.next.1, %bb.k ]
  %i.fh = urem i64 %.066106, %i.ed                ; 2 uses
  %i.fi = trunc nuw i64 %i.fh to i32              ; 2 uses
  %i.fj = sub nuw i64 %.066106, %i.fh             ; 2 uses
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = add i32 %.068, %i.fk
  %i.fm = sub i32 %.068, %i.fi
  %i.fn = and i64 %i.fj, 4294967295
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !16
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul i32 %i.fm, %i.fq
  %i.fs = zext i32 %i.fl to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !16
  %i.fv = zext i16 %i.fu to i32
  %i.fw = mul i32 %i.fv, %i.fi
  %i.fx = add i32 %i.fw, %i.fr
  %i.fy = udiv i32 %i.fx, %.068
  %i.fz = trunc i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.066106
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !16
  %i.gb = or disjoint i64 %.066106, 1             ; 3 uses
  %i.gc = urem i64 %i.gb, %i.ed                   ; 2 uses
  %i.gd = trunc nuw i64 %i.gc to i32              ; 2 uses
  %i.ge = sub nuw i64 %i.gb, %i.gc                ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = add i32 %.068, %i.gf
  %i.gh = sub i32 %.068, %i.gd
  %i.gi = and i64 %i.ge, 4294967295
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !16
  %i.gl = zext i16 %i.gk to i32
  %i.gm = mul i32 %i.gh, %i.gl
  %i.gn = zext i32 %i.gg to i64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !16
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul i32 %i.gq, %i.gd
  %i.gs = add i32 %i.gr, %i.gm
  %i.gt = udiv i32 %i.gs, %.068
  %i.gu = trunc i32 %i.gt to i16
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gb
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !16
  %i.gw = add nuw i64 %.066106, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge108.loopexit.unr-lcssa, label %bb.k, !llvm.loop !55

_ZN8rawspeed10ByteStream11setPositionEj.exit:     ; preds = %._crit_edge108
  %.not.i.i.i.i.i.i82 = icmp samesign ult i32 %i.ak, 564
  br i1 %.not.i.i.i.i.i.i82, label %.invoke, label %bb.l

.invoke:                                          ; preds = %._crit_edge, %_ZN8rawspeed10ByteStream11setPositionEj.exit, %._crit_edge108
  %i.gx = phi ptr [ @.str.9, %._crit_edge108 ], [ @.str.7, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ @.str.7, %._crit_edge ]
  %i.gy = phi ptr [ @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj, %._crit_edge108 ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %_ZN8rawspeed10ByteStream11setPositionEj.exit ], [ @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj, %._crit_edge ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.gy) #16
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %_ZN8rawspeed10ByteStream11setPositionEj.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %i.as, i64 562
  %.0.copyload.i.i.i.i.i.i83 = load i16, ptr %i.gz, align 1 ; 2 uses
  %i.ha = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i83)
  %spec.select.i.i.i.i.i.i84 = select i1 %i.ar, i16 %.0.copyload.i.i.i.i.i.i83, i16 %i.ha
  store i32 564, ptr %i.af, align 8, !tbaa !25
  %i.hb = zext i16 %spec.select.i.i.i.i.i.i84 to i32
  store i32 %i.hb, ptr %5, align 4, !tbaa !56
  br label %.loopexit

bb.m:                                             ; preds = %bb.e
  %.not = icmp eq i32 %3, 70
  br i1 %.not, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.f, %bb.m
  %i.hc = add i16 %spec.select.i.i.i.i.i.i, -16386
  %or.cond7 = icmp ult i16 %i.hc, -16385
  br i1 %or.cond7, label %.invoke157, label %bb.n

.invoke157:                                       ; preds = %.thread, %bb.g
  %i.hd = phi ptr [ @.str, %bb.g ], [ @.str.1, %.thread ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.hd, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17NikonDecompressor11createCurveERNS_10ByteStreamEjjjPj, i32 noundef %i.ay) #16
          to label %.cont158 unwind label %bb.d

.cont158:                                         ; preds = %.invoke157
  unreachable

bb.n:                                             ; preds = %.thread
  %narrow = add nuw nsw i16 %spec.select.i.i.i.i.i.i, 1
  %i.he = zext nneg i16 %narrow to i64            ; 4 uses
  %i.hf = icmp samesign ult i64 %i.u, %i.he
  br i1 %i.hf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hg = sub nuw nsw i64 %i.he, %i.u
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.hg)
          to label %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge unwind label %bb.d

._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge:    ; preds = %bb.o
  %.pre131.pre = load ptr, ptr %0, align 8
  br label %.lr.ph102

bb.p:                                             ; preds = %bb.n
  %i.hh = icmp samesign ugt i64 %i.u, %i.he
  br i1 %i.hh, label %bb.q, label %.lr.ph102

bb.q:                                             ; preds = %bb.p
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.he ; 2 uses
  %.not.i.i87 = icmp eq ptr %.0.i.i.i.i.i153, %i.hi
  br i1 %.not.i.i87, label %.lr.ph102, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.q
  store ptr %i.hi, ptr %i.v, align 8, !tbaa !18
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i, %bb.q, %bb.p, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge
  %.pre = phi ptr [ %.pre131.pre, %._ZNSt6vectorItSaItEE6resizeEm.exit_crit_edge ], [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %i.j, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.hj = load i32, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp sgt i32 %i.hj, -1
  %.promoted = load i32, ptr %i.af, align 8, !tbaa !25
  %i.hm = zext i32 %.promoted to i64
  %wide.trip.count = zext nneg i16 %spec.select.i.i.i.i.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph102, %bb.t
  %indvars.iv116 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next117, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ %i.hm, %.lr.ph102 ], [ %i.hn, %bb.t ] ; 2 uses
  %i.hn = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %.not.i.i.i.i.i.i89 = icmp samesign ugt i64 %i.hn, %i.hk
  br i1 %.not.i.i.i.i.i.i89, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #16
          to label %.noexc92 unwind label %bb.u

.noexc92:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ho = load i16, ptr %i.ap, align 4, !tbaa !33
  %i.hp = icmp eq i16 %i.ho, -8531
  %i.hq = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @llvm.assume(i1 %i.hl)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i.i90 = load i16, ptr %i.hr, align 1 ; 2 uses
  %i.hs = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i90)
  %spec.select.i.i.i.i.i.i91 = select i1 %i.hp, i16 %.0.copyload.i.i.i.i.i.i90, i16 %i.hs
  %i.ht = trunc nuw i64 %i.hn to i32
  store i32 %i.ht, ptr %i.af, align 8, !tbaa !25
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv116
  store i16 %spec.select.i.i.i.i.i.i91, ptr %i.hu, align 2, !tbaa !16
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond121.not, label %.loopexit, label %bb.r, !llvm.loop !57

bb.u:                                             ; preds = %bb.s
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit:                                        ; preds = %bb.t, %bb.m, %bb.l
  %i.hw = phi ptr [ %i.j, %bb.m ], [ %i.j, %bb.l ], [ %.pre, %bb.t ] ; 3 uses
  %i.hx = load ptr, ptr %i.v, align 8, !tbaa !18  ; 3 uses
  %i.hy = icmp eq ptr %i.hx, %i.hw
  br i1 %i.hy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef -1)
          to label %_ZNSt6vectorItSaItEE6resizeEm.exit97 unwind label %bb.d

bb.w:                                             ; preds = %.loopexit
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = getelementptr i8, ptr %i.hw, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 -2     ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.hx, %i.id
  br i1 %.not.i.i94, label %_ZNSt6vectorItSaItEE6resizeEm.exit97, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95:      ; preds = %bb.w
  store ptr %i.id, ptr %i.v, align 8, !tbaa !18
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit97

bb.x:                                             ; preds = %bb.u, %bb.j, %bb.d
  %.pn = phi { ptr, i32 } [ %i.be, %bb.d ], [ %i.em, %bb.j ], [ %i.hv, %bb.u ]
  %i.ie = load ptr, ptr %0, align 8, !tbaa !11    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.if = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.ie to i64
  %i.ii = sub i64 %i.ig, %i.ih
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ii) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEE6resizeEm.exit97:             ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i95, %bb.w, %bb.v
  ret void

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.y, %bb.x
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17NikonDecompressor23createPrefixCodeDecoderINS_20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS3_EEEEEET_j(ptr dead_on_unwind noalias writable sret(%"class.rawspeed::PrefixCodeLUTDecoder") align 8 %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rawspeed::PrefixCode", align 8 ; 6 uses
  %3 = alloca %"class.rawspeed::HuffmanCode", align 8 ; 12 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj:bb.a

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block205
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.da, %iter.check193 ], [ %i.di, %vec.epilog.iter.check195 ], [ %i.dp, %vec.epilog.middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.dc, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !56
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ds, %i.db
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !315

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block205, %middle.block190
  %i.dt = icmp sgt i64 %i.cw, 4
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !303

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cz, ptr align 4 %i.cl, i64 %i.cw, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.du = icmp eq i64 %i.cw, 4
  br i1 %i.du, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load i32, ptr %i.cl, align 4, !tbaa !56
  store i32 %i.dv, ptr %i.cz, align 4, !tbaa !56
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %2 ; 3 uses
  %i.dx = sub i64 %i.f, %i.cv                     ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 4
  br i1 %i.dy, label %bb.u, label %bb.v, !prof !303

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 4 %1, i64 %i.dx, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.dz = icmp eq i64 %i.dx, 4
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = load i32, ptr %1, align 4, !tbaa !56
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !56
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = sub i64 %i.e, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ec) #24
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !80
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !84
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ed, ptr %i.a, align 8, !tbaa !81
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = zext i1 %2 to i8
  store i8 %i.a, ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !77
  br i1 %1, label %bb.b, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !291  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 1 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.g
  br i1 %i.j, label %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.04.07.i.i = phi ptr [ %i.i, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.k = load i8, ptr %.sroa.04.07.i.i, align 1, !tbaa !85 ; 2 uses
  %i.l = icmp ult i8 %i.k, 17
  br i1 %i.l, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = zext i8 %i.k to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE29verifyCodeValuesAsDiffLengthsEv, i32 noundef %i.m, i32 noundef 16) #16
  unreachable

_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit: ; preds = %bb.c, %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !80   ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 3 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 1                 ; 3 uses
  %i.ad = icmp ugt i64 %i.v, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit
  %i.ae = sub nuw nsw i64 %i.v, %i.ac
  tail call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.x, i64 noundef %i.ae, ptr noundef nonnull align 2 dereferenceable(2) @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE)
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !84
  %.pre23 = load ptr, ptr %i.o, align 8, !tbaa !80 ; 2 uses
  %.pre26 = ptrtoint ptr %.pre to i64
  %.pre27 = ptrtoint ptr %.pre23 to i64
  %.pre29 = sub i64 %.pre26, %.pre27
  %.pre31 = ashr exact i64 %.pre29, 2
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

bb.f:                                             ; preds = %_ZN8rawspeed28AbstractPrefixCodeTranscoderINS_15BaselineCodeTagEE5setupEbb.exit
  %i.af = icmp ult i64 %i.v, %i.ac
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !18
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit

_ZNSt6vectorItSaItEE6resizeEmRKt.exit:            ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi32 = phi i64 [ %.pre31, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.v, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ah = phi ptr [ %.pre23, %bb.e ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !18 ; 3 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 1                 ; 3 uses
  %i.aq = icmp ugt i64 %.pre-phi32, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorItSaItEE6resizeEmRKt.exit
  %i.ar = sub nuw nsw i64 %.pre-phi32, %i.ap
  tail call void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr %i.ak, i64 noundef %i.ar, ptr noundef nonnull align 2 dereferenceable(2) @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE12MaxCodeValueE)
  %.pre24 = load ptr, ptr %i.p, align 8, !tbaa !84
  %.pre25 = load ptr, ptr %i.o, align 8, !tbaa !80 ; 2 uses
  %.pre33 = ptrtoint ptr %.pre24 to i64
  %.pre35 = ptrtoint ptr %.pre25 to i64
  %.pre37 = sub i64 %.pre33, %.pre35
  %.pre39 = ashr exact i64 %.pre37, 2
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17

bb.i:                                             ; preds = %_ZNSt6vectorItSaItEE6resizeEmRKt.exit
  %i.as = icmp ult i64 %.pre-phi32, %i.ap
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %.pre-phi32 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ak, %i.at
  br i1 %.not.i.i15, label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16:      ; preds = %bb.j
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !18
  br label %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17

_ZNSt6vectorItSaItEE6resizeEmRKt.exit17:          ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16
  %.pre-phi40 = phi i64 [ %.pre39, %bb.h ], [ %.pre-phi32, %bb.i ], [ %.pre-phi32, %bb.j ], [ %.pre-phi32, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16 ]
  %i.au = phi ptr [ %.pre25, %bb.h ], [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i16 ]
  %i.av = add nsw i64 %.pre-phi40, -1             ; 2 uses
  %.not19 = icmp eq i64 %i.av, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.k

._crit_edge:                                      ; preds = %bb.m, %_ZNSt6vectorItSaItEE6resizeEmRKt.exit17
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %i.ax = phi i64 [ 1, %.lr.ph ], [ %4, %bb.m ]   ; 3 uses
  %.021 = phi i32 [ 1, %.lr.ph ], [ %3, %bb.m ]
  %.01220 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.m ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !56 ; 2 uses
  %.not14 = icmp eq i32 %i.az, 0
  br i1 %.not14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = zext i32 %.01220 to i64
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !110 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !113
  %i.be = trunc i32 %.01220 to i16
  %i.bf = sub i16 %i.bd, %i.be
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.ax
  store i16 %i.bf, ptr %i.bh, align 2, !tbaa !16
  %i.bi = add i32 %i.az, %.01220                  ; 2 uses
  %i.bj = add i32 %i.bi, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !113
  %i.bn = load ptr, ptr %i.ai, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.ax
  store i16 %i.bm, ptr %i.bo, align 2, !tbaa !16
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi i32 [ %i.bi, %bb.l ], [ %.01220, %bb.k ]
  %3 = add i32 %.021, 1                           ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %.not = icmp ult i64 %i.av, %4
  br i1 %.not, label %._crit_edge, label %bb.k, !llvm.loop !316
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorItSaItEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPtS1_EEmRKt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 17 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 1
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i16, ptr %3, align 2, !tbaa !16     ; 9 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !303

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.d, ptr nonnull align 2 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i16, ptr %i.o, align 2, !tbaa !16
  store i16 %i.s, ptr %i.d, align 2, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !18
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 1                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !303

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.z, ptr align 2 %1, i64 %i.v, i1 false)
  br label %iter.check164

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPtS0_SaItEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 2
  br i1 %i.aa, label %bb.j, label %iter.check164

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -2
  %i.ac = load i16, ptr %1, align 2, !tbaa !16
  store i16 %i.ac, ptr %i.ab, align 2, !tbaa !16
  br label %iter.check164

iter.check164:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -2                   ; 3 uses
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check150 = icmp ult i64 %i.ae, 14
  br i1 %min.iters.check150, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %iter.check164
  %min.iters.check152 = icmp ult i64 %i.ae, 126
  br i1 %min.iters.check152, label %vec.epilog.ph168, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.ah = and i64 %i.ag, 56
  %n.vec154 = and i64 %i.ag, -64                  ; 4 uses
  %i.ai = shl i64 %n.vec154, 1
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %broadcast.splatinsert155 = insertelement <16 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat156 = shufflevector <16 x i16> %broadcast.splatinsert155, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.ak = shl i64 %index158, 1
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep159, i64 32
  %i.am = getelementptr i8, ptr %next.gep159, i64 64
  %i.an = getelementptr i8, ptr %next.gep159, i64 96
  store <16 x i16> %broadcast.splat156, ptr %next.gep159, align 2, !tbaa !16
  store <16 x i16> %broadcast.splat156, ptr %i.al, align 2, !tbaa !16
  store <16 x i16> %broadcast.splat156, ptr %i.am, align 2, !tbaa !16
  store <16 x i16> %broadcast.splat156, ptr %i.an, align 2, !tbaa !16
  %index.next160 = add nuw i64 %index158, 64      ; 2 uses
  %i.ao = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.ao, label %middle.block161, label %vector.body157, !llvm.loop !317

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.ag, %n.vec154
  br i1 %cmp.n162, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block161
  %min.epilog.iters.check167 = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph168, !prof !23

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check166
  %vec.epilog.resume.val163 = phi i64 [ %n.vec154, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec169 = and i64 %i.ag, -8                   ; 3 uses
  %i.ap = shl i64 %n.vec169, 1
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %broadcast.splatinsert170 = insertelement <8 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat171 = shufflevector <8 x i16> %broadcast.splatinsert170, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph168
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 2 uses
  %i.ar = shl i64 %index173, 1
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.ar
  store <8 x i16> %broadcast.splat171, ptr %next.gep174, align 2, !tbaa !16
  %index.next175 = add nuw i64 %index173, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.as, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !318

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %i.ag, %n.vec169
  br i1 %cmp.n177, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.06.i.i.i.ph = phi ptr [ %1, %iter.check164 ], [ %i.aj, %vec.epilog.iter.check166 ], [ %i.aq, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %i.i, ptr %.06.i.i.i, align 2, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPttEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !319

bb.k:                                             ; preds = %bb.c
  %i.au = icmp eq i64 %2, %i.l
  br i1 %i.au, label %_ZSt24__uninitialized_fill_n_aIPtmttET_S1_T0_RKT1_RSaIT2_E.exit, label %iter.check

iter.check:                                       ; preds = %bb.k
  %i.av = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.av, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 4 uses
  %i.ax = shl i64 %2, 1
  %i.ay = add i64 %i.ax, -2
  %i.az = sub i64 %i.ay, %i.k                     ; 3 uses
  %i.ba = lshr i64 %i.az, 1
  %i.bb = add nuw i64 %i.ba, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.az, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.az, 126
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.bb, 56
  %n.vec = and i64 %i.bb, -64                     ; 4 uses
  %i.bd = shl i64 %n.vec, 1
  %i.be = getelementptr i8, ptr %i.d, i64 %i.bd
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bf ; 4 uses
  %i.bg = getelementptr i8, ptr %next.gep, i64 32
  %i.bh = getelementptr i8, ptr %next.gep, i64 64
  %i.bi = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !16
  store <16 x i16> %broadcast.splat, ptr %i.bg, align 2, !tbaa !16
  store <16 x i16> %broadcast.splat, ptr %i.bh, align 2, !tbaa !16
  store <16 x i16> %broadcast.splat, ptr %i.bi, align 2, !tbaa !16
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
end_hunk_1
