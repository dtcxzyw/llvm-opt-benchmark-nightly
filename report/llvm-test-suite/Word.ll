Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Word?download=true
inline.NumInlined: 775
inline.NumDeleted: 123
begin_hunk_0_@_ZN2PP4Word8set_typeEv:bb.a
bb.ac:                                            ; preds = %bb.aa
  %i.av = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.18)
  br i1 %i.av, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.aw, align 4, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.ae:                                            ; preds = %bb.ac
  %i.az = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.20)
  br i1 %i.az, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.ba, align 4, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.ag:                                            ; preds = %bb.ae
  %i.bd = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.21)
  br i1 %i.bd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.be, align 4, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.ai:                                            ; preds = %bb.ag
  %i.bh = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.22)
  br i1 %i.bh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.bi, align 4, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.ak:                                            ; preds = %bb.ai
  %i.bl = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.23)
  br i1 %i.bl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.bm, align 4, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.am:                                            ; preds = %bb.ak
  %i.bp = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.24)
  br i1 %i.bp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.bq, align 4, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.ao:                                            ; preds = %bb.am
  %i.bt = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.25)
  br i1 %i.bt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.bu, align 4, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bw = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.aq:                                            ; preds = %bb.ao
  %i.bx = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.26)
  br i1 %i.bx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.by, align 4, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.as:                                            ; preds = %bb.aq
  %i.cb = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.27)
  br i1 %i.cb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.cc, align 4, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ce = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.au:                                            ; preds = %bb.as
  %i.cf = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.28)
  br i1 %i.cf, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.cg, align 4, !tbaa !41
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ci = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.aw:                                            ; preds = %bb.au
  %i.cj = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.29)
  br i1 %i.cj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.ck, align 4, !tbaa !41
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.ay:                                            ; preds = %bb.aw
  %i.cn = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.30)
  br i1 %i.cn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.co, align 4, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.bx

bb.ba:                                            ; preds = %bb.ay
  %i.cr = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.31)
  br i1 %i.cr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2, ptr %i.cs, align 4, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull @.str.32) ; 0 uses
  br label %bb.bx

bb.bc:                                            ; preds = %bb.ba
  %i.cv = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.33)
  br i1 %i.cv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.cw, align 4, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cy = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull @.str.32) ; 0 uses
  br label %bb.bx

bb.be:                                            ; preds = %bb.bc
  %i.cz = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.34)
  br i1 %i.cz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 5, ptr %i.a, align 8, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.da, align 4, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull @.str.32) ; 0 uses
  br label %bb.bx

bb.bg:                                            ; preds = %bb.be
  %i.dd = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.35)
  br i1 %i.dd, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 4, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

bb.bi:                                            ; preds = %bb.bg
  %i.de = load ptr, ptr %0, align 8, !tbaa !22    ; 6 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !28  ; 5 uses
  %i.dg = icmp eq i8 %i.df, 43                    ; 2 uses
  %i.dh = icmp eq i8 %i.df, 45                    ; 2 uses
  %.151 = or i1 %i.dh, %i.dg
  switch i8 %i.df, label %bb.bj [
    i8 45, label %bb.bl
    i8 43, label %bb.bl
  ]

bb.bj:                                            ; preds = %bb.bi
  %3 = add i8 %i.df, -48
  %isdigit = icmp ult i8 %3, 10
  br i1 %isdigit, label %bb.bl, label %switch.early.test

switch.early.test:                                ; preds = %bb.bj
  switch i8 %i.df, label %bb.bk [
    i8 101, label %bb.bl
    i8 100, label %bb.bl
    i8 69, label %bb.bl
    i8 68, label %bb.bl
    i8 46, label %bb.bl
  ]

bb.bk:                                            ; preds = %switch.early.test
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

bb.bl:                                            ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.bj, %bb.bi, %bb.bi
  %spec.store.select = zext i1 %.151 to i32       ; 2 uses
  %i.di = load i64, ptr %i.b, align 8, !tbaa !33  ; 4 uses
  %i.dj = trunc i64 %i.di to i32                  ; 3 uses
  %.not59110 = icmp slt i32 %spec.store.select, %i.dj
  br i1 %.not59110, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.bl
  %i.dk = or i1 %i.dh, %i.dg                      ; 2 uses
  %umax = zext i1 %i.dk to i64
  %i.dl = zext i1 %i.dk to i32
  %i.dm = add nuw i32 %i.dj, %i.dl
  %i.dn = sub nuw i32 %i.dm, %spec.store.select
  %wide.trip.count = zext i32 %i.dn to i64
  br label %.lr.ph

