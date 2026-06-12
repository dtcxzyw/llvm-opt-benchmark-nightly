inline.NumInlined: 92
inline.NumDeleted: 45
begin_hunk_0_@_ZN9NCompress8NHuffman8CDecoderILi16ELj20EE14SetCodeLengthsEPKh:.preheader53

bb.bd:                                            ; preds = %bb.bc
  %i.kq = zext i8 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kq ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4  ; 2 uses
  %i.kt = add i32 %i.ks, 1
  store i32 %i.kt, ptr %i.kr, align 4, !tbaa !4
  %i.ku = zext i32 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ku
  store i32 16, ptr %i.kv, align 4, !tbaa !4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.kw = load i8, ptr %i.eh, align 1, !tbaa !49  ; 2 uses
  %.not.17 = icmp eq i8 %i.kw, 0
  br i1 %.not.17, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kx = zext i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !4  ; 2 uses
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !4
  %i.lb = zext i32 %i.kz to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lb
  store i32 17, ptr %i.lc, align 4, !tbaa !4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ld = load i8, ptr %i.ep, align 1, !tbaa !49  ; 2 uses
  %.not.18 = icmp eq i8 %i.ld, 0
  br i1 %.not.18, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !4  ; 2 uses
  %i.lh = add i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !4
  %i.li = zext i32 %i.lg to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.li
  store i32 18, ptr %i.lj, align 4, !tbaa !4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lk = load i8, ptr %i.ex, align 1, !tbaa !49  ; 2 uses
  %.not.19 = icmp eq i8 %i.lk, 0
  br i1 %.not.19, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !4
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lo
  store i32 19, ptr %i.lp, align 4, !tbaa !4
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %.preheader53, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.bi, %bb.bj
  %.3 = phi i1 [ true, %bb.bi ], [ false, %.preheader53 ], [ true, %bb.bj ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress8NHuffman8CDecoderILi16ELj20EE12DecodeSymbolINS_4NLzx10NBitStream8CDecoderEEEjPT_(ptr noundef nonnull align 4 dereferenceable(728) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  %i.e = sub i32 15, %i.d
  %i.f = lshr i32 %i.b, %i.e
  %i.g = lshr i32 %i.f, 1
  %i.h = and i32 %i.g, 65535                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = icmp ult i32 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = lshr i32 %i.h, 7
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !49
  %i.q = zext i8 %i.p to i32
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 10, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %.not = icmp ult i32 %i.h, %i.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !55

.loopexit.loopexit:                               ; preds = %.preheader
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.1 = phi i32 [ %i.q, %bb.b ], [ %i.t, %.loopexit.loopexit ] ; 3 uses
  %i.u = add i32 %.1, %i.d                        ; 2 uses
  store i32 %i.u, ptr %i.c, align 4, !tbaa !46
  %i.v = icmp ugt i32 %i.u, 15
  br i1 %i.v, label %.lr.ph.i.i, label %_ZN9NCompress4NLzx10NBitStream8CDecoder7MovePosEj.exit

.lr.ph.i.i:                                       ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i, %.lr.ph.i.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.x, %i.y
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !47
  %.pre5.i.i = load ptr, ptr %i.w, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !47
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %.pre5.i.i, %bb.d ], [ %i.y, %bb.e ]
  %i.ad = phi ptr [ %.pre.i.i, %bb.d ], [ %i.aa, %bb.e ] ; 3 uses
  %.0.i.i.i = phi i8 [ %i.z, %bb.d ], [ %i.ab, %bb.e ]
  %.not.i2.i.i = icmp ult ptr %i.ad, %i.ac
  br i1 %.not.i2.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i
  %i.ae = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i

bb.g:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.af, ptr %1, align 8, !tbaa !47
  %i.ag = load i8, ptr %i.ad, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i

_ZN9CInBuffer8ReadByteEv.exit4.i.i:               ; preds = %bb.g, %bb.f
  %.0.i3.i.i = phi i8 [ %i.ae, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !45
  %i.ai = zext i8 %.0.i3.i.i to i32
  %i.aj = shl i32 %i.ah, 16
  %i.ak = shl nuw nsw i32 %i.ai, 8
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = zext i8 %.0.i.i.i to i32
  %i.an = or disjoint i32 %i.al, %i.am
  store i32 %i.an, ptr %i.a, align 8, !tbaa !45
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !46
  %i.ap = add i32 %i.ao, -16                      ; 2 uses
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !46
  %i.aq = icmp ugt i32 %i.ap, 15
  br i1 %i.aq, label %bb.c, label %_ZN9NCompress4NLzx10NBitStream8CDecoder7MovePosEj.exit, !llvm.loop !50

_ZN9NCompress4NLzx10NBitStream8CDecoder7MovePosEj.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i, %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.as = zext nneg i32 %.1 to i64                ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = getelementptr [4 x i8], ptr %0, i64 %i.as
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sub i32 %i.h, %i.ax
  %i.az = sub nsw i32 16, %.1
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = add i32 %i.ba, %i.au                    ; 2 uses
  %i.bc = icmp ugt i32 %i.bb, 19
  br i1 %i.bc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder7MovePosEj.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.be = zext nneg i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder7MovePosEj.exit, %bb.h
  %.0 = phi i32 [ %i.bg, %bb.h ], [ -1, %_ZN9NCompress4NLzx10NBitStream8CDecoder7MovePosEj.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9NCompress4NLzx8CDecoder10ReadTablesEv(ptr noundef nonnull align 8 dereferenceable(7414) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 8 uses
  %i.b = alloca [17 x i32], align 16              ; 5 uses
  %i.c = alloca [17 x i32], align 16              ; 9 uses
  %i.d = alloca [17 x i32], align 16              ; 6 uses
  %i.e = alloca [656 x i8], align 16              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7412 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !37, !range !56, !noundef !57
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %.not.i.i = icmp ult ptr %i.j, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.i) ; 0 uses
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.n, ptr %i.i, align 8, !tbaa !47
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 61 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 21 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46   ; 2 uses
  %i.r = icmp ugt i32 %i.q, 15
  br i1 %i.r, label %.lr.ph.i, label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit._ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit_crit_edge

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit._ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit_crit_edge: ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit

.lr.ph.i:                                         ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i, %.lr.ph.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !48   ; 2 uses
  %.not.i.i26 = icmp ult ptr %i.u, %i.v
  br i1 %.not.i.i26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre5.i = load ptr, ptr %i.s, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !47
  %i.y = load i8, ptr %i.u, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i

_ZN9CInBuffer8ReadByteEv.exit.i:                  ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %.pre5.i, %bb.f ], [ %i.v, %bb.g ]
  %i.aa = phi ptr [ %.pre.i, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %.0.i.i27 = phi i8 [ %i.w, %bb.f ], [ %i.y, %bb.g ]
  %.not.i2.i = icmp ult ptr %i.aa, %i.z
  br i1 %.not.i2.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i
  %i.ab = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i

bb.i:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ac, ptr %i.o, align 8, !tbaa !47
  %i.ad = load i8, ptr %i.aa, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i

_ZN9CInBuffer8ReadByteEv.exit4.i:                 ; preds = %bb.i, %bb.h
  %.0.i3.i = phi i8 [ %i.ab, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !45
  %i.af = zext i8 %.0.i3.i to i32
  %i.ag = shl i32 %i.ae, 16
  %i.ah = shl nuw nsw i32 %i.af, 8
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = zext i8 %.0.i.i27 to i32
  %i.ak = or disjoint i32 %i.ai, %i.aj            ; 2 uses
  store i32 %i.ak, ptr %i.t, align 8, !tbaa !45
  %i.al = load i32, ptr %i.p, align 4, !tbaa !46
  %i.am = add i32 %i.al, -16                      ; 3 uses
  store i32 %i.am, ptr %i.p, align 4, !tbaa !46
  %i.an = icmp ugt i32 %i.am, 15
  br i1 %i.an, label %bb.e, label %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit, !llvm.loop !50

_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i, %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit._ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit_crit_edge
  %i.ao = phi i32 [ %i.q, %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit._ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit_crit_edge ], [ %i.am, %_ZN9CInBuffer8ReadByteEv.exit4.i ] ; 3 uses
  %i.ap = phi i32 [ %.pre, %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit._ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit_crit_edge ], [ %i.ak, %_ZN9CInBuffer8ReadByteEv.exit4.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.ar = add nuw nsw i32 %i.ao, 3                ; 2 uses
  store i32 %i.ar, ptr %i.p, align 4, !tbaa !46
  %i.as = icmp samesign ugt i32 %i.ao, 12
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i, %.lr.ph.i.i.i.i
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !47  ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i = icmp ult ptr %i.au, %i.av
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre5.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.ax, ptr %i.o, align 8, !tbaa !47
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i:            ; preds = %bb.l, %bb.k
  %i.az = phi ptr [ %.pre5.i.i.i.i, %bb.k ], [ %i.av, %bb.l ]
  %i.ba = phi ptr [ %.pre.i.i.i.i, %bb.k ], [ %i.ax, %bb.l ] ; 3 uses
  %.0.i.i.i.i.i = phi i8 [ %i.aw, %bb.k ], [ %i.ay, %bb.l ]
  %.not.i2.i.i.i.i = icmp ult ptr %i.ba, %i.az
  br i1 %.not.i2.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i
  %i.bb = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i

bb.n:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !47
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i:           ; preds = %bb.n, %bb.m
  %.0.i3.i.i.i.i = phi i8 [ %i.bb, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = load i32, ptr %i.aq, align 8, !tbaa !45
  %i.bf = zext i8 %.0.i3.i.i.i.i to i32
  %i.bg = shl i32 %i.be, 16
  %i.bh = shl nuw nsw i32 %i.bf, 8
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = zext i8 %.0.i.i.i.i.i to i32
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  store i32 %i.bk, ptr %i.aq, align 8, !tbaa !45
  %i.bl = load i32, ptr %i.p, align 4, !tbaa !46
  %i.bm = add i32 %i.bl, -16                      ; 3 uses
  store i32 %i.bm, ptr %i.p, align 4, !tbaa !46
  %i.bn = icmp ugt i32 %i.bm, 15
  br i1 %i.bn, label %bb.j, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit, !llvm.loop !50

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit:      ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i, %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit
  %i.bo = phi i32 [ %i.ar, %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit ], [ %i.bm, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i ] ; 3 uses
  %i.bp = phi i32 [ %i.ap, %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit ], [ %i.bk, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i ] ; 2 uses
  %i.bq = sub nuw nsw i32 15, %i.ao
  %i.br = lshr i32 %i.ap, %i.bq
  %i.bs = lshr i32 %i.br, 14
  %i.bt = and i32 %i.bs, 7                        ; 3 uses
  %i.bu = icmp samesign ugt i32 %i.bt, 3
  br i1 %i.bu, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98, label %bb.o

bb.o:                                             ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 7413
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !38, !range !56, !noundef !57
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.by = add nuw nsw i32 %i.bo, 1                ; 2 uses
  store i32 %i.by, ptr %i.p, align 4, !tbaa !46
  %i.bz = icmp samesign ugt i32 %i.bo, 14
  br i1 %i.bz, label %.lr.ph.i.i.i.i28, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37

.lr.ph.i.i.i.i28:                                 ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35, %.lr.ph.i.i.i.i28
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !47  ; 3 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i29 = icmp ult ptr %i.cb, %i.cc
  br i1 %.not.i.i.i.i.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i30 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre5.i.i.i.i31 = load ptr, ptr %i.ca, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32

bb.s:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  store ptr %i.ce, ptr %i.o, align 8, !tbaa !47
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32:          ; preds = %bb.s, %bb.r
  %i.cg = phi ptr [ %.pre5.i.i.i.i31, %bb.r ], [ %i.cc, %bb.s ]
  %i.ch = phi ptr [ %.pre.i.i.i.i30, %bb.r ], [ %i.ce, %bb.s ] ; 3 uses
  %.0.i.i.i.i.i33 = phi i8 [ %i.cd, %bb.r ], [ %i.cf, %bb.s ]
  %.not.i2.i.i.i.i34 = icmp ult ptr %i.ch, %i.cg
  br i1 %.not.i2.i.i.i.i34, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32
  %i.ci = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35

bb.u:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.cj, ptr %i.o, align 8, !tbaa !47
  %i.ck = load i8, ptr %i.ch, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35:         ; preds = %bb.u, %bb.t
  %.0.i3.i.i.i.i36 = phi i8 [ %i.ci, %bb.t ], [ %i.ck, %bb.u ]
  %i.cl = load i32, ptr %i.aq, align 8, !tbaa !45
  %i.cm = zext i8 %.0.i3.i.i.i.i36 to i32
  %i.cn = shl i32 %i.cl, 16
  %i.co = shl nuw nsw i32 %i.cm, 8
  %i.cp = or disjoint i32 %i.cn, %i.co
  %i.cq = zext i8 %.0.i.i.i.i.i33 to i32
  %i.cr = or disjoint i32 %i.cp, %i.cq            ; 2 uses
  store i32 %i.cr, ptr %i.aq, align 8, !tbaa !45
  %i.cs = load i32, ptr %i.p, align 4, !tbaa !46
  %i.ct = add i32 %i.cs, -16                      ; 3 uses
  store i32 %i.ct, ptr %i.p, align 4, !tbaa !46
  %i.cu = icmp ugt i32 %i.ct, 15
  br i1 %i.cu, label %bb.q, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37, !llvm.loop !50

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35, %bb.p
  %i.cv = phi i32 [ %i.by, %bb.p ], [ %i.ct, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35 ] ; 2 uses
  %i.cw = phi i32 [ %i.bp, %bb.p ], [ %i.cr, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i35 ]
  %i.cx = lshr exact i32 -2147483648, %i.bo
  %i.cy = and i32 %i.cx, %i.bp
  %.not = icmp eq i32 %i.cy, 0
  br i1 %.not, label %.lr.ph.i.i.i.i38, label %bb.ab

.lr.ph.i.i.i.i38:                                 ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37
  %i.cz = add nuw nsw i32 %i.cv, 16
  store i32 %i.cz, ptr %i.p, align 4, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45, %.lr.ph.i.i.i.i38
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !47  ; 3 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i39 = icmp ult ptr %i.db, %i.dc
  br i1 %.not.i.i.i.i.i39, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i40 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre5.i.i.i.i41 = load ptr, ptr %i.da, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42

bb.x:                                             ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.de, ptr %i.o, align 8, !tbaa !47
  %i.df = load i8, ptr %i.db, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42:          ; preds = %bb.x, %bb.w
  %i.dg = phi ptr [ %.pre5.i.i.i.i41, %bb.w ], [ %i.dc, %bb.x ]
  %i.dh = phi ptr [ %.pre.i.i.i.i40, %bb.w ], [ %i.de, %bb.x ] ; 3 uses
  %.0.i.i.i.i.i43 = phi i8 [ %i.dd, %bb.w ], [ %i.df, %bb.x ]
  %.not.i2.i.i.i.i44 = icmp ult ptr %i.dh, %i.dg
  br i1 %.not.i2.i.i.i.i44, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42
  %i.di = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45

bb.z:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i42
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.dj, ptr %i.o, align 8, !tbaa !47
  %i.dk = load i8, ptr %i.dh, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45:         ; preds = %bb.z, %bb.y
  %.0.i3.i.i.i.i46 = phi i8 [ %i.di, %bb.y ], [ %i.dk, %bb.z ]
  %i.dl = load i32, ptr %i.aq, align 8, !tbaa !45
  %i.dm = zext i8 %.0.i3.i.i.i.i46 to i32
  %i.dn = shl i32 %i.dl, 16
  %i.do = shl nuw nsw i32 %i.dm, 8
  %i.dp = or disjoint i32 %i.dn, %i.do
  %i.dq = zext i8 %.0.i.i.i.i.i43 to i32
  %i.dr = or disjoint i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.aq, align 8, !tbaa !45
  %i.ds = load i32, ptr %i.p, align 4, !tbaa !46
  %i.dt = add i32 %i.ds, -16                      ; 2 uses
  store i32 %i.dt, ptr %i.p, align 4, !tbaa !46
  %i.du = icmp ugt i32 %i.dt, 15
  br i1 %i.du, label %bb.v, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47, !llvm.loop !50

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i45
  %i.dv = sub nuw nsw i32 15, %i.cv
  %i.dw = lshr i32 %i.cw, %i.dv
  %i.dx = lshr i32 %i.dw, 1
  %i.dy = and i32 %i.dx, 65535
  br label %bb.ab

bb.aa:                                            ; preds = %bb.o
  %i.dz = tail call noundef i32 @_ZN9NCompress4NLzx10NBitStream8CDecoder11ReadBitsBigEj(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i32 noundef 24)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47, %bb.aa
  %.sink = phi i32 [ %i.dz, %bb.aa ], [ %i.dy, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit47 ], [ 32768, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit37 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 7400
  store i32 %.sink, ptr %i.ea, align 8, !tbaa !58
  %i.eb = icmp eq i32 %i.bt, 3                    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ed = zext i1 %i.eb to i8
  store i8 %i.ed, ptr %i.ec, align 8, !tbaa !59
  %1 = trunc i32 %.sink to i8
  %2 = and i8 %1, 1
  %3 = select i1 %i.eb, i8 %2, i8 0
  store i8 %3, ptr %i.f, align 4, !tbaa !37
  br i1 %i.eb, label %bb.ac, label %bb.ay

bb.ac:                                            ; preds = %bb.ab
  %i.ee = load i32, ptr %i.p, align 4, !tbaa !46
  %reass.sub = and i32 %i.ee, -16
  %i.ef = add i32 %reass.sub, 16                  ; 2 uses
  store i32 %i.ef, ptr %i.p, align 4, !tbaa !46
  %.not102 = icmp eq i32 %i.ef, 0
  br i1 %.not102, label %.preheader, label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55, %.lr.ph.i.i.i.i48
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !47  ; 3 uses
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i49 = icmp ult ptr %i.eh, %i.ei
  br i1 %.not.i.i.i.i.i49, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ej = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i50 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre5.i.i.i.i51 = load ptr, ptr %i.eg, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52

bb.af:                                            ; preds = %bb.ad
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 2 uses
  store ptr %i.ek, ptr %i.o, align 8, !tbaa !47
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52:          ; preds = %bb.af, %bb.ae
  %i.em = phi ptr [ %.pre5.i.i.i.i51, %bb.ae ], [ %i.ei, %bb.af ]
  %i.en = phi ptr [ %.pre.i.i.i.i50, %bb.ae ], [ %i.ek, %bb.af ] ; 3 uses
  %.0.i.i.i.i.i53 = phi i8 [ %i.ej, %bb.ae ], [ %i.el, %bb.af ]
  %.not.i2.i.i.i.i54 = icmp ult ptr %i.en, %i.em
  br i1 %.not.i2.i.i.i.i54, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52
  %i.eo = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55

bb.ah:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i52
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store ptr %i.ep, ptr %i.o, align 8, !tbaa !47
  %i.eq = load i8, ptr %i.en, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55:         ; preds = %bb.ah, %bb.ag
  %.0.i3.i.i.i.i56 = phi i8 [ %i.eo, %bb.ag ], [ %i.eq, %bb.ah ]
  %i.er = load i32, ptr %i.aq, align 8, !tbaa !45
  %i.es = zext i8 %.0.i3.i.i.i.i56 to i32
  %i.et = shl i32 %i.er, 16
  %i.eu = shl nuw nsw i32 %i.es, 8
  %i.ev = or disjoint i32 %i.et, %i.eu
  %i.ew = zext i8 %.0.i.i.i.i.i53 to i32
  %i.ex = or disjoint i32 %i.ev, %i.ew
  store i32 %i.ex, ptr %i.aq, align 8, !tbaa !45
  %i.ey = load i32, ptr %i.p, align 4, !tbaa !46
  %i.ez = add i32 %i.ey, -16                      ; 3 uses
  store i32 %i.ez, ptr %i.p, align 4, !tbaa !46
  %i.fa = icmp ugt i32 %i.ez, 15
  br i1 %i.fa, label %bb.ad, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit57, !llvm.loop !50

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit57:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i55
  %i.fb = icmp eq i32 %i.ez, 0
  br i1 %i.fb, label %.preheader, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98

.preheader:                                       ; preds = %bb.ac, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit57
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fd = load i32, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %i.fe = tail call i32 @llvm.fshl.i32(i32 %i.fd, i32 %i.fd, i32 16)
  store i32 32, ptr %i.p, align 4, !tbaa !46
  %i.ff = add i32 %i.fe, -1
  store i32 %i.ff, ptr %i.fc, align 8, !tbaa !4
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !47  ; 3 uses
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !48 ; 2 uses
  %.not.i.i58 = icmp ult ptr %i.fh, %i.fi
  br i1 %.not.i.i58, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %i.fj = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre129 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre130 = load ptr, ptr %i.fg, align 8, !tbaa !48
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61

bb.aj:                                            ; preds = %.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 1 ; 2 uses
  store ptr %i.fk, ptr %i.o, align 8, !tbaa !47
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61: ; preds = %bb.ai, %bb.aj
  %i.fm = phi ptr [ %.pre130, %bb.ai ], [ %i.fi, %bb.aj ] ; 2 uses
  %i.fn = phi ptr [ %.pre129, %bb.ai ], [ %i.fk, %bb.aj ] ; 3 uses
  %.0.i.i60 = phi i8 [ %i.fj, %bb.ai ], [ %i.fl, %bb.aj ]
  %i.fo = zext i8 %.0.i.i60 to i32
  %.not.i.i58.1 = icmp ult ptr %i.fn, %i.fm
  br i1 %.not.i.i58.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61
  %i.fp = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre131 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre132 = load ptr, ptr %i.fg, align 8, !tbaa !48
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1

bb.al:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 1 ; 2 uses
  store ptr %i.fq, ptr %i.o, align 8, !tbaa !47
  %i.fr = load i8, ptr %i.fn, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1: ; preds = %bb.al, %bb.ak
  %i.fs = phi ptr [ %.pre132, %bb.ak ], [ %i.fm, %bb.al ] ; 2 uses
  %i.ft = phi ptr [ %.pre131, %bb.ak ], [ %i.fq, %bb.al ] ; 3 uses
  %.0.i.i60.1 = phi i8 [ %i.fp, %bb.ak ], [ %i.fr, %bb.al ]
  %i.fu = zext i8 %.0.i.i60.1 to i32
  %i.fv = shl nuw nsw i32 %i.fu, 8
  %i.fw = or disjoint i32 %i.fv, %i.fo
  %.not.i.i58.2 = icmp ult ptr %i.ft, %i.fs
  br i1 %.not.i.i58.2, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1
  %i.fx = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre133 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre134 = load ptr, ptr %i.fg, align 8, !tbaa !48
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2

bb.an:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 2 uses
  store ptr %i.fy, ptr %i.o, align 8, !tbaa !47
  %i.fz = load i8, ptr %i.ft, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2: ; preds = %bb.an, %bb.am
  %i.ga = phi ptr [ %.pre134, %bb.am ], [ %i.fs, %bb.an ] ; 2 uses
  %i.gb = phi ptr [ %.pre133, %bb.am ], [ %i.fy, %bb.an ] ; 3 uses
  %.0.i.i60.2 = phi i8 [ %i.fx, %bb.am ], [ %i.fz, %bb.an ]
  %i.gc = zext i8 %.0.i.i60.2 to i32
  %i.gd = shl nuw nsw i32 %i.gc, 16
  %i.ge = or disjoint i32 %i.gd, %i.fw
  %.not.i.i58.3 = icmp ult ptr %i.gb, %i.ga
  br i1 %.not.i.i58.3, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2
  %i.gf = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre135 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre136 = load ptr, ptr %i.fg, align 8, !tbaa !48
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3

bb.ap:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  store ptr %i.gg, ptr %i.o, align 8, !tbaa !47
  %i.gh = load i8, ptr %i.gb, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3: ; preds = %bb.ap, %bb.ao
  %i.gi = phi ptr [ %.pre136, %bb.ao ], [ %i.ga, %bb.ap ] ; 2 uses
  %i.gj = phi ptr [ %.pre135, %bb.ao ], [ %i.gg, %bb.ap ] ; 3 uses
  %.0.i.i60.3 = phi i8 [ %i.gf, %bb.ao ], [ %i.gh, %bb.ap ]
  %i.gk = zext i8 %.0.i.i60.3 to i32
  %i.gl = shl nuw i32 %i.gk, 24
  %i.gm = or disjoint i32 %i.gl, %i.ge
  %i.gn = add i32 %i.gm, -1
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !4
  %.not.i.i58.1124 = icmp ult ptr %i.gj, %i.gi
  br i1 %.not.i.i58.1124, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3
  %i.gp = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre137 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre138 = load ptr, ptr %i.fg, align 8, !tbaa !48
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126

bb.ar:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 1 ; 2 uses
  store ptr %i.gq, ptr %i.o, align 8, !tbaa !47
  %i.gr = load i8, ptr %i.gj, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126: ; preds = %bb.ar, %bb.aq
  %i.gs = phi ptr [ %.pre138, %bb.aq ], [ %i.gi, %bb.ar ] ; 2 uses
  %i.gt = phi ptr [ %.pre137, %bb.aq ], [ %i.gq, %bb.ar ] ; 3 uses
  %.0.i.i60.1125 = phi i8 [ %i.gp, %bb.aq ], [ %i.gr, %bb.ar ]
  %i.gu = zext i8 %.0.i.i60.1125 to i32
  %.not.i.i58.1.1 = icmp ult ptr %i.gt, %i.gs
  br i1 %.not.i.i58.1.1, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126
  %i.gv = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre139 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre140 = load ptr, ptr %i.fg, align 8, !tbaa !48
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1.1

bb.at:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1126
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 2 uses
  store ptr %i.gw, ptr %i.o, align 8, !tbaa !47
  %i.gx = load i8, ptr %i.gt, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1.1

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1.1: ; preds = %bb.at, %bb.as
  %i.gy = phi ptr [ %.pre140, %bb.as ], [ %i.gs, %bb.at ] ; 2 uses
  %i.gz = phi ptr [ %.pre139, %bb.as ], [ %i.gw, %bb.at ] ; 3 uses
  %.0.i.i60.1.1 = phi i8 [ %i.gv, %bb.as ], [ %i.gx, %bb.at ]
  %i.ha = zext i8 %.0.i.i60.1.1 to i32
  %i.hb = shl nuw nsw i32 %i.ha, 8
  %i.hc = or disjoint i32 %i.hb, %i.gu
  %.not.i.i58.2.1 = icmp ult ptr %i.gz, %i.gy
  br i1 %.not.i.i58.2.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1.1
  %i.hd = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre141 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre142 = load ptr, ptr %i.fg, align 8, !tbaa !48
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2.1

bb.av:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.1.1
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  store ptr %i.he, ptr %i.o, align 8, !tbaa !47
  %i.hf = load i8, ptr %i.gz, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2.1

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2.1: ; preds = %bb.av, %bb.au
  %i.hg = phi ptr [ %.pre142, %bb.au ], [ %i.gy, %bb.av ]
  %i.hh = phi ptr [ %.pre141, %bb.au ], [ %i.he, %bb.av ] ; 3 uses
  %.0.i.i60.2.1 = phi i8 [ %i.hd, %bb.au ], [ %i.hf, %bb.av ]
  %i.hi = zext i8 %.0.i.i60.2.1 to i32
  %i.hj = shl nuw nsw i32 %i.hi, 16
  %i.hk = or disjoint i32 %i.hj, %i.hc
  %.not.i.i58.3.1 = icmp ult ptr %i.hh, %i.hg
  br i1 %.not.i.i58.3.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2.1
  %i.hl = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3.1

bb.ax:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.2.1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  store ptr %i.hm, ptr %i.o, align 8, !tbaa !47
  %i.hn = load i8, ptr %i.hh, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3.1

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit61.3.1: ; preds = %bb.ax, %bb.aw
  %.0.i.i60.3.1 = phi i8 [ %i.hl, %bb.aw ], [ %i.hn, %bb.ax ]
  %i.ho = zext i8 %.0.i.i60.3.1 to i32
  %i.hp = shl nuw i32 %i.ho, 24
  %i.hq = or disjoint i32 %i.hp, %i.hk
  %i.hr = add i32 %i.hq, -1
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.hr, ptr %i.hs, align 8, !tbaa !4
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98

bb.ay:                                            ; preds = %bb.ab
  %i.ht = icmp eq i32 %i.bt, 2                    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.hv = zext i1 %i.ht to i8
  store i8 %i.hv, ptr %i.hu, align 1, !tbaa !60
  br i1 %i.ht, label %.preheader106, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit

.preheader106:                                    ; preds = %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre127 = load i32, ptr %i.aq, align 8, !tbaa !45
  %.pre128 = load i32, ptr %i.p, align 4, !tbaa !46
  br label %bb.ba

bb.az:                                            ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.hy = call noundef zeroext i1 @_ZN9NCompress8NHuffman8CDecoderILi16ELj8EE14SetCodeLengthsEPKh(ptr noundef nonnull align 4 dereferenceable(680) %i.hx, ptr noundef nonnull %i.e)
  br i1 %i.hy, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98

bb.ba:                                            ; preds = %.preheader106, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71
  %i.hz = phi i32 [ %.pre128, %.preheader106 ], [ %i.ix, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71 ] ; 2 uses
  %i.ia = phi i32 [ %.pre127, %.preheader106 ], [ %i.iy, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader106 ], [ %indvars.iv.next, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71 ] ; 2 uses
  %i.ib = add i32 %i.hz, 3                        ; 3 uses
  store i32 %i.ib, ptr %i.p, align 4, !tbaa !46
  %i.ic = icmp ugt i32 %i.ib, 15
  br i1 %i.ic, label %.lr.ph.i.i.i.i62, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71

.lr.ph.i.i.i.i62:                                 ; preds = %bb.ba, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i69
  %i.id = load ptr, ptr %i.o, align 8, !tbaa !47  ; 3 uses
  %i.ie = load ptr, ptr %i.hw, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i63 = icmp ult ptr %i.id, %i.ie
  br i1 %.not.i.i.i.i.i63, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i62
  %i.if = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  %.pre.i.i.i.i64 = load ptr, ptr %i.o, align 8, !tbaa !47
  %.pre5.i.i.i.i65 = load ptr, ptr %i.hw, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i66

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i62
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 1 ; 2 uses
  store ptr %i.ig, ptr %i.o, align 8, !tbaa !47
  %i.ih = load i8, ptr %i.id, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i66

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i66:          ; preds = %bb.bc, %bb.bb
  %i.ii = phi ptr [ %.pre5.i.i.i.i65, %bb.bb ], [ %i.ie, %bb.bc ]
  %i.ij = phi ptr [ %.pre.i.i.i.i64, %bb.bb ], [ %i.ig, %bb.bc ] ; 3 uses
  %.0.i.i.i.i.i67 = phi i8 [ %i.if, %bb.bb ], [ %i.ih, %bb.bc ]
  %.not.i2.i.i.i.i68 = icmp ult ptr %i.ij, %i.ii
  br i1 %.not.i2.i.i.i.i68, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i66
  %i.ik = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.o)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i69

bb.be:                                            ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i66
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store ptr %i.il, ptr %i.o, align 8, !tbaa !47
  %i.im = load i8, ptr %i.ij, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i69

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i69:         ; preds = %bb.be, %bb.bd
  %.0.i3.i.i.i.i70 = phi i8 [ %i.ik, %bb.bd ], [ %i.im, %bb.be ]
  %i.in = load i32, ptr %i.aq, align 8, !tbaa !45
  %i.io = zext i8 %.0.i3.i.i.i.i70 to i32
  %i.ip = shl i32 %i.in, 16
  %i.iq = shl nuw nsw i32 %i.io, 8
  %i.ir = or disjoint i32 %i.ip, %i.iq
  %i.is = zext i8 %.0.i.i.i.i.i67 to i32
  %i.it = or disjoint i32 %i.ir, %i.is            ; 2 uses
  store i32 %i.it, ptr %i.aq, align 8, !tbaa !45
  %i.iu = load i32, ptr %i.p, align 4, !tbaa !46
  %i.iv = add i32 %i.iu, -16                      ; 3 uses
  store i32 %i.iv, ptr %i.p, align 4, !tbaa !46
  %i.iw = icmp ugt i32 %i.iv, 15
  br i1 %i.iw, label %.lr.ph.i.i.i.i62, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71, !llvm.loop !50

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit71:    ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i69, %bb.ba
  %i.ix = phi i32 [ %i.ib, %bb.ba ], [ %i.iv, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i69 ]
  %i.iy = phi i32 [ %i.ia, %bb.ba ], [ %i.it, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i69 ]
  %i.iz = sub i32 15, %i.hz
  %i.ja = lshr i32 %i.ia, %i.iz
  %i.jb = lshr i32 %i.ja, 14
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = and i8 %i.jc, 7
  %i.je = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.az, label %bb.ba, !llvm.loop !61

_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit: ; preds = %bb.az, %bb.ay
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 6472
  %i.jg = call noundef zeroext i1 @_ZN9NCompress4NLzx8CDecoder9ReadTableEPhS2_j(ptr noundef nonnull align 8 dereferenceable(7414) %0, ptr noundef nonnull %i.jf, ptr noundef nonnull %i.e, i32 noundef 256)
  br i1 %i.jg, label %bb.bf, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98

bb.bf:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 6728
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !62
  %i.jl = call noundef zeroext i1 @_ZN9NCompress4NLzx8CDecoder9ReadTableEPhS2_j(ptr noundef nonnull align 8 dereferenceable(7414) %0, ptr noundef nonnull %i.jh, ptr noundef nonnull %i.ji, i32 noundef %i.jk)
  br i1 %i.jl, label %bb.bg, label %_ZN9NCompress4NLzx10NBitStream8CDecoder10ReadUInt32ERj.exit.thread98

bb.bg:                                            ; preds = %bb.bf
  %i.jm = load i32, ptr %i.jj, align 4, !tbaa !62 ; 2 uses
  %i.jn = add i32 %i.jm, 256                      ; 2 uses
  %i.jo = icmp ult i32 %i.jn, 656
  br i1 %i.jo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.bg
  %i.jp = zext nneg i32 %i.jn to i64
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.jp
  %i.jq = sub nsw i32 399, %i.jm
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = add nuw nsw i64 %i.jr, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.js, i1 false), !tbaa !49
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.bg
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %scevgep.i, i8 0, i64 64, i1 false), !tbaa !4
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i.1, %bb.bj ] ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  %i.jw = load i8, ptr %i.jv, align 2, !tbaa !49  ; 2 uses
  %i.jx = icmp ult i8 %i.jw, 17
  br i1 %i.jx, label %bb.bi, label %_ZN9NCompress8NHuffman8CDecoderILi16ELj656EE14SetCodeLengthsEPKh.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.jy = zext nneg i8 %i.jw to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jy ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kb = add nsw i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !4
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.i
  store i32 -1, ptr %i.kc, align 4, !tbaa !4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !49  ; 2 uses
  %i.kf = icmp ult i8 %i.ke, 17
  br i1 %i.kf, label %bb.bj, label %_ZN9NCompress8NHuffman8CDecoderILi16ELj656EE14SetCodeLengthsEPKh.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.kg = zext nneg i8 %i.ke to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !4
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 4, !tbaa !4
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next.i
  store i32 -1, ptr %i.kk, align 8, !tbaa !4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 656
  br i1 %exitcond.not.i.1, label %bb.bk, label %bb.bh, !llvm.loop !63

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.c, align 16, !tbaa !4
  store i32 0, ptr %i.jt, align 4, !tbaa !4
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store i32 0, ptr %i.kl, align 8, !tbaa !4
  %scevgep67.i = getelementptr inbounds nuw i8, ptr %0, i64 2908
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit.i, %bb.bk
  %indvars.iv73.i = phi i64 [ 1, %bb.bk ], [ %indvars.iv.next74.i, %.loopexit.i ] ; 10 uses
  %.04459.i = phi i32 [ 0, %bb.bk ], [ %.246.i, %.loopexit.i ] ; 5 uses
  %.04758.i = phi i32 [ 0, %bb.bk ], [ %i.kr, %.loopexit.i ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv73.i
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !4
  %i.ko = trunc i64 %indvars.iv73.i to i32
  %i.kp = sub i32 16, %i.ko
  %i.kq = shl i32 %i.kn, %i.kp
  %i.kr = add i32 %i.kq, %.04758.i                ; 4 uses
  %i.ks = icmp ugt i32 %i.kr, 65536
  br i1 %i.ks, label %_ZN9NCompress8NHuffman8CDecoderILi16ELj656EE14SetCodeLengthsEPKh.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kt = icmp eq i64 %indvars.iv73.i, 16
  %i.ku = select i1 %i.kt, i32 65536, i32 %i.kr
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv73.i
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !4
  %i.kw = add nsw i64 %indvars.iv73.i, -1         ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !4
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kw
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !4
  %i.lb = add i32 %i.la, %i.ky                    ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv73.i
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !4
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv73.i
  store i32 %i.lb, ptr %i.ld, align 4, !tbaa !4
  %i.le = icmp samesign ult i64 %indvars.iv73.i, 10
  br i1 %i.le, label %bb.bn, label %.loopexit.i

end_hunk_0
begin_hunk_1_@_ZN9NCompress8NHuffman8CDecoderILi16ELj8EE14SetCodeLengthsEPKh:.preheader53
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv70
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = trunc i64 %indvars.iv70 to i32
  %i.bs = sub i32 16, %i.br
  %i.bt = shl i32 %i.bq, %i.bs
  %i.bu = add i32 %i.bt, %.04758                  ; 4 uses
  %i.bv = icmp ugt i32 %i.bu, 65536
  br i1 %i.bv, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp eq i64 %indvars.iv70, 16
  %i.bx = select i1 %i.bw, i32 65536, i32 %i.bu
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv70
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !4
  %i.bz = add nsw i64 %indvars.iv70, -1           ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bz
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = add i32 %i.cd, %i.cb                    ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv70
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv70
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !4
  %i.ch = icmp samesign ult i64 %indvars.iv70, 10
  br i1 %i.ch, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ci = lshr i32 %i.bu, 7                       ; 3 uses
  %i.cj = icmp ult i32 %.04459, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.k
  %i.ck = trunc nuw nsw i64 %indvars.iv70 to i8
  %i.cl = zext nneg i32 %.04459 to i64
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.cl
  %i.cm = xor i32 %.04459, -1
  %i.cn = add nsw i32 %i.ci, %i.cm
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.co, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep68, i8 %i.ck, i64 %i.cp, i1 false), !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.j
  %.246 = phi i32 [ %.04459, %bb.j ], [ %.04459, %bb.k ], [ %i.ci, %.lr.ph ]
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond73 = icmp eq i64 %indvars.iv.next71, 17
  br i1 %exitcond73, label %.preheader, label %bb.i, !llvm.loop !67

bb.l:                                             ; preds = %.preheader
  %i.cq = zext i8 %i.bo to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4  ; 2 uses
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !4
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cu
  store i32 0, ptr %i.cv, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader
  %i.cw = load i8, ptr %i.j, align 1, !tbaa !49   ; 2 uses
  %.not.1 = icmp eq i8 %i.cw, 0
  br i1 %.not.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !4
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.db
  store i32 1, ptr %i.dc, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dd = load i8, ptr %i.r, align 1, !tbaa !49   ; 2 uses
  %.not.2 = icmp eq i8 %i.dd, 0
  br i1 %.not.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4  ; 2 uses
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !4
  %i.di = zext i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.di
  store i32 2, ptr %i.dj, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dk = load i8, ptr %i.z, align 1, !tbaa !49   ; 2 uses
  %.not.3 = icmp eq i8 %i.dk, 0
  br i1 %.not.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4  ; 2 uses
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !4
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dp
  store i32 3, ptr %i.dq, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dr = load i8, ptr %i.ah, align 1, !tbaa !49  ; 2 uses
  %.not.4 = icmp eq i8 %i.dr, 0
  br i1 %.not.4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4  ; 2 uses
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !4
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dw
  store i32 4, ptr %i.dx, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dy = load i8, ptr %i.ap, align 1, !tbaa !49  ; 2 uses
  %.not.5 = icmp eq i8 %i.dy, 0
  br i1 %.not.5, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !4
  %i.ed = zext i32 %i.eb to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ed
  store i32 5, ptr %i.ee, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ef = load i8, ptr %i.ax, align 1, !tbaa !49  ; 2 uses
  %.not.6 = icmp eq i8 %i.ef, 0
  br i1 %.not.6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4  ; 2 uses
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !4
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ek
  store i32 6, ptr %i.el, align 4, !tbaa !4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.em = load i8, ptr %i.bf, align 1, !tbaa !49  ; 2 uses
  %.not.7 = icmp eq i8 %i.em, 0
  br i1 %.not.7, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eq
  store i32 7, ptr %i.er, align 4, !tbaa !4
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.preheader53, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.y, %bb.z
  %.3 = phi i1 [ true, %bb.y ], [ false, %.preheader53 ], [ true, %bb.z ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9NCompress4NLzx8CDecoder15ClearPrevLevelsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7414) initializes((6472, 7377)) %0) local_unnamed_addr #7 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(905) %i.a, i8 0, i64 905, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9NCompress4NLzx8CDecoder8CodeSpecEj(ptr noundef nonnull align 8 dereferenceable(7414) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7408 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68
  %i.c = icmp eq i32 %i.b, -2
  br i1 %i.c, label %bb.b, label %.loopexit184

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 25 uses
  tail call void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 12 uses
  store i32 32, ptr %i.e, align 4, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7404 ; 2 uses
  %2 = load i8, ptr %i.f, align 4, !tbaa !23, !range !56, !noundef !57
  %3 = trunc nuw i8 %2 to i1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i8, ptr %4, align 8, !range !56
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond111 = select i1 %3, i1 %i.h, i1 false
  br i1 %or.cond111, label %.loopexit184, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i, %.lr.ph.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !47   ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp ult ptr %i.k, %i.l
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !47
  %.pre5.i = load ptr, ptr %i.i, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !47
  %i.o = load i8, ptr %i.k, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i

_ZN9CInBuffer8ReadByteEv.exit.i:                  ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre5.i, %bb.d ], [ %i.l, %bb.e ]
  %i.q = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %bb.e ] ; 3 uses
  %.0.i.i = phi i8 [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  %.not.i2.i = icmp ult ptr %i.q, %i.p
  br i1 %.not.i2.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i
  %i.r = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i

bb.g:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.s, ptr %i.d, align 8, !tbaa !47
  %i.t = load i8, ptr %i.q, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i

_ZN9CInBuffer8ReadByteEv.exit4.i:                 ; preds = %bb.g, %bb.f
  %.0.i3.i = phi i8 [ %i.r, %bb.f ], [ %i.t, %bb.g ]
  %i.u = load i32, ptr %i.j, align 8, !tbaa !45
  %i.v = zext i8 %.0.i3.i to i32
  %i.w = shl i32 %i.u, 16
  %i.x = shl nuw nsw i32 %i.v, 8
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = zext i8 %.0.i.i to i32
  %i.aa = or disjoint i32 %i.y, %i.z
  store i32 %i.aa, ptr %i.j, align 8, !tbaa !45
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !46  ; 3 uses
  %i.ac = add i32 %i.ab, -16                      ; 3 uses
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !46
  %i.ad = icmp ugt i32 %i.ac, 15
  br i1 %i.ad, label %bb.c, label %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit, !llvm.loop !50

_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit: ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i
  %.pre = load i8, ptr %i.f, align 4, !tbaa !23, !range !56
  %i.ae = trunc nuw i8 %.pre to i1
  br i1 %i.ae, label %.loopexit184, label %bb.h

bb.h:                                             ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 7412
  store i8 0, ptr %i.af, align 4, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7400
  store i32 0, ptr %i.ag, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(905) %i.ah, i8 0, i64 905, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7413
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !38, !range !56, !noundef !57
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.loopexit184.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %i.an = add nsw i32 %i.ab, -15                  ; 2 uses
  store i32 %i.an, ptr %i.e, align 4, !tbaa !46
  %i.ao = icmp eq i32 %i.ac, 15
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !47  ; 3 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i = icmp ult ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %.pre.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !47
  %.pre5.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.d, align 8, !tbaa !47
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i:            ; preds = %bb.l, %bb.k
  %i.av = phi ptr [ %.pre5.i.i.i.i, %bb.k ], [ %i.ar, %bb.l ]
  %i.aw = phi ptr [ %.pre.i.i.i.i, %bb.k ], [ %i.at, %bb.l ] ; 3 uses
  %.0.i.i.i.i.i = phi i8 [ %i.as, %bb.k ], [ %i.au, %bb.l ]
  %.not.i2.i.i.i.i = icmp ult ptr %i.aw, %i.av
  br i1 %.not.i2.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i
  %i.ax = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i

bb.n:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ay, ptr %i.d, align 8, !tbaa !47
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i:           ; preds = %bb.n, %bb.m
  %.0.i3.i.i.i.i = phi i8 [ %i.ax, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = load i32, ptr %i.al, align 8, !tbaa !45
  %i.bb = zext i8 %.0.i3.i.i.i.i to i32
  %i.bc = shl i32 %i.ba, 16
  %i.bd = shl nuw nsw i32 %i.bb, 8
  %i.be = or disjoint i32 %i.bc, %i.bd
  %i.bf = zext i8 %.0.i.i.i.i.i to i32
  %i.bg = or disjoint i32 %i.be, %i.bf            ; 2 uses
  store i32 %i.bg, ptr %i.al, align 8, !tbaa !45
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !46
  %i.bi = add i32 %i.bh, -16                      ; 3 uses
  store i32 %i.bi, ptr %i.e, align 4, !tbaa !46
  %i.bj = icmp ugt i32 %i.bi, 15
  br i1 %i.bj, label %bb.j, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit, !llvm.loop !50

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit:      ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i, %bb.i
  %i.bk = phi i32 [ %i.an, %bb.i ], [ %i.bi, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i ] ; 2 uses
  %i.bl = phi i32 [ %i.am, %bb.i ], [ %i.bg, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i ]
  %i.bm = sub nuw nsw i32 31, %i.ab
  %i.bn = shl nuw i32 65536, %i.bm
  %i.bo = and i32 %i.bn, %i.am
  %.not177 = icmp eq i32 %i.bo, 0
  br i1 %.not177, label %.loopexit184.loopexit, label %.lr.ph.i.i.i.i113

.lr.ph.i.i.i.i113:                                ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit
  %i.bp = add nuw nsw i32 %i.bk, 16
  store i32 %i.bp, ptr %i.e, align 4, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i120, %.lr.ph.i.i.i.i113
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !47  ; 3 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i114 = icmp ult ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i114, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %.pre.i.i.i.i115 = load ptr, ptr %i.d, align 8, !tbaa !47
  %.pre5.i.i.i.i116 = load ptr, ptr %i.bq, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i117

bb.q:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !47
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i117

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i117:         ; preds = %bb.q, %bb.p
  %i.bw = phi ptr [ %.pre5.i.i.i.i116, %bb.p ], [ %i.bs, %bb.q ]
  %i.bx = phi ptr [ %.pre.i.i.i.i115, %bb.p ], [ %i.bu, %bb.q ] ; 3 uses
  %.0.i.i.i.i.i118 = phi i8 [ %i.bt, %bb.p ], [ %i.bv, %bb.q ]
  %.not.i2.i.i.i.i119 = icmp ult ptr %i.bx, %i.bw
  br i1 %.not.i2.i.i.i.i119, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i117
  %i.by = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i120

bb.s:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i117
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !47
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i120

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i120:        ; preds = %bb.s, %bb.r
  %.0.i3.i.i.i.i121 = phi i8 [ %i.by, %bb.r ], [ %i.ca, %bb.s ]
  %i.cb = load i32, ptr %i.al, align 8, !tbaa !45
  %i.cc = zext i8 %.0.i3.i.i.i.i121 to i32
  %i.cd = shl i32 %i.cb, 16
  %i.ce = shl nuw nsw i32 %i.cc, 8
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = zext i8 %.0.i.i.i.i.i118 to i32
  %i.ch = or disjoint i32 %i.cf, %i.cg            ; 2 uses
  store i32 %i.ch, ptr %i.al, align 8, !tbaa !45
  %i.ci = load i32, ptr %i.e, align 4, !tbaa !46  ; 3 uses
  %i.cj = add i32 %i.ci, -16                      ; 2 uses
  store i32 %i.cj, ptr %i.e, align 4, !tbaa !46
  %i.ck = icmp ugt i32 %i.cj, 15
  br i1 %i.ck, label %bb.o, label %.lr.ph.i.i.i.i123, !llvm.loop !50

.lr.ph.i.i.i.i123:                                ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i120
  %i.cl = sub nuw nsw i32 15, %i.bk
  %i.cm = lshr i32 %i.bl, %i.cl
  %i.cn = shl i32 %i.cm, 15
  %i.co = and i32 %i.cn, -65536
  store i32 %i.ci, ptr %i.e, align 4, !tbaa !46
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i130, %.lr.ph.i.i.i.i123
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !47  ; 3 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i124 = icmp ult ptr %i.cq, %i.cr
  br i1 %.not.i.i.i.i.i124, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  %.pre.i.i.i.i125 = load ptr, ptr %i.d, align 8, !tbaa !47
  %.pre5.i.i.i.i126 = load ptr, ptr %i.cp, align 8, !tbaa !48
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i127

bb.v:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 2 uses
  store ptr %i.ct, ptr %i.d, align 8, !tbaa !47
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i127

_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i127:         ; preds = %bb.v, %bb.u
  %i.cv = phi ptr [ %.pre5.i.i.i.i126, %bb.u ], [ %i.cr, %bb.v ]
  %i.cw = phi ptr [ %.pre.i.i.i.i125, %bb.u ], [ %i.ct, %bb.v ] ; 3 uses
  %.0.i.i.i.i.i128 = phi i8 [ %i.cs, %bb.u ], [ %i.cu, %bb.v ]
  %.not.i2.i.i.i.i129 = icmp ult ptr %i.cw, %i.cv
  br i1 %.not.i2.i.i.i.i129, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i127
  %i.cx = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i130

bb.x:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i.i127
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cy, ptr %i.d, align 8, !tbaa !47
  %i.cz = load i8, ptr %i.cw, align 1, !tbaa !49
  br label %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i130

_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i130:        ; preds = %bb.x, %bb.w
  %.0.i3.i.i.i.i131 = phi i8 [ %i.cx, %bb.w ], [ %i.cz, %bb.x ]
  %i.da = load i32, ptr %i.al, align 8, !tbaa !45
  %i.db = zext i8 %.0.i3.i.i.i.i131 to i32
  %i.dc = shl i32 %i.da, 16
  %i.dd = shl nuw nsw i32 %i.db, 8
  %i.de = or disjoint i32 %i.dc, %i.dd
  %i.df = zext i8 %.0.i.i.i.i.i128 to i32
  %i.dg = or disjoint i32 %i.de, %i.df
  store i32 %i.dg, ptr %i.al, align 8, !tbaa !45
  %i.dh = load i32, ptr %i.e, align 4, !tbaa !46
  %i.di = add i32 %i.dh, -16                      ; 2 uses
  store i32 %i.di, ptr %i.e, align 4, !tbaa !46
  %i.dj = icmp ugt i32 %i.di, 15
  br i1 %i.dj, label %bb.t, label %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit132, !llvm.loop !50

_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit132:   ; preds = %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i.i130
  %i.dk = sub nuw nsw i32 31, %i.ci
  %i.dl = lshr i32 %i.ch, %i.dk
  %i.dm = lshr i32 %i.dl, 1
  %i.dn = and i32 %i.dm, 65535
  %i.do = or disjoint i32 %i.dn, %i.co
  br label %.loopexit184.loopexit

.loopexit184.loopexit:                            ; preds = %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit132, %bb.h
  %.080.shrunk = phi i8 [ 1, %bb.h ], [ 1, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit132 ], [ 0, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit ]
  %.077 = phi i32 [ 12000000, %bb.h ], [ %i.do, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit132 ], [ 12000000, %_ZN9NCompress4NLzx8CDecoder8ReadBitsEj.exit ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 7384
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 36
  store i8 %.080.shrunk, ptr %i.dr, align 4, !tbaa !69
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store i32 %.077, ptr %i.ds, align 8, !tbaa !72
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store i32 0, ptr %i.dt, align 8, !tbaa !73
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  store i32 0, ptr %i.du, align 4, !tbaa !74
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dv, i8 0, i64 12, i1 false), !tbaa !4
  br label %.loopexit184

.loopexit184:                                     ; preds = %bb.b, %.loopexit184.loopexit, %_ZN9NCompress4NLzx10NBitStream8CDecoder9NormalizeEv.exit, %bb.a
  %i.dw = load i32, ptr %i.a, align 8, !tbaa !68
  %i.dx = icmp sgt i32 %i.dw, 0
  %i.dy = icmp ne i32 %1, 0
  %i.dz = and i1 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph, label %.preheader182

.lr.ph:                                           ; preds = %.loopexit184
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %bb.y

.preheader182:                                    ; preds = %_ZN12CLzOutWindow7PutByteEh.exit, %.loopexit184
  %.075.lcssa = phi i32 [ %1, %.loopexit184 ], [ %i.ft, %_ZN12CLzOutWindow7PutByteEh.exit ] ; 2 uses
  %.not193 = icmp eq i32 %.075.lcssa, 0
  br i1 %.not193, label %.thread174, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader182
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 7400 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 23 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 12 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2908
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 3420
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  br label %bb.aa

bb.y:                                             ; preds = %.lr.ph, %_ZN12CLzOutWindow7PutByteEh.exit
  %.075186 = phi i32 [ %1, %.lr.ph ], [ %i.ft, %_ZN12CLzOutWindow7PutByteEh.exit ]
  %i.fb = load i32, ptr %i.eb, align 8, !tbaa !4
  %i.fc = load i32, ptr %i.ec, align 8, !tbaa !20 ; 3 uses
  %i.fd = xor i32 %i.fb, -1
  %i.fe = add i32 %i.fc, %i.fd                    ; 2 uses
  %i.ff = load i32, ptr %i.ed, align 4, !tbaa !75 ; 2 uses
  %.not.i = icmp ult i32 %i.fe, %i.ff
  %i.fg = select i1 %.not.i, i32 0, i32 %i.ff
  %spec.select.i = add i32 %i.fg, %i.fe
  %i.fh = load ptr, ptr %i.ea, align 8, !tbaa !12 ; 2 uses
  %i.fi = zext i32 %spec.select.i to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !49
  %i.fl = add i32 %i.fc, 1
  store i32 %i.fl, ptr %i.ec, align 8, !tbaa !20
  %i.fm = zext i32 %i.fc to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fm
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !49
  %i.fo = load i32, ptr %i.ec, align 8, !tbaa !20
  %i.fp = load i32, ptr %i.ee, align 4, !tbaa !76
  %i.fq = icmp eq i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.z, label %_ZN12CLzOutWindow7PutByteEh.exit

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ea)
  br label %_ZN12CLzOutWindow7PutByteEh.exit

_ZN12CLzOutWindow7PutByteEh.exit:                 ; preds = %bb.y, %bb.z
  %i.fr = load i32, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.fs = add nsw i32 %i.fr, -1
  store i32 %i.fs, ptr %i.a, align 8, !tbaa !68
  %i.ft = add i32 %.075186, -1                    ; 3 uses
  %i.fu = icmp sgt i32 %i.fr, 1
  %i.fv = icmp ne i32 %i.ft, 0
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %i.fw, label %bb.y, label %.preheader182, !llvm.loop !77

bb.aa:                                            ; preds = %.lr.ph195, %.loopexit179
  %.176194 = phi i32 [ %.075.lcssa, %.lr.ph195 ], [ %i.gc, %.loopexit179 ] ; 2 uses
  %i.fx = load i32, ptr %i.ef, align 8, !tbaa !58 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fz = tail call noundef zeroext i1 @_ZN9NCompress4NLzx8CDecoder10ReadTablesEv(ptr noundef nonnull align 8 dereferenceable(7414) %0)
  br i1 %i.fz, label %._crit_edge, label %.thread174

._crit_edge:                                      ; preds = %bb.ab
  %.pre203 = load i32, ptr %i.ef, align 8, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.aa
  %i.ga = phi i32 [ %.pre203, %._crit_edge ], [ %i.fx, %bb.aa ] ; 3 uses
  %i.gb = tail call noundef i32 @llvm.umin.i32(i32 %i.ga, i32 %.176194) ; 4 uses
  %i.gc = sub i32 %.176194, %i.gb                 ; 2 uses
  %i.gd = sub i32 %i.ga, %i.gb
  store i32 %i.gd, ptr %i.ef, align 8, !tbaa !58
  %i.ge = load i8, ptr %i.eg, align 8, !tbaa !59, !range !56, !noundef !57
  %i.gf = trunc nuw i8 %i.ge to i1
  %.not108190 = icmp eq i32 %i.ga, 0              ; 2 uses
  br i1 %i.gf, label %.preheader, label %.preheader180

.preheader180:                                    ; preds = %bb.ac
  br i1 %.not108190, label %.loopexit179, label %.lr.ph189

.preheader:                                       ; preds = %bb.ac
  br i1 %.not108190, label %.loopexit179, label %.lr.ph192

.lr.ph192:                                        ; preds = %.preheader, %_ZN12CLzOutWindow7PutByteEh.exit136
  %.090191 = phi i32 [ %i.gt, %_ZN12CLzOutWindow7PutByteEh.exit136 ], [ %i.gb, %.preheader ]
  %i.gg = load ptr, ptr %i.ei, align 8, !tbaa !47 ; 3 uses
  %i.gh = load ptr, ptr %i.en, align 8, !tbaa !48
  %.not.i.i133 = icmp ult ptr %i.gg, %i.gh
  br i1 %.not.i.i133, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph192
  %i.gi = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.ei)
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit

bb.ae:                                            ; preds = %.lr.ph192
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gj, ptr %i.ei, align 8, !tbaa !47
  %i.gk = load i8, ptr %i.gg, align 1, !tbaa !49
  br label %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit

_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit: ; preds = %bb.ad, %bb.ae
  %.0.i.i135 = phi i8 [ %i.gi, %bb.ad ], [ %i.gk, %bb.ae ]
  %i.gl = load ptr, ptr %i.eq, align 8, !tbaa !12
  %i.gm = load i32, ptr %i.er, align 8, !tbaa !20 ; 2 uses
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr %i.er, align 8, !tbaa !20
  %i.go = zext i32 %i.gm to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.go
  store i8 %.0.i.i135, ptr %i.gp, align 1, !tbaa !49
  %i.gq = load i32, ptr %i.er, align 8, !tbaa !20
  %i.gr = load i32, ptr %i.es, align 4, !tbaa !76
  %i.gs = icmp eq i32 %i.gq, %i.gr
  br i1 %i.gs, label %bb.af, label %_ZN12CLzOutWindow7PutByteEh.exit136

bb.af:                                            ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.eq)
  br label %_ZN12CLzOutWindow7PutByteEh.exit136

_ZN12CLzOutWindow7PutByteEh.exit136:              ; preds = %_ZN9NCompress4NLzx10NBitStream8CDecoder14DirectReadByteEv.exit, %bb.af
  %i.gt = add i32 %.090191, -1                    ; 2 uses
  %.not108 = icmp eq i32 %i.gt, 0
  br i1 %.not108, label %.loopexit179, label %.lr.ph192, !llvm.loop !78

