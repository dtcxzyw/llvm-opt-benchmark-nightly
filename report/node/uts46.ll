inline.NumInlined: 176
inline.NumDeleted: 52
begin_hunk_0_@_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode:bb.a
    i8 46, label %.split155.us.loopexit237.loopexit
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.gv = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.gw = icmp eq i64 %i.gv, %i.y
  br i1 %i.gw, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = icmp eq i8 %i.gy, 46
  br i1 %i.gz, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ha = load i32, ptr %i.x, align 4
  %i.hb = or i32 %i.ha, 16
  store i32 %i.hb, ptr %i.x, align 4
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ce
  %i.hc = or disjoint i8 %i.gr, 32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv
  store i8 %i.hc, ptr %i.hd, align 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not128.us167 = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %.not128.us167, label %.split158.us, label %.split.split.us, !llvm.loop !12

.split158.us:                                     ; preds = %bb.ah, %bb.ao, %bb.aw, %bb.ck, %bb.bm, %bb.bu, %bb.cd, %bb.cx, %bb.t, %bb.aa, %bb.be
  %.us-phi160 = phi i32 [ 0, %bb.be ], [ 0, %bb.aa ], [ 0, %bb.bm ], [ %.3.ph.us, %bb.t ], [ 0, %bb.cx ], [ 0, %bb.cd ], [ 0, %bb.bu ], [ 0, %bb.ck ], [ 0, %bb.aw ], [ 0, %bb.ao ], [ 0, %bb.ah ] ; 2 uses
  %.not127 = icmp eq i8 %4, 0
  br i1 %.not127, label %.thread143, label %bb.cl

bb.cl:                                            ; preds = %.split158.us
  %i.he = sub nsw i32 %2, %.us-phi160
  %i.hf = icmp sgt i32 %i.he, 63
  br i1 %i.hf, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.hg = load i32, ptr %i.x, align 4
  %i.hh = or i32 %i.hg, 2
  store i32 %i.hh, ptr %i.x, align 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.hi = icmp samesign ugt i32 %2, 253
  %or.cond3 = select i1 %.not125, i1 %i.hi, i1 false
  br i1 %or.cond3, label %bb.co, label %.thread143

bb.co:                                            ; preds = %bb.cn
  %i.hj = icmp samesign ugt i32 %2, 254
  %i.hk = icmp slt i32 %.us-phi160, 254
  %or.cond136 = select i1 %i.hj, i1 true, i1 %i.hk
  br i1 %or.cond136, label %bb.cp, label %.thread143

bb.cp:                                            ; preds = %bb.co
  %i.hl = load i32, ptr %6, align 4
  %i.hm = or i32 %i.hl, 4
  store i32 %i.hm, ptr %6, align 4
  br label %.thread143

.thread143:                                       ; preds = %.split158.us, %bb.cp, %bb.cn, %bb.co
  %i.hn = load i32, ptr %i.x, align 4
  %i.ho = load i32, ptr %6, align 4
  %i.hp = or i32 %i.ho, %i.hn
  store i32 %i.hp, ptr %6, align 4
  %i.hq = load ptr, ptr %5, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.s, i32 noundef %2) #11
  %i.ht = load ptr, ptr %5, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.do

.split.split:                                     ; preds = %bb.cd, %bb.cx
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %bb.cx ], [ 4, %bb.cd ] ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv191
  %i.hx = load i8, ptr %i.hw, align 1             ; 5 uses
  %i.hy = sext i8 %i.hx to i32                    ; 2 uses
  %i.hz = icmp slt i8 %i.hx, 0
  br i1 %i.hz, label %.split155.us.loopexit234.loopexit, label %bb.cq

bb.cq:                                            ; preds = %.split.split
  %i.ia = add nsw i32 %i.hy, -65
  %i.ib = icmp ult i32 %i.ia, 26
  br i1 %i.ib, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ic = or i8 %i.hx, 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv191
  store i8 %i.ic, ptr %i.id, align 1
  br label %bb.cx