bb.bm:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !80

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bm
  %indvars.iv = phi i64 [ %umax, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bm ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28
  %4 = add i8 %i.dp, -48
  %isdigit58 = icmp ult i8 %4, 10
  br i1 %isdigit58, label %bb.bm, label %.lr.ph114.preheader.a

.lr.ph114.preheader.a:                            ; preds = %.lr.ph
  %wide.trip.count123 = and i64 %i.di, 4294967295
  br label %.lr.ph114.a

.critedge:                                        ; preds = %bb.bm, %bb.bl
  store i32 2, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

.lr.ph114.a:                                      ; preds = %.lr.ph114.preheader.a, %bb.bn
  %indvars.iv120 = phi i64 [ 0, %.lr.ph114.preheader.a ], [ %indvars.iv.next121, %bb.bn ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv120
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !28
  %.fr105 = freeze i8 %i.dr                       ; 2 uses
  %5 = add i8 %.fr105, -48
  %isdigit61 = icmp ult i8 %5, 10
  br i1 %isdigit61, label %bb.bn, label %switch.early.test104

switch.early.test104:                             ; preds = %.lr.ph114.a
  switch i8 %.fr105, label %bb.bo [
    i8 101, label %bb.bn
    i8 100, label %bb.bn
    i8 69, label %bb.bn
    i8 68, label %bb.bn
    i8 46, label %bb.bn
    i8 45, label %bb.bn
    i8 43, label %bb.bn
  ]

bb.bn:                                            ; preds = %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %.lr.ph114.a
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %.critedge73.a, label %.lr.ph114.a, !llvm.loop !81

bb.bo:                                            ; preds = %switch.early.test104
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

.critedge73.a:                                    ; preds = %bb.bn
  store i32 3, ptr %i.a, align 8, !tbaa !36
  %i.ds = load i8, ptr %i.de, align 1, !tbaa !28
  switch i8 %i.ds, label %.lr.ph116.preheader [
    i8 101, label %bb.bp
    i8 69, label %bb.bp
    i8 100, label %bb.bp
    i8 68, label %bb.bp
  ]

.lr.ph116.preheader:                              ; preds = %.critedge73.a
  %wide.trip.count128 = and i64 %i.di, 4294967295
  br label %.lr.ph116

bb.bp:                                            ; preds = %.critedge73.a, %.critedge73.a, %.critedge73.a, %.critedge73.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !33
  %i.du = trunc i64 %i.dt to i32
  %i.dv = add nsw i32 %i.du, -1
  %i.dw = call noundef zeroext i1 @_ZN2PP4Word13check_after_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef 1, i32 noundef %i.dv)
  %i.dx = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bp
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !28
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  br i1 %i.dw, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull @.str.36) ; 0 uses
  br label %bb.bx

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.bs
  %indvars.iv125 = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next126, %bb.bs ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv125
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !28
  switch i8 %i.ee, label %bb.bs [
    i8 101, label %bb.bt
    i8 69, label %bb.bt
    i8 100, label %bb.bt
    i8 68, label %bb.bt
  ]

bb.bs:                                            ; preds = %.lr.ph116
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.critedge75, label %.lr.ph116, !llvm.loop !82

bb.bt:                                            ; preds = %.lr.ph116, %.lr.ph116, %.lr.ph116, %.lr.ph116
  %i.ef = trunc nuw nsw i64 %indvars.iv125 to i32 ; 2 uses
  %i.eg = and i64 %i.di, 4294967295               ; 2 uses
  %indvars.iv.next132146 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %.not70147 = icmp samesign ult i64 %indvars.iv.next132146, %i.eg
  br i1 %.not70147, label %.lr.ph149, label %.critedge75

bb.bu:                                            ; preds = %.lr.ph149
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv.next132148, 1 ; 2 uses
  %.not70 = icmp samesign ult i64 %indvars.iv.next132, %i.eg
  br i1 %.not70, label %.lr.ph149, label %.critedge75

.lr.ph149:                                        ; preds = %bb.bt, %bb.bu
  %indvars.iv.next132148 = phi i64 [ %indvars.iv.next132, %bb.bu ], [ %indvars.iv.next132146, %bb.bt ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next132148
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !28
  switch i8 %i.ei, label %bb.bu [
    i8 101, label %bb.bv
    i8 69, label %bb.bv
    i8 100, label %bb.bv
    i8 68, label %bb.bv
  ]

bb.bv:                                            ; preds = %.lr.ph149, %.lr.ph149, %.lr.ph149, %.lr.ph149
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

.critedge75:                                      ; preds = %bb.bs, %bb.bu, %bb.bt
  %i.ej = phi i32 [ %i.ef, %bb.bt ], [ %i.ef, %bb.bu ], [ %i.dj, %bb.bs ]
  %.0 = add nsw i32 %i.ej, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ek = call noundef zeroext i1 @_ZN2PP4Word14check_before_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nonnull align 8 poison, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %.0)
  %i.el = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %.critedge75
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !28
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %.critedge75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  br i1 %i.ek, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

bb.bx:                                            ; preds = %bb.a, %bb.a, %bb.b, %bb.b, %bb.bv, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %bb.bw, %bb.br, %bb.bq, %bb.bo, %.critedge, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4WordC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiiS6_PSt5dequeIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !33
  store i8 0, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !33
  store i8 0, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !33
  store i8 0, ptr %i.g, align 8, !tbaa !28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.i, align 4, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 0, ptr %i.n, align 4, !tbaa !39
  %i.o = load i64, ptr %i.h, align 8, !tbaa !33
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.o, ptr noundef nonnull @.str, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.r, align 4, !tbaa !41
  %i.s = load i64, ptr %i.e, align 8, !tbaa !33
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull @.str, i64 noundef 0)
          to label %_ZN2PP4Word4initEv.exit unwind label %bb.c ; 0 uses

