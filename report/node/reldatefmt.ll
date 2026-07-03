inline.NumInlined: 359
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode:bb.a
bb.p:                                             ; preds = %bb.o, %.thread.i
  br label %.thread

.thread:                                          ; preds = %bb.n, %.thread.i, %bb.p
  %.sink = phi i32 [ 0, %bb.p ], [ 1, %.thread.i ], [ 2, %bb.n ]
  %.neg = phi i32 [ 0, %bb.p ], [ -6, %.thread.i ], [ -7, %bb.n ]
  store i32 %.sink, ptr %i.q, align 4
  %i.cg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #14
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %.neg, %i.ch
  switch i32 %i.ci, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit [
    i32 3, label %sub_0.i
    i32 4, label %bb.q
    i32 5, label %bb.t
    i32 6, label %bb.u
    i32 7, label %bb.w
  ]

sub_0.i:                                          ; preds = %.thread
  %i.cj = load i8, ptr %i.ab, align 1
  switch i8 %i.cj, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit [
    i8 100, label %sub_1.i
    i8 115, label %sub_134.i
    i8 109, label %sub_139.i
    i8 116, label %sub_144.i
    i8 119, label %sub_149.i
    i8 102, label %sub_159.i
  ]

sub_1.i:                                          ; preds = %sub_0.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.cl = load i8, ptr %i.ck, align 1
  %.not67.i = icmp eq i8 %i.cl, 97
  br i1 %.not67.i, label %.tail.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

.tail.i:                                          ; preds = %sub_1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = icmp eq i8 %i.cn, 121
  br i1 %i.co, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

sub_134.i:                                        ; preds = %sub_0.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.cq = load i8, ptr %i.cp, align 1
  switch i8 %i.cq, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit [
    i8 117, label %.tail32.i
    i8 97, label %.tail62.i
  ]

.tail32.i:                                        ; preds = %sub_134.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 110
  br i1 %i.ct, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

sub_139.i:                                        ; preds = %sub_0.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  %.not71.i = icmp eq i8 %i.cv, 111
  br i1 %.not71.i, label %.tail37.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

.tail37.i:                                        ; preds = %sub_139.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 110
  br i1 %i.cy, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

sub_144.i:                                        ; preds = %sub_0.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.da = load i8, ptr %i.cz, align 1
  switch i8 %i.da, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit [
    i8 117, label %.tail42.i
    i8 104, label %.tail52.i
  ]

.tail42.i:                                        ; preds = %sub_144.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp eq i8 %i.dc, 101
  br i1 %i.dd, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

sub_149.i:                                        ; preds = %sub_0.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.df = load i8, ptr %i.de, align 1
  %.not75.i = icmp eq i8 %i.df, 101
  br i1 %.not75.i, label %.tail47.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

.tail47.i:                                        ; preds = %sub_149.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = icmp eq i8 %i.dh, 100
  br i1 %i.di, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

.tail52.i:                                        ; preds = %sub_144.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp eq i8 %i.dk, 117
  br i1 %i.dl, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

sub_159.i:                                        ; preds = %sub_0.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.dn = load i8, ptr %i.dm, align 1
  %.not79.i = icmp eq i8 %i.dn, 114
  br i1 %.not79.i, label %.tail57.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

.tail57.i:                                        ; preds = %sub_159.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp eq i8 %i.dp, 105
  br i1 %i.dq, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

.tail62.i:                                        ; preds = %sub_134.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 116
  br i1 %i.dt, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

bb.q:                                             ; preds = %.thread
  %i.du = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(5) @.str.11, i64 noundef 4) #14
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #14
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(5) @.str.13, i64 noundef 4) #14
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

bb.t:                                             ; preds = %.thread
  %i.ea = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(6) @.str.14, i64 noundef 5) #14
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

bb.u:                                             ; preds = %.thread
  %i.ec = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(7) @.str.15, i64 noundef 6) #14
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(7) @.str.16, i64 noundef 6) #14
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

bb.w:                                             ; preds = %.thread
  %i.eg = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(8) @.str.17, i64 noundef 7) #14
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.x, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit

_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink24unitOrNegativeFromStringEPKci.exit: ; preds = %sub_134.i, %sub_144.i, %.tail42.i, %.tail32.i, %.thread, %sub_0.i, %sub_1.i, %.tail.i, %sub_139.i, %.tail37.i, %sub_149.i, %.tail47.i, %.tail52.i, %sub_159.i, %.tail57.i, %.tail62.i, %bb.s, %bb.t, %bb.v, %bb.w
  store i32 -1, ptr %i.r, align 8
  br label %bb.as

