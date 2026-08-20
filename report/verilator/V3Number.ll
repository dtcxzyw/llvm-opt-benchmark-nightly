inline.NumInlined: 2597
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) #4 align 2 {
bb.a:
  tail call void @_ZNK8V3Number10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3NumberC2EP7AstNodeNS_20VerilogStringLiteralERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) initializes((32, 37), (40, 56)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef 8, i1 noundef zeroext true)
          to label %.loopexit unwind label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  %.tr = trunc i64 %i.h to i32
  %i.k = shl i32 %.tr, 3
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %.sroa.speculated, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.u

.preheader:                                       ; preds = %bb.d
  %i.l = load i64, ptr %i.g, align 8, !tbaa !20   ; 5 uses
  %.not35 = icmp eq i64 %i.l, 0
  br i1 %.not35, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = load i8, ptr %i.b, align 4, !tbaa !42
  %i.n = add i8 %i.m, -1
  %spec.select.i.i = icmp ult i8 %i.n, 2
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.v, !prof !43

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = load i32, ptr %i.a, align 8, !tbaa !41
  %.fr36 = freeze i32 %i.o
  %i.p = icmp slt i32 %.fr36, 129
  %i.q = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  br i1 %i.p, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.t
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %bb.t ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.r = xor i64 %indvars.iv44, -1
  %i.s = add i64 %i.l, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = sdiv i32 %i.t, 4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v ; 16 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv44 ; 8 uses
  %i.y = srem i32 %i.t, 4
  %i.z = shl nsw i32 %i.y, 3
  %i.aa = zext i32 %i.z to i64                    ; 8 uses
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !23
  %i.ac = zext i8 %i.ab to i64                    ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.us = icmp eq i64 %i.ad, 0
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us
  %i.ae = shl nuw i64 1, %i.aa
  %i.af = load i32, ptr %i.w, align 8, !tbaa !44
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = or i32 %i.af, %i.ag
  store i32 %i.ah, ptr %i.w, align 8, !tbaa !44
  %.pre54 = load i8, ptr %i.x, align 1, !tbaa !23
  %.pre6189 = zext i8 %.pre54 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.split.us
  %.pre-phi = phi i64 [ %.pre6189, %bb.e ], [ %i.ac, %.lr.ph.split.split.us ] ; 2 uses
  %i.ai = and i64 %.pre-phi, 2
  %.not.us.1 = icmp eq i64 %i.ai, 0
  br i1 %.not.us.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = shl nuw i64 2, %i.aa
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !44
  %i.al = trunc i64 %i.aj to i32
  %i.am = or i32 %i.ak, %i.al
  store i32 %i.am, ptr %i.w, align 8, !tbaa !44
  %.pre55 = load i8, ptr %i.x, align 1, !tbaa !23
  %.pre6290 = zext i8 %.pre55 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi63 = phi i64 [ %.pre6290, %bb.g ], [ %.pre-phi, %bb.f ] ; 2 uses
  %i.an = and i64 %.pre-phi63, 4
  %.not.us.2 = icmp eq i64 %i.an, 0
  br i1 %.not.us.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = shl nuw i64 4, %i.aa
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !44
  %i.aq = trunc i64 %i.ao to i32
  %i.ar = or i32 %i.ap, %i.aq
  store i32 %i.ar, ptr %i.w, align 8, !tbaa !44
  %.pre56 = load i8, ptr %i.x, align 1, !tbaa !23
  %.pre6491 = zext i8 %.pre56 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi65 = phi i64 [ %.pre6491, %bb.i ], [ %.pre-phi63, %bb.h ] ; 2 uses
  %i.as = and i64 %.pre-phi65, 8
  %.not.us.3 = icmp eq i64 %i.as, 0
  br i1 %.not.us.3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = shl nuw i64 8, %i.aa
  %i.au = load i32, ptr %i.w, align 8, !tbaa !44
  %i.av = trunc i64 %i.at to i32
  %i.aw = or i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.w, align 8, !tbaa !44
  %.pre57 = load i8, ptr %i.x, align 1, !tbaa !23
  %.pre6692 = zext i8 %.pre57 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi67 = phi i64 [ %.pre6692, %bb.k ], [ %.pre-phi65, %bb.j ] ; 2 uses
  %i.ax = and i64 %.pre-phi67, 16
  %.not.us.4 = icmp eq i64 %i.ax, 0
  br i1 %.not.us.4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = shl nuw i64 16, %i.aa
  %i.az = load i32, ptr %i.w, align 8, !tbaa !44
  %i.ba = trunc i64 %i.ay to i32
  %i.bb = or i32 %i.az, %i.ba
  store i32 %i.bb, ptr %i.w, align 8, !tbaa !44
  %.pre58 = load i8, ptr %i.x, align 1, !tbaa !23
  %.pre6893 = zext i8 %.pre58 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi69 = phi i64 [ %.pre6893, %bb.m ], [ %.pre-phi67, %bb.l ] ; 2 uses
  %i.bc = and i64 %.pre-phi69, 32
  %.not.us.5 = icmp eq i64 %i.bc, 0
  br i1 %.not.us.5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = shl nuw i64 32, %i.aa
  %i.be = load i32, ptr %i.w, align 8, !tbaa !44
  %i.bf = trunc i64 %i.bd to i32
  %i.bg = or i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.w, align 8, !tbaa !44
  %.pre59 = load i8, ptr %i.x, align 1, !tbaa !23
  %.pre7094 = zext i8 %.pre59 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi71 = phi i64 [ %.pre7094, %bb.o ], [ %.pre-phi69, %bb.n ] ; 2 uses
  %i.bh = and i64 %.pre-phi71, 64
  %.not.us.6 = icmp eq i64 %i.bh, 0
  br i1 %.not.us.6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = shl nuw i64 64, %i.aa
  %i.bj = load i32, ptr %i.w, align 8, !tbaa !44
  %i.bk = trunc i64 %i.bi to i32
  %i.bl = or i32 %i.bj, %i.bk
  store i32 %i.bl, ptr %i.w, align 8, !tbaa !44
  %.pre60 = load i8, ptr %i.x, align 1, !tbaa !23
  %.pre7295 = zext i8 %.pre60 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre-phi73 = phi i64 [ %.pre7295, %bb.q ], [ %.pre-phi71, %bb.p ]
  %i.bm = and i64 %.pre-phi73, 128
  %.not.us.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.us.7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = shl nuw i64 128, %i.aa
  %i.bo = load i32, ptr %i.w, align 8, !tbaa !44
  %i.bp = trunc i64 %i.bn to i32
  %i.bq = or i32 %i.bo, %i.bp
  store i32 %i.bq, ptr %i.w, align 8, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next45 = add i64 %indvars.iv44, 1   ; 2 uses
  %3 = and i64 %indvars.iv.next45, 4294967295
  %4 = icmp ugt i64 %i.l, %3
  br i1 %4, label %.lr.ph.split.split.us, label %.loopexit, !llvm.loop !46

bb.u:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.bs = xor i64 %indvars.iv, -1
  %i.bt = add i64 %i.l, %i.bs
  %i.bu = trunc i64 %i.bt to i32                  ; 2 uses
  %i.bv = load ptr, ptr %0, align 8
  %i.bw = sdiv i32 %i.bu, 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bx ; 16 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv ; 8 uses
  %i.ca = srem i32 %i.bu, 4
  %i.cb = shl nsw i32 %i.ca, 3
  %i.cc = zext i32 %i.cb to i64                   ; 8 uses
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !23
  %i.ce = zext i8 %i.cd to i64                    ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.v:                                             ; preds = %.lr.ph
  %i.cg = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242)
          to label %.noexc unwind label %bb.w     ; 0 uses

.noexc:                                           ; preds = %bb.v
  %i.ch = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc25 unwind label %bb.w   ; 2 uses

.noexc25:                                         ; preds = %.noexc
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.118, i64 noundef 40)
          to label %.noexc26 unwind label %bb.w   ; 0 uses

.noexc26:                                         ; preds = %.noexc25
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc27 unwind label %bb.w

.noexc27:                                         ; preds = %.noexc26
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cj) #32
          to label %.noexc28 unwind label %bb.w

.noexc28:                                         ; preds = %.noexc27
  unreachable

bb.w:                                             ; preds = %.noexc25, %.noexc27, %.noexc26, %.noexc, %bb.v
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.x:                                             ; preds = %.lr.ph.split.split
  %i.cl = shl nuw i64 1, %i.cc
  %i.cm = load i32, ptr %i.by, align 4, !tbaa !44
  %i.cn = trunc i64 %i.cl to i32
  %i.co = or i32 %i.cm, %i.cn
  store i32 %i.co, ptr %i.by, align 4, !tbaa !44
  %.pre = load i8, ptr %i.bz, align 1, !tbaa !23
  %.pre7496 = zext i8 %.pre to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph.split.split, %bb.x
  %.pre-phi75 = phi i64 [ %i.ce, %.lr.ph.split.split ], [ %.pre7496, %bb.x ] ; 2 uses
  %i.cp = and i64 %.pre-phi75, 2
  %.not.1 = icmp eq i64 %i.cp, 0
  br i1 %.not.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = shl nuw i64 2, %i.cc
  %i.cr = load i32, ptr %i.by, align 4, !tbaa !44
  %i.cs = trunc i64 %i.cq to i32
  %i.ct = or i32 %i.cr, %i.cs
  store i32 %i.ct, ptr %i.by, align 4, !tbaa !44
  %.pre48 = load i8, ptr %i.bz, align 1, !tbaa !23
  %.pre7697 = zext i8 %.pre48 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre-phi77 = phi i64 [ %.pre7697, %bb.z ], [ %.pre-phi75, %bb.y ] ; 2 uses
  %i.cu = and i64 %.pre-phi77, 4
  %.not.2 = icmp eq i64 %i.cu, 0
  br i1 %.not.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = shl nuw i64 4, %i.cc
  %i.cw = load i32, ptr %i.by, align 4, !tbaa !44
  %i.cx = trunc i64 %i.cv to i32
  %i.cy = or i32 %i.cw, %i.cx
  store i32 %i.cy, ptr %i.by, align 4, !tbaa !44
  %.pre49 = load i8, ptr %i.bz, align 1, !tbaa !23
  %.pre7898 = zext i8 %.pre49 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi79 = phi i64 [ %.pre7898, %bb.ab ], [ %.pre-phi77, %bb.aa ] ; 2 uses
  %i.cz = and i64 %.pre-phi79, 8
  %.not.3 = icmp eq i64 %i.cz, 0
  br i1 %.not.3, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = shl nuw i64 8, %i.cc
  %i.db = load i32, ptr %i.by, align 4, !tbaa !44
  %i.dc = trunc i64 %i.da to i32
  %i.dd = or i32 %i.db, %i.dc
  store i32 %i.dd, ptr %i.by, align 4, !tbaa !44
  %.pre50 = load i8, ptr %i.bz, align 1, !tbaa !23
  %.pre8099 = zext i8 %.pre50 to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pre-phi81 = phi i64 [ %.pre8099, %bb.ad ], [ %.pre-phi79, %bb.ac ] ; 2 uses
  %i.de = and i64 %.pre-phi81, 16
  %.not.4 = icmp eq i64 %i.de, 0
  br i1 %.not.4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = shl nuw i64 16, %i.cc
  %i.dg = load i32, ptr %i.by, align 4, !tbaa !44
  %i.dh = trunc i64 %i.df to i32
  %i.di = or i32 %i.dg, %i.dh
  store i32 %i.di, ptr %i.by, align 4, !tbaa !44
  %.pre51 = load i8, ptr %i.bz, align 1, !tbaa !23
  %.pre82100 = zext i8 %.pre51 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pre-phi83 = phi i64 [ %.pre82100, %bb.af ], [ %.pre-phi81, %bb.ae ] ; 2 uses
  %i.dj = and i64 %.pre-phi83, 32
  %.not.5 = icmp eq i64 %i.dj, 0
  br i1 %.not.5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dk = shl nuw i64 32, %i.cc
  %i.dl = load i32, ptr %i.by, align 4, !tbaa !44
  %i.dm = trunc i64 %i.dk to i32
  %i.dn = or i32 %i.dl, %i.dm
  store i32 %i.dn, ptr %i.by, align 4, !tbaa !44
  %.pre52 = load i8, ptr %i.bz, align 1, !tbaa !23
  %.pre84101 = zext i8 %.pre52 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pre-phi85 = phi i64 [ %.pre84101, %bb.ah ], [ %.pre-phi83, %bb.ag ] ; 2 uses
  %i.do = and i64 %.pre-phi85, 64
  %.not.6 = icmp eq i64 %i.do, 0
  br i1 %.not.6, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dp = shl nuw i64 64, %i.cc
  %i.dq = load i32, ptr %i.by, align 4, !tbaa !44
  %i.dr = trunc i64 %i.dp to i32
  %i.ds = or i32 %i.dq, %i.dr
  store i32 %i.ds, ptr %i.by, align 4, !tbaa !44
  %.pre53 = load i8, ptr %i.bz, align 1, !tbaa !23
  %.pre86102 = zext i8 %.pre53 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pre-phi87 = phi i64 [ %.pre86102, %bb.aj ], [ %.pre-phi85, %bb.ai ]
  %i.dt = and i64 %.pre-phi87, 128
  %.not.7 = icmp eq i64 %i.dt, 0
  br i1 %.not.7, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = shl nuw i64 128, %i.cc
  %i.dv = load i32, ptr %i.by, align 4, !tbaa !44
  %i.dw = trunc i64 %i.du to i32
  %i.dx = or i32 %i.dv, %i.dw
  store i32 %i.dx, ptr %i.by, align 4, !tbaa !44
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %5 = and i64 %indvars.iv.next, 4294967295
  %6 = icmp ugt i64 %i.l, %5
  br i1 %6, label %.lr.ph.split.split, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %bb.am, %bb.t, %.preheader, %bb.b
  %i.dy = load i8, ptr %i.c, align 1
  %i.dz = or i8 %i.dy, 16
  store i8 %i.dz, ptr %i.c, align 1
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
          to label %bb.an unwind label %bb.c

bb.an:                                            ; preds = %.loopexit
  ret void

bb.ao:                                            ; preds = %bb.w, %bb.u, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.ck, %bb.w ], [ %i.br, %bb.u ]
  tail call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.a, align 8, !tbaa !30
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN8V3Number5nodepEP7AstNode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.c, ptr %i.d, align 8, !tbaa !37
  br label %_ZN8V3Number5nodepEP7AstNode.exit

_ZN8V3Number5nodepEP7AstNode.exit:                ; preds = %bb.a, %bb.b
  %i.e = icmp sgt i32 %2, -1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN8V3Number5nodepEP7AstNode.exit
  %i.f = icmp ne i32 %2, 0                        ; 2 uses
  %spec.select = and i1 %i.f, %3
  %spec.select11 = select i1 %i.f, i32 %2, i32 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !42    ; 2 uses
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %bb.d, label %_ZN12V3NumberData13destroyStringEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !23
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  %.pre.i = load i8, ptr %i.g, align 4, !tbaa !42
  br label %_ZN12V3NumberData13destroyStringEv.exit.i