_ZN2PP4Word4initEv.exit:                          ; preds = %.noexc
  store i32 %2, ptr %i.m, align 8, !tbaa !38
  store i32 %3, ptr %i.n, align 4, !tbaa !39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7 unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7: ; preds = %_ZN2PP4Word4initEv.exit
  store ptr %5, ptr %i.l, align 8, !tbaa !37
  invoke void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  ret void

bb.c:                                             ; preds = %_ZN2PP4Word4initEv.exit, %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit7
  %i.u = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN2PP4Word9set_valueEd:bb.a
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !28
  store i8 %i.ah, ptr %i.aa, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !33  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !33
  %i.ak = load ptr, ptr %0, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !28
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %0, align 8, !tbaa !22
  %i.an = load <2 x i64>, ptr %i.i, align 8, !tbaa !28
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !28
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !28
  store ptr %i.ad, ptr %0, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load <2 x i64>, ptr %i.i, align 8, !tbaa !28
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !22
  store i64 %i.ao, ptr %i.h, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %3, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ar = phi ptr [ %i.aa, %bb.h ], [ %i.h, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.i, align 8, !tbaa !33
  store i8 0, ptr %i.ar, align 1, !tbaa !28
  %i.as = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.h
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.au = load i64, ptr %i.h, align 8, !tbaa !28
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  invoke void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aw, ptr %2, align 8, !tbaa !27
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %2, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !27
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bc, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !28
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #18
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bc, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #17
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !27
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bq) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.k:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.l

bb.l:                                             ; preds = %.body, %bb.k
  %.pn = phi { ptr, i32 } [ %i.br, %bb.k ], [ %i.u, %.body ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueEPKc(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %1, i64 noundef %i.c) ; 0 uses
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word9set_valueEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  br i1 %1, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull @.str.1, i64 noundef 5) ; 0 uses
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull @.str.2, i64 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  tail call void @_ZN2PP4Word8set_typeEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !22
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN2PP4Word13check_after_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp slt i32 %3, %2
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28    ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %.thread23
    i8 45, label %.thread23
  ]

bb.c:                                             ; preds = %bb.b
  %4 = add i8 %i.e, -48
  %isdigit = icmp ult i8 %4, 10
  br i1 %isdigit, label %bb.d, label %.critedge