bb.x:                                             ; preds = %bb.v, %.tail.i, %.tail32.i, %.tail37.i, %.tail42.i, %.tail47.i, %.tail52.i, %.tail57.i, %.tail62.i, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.w
  %.0.i14.ph = phi i32 [ 6, %bb.w ], [ 1, %bb.u ], [ 5, %bb.t ], [ 7, %bb.s ], [ 4, %bb.r ], [ 2, %bb.q ], [ 14, %.tail62.i ], [ 13, %.tail57.i ], [ 12, %.tail52.i ], [ 11, %.tail47.i ], [ 10, %.tail42.i ], [ 9, %.tail37.i ], [ 8, %.tail32.i ], [ 3, %.tail.i ], [ 0, %bb.v ]
  store i32 %.0.i14.ph, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ab, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.ei = load ptr, ptr %2, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !inline_history !53
  %i.el = load i32, ptr %4, align 4
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %.preheader.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink15consumeTimeUnitEPKcRNS_13ResourceValueER10UErrorCode.exit

.preheader.i:                                     ; preds = %bb.x
  %i.en = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %16, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %.not1419.i = icmp eq i8 %i.en, 0
  br i1 %.not1419.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink15consumeTimeUnitEPKcRNS_13ResourceValueER10UErrorCode.exit, label %sub_0.i15

sub_0.i15:                                        ; preds = %.preheader.i, %bb.ar
  %.020.i = phi i32 [ %i.kx, %bb.ar ], [ 0, %.preheader.i ]
  %i.eo = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 1
  %.not.i = icmp eq i8 %i.ep, 100
  br i1 %.not.i, label %sub_1.i17, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i

sub_1.i17:                                        ; preds = %sub_0.i15
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.er = load i8, ptr %i.eq, align 1
  %.not21.i = icmp eq i8 %i.er, 110
  br i1 %.not21.i, label %.tail.i18, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i

.tail.i18:                                        ; preds = %sub_1.i17
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.y, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i

bb.y:                                             ; preds = %.tail.i18
  %i.ev = load ptr, ptr %2, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = call noundef i32 %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %2) #13, !inline_history !53
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %21, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i

21:                                               ; preds = %bb.y
  %22 = load i32, ptr %4, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %bb.z, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i

bb.z:                                             ; preds = %21
  %i.fa = load i32, ptr %i.r, align 8
  %switch.tableidx = add i32 %i.fa, -1            ; 2 uses
  %i.fb = icmp ult i32 %switch.tableidx, 14
  br i1 %i.fb, label %switch.lookup, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i

switch.lookup:                                    ; preds = %bb.z
  %i.fc = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode.1, i64 %i.fc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.fd = load ptr, ptr %i.s, align 8, !nonnull !29, !align !52
  %i.fe = load i32, ptr %i.q, align 4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [5760 x i8], ptr %i.fd, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [384 x i8], ptr %i.fg, i64 %switch.ext ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 352
  %i.fj = load i16, ptr %i.fi, align 8
  %i.fk = icmp ugt i16 %i.fj, 31
  br i1 %i.fk, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i, label %bb.aa

bb.aa:                                            ; preds = %switch.lookup
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 344
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13, !noalias !54
  store i32 0, ptr %i.g, align 4, !noalias !54
  %i.fm = load ptr, ptr %2, align 8, !noalias !54
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !54
  %i.fp = call noundef ptr %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !noalias !54, !inline_history !57
  store ptr %i.fp, ptr %14, align 8, !noalias !54
  %i.fq = load i32, ptr %i.g, align 4, !noalias !54
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 noundef signext 1, ptr noundef nonnull %14, i32 noundef %i.fq) #13
  %i.fr = load ptr, ptr %14, align 8, !noalias !54
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.fr) #13, !srcloc !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13, !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.fs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.fl, ptr noundef nonnull align 8 dereferenceable(64) %15) #13 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i

_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i: ; preds = %bb.z, %bb.aa, %switch.lookup, %21, %bb.y, %.tail.i18, %sub_1.i17, %sub_0.i15
  %i.ft = load ptr, ptr %2, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef i32 %i.fv(ptr noundef nonnull align 8 dereferenceable(8) %2) #13, !inline_history !53
  %i.fx = icmp eq i32 %i.fw, 2
  br i1 %i.fx, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20handlePlainDirectionERNS_13ResourceValueER10UErrorCode.exit.i
  %i.fy = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.fz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fy, ptr noundef nonnull dereferenceable(9) @.str.19) #14
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.fy, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.gb = load ptr, ptr %2, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !inline_history !58
  %i.ge = load i32, ptr %4, align 4
  %i.gf = icmp slt i32 %i.ge, 1
  br i1 %i.gf, label %.preheader.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20consumeTableRelativeEPKcRNS_13ResourceValueER10UErrorCode.exit.i