_ZN12V3NumberData13destroyStringEv.exit.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.o = phi i8 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %bb.c ]
  %i.p = add i8 %i.o, -1
  %spec.select.i.i = icmp ult i8 %i.p, 2
  br i1 %spec.select.i.i, label %_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i, label %_ZN12V3NumberData13destroyStringEv.exit.thread.i

_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i: ; preds = %_ZN12V3NumberData13destroyStringEv.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre1.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !41
  br label %_ZN12V3NumberData8setLogicEv.exit

_ZN12V3NumberData13destroyStringEv.exit.thread.i: ; preds = %bb.d, %_ZN12V3NumberData13destroyStringEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41   ; 4 uses
  %i.s = icmp slt i32 %i.r, 129
  br i1 %i.s, label %bb.e, label %vector.ph

bb.e:                                             ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 32, i1 false)
  br label %_ZN12V3NumberData8setLogicEv.exit

vector.ph:                                        ; preds = %_ZN12V3NumberData13destroyStringEv.exit.thread.i
  %i.t = add nuw nsw i32 %i.r, 31
  %i.u = lshr i32 %i.t, 5
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 24, i1 false)
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 3 uses
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 7 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !60
  store i64 0, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.w    ; 2 uses
  %i.ac = add nsw i64 %i.w, -16
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ah ; 2 uses
  %i.ai = load i64, ptr %i.x, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ag, %middle.block ] ; 2 uses
  %i.al = load i64, ptr %i.x, align 4
  store i64 %i.al, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !64

_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.an, align 8, !tbaa !65
  br label %_ZN12V3NumberData8setLogicEv.exit

_ZN12V3NumberData8setLogicEv.exit:                ; preds = %_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i, %bb.e, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i
  %i.ao = phi i32 [ %.pre1.i, %_ZN12V3NumberData13destroyStringEv.exit._crit_edge.i ], [ %i.r, %bb.e ], [ %i.r, %_ZN12V3NumberData17initDynamicNumberIJiEEEvDpOT_.exit.i ]
  store i8 1, ptr %i.g, align 4, !tbaa !42
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.ao)
  tail call void @_ZN12V3NumberData6resizeEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %spec.select11)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.aq = zext i1 %spec.select to i8
  %i.ar = load i8, ptr %i.ap, align 1
  %i.as = and i8 %i.ar, -2
  %i.at = or disjoint i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.ap, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !41 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12V3NumberData8setLogicEv.exit
  %i.ax = load i8, ptr %i.g, align 4, !tbaa !42
  %i.ay = add i8 %i.ax, -1
  %spec.select.i.i12 = icmp ult i8 %i.ay, 2
  br i1 %spec.select.i.i12, label %_ZN12V3NumberData3numEv.exit, label %bb.f, !prof !43

_ZN12V3NumberData3numEv.exit:                     ; preds = %.lr.ph, %_ZN12V3NumberData3numEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12V3NumberData3numEv.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.az = phi i32 [ %i.bd, %_ZN12V3NumberData3numEv.exit ], [ %i.av, %.lr.ph ]
  %i.ba = icmp slt i32 %i.az, 129
  %i.bb = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.ba, ptr %0, ptr %i.bb
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.bc, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.au, align 8, !tbaa !41 ; 2 uses
  %i.be = add nsw i32 %i.bd, 31
  %i.bf = sdiv i32 %i.be, 32
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %_ZN12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !67

bb.f:                                             ; preds = %.lr.ph
  %i.bi = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.bj = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.118)
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.bl) #32
  unreachable

bb.g:                                             ; preds = %_ZN8V3Number5nodepEP7AstNode.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !41 ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %_ZN12V3NumberData6resizeEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.off = add i32 %i.bn, -1
  %i.bp = icmp ult i32 %.off, 32
  br i1 %i.bp, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = icmp sgt i32 %i.bn, 128
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bs = load i8, ptr %i.br, align 4
  %i.bt = icmp eq i8 %i.bs, 1
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.j, label %.sink.split.i

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZN8V3Number5opMulERKS_S1_:bb.a
  unreachable

.loopexit:                                        ; preds = %_ZN12V3NumberData3numEv.exit52, %_ZNK12V3NumberData3numEv.exit47
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit55, label %_ZNK12V3NumberData3numEv.exit47, !llvm.loop !158

.loopexit55:                                      ; preds = %.loopexit, %.preheader, %_ZNK12V3NumberData3numEv.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next, %wide.trip.count114
  br i1 %exitcond87.not, label %._crit_edge, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !157

bb.m:                                             ; preds = %bb.k, %._crit_edge, %bb.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number5opAddERKS_S1_(ptr noundef nonnull returned align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %0, %2
  %.not24 = or i1 %i.a, %i.b
  br i1 %.not24, label %bb.b, label %bb.c, !prof !156

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2042) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.73)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !42
  %.not = icmp eq i8 %i.g, 1
  br i1 %.not, label %bb.e, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2043) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.74)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !42
  %.not25 = icmp eq i8 %i.n, 1
  br i1 %.not25, label %bb.g, label %bb.f, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.15, i32 noundef 2043) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.74)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK8V3Number(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef signext 34)
  tail call void @_ZNK8V3Number15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.s) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph60, label %_ZN8V3Number11setAllBitsXEv.exit

.lr.ph60:                                         ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !42
  %i.aa = add i8 %i.z, -1
  %spec.select.i.i31 = icmp ult i8 %i.aa, 2
  br i1 %spec.select.i.i31, label %_ZN12V3NumberData3numEv.exit33, label %bb.j, !prof !43

_ZN12V3NumberData3numEv.exit33:                   ; preds = %.lr.ph60, %_ZN12V3NumberData3numEv.exit33
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %_ZN12V3NumberData3numEv.exit33 ], [ 0, %.lr.ph60 ] ; 2 uses
  %i.ab = phi i32 [ %i.af, %_ZN12V3NumberData3numEv.exit33 ], [ %i.w, %.lr.ph60 ]
  %i.ac = icmp slt i32 %i.ab, 129
  %i.ad = load ptr, ptr %0, align 8
  %spec.select.i32 = select i1 %i.ac, ptr %0, ptr %i.ad
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i32, i64 %indvars.iv106 ; 2 uses
  store i32 -1, ptr %i.ae, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.af = load i32, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %i.ag = add nsw i32 %i.af, 31
  %i.ah = sdiv i32 %i.ag, 32
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next107, %i.ai
  br i1 %i.aj, label %_ZN12V3NumberData3numEv.exit33, label %_ZN8V3Number11setAllBitsXEv.exit, !llvm.loop !160

bb.j:                                             ; preds = %.lr.ph60
  %i.ak = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.118)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.an) #32
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ao = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %.fr62 = freeze i32 %i.aq                       ; 7 uses
  %i.ar = add nsw i32 %.fr62, 31
  %i.as = sdiv i32 %i.ar, 32
  %i.at = icmp sgt i32 %.fr62, 0
  br i1 %i.at, label %.lr.ph, label %_ZN8V3Number11setAllBitsXEv.exit

.lr.ph:                                           ; preds = %bb.k
  %i.au = load i8, ptr %i.f, align 4, !tbaa !42
  %i.av = add i8 %i.au, -1
  %spec.select.i.i = icmp ult i8 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = icmp samesign ult i32 %.fr62, 129       ; 6 uses
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.l, !prof !43

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = load i8, ptr %i.m, align 4, !tbaa !42
  %i.bb = add i8 %i.ba, -1
  %spec.select.i.i26 = icmp ult i8 %i.bb, 2
  br i1 %spec.select.i.i26, label %.lr.ph.split.split, label %bb.m, !prof !43

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.bc = load i8, ptr %i.aw, align 4, !tbaa !42
  %i.bd = add i8 %i.bc, -1
  %spec.select.i.i29 = icmp ult i8 %i.bd, 2
  br i1 %spec.select.i.i29, label %.lr.ph.split.split.split, label %bb.n, !prof !43

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.be = load i32, ptr %i.ax, align 8, !tbaa !41
  %.fr61 = freeze i32 %i.be
  %i.bf = icmp slt i32 %.fr61, 129
  %i.bg = load i32, ptr %i.ay, align 8, !tbaa !41
  %.fr = freeze i32 %i.bg
  %i.bh = icmp slt i32 %.fr, 129                  ; 2 uses
  %smax103 = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1) ; 8 uses
  %wide.trip.count104 = zext nneg i32 %smax103 to i64 ; 14 uses
  br i1 %i.bf, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  br i1 %i.bh, label %_ZNK12V3NumberData3numEv.exit.us.us.preheader, label %.lr.ph.split.split.split.split.us.split

_ZNK12V3NumberData3numEv.exit.us.us.preheader:    ; preds = %.lr.ph.split.split.split.split.us
  %xtraiter158 = and i64 %wide.trip.count104, 1
  %i.bi = icmp slt i32 %.fr62, 33
  br i1 %i.bi, label %_ZNK12V3NumberData3numEv.exit.us.us.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new

_ZNK12V3NumberData3numEv.exit.us.us.preheader.new: ; preds = %_ZNK12V3NumberData3numEv.exit.us.us.preheader
  %unroll_iter161 = and i64 %wide.trip.count104, 67108862
  br label %_ZNK12V3NumberData3numEv.exit.us.us

_ZNK12V3NumberData3numEv.exit.us.us:              ; preds = %_ZNK12V3NumberData3numEv.exit.us.us, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new
  %indvars.iv100 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new ], [ %indvars.iv.next101.1, %_ZNK12V3NumberData3numEv.exit.us.us ] ; 5 uses
  %.02138.us.us = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new ], [ %i.ci, %_ZNK12V3NumberData3numEv.exit.us.us ]
  %niter162 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader.new ], [ %niter162.next.1, %_ZNK12V3NumberData3numEv.exit.us.us ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv100
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !44
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv100
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !44
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %.02138.us.us, %i.bl
  %i.bq = add nuw nsw i64 %i.bp, %i.bo            ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = load ptr, ptr %0, align 8
  %spec.select.i30.us.us = select i1 %i.az, ptr %0, ptr %i.bs
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i30.us.us, i64 %indvars.iv100
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !44
  %i.bu = icmp samesign ugt i64 %i.bq, 4294967295
  %i.bv = zext i1 %i.bu to i64
  %indvars.iv.next101 = or disjoint i64 %indvars.iv100, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next101
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !44
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next101
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !44
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.bv, %i.by
  %i.cd = add nuw nsw i64 %i.cc, %i.cb            ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load ptr, ptr %0, align 8
  %spec.select.i30.us.us.1 = select i1 %i.az, ptr %0, ptr %i.cf
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i30.us.us.1, i64 %indvars.iv.next101
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !44
  %i.ch = icmp samesign ugt i64 %i.cd, 4294967295
  %i.ci = zext i1 %i.ch to i64                    ; 2 uses
  %indvars.iv.next101.1 = add nuw nsw i64 %indvars.iv100, 2 ; 2 uses
  %niter162.next.1 = add i64 %niter162, 2         ; 2 uses
  %niter162.ncmp.1 = icmp eq i64 %niter162.next.1, %unroll_iter161
  br i1 %niter162.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit125.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit.us.us, !llvm.loop !161

.lr.ph.split.split.split.split.us.split:          ; preds = %.lr.ph.split.split.split.split.us
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit.us.us53.preheader, label %_ZNK12V3NumberData3numEv.exit.us.preheader

_ZNK12V3NumberData3numEv.exit.us.preheader:       ; preds = %.lr.ph.split.split.split.split.us.split
  %xtraiter148 = and i64 %wide.trip.count104, 1
  %unroll_iter151 = and i64 %wide.trip.count104, 67108862
  br label %_ZNK12V3NumberData3numEv.exit.us

_ZNK12V3NumberData3numEv.exit.us.us53.preheader:  ; preds = %.lr.ph.split.split.split.split.us.split
  %xtraiter153 = and i64 %wide.trip.count104, 1
  %i.cj = icmp slt i32 %.fr62, 33
  br i1 %i.cj, label %_ZNK12V3NumberData3numEv.exit.us.us53.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.us.us53.preheader.new

_ZNK12V3NumberData3numEv.exit.us.us53.preheader.new: ; preds = %_ZNK12V3NumberData3numEv.exit.us.us53.preheader
  %unroll_iter156 = and i64 %wide.trip.count104, 14
  br label %_ZNK12V3NumberData3numEv.exit.us.us53

_ZNK12V3NumberData3numEv.exit.us.us53:            ; preds = %_ZNK12V3NumberData3numEv.exit.us.us53, %_ZNK12V3NumberData3numEv.exit.us.us53.preheader.new
  %indvars.iv94 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us53.preheader.new ], [ %indvars.iv.next95.1, %_ZNK12V3NumberData3numEv.exit.us.us53 ] ; 5 uses
  %.02138.us.us54 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us53.preheader.new ], [ %i.dj, %_ZNK12V3NumberData3numEv.exit.us.us53 ]
  %niter157 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us53.preheader.new ], [ %niter157.next.1, %_ZNK12V3NumberData3numEv.exit.us.us53 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !44
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load ptr, ptr %2, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv94
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !44
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add nuw nsw i64 %.02138.us.us54, %i.cm
  %i.cs = add nuw nsw i64 %i.cr, %i.cq            ; 2 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv94
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !44
  %i.cv = icmp samesign ugt i64 %i.cs, 4294967295
  %i.cw = zext i1 %i.cv to i64
  %indvars.iv.next95 = or disjoint i64 %indvars.iv94, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next95
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %2, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next95
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !44
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw nsw i64 %i.cw, %i.cz
  %i.df = add nuw nsw i64 %i.de, %i.dd            ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next95
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !44
  %i.di = icmp samesign ugt i64 %i.df, 4294967295
  %i.dj = zext i1 %i.di to i64                    ; 2 uses
  %indvars.iv.next95.1 = add nuw nsw i64 %indvars.iv94, 2 ; 2 uses
  %niter157.next.1 = add i64 %niter157, 2         ; 2 uses
  %niter157.ncmp.1 = icmp eq i64 %niter157.next.1, %unroll_iter156
  br i1 %niter157.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit126.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit.us.us53, !llvm.loop !161

_ZNK12V3NumberData3numEv.exit.us:                 ; preds = %_ZNK12V3NumberData3numEv.exit.us, %_ZNK12V3NumberData3numEv.exit.us.preheader
  %indvars.iv88 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.preheader ], [ %indvars.iv.next89.1, %_ZNK12V3NumberData3numEv.exit.us ] ; 5 uses
  %.02138.us = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.preheader ], [ %i.el, %_ZNK12V3NumberData3numEv.exit.us ]
  %niter152 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.preheader ], [ %niter152.next.1, %_ZNK12V3NumberData3numEv.exit.us ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv88
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !44
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load ptr, ptr %2, align 8
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv88
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !44
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %.02138.us, %i.dm
  %i.ds = add nuw nsw i64 %i.dr, %i.dq            ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = load ptr, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv88
  store i32 %i.dt, ptr %i.dv, align 4, !tbaa !44
  %i.dw = icmp samesign ugt i64 %i.ds, 4294967295
  %i.dx = zext i1 %i.dw to i64
  %indvars.iv.next89 = or disjoint i64 %indvars.iv88, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next89
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !44
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %2, align 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next89
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !44
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.dx, %i.ea
  %i.eg = add nuw nsw i64 %i.ef, %i.ee            ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next89
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !44
  %i.ek = icmp samesign ugt i64 %i.eg, 4294967295
  %i.el = zext i1 %i.ek to i64                    ; 2 uses
  %indvars.iv.next89.1 = add nuw nsw i64 %indvars.iv88, 2 ; 4 uses
  %niter152.next.1 = add i64 %niter152, 2         ; 2 uses
  %niter152.ncmp.1 = icmp eq i64 %niter152.next.1, %unroll_iter151
  br i1 %niter152.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit127.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit.us, !llvm.loop !161

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split
  br i1 %i.bh, label %.lr.ph.split.split.split.split.split.us, label %.lr.ph.split.split.split.split.split

.lr.ph.split.split.split.split.split.us:          ; preds = %.lr.ph.split.split.split.split
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit.us39.us.preheader, label %_ZNK12V3NumberData3numEv.exit.us39.preheader

_ZNK12V3NumberData3numEv.exit.us39.preheader:     ; preds = %.lr.ph.split.split.split.split.split.us
  %xtraiter138 = and i64 %wide.trip.count104, 1
  %unroll_iter141 = and i64 %wide.trip.count104, 67108862
  br label %_ZNK12V3NumberData3numEv.exit.us39

_ZNK12V3NumberData3numEv.exit.us39.us.preheader:  ; preds = %.lr.ph.split.split.split.split.split.us
  %xtraiter143 = and i64 %wide.trip.count104, 1
  %i.em = icmp slt i32 %.fr62, 33
  br i1 %i.em, label %_ZNK12V3NumberData3numEv.exit.us39.us.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.us39.us.preheader.new

_ZNK12V3NumberData3numEv.exit.us39.us.preheader.new: ; preds = %_ZNK12V3NumberData3numEv.exit.us39.us.preheader
  %unroll_iter146 = and i64 %wide.trip.count104, 14
  br label %_ZNK12V3NumberData3numEv.exit.us39.us

_ZNK12V3NumberData3numEv.exit.us39.us:            ; preds = %_ZNK12V3NumberData3numEv.exit.us39.us, %_ZNK12V3NumberData3numEv.exit.us39.us.preheader.new
  %indvars.iv82 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.us.preheader.new ], [ %indvars.iv.next83.1, %_ZNK12V3NumberData3numEv.exit.us39.us ] ; 5 uses
  %.02138.us40.us = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.us.preheader.new ], [ %i.fm, %_ZNK12V3NumberData3numEv.exit.us39.us ]
  %niter147 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.us.preheader.new ], [ %niter147.next.1, %_ZNK12V3NumberData3numEv.exit.us39.us ]
  %i.en = load ptr, ptr %1, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv82
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !44
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv82
  %i.es = load i32, ptr %i.er, align 8, !tbaa !44
  %i.et = zext i32 %i.es to i64
  %i.eu = add nuw nsw i64 %.02138.us40.us, %i.eq
  %i.ev = add nuw nsw i64 %i.eu, %i.et            ; 2 uses
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv82
  store i32 %i.ew, ptr %i.ex, align 8, !tbaa !44
  %i.ey = icmp samesign ugt i64 %i.ev, 4294967295
  %i.ez = zext i1 %i.ey to i64
  %indvars.iv.next83 = or disjoint i64 %indvars.iv82, 1 ; 3 uses
  %i.fa = load ptr, ptr %1, align 8
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next83
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !44
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next83
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !44
  %i.fg = zext i32 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.ez, %i.fd
  %i.fi = add nuw nsw i64 %i.fh, %i.fg            ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next83
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !44
  %i.fl = icmp samesign ugt i64 %i.fi, 4294967295
  %i.fm = zext i1 %i.fl to i64                    ; 2 uses
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter147.next.1 = add i64 %niter147, 2         ; 2 uses
  %niter147.ncmp.1 = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit128.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit.us39.us, !llvm.loop !161