.thread23:                                        ; preds = %bb.b, %bb.b
  %i.f = add nsw i32 %2, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread23
  %.016 = phi i32 [ %i.f, %.thread23 ], [ %2, %bb.c ] ; 2 uses
  %.not2024 = icmp sgt i32 %.016, %3
  br i1 %.not2024, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.g = sext i32 %.016 to i64
  %i.h = add i32 %3, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28
  %5 = add i8 %i.j, -48
  %isdigit22 = icmp ult i8 %5, 10                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp ne i32 %i.h, %lftr.wideiv
  %or.cond.not = select i1 %isdigit22, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.critedge, !llvm.loop !104

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.d ], [ %isdigit22, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN2PP4Word14check_before_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp slt i32 %3, %2
  br i1 %i.a, label %.critedge82, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  switch i8 %i.e, label %bb.d [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = add nsw i32 %2, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.057 = phi i32 [ %i.f, %bb.c ], [ %2, %bb.b ]  ; 6 uses
  %.not92 = icmp sgt i32 %.057, %3
  br i1 %.not92, label %.critedge82, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.g = sext i32 %.057 to i64
  %i.h = add i32 %3, 1
  br label %.lr.ph

.lr.ph96.preheader:                               ; preds = %bb.e
  %i.i = sext i32 %.057 to i64                    ; 2 uses
  %i.j = add i32 %3, 1
  br label %.lr.ph96

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  switch i8 %i.l, label %bb.e [
    i8 43, label %.critedge82
    i8 45, label %.critedge82
  ]

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.h, %lftr.wideiv
  br i1 %exitcond.not, label %.lr.ph96.preheader, label %.lr.ph, !llvm.loop !105

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.critedge
  %indvars.iv117 = phi i32 [ %.057, %.lr.ph96.preheader ], [ %indvars.iv.next118, %.critedge ] ; 5 uses
  %indvars.iv112 = phi i64 [ %i.i, %.lr.ph96.preheader ], [ %indvars.iv.next113, %.critedge ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv112
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = icmp eq i8 %i.n, 46
  br i1 %i.o, label %bb.f, label %.critedge

.critedge:                                        ; preds = %.lr.ph96
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %lftr.wideiv115 = trunc i64 %indvars.iv.next113 to i32
  %exitcond116.not = icmp eq i32 %i.j, %lftr.wideiv115
  %indvars.iv.next118 = add i32 %indvars.iv117, 1
  br i1 %exitcond116.not, label %.critedge76, label %.lr.ph96, !llvm.loop !106

bb.f:                                             ; preds = %.lr.ph96
  %i.p = trunc nsw i64 %indvars.iv112 to i32      ; 4 uses
  %i.q = icmp sgt i64 %indvars.iv112, -1
  br i1 %i.q, label %.preheader87.preheader, label %.critedge76

.preheader87.preheader:                           ; preds = %bb.f
  %i.r = zext i32 %indvars.iv117 to i64           ; 2 uses
  %.not65.not.not158 = icmp sgt i32 %3, %indvars.iv117
  br i1 %.not65.not.not158, label %.lr.ph160, label %.critedge74.preheader

.preheader87:                                     ; preds = %.lr.ph160
  %i.s = trunc nuw i64 %indvars.iv.next121 to i32
  %.not65.not.not = icmp sgt i32 %3, %i.s
  br i1 %.not65.not.not, label %.lr.ph160, label %.critedge74.preheader, !llvm.loop !107

.critedge74.preheader:                            ; preds = %.preheader87, %.preheader87.preheader
  %.not6697 = icmp slt i32 %.057, %i.p
  br i1 %.not6697, label %.lr.ph99, label %.critedge78.preheader

.lr.ph160:                                        ; preds = %.preheader87.preheader, %.preheader87
  %indvars.iv120159 = phi i64 [ %indvars.iv.next121, %.preheader87 ], [ %i.r, %.preheader87.preheader ]
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120159, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next121
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %.critedge82, label %.preheader87, !llvm.loop !107

.critedge74.a:                                    ; preds = %.lr.ph99
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1 ; 2 uses
  %lftr.wideiv128 = trunc i64 %indvars.iv.next124 to i32
  %exitcond129.not = icmp eq i32 %indvars.iv117, %lftr.wideiv128
  br i1 %exitcond129.not, label %.critedge78.preheader, label %.lr.ph99, !llvm.loop !108

.critedge78.preheader:                            ; preds = %.critedge74.a, %.critedge74.preheader
  %.not67.not.not161 = icmp sgt i32 %3, %indvars.iv117
  br i1 %.not67.not.not161, label %.lr.ph163, label %.critedge76

.lr.ph99:                                         ; preds = %.critedge74.preheader, %.critedge74.a
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.critedge74.a ], [ %i.i, %.critedge74.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv123
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %4 = add i8 %i.x, -48
  %isdigit = icmp ult i8 %4, 10
  br i1 %isdigit, label %.critedge74.a, label %.critedge82

.critedge78:                                      ; preds = %.lr.ph163
  %i.y = trunc nuw i64 %indvars.iv.next133 to i32
  %.not67.not.not = icmp sgt i32 %3, %i.y
  br i1 %.not67.not.not, label %.lr.ph163, label %.critedge76, !llvm.loop !109

.lr.ph163:                                        ; preds = %.critedge78.preheader, %.critedge78
  %indvars.iv132162 = phi i64 [ %indvars.iv.next133, %.critedge78 ], [ %i.r, %.critedge78.preheader ]
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132162, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next133
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %5 = add i8 %i.aa, -48
  %isdigit69 = icmp ult i8 %5, 10
  br i1 %isdigit69, label %.critedge78, label %.critedge82, !llvm.loop !109

.critedge76:                                      ; preds = %.critedge, %.critedge78, %.critedge78.preheader, %bb.f
  %.05584 = phi i32 [ %i.p, %.critedge78.preheader ], [ %i.p, %bb.f ], [ %i.p, %.critedge78 ], [ -1, %.critedge ]
  %.not = icmp eq i32 %.05584, -1
  br i1 %.not, label %.lr.ph102.preheader, label %.critedge82

.lr.ph102.preheader:                              ; preds = %.critedge76
  %i.ab = sext i32 %.057 to i64
  %i.ac = add i32 %3, 1
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102, %.lr.ph102.preheader
  %indvars.iv135 = phi i64 [ %i.ab, %.lr.ph102.preheader ], [ %indvars.iv.next136, %.lr.ph102 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv135
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %6 = add i8 %i.ae, -48
  %isdigit72 = icmp ult i8 %6, 10                 ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 1 ; 2 uses
  %lftr.wideiv138 = trunc i64 %indvars.iv.next136 to i32
  %exitcond139.not = icmp ne i32 %i.ac, %lftr.wideiv138
  %or.cond.not = select i1 %isdigit72, i1 %exitcond139.not, i1 false
  br i1 %or.cond.not, label %.lr.ph102, label %.critedge82, !llvm.loop !110

.critedge82:                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph160, %.lr.ph99, %.lr.ph163, %.lr.ph102, %bb.d, %.critedge76, %bb.a
  %.9 = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ true, %.critedge76 ], [ false, %.lr.ph160 ], [ %isdigit72, %.lr.ph102 ], [ false, %.lr.ph99 ], [ false, %.lr.ph163 ], [ false, %.lr.ph ], [ false, %.lr.ph ]
  ret i1 %.9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP4Word10print_typeERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.37, i64 noundef 7) ; 0 uses
  %.pr = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.38, i64 noundef 6) ; 0 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %.pre, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.39, i64 noundef 7) ; 0 uses
  %.pr15 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = phi i32 [ %.pr15, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.40, i64 noundef 6) ; 0 uses
  %.pre21 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi i32 [ %.pre21, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.35, i64 noundef 1) ; 0 uses
  %.pr16 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.v = phi i32 [ %.pr16, %bb.j ], [ %i.r, %bb.i ] ; 2 uses
  %i.w = icmp eq i32 %i.v, 5
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.41, i64 noundef 8) ; 0 uses
  %.pre22 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = phi i32 [ %.pre22, %bb.l ], [ %i.v, %bb.k ] ; 2 uses
  %i.aa = icmp eq i32 %i.z, 6
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %.pr17 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = phi i32 [ %.pr17, %bb.n ], [ %i.z, %bb.m ] ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 7
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  %.pre23 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = phi i32 [ %.pre23, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %.pr18 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = phi i32 [ %.pr18, %bb.r ], [ %i.ah, %bb.q ] ; 2 uses
  %i.am = icmp eq i32 %i.al, 9
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.6, i64 noundef 1) ; 0 uses
  %.pre24 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ap = phi i32 [ %.pre24, %bb.t ], [ %i.al, %bb.s ] ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 10
  br i1 %i.aq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %.pr19 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.at = phi i32 [ %.pr19, %bb.v ], [ %i.ap, %bb.u ] ; 2 uses
  %i.au = icmp eq i32 %i.at, 11
  br i1 %i.au, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %.pre25 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ax = phi i32 [ %.pre25, %bb.x ], [ %i.at, %bb.w ] ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 12
  br i1 %i.ay, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %.pr20 = load i32, ptr %i.a, align 8, !tbaa !36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bb = phi i32 [ %.pr20, %bb.z ], [ %i.ax, %bb.y ]
  %i.bc = icmp eq i32 %i.bb, 13
  br i1 %i.bc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.42, i64 noundef 8) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN2PP4Word7is_boolEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !32
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.e, ptr %i.a, align 8, !tbaa !31
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !22
  %i.h = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.h, ptr %i.b, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2PP4Word7get_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef signext i8 %i.ck(ptr noundef nonnull align 8 dereferenceable(570) %i.cd, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53: ; preds = %bb.p, %bb.q
  %.0.i.i.i52 = phi i8 [ %i.ch, %bb.p ], [ %i.cl, %bb.q ]
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i8 noundef signext %.0.i.i.i52)
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) ; 0 uses
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.48, i64 noundef 9) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !33
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.cq, i64 noundef %i.cs) ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.cv = getelementptr i8, ptr %i.cu, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 240
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i54 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i54, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55

