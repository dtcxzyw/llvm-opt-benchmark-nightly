inline.NumInlined: 1645
inline.NumDeleted: 394
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZN2v88internal8FlagList23SetFlagsFromCommandLineEPiPPcbNS1_11HelpOptionsE:bb.a
    i64 7, label %bb.t
    i64 8, label %bb.u
    i64 9, label %bb.v
    i64 10, label %bb.w
    i64 11, label %bb.x
    i64 12, label %bb.y
    i64 13, label %bb.z
    i64 14, label %bb.aa
    i64 15, label %bb.ab
    i64 16, label %bb.ac
  ]

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.2.i, align 1
  store i8 %i.aj, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ak = load i16, ptr %.2.i, align 1
  store i16 %i.ak, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.p:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) %.2.i, i64 3, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.q:                                             ; preds = %bb.m
  %i.al = load i32, ptr %.2.i, align 1
  store i32 %i.al, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) %.2.i, i64 5, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.s:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) %.2.i, i64 6, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.t:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) %.2.i, i64 7, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.u:                                             ; preds = %bb.m
  %i.am = load i64, ptr %.2.i, align 1
  store i64 %i.am, ptr %i.a, align 16
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.v:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) %.2.i, i64 9, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.w:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) %.2.i, i64 10, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.x:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) %.2.i, i64 11, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.y:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %.2.i, i64 12, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.z:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) %.2.i, i64 13, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.aa:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) %.2.i, i64 14, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.ab:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) %.2.i, i64 15, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.ac:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

bb.ad:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.2.i, i64 %i.ah, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.i

_ZN2v88internal7MemCopyEPvPKvm.exit.i:            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  store i8 0, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  br label %.loopexit230

_ZN2v88internalL13SplitArgumentEPKcPciPS2_S4_Pb.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  br label %bb.cc, !llvm.loop !56

.loopexit230:                                     ; preds = %bb.i, %_ZN2v88internal7MemCopyEPvPKvm.exit.i
  %.2181.ph = phi ptr [ %i.ao, %_ZN2v88internal7MemCopyEPvPKvm.exit.i ], [ null, %bb.i ] ; 3 uses
  %.0178.ph = phi ptr [ %i.a, %_ZN2v88internal7MemCopyEPvPKvm.exit.i ], [ %.2.i, %bb.i ]
  %i.ap = call noundef ptr @_ZN2v88internal14FindFlagByNameEPKc(ptr noundef nonnull %.0178.ph) ; 29 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.loopexit230
  br i1 %2, label %bb.cc, label %bb.af, !llvm.loop !56

bb.af:                                            ; preds = %bb.ae
  %i.ar = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ar, ptr noundef nonnull @.str.1813, ptr noundef nonnull %i.h) #30
  br label %bb.cd

bb.ag:                                            ; preds = %.loopexit230
  %i.as = load i32, ptr %i.ap, align 8            ; 3 uses
  %.not105 = icmp eq i32 %i.as, 0
  br i1 %.not105, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = icmp ne i32 %i.as, 1
  %i.au = icmp eq ptr %.2181.ph, null
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.av = load i32, ptr %0, align 4
  %i.aw = icmp slt i32 %i.e, %i.av
  br i1 %i.aw, label %bb.aj, label %.thread190

bb.aj:                                            ; preds = %bb.ai
  %i.ax = add nsw i32 %.086233, 2
  %i.ay = sext i32 %i.e to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not106 = icmp eq ptr %i.ba, null
  br i1 %.not106, label %.thread190, label %bb.ak

