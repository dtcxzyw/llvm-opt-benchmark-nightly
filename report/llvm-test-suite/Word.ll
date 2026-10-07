Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Word?download=true
inline.NumInlined: 775
inline.NumDeleted: 123
begin_hunk_0_@_ZN2PP4Word8set_typeEv:bb.a
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
  %i.di = sext i8 %i.df to i32
  %isdigittmp = add nsw i32 %i.di, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
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
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !33  ; 4 uses
  %i.dk = trunc i64 %i.dj to i32                  ; 3 uses
  %.not59110 = icmp slt i32 %spec.store.select, %i.dk
  br i1 %.not59110, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.bl
  %i.dl = or i1 %i.dh, %i.dg                      ; 2 uses
  %umax = zext i1 %i.dl to i64
  %i.dm = zext i1 %i.dl to i32
  %i.dn = add nuw i32 %i.dk, %i.dm
  %i.do = sub nuw i32 %i.dn, %spec.store.select
  %wide.trip.count = zext i32 %i.do to i64
  br label %.lr.ph

bb.bm:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !80

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bm
  %indvars.iv = phi i64 [ %umax, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bm ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !28
  %i.dr = sext i8 %i.dq to i32
  %isdigittmp57 = add nsw i32 %i.dr, -48
  %isdigit58 = icmp ult i32 %isdigittmp57, 10
  br i1 %isdigit58, label %bb.bm, label %.lr.ph114.preheader

.lr.ph114.preheader:                              ; preds = %.lr.ph
  %wide.trip.count123 = and i64 %i.dj, 4294967295
  br label %.lr.ph114

.critedge:                                        ; preds = %bb.bm, %bb.bl
  store i32 2, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.bn
  %indvars.iv120 = phi i64 [ 0, %.lr.ph114.preheader ], [ %indvars.iv.next121, %bb.bn ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv120
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %.fr105 = freeze i8 %i.dt                       ; 2 uses
  %i.du = sext i8 %.fr105 to i32
  %isdigittmp60 = add nsw i32 %i.du, -48
  %isdigit61 = icmp ult i32 %isdigittmp60, 10
  br i1 %isdigit61, label %bb.bn, label %switch.early.test104

switch.early.test104:                             ; preds = %.lr.ph114
  switch i8 %.fr105, label %bb.bo [
    i8 101, label %bb.bn
    i8 100, label %bb.bn
    i8 69, label %bb.bn
    i8 68, label %bb.bn
    i8 46, label %bb.bn
    i8 45, label %bb.bn
    i8 43, label %bb.bn
  ]

bb.bn:                                            ; preds = %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %switch.early.test104, %.lr.ph114
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %.critedge73, label %.lr.ph114, !llvm.loop !81

bb.bo:                                            ; preds = %switch.early.test104
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

.critedge73:                                      ; preds = %bb.bn
  store i32 3, ptr %i.a, align 8, !tbaa !36
  %i.dv = load i8, ptr %i.de, align 1, !tbaa !28
  switch i8 %i.dv, label %.lr.ph116.preheader [
    i8 101, label %bb.bp
    i8 69, label %bb.bp
    i8 100, label %bb.bp
    i8 68, label %bb.bp
  ]

.lr.ph116.preheader:                              ; preds = %.critedge73
  %wide.trip.count128 = and i64 %i.dj, 4294967295
  br label %.lr.ph116

bb.bp:                                            ; preds = %.critedge73, %.critedge73, %.critedge73, %.critedge73
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !33
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = call noundef zeroext i1 @_ZN2PP4Word13check_after_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nonnull align 8 poison, ptr noundef nonnull %1, i32 noundef 1, i32 noundef %i.dy)
  %i.ea = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bp
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !28
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  br i1 %i.dz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ef = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull @.str.36) ; 0 uses
  br label %bb.bx

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %bb.bs
  %indvars.iv125 = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next126, %bb.bs ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv125
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !28
  switch i8 %i.eh, label %bb.bs [
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
  %i.ei = trunc nuw nsw i64 %indvars.iv125 to i32 ; 2 uses
  %i.ej = and i64 %i.dj, 4294967295               ; 2 uses
  %indvars.iv.next132146 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %.not70147 = icmp samesign ult i64 %indvars.iv.next132146, %i.ej
  br i1 %.not70147, label %.lr.ph149, label %.critedge75

bb.bu:                                            ; preds = %.lr.ph149
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv.next132148, 1 ; 2 uses
  %.not70 = icmp samesign ult i64 %indvars.iv.next132, %i.ej
  br i1 %.not70, label %.lr.ph149, label %.critedge75

.lr.ph149:                                        ; preds = %bb.bt, %bb.bu
  %indvars.iv.next132148 = phi i64 [ %indvars.iv.next132, %bb.bu ], [ %indvars.iv.next132146, %bb.bt ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next132148
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !28
  switch i8 %i.el, label %bb.bu [
    i8 101, label %bb.bv
    i8 69, label %bb.bv
    i8 100, label %bb.bv
    i8 68, label %bb.bv
  ]

bb.bv:                                            ; preds = %.lr.ph149, %.lr.ph149, %.lr.ph149, %.lr.ph149
  store i32 1, ptr %i.a, align 8, !tbaa !36
  br label %bb.bx

.critedge75:                                      ; preds = %bb.bs, %bb.bu, %bb.bt
  %i.em = phi i32 [ %i.ei, %bb.bt ], [ %i.ei, %bb.bu ], [ %i.dk, %bb.bs ]
  %.0 = add nsw i32 %i.em, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.en = call noundef zeroext i1 @_ZN2PP4Word14check_before_eENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr nonnull align 8 poison, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %.0)
  %i.eo = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %.critedge75
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !28
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %.critedge75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  br i1 %i.en, label %bb.bx, label %bb.bw

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
end_hunk_0
begin_hunk_1_@_ZN2PP4Word7get_intERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !66
  %.not.i1.i.i51 = icmp eq i8 %i.cf, 0
  br i1 %.not.i1.i.i51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 67
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit53

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cd)
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
  %i.ga = sext i8 %i.fz to i32
  %isdigittmp = add nsw i32 %i.ga, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %.not37 = icmp eq i8 %i.fz, 46
  br i1 %.not37, label %.thread, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph
  br i1 %.030116, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %.not38 = icmp eq i8 %i.fz, 48
  br i1 %.not38, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.ag, %bb.af, %bb.ah
  %.1 = phi i1 [ true, %bb.af ], [ true, %bb.ah ], [ false, %bb.ag ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !117

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !37
  %.not40 = icmp eq ptr %i.gc, null
  br i1 %.not40, label %bb.bb, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !27
  %i.gf = getelementptr i8, ptr %i.ge, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 240
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i74 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i74, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75: ; preds = %bb.aj
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !66
  %.not.i1.i.i76 = icmp eq i8 %i.gl, 0
  br i1 %.not.i1.i.i76, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 67
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i75
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gj)
  %i.go = load ptr, ptr %i.gj, align 8, !tbaa !27
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = tail call noundef signext i8 %i.gq(ptr noundef nonnull align 8 dereferenceable(570) %i.gj, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78: ; preds = %bb.al, %bb.am
  %.0.i.i.i77 = phi i8 [ %i.gn, %bb.al ], [ %i.gr, %bb.am ]
  %i.gs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, i8 noundef signext %.0.i.i.i77)
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
  %.not.i.i.i79 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i79, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80