bb.r:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.db = load i8, ptr %i.da, align 8, !tbaa !66
  %.not.i1.i.i56 = icmp eq i8 %i.db, 0
  br i1 %.not.i1.i.i56, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 67
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i55
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cz)
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef signext i8 %i.dg(ptr noundef nonnull align 8 dereferenceable(570) %i.cz, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58: ; preds = %bb.s, %bb.t
  %.0.i.i.i57 = phi i8 [ %i.dd, %bb.s ], [ %i.dh, %bb.t ]
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i8 noundef signext %.0.i.i.i57)
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit58, %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.52, i64 noundef 36) ; 0 uses
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !27
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dk, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 240
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i59 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i59, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60: ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !66
  %.not.i1.i.i61 = icmp eq i8 %i.dt, 0
  br i1 %.not.i1.i.i61, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 67
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i60
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dr)
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef signext i8 %i.dy(ptr noundef nonnull align 8 dereferenceable(570) %i.dr, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63: ; preds = %bb.w, %bb.x
  %.0.i.i.i62 = phi i8 [ %i.dv, %bb.w ], [ %i.dz, %bb.x ]
  %i.ea = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i8 noundef signext %.0.i.i.i62)
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) ; 0 uses
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.53, i64 noundef 13) ; 0 uses
  %i.ed = load ptr, ptr %0, align 8, !tbaa !22
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !33
  %i.eg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.ed, i64 noundef %i.ef) ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !27
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 240
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i64 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i64, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65

bb.y:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !66
  %.not.i1.i.i66 = icmp eq i8 %i.eo, 0
  br i1 %.not.i1.i.i66, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 67
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.em)
  %i.er = load ptr, ptr %i.em, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = tail call noundef signext i8 %i.et(ptr noundef nonnull align 8 dereferenceable(570) %i.em, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68: ; preds = %bb.z, %bb.aa
  %.0.i.i.i67 = phi i8 [ %i.eq, %bb.z ], [ %i.eu, %bb.aa ]
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, i8 noundef signext %.0.i.i.i67)
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ev) ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !27
  %i.ey = getelementptr i8, ptr %i.ex, i64 -24
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds i8, ptr %i.ew, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 240
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i69 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i69, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit68
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !66
  %.not.i1.i.i71 = icmp eq i8 %i.fe, 0
  br i1 %.not.i1.i.i71, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 67
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fc)
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !27
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call noundef signext i8 %i.fj(ptr noundef nonnull align 8 dereferenceable(570) %i.fc, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit73: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i72 = phi i8 [ %i.fg, %bb.ac ], [ %i.fk, %bb.ad ]
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, i8 noundef signext %.0.i.i.i72)
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl) ; 0 uses
  store i32 2, ptr %2, align 4, !tbaa !11
  br label %bb.bo