.thread190:                                       ; preds = %bb.ai, %bb.aj
  %i.bb = load ptr, ptr @stderr, align 8
  %i.bc = sext i32 %i.as to i64
  %i.bd = getelementptr [8 x i8], ptr @switch.table._ZN2v88internal8FlagList23SetFlagsFromCommandLineEPiPPcbNS1_11HelpOptionsE, i64 %i.bc
  %switch.gep = getelementptr i8, ptr %i.bd, i64 -16
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.bb, ptr noundef nonnull @.str.1814, ptr noundef nonnull %i.h, ptr noundef nonnull %switch.load) #30
  br label %bb.cd

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ag
  %.1180 = phi ptr [ %.2181.ph, %bb.ag ], [ %i.ba, %bb.aj ], [ %.2181.ph, %bb.ah ] ; 9 uses
  %.288 = phi i32 [ %i.e, %bb.ag ], [ %i.ax, %bb.aj ], [ %i.e, %bb.ah ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr @.str.6, ptr %i.b, align 8
  %i.be = load i32, ptr %i.ap, align 8            ; 3 uses
  switch i32 %i.be, label %.thread275 [
    i32 0, label %bb.al
    i32 1, label %bb.ap
    i32 2, label %bb.at
    i32 3, label %bb.ax
    i32 4, label %bb.bd
    i32 5, label %bb.bj
    i32 6, label %bb.bn
    i32 7, label %bb.bt
  ]

.thread275:                                       ; preds = %bb.ak
  %i.bf = trunc nuw i8 %.0182 to i1
  br i1 %i.bf, label %bb.by, label %bb.bx

bb.al:                                            ; preds = %bb.ak
  %i.bg = trunc nuw i8 %.0182 to i1
  %i.bh = xor i1 %i.bg, true                      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %.0.in.in.i.i.i = select i1 %i.bk, ptr %i.bm, ptr %i.bj
  %.0.in.i.i.i = load i8, ptr %.0.in.in.i.i.i, align 1, !range !9, !noundef !10
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  %i.bn = xor i1 %i.bh, %.0.i.i.i
  %i.bo = call noundef zeroext i1 @_ZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i32 noundef 3, i1 noundef zeroext %i.bn, ptr noundef null), !inline_history !58
  br i1 %i.bo, label %bb.am, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.am:                                            ; preds = %bb.al
  %i.bp = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !range !9, !noundef !10
  %i.br = zext i1 %i.bh to i8                     ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.bq, %i.br
  br i1 %.not.i.i.i, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bs = load atomic i8, ptr @_ZN2v88internalL12flags_frozenE.0 monotonic, align 1, !range !9, !noundef !10
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.ao, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i, !prof !11

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !58
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i: ; preds = %bb.an
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store i8 %i.br, ptr %i.bp, align 1
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.ap:                                            ; preds = %bb.ak
  %.sroa.0.0.insert.ext = zext nneg i8 %.0182 to i16
  %.sroa.0.0.insert.insert = xor i16 %.sroa.0.0.insert.ext, 257 ; 2 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert to i8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %.sroa.0.0.in.i.i.i = select i1 %i.bw, ptr %i.by, ptr %i.bv
  %.sroa.0.0.i.i.i = load i16, ptr %.sroa.0.0.in.i.i.i, align 1 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.i.i.i to i8
  %.sroa.4.0.extract.shift.i.i.mask = and i16 %.sroa.0.0.i.i.i, -256
  %i.bz = icmp ne i16 %.sroa.4.0.extract.shift.i.i.mask, 256
  %i.ca = icmp ne i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.03.0.extract.trunc.i.i
  %i.cb = or i1 %i.bz, %i.ca
  %i.cc = call noundef zeroext i1 @_ZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i32 noundef 3, i1 noundef zeroext %i.cb, ptr noundef null), !inline_history !59
  br i1 %i.cc, label %bb.aq, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cd = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !9, !noundef !10
  %i.cg = icmp eq i8 %i.cf, 0
  %i.ch = load i8, ptr %i.cd, align 1, !range !9
  %i.ci = icmp ne i8 %i.ch, %.sroa.03.0.extract.trunc.i.i
  %i.cj = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %i.cj, label %bb.ar, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load atomic i8, ptr @_ZN2v88internalL12flags_frozenE.0 monotonic, align 1, !range !9, !noundef !10
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.as, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i112, !prof !11

bb.as:                                            ; preds = %bb.ar
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !59
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i112: ; preds = %bb.ar
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store i16 %.sroa.0.0.insert.insert, ptr %i.cd, align 1
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.at:                                            ; preds = %bb.ak
  %i.cm = call i64 @__isoc23_strtol(ptr noundef %.1180, ptr noundef nonnull %i.b, i32 noundef 10) #30
  %i.cn = trunc i64 %i.cm to i32                  ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %.0.in.i.i.i113 = select i1 %i.cq, ptr %i.cs, ptr %i.cp
  %.0.i.i.i114 = load i32, ptr %.0.in.i.i.i113, align 4
  %i.ct = icmp ne i32 %.0.i.i.i114, %i.cn
  %i.cu = call noundef zeroext i1 @_ZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i32 noundef 3, i1 noundef zeroext %i.ct, ptr noundef null), !inline_history !60
  br i1 %i.cu, label %bb.au, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.au:                                            ; preds = %bb.at
  %i.cv = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %.not.i.i.i115 = icmp eq i32 %i.cw, %i.cn
  br i1 %.not.i.i.i115, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cx = load atomic i8, ptr @_ZN2v88internalL12flags_frozenE.0 monotonic, align 1, !range !9, !noundef !10
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.aw, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i116, !prof !11

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !60
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i116: ; preds = %bb.av
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store i32 %i.cn, ptr %i.cv, align 4
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.ax:                                            ; preds = %bb.ak
  %i.cz = tail call ptr @__errno_location() #33   ; 2 uses
  store i32 0, ptr %i.cz, align 4
  %i.da = call i64 @__isoc23_strtoll(ptr noundef %.1180, ptr noundef nonnull %i.b, i32 noundef 10) #30 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 4294967295
  br i1 %i.db, label %switch.lookup, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dc = load i32, ptr %i.cz, align 4
  %.not.i117 = icmp eq i32 %i.dc, 0
  br i1 %.not.i117, label %bb.az, label %switch.lookup