_ZNK12V3NumberData3numEv.exit.us39:               ; preds = %_ZNK12V3NumberData3numEv.exit.us39, %_ZNK12V3NumberData3numEv.exit.us39.preheader
  %indvars.iv76 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.preheader ], [ %indvars.iv.next77.1, %_ZNK12V3NumberData3numEv.exit.us39 ] ; 5 uses
  %.02138.us40 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.preheader ], [ %i.go, %_ZNK12V3NumberData3numEv.exit.us39 ]
  %niter142 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.preheader ], [ %niter142.next.1, %_ZNK12V3NumberData3numEv.exit.us39 ]
  %i.fn = load ptr, ptr %1, align 8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv76
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !44
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !44
  %i.ft = zext i32 %i.fs to i64
  %i.fu = add nuw nsw i64 %.02138.us40, %i.fq
  %i.fv = add nuw nsw i64 %i.fu, %i.ft            ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = load ptr, ptr %0, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv76
  store i32 %i.fw, ptr %i.fy, align 4, !tbaa !44
  %i.fz = icmp samesign ugt i64 %i.fv, 4294967295
  %i.ga = zext i1 %i.fz to i64
  %indvars.iv.next77 = or disjoint i64 %indvars.iv76, 1 ; 3 uses
  %i.gb = load ptr, ptr %1, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next77
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !44
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next77
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !44
  %i.gh = zext i32 %i.gg to i64
  %i.gi = add nuw nsw i64 %i.ga, %i.ge
  %i.gj = add nuw nsw i64 %i.gi, %i.gh            ; 2 uses
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = load ptr, ptr %0, align 8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next77
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !44
  %i.gn = icmp samesign ugt i64 %i.gj, 4294967295
  %i.go = zext i1 %i.gn to i64                    ; 2 uses
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 4 uses
  %niter142.next.1 = add i64 %niter142, 2         ; 2 uses
  %niter142.ncmp.1 = icmp eq i64 %niter142.next.1, %unroll_iter141
  br i1 %niter142.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit129.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit.us39, !llvm.loop !161

.lr.ph.split.split.split.split.split:             ; preds = %.lr.ph.split.split.split.split
  br i1 %i.az, label %_ZNK12V3NumberData3numEv.exit.us45.preheader, label %_ZNK12V3NumberData3numEv.exit.preheader

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph.split.split.split.split.split
  %xtraiter = and i64 %wide.trip.count104, 1
  %unroll_iter = and i64 %wide.trip.count104, 67108862
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit.us45.preheader:     ; preds = %.lr.ph.split.split.split.split.split
  %xtraiter133 = and i64 %wide.trip.count104, 1
  %i.gp = icmp slt i32 %.fr62, 33
  br i1 %i.gp, label %_ZNK12V3NumberData3numEv.exit.us45.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.us45.preheader.new

_ZNK12V3NumberData3numEv.exit.us45.preheader.new: ; preds = %_ZNK12V3NumberData3numEv.exit.us45.preheader
  %unroll_iter136 = and i64 %wide.trip.count104, 14
  br label %_ZNK12V3NumberData3numEv.exit.us45

_ZNK12V3NumberData3numEv.exit.us45:               ; preds = %_ZNK12V3NumberData3numEv.exit.us45, %_ZNK12V3NumberData3numEv.exit.us45.preheader.new
  %indvars.iv70 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us45.preheader.new ], [ %indvars.iv.next71.1, %_ZNK12V3NumberData3numEv.exit.us45 ] ; 5 uses
  %.02138.us46 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us45.preheader.new ], [ %i.hr, %_ZNK12V3NumberData3numEv.exit.us45 ]
  %niter137 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us45.preheader.new ], [ %niter137.next.1, %_ZNK12V3NumberData3numEv.exit.us45 ]
  %i.gq = load ptr, ptr %1, align 8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv70
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !44
  %i.gt = zext i32 %i.gs to i64
  %i.gu = load ptr, ptr %2, align 8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv70
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !44
  %i.gx = zext i32 %i.gw to i64
  %i.gy = add nuw nsw i64 %.02138.us46, %i.gt
  %i.gz = add nuw nsw i64 %i.gy, %i.gx            ; 2 uses
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70
  store i32 %i.ha, ptr %i.hb, align 8, !tbaa !44
  %i.hc = icmp samesign ugt i64 %i.gz, 4294967295
  %i.hd = zext i1 %i.hc to i64
  %indvars.iv.next71 = or disjoint i64 %indvars.iv70, 1 ; 3 uses
  %i.he = load ptr, ptr %1, align 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv.next71
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !44
  %i.hh = zext i32 %i.hg to i64
  %i.hi = load ptr, ptr %2, align 8
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next71
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !44
  %i.hl = zext i32 %i.hk to i64
  %i.hm = add nuw nsw i64 %i.hd, %i.hh
  %i.hn = add nuw nsw i64 %i.hm, %i.hl            ; 2 uses
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next71
  store i32 %i.ho, ptr %i.hp, align 8, !tbaa !44
  %i.hq = icmp samesign ugt i64 %i.hn, 4294967295
  %i.hr = zext i1 %i.hq to i64                    ; 2 uses
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter137.next.1 = add i64 %niter137, 2         ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit130.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit.us45, !llvm.loop !161

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next.1, %_ZNK12V3NumberData3numEv.exit ] ; 5 uses
  %.02138 = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %i.iv, %_ZNK12V3NumberData3numEv.exit ]
  %niter = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %niter.next.1, %_ZNK12V3NumberData3numEv.exit ]
  %i.hs = load ptr, ptr %1, align 8
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !44
  %i.hv = zext i32 %i.hu to i64
  %i.hw = load ptr, ptr %2, align 8
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !44
  %i.hz = zext i32 %i.hy to i64
  %i.ia = add nuw nsw i64 %.02138, %i.hv
  %i.ib = add nuw nsw i64 %i.ia, %i.hz            ; 2 uses
  %i.ic = trunc i64 %i.ib to i32
  %i.id = load ptr, ptr %0, align 8
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !44
  %i.if = icmp samesign ugt i64 %i.ib, 4294967295
  %i.ig = zext i1 %i.if to i64
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ih = load ptr, ptr %1, align 8
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !44
  %i.ik = zext i32 %i.ij to i64
  %i.il = load ptr, ptr %2, align 8
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next
  %i.in = load i32, ptr %i.im, align 4, !tbaa !44
  %i.io = zext i32 %i.in to i64
  %i.ip = add nuw nsw i64 %i.ig, %i.ik
  %i.iq = add nuw nsw i64 %i.ip, %i.io            ; 2 uses
  %i.ir = trunc i64 %i.iq to i32
  %i.is = load ptr, ptr %0, align 8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next
  store i32 %i.ir, ptr %i.it, align 4, !tbaa !44
  %i.iu = icmp samesign ugt i64 %i.iq, 4294967295
  %i.iv = zext i1 %i.iu to i64                    ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 4 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN8V3Number11setAllBitsXEv.exit.loopexit131.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !161

bb.l:                                             ; preds = %.lr.ph
  %i.iw = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.ix = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.iy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef nonnull @.str.118)
  %i.iz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.iz) #32
  unreachable

bb.m:                                             ; preds = %.lr.ph.split
  %i.ja = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.jb = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.jc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.jb, ptr noundef nonnull @.str.118)
  %i.jd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull align 1 dereferenceable(1) %i.m)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.jd) #32
  unreachable

bb.n:                                             ; preds = %.lr.ph.split.split
  %i.je = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.jf = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.jg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull @.str.118)
  %i.jh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull align 1 dereferenceable(1) %i.aw)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.jh) #32
  unreachable

_ZN8V3Number11setAllBitsXEv.exit.loopexit125.unr-lcssa: ; preds = %_ZNK12V3NumberData3numEv.exit.us.us
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %_ZN8V3Number11setAllBitsXEv.exit, label %_ZNK12V3NumberData3numEv.exit.us.us.epil.preheader

_ZNK12V3NumberData3numEv.exit.us.us.epil.preheader: ; preds = %_ZN8V3Number11setAllBitsXEv.exit.loopexit125.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us.us.preheader
  %indvars.iv100.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader ], [ %indvars.iv.next101.1, %_ZN8V3Number11setAllBitsXEv.exit.loopexit125.unr-lcssa ] ; 3 uses
  %.02138.us.us.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us.preheader ], [ %i.ci, %_ZN8V3Number11setAllBitsXEv.exit.loopexit125.unr-lcssa ]
  %lcmp.mod160 = trunc i32 %smax103 to i1
  tail call void @llvm.assume(i1 %lcmp.mod160)
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv100.epil.init
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !44
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv100.epil.init
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !44
  %i.jm = trunc nuw nsw i64 %.02138.us.us.epil.init to i32
  %i.jn = add i32 %i.jj, %i.jm
  %i.jo = add i32 %i.jn, %i.jl
  %i.jp = load ptr, ptr %0, align 8
  %spec.select.i30.us.us.epil = select i1 %i.az, ptr %0, ptr %i.jp
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i30.us.us.epil, i64 %indvars.iv100.epil.init
  store i32 %i.jo, ptr %i.jq, align 4, !tbaa !44
  br label %_ZN8V3Number11setAllBitsXEv.exit

_ZN8V3Number11setAllBitsXEv.exit.loopexit126.unr-lcssa: ; preds = %_ZNK12V3NumberData3numEv.exit.us.us53
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %_ZN8V3Number11setAllBitsXEv.exit, label %_ZNK12V3NumberData3numEv.exit.us.us53.epil.preheader

_ZNK12V3NumberData3numEv.exit.us.us53.epil.preheader: ; preds = %_ZN8V3Number11setAllBitsXEv.exit.loopexit126.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us.us53.preheader
  %indvars.iv94.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us53.preheader ], [ %indvars.iv.next95.1, %_ZN8V3Number11setAllBitsXEv.exit.loopexit126.unr-lcssa ] ; 3 uses
  %.02138.us.us54.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us.us53.preheader ], [ %i.dj, %_ZN8V3Number11setAllBitsXEv.exit.loopexit126.unr-lcssa ]
  %lcmp.mod155 = trunc i32 %smax103 to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv94.epil.init
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !44
  %i.jt = load ptr, ptr %2, align 8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv94.epil.init
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !44
  %i.jw = trunc nuw nsw i64 %.02138.us.us54.epil.init to i32
  %i.jx = add i32 %i.js, %i.jw
  %i.jy = add i32 %i.jx, %i.jv
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv94.epil.init
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !44
  br label %_ZN8V3Number11setAllBitsXEv.exit