bb.ae:                                            ; preds = %bb.a
  %i.fn = load ptr, ptr %0, align 8, !tbaa !22    ; 3 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !28  ; 2 uses
  %i.fp = icmp eq i8 %i.fo, 43                    ; 2 uses
  %i.fq = icmp eq i8 %i.fo, 45                    ; 2 uses
  %.132 = or i1 %i.fq, %i.fp
  %spec.store.select = zext i1 %.132 to i32       ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !33
  %i.ft = trunc i64 %i.fs to i32                  ; 2 uses
  %.not39115 = icmp slt i32 %spec.store.select, %i.ft
  br i1 %.not39115, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.fu = or i1 %i.fq, %i.fp                      ; 2 uses
  %umax = zext i1 %i.fu to i64
  %i.fv = zext i1 %i.fu to i32
  %i.fw = add nuw i32 %i.ft, %i.fv
  %i.fx = sub nuw i32 %i.fw, %spec.store.select
  %wide.trip.count = zext i32 %i.fx to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %indvars.iv = phi i64 [ %umax, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.030116 = phi i1 [ false, %.lr.ph.preheader ], [ %.1, %.thread ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !28  ; 3 uses
  %3 = add i8 %i.fz, -48
  %isdigit = icmp ult i8 %3, 10
  br i1 %isdigit, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %.not37 = icmp eq i8 %i.fz, 46
  br i1 %.not37, label %.thread, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph
  br i1 %.030116, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %.not38 = icmp eq i8 %i.fz, 48
  br i1 %.not38, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.af, %bb.ag, %bb.ah
  %.1 = phi i1 [ false, %bb.ag ], [ true, %bb.ah ], [ true, %bb.af ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !117

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !37
  %.not40 = icmp eq ptr %i.gb, null
  br i1 %.not40, label %bb.bb, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !27
  %i.ge = getelementptr i8, ptr %i.gd, i64 -24
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds i8, ptr %i.gc, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 240
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i74 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i74, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %bb.aj
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !66
  %.not.i1.i.i76 = icmp eq i8 %i.gk, 0
  br i1 %.not.i1.i.i76, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 67
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gi)
  %i.gn = load ptr, ptr %i.gi, align 8, !tbaa !27
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = tail call noundef signext i8 %i.gp(ptr noundef nonnull align 8 dereferenceable(570) %i.gi, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78: ; preds = %bb.al, %bb.am
  %.0.i.i.i77 = phi i8 [ %i.gm, %bb.al ], [ %i.gq, %bb.am ]
  %i.gr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i8 noundef signext %.0.i.i.i77)
  %i.gs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gr) ; 0 uses
  %i.gt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.45, i64 noundef 24) ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !39
  %i.gw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, i32 noundef %i.gv) ; 4 uses
  %i.gx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !27
  %i.gz = getelementptr i8, ptr %i.gy, i64 -24
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds i8, ptr %i.gw, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 240
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i79 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i79, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80

bb.an:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !66
  %.not.i1.i.i81 = icmp eq i8 %i.hf, 0
  br i1 %.not.i1.i.i81, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 67
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hd)
  %i.hi = load ptr, ptr %i.hd, align 8, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = tail call noundef signext i8 %i.hk(ptr noundef nonnull align 8 dereferenceable(570) %i.hd, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i82 = phi i8 [ %i.hh, %bb.ao ], [ %i.hl, %bb.ap ]
  %i.hm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i8 noundef signext %.0.i.i.i82)
  %i.hn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) ; 0 uses
  %i.ho = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.47, i64 noundef 4) ; 0 uses
  %i.hp = load ptr, ptr %i.ga, align 8, !tbaa !37 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !38
  %i.hs = add nsw i32 %i.hr, -1
  %i.ht = sext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !71, !noalias !121 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !72, !noalias !121
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !73, !noalias !121
  %i.ia = ptrtoint ptr %i.hv to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = ashr exact i64 %i.ic, 5
  %i.ie = add nsw i64 %i.id, %i.ht                ; 5 uses
  %i.if = icmp sgt i64 %i.ie, -1
  br i1 %i.if, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83
  %i.ig = icmp samesign ult i64 %i.ie, 16
  br i1 %i.ig, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ih = getelementptr inbounds [32 x i8], ptr %i.hv, i64 %i.ht
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43

bb.as:                                            ; preds = %bb.aq
  %i.ii = lshr i64 %i.ie, 4
  br label %bb.au

bb.at:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83
  %i.ij = ashr i64 %i.ie, 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ik = phi i64 [ %i.ii, %bb.as ], [ %i.ij, %bb.at ] ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ik
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !74, !noalias !121
  %i.in = shl nsw i64 %i.ik, 4
  %i.io = sub nsw i64 %i.ie, %i.in
  %i.ip = getelementptr inbounds [32 x i8], ptr %i.im, i64 %i.io
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43: ; preds = %bb.ar, %bb.au
  %storemerge.i.i.i.i42 = phi ptr [ %i.ip, %bb.au ], [ %i.ih, %bb.ar ] ; 2 uses
  %i.iq = load ptr, ptr %storemerge.i.i.i.i42, align 8, !tbaa !22
  %i.ir = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i42, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !33
  %i.it = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.iq, i64 noundef %i.is) ; 3 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !27
  %i.iv = getelementptr i8, ptr %i.iu, i64 -24
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds i8, ptr %i.it, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 240
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i84 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i84, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85

