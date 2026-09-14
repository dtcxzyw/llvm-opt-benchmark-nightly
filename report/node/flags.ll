Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/flags?download=true
inline.NumInlined: 1645
inline.NumDeleted: 394
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZN2v88internal8FlagList23SetFlagsFromCommandLineEPiPPcbNS1_11HelpOptionsE:bb.a
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.bs, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i142, !prof !13

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !67
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i142: ; preds = %bb.br
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store i64 %i.ez, ptr %i.fm, align 8
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

bb.bt:                                            ; preds = %bb.ak
  %.not107 = icmp eq ptr %.1168, null
  br i1 %.not107, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fq = call noundef ptr @_ZN2v88internal6StrDupEPKc(ptr noundef nonnull %.1168) #30
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.fr = phi ptr [ %i.fq, %bb.bu ], [ null, %bb.bt ]
  call void @_ZN2v88internal4Flag16set_string_valueEPKcbNS1_5SetByE(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef %i.fr, i1 noundef zeroext true, i32 noundef 3)
  br label %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit

_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit: ; preds = %switch.lookup373, %bb.bp, %bb.bq, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i142, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i133, %bb.bk, %bb.bj, %switch.lookup370.a, %bb.bf, %bb.bg, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i130, %switch.lookup, %bb.az, %bb.ba, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i122, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i116, %bb.au, %bb.at, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i112, %bb.aq, %bb.ap, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i, %bb.am, %bb.al, %bb.bv
  %.495.ph = phi i32 [ %.091202, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i142 ], [ %.091202, %bb.bq ], [ %.091202, %bb.bp ], [ %.087203, %switch.lookup373 ], [ %.091202, %bb.bk ], [ %.091202, %bb.bj ], [ %.091202, %bb.bg ], [ %.091202, %bb.bf ], [ %.087203, %switch.lookup370.a ], [ %.091202, %bb.ba ], [ %.091202, %bb.az ], [ %.087203, %switch.lookup ], [ %.091202, %bb.au ], [ %.091202, %bb.at ], [ %.091202, %bb.aq ], [ %.091202, %bb.ap ], [ %.091202, %bb.am ], [ %.091202, %bb.al ], [ %.091202, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i133 ], [ %.091202, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i130 ], [ %.091202, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i122 ], [ %.091202, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i116 ], [ %.091202, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i112 ], [ %.091202, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i.i ], [ %.091202, %bb.bv ] ; 3 uses
  %.pr = load i32, ptr %i.ap, align 8
  %.pr.fr = freeze i32 %.pr                       ; 5 uses
  switch i32 %.pr.fr, label %bb.bw [
    i32 0, label %.thread
    i32 1, label %.split
  ]

.thread:                                          ; preds = %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit
  %.not320 = icmp eq ptr %.1168, null
  br i1 %.not320, label %bb.bx, label %_ZN2v88internalL11Type2StringENS0_4Flag8FlagTypeE.exit144.thread

_ZN2v88internalL11Type2StringENS0_4Flag8FlagTypeE.exit144.thread: ; preds = %.thread
  %i.fs = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.fs, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1853) #30
  br label %bb.ca

.split:                                           ; preds = %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit
  %.not319 = icmp eq ptr %.1168, null
  br i1 %.not319, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %_ZN2v88internal4Flag17set_bool_variableEbNS1_5SetByE.exit
  %i.ft = trunc nuw i8 %.0170 to i1
  br i1 %i.ft, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.thread, %.split, %.thread244, %bb.bw
  %.495190242249 = phi i32 [ %.091202, %.thread244 ], [ %.495.ph, %bb.bw ], [ %.495.ph, %.split ], [ %.495.ph, %.thread ]
  %i.fu = phi i32 [ %i.be, %.thread244 ], [ %.pr.fr, %bb.bw ], [ %.pr.fr, %.split ], [ 0, %.thread ]
  %i.fv = phi i1 [ false, %.thread244 ], [ false, %bb.bw ], [ true, %.split ], [ true, %.thread ]
  %i.fw = load ptr, ptr %i.b, align 8
  %i.fx = load i8, ptr %i.fw, align 1
  %.not108 = icmp eq i8 %i.fx, 0
  br i1 %.not108, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %.split, %.thread244, %bb.bw, %bb.bx
  %i.fy = phi i32 [ %i.be, %.thread244 ], [ %.pr.fr, %bb.bw ], [ %i.fu, %bb.bx ], [ %.pr.fr, %.split ]
  %i.fz = phi i1 [ false, %.thread244 ], [ false, %bb.bw ], [ %i.fv, %bb.bx ], [ true, %.split ] ; 8 uses
  %i.ga = load ptr, ptr @stderr, align 8          ; 8 uses
  switch i32 %i.fy, label %bb.bz [
    i32 0, label %_ZN2v88internalL11Type2StringENS0_4Flag8FlagTypeE.exit144
    i32 1, label %.split258
    i32 2, label %.split268
    i32 3, label %.split266
    i32 4, label %.split264
    i32 5, label %.split262
    i32 6, label %.split260
    i32 7, label %.split256
  ]