bb.cs:                                            ; preds = %bb.cq
  %i.ie = zext nneg i32 %i.hy to i64
  %i.if = getelementptr inbounds nuw i8, ptr @_ZN6icu_78L9asciiDataE, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = icmp slt i8 %i.ig, 0
  br i1 %i.ih, label %.split155.us.loopexit234.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ii = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv191
  store i8 %i.hx, ptr %i.ii, align 1
  switch i8 %i.hx, label %bb.cx [
    i8 45, label %bb.cu
    i8 46, label %.split155.us.loopexit234.loopexit
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.ij = add nuw nsw i64 %indvars.iv191, 1       ; 2 uses
  %i.ik = icmp eq i64 %i.ij, %i.y
  br i1 %i.ik, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 %i.ij
  %i.im = load i8, ptr %i.il, align 1
  %i.in = icmp eq i8 %i.im, 46
  br i1 %i.in, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.io = load i32, ptr %i.x, align 4
  %i.ip = or i32 %i.io, 16
  store i32 %i.ip, ptr %i.x, align 4
  br label %bb.cx

bb.cx:                                            ; preds = %bb.ct, %bb.cv, %bb.cw, %bb.cr
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %.not128 = icmp eq i64 %indvars.iv.next192, %i.y
  br i1 %.not128, label %.split158.us, label %.split.split, !llvm.loop !13

.split155.us.loopexit234.loopexit:                ; preds = %bb.ct, %bb.cs, %.split.split
  %i.iq = trunc nuw nsw i64 %indvars.iv191 to i32
  br label %.split155.us

.split155.us.loopexit237.loopexit:                ; preds = %bb.cf, %.split.split.us
  %i.ir = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split155.us

.split155.us:                                     ; preds = %.split.split.us.peel, %bb.ac, %.split.split.us.peel243, %bb.aj, %.split.split.us.peel249, %bb.aq, %bb.ar, %.split155.us.loopexit237.loopexit, %.split.split.peel, %bb.bg, %bb.bh, %.split.split.peel257, %bb.bo, %bb.bp, %.split.split.peel262, %bb.bw, %bb.bx, %bb.by, %.split155.us.loopexit234.loopexit, %.split.us, %bb.i, %bb.m, %.split.split.us.preheader, %bb.v, %.split.split.preheader, %bb.ay, %bb.az
  %.us-phi = phi i32 [ 0, %.split.split.us.preheader ], [ 2, %bb.bp ], [ 0, %bb.v ], [ %i.ad, %.split.us ], [ 0, %.split.split.preheader ], [ 0, %bb.ay ], [ 0, %bb.az ], [ %i.ad, %bb.m ], [ %i.ad, %bb.i ], [ 3, %.split.split.peel262 ], [ 3, %bb.bw ], [ 3, %bb.bx ], [ 3, %bb.by ], [ 1, %.split.split.peel ], [ 1, %bb.bg ], [ 1, %bb.bh ], [ %i.iq, %.split155.us.loopexit234.loopexit ], [ 2, %.split.split.peel257 ], [ 2, %bb.bo ], [ 3, %.split.split.us.peel249 ], [ 3, %bb.aq ], [ 3, %bb.ar ], [ 1, %.split.split.us.peel ], [ 1, %bb.ac ], [ %i.ir, %.split155.us.loopexit237.loopexit ], [ 2, %.split.split.us.peel243 ], [ 2, %bb.aj ]
  %.us-phi156 = phi i32 [ 0, %.split.split.us.preheader ], [ 0, %.split.split.peel ], [ 0, %bb.v ], [ %.0116153.us, %.split.us ], [ 0, %.split.split.preheader ], [ 0, %bb.ay ], [ 0, %bb.az ], [ %.0116153.us, %bb.m ], [ %.0116153.us, %bb.i ], [ 0, %.split155.us.loopexit234.loopexit ], [ 0, %bb.by ], [ 0, %bb.bx ], [ 0, %bb.bw ], [ 0, %.split.split.peel262 ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %.split.split.peel257 ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %.split155.us.loopexit237.loopexit ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %.split.split.us.peel249 ], [ 0, %bb.aj ], [ 0, %.split.split.us.peel243 ], [ 0, %bb.ac ], [ 0, %.split.split.us.peel ] ; 5 uses
  %i.is = load i32, ptr %i.x, align 4
  %i.it = load i32, ptr %6, align 4
  %i.iu = or i32 %i.it, %i.is
  store i32 %i.iu, ptr %6, align 4
  %i.iv = sub nsw i32 %.us-phi, %.us-phi156       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.iw = sext i32 %.us-phi156 to i64
  %i.ix = getelementptr inbounds i8, ptr %i.s, i64 %i.iw
  call void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %10, ptr %i.ix, i32 %i.iv) #11
  %i.iy = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %10) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.iz = load ptr, ptr %5, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.s, i32 noundef %.us-phi156) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @_ZN6icu_7811StringPieceC1ERKS0_i(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef %.us-phi156) #11
  %i.jc = load ptr, ptr %12, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.je = load i32, ptr %i.jd, align 8
  call void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr %i.jc, i32 %i.je) #11
  %i.jf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785UTS4614processUnicodeERKNS_13UnicodeStringEiiaaRS1_RNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, i32 noundef 0, i32 noundef %i.iv, i8 noundef signext %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(11) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.cz

bb.cy:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %13, ptr %1, i32 %2) #11
  %i.jg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785UTS4614processUnicodeERKNS_13UnicodeStringEiiaaRS1_RNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %13, i32 noundef 0, i32 noundef 0, i8 noundef signext %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(11) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %bb.cz