bb.av:                                            ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !66
  %.not.i1.i.i86 = icmp eq i8 %i.jb, 0
  br i1 %.not.i1.i.i86, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 67
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.iz)
  %i.je = load ptr, ptr %i.iz, align 8, !tbaa !27
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = tail call noundef signext i8 %i.jg(ptr noundef nonnull align 8 dereferenceable(570) %i.iz, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88: ; preds = %bb.aw, %bb.ax
  %.0.i.i.i87 = phi i8 [ %i.jd, %bb.aw ], [ %i.jh, %bb.ax ]
  %i.ji = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.it, i8 noundef signext %.0.i.i.i87)
  %i.jj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ji) ; 0 uses
  %i.jk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef nonnull @.str.48, i64 noundef 9) ; 0 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !22
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !33
  %i.jp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gc, ptr noundef %i.jm, i64 noundef %i.jo) ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !27
  %i.jr = getelementptr i8, ptr %i.jq, i64 -24
  %i.js = load i64, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds i8, ptr %i.jp, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 240
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i89 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i89, label %bb.ay, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i90

bb.ay:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i90: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 56
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !66
  %.not.i1.i.i91 = icmp eq i8 %i.jx, 0
  br i1 %.not.i1.i.i91, label %bb.ba, label %bb.az
end_hunk_2
begin_hunk_3_@_ZN2PP4Word11get_int64_tERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(570) %i.ce, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52: ; preds = %bb.p, %bb.q
  %.0.i.i.i51 = phi i8 [ %i.ci, %bb.p ], [ %i.cm, %bb.q ]
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef signext %.0.i.i.i51)
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) ; 0 uses
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.48, i64 noundef 9) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !33
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.cr, i64 noundef %i.ct) ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !27
  %i.cw = getelementptr i8, ptr %i.cv, i64 -24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i53 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i53, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54

bb.r:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !66
  %.not.i1.i.i55 = icmp eq i8 %i.dc, 0
  br i1 %.not.i1.i.i55, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 67
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i54
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.da)
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef signext i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(570) %i.da, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57: ; preds = %bb.s, %bb.t
  %.0.i.i.i56 = phi i8 [ %i.de, %bb.s ], [ %i.di, %bb.t ]
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, i8 noundef signext %.0.i.i.i56)
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit57, %bb.b
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.52, i64 noundef 36) ; 0 uses
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !27
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.dl, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 240
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i58 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i58, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59: ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !66
  %.not.i1.i.i60 = icmp eq i8 %i.du, 0
  br i1 %.not.i1.i.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 67
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i59
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ds)
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !27
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = tail call noundef signext i8 %i.dz(ptr noundef nonnull align 8 dereferenceable(570) %i.ds, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62: ; preds = %bb.w, %bb.x
  %.0.i.i.i61 = phi i8 [ %i.dw, %bb.w ], [ %i.ea, %bb.x ]
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, i8 noundef signext %.0.i.i.i61)
  %i.ec = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eb) ; 0 uses
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull @.str.53, i64 noundef 13) ; 0 uses
  %i.ee = load ptr, ptr %0, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !33
  %i.eh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.ee, i64 noundef %i.eg) ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !27
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 240
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i63 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i63, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64

bb.y:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !66
  %.not.i1.i.i65 = icmp eq i8 %i.ep, 0
  br i1 %.not.i1.i.i65, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 67
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i64
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.en)
  %i.es = load ptr, ptr %i.en, align 8, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call noundef signext i8 %i.eu(ptr noundef nonnull align 8 dereferenceable(570) %i.en, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67: ; preds = %bb.z, %bb.aa
  %.0.i.i.i66 = phi i8 [ %i.er, %bb.z ], [ %i.ev, %bb.aa ]
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i8 noundef signext %.0.i.i.i66)
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew) ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !27
  %i.ez = getelementptr i8, ptr %i.ey, i64 -24
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 240
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i68 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i68, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit67
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !66
  %.not.i1.i.i70 = icmp eq i8 %i.ff, 0
  br i1 %.not.i1.i.i70, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 67
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i69
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fd)
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !27
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = tail call noundef signext i8 %i.fk(ptr noundef nonnull align 8 dereferenceable(570) %i.fd, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit72: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i71 = phi i8 [ %i.fh, %bb.ac ], [ %i.fl, %bb.ad ]
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, i8 noundef signext %.0.i.i.i71)
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fm) ; 0 uses
  store i32 2, ptr %2, align 4, !tbaa !11
  br label %bb.bp