bb.an:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !66
  %.not.i1.i.i81 = icmp eq i8 %i.hg, 0
  br i1 %.not.i1.i.i81, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 67
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i80
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.he)
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !27
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = tail call noundef signext i8 %i.hl(ptr noundef nonnull align 8 dereferenceable(570) %i.he, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i82 = phi i8 [ %i.hi, %bb.ao ], [ %i.hm, %bb.ap ]
  %i.hn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, i8 noundef signext %.0.i.i.i82)
  %i.ho = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hn) ; 0 uses
  %i.hp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.47, i64 noundef 4) ; 0 uses
  %i.hq = load ptr, ptr %i.gb, align 8, !tbaa !37 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !38
  %i.ht = add nsw i32 %i.hs, -1
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !71, !noalias !121 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !72, !noalias !121
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !73, !noalias !121
  %i.ib = ptrtoint ptr %i.hw to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = ashr exact i64 %i.id, 5
  %i.if = add nsw i64 %i.ie, %i.hu                ; 5 uses
  %i.ig = icmp sgt i64 %i.if, -1
  br i1 %i.ig, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83
  %i.ih = icmp samesign ult i64 %i.if, 16
  br i1 %i.ih, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ii = getelementptr inbounds [32 x i8], ptr %i.hw, i64 %i.hu
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43