_ZN8V3Number11setAllBitsXEv.exit.loopexit127.unr-lcssa: ; preds = %_ZNK12V3NumberData3numEv.exit.us
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %_ZN8V3Number11setAllBitsXEv.exit, label %_ZNK12V3NumberData3numEv.exit.us.epil.preheader

_ZNK12V3NumberData3numEv.exit.us.epil.preheader:  ; preds = %_ZN8V3Number11setAllBitsXEv.exit.loopexit127.unr-lcssa
  %lcmp.mod150 = trunc i32 %smax103 to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next89.1
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !44
  %i.kc = load ptr, ptr %2, align 8
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv.next89.1
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !44
  %i.kf = trunc i64 %i.el to i32
  %i.kg = add i32 %i.kb, %i.kf
  %i.kh = add i32 %i.kg, %i.ke
  %i.ki = load ptr, ptr %0, align 8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.next89.1
  store i32 %i.kh, ptr %i.kj, align 4, !tbaa !44
  br label %_ZN8V3Number11setAllBitsXEv.exit

_ZN8V3Number11setAllBitsXEv.exit.loopexit128.unr-lcssa: ; preds = %_ZNK12V3NumberData3numEv.exit.us39.us
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %_ZN8V3Number11setAllBitsXEv.exit, label %_ZNK12V3NumberData3numEv.exit.us39.us.epil.preheader

_ZNK12V3NumberData3numEv.exit.us39.us.epil.preheader: ; preds = %_ZN8V3Number11setAllBitsXEv.exit.loopexit128.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us39.us.preheader
  %indvars.iv82.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.us.preheader ], [ %indvars.iv.next83.1, %_ZN8V3Number11setAllBitsXEv.exit.loopexit128.unr-lcssa ] ; 3 uses
  %.02138.us40.us.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us39.us.preheader ], [ %i.fm, %_ZN8V3Number11setAllBitsXEv.exit.loopexit128.unr-lcssa ]
  %lcmp.mod145 = trunc i32 %smax103 to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %i.kk = load ptr, ptr %1, align 8
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv82.epil.init
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !44
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv82.epil.init
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !44
  %i.kp = trunc nuw nsw i64 %.02138.us40.us.epil.init to i32
  %i.kq = add i32 %i.km, %i.kp
  %i.kr = add i32 %i.kq, %i.ko
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv82.epil.init
  store i32 %i.kr, ptr %i.ks, align 8, !tbaa !44
  br label %_ZN8V3Number11setAllBitsXEv.exit

_ZN8V3Number11setAllBitsXEv.exit.loopexit129.unr-lcssa: ; preds = %_ZNK12V3NumberData3numEv.exit.us39
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %_ZN8V3Number11setAllBitsXEv.exit, label %_ZNK12V3NumberData3numEv.exit.us39.epil.preheader

_ZNK12V3NumberData3numEv.exit.us39.epil.preheader: ; preds = %_ZN8V3Number11setAllBitsXEv.exit.loopexit129.unr-lcssa
  %lcmp.mod140 = trunc i32 %smax103 to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.kt = load ptr, ptr %1, align 8
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.next77.1
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !44
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next77.1
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !44
  %i.ky = trunc i64 %i.go to i32
  %i.kz = add i32 %i.kv, %i.ky
  %i.la = add i32 %i.kz, %i.kx
  %i.lb = load ptr, ptr %0, align 8
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.next77.1
  store i32 %i.la, ptr %i.lc, align 4, !tbaa !44
  br label %_ZN8V3Number11setAllBitsXEv.exit

_ZN8V3Number11setAllBitsXEv.exit.loopexit130.unr-lcssa: ; preds = %_ZNK12V3NumberData3numEv.exit.us45
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %_ZN8V3Number11setAllBitsXEv.exit, label %_ZNK12V3NumberData3numEv.exit.us45.epil.preheader

_ZNK12V3NumberData3numEv.exit.us45.epil.preheader: ; preds = %_ZN8V3Number11setAllBitsXEv.exit.loopexit130.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us45.preheader
  %indvars.iv70.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us45.preheader ], [ %indvars.iv.next71.1, %_ZN8V3Number11setAllBitsXEv.exit.loopexit130.unr-lcssa ] ; 3 uses
  %.02138.us46.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.us45.preheader ], [ %i.hr, %_ZN8V3Number11setAllBitsXEv.exit.loopexit130.unr-lcssa ]
  %lcmp.mod135 = trunc i32 %smax103 to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.ld = load ptr, ptr %1, align 8
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv70.epil.init
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !44
  %i.lg = load ptr, ptr %2, align 8
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %indvars.iv70.epil.init
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !44
  %i.lj = trunc nuw nsw i64 %.02138.us46.epil.init to i32
  %i.lk = add i32 %i.lf, %i.lj
  %i.ll = add i32 %i.lk, %i.li
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.epil.init
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !44
  br label %_ZN8V3Number11setAllBitsXEv.exit

_ZN8V3Number11setAllBitsXEv.exit.loopexit131.unr-lcssa: ; preds = %_ZNK12V3NumberData3numEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8V3Number11setAllBitsXEv.exit, label %_ZNK12V3NumberData3numEv.exit.epil.preheader

_ZNK12V3NumberData3numEv.exit.epil.preheader:     ; preds = %_ZN8V3Number11setAllBitsXEv.exit.loopexit131.unr-lcssa
  %lcmp.mod132 = trunc i32 %smax103 to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.ln = load ptr, ptr %1, align 8
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.1
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !44
  %i.lq = load ptr, ptr %2, align 8
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv.next.1
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !44
  %i.lt = trunc i64 %i.iv to i32
  %i.lu = add i32 %i.lp, %i.lt
  %i.lv = add i32 %i.lu, %i.ls
  %i.lw = load ptr, ptr %0, align 8
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %indvars.iv.next.1
  store i32 %i.lv, ptr %i.lx, align 4, !tbaa !44
  br label %_ZN8V3Number11setAllBitsXEv.exit

_ZN8V3Number11setAllBitsXEv.exit:                 ; preds = %_ZNK12V3NumberData3numEv.exit.epil.preheader, %_ZN8V3Number11setAllBitsXEv.exit.loopexit131.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us45.epil.preheader, %_ZN8V3Number11setAllBitsXEv.exit.loopexit130.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us39.epil.preheader, %_ZN8V3Number11setAllBitsXEv.exit.loopexit129.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us39.us.epil.preheader, %_ZN8V3Number11setAllBitsXEv.exit.loopexit128.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us.epil.preheader, %_ZN8V3Number11setAllBitsXEv.exit.loopexit127.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us.us53.epil.preheader, %_ZN8V3Number11setAllBitsXEv.exit.loopexit126.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.us.us.epil.preheader, %_ZN8V3Number11setAllBitsXEv.exit.loopexit125.unr-lcssa, %_ZN12V3NumberData3numEv.exit33, %bb.k, %bb.i
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8V3Number9bitsValueEii(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i8, ptr %i.b, align 4, !tbaa !42
  %.fr11 = freeze i8 %i.c
  %i.d = add i8 %.fr11, -3
  %spec.select.i.i = icmp ult i8 %i.d, -2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 129
  %i.h = load ptr, ptr %0, align 8
  %spec.select.i10.i = select i1 %i.g, ptr %0, ptr %i.h
  br i1 %spec.select.i.i, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZNK8V3Number6bitIs1Ei.exit, %.lr.ph, %bb.a
  %.08.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.w, %_ZNK8V3Number6bitIs1Ei.exit ]
end_hunk_1
begin_hunk_2_@_ZN8V3Number8opShiftLERKS_S1_:bb.a
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK12V3NumberData3numEv.exit.i, !llvm.loop !324

._crit_edge.split:                                ; preds = %_ZNK8V3Number6bitIs1Ei.exit.thread, %.lr.ph, %bb.i
  %i.bg = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %.not45 = icmp eq i32 %i.bi, 0
  br i1 %.not45, label %.loopexit, label %.lr.ph42

.lr.ph42:                                         ; preds = %._crit_edge.split, %bb.k
  %i.bj = phi i32 [ %i.bm, %bb.k ], [ %i.bi, %._crit_edge.split ]
  %.040 = phi i32 [ %i.bn, %bb.k ], [ 0, %._crit_edge.split ] ; 4 uses
  %.not30 = icmp ult i32 %.040, %i.bg
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph42
  %i.bk = sub nuw i32 %.040, %i.bg
  %i.bl = tail call noundef signext i8 @_ZNK8V3Number5bitIsEi(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %i.bk)
  tail call void @_ZN8V3Number6setBitEic(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.040, i8 noundef signext %i.bl)
  %.pre = load i32, ptr %i.bh, align 8, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph42, %bb.j
  %i.bm = phi i32 [ %i.bj, %.lr.ph42 ], [ %.pre, %bb.j ] ; 2 uses
  %i.bn = add nuw i32 %.040, 1                    ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph42, label %.loopexit, !llvm.loop !325

.loopexit:                                        ; preds = %_ZNK8V3Number6bitIs1Ei.exit, %bb.k, %._crit_edge.split, %_ZN8V3Number11setAllBitsXEv.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number10fitsInUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK8V3Number11isFourStateEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.d = add nuw nsw i32 %i.c, 31
  %i.e = sdiv i32 %i.d, 32
  %i.f = icmp slt i32 %i.c, 33
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !42
  %i.i = add i8 %i.h, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  br i1 %spec.select.i.i, label %.lr.ph.split, label %bb.b, !prof !43

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.j = icmp samesign ult i32 %i.c, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %.lr.ph.split
  %indvars.iv = phi i64 [ 1, %.lr.ph.split ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !44
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %_ZNK12V3NumberData3numEv.exit, label %.loopexit, !llvm.loop !326

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.118)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.q) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  %i.d = tail call noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !41
  %i.g = add nsw i32 %i.f, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.d, %i.j
  %i.l = sub i32 0, %i.k
  %i.m = or i32 %i.d, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.d, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK12V3NumberData3strB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 254) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.127)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZNK8V3Number6toHashEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.V3Hash, align 4              ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !42    ; 2 uses
  %i.e = icmp eq i8 %i.d, 3
  br i1 %i.e, label %_ZNK12V3NumberData3strB5cxx11Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.b, 31
  %i.g = sdiv i32 %i.f, 32
  %i.h = icmp sgt i32 %i.b, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = add i8 %i.d, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  %i.j = icmp samesign ult i32 %i.b, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k ; 3 uses
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !43

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp slt i32 %i.b, 33
  br i1 %i.l, label %_ZNK12V3NumberData3numEv.exit.epil.preheader, label %_ZNK12V3NumberData3numEv.exit.preheader.new

_ZNK12V3NumberData3numEv.exit.preheader.new:      ; preds = %_ZNK12V3NumberData3numEv.exit.preheader
  %unroll_iter = and i64 %wide.trip.count, 67108862
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3strB5cxx11Ev.exit:             ; preds = %bb.a
  call void @_ZN6V3HashC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.m = load i32, ptr %1, align 4
  %i.n = shl i32 %i.b, 6
  %i.o = lshr i32 %i.b, 2
  %i.p = add i32 %i.n, -1640531527
  %i.q = add i32 %i.p, %i.o
  %i.r = add i32 %i.q, %i.m
  %i.s = xor i32 %i.r, %i.b
  br label %.loopexit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %indvars.iv.next.1, %_ZNK12V3NumberData3numEv.exit ] ; 3 uses
  %.sroa.0.06 = phi i32 [ %i.b, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %i.aj, %_ZNK12V3NumberData3numEv.exit ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader.new ], [ %niter.next.1, %_ZNK12V3NumberData3numEv.exit ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %i.v = shl i32 %.sroa.0.06, 6
  %i.w = lshr i32 %.sroa.0.06, 2
  %i.x = add i32 %i.v, -1640531527
  %i.y = add i32 %i.x, %i.w
  %i.z = add i32 %i.y, %i.u
  %i.aa = xor i32 %i.z, %.sroa.0.06               ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.ae = shl i32 %i.aa, 6
  %i.af = lshr i32 %i.aa, 2
  %i.ag = add i32 %i.ae, -1640531527
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = add i32 %i.ah, %i.ad
  %i.aj = xor i32 %i.ai, %i.aa                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !327

bb.b:                                             ; preds = %.lr.ph
  %i.ak = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.118)
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.an) #32
  unreachable

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZNK12V3NumberData3numEv.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit.epil.preheader

_ZNK12V3NumberData3numEv.exit.epil.preheader:     ; preds = %.loopexit.loopexit.unr-lcssa, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.0.06.epil.init = phi i32 [ %i.b, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod11 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv.epil.init
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !44
  %i.aq = shl i32 %.sroa.0.06.epil.init, 6
  %i.ar = lshr i32 %.sroa.0.06.epil.init, 2
  %i.as = add i32 %i.aq, -1640531527
  %i.at = add i32 %i.as, %i.ar
  %i.au = add i32 %i.at, %i.ap
  %i.av = xor i32 %i.au, %.sroa.0.06.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZNK12V3NumberData3strB5cxx11Ev.exit
  %.sroa.0.1 = phi i32 [ %i.s, %_ZNK12V3NumberData3strB5cxx11Ev.exit ], [ %i.b, %.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ], [ %i.av, %_ZNK12V3NumberData3numEv.exit.epil.preheader ]
  ret i32 %.sroa.0.1
}

declare void @_ZN6V3HashC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i8 @_ZNK8V3Number8dataByteEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sdiv i32 %1, 4
  %i.b = tail call noundef i32 @_ZNK8V3Number9edataWordEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %i.a)
  %i.c = shl nsw i32 %1, 3
  %i.d = and i32 %i.c, 24
  %i.e = lshr i32 %i.b, %i.d
  %i.f = trunc i32 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number9isNeqZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42    ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %_ZNK12V3NumberData3strB5cxx11Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 31
  %i.g = sdiv i32 %i.f, 32
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  %i.j = icmp samesign ult i32 %i.e, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !43

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3strB5cxx11Ev.exit:             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = icmp ne i64 %i.m, 0
  br label %.loopexit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.o, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !66
  %i.p = xor i32 %.sroa.4.0.copyload, -1
  %i.q = and i32 %.sroa.0.0.copyload, %i.p
  %.not.not = icmp ne i32 %i.q, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !328