.split258:                                        ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1854) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

.split268:                                        ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1855) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

.split266:                                        ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1856) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

.split264:                                        ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1857) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

.split262:                                        ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1858) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

.split260:                                        ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1859) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

.split256:                                        ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1860) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

bb.bz:                                            ; preds = %bb.by
  unreachable

_ZN2v88internalL11Type2StringENS0_4Flag8FlagTypeE.exit144: ; preds = %bb.by
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.ga, ptr noundef nonnull @.str.1815, ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1853) #30
  br i1 %i.fz, label %bb.ca, label %.loopexit.jt2

bb.ca:                                            ; preds = %.split268, %.split266, %.split264, %.split262, %.split260, %.split258, %.split256, %_ZN2v88internalL11Type2StringENS0_4Flag8FlagTypeE.exit144.thread, %_ZN2v88internalL11Type2StringENS0_4Flag8FlagTypeE.exit144
  %i.gb = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.gb, ptr noundef nonnull @.str.1816) #30
  br label %.loopexit.jt2

bb.cb:                                            ; preds = %bb.bx
  %i.gc = icmp slt i32 %.087203, %.289
  %or.cond216 = select i1 %2, i1 %i.gc, i1 false
  br i1 %or.cond216, label %.lr.ph.preheader, label %.loopexit.jt3

.lr.ph.preheader:                                 ; preds = %bb.cb
  %i.gd = shl nsw i64 %i.f, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.gd
  %i.ge = xor i32 %.087203, -1
  %i.gf = add i32 %.289, %i.ge
  %i.gg = zext i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.gi, i1 false)
  br label %.loopexit.jt3

.loopexit.jt3:                                    ; preds = %.lr.ph.preheader, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.cc

.loopexit.jt2:                                    ; preds = %.split268, %.split266, %.split264, %.split262, %.split260, %.split258, %.split256, %bb.ca, %_ZN2v88internalL11Type2StringENS0_4Flag8FlagTypeE.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ae, %.loopexit.jt3, %_ZN2v88internalL13SplitArgumentEPKcPciPS2_S4_Pb.exit
  %.7.jt3 = phi i32 [ %.091202, %_ZN2v88internalL13SplitArgumentEPKcPciPS2_S4_Pb.exit ], [ %.495190242249, %.loopexit.jt3 ], [ %.091202, %bb.ae ]
  %.4.jt3 = phi i32 [ %i.e, %_ZN2v88internalL13SplitArgumentEPKcPciPS2_S4_Pb.exit ], [ %.289, %.loopexit.jt3 ], [ %i.e, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.backedge

bb.cd:                                            ; preds = %.thread178, %bb.af, %.loopexit.jt2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.thread191

.backedge:                                        ; preds = %bb.cc, %.lr.ph204
  %.8.jt3 = phi i32 [ %.7.jt3, %bb.cc ], [ %.091202, %.lr.ph204 ] ; 2 uses
  %.5.jt3 = phi i32 [ %.4.jt3, %bb.cc ], [ %i.e, %.lr.ph204 ] ; 2 uses
  %i.gj = load i32, ptr %0, align 4
  %i.gk = icmp slt i32 %.5.jt3, %i.gj
  br i1 %i.gk, label %.lr.ph204, label %.thread191, !llvm.loop !59

.thread191:                                       ; preds = %.backedge, %bb.d, %bb.cd, %bb.a
  %.9 = phi i32 [ 0, %bb.a ], [ %.087203, %bb.cd ], [ %.8.jt3, %.backedge ], [ %.091202, %bb.d ] ; 4 uses
  %i.gl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1776), align 16, !range !11, !noundef !12
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %.thread191
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gn = load ptr, ptr @stdout, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.gn, ptr noundef nonnull @.str.1817, ptr noundef nonnull %4) #30
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void @_ZN2v88internal8FlagList9PrintHelpEv()
  %i.go = trunc nuw i8 %3 to i1
  br i1 %i.go, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  call void @exit(i32 noundef 0) #32
  unreachable