.lr.ph189:                                        ; preds = %.preheader180, %_ZN12CLzOutWindow9CopyBlockEjj.exit
  %.191188 = phi i32 [ %.696, %_ZN12CLzOutWindow9CopyBlockEjj.exit ], [ %i.gb, %.preheader180 ] ; 4 uses
  %i.gu = load i32, ptr %i.ej, align 8, !tbaa !45
  %i.gv = load i32, ptr %i.ek, align 4, !tbaa !46 ; 2 uses
  %i.gw = sub i32 15, %i.gv
  %i.gx = lshr i32 %i.gu, %i.gw
  %i.gy = lshr i32 %i.gx, 1
  %i.gz = and i32 %i.gy, 65535                    ; 4 uses
  %i.ha = load i32, ptr %i.el, align 8, !tbaa !4
  %i.hb = icmp ult i32 %i.gz, %i.ha
  br i1 %i.hb, label %bb.ag, label %.preheader.i

bb.ag:                                            ; preds = %.lr.ph189
  %i.hc = lshr i32 %i.gz, 7
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !49
  %i.hg = zext i8 %i.hf to i32
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph189, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 10, %.lr.ph189 ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %.not.i137 = icmp ult i32 %i.gz, %i.hi
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i137, label %.loopexit.loopexit.i, label %.preheader.i, !llvm.loop !79

.loopexit.loopexit.i:                             ; preds = %.preheader.i
  %i.hj = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.ag
  %.1.i = phi i32 [ %i.hg, %bb.ag ], [ %i.hj, %.loopexit.loopexit.i ] ; 3 uses
  %i.hk = add i32 %.1.i, %i.gv                    ; 2 uses
  store i32 %i.hk, ptr %i.ek, align 4, !tbaa !46
  %i.hl = icmp ugt i32 %i.hk, 15
  br i1 %i.hl, label %.lr.ph.i.i.i, label %_ZN9NCompress4NLzx10NBitStream8CDecoder7MovePosEj.exit.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit.i, %_ZN9CInBuffer8ReadByteEv.exit4.i.i.i
  %i.hm = load ptr, ptr %i.ei, align 8, !tbaa !47 ; 3 uses
  %i.hn = load ptr, ptr %i.en, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i = icmp ult ptr %i.hm, %i.hn
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.ho = tail call noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.ei)
end_hunk_1