bb.b:                                             ; preds = %.lr.ph
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.118)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.u) #32
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %_ZNK12V3NumberData3strB5cxx11Ev.exit
  %.3 = phi i1 [ %i.n, %_ZNK12V3NumberData3strB5cxx11Ev.exit ], [ false, %.preheader ], [ %.not.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK8V3Number10isBitsZeroEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %.not12 = icmp sgt i32 %2, %1
  br i1 %.not12, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !tbaa !42
  %.fr24 = freeze i8 %i.b
  %i.c = add i8 %.fr24, -3
  %spec.select.i.i = icmp ult i8 %i.c, -2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %.fr.i.i = freeze i32 %i.e                      ; 5 uses
  %i.f = add nsw i32 %.fr.i.i, -1                 ; 2 uses
  %i.g = icmp samesign ult i32 %.fr.i.i, 129
  %i.h = load ptr, ptr %0, align 8
  %spec.select.i7.i.i = select i1 %i.g, ptr %0, ptr %i.h ; 3 uses
  %i.i = lshr i32 %i.f, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.j
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.l = and i32 %i.f, 31
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 1, %i.m
  br i1 %spec.select.i.i, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split, !prof !329

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.o = icmp slt i32 %.fr.i.i, 1
  %i.p = icmp slt i32 %2, 0                       ; 2 uses
  br i1 %i.o, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs0Ei.exit.thread.us
  %.0713.us = phi i32 [ %i.aa, %_ZNK8V3Number6bitIs0Ei.exit.thread.us ], [ %2, %.lr.ph.split ] ; 5 uses
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.b, !prof !329

bb.b:                                             ; preds = %.lr.ph.split.split.us
  %.not.i.us = icmp slt i32 %.0713.us, %.fr.i.i
  br i1 %.not.i.us, label %_ZNK8V3Number6bitIs0Ei.exit.us, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us

_ZNK8V3Number6bitIs0Ei.exit.us:                   ; preds = %bb.b
  %i.q = lshr i32 %.0713.us, 5
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.r ; 2 uses
  %.sroa.0.0.copyload.i.us = load i32, ptr %i.s, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.4.0.copyload.i.us = load i32, ptr %.sroa.4.0..sroa_idx.i.us, align 4, !tbaa !66
  %i.t = or i32 %.sroa.4.0.copyload.i.us, %.sroa.0.0.copyload.i.us
  %i.u = zext i32 %i.t to i64
  %i.v = and i32 %.0713.us, 31
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 1, %i.w
  %i.y = and i64 %i.x, %i.u
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZNK8V3Number6bitIs0Ei.exit.thread.us, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

_ZNK8V3Number6bitIs0Ei.exit.thread.us:            ; preds = %bb.b, %_ZNK8V3Number6bitIs0Ei.exit.us
  %i.aa = add i32 %.0713.us, 1
  %exitcond27.not = icmp eq i32 %.0713.us, %1
  br i1 %exitcond27.not, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %.lr.ph.split.split.us, !llvm.loop !331

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZNK8V3Number6bitIs0Ei.exit.thread
  %.0713 = phi i32 [ %i.ao, %_ZNK8V3Number6bitIs0Ei.exit.thread ], [ %2, %.lr.ph.split ] ; 5 uses
  br i1 %i.p, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, label %bb.c, !prof !329

bb.c:                                             ; preds = %.lr.ph.split.split
  %.not.i = icmp slt i32 %.0713, %.fr.i.i
  br i1 %.not.i, label %_ZNK8V3Number6bitIs0Ei.exit, label %tailrecurse.preheader.i.i

tailrecurse.preheader.i.i:                        ; preds = %bb.c
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !66
  %i.ab = zext i32 %.sroa.3.0.copyload.i.i to i64
  %i.ac = and i64 %i.n, %i.ab
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNK8V3Number6bitIs0Ei.exit.thread, label %_ZNK8V3Number6bitIs0Ei.exit.thread10, !prof !330

_ZNK8V3Number6bitIs0Ei.exit:                      ; preds = %bb.c
  %i.ae = lshr i32 %.0713, 5
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i7.i.i, i64 %i.af ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 4, !tbaa !66
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !66
  %i.ah = or i32 %.sroa.4.0.copyload.i, %.sroa.0.0.copyload.i
  %i.ai = zext i32 %i.ah to i64
  %i.aj = and i32 %.0713, 31
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 1, %i.ak
end_hunk_2
begin_hunk_3_@_ZN8V3Number12opModDivGutsERKS_S1_b:bb.a
  %i.ja = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %bb.ap
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !23
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310, %bb.ao
  %.pn226 = phi { ptr, i32 } [ %i.iy, %bb.ao ], [ %i.iz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %i.iz, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.aw

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

bb.ar:                                            ; preds = %bb.ak
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.jh = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %bb.ar
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !23
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313, %bb.aq
  %.pn228 = phi { ptr, i32 } [ %i.jf, %bb.aq ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ], [ %i.jg, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aw

bb.as:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jm = load ptr, ptr %13, align 8, !tbaa !29
  %i.jn = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !20
  %i.jp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.jm, i64 noundef %i.jo)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316 unwind label %bb.av ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316: ; preds = %bb.at
  %i.jq = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !23
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.ax

bb.au:                                            ; preds = %bb.as
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

bb.av:                                            ; preds = %bb.at
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.av
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !23
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.au
  %.pn231 = phi { ptr, i32 } [ %i.jv, %bb.au ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.jw, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %bb.an
  %.pn231.pn = phi { ptr, i32 } [ %.pn231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %i.ix, %bb.an ], [ %.pn228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %.pn226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.di

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %._crit_edge466
  br i1 %3, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.kc = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8V3Number7setZeroEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 4, !tbaa !42
  %i.kf = add i8 %i.ke, -1
  %spec.select.i.i323 = icmp ult i8 %i.kf, 2
  br i1 %spec.select.i.i323, label %_ZN12V3NumberData3numEv.exit325, label %bb.az, !prof !43

bb.az:                                            ; preds = %bb.ay
  %i.kg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.kh = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ki = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.118)
  %i.kj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ki, ptr noundef nonnull align 1 dereferenceable(1) %i.kd)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.kj) #32
  unreachable

_ZN12V3NumberData3numEv.exit325:                  ; preds = %bb.ay
  %i.kk = trunc i64 %.0176.lcssa to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !41
  %i.kn = icmp slt i32 %i.km, 129
  %i.ko = load ptr, ptr %0, align 8
  %spec.select.i324 = select i1 %i.kn, ptr %0, ptr %i.ko
  store i32 %i.kk, ptr %spec.select.i324, align 4, !tbaa !44
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN12V3NumberData3numEv.exit325, %bb.ax
  call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  br label %bb.dh

bb.bb:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  br i1 %i.aa, label %.lr.ph, label %.preheader422

.lr.ph:                                           ; preds = %bb.bb
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 4, !tbaa !42
  %i.kr = add i8 %i.kq, -1
  %spec.select.i.i326 = icmp ult i8 %i.kr, 2
  br i1 %spec.select.i.i326, label %.lr.ph.split, label %bb.bc, !prof !43

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !41
  %.fr468 = freeze i32 %i.kt
  %i.ku = icmp slt i32 %.fr468, 129
  %smax479 = tail call i32 @llvm.smax.i32(i32 %i.z, i32 1)
  %wide.trip.count480 = zext nneg i32 %smax479 to i64 ; 4 uses
  br i1 %i.ku, label %_ZN12V3NumberData3numEv.exit328.us.preheader, label %_ZN12V3NumberData3numEv.exit328.preheader

_ZN12V3NumberData3numEv.exit328.preheader:        ; preds = %.lr.ph.split
  %xtraiter = and i64 %wide.trip.count480, 3      ; 3 uses
  %i.kv = icmp slt i32 %.fr.i.i.i, 97
  br i1 %i.kv, label %_ZN12V3NumberData3numEv.exit328.epil.preheader, label %_ZN12V3NumberData3numEv.exit328.preheader.new

_ZN12V3NumberData3numEv.exit328.preheader.new:    ; preds = %_ZN12V3NumberData3numEv.exit328.preheader
  %unroll_iter = and i64 %wide.trip.count480, 67108860
  br label %_ZN12V3NumberData3numEv.exit328

_ZN12V3NumberData3numEv.exit328.us.preheader:     ; preds = %.lr.ph.split
  %xtraiter630 = and i64 %wide.trip.count480, 7   ; 3 uses
  %i.kw = icmp slt i32 %.fr.i.i.i, 225
  br i1 %i.kw, label %_ZN12V3NumberData3numEv.exit328.us.epil.preheader, label %_ZN12V3NumberData3numEv.exit328.us.preheader.new

_ZN12V3NumberData3numEv.exit328.us.preheader.new: ; preds = %_ZN12V3NumberData3numEv.exit328.us.preheader
  %unroll_iter634 = and i64 %wide.trip.count480, 67108856
  br label %_ZN12V3NumberData3numEv.exit328.us

_ZN12V3NumberData3numEv.exit328.us:               ; preds = %_ZN12V3NumberData3numEv.exit328.us, %_ZN12V3NumberData3numEv.exit328.us.preheader.new
  %indvars.iv476 = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.us.preheader.new ], [ %indvars.iv.next477.7, %_ZN12V3NumberData3numEv.exit328.us ] ; 9 uses
  %niter635 = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.us.preheader.new ], [ %niter635.next.7, %_ZN12V3NumberData3numEv.exit328.us ]
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  store i32 0, ptr %i.kx, align 8, !tbaa !44
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i32 0, ptr %i.kz, align 8, !tbaa !44
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store i32 0, ptr %i.lb, align 8, !tbaa !44
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i32 0, ptr %i.ld, align 8, !tbaa !44
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  store i32 0, ptr %i.lf, align 8, !tbaa !44
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  store i32 0, ptr %i.lh, align 8, !tbaa !44
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  store i32 0, ptr %i.lj, align 8, !tbaa !44
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 56
  store i32 0, ptr %i.ll, align 8, !tbaa !44
  %indvars.iv.next477.7 = add nuw nsw i64 %indvars.iv476, 8 ; 2 uses
  %niter635.next.7 = add i64 %niter635, 8         ; 2 uses
  %niter635.ncmp.7 = icmp eq i64 %niter635.next.7, %unroll_iter634
  br i1 %niter635.ncmp.7, label %.lr.ph434.preheader.loopexit.unr-lcssa, label %_ZN12V3NumberData3numEv.exit328.us, !llvm.loop !392

.preheader422:                                    ; preds = %bb.bb
  %.not208432 = icmp slt i32 %.fr.i.i.i, -62
  br i1 %.not208432, label %._crit_edge, label %.lr.ph434.preheader

.lr.ph434.preheader.loopexit.unr-lcssa:           ; preds = %_ZN12V3NumberData3numEv.exit328.us
  %lcmp.mod632.not = icmp eq i64 %xtraiter630, 0
  br i1 %lcmp.mod632.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.us.epil.preheader

_ZN12V3NumberData3numEv.exit328.us.epil.preheader: ; preds = %.lr.ph434.preheader.loopexit.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.us.preheader
  %indvars.iv476.epil.init = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.us.preheader ], [ %indvars.iv.next477.7, %.lr.ph434.preheader.loopexit.unr-lcssa ]
  %lcmp.mod633 = icmp ne i64 %xtraiter630, 0
  tail call void @llvm.assume(i1 %lcmp.mod633)
  br label %_ZN12V3NumberData3numEv.exit328.us.epil

_ZN12V3NumberData3numEv.exit328.us.epil:          ; preds = %_ZN12V3NumberData3numEv.exit328.us.epil, %_ZN12V3NumberData3numEv.exit328.us.epil.preheader
  %indvars.iv476.epil = phi i64 [ %indvars.iv.next477.epil, %_ZN12V3NumberData3numEv.exit328.us.epil ], [ %indvars.iv476.epil.init, %_ZN12V3NumberData3numEv.exit328.us.epil.preheader ] ; 2 uses
  %epil.iter631 = phi i64 [ %epil.iter631.next, %_ZN12V3NumberData3numEv.exit328.us.epil ], [ 0, %_ZN12V3NumberData3numEv.exit328.us.epil.preheader ]
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv476.epil
  store i32 0, ptr %i.lm, align 8, !tbaa !44
  %indvars.iv.next477.epil = add nuw nsw i64 %indvars.iv476.epil, 1
  %epil.iter631.next = add i64 %epil.iter631, 1   ; 2 uses
  %epil.iter631.cmp.not = icmp eq i64 %epil.iter631.next, %xtraiter630
  br i1 %epil.iter631.cmp.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.us.epil, !llvm.loop !393

.lr.ph434.preheader.loopexit627.unr-lcssa:        ; preds = %_ZN12V3NumberData3numEv.exit328
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.epil.preheader

_ZN12V3NumberData3numEv.exit328.epil.preheader:   ; preds = %.lr.ph434.preheader.loopexit627.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.preheader ], [ %indvars.iv.next.3, %.lr.ph434.preheader.loopexit627.unr-lcssa ]
  %lcmp.mod629 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod629)
  br label %_ZN12V3NumberData3numEv.exit328.epil

_ZN12V3NumberData3numEv.exit328.epil:             ; preds = %_ZN12V3NumberData3numEv.exit328.epil, %_ZN12V3NumberData3numEv.exit328.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZN12V3NumberData3numEv.exit328.epil ], [ %indvars.iv.epil.init, %_ZN12V3NumberData3numEv.exit328.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN12V3NumberData3numEv.exit328.epil ], [ 0, %_ZN12V3NumberData3numEv.exit328.epil.preheader ]
  %i.ln = load ptr, ptr %0, align 8
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.epil
  store i32 0, ptr %i.lo, align 4, !tbaa !44
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph434.preheader, label %_ZN12V3NumberData3numEv.exit328.epil, !llvm.loop !394

.lr.ph434.preheader:                              ; preds = %.lr.ph434.preheader.loopexit627.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.epil, %.lr.ph434.preheader.loopexit.unr-lcssa, %_ZN12V3NumberData3numEv.exit328.us.epil, %.preheader422
  %smax482 = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.lp = zext nneg i32 %smax482 to i64
  %i.lq = shl nuw nsw i64 %i.lp, 2
  %i.lr = add nuw nsw i64 %i.lq, 4                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.lr, i1 false), !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.lr, i1 false), !tbaa !66
  br label %._crit_edge

_ZN12V3NumberData3numEv.exit328:                  ; preds = %_ZN12V3NumberData3numEv.exit328, %_ZN12V3NumberData3numEv.exit328.preheader.new
  %indvars.iv = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.preheader.new ], [ %indvars.iv.next.3, %_ZN12V3NumberData3numEv.exit328 ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN12V3NumberData3numEv.exit328.preheader.new ], [ %niter.next.3, %_ZN12V3NumberData3numEv.exit328 ]
  %i.ls = load ptr, ptr %0, align 8
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %indvars.iv
  store i32 0, ptr %i.lt, align 4, !tbaa !44
  %i.lu = load ptr, ptr %0, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store i32 0, ptr %i.lw, align 4, !tbaa !44
  %i.lx = load ptr, ptr %0, align 8
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store i32 0, ptr %i.lz, align 4, !tbaa !44
  %i.ma = load ptr, ptr %0, align 8
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  store i32 0, ptr %i.mc, align 4, !tbaa !44
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph434.preheader.loopexit627.unr-lcssa, label %_ZN12V3NumberData3numEv.exit328, !llvm.loop !392