bb.ci:                                            ; preds = %bb.cg, %.thread191
  %i.gp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1778), align 2, !range !11, !noundef !12
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN2v88internal8FlagList21PrintFeatureFlagsJSONEv()
  %i.gr = trunc nuw i8 %3 to i1
  br i1 %i.gr, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @exit(i32 noundef 0) #32
  unreachable

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  br i1 %2, label %.preheader, label %bb.co

.preheader:                                       ; preds = %bb.cl
  %i.gs = load i32, ptr %0, align 4               ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %.lr.ph213, label %._crit_edge214

._crit_edge214:                                   ; preds = %bb.cn, %.preheader
  %.083.lcssa = phi i32 [ 1, %.preheader ], [ %.1, %bb.cn ]
  store i32 %.083.lcssa, ptr %0, align 4
  br label %.loopexit272

.lr.ph213:                                        ; preds = %.preheader, %bb.cn
  %i.gu = phi i32 [ %i.ha, %bb.cn ], [ %i.gs, %.preheader ]
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %bb.cn ], [ 1, %.preheader ] ; 2 uses
  %.083211 = phi i32 [ %.1, %bb.cn ], [ 1, %.preheader ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv220
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %.not111 = icmp eq ptr %i.gw, null
  br i1 %.not111, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph213
  %i.gx = add nsw i32 %.083211, 1
  %i.gy = sext i32 %.083211 to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gy
  store ptr %i.gw, ptr %i.gz, align 8
  %.pre = load i32, ptr %0, align 4
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph213, %bb.cm
  %i.ha = phi i32 [ %.pre, %bb.cm ], [ %i.gu, %.lr.ph213 ] ; 2 uses
  %.1 = phi i32 [ %i.gx, %bb.cm ], [ %.083211, %.lr.ph213 ] ; 2 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next221, %i.hb
  br i1 %i.hc, label %.lr.ph213, label %._crit_edge214, !llvm.loop !68

bb.co:                                            ; preds = %bb.cl
  %cond = icmp eq i32 %.9, 0
  br i1 %cond, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hd = add nsw i32 %.9, 1                      ; 3 uses
  %i.he = load i32, ptr %0, align 4
  %i.hf = icmp slt i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.cq, label %.thread195

bb.cq:                                            ; preds = %bb.cp
  %i.hg = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.hg, ptr noundef nonnull @.str.1818) #30
  %i.hh = load i32, ptr %0, align 4
  %i.hi = icmp slt i32 %i.hd, %i.hh
  br i1 %i.hi, label %.lr.ph210.preheader, label %.thread270

.lr.ph210.preheader:                              ; preds = %bb.cq
  %i.hj = sext i32 %i.hd to i64
  br label %.lr.ph210

.thread270:                                       ; preds = %.lr.ph210, %bb.cq
  %i.hk = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.hk, ptr noundef nonnull @.str.1820) #30
  br label %.loopexit272

.lr.ph210:                                        ; preds = %.lr.ph210.preheader, %.lr.ph210
  %indvars.iv = phi i64 [ %i.hj, %.lr.ph210.preheader ], [ %indvars.iv.next, %.lr.ph210 ] ; 2 uses
  %i.hl = load ptr, ptr @stderr, align 8
  %i.hm = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.hn = load ptr, ptr %i.hm, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.hl, ptr noundef nonnull @.str.1819, ptr noundef %i.hn) #30
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ho = load i32, ptr %0, align 4
  %i.hp = sext i32 %i.ho to i64
  %i.hq = icmp slt i64 %indvars.iv.next, %i.hp
  br i1 %i.hq, label %.lr.ph210, label %.thread270, !llvm.loop !69

.loopexit272:                                     ; preds = %.thread270, %._crit_edge214
  %.not110 = icmp eq i32 %.9, 0
  br i1 %.not110, label %bb.cr, label %.thread195

.thread195:                                       ; preds = %bb.cp, %.loopexit272
  %i.hr = load ptr, ptr @stderr, align 8
  call void (ptr, ptr, ...) @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef %i.hr, ptr noundef nonnull @.str.1821) #30
  br label %bb.cr