bb.as:                                            ; preds = %bb.aq
  %i.ij = lshr i64 %i.if, 4
  br label %bb.au

bb.at:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83
  %i.ik = ashr i64 %i.if, 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.il = phi i64 [ %i.ij, %bb.as ], [ %i.ik, %bb.at ] ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !74, !noalias !121
  %i.io = shl nsw i64 %i.il, 4
  %i.ip = sub nsw i64 %i.if, %i.io
  %i.iq = getelementptr inbounds [32 x i8], ptr %i.in, i64 %i.ip
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43: ; preds = %bb.ar, %bb.au
  %storemerge.i.i.i.i42 = phi ptr [ %i.iq, %bb.au ], [ %i.ii, %bb.ar ] ; 2 uses
  %i.ir = load ptr, ptr %storemerge.i.i.i.i42, align 8, !tbaa !22
  %i.is = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i42, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !33
  %i.iu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef %i.ir, i64 noundef %i.it) ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !27
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds i8, ptr %i.iu, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 240
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i84 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i84, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85

bb.av:                                            ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit43
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 56
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !66
  %.not.i1.i.i86 = icmp eq i8 %i.jc, 0
  br i1 %.not.i1.i.i86, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 67
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit88

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ja)
  %i.jf = load ptr, ptr %i.ja, align 8, !tbaa !27
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8
  %i.ji = tail call noundef signext i8 %i.jh(ptr noundef nonnull align 8 dereferenceable(570) %i.ja, i8 noundef signext 10), !inline_history !3
end_hunk_1
begin_hunk_2_@_ZN2PP4Word11get_int64_tERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi:bb.a
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i49: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !66
  %.not.i1.i.i50 = icmp eq i8 %i.cg, 0
  br i1 %.not.i1.i.i50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i49
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit52

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i49
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ce)
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
  %i.gb = sext i8 %i.ga to i32
  %isdigittmp = add nsw i32 %i.gb, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph
  %.not36 = icmp eq i8 %i.ga, 46
  br i1 %.not36, label %.thread, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph
  br i1 %.032115, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %.not37 = icmp eq i8 %i.ga, 48
  br i1 %.not37, label %.thread, label %bb.ai

.thread:                                          ; preds = %bb.ag, %bb.af, %bb.ah
  %.133 = phi i1 [ true, %bb.af ], [ true, %bb.ah ], [ false, %bb.ag ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !124

bb.ai:                                            ; preds = %bb.af, %bb.ah
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !37
  %.not39 = icmp eq ptr %i.gd, null
  br i1 %.not39, label %bb.bb, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !27
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 240
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i73 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i73, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74: ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !66
  %.not.i1.i.i75 = icmp eq i8 %i.gm, 0
  br i1 %.not.i1.i.i75, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 67
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gk)
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = tail call noundef signext i8 %i.gr(ptr noundef nonnull align 8 dereferenceable(570) %i.gk, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77: ; preds = %bb.al, %bb.am
  %.0.i.i.i76 = phi i8 [ %i.go, %bb.al ], [ %i.gs, %bb.am ]
  %i.gt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, i8 noundef signext %.0.i.i.i76)
  %i.gu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gt) ; 0 uses
  %i.gv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.45, i64 noundef 24) ; 0 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !39
  %i.gy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, i32 noundef %i.gx) ; 4 uses
  %i.gz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !27
  %i.hb = getelementptr i8, ptr %i.ha, i64 -24
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = getelementptr inbounds i8, ptr %i.gy, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 240
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i78 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i78, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79