bb.cz:                                            ; preds = %.split155.us, %bb.cy
  %.5 = phi i32 [ %.us-phi156, %.split155.us ], [ 0, %bb.cy ] ; 5 uses
  call void @_ZNK6icu_7813UnicodeString6toUTF8ERNS_8ByteSinkE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  %i.jh = icmp eq i8 %4, 0
  %i.ji = icmp ne i8 %3, 0
  %or.cond7 = or i1 %i.ji, %i.jh
  br i1 %or.cond7, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jj = load i16, ptr %i.m, align 8             ; 5 uses
  %i.jk = icmp slt i16 %i.jj, 0
  %i.jl = ashr i16 %i.jj, 5
  %i.jm = sext i16 %i.jl to i32
  %i.jn = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.jo = load i32, ptr %i.jn, align 4
  %i.jp = select i1 %i.jk, i32 %i.jo, i32 %i.jm   ; 2 uses
  %i.jq = add nsw i32 %i.jp, %.5                  ; 2 uses
  %i.jr = icmp sgt i32 %i.jq, 253
  br i1 %i.jr, label %bb.db, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread

bb.db:                                            ; preds = %bb.da
  %i.js = and i16 %i.jj, 17
  %.not.i.i = icmp eq i16 %i.js, 0
  br i1 %.not.i.i, label %bb.dc, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.dc:                                            ; preds = %bb.db
  %i.jt = and i16 %i.jj, 2
  %.not2.i.i = icmp eq i16 %i.jt, 0
  br i1 %.not2.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.de:                                            ; preds = %bb.dc
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i:    ; preds = %bb.de, %bb.dd, %bb.db
  %.0.i.i = phi ptr [ %i.jw, %bb.de ], [ %i.ju, %bb.dd ], [ null, %bb.db ] ; 2 uses
  %i.jx = sext i32 %i.jp to i64
  %i.jy = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.jx
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %.06.i = phi ptr [ %.0.i.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i ], [ %i.ka, %bb.dg ] ; 3 uses
  %i.jz = icmp ult ptr %.06.i, %i.jy
  br i1 %i.jz, label %bb.dg, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit

bb.dg:                                            ; preds = %bb.df
  %i.ka = getelementptr inbounds nuw i8, ptr %.06.i, i64 2
  %i.kb = load i16, ptr %.06.i, align 2
  %i.kc = icmp ugt i16 %i.kb, 127
  br i1 %i.kc, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, label %bb.df, !llvm.loop !10

_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit: ; preds = %bb.df
  %.not130 = icmp eq i32 %i.jq, 254
  br i1 %.not130, label %bb.dh, label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

bb.dh:                                            ; preds = %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit
  %i.kd = icmp slt i32 %.5, 254
  br i1 %i.kd, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.dh
  %14 = sub nsw i32 253, %.5
  %i.ke = and i16 %i.jj, 2
  %.not.i.i.i = icmp eq i16 %i.ke, 0
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 10
  %i.kg = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = select i1 %.not.i.i.i, ptr %i.kh, ptr %i.kf
  %i.kj = zext nneg i32 %14 to i64
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = load i16, ptr %i.kk, align 2
  %.not131 = icmp eq i16 %i.kl, 46
  br i1 %.not131, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

_ZNK6icu_7813UnicodeStringixEi.exit.thread:       ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit
  %i.km = load i32, ptr %6, align 4
  %i.kn = or i32 %i.km, 4
  store i32 %i.kn, ptr %6, align 4
  br label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread

_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.dg, %bb.da, %bb.dh, %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit.thread, %bb.cz
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.kp = load i8, ptr %i.ko, align 1
  %.not132 = icmp eq i8 %i.kp, 0
  br i1 %.not132, label %bb.do, label %bb.di

bb.di:                                            ; preds = %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread
  %i.kq = load i32, ptr %7, align 4
  %i.kr = icmp sgt i32 %i.kq, 0
  br i1 %i.kr, label %bb.do, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ks = load i32, ptr %6, align 4               ; 2 uses
  %i.kt = and i32 %i.ks, 1984
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %i.kv = load i8, ptr %i.h, align 2
  %.not134 = icmp eq i8 %i.kv, 0
  br i1 %.not134, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.kw = icmp sgt i32 %.5, 0
  br i1 %i.kw, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.kx = call fastcc noundef signext i8 @_ZN6icu_78L13isASCIIOkBiDiEPKci(ptr noundef %1, i32 noundef %.5)
  %.not135 = icmp eq i8 %i.kx, 0
  br i1 %.not135, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm, %bb.dk
  %i.ky = or i32 %i.ks, 2048
  store i32 %i.ky, ptr %6, align 4
  br label %bb.do