bb.bc:                                            ; preds = %.lr.ph
  %i.md = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.me = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.mf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.me, ptr noundef nonnull @.str.118)
  %i.mg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, ptr noundef nonnull align 1 dereferenceable(1) %i.kp)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.mg) #32
  unreachable

._crit_edge:                                      ; preds = %.lr.ph434.preheader, %.preheader422
  %i.mh = sub i32 0, %i.cd
  %i.mi = and i32 %i.mh, 31                       ; 13 uses
  %.not209.not = icmp eq i32 %i.mi, 0             ; 7 uses
  %i.mj = add nsw i32 %i.ex, -1                   ; 3 uses
  %i.mk = icmp sgt i32 %i.cd, 32
  %i.ml = add i8 %i.bg, -1
  %spec.select.i.i332 = icmp ult i8 %i.ml, 2      ; 2 uses
  br i1 %i.mk, label %.lr.ph437, label %._crit_edge438

.lr.ph437:                                        ; preds = %._crit_edge
  %i.mm = sub nuw nsw i32 32, %i.mi               ; 2 uses
  br i1 %spec.select.i.i332, label %.lr.ph437.split, label %bb.be, !prof !43

.lr.ph437.split:                                  ; preds = %.lr.ph437
  %i.mn = icmp slt i32 %.fr.i.i.i244, 129
  %i.mo = load ptr, ptr %2, align 8
  %spec.select.i333 = select i1 %i.mn, ptr %2, ptr %i.mo ; 5 uses
  %i.mp = zext i32 %i.mj to i64                   ; 3 uses
  %i.mq = tail call i32 @llvm.smin.i32(i32 %i.mj, i32 1)
  %i.mr = xor i32 %i.mq, -1
  %i.ms = add i32 %i.ex, %i.mr                    ; 2 uses
  %i.mt = zext i32 %i.ms to i64
  %i.mu = add nuw nsw i64 %i.mt, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ms, 3
  br i1 %min.iters.check, label %_ZNK12V3NumberData3numEv.exit337.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph437.split
  %n.vec = and i64 %i.mu, 8589934588              ; 3 uses
  %i.mv = sub nsw i64 %i.mp, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.mi, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert622 = insertelement <4 x i32> poison, i32 %i.mm, i64 0
  %broadcast.splat623 = shufflevector <4 x i32> %broadcast.splatinsert622, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mw = sub i64 %i.mp, %index                   ; 5 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i333, i64 %i.mw ; 2 uses
  %i.my = getelementptr [8 x i8], ptr %spec.select.i333, i64 %i.mw ; 2 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 -8
  %i.na = getelementptr [8 x i8], ptr %spec.select.i333, i64 %i.mw ; 2 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 -16
  %i.nc = getelementptr [8 x i8], ptr %spec.select.i333, i64 %i.mw ; 2 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 -24
  %i.ne = load i32, ptr %i.mx, align 4, !tbaa !44
  %i.nf = load i32, ptr %i.mz, align 4, !tbaa !44
  %i.ng = load i32, ptr %i.nb, align 4, !tbaa !44
  %i.nh = load i32, ptr %i.nd, align 4, !tbaa !44
  %i.ni = insertelement <4 x i32> poison, i32 %i.ne, i64 0
  %i.nj = insertelement <4 x i32> %i.ni, i32 %i.nf, i64 1
  %i.nk = insertelement <4 x i32> %i.nj, i32 %i.ng, i64 2
  %i.nl = insertelement <4 x i32> %i.nk, i32 %i.nh, i64 3
  %i.nm = shl <4 x i32> %i.nl, %broadcast.splat
  %i.nn = getelementptr i8, ptr %i.mx, i64 -8
  %i.no = getelementptr i8, ptr %i.my, i64 -16
  %i.np = getelementptr i8, ptr %i.na, i64 -24
  %i.nq = getelementptr i8, ptr %i.nc, i64 -32
  %i.nr = load i32, ptr %i.nn, align 4, !tbaa !44
  %i.ns = load i32, ptr %i.no, align 4, !tbaa !44
  %i.nt = load i32, ptr %i.np, align 4, !tbaa !44
  %i.nu = load i32, ptr %i.nq, align 4, !tbaa !44
  %i.nv = insertelement <4 x i32> poison, i32 %i.nr, i64 0
  %i.nw = insertelement <4 x i32> %i.nv, i32 %i.ns, i64 1
  %i.nx = insertelement <4 x i32> %i.nw, i32 %i.nt, i64 2
  %i.ny = insertelement <4 x i32> %i.nx, i32 %i.nu, i64 3
  %i.nz = lshr <4 x i32> %i.ny, %broadcast.splat623
  %i.oa = select i1 %.not209.not, <4 x i32> zeroinitializer, <4 x i32> %i.nz
  %i.ob = or <4 x i32> %i.oa, %i.nm
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.mw
  %i.od = getelementptr inbounds i8, ptr %i.oc, i64 -12
  %reverse = shufflevector <4 x i32> %i.ob, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.od, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oe = icmp eq i64 %index.next, %n.vec
  br i1 %i.oe, label %middle.block, label %vector.body, !llvm.loop !395

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mu, %n.vec
  br i1 %cmp.n, label %_ZNK12V3NumberData3numEv.exit331, label %_ZNK12V3NumberData3numEv.exit337.preheader

_ZNK12V3NumberData3numEv.exit337.preheader:       ; preds = %.lr.ph437.split, %middle.block
  %indvars.iv487.ph = phi i64 [ %i.mp, %.lr.ph437.split ], [ %i.mv, %middle.block ]
  br label %_ZNK12V3NumberData3numEv.exit337

._crit_edge438:                                   ; preds = %._crit_edge
  br i1 %spec.select.i.i332, label %_ZNK12V3NumberData3numEv.exit331, label %bb.bd, !prof !396

bb.bd:                                            ; preds = %._crit_edge438
  %i.of = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.og = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.oh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.og, ptr noundef nonnull @.str.118)
  %i.oi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef nonnull align 1 dereferenceable(1) %i.o)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.oi) #32
  unreachable

_ZNK12V3NumberData3numEv.exit331:                 ; preds = %_ZNK12V3NumberData3numEv.exit337, %middle.block, %._crit_edge438
  %i.oj = icmp slt i32 %.fr.i.i.i244, 129
  %i.ok = load ptr, ptr %2, align 8
  %spec.select.i330 = select i1 %i.oj, ptr %2, ptr %i.ok
  %i.ol = load i32, ptr %spec.select.i330, align 4, !tbaa !44
  %i.om = shl i32 %i.ol, %i.mi
  store i32 %i.om, ptr %i.b, align 16, !tbaa !66
  br i1 %.not209.not, label %bb.bh, label %bb.bf

_ZNK12V3NumberData3numEv.exit337:                 ; preds = %_ZNK12V3NumberData3numEv.exit337.preheader, %_ZNK12V3NumberData3numEv.exit337
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %_ZNK12V3NumberData3numEv.exit337 ], [ %indvars.iv487.ph, %_ZNK12V3NumberData3numEv.exit337.preheader ] ; 4 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i333, i64 %indvars.iv487 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !44
  %i.op = shl i32 %i.oo, %i.mi
  %i.oq = getelementptr i8, ptr %i.on, i64 -8
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !44
  %i.os = lshr i32 %i.or, %i.mm
  %i.ot = select i1 %.not209.not, i32 0, i32 %i.os
  %i.ou = or i32 %i.ot, %i.op
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv487
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !66
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, -1
  %i.ow = trunc nuw i64 %indvars.iv487 to i32
  %i.ox = icmp sgt i32 %i.ow, 1
  br i1 %i.ox, label %_ZNK12V3NumberData3numEv.exit337, label %_ZNK12V3NumberData3numEv.exit331, !llvm.loop !397

bb.be:                                            ; preds = %.lr.ph437
  %i.oy = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.oz = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.pa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.oz, ptr noundef nonnull @.str.118)
  %i.pb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, ptr noundef nonnull align 1 dereferenceable(1) %i.o)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.pb) #32
  unreachable

bb.bf:                                            ; preds = %_ZNK12V3NumberData3numEv.exit331
  %i.pc = load i8, ptr %i.h, align 4, !tbaa !42   ; 2 uses
  %i.pd = add i8 %i.pc, -1
  %spec.select.i.i338 = icmp ult i8 %i.pd, 2
  br i1 %spec.select.i.i338, label %_ZNK12V3NumberData3numEv.exit340, label %bb.bg, !prof !43

bb.bg:                                            ; preds = %bb.bf
  %i.pe = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.pf = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.pg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.pf, ptr noundef nonnull @.str.118)
  %i.ph = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.pg, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ph) #32
  unreachable

_ZNK12V3NumberData3numEv.exit340:                 ; preds = %bb.bf
  %i.pi = icmp slt i32 %.fr.i.i.i, 129
  %i.pj = load ptr, ptr %1, align 8
  %spec.select.i339 = select i1 %i.pi, ptr %1, ptr %i.pj
  %i.pk = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.pl = getelementptr [8 x i8], ptr %spec.select.i339, i64 %i.pk
  %i.pm = getelementptr i8, ptr %i.pl, i64 -8
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !44
  %i.po = sub nuw nsw i32 32, %i.mi
  %i.pp = lshr i32 %i.pn, %i.po
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pk
  store i32 %i.pp, ptr %i.pq, align 4, !tbaa !66
  br label %bb.bi

bb.bh:                                            ; preds = %_ZNK12V3NumberData3numEv.exit331
  %i.pr = zext nneg i32 %i.ev to i64
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pr
  store i32 0, ptr %i.ps, align 4, !tbaa !66
  %.pre.pre = load i8, ptr %i.h, align 4, !tbaa !42
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNK12V3NumberData3numEv.exit340
  %.pre = phi i8 [ %.pre.pre, %bb.bh ], [ %i.pc, %_ZNK12V3NumberData3numEv.exit340 ]
  %i.pt = icmp ugt i32 %i.ba, 32
  %i.pu = add i8 %.pre, -1
  %spec.select.i.i344 = icmp ult i8 %i.pu, 2      ; 2 uses
  br i1 %i.pt, label %.lr.ph441, label %._crit_edge442

.lr.ph441:                                        ; preds = %bb.bi
  %i.pv = sub nuw nsw i32 32, %i.mi
  br i1 %spec.select.i.i344, label %.lr.ph441.split, label %bb.bk, !prof !43

.lr.ph441.split:                                  ; preds = %.lr.ph441
  %i.pw = icmp slt i32 %.fr.i.i.i, 129
  %i.px = load ptr, ptr %1, align 8
  %spec.select.i345 = select i1 %i.pw, ptr %1, ptr %i.px ; 2 uses
  %i.py = lshr i32 %i.eu, 5
  %i.pz = zext nneg i32 %i.py to i64
  br label %_ZNK12V3NumberData3numEv.exit349

._crit_edge442:                                   ; preds = %bb.bi
  br i1 %spec.select.i.i344, label %_ZNK12V3NumberData3numEv.exit343, label %bb.bj, !prof !398

bb.bj:                                            ; preds = %._crit_edge442
end_hunk_3
begin_hunk_4_@_ZN8V3Number12opModDivGutsERKS_S1_b:bb.a
  %lcmp.mod638.not = icmp eq i64 %xtraiter636, 0
  %lcmp.mod640 = trunc i32 %smax495 to i1
  %xtraiter643 = and i64 %wide.trip.count496, 1
  %i.qz = icmp eq i64 %i.qx, 0
  %unroll_iter648 = and i64 %wide.trip.count496, 67108862
  %lcmp.mod645.not = icmp eq i64 %xtraiter643, 0
  %lcmp.mod647 = trunc i32 %smax495 to i1
  br label %bb.bl

_ZNK12V3NumberData3numEv.exit349:                 ; preds = %.lr.ph441.split, %_ZNK12V3NumberData3numEv.exit349
  %indvars.iv490 = phi i64 [ %i.pz, %.lr.ph441.split ], [ %indvars.iv.next491, %_ZNK12V3NumberData3numEv.exit349 ] ; 3 uses
  %indvars.iv.next491 = add nsw i64 %indvars.iv490, -1 ; 3 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i345, i64 %indvars.iv.next491
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !44
  %i.rc = shl i32 %i.rb, %i.mi
  %i.rd = getelementptr [8 x i8], ptr %spec.select.i345, i64 %indvars.iv490
  %i.re = getelementptr i8, ptr %i.rd, i64 -16
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !44
  %i.rg = lshr i32 %i.rf, %i.pv
  %i.rh = select i1 %.not209.not, i32 0, i32 %i.rg
  %i.ri = or i32 %i.rh, %i.rc
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next491
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !66
  %i.rk = icmp samesign ugt i64 %indvars.iv490, 2
  br i1 %i.rk, label %_ZNK12V3NumberData3numEv.exit349, label %_ZNK12V3NumberData3numEv.exit343, !llvm.loop !399

bb.bk:                                            ; preds = %.lr.ph441
  %i.rl = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 246) ; 0 uses
  %i.rm = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.rn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef nonnull @.str.118)
  %i.ro = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef nonnull align 1 dereferenceable(1) %i.h)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ro) #32
  unreachable

._crit_edge456:                                   ; preds = %bb.br, %_ZNK12V3NumberData3numEv.exit343
  br i1 %3, label %.preheader421, label %bb.cm

.preheader421:                                    ; preds = %._crit_edge456
  %i.rp = icmp sgt i32 %i.cd, 0
  br i1 %i.rp, label %.lr.ph458, label %.preheader420

.lr.ph458:                                        ; preds = %.preheader421
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.rr = load i8, ptr %i.rq, align 4, !tbaa !42
  %i.rs = add i8 %i.rr, -1
  %spec.select.i.i356 = icmp ult i8 %i.rs, 2
  %i.rt = sub nuw nsw i32 32, %i.mi               ; 3 uses
  br i1 %spec.select.i.i356, label %.lr.ph458.split, label %bb.bs, !prof !43

.lr.ph458.split:                                  ; preds = %.lr.ph458
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !41
  %i.rw = icmp slt i32 %i.rv, 129                 ; 3 uses
  %smax509 = tail call i32 @llvm.smax.i32(i32 %i.ex, i32 1) ; 2 uses
  %wide.trip.count510 = zext nneg i32 %smax509 to i64 ; 2 uses
  %.pre527 = load i32, ptr %i.a, align 16, !tbaa !66 ; 2 uses
  %xtraiter650 = and i64 %wide.trip.count510, 1
  %i.rx = icmp slt i32 %i.cd, 33
  br i1 %i.rx, label %_ZN12V3NumberData3numEv.exit358.epil.preheader, label %.lr.ph458.split.new