.preheader.i.i:                                   ; preds = %bb.ac
  %i.gg = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %11, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %.not2032.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not2032.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20consumeTableRelativeEPKcRNS_13ResourceValueER10UErrorCode.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i
  %.033.i.i = phi i32 [ %i.ip, %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i ], [ 0, %.preheader.i.i ]
  %i.gh = load ptr, ptr %2, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = call noundef i32 %i.gj(ptr noundef nonnull align 8 dereferenceable(8) %2) #13, !inline_history !58
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.ad, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %i.gm = load ptr, ptr %i.f, align 8             ; 7 uses
  %i.gn = load i8, ptr %i.gm, align 1             ; 2 uses
  switch i8 %i.gn, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i [
    i8 45, label %sub_1.i.i.i
    i8 48, label %.tail10.i.i.i
    i8 49, label %.tail14.i.i.i
    i8 50, label %sub_120.i.i.i
  ]

sub_1.i.i.i:                                      ; preds = %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gp = load i8, ptr %i.go, align 1
  switch i8 %i.gp, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i [
    i8 50, label %.tail.i.i.i
    i8 49, label %.tail5.i.i.i
  ]

.tail.i.i.i:                                      ; preds = %sub_1.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %select.unfold.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

.tail5.i.i.i:                                     ; preds = %sub_1.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 2
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = icmp eq i8 %i.gu, 0
  br i1 %i.gv, label %select.unfold.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

.tail10.i.i.i:                                    ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.gx = load i8, ptr %i.gw, align 1
  %i.gy = icmp eq i8 %i.gx, 0
  br i1 %i.gy, label %select.unfold.thread.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

.tail14.i.i.i:                                    ; preds = %bb.ad
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %select.unfold.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

sub_120.i.i.i:                                    ; preds = %bb.ad
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %i.hd = load i8, ptr %i.hc, align 1
  %i.he = icmp eq i8 %i.hd, 0
  br i1 %i.he, label %select.unfold.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

select.unfold.i.i:                                ; preds = %sub_120.i.i.i, %.tail14.i.i.i, %.tail5.i.i.i, %.tail.i.i.i
  %.not49.i.i = phi i1 [ false, %.tail14.i.i.i ], [ true, %.tail.i.i.i ], [ false, %sub_120.i.i.i ], [ true, %.tail5.i.i.i ]
  %.0.i.ph.i15.i = phi i64 [ 3, %.tail14.i.i.i ], [ 0, %.tail.i.i.i ], [ 4, %sub_120.i.i.i ], [ 1, %.tail5.i.i.i ] ; 2 uses
  %i.hf = load i32, ptr %i.r, align 8             ; 2 uses
  %cond.i.i = icmp eq i32 %i.hf, 0
  br i1 %cond.i.i, label %sub_0.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.thread.i.i

select.unfold.thread.i.i:                         ; preds = %.tail10.i.i.i
  %i.hg = load i32, ptr %i.r, align 8             ; 2 uses
  %cond36.i.i = icmp eq i32 %i.hg, 0
  br i1 %cond36.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.tail.thread.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.thread.i.i

sub_0.i.i:                                        ; preds = %select.unfold.i.i
  %.not.i.i16 = icmp ne i8 %i.gn, 48
  %brmerge.i.i = or i1 %.not.i.i16, %.not49.i.i
  br i1 %brmerge.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.tail.thread.i.i