switch.lookup:                                    ; preds = %bb.ay, %bb.ax
  %i.dd = load ptr, ptr @stderr, align 8
  %i.de = load i32, ptr %i.ap, align 8
  %i.df = zext nneg i32 %i.de to i64
  %switch.gep399 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8FlagList9PrintHelpEv, i64 %i.df
  %switch.load400 = load ptr, ptr %switch.gep399, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.dd, ptr noundef nonnull @.str.1910, ptr noundef nonnull %i.h, ptr noundef nonnull %switch.load400, i64 noundef 4294967295) #30
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.az:                                            ; preds = %bb.ay
  %i.dg = trunc nuw i64 %i.da to i32              ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  %.0.in.i.i.i119 = select i1 %i.dj, ptr %i.dl, ptr %i.di
  %.0.i.i.i120 = load i32, ptr %.0.in.i.i.i119, align 4
  %i.dm = icmp ne i32 %.0.i.i.i120, %i.dg
  %i.dn = call noundef zeroext i1 @_ZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i32 noundef 3, i1 noundef zeroext %i.dm, ptr noundef null), !inline_history !61
  br i1 %i.dn, label %bb.ba, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.ba:                                            ; preds = %bb.az
  %i.do = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4
  %.not.i.i.i121 = icmp eq i32 %i.dp, %i.dg
  br i1 %.not.i.i.i121, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dq = load atomic i8, ptr @_ZN2v88internalL12flags_frozenE.0 monotonic, align 1, !range !9, !noundef !10
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.bc, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i122, !prof !11

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !61
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i122: ; preds = %bb.bb
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store i32 %i.dg, ptr %i.do, align 4
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bd:                                            ; preds = %bb.ak
  %i.ds = tail call ptr @__errno_location() #33   ; 2 uses
  store i32 0, ptr %i.ds, align 4
  %i.dt = call i64 @__isoc23_strtoll(ptr noundef %.1180, ptr noundef nonnull %i.b, i32 noundef 10) #30 ; 4 uses
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %switch.lookup401, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dv = load i32, ptr %i.ds, align 4
  %.not.i123 = icmp eq i32 %i.dv, 0
  br i1 %.not.i123, label %bb.bf, label %switch.lookup401

switch.lookup401:                                 ; preds = %bb.be, %bb.bd
  %i.dw = load ptr, ptr @stderr, align 8
  %i.dx = load i32, ptr %i.ap, align 8
  %i.dy = zext nneg i32 %i.dx to i64
  %switch.gep402 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8FlagList9PrintHelpEv, i64 %i.dy
  %switch.load403 = load ptr, ptr %switch.gep402, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.dw, ptr noundef nonnull @.str.1910, ptr noundef nonnull %i.h, ptr noundef nonnull %switch.load403, i64 noundef -1) #30
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bf:                                            ; preds = %bb.be
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  %.0.in.i.i.i127 = select i1 %i.eb, ptr %i.ed, ptr %i.ea
  %.0.i.i.i128 = load i64, ptr %.0.in.i.i.i127, align 8
  %i.ee = icmp ne i64 %.0.i.i.i128, %i.dt
  %i.ef = call noundef zeroext i1 @_ZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i32 noundef 3, i1 noundef zeroext %i.ee, ptr noundef null), !inline_history !62
  br i1 %i.ef, label %bb.bg, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bg:                                            ; preds = %bb.bf
  %i.eg = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8
  %.not.i.i.i129 = icmp eq i64 %i.dt, %i.eh
  br i1 %.not.i.i.i129, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ei = load atomic i8, ptr @_ZN2v88internalL12flags_frozenE.0 monotonic, align 1, !range !9, !noundef !10
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.bi, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i130, !prof !11

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !62
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i130: ; preds = %bb.bh
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store i64 %i.dt, ptr %i.eg, align 8
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bj:                                            ; preds = %bb.ak
  %i.ek = call double @strtod(ptr noundef %.1180, ptr noundef nonnull %i.b) #30 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  %.0.in.i.i.i131 = select i1 %i.en, ptr %i.ep, ptr %i.em
  %.0.i.i.i132 = load double, ptr %.0.in.i.i.i131, align 8
  %i.eq = fcmp une double %.0.i.i.i132, %i.ek
  %i.er = call noundef zeroext i1 @_ZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, i32 noundef 3, i1 noundef zeroext %i.eq, ptr noundef null), !inline_history !63
  br i1 %i.er, label %bb.bk, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bk:                                            ; preds = %bb.bj
  %i.es = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.et = load double, ptr %i.es, align 8
  %i.eu = fcmp une double %i.ek, %i.et
  br i1 %i.eu, label %bb.bl, label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ev = load atomic i8, ptr @_ZN2v88internalL12flags_frozenE.0 monotonic, align 1, !range !9, !noundef !10
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.bm, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i133, !prof !11

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !63
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i133: ; preds = %bb.bl
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store double %i.ek, ptr %i.es, align 8
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bn:                                            ; preds = %bb.ak
  %i.ex = tail call ptr @__errno_location() #33   ; 2 uses
  store i32 0, ptr %i.ex, align 4
  %i.ey = call i64 @__isoc23_strtoll(ptr noundef %.1180, ptr noundef nonnull %i.b, i32 noundef 10) #30 ; 4 uses
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %switch.lookup404, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fa = load i32, ptr %i.ex, align 4
end_hunk_0