bb.cr:                                            ; preds = %bb.co, %.thread195, %.loopexit272
  ret i32 %.9
}

declare void @_ZN2v88internal6PrintFEP8_IO_FILEPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZN2v88internal6StrDupEPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8FlagList9PrintHelpEv() local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %0 = alloca %"class.v8::internal::StdoutStream", align 8 ; 32 uses
  %i.b = load i8, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN2v88internal11CpuFeatures5ProbeEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZN2v88internal11CpuFeatures12initialized_E, align 1
  tail call void @_ZN2v88internal11CpuFeatures9ProbeImplEb(i1 noundef zeroext false) #30
  br label %_ZN2v88internal11CpuFeatures5ProbeEb.exit

_ZN2v88internal11CpuFeatures5ProbeEb.exit:        ; preds = %bb.a, %bb.b
  tail call void @_ZN2v88internal11CpuFeatures11PrintTargetEv() #30
  tail call void @_ZN2v88internal11CpuFeatures13PrintFeaturesEv() #30
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.i) #30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #30 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #30
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1822, i64 noundef 300) #30 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1823, i64 noundef 9) #30 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.d, align 8
  %i.n = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #30, !inline_history !15
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.c, %bb.d
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.d, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #30, !inline_history !15
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #30, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  ret void

bb.e:                                             ; preds = %_ZN2v88internal11CpuFeatures5ProbeEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.0.idx10 = phi i64 [ 0, %_ZN2v88internal11CpuFeatures5ProbeEb.exit ], [ %.0.add, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @_ZN2v88internal5flagsE, i64 %.0.idx10 ; 4 uses
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1824, i64 noundef 2) #30 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 33                      ; 3 uses
  %.idx.i = zext i1 %i.u to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i ; 2 uses
  %i.w = select i1 %i.u, ptr @.str.11, ptr @.str.12
  %i.x = select i1 %i.u, i64 5, i64 2
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.w, i64 noundef %i.x) #30 ; 0 uses
  %i.z = load i8, ptr %i.v, align 1               ; 2 uses
  %.not7.i = icmp eq i8 %i.z, 0
  br i1 %.not7.i, label %_ZN2v88internallsERSoNS0_8FlagNameE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.aa = phi i8 [ %i.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.z, %bb.e ] ; 2 uses
  %.08.i = phi ptr [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.v, %bb.e ]
  %i.ab = icmp eq i8 %i.aa, 95
  %i.ac = select i1 %i.ab, i8 45, i8 %i.aa        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ac, ptr %i.a, align 1
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #30 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.ac) #30 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %_ZN2v88internallsERSoNS0_8FlagNameE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN2v88internallsERSoNS0_8FlagNameE.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %bb.e
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1825, i64 noundef 2) #30 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.not.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2v88internallsERSoNS0_8FlagNameE.exit
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = or i32 %i.av, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw) #30
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.i:                                             ; preds = %_ZN2v88internallsERSoNS0_8FlagNameE.exit
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #30
  %i.ay = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ap, i64 noundef %i.ax) #30 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.h, %bb.i
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1826, i64 noundef 2) #30 ; 0 uses
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1827, i64 noundef 14) #30 ; 0 uses
  %i.bb = load i32, ptr %.0.ptr, align 8
  %i.bc = zext nneg i32 %i.bb to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8FlagList9PrintHelpEv, i64 %i.bc
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #30
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %switch.load, i64 noundef %i.bd) #30 ; 0 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1828, i64 noundef 11) #30 ; 0 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_4FlagE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(56) %.0.ptr) ; 0 uses
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1820, i64 noundef 1) #30 ; 0 uses
  %.0.add = add nuw nsw i64 %.0.idx10, 56         ; 2 uses
  %.not = icmp eq i64 %.0.add, 50400
  br i1 %.not, label %bb.c, label %bb.e
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8FlagList21PrintFeatureFlagsJSONEv() local_unnamed_addr #5 align 2 {
_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit24:
  %0 = alloca %"class.v8::internal::StdoutStream", align 8 ; 25 uses
  %1 = alloca %"class.std::vector", align 8       ; 6 uses
  %2 = alloca %"class.std::vector", align 8       ; 6 uses
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %4 = alloca %"class.std::vector", align 8       ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 6 uses
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %8 = alloca %"class.std::vector", align 8       ; 13 uses
  %9 = alloca %"class.std::vector", align 8       ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
end_hunk_0