bb.ae:                                            ; preds = %bb.a
  %i.fo = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !28  ; 2 uses
  %i.fq = icmp eq i8 %i.fp, 43                    ; 2 uses
  %i.fr = icmp eq i8 %i.fp, 45                    ; 2 uses
  %.129 = or i1 %i.fr, %i.fq
  %spec.store.select = zext i1 %.129 to i32       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !33
  %i.fu = trunc i64 %i.ft to i32                  ; 2 uses
  %.not38114 = icmp slt i32 %spec.store.select, %i.fu
  br i1 %.not38114, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.ae
  %i.fv = or i1 %i.fr, %i.fq                      ; 2 uses
  %umax = zext i1 %i.fv to i64
  %i.fw = zext i1 %i.fv to i32
  %i.fx = add nuw i32 %i.fu, %i.fw
  %i.fy = sub nuw i32 %i.fx, %spec.store.select
  %wide.trip.count = zext i32 %i.fy to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %indvars.iv = phi i64 [ %umax, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.032115 = phi i1 [ false, %.lr.ph.preheader ], [ %.133, %.thread ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !28  ; 3 uses
  %4 = add i8 %i.ga, -48
  %isdigit = icmp ult i8 %4, 10
  br i1 %isdigit, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %.not36 = icmp eq i8 %i.ga, 46
  br i1 %.not36, label %.thread, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph
  br i1 %.032115, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %.not37 = icmp eq i8 %i.ga, 48
  br i1 %.not37, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.af, %bb.ag, %bb.ah
  %.133 = phi i1 [ false, %bb.ag ], [ true, %bb.ah ], [ true, %bb.af ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !124

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37
  %.not39 = icmp eq ptr %i.gc, null
  br i1 %.not39, label %bb.bb, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !27
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 240
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i73 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i73, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74: ; preds = %bb.aj
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !66
  %.not.i1.i.i75 = icmp eq i8 %i.gl, 0
  br i1 %.not.i1.i.i75, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 67
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gj)
  %i.go = load ptr, ptr %i.gj, align 8, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = tail call noundef signext i8 %i.gq(ptr noundef nonnull align 8 dereferenceable(570) %i.gj, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77: ; preds = %bb.al, %bb.am
  %.0.i.i.i76 = phi i8 [ %i.gn, %bb.al ], [ %i.gr, %bb.am ]
  %i.gs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i8 noundef signext %.0.i.i.i76)
  %i.gt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gs) ; 0 uses
  %i.gu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.45, i64 noundef 24) ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !39
  %i.gx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i32 noundef %i.gw) ; 4 uses
  %i.gy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !27
  %i.ha = getelementptr i8, ptr %i.gz, i64 -24
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds i8, ptr %i.gx, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 240
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i78 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i78, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79

bb.an:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !66
  %.not.i1.i.i80 = icmp eq i8 %i.hg, 0
  br i1 %.not.i1.i.i80, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 67
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.he)
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !27
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = tail call noundef signext i8 %i.hl(ptr noundef nonnull align 8 dereferenceable(570) %i.he, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i81 = phi i8 [ %i.hi, %bb.ao ], [ %i.hm, %bb.ap ]
  %i.hn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, i8 noundef signext %.0.i.i.i81)
  %i.ho = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hn) ; 0 uses
  %i.hp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.47, i64 noundef 4) ; 0 uses
  %i.hq = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !38
  %i.ht = add nsw i32 %i.hs, -1
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !71, !noalias !128 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !72, !noalias !128
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !73, !noalias !128
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 5
  %i.if = add nsw i64 %i.ie, %i.hu                ; 5 uses
  %i.ig = icmp sgt i64 %i.if, -1
  br i1 %i.ig, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82
  %i.ih = icmp samesign ult i64 %i.if, 16
  br i1 %i.ih, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.hw, i64 %i.hu
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42

bb.as:                                            ; preds = %bb.aq
  %i.ij = lshr i64 %i.if, 4
  br label %bb.au

bb.at:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82
  %i.ik = ashr i64 %i.if, 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.il = phi i64 [ %i.ij, %bb.as ], [ %i.ik, %bb.at ] ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !74, !noalias !128
  %i.io = shl nsw i64 %i.il, 4
  %i.ip = sub nsw i64 %i.if, %i.io
  %i.iq = getelementptr inbounds [32 x i8], ptr %i.in, i64 %i.ip
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42: ; preds = %bb.ar, %bb.au
  %storemerge.i.i.i.i41 = phi ptr [ %i.iq, %bb.au ], [ %i.ii, %bb.ar ] ; 2 uses
  %i.ir = load ptr, ptr %storemerge.i.i.i.i41, align 8, !tbaa !22
  %i.is = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i41, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !33
  %i.iu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ir, i64 noundef %i.it) ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds i8, ptr %i.iu, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 240
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i83 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i83, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84

bb.av:                                            ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !66
  %.not.i1.i.i85 = icmp eq i8 %i.jc, 0
  br i1 %.not.i1.i.i85, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 67
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ja)
  %i.jf = load ptr, ptr %i.ja, align 8, !tbaa !27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = tail call noundef signext i8 %i.jh(ptr noundef nonnull align 8 dereferenceable(570) %i.ja, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87: ; preds = %bb.aw, %bb.ax
  %.0.i.i.i86 = phi i8 [ %i.je, %bb.aw ], [ %i.ji, %bb.ax ]
  %i.jj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, i8 noundef signext %.0.i.i.i86)
  %i.jk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jj) ; 0 uses
  %i.jl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.48, i64 noundef 9) ; 0 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !22
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !33
  %i.jq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.jn, i64 noundef %i.jp) ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !27
  %i.js = getelementptr i8, ptr %i.jr, i64 -24
  %i.jt = load i64, ptr %i.js, align 8
  %i.ju = getelementptr inbounds i8, ptr %i.jq, i64 %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 240
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i88 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i88, label %bb.ay, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89

bb.ay:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i89: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.jy = load i8, ptr %i.jx, align 8, !tbaa !66
  %.not.i1.i.i90 = icmp eq i8 %i.jy, 0
  br i1 %.not.i1.i.i90, label %bb.ba, label %bb.az
end_hunk_3