.lr.ph458.split.new:                              ; preds = %.lr.ph458.split
  %unroll_iter654 = and i64 %wide.trip.count510, 67108862
  br label %_ZN12V3NumberData3numEv.exit358

bb.bl:                                            ; preds = %.lr.ph455, %bb.br
  %indvars.iv504 = phi i64 [ %i.qw, %.lr.ph455 ], [ %indvars.iv.next505, %bb.br ] ; 7 uses
  %gep616 = getelementptr [4 x i8], ptr %invariant.gep615, i64 %indvars.iv504 ; 6 uses
  %i.ry = getelementptr i8, ptr %gep616, i64 -4
  %i.rz = load i64, ptr %i.ry, align 4            ; 3 uses
  %i.sa = udiv i64 %i.rz, %i.qn                   ; 2 uses
  %i.sb = mul i64 %i.sa, %i.qn                    ; 0 uses
  %.recomposed = urem i64 %i.rz, %i.qn
  %i.sc = getelementptr i8, ptr %gep616, i64 -8
  %i.sd = lshr i64 %i.rz, 32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %bb.bl
  %.0168 = phi i64 [ %i.sa, %bb.bl ], [ %i.sn, %bb.bo ] ; 4 uses
  %.0167 = phi i64 [ %.recomposed, %bb.bl ], [ %i.so, %bb.bo ] ; 2 uses
  %i.se = icmp ugt i64 %.0168, 4294967295
  br i1 %i.se, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sf = load i32, ptr %i.qq, align 4, !tbaa !66
  %i.sg = zext i32 %i.sf to i64
  %i.sh = mul nuw i64 %.0168, %i.sg
  %i.si = shl i64 %.0167, 32
  %i.sj = load i32, ptr %i.sc, align 4, !tbaa !66
  %i.sk = zext i32 %i.sj to i64
  %i.sl = or disjoint i64 %i.si, %i.sk
  %i.sm = icmp ugt i64 %i.sh, %i.sl
  br i1 %i.sm, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.sn = add i64 %.0168, -1                      ; 2 uses
  %i.so = add i64 %.0167, %i.qn                   ; 2 uses
  %i.sp = icmp ult i64 %i.so, 4294967296
  br i1 %i.sp, label %bb.bm, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1169 = phi i64 [ %i.sn, %bb.bo ], [ %.0168, %bb.bn ] ; 4 uses
  br i1 %i.qr, label %.lr.ph446.preheader, label %._crit_edge447

.lr.ph446.preheader:                              ; preds = %bb.bp
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv504 ; 3 uses
  br i1 %i.qy, label %.lr.ph446.epil.preheader, label %.lr.ph446

._crit_edge447.loopexit.unr-lcssa:                ; preds = %.lr.ph446
  br i1 %lcmp.mod638.not, label %._crit_edge447.loopexit, label %.lr.ph446.epil.preheader

.lr.ph446.epil.preheader:                         ; preds = %._crit_edge447.loopexit.unr-lcssa, %.lr.ph446.preheader
  %indvars.iv492.epil.init = phi i64 [ 0, %.lr.ph446.preheader ], [ %indvars.iv.next493.1, %._crit_edge447.loopexit.unr-lcssa ] ; 2 uses
  %.0165443.epil.init = phi i64 [ 0, %.lr.ph446.preheader ], [ %i.uq, %._crit_edge447.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv492.epil.init
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !66
  %i.ss = zext i32 %i.sr to i64
  %i.st = mul i64 %.1169, %i.ss                   ; 2 uses
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv492.epil.init ; 2 uses
  %i.su = load i32, ptr %gep.epil, align 4, !tbaa !66
  %i.sv = zext i32 %i.su to i64
  %i.sw = and i64 %i.st, 4294967295
  %i.sx = add nuw nsw i64 %.0165443.epil.init, %i.sw
  %i.sy = sub nsw i64 %i.sv, %i.sx                ; 2 uses
  %i.sz = trunc i64 %i.sy to i32
  store i32 %i.sz, ptr %gep.epil, align 4, !tbaa !66
  %i.ta = lshr i64 %i.st, 32
  %i.tb = ashr i64 %i.sy, 32
  %i.tc = sub nsw i64 %i.ta, %i.tb
  br label %._crit_edge447.loopexit

._crit_edge447.loopexit:                          ; preds = %._crit_edge447.loopexit.unr-lcssa, %.lr.ph446.epil.preheader
  %.lcssa625 = phi i64 [ %i.uq, %._crit_edge447.loopexit.unr-lcssa ], [ %i.tc, %.lr.ph446.epil.preheader ]
  %.pre524 = load i32, ptr %gep616, align 4, !tbaa !66
  %i.td = zext i32 %.pre524 to i64
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %bb.bp
  %i.te = phi i64 [ %i.sd, %bb.bp ], [ %i.td, %._crit_edge447.loopexit ]
  %.0165.lcssa = phi i64 [ 0, %bb.bp ], [ %.lcssa625, %._crit_edge447.loopexit ]
  %i.tf = sub nsw i64 %i.te, %.0165.lcssa         ; 2 uses
  %i.tg = trunc i64 %i.tf to i32                  ; 2 uses
  store i32 %i.tg, ptr %gep616, align 4, !tbaa !66
  br i1 %spec.select.i.i350, label %_ZN12V3NumberData3numEv.exit352, label %bb.bq, !prof !43

bb.bq:                                            ; preds = %._crit_edge447
  %i.th = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.ti = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.tj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ti, ptr noundef nonnull @.str.118)
  %i.tk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.tj, ptr noundef nonnull align 1 dereferenceable(1) %i.qs)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.tk) #32
  unreachable

_ZN12V3NumberData3numEv.exit352:                  ; preds = %._crit_edge447
  %i.tl = trunc i64 %.1169 to i32
  %i.tm = load i32, ptr %i.qv, align 8, !tbaa !41
  %i.tn = icmp slt i32 %i.tm, 129                 ; 2 uses
  %i.to = load ptr, ptr %0, align 8
  %spec.select.i351 = select i1 %i.tn, ptr %0, ptr %i.to
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i351, i64 %indvars.iv504
  store i32 %i.tl, ptr %i.tp, align 4, !tbaa !44
  %i.tq = icmp slt i64 %i.tf, 0
  br i1 %i.tq, label %_ZN12V3NumberData3numEv.exit355, label %bb.br

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %.lr.ph446
  %indvars.iv492 = phi i64 [ %indvars.iv.next493.1, %.lr.ph446 ], [ 0, %.lr.ph446.preheader ] ; 4 uses
  %.0165443 = phi i64 [ %i.uq, %.lr.ph446 ], [ 0, %.lr.ph446.preheader ]
  %niter642 = phi i64 [ %niter642.next.1, %.lr.ph446 ], [ 0, %.lr.ph446.preheader ]
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv492
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !66
  %i.tt = zext i32 %i.ts to i64
  %i.tu = mul i64 %.1169, %i.tt                   ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv492 ; 2 uses
  %i.tv = load i32, ptr %gep, align 4, !tbaa !66
  %i.tw = zext i32 %i.tv to i64
  %i.tx = and i64 %i.tu, 4294967295
  %i.ty = add nuw nsw i64 %.0165443, %i.tx
  %i.tz = sub nsw i64 %i.tw, %i.ty                ; 2 uses
  %i.ua = trunc i64 %i.tz to i32
  store i32 %i.ua, ptr %gep, align 4, !tbaa !66
  %i.ub = lshr i64 %i.tu, 32
  %i.uc = ashr i64 %i.tz, 32
  %i.ud = sub nsw i64 %i.ub, %i.uc
  %indvars.iv.next493 = or disjoint i64 %indvars.iv492, 1 ; 2 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next493
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !66
  %i.ug = zext i32 %i.uf to i64
  %i.uh = mul i64 %.1169, %i.ug                   ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next493 ; 2 uses
  %i.ui = load i32, ptr %gep.1, align 4, !tbaa !66
  %i.uj = zext i32 %i.ui to i64
  %i.uk = and i64 %i.uh, 4294967295
  %i.ul = add nuw nsw i64 %i.ud, %i.uk
  %i.um = sub nsw i64 %i.uj, %i.ul                ; 2 uses
  %i.un = trunc i64 %i.um to i32
  store i32 %i.un, ptr %gep.1, align 4, !tbaa !66
  %i.uo = lshr i64 %i.uh, 32
  %i.up = ashr i64 %i.um, 32
  %i.uq = sub nsw i64 %i.uo, %i.up                ; 3 uses
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %._crit_edge447.loopexit.unr-lcssa, label %.lr.ph446, !llvm.loop !400

_ZN12V3NumberData3numEv.exit355:                  ; preds = %_ZN12V3NumberData3numEv.exit352
  %i.ur = load ptr, ptr %0, align 8
  %spec.select.i354 = select i1 %i.tn, ptr %0, ptr %i.ur
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i354, i64 %indvars.iv504 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !44
  %i.uu = add i32 %i.ut, -1
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !44
  br i1 %i.qr, label %.lr.ph450.preheader, label %._crit_edge451

.lr.ph450.preheader:                              ; preds = %_ZN12V3NumberData3numEv.exit355
  %invariant.gep613 = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv504 ; 3 uses
  br i1 %i.qz, label %.lr.ph450.epil.preheader, label %.lr.ph450

._crit_edge451.loopexit.unr-lcssa:                ; preds = %.lr.ph450
  br i1 %lcmp.mod645.not, label %._crit_edge451.loopexit, label %.lr.ph450.epil.preheader

.lr.ph450.epil.preheader:                         ; preds = %._crit_edge451.loopexit.unr-lcssa, %.lr.ph450.preheader
  %indvars.iv498.epil.init = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next499.1, %._crit_edge451.loopexit.unr-lcssa ] ; 2 uses
  %.1166448.epil.init = phi i64 [ 0, %.lr.ph450.preheader ], [ %i.vy, %._crit_edge451.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod647)
  %gep614.epil = getelementptr [4 x i8], ptr %invariant.gep613, i64 %indvars.iv498.epil.init ; 2 uses
  %i.uv = load i32, ptr %gep614.epil, align 4, !tbaa !66
  %i.uw = zext i32 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv498.epil.init
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !66
  %i.uz = zext i32 %i.uy to i64
  %i.va = add nuw nsw i64 %.1166448.epil.init, %i.uw
  %i.vb = add nuw nsw i64 %i.va, %i.uz            ; 2 uses
  %i.vc = trunc i64 %i.vb to i32
  store i32 %i.vc, ptr %gep614.epil, align 4, !tbaa !66
  %i.vd = lshr i64 %i.vb, 32
  br label %._crit_edge451.loopexit

._crit_edge451.loopexit:                          ; preds = %._crit_edge451.loopexit.unr-lcssa, %.lr.ph450.epil.preheader
  %.lcssa626 = phi i64 [ %i.vy, %._crit_edge451.loopexit.unr-lcssa ], [ %i.vd, %.lr.ph450.epil.preheader ]
  %.pre525 = load i32, ptr %gep616, align 4, !tbaa !66
  %i.ve = trunc nuw nsw i64 %.lcssa626 to i32
  br label %._crit_edge451

._crit_edge451:                                   ; preds = %._crit_edge451.loopexit, %_ZN12V3NumberData3numEv.exit355
  %i.vf = phi i32 [ %i.tg, %_ZN12V3NumberData3numEv.exit355 ], [ %.pre525, %._crit_edge451.loopexit ]
  %.1166.lcssa = phi i32 [ 0, %_ZN12V3NumberData3numEv.exit355 ], [ %i.ve, %._crit_edge451.loopexit ]
  %i.vg = add i32 %i.vf, %.1166.lcssa
  store i32 %i.vg, ptr %gep616, align 4, !tbaa !66
  br label %bb.br

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv498 = phi i64 [ %indvars.iv.next499.1, %.lr.ph450 ], [ 0, %.lr.ph450.preheader ] ; 4 uses
  %.1166448 = phi i64 [ %i.vy, %.lr.ph450 ], [ 0, %.lr.ph450.preheader ]
  %niter649 = phi i64 [ %niter649.next.1, %.lr.ph450 ], [ 0, %.lr.ph450.preheader ]
  %gep614 = getelementptr [4 x i8], ptr %invariant.gep613, i64 %indvars.iv498 ; 2 uses
  %i.vh = load i32, ptr %gep614, align 4, !tbaa !66
  %i.vi = zext i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv498
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !66
  %i.vl = zext i32 %i.vk to i64
  %i.vm = add nuw nsw i64 %.1166448, %i.vi
  %i.vn = add nuw nsw i64 %i.vm, %i.vl            ; 2 uses
  %i.vo = trunc i64 %i.vn to i32
  store i32 %i.vo, ptr %gep614, align 4, !tbaa !66
  %i.vp = lshr i64 %i.vn, 32
  %indvars.iv.next499 = or disjoint i64 %indvars.iv498, 1 ; 2 uses
  %gep614.1 = getelementptr [4 x i8], ptr %invariant.gep613, i64 %indvars.iv.next499 ; 2 uses
  %i.vq = load i32, ptr %gep614.1, align 4, !tbaa !66
  %i.vr = zext i32 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next499
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !66
  %i.vu = zext i32 %i.vt to i64
  %i.vv = add nuw nsw i64 %i.vp, %i.vr
  %i.vw = add nuw nsw i64 %i.vv, %i.vu            ; 2 uses
  %i.vx = trunc i64 %i.vw to i32
  store i32 %i.vx, ptr %gep614.1, align 4, !tbaa !66
  %i.vy = lshr i64 %i.vw, 32                      ; 3 uses
  %indvars.iv.next499.1 = add nuw nsw i64 %indvars.iv498, 2 ; 2 uses
  %niter649.next.1 = add i64 %niter649, 2         ; 2 uses
  %niter649.ncmp.1 = icmp eq i64 %niter649.next.1, %unroll_iter648
  br i1 %niter649.ncmp.1, label %._crit_edge451.loopexit.unr-lcssa, label %.lr.ph450, !llvm.loop !401

bb.br:                                            ; preds = %._crit_edge451, %_ZN12V3NumberData3numEv.exit352
  %indvars.iv.next505 = add nsw i64 %indvars.iv504, -1
  %i.vz = icmp sgt i64 %indvars.iv504, 0
  br i1 %i.vz, label %bb.bl, label %._crit_edge456, !llvm.loop !402

.preheader420.loopexit.unr-lcssa:                 ; preds = %_ZN12V3NumberData3numEv.exit358
  %lcmp.mod652.not = icmp eq i64 %xtraiter650, 0
  br i1 %lcmp.mod652.not, label %.preheader420, label %_ZN12V3NumberData3numEv.exit358.epil.preheader