bb.do:                                            ; preds = %.thread143, %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, %bb.di, %bb.dj, %bb.dl, %bb.dm, %bb.dn
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.dp

bb.dp:                                            ; preds = %bb.c, %bb.e, %bb.do, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_785UTS4618labelToUnicodeUTF8ENS_11StringPieceERNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i32 %2, i8 noundef signext 1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_785UTS4616nameToASCII_UTF8ENS_11StringPieceERNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i32 %2, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_785UTS4617nameToUnicodeUTF8ENS_11StringPieceERNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i32 %2, i8 noundef signext 0, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void
}

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

declare void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785UTS4614processUnicodeERKNS_13UnicodeStringEiiaaRS1_RNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i8 noundef signext %5, ptr noundef nonnull returned align 8 dereferenceable(64) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #1 align 2 {
bb.a:
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = icmp eq i32 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !14, !align !15 ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(4) %8) #11 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %3, i32 noundef 2147483647) #11
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(4) %8) #11 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load i32, ptr %8, align 4
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit122.thread

bb.e:                                             ; preds = %bb.d
  %.not110 = icmp eq i8 %5, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8
  %. = select i1 %.not110, i32 32, i32 16
  %i.p = and i32 %i.o, %.
  %i.q = icmp eq i32 %i.p, 0
  %i.r = zext i1 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = load i16, ptr %i.s, align 8              ; 4 uses
  %i.u = and i16 %i.t, 17
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %bb.f, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.f:                                             ; preds = %bb.e
  %i.v = and i16 %i.t, 2
  %.not2.i = icmp eq i16 %i.v, 0
  br i1 %.not2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.y, %bb.h ], [ %i.w, %bb.g ], [ null, %bb.e ]
  %i.z = icmp slt i16 %i.t, 0
  %i.aa = ashr i16 %i.t, 5
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = select i1 %i.z, i32 %i.ad, i32 %i.ab    ; 2 uses
  %i.af = icmp slt i32 %2, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.ag = icmp ne i8 %4, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString9getBufferEv.exit122
  %.092141 = phi i32 [ %2, %.lr.ph ], [ %.294, %_ZNK6icu_7813UnicodeString9getBufferEv.exit122 ] ; 9 uses
  %.095140 = phi i8 [ %i.r, %.lr.ph ], [ %.196, %_ZNK6icu_7813UnicodeString9getBufferEv.exit122 ] ; 3 uses
  %.097138 = phi i32 [ %2, %.lr.ph ], [ %.299, %_ZNK6icu_7813UnicodeString9getBufferEv.exit122 ] ; 10 uses
  %.0100137 = phi i32 [ %i.ae, %.lr.ph ], [ %.2102, %_ZNK6icu_7813UnicodeString9getBufferEv.exit122 ] ; 3 uses
  %.0103136 = phi ptr [ %.0.i, %.lr.ph ], [ %.3106, %_ZNK6icu_7813UnicodeString9getBufferEv.exit122 ] ; 7 uses
  %i.al = sext i32 %.097138 to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %.0103136, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %.fr = freeze i16 %i.an                         ; 6 uses
  %i.ao = zext i16 %.fr to i32                    ; 2 uses
  %i.ap = icmp ne i16 %.fr, 46
  %or.cond = or i1 %i.ag, %i.ap
  br i1 %or.cond, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = sub nsw i32 %.097138, %.092141          ; 2 uses
  %i.ar = call noundef i32 @_ZNK6icu_785UTS4612processLabelERNS_13UnicodeStringEiiaRNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %.092141, i32 noundef %i.aq, i8 noundef signext %5, ptr noundef nonnull align 4 dereferenceable(11) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) ; 2 uses
  %i.as = load i32, ptr %i.ah, align 4
  %i.at = load i32, ptr %7, align 4
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %7, align 4
  store i32 0, ptr %i.ah, align 4
  %i.av = load i32, ptr %8, align 4
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit122.thread

bb.k:                                             ; preds = %bb.j
  %i.ax = load i16, ptr %i.s, align 8             ; 2 uses
  %i.ay = and i16 %i.ax, 17
  %.not.i115 = icmp eq i16 %i.ay, 0
  br i1 %.not.i115, label %bb.l, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit118

bb.l:                                             ; preds = %bb.k
  %i.az = and i16 %i.ax, 2
  %.not2.i117 = icmp eq i16 %i.az, 0
  br i1 %.not2.i117, label %bb.m, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit118

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.aj, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit118

_ZNK6icu_7813UnicodeString9getBufferEv.exit118:   ; preds = %bb.l, %bb.k, %bb.m
  %.0.i116 = phi ptr [ %i.ba, %bb.m ], [ null, %bb.k ], [ %i.ai, %bb.l ]
end_hunk_0