_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.tail.thread.i.i: ; preds = %sub_0.i.i, %select.unfold.thread.i.i
  %.0.i.ph384144.i.i = phi i64 [ %.0.i.ph.i15.i, %sub_0.i.i ], [ 2, %select.unfold.thread.i.i ]
  %i.hh = load ptr, ptr %i.s, align 8, !nonnull !29, !align !52
  %i.hi = load i32, ptr %i.q, align 4
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [5760 x i8], ptr %i.hh, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4576
  %i.hm = load i16, ptr %i.hl, align 8
  %i.hn = icmp ugt i16 %i.hm, 31
  br i1 %i.hn, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.tail.thread.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 4568
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13, !noalias !59
  store i32 0, ptr %i.e, align 4, !noalias !59
  %i.hp = load ptr, ptr %2, align 8, !noalias !59
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !59
  %i.hs = call noundef ptr %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !noalias !59, !inline_history !62
  store ptr %i.hs, ptr %10, align 8, !noalias !59
  %i.ht = load i32, ptr %i.e, align 4, !noalias !59
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 noundef signext 1, ptr noundef nonnull %10, i32 noundef %i.ht) #13
  %i.hu = load ptr, ptr %10, align 8, !noalias !59
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.hu) #13, !srcloc !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13, !noalias !59
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.hv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ho, ptr noundef nonnull align 8 dereferenceable(64) %12) #13 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %.pr.pr.pre.i.i = load i32, ptr %i.r, align 8
  br label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.thread.i.i

_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.thread.i.i: ; preds = %bb.ae, %select.unfold.thread.i.i, %select.unfold.i.i
  %.0.i.ph37.i.i = phi i64 [ 2, %select.unfold.thread.i.i ], [ %.0.i.ph.i15.i, %select.unfold.i.i ], [ %.0.i.ph384144.i.i, %bb.ae ]
  %.pr.i.i = phi i32 [ %i.hg, %select.unfold.thread.i.i ], [ %i.hf, %select.unfold.i.i ], [ %.pr.pr.pre.i.i, %bb.ae ]
  %switch.tableidx39 = add i32 %.pr.i.i, -1       ; 2 uses
  %i.hw = icmp ult i32 %switch.tableidx39, 14
  br i1 %i.hw, label %switch.lookup40, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

switch.lookup40:                                  ; preds = %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.thread.i.i
  %i.hx = zext nneg i32 %switch.tableidx39 to i64
  %switch.gep41 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode.1, i64 %i.hx
  %switch.load42 = load i8, ptr %switch.gep41, align 1
  %switch.ext43 = zext i8 %switch.load42 to i64
  %i.hy = load ptr, ptr %i.s, align 8, !nonnull !29, !align !52
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load i32, ptr %i.q, align 4
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [5760 x i8], ptr %i.hz, i64 %i.ib
  %i.id = getelementptr inbounds nuw [384 x i8], ptr %i.ic, i64 %switch.ext43
  %i.ie = getelementptr inbounds nuw [64 x i8], ptr %i.id, i64 %.0.i.ph37.i.i ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i16, ptr %i.if, align 8
  %i.ih = icmp ugt i16 %i.ig, 31
  br i1 %i.ih, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i, label %bb.af

bb.af:                                            ; preds = %switch.lookup40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !63
  store i32 0, ptr %i.d, align 4, !noalias !63
  %i.ii = load ptr, ptr %2, align 8, !noalias !63
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !63
  %i.il = call noundef ptr %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !noalias !63, !inline_history !62
  store ptr %i.il, ptr %9, align 8, !noalias !63
  %i.im = load i32, ptr %i.d, align 4, !noalias !63
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 noundef signext 1, ptr noundef nonnull %9, i32 noundef %i.im) #13
  %i.in = load ptr, ptr %9, align 8, !noalias !63
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.in) #13, !srcloc !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.io = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ie, ptr noundef nonnull align 8 dereferenceable(64) %13) #13 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i

_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i: ; preds = %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.thread.i.i, %bb.af, %switch.lookup40, %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink18relUnitFromGenericENS1_10RelAbsUnitE.exit.tail.thread.i.i, %sub_0.i.i, %sub_120.i.i.i, %.tail14.i.i.i, %.tail10.i.i.i, %.tail5.i.i.i, %.tail.i.i.i, %sub_1.i.i.i, %bb.ad, %.lr.ph.i.i
  %i.ip = add nuw nsw i32 %.033.i.i, 1            ; 2 uses
  %i.iq = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %11, i32 noundef %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %.not20.i.i = icmp eq i8 %i.iq, 0
  br i1 %.not20.i.i, label %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20consumeTableRelativeEPKcRNS_13ResourceValueER10UErrorCode.exit.i, label %.lr.ph.i.i, !llvm.loop !66

_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink20consumeTableRelativeEPKcRNS_13ResourceValueER10UErrorCode.exit.i: ; preds = %_ZN6icu_7812_GLOBAL__N_122RelDateTimeFmtDataSink14keyToDirectionEPKc.exit.i.i, %.preheader.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ar

bb.ag:                                            ; preds = %bb.ab
  %i.ir = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fy, ptr noundef nonnull dereferenceable(13) @.str.20) #14
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