_ZN12V3NumberData3numEv.exit358.epil.preheader:   ; preds = %.preheader420.loopexit.unr-lcssa, %.lr.ph458.split
  %.epil.init = phi i32 [ %.pre527, %.lr.ph458.split ], [ %i.ya, %.preheader420.loopexit.unr-lcssa ]
  %indvars.iv506.epil.init = phi i64 [ 0, %.lr.ph458.split ], [ %indvars.iv.next507.1, %.preheader420.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod653 = trunc i32 %smax509 to i1
  tail call void @llvm.assume(i1 %lcmp.mod653)
  %i.wa = lshr i32 %.epil.init, %i.mi
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv506.epil.init
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !66
  %i.we = shl i32 %i.wd, %i.rt
  %i.wf = select i1 %.not209.not, i32 0, i32 %i.we
  %i.wg = or i32 %i.wf, %i.wa
  %i.wh = load ptr, ptr %0, align 8
  %spec.select.i357.epil = select i1 %i.rw, ptr %0, ptr %i.wh
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i357.epil, i64 %indvars.iv506.epil.init
  store i32 %i.wg, ptr %i.wi, align 4, !tbaa !44
  br label %.preheader420

.preheader420:                                    ; preds = %_ZN12V3NumberData3numEv.exit358.epil.preheader, %.preheader420.loopexit.unr-lcssa, %.preheader421
  %i.wj = icmp slt i32 %i.ex, %i.z
  br i1 %i.wj, label %.lr.ph460, label %._crit_edge461

.lr.ph460:                                        ; preds = %.preheader420
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.wl = load i8, ptr %i.wk, align 4, !tbaa !42
  %i.wm = add i8 %i.wl, -1
  %spec.select.i.i359 = icmp ult i8 %i.wm, 2
  br i1 %spec.select.i.i359, label %.lr.ph460.split, label %bb.bt, !prof !43

.lr.ph460.split:                                  ; preds = %.lr.ph460
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !41
  %.fr = freeze i32 %i.wo
  %i.wp = icmp slt i32 %.fr, 129
  %i.wq = sext i32 %i.ex to i64                   ; 8 uses
  %wide.trip.count520 = sext i32 %i.z to i64      ; 6 uses
  br i1 %i.wp, label %_ZN12V3NumberData3numEv.exit361.us.preheader, label %_ZN12V3NumberData3numEv.exit361.preheader

_ZN12V3NumberData3numEv.exit361.preheader:        ; preds = %.lr.ph460.split
  %i.wr = sub nsw i64 %wide.trip.count520, %i.wq
  %xtraiter656 = and i64 %i.wr, 3                 ; 2 uses
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod657.not, label %_ZN12V3NumberData3numEv.exit361.prol.loopexit, label %_ZN12V3NumberData3numEv.exit361.prol

_ZN12V3NumberData3numEv.exit361.prol:             ; preds = %_ZN12V3NumberData3numEv.exit361.preheader, %_ZN12V3NumberData3numEv.exit361.prol
  %indvars.iv512.prol = phi i64 [ %indvars.iv.next513.prol, %_ZN12V3NumberData3numEv.exit361.prol ], [ %i.wq, %_ZN12V3NumberData3numEv.exit361.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN12V3NumberData3numEv.exit361.prol ], [ 0, %_ZN12V3NumberData3numEv.exit361.preheader ]
  %i.ws = load ptr, ptr %0, align 8
  %i.wt = getelementptr inbounds [8 x i8], ptr %i.ws, i64 %indvars.iv512.prol
  store i32 0, ptr %i.wt, align 4, !tbaa !44
  %indvars.iv.next513.prol = add nsw i64 %indvars.iv512.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter656
  br i1 %prol.iter.cmp.not, label %_ZN12V3NumberData3numEv.exit361.prol.loopexit, label %_ZN12V3NumberData3numEv.exit361.prol, !llvm.loop !403

_ZN12V3NumberData3numEv.exit361.prol.loopexit:    ; preds = %_ZN12V3NumberData3numEv.exit361.prol, %_ZN12V3NumberData3numEv.exit361.preheader
  %indvars.iv512.unr = phi i64 [ %i.wq, %_ZN12V3NumberData3numEv.exit361.preheader ], [ %indvars.iv.next513.prol, %_ZN12V3NumberData3numEv.exit361.prol ]
  %i.wu = sub nsw i64 %i.wq, %wide.trip.count520
  %i.wv = icmp ugt i64 %i.wu, -4
  br i1 %i.wv, label %._crit_edge461, label %_ZN12V3NumberData3numEv.exit361

_ZN12V3NumberData3numEv.exit361.us.preheader:     ; preds = %.lr.ph460.split
  %i.ww = sub nsw i64 %wide.trip.count520, %i.wq
  %xtraiter658 = and i64 %i.ww, 7                 ; 2 uses
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %_ZN12V3NumberData3numEv.exit361.us.prol.loopexit, label %_ZN12V3NumberData3numEv.exit361.us.prol

_ZN12V3NumberData3numEv.exit361.us.prol:          ; preds = %_ZN12V3NumberData3numEv.exit361.us.preheader, %_ZN12V3NumberData3numEv.exit361.us.prol
  %indvars.iv517.prol = phi i64 [ %indvars.iv.next518.prol, %_ZN12V3NumberData3numEv.exit361.us.prol ], [ %i.wq, %_ZN12V3NumberData3numEv.exit361.us.preheader ] ; 2 uses
  %prol.iter660 = phi i64 [ %prol.iter660.next, %_ZN12V3NumberData3numEv.exit361.us.prol ], [ 0, %_ZN12V3NumberData3numEv.exit361.us.preheader ]
  %i.wx = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv517.prol
  store i32 0, ptr %i.wx, align 8, !tbaa !44
  %indvars.iv.next518.prol = add nsw i64 %indvars.iv517.prol, 1 ; 2 uses
  %prol.iter660.next = add i64 %prol.iter660, 1   ; 2 uses
  %prol.iter660.cmp.not = icmp eq i64 %prol.iter660.next, %xtraiter658
  br i1 %prol.iter660.cmp.not, label %_ZN12V3NumberData3numEv.exit361.us.prol.loopexit, label %_ZN12V3NumberData3numEv.exit361.us.prol, !llvm.loop !404

_ZN12V3NumberData3numEv.exit361.us.prol.loopexit: ; preds = %_ZN12V3NumberData3numEv.exit361.us.prol, %_ZN12V3NumberData3numEv.exit361.us.preheader
  %indvars.iv517.unr = phi i64 [ %i.wq, %_ZN12V3NumberData3numEv.exit361.us.preheader ], [ %indvars.iv.next518.prol, %_ZN12V3NumberData3numEv.exit361.us.prol ]
  %i.wy = sub nsw i64 %i.wq, %wide.trip.count520
  %i.wz = icmp ugt i64 %i.wy, -8
  br i1 %i.wz, label %._crit_edge461, label %_ZN12V3NumberData3numEv.exit361.us

_ZN12V3NumberData3numEv.exit361.us:               ; preds = %_ZN12V3NumberData3numEv.exit361.us.prol.loopexit, %_ZN12V3NumberData3numEv.exit361.us
  %indvars.iv517 = phi i64 [ %indvars.iv.next518.7, %_ZN12V3NumberData3numEv.exit361.us ], [ %indvars.iv517.unr, %_ZN12V3NumberData3numEv.exit361.us.prol.loopexit ] ; 9 uses
  %i.xa = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv517
  store i32 0, ptr %i.xa, align 8, !tbaa !44
  %i.xb = getelementptr [8 x i8], ptr %0, i64 %indvars.iv517
  %i.xc = getelementptr i8, ptr %i.xb, i64 8
  store i32 0, ptr %i.xc, align 8, !tbaa !44
  %i.xd = getelementptr [8 x i8], ptr %0, i64 %indvars.iv517
  %i.xe = getelementptr i8, ptr %i.xd, i64 16
  store i32 0, ptr %i.xe, align 8, !tbaa !44
  %i.xf = getelementptr [8 x i8], ptr %0, i64 %indvars.iv517
  %i.xg = getelementptr i8, ptr %i.xf, i64 24
  store i32 0, ptr %i.xg, align 8, !tbaa !44
  %i.xh = getelementptr [8 x i8], ptr %0, i64 %indvars.iv517
  %i.xi = getelementptr i8, ptr %i.xh, i64 32
  store i32 0, ptr %i.xi, align 8, !tbaa !44
  %i.xj = getelementptr [8 x i8], ptr %0, i64 %indvars.iv517
  %i.xk = getelementptr i8, ptr %i.xj, i64 40
  store i32 0, ptr %i.xk, align 8, !tbaa !44
  %i.xl = getelementptr [8 x i8], ptr %0, i64 %indvars.iv517
  %i.xm = getelementptr i8, ptr %i.xl, i64 48
  store i32 0, ptr %i.xm, align 8, !tbaa !44
  %i.xn = getelementptr [8 x i8], ptr %0, i64 %indvars.iv517
  %i.xo = getelementptr i8, ptr %i.xn, i64 56
  store i32 0, ptr %i.xo, align 8, !tbaa !44
  %indvars.iv.next518.7 = add nsw i64 %indvars.iv517, 8 ; 2 uses
  %exitcond521.not.7 = icmp eq i64 %indvars.iv.next518.7, %wide.trip.count520
  br i1 %exitcond521.not.7, label %._crit_edge461, label %_ZN12V3NumberData3numEv.exit361.us, !llvm.loop !405

_ZN12V3NumberData3numEv.exit358:                  ; preds = %_ZN12V3NumberData3numEv.exit358, %.lr.ph458.split.new
  %i.xp = phi i32 [ %.pre527, %.lr.ph458.split.new ], [ %i.ya, %_ZN12V3NumberData3numEv.exit358 ]
  %indvars.iv506 = phi i64 [ 0, %.lr.ph458.split.new ], [ %indvars.iv.next507.1, %_ZN12V3NumberData3numEv.exit358 ] ; 3 uses
  %niter655 = phi i64 [ 0, %.lr.ph458.split.new ], [ %niter655.next.1, %_ZN12V3NumberData3numEv.exit358 ]
  %i.xq = lshr i32 %i.xp, %i.mi
  %indvars.iv.next507 = or disjoint i64 %indvars.iv506, 1 ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next507
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !66 ; 2 uses
  %i.xt = shl i32 %i.xs, %i.rt
  %i.xu = select i1 %.not209.not, i32 0, i32 %i.xt
  %i.xv = or i32 %i.xu, %i.xq
  %i.xw = load ptr, ptr %0, align 8
  %spec.select.i357 = select i1 %i.rw, ptr %0, ptr %i.xw
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i357, i64 %indvars.iv506
  store i32 %i.xv, ptr %i.xx, align 4, !tbaa !44
  %i.xy = lshr i32 %i.xs, %i.mi
  %indvars.iv.next507.1 = add nuw nsw i64 %indvars.iv506, 2 ; 3 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next507.1
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !66 ; 3 uses
  %i.yb = shl i32 %i.ya, %i.rt
  %i.yc = select i1 %.not209.not, i32 0, i32 %i.yb
  %i.yd = or i32 %i.yc, %i.xy
  %i.ye = load ptr, ptr %0, align 8
  %spec.select.i357.1 = select i1 %i.rw, ptr %0, ptr %i.ye
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i357.1, i64 %indvars.iv.next507
  store i32 %i.yd, ptr %i.yf, align 4, !tbaa !44
  %niter655.next.1 = add nuw i64 %niter655, 2     ; 2 uses
  %niter655.ncmp.1 = icmp eq i64 %niter655.next.1, %unroll_iter654
  br i1 %niter655.ncmp.1, label %.preheader420.loopexit.unr-lcssa, label %_ZN12V3NumberData3numEv.exit358, !llvm.loop !406

bb.bs:                                            ; preds = %.lr.ph458
  %i.yg = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.yh = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.yi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.yh, ptr noundef nonnull @.str.118)
  %i.yj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.yi, ptr noundef nonnull align 1 dereferenceable(1) %i.rq)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.yj) #32
  unreachable

._crit_edge461:                                   ; preds = %_ZN12V3NumberData3numEv.exit361.prol.loopexit, %_ZN12V3NumberData3numEv.exit361, %_ZN12V3NumberData3numEv.exit361.us.prol.loopexit, %_ZN12V3NumberData3numEv.exit361.us, %.preheader420
  tail call void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.yk = tail call noundef i32 @_ZL5debugv()
  %i.yl = icmp sgt i32 %i.yk, 8
  br i1 %i.yl, label %bb.bu, label %bb.df, !prof !156

_ZN12V3NumberData3numEv.exit361:                  ; preds = %_ZN12V3NumberData3numEv.exit361.prol.loopexit, %_ZN12V3NumberData3numEv.exit361
  %indvars.iv512 = phi i64 [ %indvars.iv.next513.3, %_ZN12V3NumberData3numEv.exit361 ], [ %indvars.iv512.unr, %_ZN12V3NumberData3numEv.exit361.prol.loopexit ] ; 5 uses
  %i.ym = load ptr, ptr %0, align 8
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %indvars.iv512
  store i32 0, ptr %i.yn, align 4, !tbaa !44
  %i.yo = load ptr, ptr %0, align 8
  %i.yp = getelementptr [8 x i8], ptr %i.yo, i64 %indvars.iv512
  %i.yq = getelementptr i8, ptr %i.yp, i64 8
  store i32 0, ptr %i.yq, align 4, !tbaa !44
  %i.yr = load ptr, ptr %0, align 8
  %i.ys = getelementptr [8 x i8], ptr %i.yr, i64 %indvars.iv512
  %i.yt = getelementptr i8, ptr %i.ys, i64 16
  store i32 0, ptr %i.yt, align 4, !tbaa !44
  %i.yu = load ptr, ptr %0, align 8
  %i.yv = getelementptr [8 x i8], ptr %i.yu, i64 %indvars.iv512
  %i.yw = getelementptr i8, ptr %i.yv, i64 24
  store i32 0, ptr %i.yw, align 4, !tbaa !44
  %indvars.iv.next513.3 = add nsw i64 %indvars.iv512, 4 ; 2 uses
  %exitcond516.not.3 = icmp eq i64 %indvars.iv.next513.3, %wide.trip.count520
  br i1 %exitcond516.not.3, label %._crit_edge461, label %_ZN12V3NumberData3numEv.exit361, !llvm.loop !405

bb.bt:                                            ; preds = %.lr.ph460
  %i.yx = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.117, i32 noundef 242) ; 0 uses
  %i.yy = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.yz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.yy, ptr noundef nonnull @.str.118)
  %i.za = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.yz, ptr noundef nonnull align 1 dereferenceable(1) %i.wk)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.za) #32
  unreachable

bb.bu:                                            ; preds = %._crit_edge461
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14)
end_hunk_4