bb.an:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit77
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !66
  %.not.i1.i.i80 = icmp eq i8 %i.hh, 0
  br i1 %.not.i1.i.i80, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 67
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i79
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hf)
  %i.hk = load ptr, ptr %i.hf, align 8, !tbaa !27
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = tail call noundef signext i8 %i.hm(ptr noundef nonnull align 8 dereferenceable(570) %i.hf, i8 noundef signext 10), !inline_history !3
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i81 = phi i8 [ %i.hj, %bb.ao ], [ %i.hn, %bb.ap ]
  %i.ho = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, i8 noundef signext %.0.i.i.i81)
  %i.hp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ho) ; 0 uses
  %i.hq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull @.str.47, i64 noundef 4) ; 0 uses
  %i.hr = load ptr, ptr %i.gc, align 8, !tbaa !37 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !38
  %i.hu = add nsw i32 %i.ht, -1
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !71, !noalias !128 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !72, !noalias !128
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !73, !noalias !128
  %i.ic = ptrtoint ptr %i.hx to i64
  %i.id = ptrtoint ptr %i.hz to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = ashr exact i64 %i.ie, 5
  %i.ig = add nsw i64 %i.if, %i.hv                ; 5 uses
  %i.ih = icmp sgt i64 %i.ig, -1
  br i1 %i.ih, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82
  %i.ii = icmp samesign ult i64 %i.ig, 16
  br i1 %i.ii, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ij = getelementptr inbounds [32 x i8], ptr %i.hx, i64 %i.hv
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42

bb.as:                                            ; preds = %bb.aq
  %i.ik = lshr i64 %i.ig, 4
  br label %bb.au

bb.at:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit82
  %i.il = ashr i64 %i.ig, 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.im = phi i64 [ %i.ik, %bb.as ], [ %i.il, %bb.at ] ; 2 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !74, !noalias !128
  %i.ip = shl nsw i64 %i.im, 4
  %i.iq = sub nsw i64 %i.ig, %i.ip
  %i.ir = getelementptr inbounds [32 x i8], ptr %i.io, i64 %i.iq
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42: ; preds = %bb.ar, %bb.au
  %storemerge.i.i.i.i41 = phi ptr [ %i.ir, %bb.au ], [ %i.ij, %bb.ar ] ; 2 uses
  %i.is = load ptr, ptr %storemerge.i.i.i.i41, align 8, !tbaa !22
  %i.it = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i41, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !33
  %i.iv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef %i.is, i64 noundef %i.iu) ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !27
  %i.ix = getelementptr i8, ptr %i.iw, i64 -24
  %i.iy = load i64, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds i8, ptr %i.iv, i64 %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 240
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i83 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i83, label %bb.av, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84

bb.av:                                            ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42
  tail call void @_ZSt16__throw_bad_castv() #20
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit42
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !66
  %.not.i1.i.i85 = icmp eq i8 %i.jd, 0
  br i1 %.not.i1.i.i85, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 67
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !28
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit87

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i84
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jb)
  %i.jg = load ptr, ptr %i.jb, align 8, !tbaa !27
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = tail call noundef signext i8 %i.ji(ptr noundef nonnull align 8 dereferenceable(570) %i.jb, i8 noundef signext 10), !inline_history !3
end_hunk_2
