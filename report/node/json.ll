Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/json?download=true
inline.NumInlined: 1294
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE12DecodeStringEPKhS5_PSt6vectorItSaItEE:bb.a
  br i1 %i.dn, label %bb.ab, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i60

bb.ab:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i57
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dl, ptr align 2 %i.da, i64 %i.dd, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i60

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i60: ; preds = %bb.ab, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i57
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 2 ; 2 uses
  %.not.i17.i.i.i61 = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i62, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i60
  %i.dp = load ptr, ptr %i.g, align 8
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dr) #18
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i62

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i62: ; preds = %bb.ac, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i60
  store ptr %i.dl, ptr %2, align 8
  store ptr %i.do, ptr %i.ag, align 8
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.dj ; 2 uses
  store ptr %i.ds, ptr %i.g, align 8
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit63

_ZNSt6vectorItSaItEE9push_backEOt.exit63:         ; preds = %bb.y, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i62
  %i.dt = phi ptr [ %.pre, %bb.y ], [ %i.ds, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i62 ] ; 2 uses
  %i.du = phi ptr [ %i.cz, %bb.y ], [ %i.do, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i62 ] ; 2 uses
  %i.dv = trunc i32 %.lcssa to i16
  %i.dw = and i16 %i.dv, 1023
  %i.dx = or disjoint i16 %i.dw, -9216            ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.du, %i.dt
  br i1 %.not.i.i64, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit63
  store i16 %i.dx, ptr %i.du, align 2
  %i.dy = load ptr, ptr %i.ag, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store ptr %i.dz, ptr %i.ag, align 8
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit, !llvm.loop !144

bb.ae:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit63
  %i.ea = load ptr, ptr %2, align 8               ; 4 uses
  %i.eb = ptrtoint ptr %i.dt to i64
  %i.ec = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 5 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775806
  br i1 %i.ee, label %bb.af, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i65

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.ae
  %i.ef = ashr exact i64 %i.ed, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i66 = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add i64 %.sroa.speculated.i.i.i.i66, %i.ef ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 4611686018427387903)
  %i.ej = select i1 %i.eh, i64 4611686018427387903, i64 %i.ei ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.ej, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.ek = shl nuw nsw i64 %i.ej, 1
  %i.el = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #15 ; 4 uses
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.ed ; 2 uses
  store i16 %i.dx, ptr %i.em, align 2
  %i.en = icmp sgt i64 %i.ed, 0
  br i1 %i.en, label %bb.ag, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i68

bb.ag:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i65
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.el, ptr align 2 %i.ea, i64 %i.ed, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i68

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i68: ; preds = %bb.ag, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i65
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %.not.i17.i.i.i69 = icmp eq ptr %i.ea, null
  br i1 %.not.i17.i.i.i69, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i68
  %i.ep = load ptr, ptr %i.g, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.er) #18
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70: ; preds = %bb.ah, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i68
  store ptr %i.el, ptr %2, align 8
  store ptr %i.eo, ptr %i.ag, align 8
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.es, ptr %i.g, align 8
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit, !llvm.loop !144

bb.ai:                                            ; preds = %bb.h
  %.not = icmp eq i8 %i.ai, 92
  br i1 %.not, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.eu = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 %i.aj, ptr %i.et, align 2
  %i.ev = load ptr, ptr %i.ag, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  store ptr %i.ew, ptr %i.ag, align 8
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit, !llvm.loop !144

bb.al:                                            ; preds = %bb.aj
  %i.ex = load ptr, ptr %2, align 8               ; 4 uses
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 5 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775806
  br i1 %i.fb, label %bb.am, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.fc = ashr exact i64 %i.fa, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add i64 %.sroa.speculated.i.i.i, %i.fc  ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = tail call i64 @llvm.umin.i64(i64 %i.fd, i64 4611686018427387903)
  %i.fg = select i1 %i.fe, i64 4611686018427387903, i64 %i.ff ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fh = shl nuw nsw i64 %i.fg, 1
  %i.fi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #15 ; 4 uses
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 %i.fa ; 2 uses
  store i16 %i.aj, ptr %i.fj, align 2
  %i.fk = icmp sgt i64 %i.fa, 0
  br i1 %i.fk, label %bb.an, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.an:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.fi, ptr align 2 %i.ex, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.an, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %.not.i17.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.fm = load ptr, ptr %i.g, align 8
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %i.ez
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fo) #18
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.ao, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.fi, ptr %2, align 8
  store ptr %i.fl, ptr %i.ag, align 8
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fp, ptr %i.g, align 8
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit, !llvm.loop !144

bb.ap:                                            ; preds = %bb.ai
  %i.fq = icmp eq ptr %i.ah, %1
  br i1 %i.fq, label %_ZNSt6vectorItSaItEE9push_backEOt.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fr = getelementptr inbounds nuw i8, ptr %.044112, i64 2 ; 10 uses
  %i.fs = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.ft = zext i8 %i.fs to i16                    ; 3 uses
  switch i8 %i.fs, label %_ZNSt6vectorItSaItEE9push_backEOt.exit.thread [
    i8 117, label %bb.ax
    i8 34, label %bb.bk
    i8 47, label %bb.bk
    i8 92, label %bb.bk
    i8 98, label %bb.ar
    i8 102, label %bb.as
    i8 110, label %bb.at
    i8 114, label %bb.au
    i8 116, label %bb.av
    i8 118, label %bb.aw
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %bb.bk

bb.as:                                            ; preds = %bb.aq
  br label %bb.bk

bb.at:                                            ; preds = %bb.aq
  br label %bb.bk

bb.au:                                            ; preds = %bb.aq
  br label %bb.bk

bb.av:                                            ; preds = %bb.aq
  br label %bb.bk

bb.aw:                                            ; preds = %bb.aq
  br label %bb.bk

bb.ax:                                            ; preds = %bb.aq
  %i.fu = load i8, ptr %i.fr, align 1             ; 3 uses
  %i.fv = add i8 %i.fu, -48
  %or.cond.i = icmp ult i8 %i.fv, 10
  br i1 %or.cond.i, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fw = add i8 %i.fu, -65                       ; 2 uses
  %or.cond5.i = icmp ult i8 %i.fw, 38
  br i1 %or.cond5.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh) #17
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %switch.maskindex = zext nneg i8 %i.fw to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit, label %bb.az

_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit: ; preds = %bb.ba, %bb.ax
  %.sink.i = phi i16 [ 0, %bb.ax ], [ 9, %bb.ba ]
  %i.fx = zext nneg i8 %i.fu to i16
  %i.fy = add nuw nsw i16 %.sink.i, %i.fx
  %i.fz = shl i16 %i.fy, 12
  %i.ga = getelementptr inbounds nuw i8, ptr %.044112, i64 3
  %i.gb = load i8, ptr %i.ga, align 1             ; 4 uses
  %i.gc = add i8 %i.gb, -48
  %or.cond.i72 = icmp ult i8 %i.gc, 10
  br i1 %or.cond.i72, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit76, label %bb.bb

bb.bb:                                            ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit
  %i.gd = add i8 %i.gb, -65
  %or.cond5.i73 = icmp ult i8 %i.gd, 6
  br i1 %or.cond5.i73, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit76, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = add i8 %i.gb, -97
  %or.cond8.i74 = icmp ult i8 %i.ge, 6
  br i1 %or.cond8.i74, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit76, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh) #17
  unreachable

_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit76: ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit, %bb.bb, %bb.bc
  %.sink.i75 = phi i16 [ 201, %bb.bb ], [ 208, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit ], [ 169, %bb.bc ]
  %i.gf = zext nneg i8 %i.gb to i16
  %i.gg = add nuw nsw i16 %.sink.i75, %i.gf
  %i.gh = shl i16 %i.gg, 8
  %i.gi = or i16 %i.gh, %i.fz
  %i.gj = getelementptr inbounds nuw i8, ptr %.044112, i64 4
  %i.gk = load i8, ptr %i.gj, align 1             ; 4 uses
  %i.gl = add i8 %i.gk, -48
  %or.cond.i77 = icmp ult i8 %i.gl, 10
  br i1 %or.cond.i77, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit81, label %bb.be

bb.be:                                            ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit76
  %i.gm = add i8 %i.gk, -65
  %or.cond5.i78 = icmp ult i8 %i.gm, 6
  br i1 %or.cond5.i78, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit81, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gn = add i8 %i.gk, -97
  %or.cond8.i79 = icmp ult i8 %i.gn, 6
  br i1 %or.cond8.i79, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit81, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh) #17
  unreachable

_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit81: ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit76, %bb.be, %bb.bf
  %.sink.i80 = phi i16 [ 4041, %bb.be ], [ 4048, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit76 ], [ 4009, %bb.bf ]
  %i.go = zext nneg i8 %i.gk to i16
  %i.gp = add nuw nsw i16 %.sink.i80, %i.go
  %i.gq = shl i16 %i.gp, 4
  %i.gr = or i16 %i.gi, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %.044112, i64 5
  %i.gt = load i8, ptr %i.gs, align 1             ; 4 uses
  %i.gu = add i8 %i.gt, -48
  %or.cond.i82 = icmp ult i8 %i.gu, 10
  br i1 %or.cond.i82, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit86, label %bb.bh

bb.bh:                                            ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit81
  %i.gv = add i8 %i.gt, -65
  %or.cond5.i83 = icmp ult i8 %i.gv, 6
  br i1 %or.cond5.i83, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit86, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gw = add i8 %i.gt, -97
  %or.cond8.i84 = icmp ult i8 %i.gw, 6
  br i1 %or.cond8.i84, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit86, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh) #17
  unreachable

_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit86: ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit81, %bb.bh, %bb.bi
  %.sink.i85 = phi i16 [ -55, %bb.bh ], [ -48, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit81 ], [ -87, %bb.bi ]
  %i.gx = zext nneg i8 %i.gt to i16
  %i.gy = add nsw i16 %.sink.i85, %i.gx
  %i.gz = or i16 %i.gr, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %.044112, i64 6
  br label %bb.bk

bb.bk:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit86, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.0 = phi i16 [ %i.gz, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit86 ], [ %i.ft, %bb.aq ], [ %i.ft, %bb.aq ], [ %i.ft, %bb.aq ], [ 8, %bb.ar ], [ 12, %bb.as ], [ 10, %bb.at ], [ 13, %bb.au ], [ 9, %bb.av ], [ 11, %bb.aw ] ; 2 uses
  %.347 = phi ptr [ %i.ha, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserIhE8HexToIntEh.exit86 ], [ %i.fr, %bb.aq ], [ %i.fr, %bb.aq ], [ %i.fr, %bb.aq ], [ %i.fr, %bb.ar ], [ %i.fr, %bb.as ], [ %i.fr, %bb.at ], [ %i.fr, %bb.au ], [ %i.fr, %bb.av ], [ %i.fr, %bb.aw ] ; 2 uses
  %i.hb = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.hc = load ptr, ptr %i.g, align 8
  %.not.i87 = icmp eq ptr %i.hb, %i.hc
  br i1 %.not.i87, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i16 %.0, ptr %i.hb, align 2
  %i.hd = load ptr, ptr %i.ag, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  store ptr %i.he, ptr %i.ag, align 8
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.bm:                                            ; preds = %bb.bk
  %i.hf = load ptr, ptr %2, align 8               ; 4 uses
  %i.hg = ptrtoint ptr %i.hb to i64
  %i.hh = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hi = sub i64 %i.hg, %i.hh                    ; 5 uses
  %i.hj = icmp eq i64 %i.hi, 9223372036854775806
  br i1 %i.hj, label %bb.bn, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i88

bb.bn:                                            ; preds = %bb.bm
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i88: ; preds = %bb.bm
  %i.hk = ashr exact i64 %i.hi, 1                 ; 3 uses
  %.sroa.speculated.i.i.i89 = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 1)
  %i.hl = add i64 %.sroa.speculated.i.i.i89, %i.hk ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.hk
  %i.hn = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 4611686018427387903)
  %i.ho = select i1 %i.hm, i64 4611686018427387903, i64 %i.hn ; 3 uses
  %.not.i.i.i90 = icmp ne i64 %i.ho, 0
  tail call void @llvm.assume(i1 %.not.i.i.i90)
  %i.hp = shl nuw nsw i64 %i.ho, 1
  %i.hq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #15 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 %i.hi ; 2 uses
  store i16 %.0, ptr %i.hr, align 2
  %i.hs = icmp sgt i64 %i.hi, 0
  br i1 %i.hs, label %bb.bo, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i91

bb.bo:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.hq, ptr align 2 %i.hf, i64 %i.hi, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i91

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i91: ; preds = %bb.bo, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i88
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %.not.i17.i.i92 = icmp eq ptr %i.hf, null
  br i1 %.not.i17.i.i92, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i93, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i91
  %i.hu = load ptr, ptr %i.g, align 8
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.hv, %i.hh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef %i.hw) #18
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i93

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i93: ; preds = %bb.bp, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i91
  store ptr %i.hq, ptr %2, align 8
  store ptr %i.ht, ptr %i.ag, align 8
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.ho
  store ptr %i.hx, ptr %i.g, align 8
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i93, %bb.bl, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.ak, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70, %bb.ad, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.s
  %.4 = phi ptr [ %i.ah, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %scevgep126, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i70 ], [ %scevgep126, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %.347, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i93 ], [ %scevgep126, %bb.s ], [ %scevgep126, %bb.ad ], [ %i.ah, %bb.ak ], [ %.347, %bb.bl ] ; 2 uses
  %i.hy = icmp ult ptr %.4, %1
  br i1 %i.hy, label %bb.h, label %_ZNSt6vectorItSaItEE9push_backEOt.exit.thread

_ZNSt6vectorItSaItEE9push_backEOt.exit.thread:    ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit, %bb.ap, %bb.aq, %bb.k, %bb.l, %bb.p, %.preheader.preheader, %.preheader.1, %.preheader.2, %_ZNSt6vectorItSaItEE7reserveEm.exit, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %_ZNSt6vectorItSaItEE7reserveEm.exit ], [ false, %.preheader.preheader ], [ false, %.preheader.2 ], [ false, %.preheader.1 ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.aq ], [ false, %bb.ap ], [ true, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ false, %bb.p ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN5crdtp4json8platform6StrToDEPKcPd(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE10ParseValueEPKtS5_PS5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = alloca ptr, align 8                      ; 24 uses
  %i.b = alloca ptr, align 8                      ; 24 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %6 = alloca %"class.std::vector.23", align 8    ; 8 uses
  %7 = alloca %"class.std::vector.23", align 8    ; 9 uses
  %i.d = icmp sgt i32 %4, 300
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE11HandleErrorENS_5ErrorEPKt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %0, align 8
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 1
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 2, i64 %i.n) #16, !inline_history !145
  store i8 1, ptr %i.e, align 8
  br label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE11HandleErrorENS_5ErrorEPKt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  %i.r = call fastcc noundef i32 @_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE10ParseTokenEPKtS5_PS5_S6_(ptr noundef %1, ptr noundef %2, ptr noundef %i.a, ptr noundef %i.b)
  switch i32 %i.r, label %bb.bl [
    i32 12, label %bb.e
    i32 11, label %bb.g
    i32 8, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 5, label %bb.l
    i32 4, label %bb.af
    i32 2, label %bb.ak
    i32 0, label %bb.as
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !17, !noundef !18
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE11HandleErrorENS_5ErrorEPKt.exit61, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %0, align 8
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = load ptr, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 3, i64 %i.ac) #16, !inline_history !145
  store i8 1, ptr %i.s, align 8
  br label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE11HandleErrorENS_5ErrorEPKt.exit61

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !range !17, !noundef !18
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE11HandleErrorENS_5ErrorEPKt.exit61, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = load ptr, ptr %0, align 8
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 1
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
end_hunk_0
begin_hunk_1_@_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE10ParseTokenEPKtS5_PS5_S6_:bb.a
_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE13ReadHexDigitsEPKtS5_PS5_i.exit.i: ; preds = %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %switch.early.test.i21.3.i, %.preheader.i16.3.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %switch.early.test.i.1.i, %.preheader.i.1.i, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.an
  %.227.i = phi ptr [ %scevgep.i.i, %.preheader.i.1.i ], [ %i.di, %bb.an ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %i.dl, %bb.ap ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i.i, %switch.early.test.i.1.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %switch.early.test.i21.3.i ], [ %scevgep.i15.i, %.preheader.i16.3.i ] ; 2 uses
  %i.ej = icmp ult ptr %.227.i, %1
  br i1 %i.ej, label %bb.an, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit

_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE16ParseStringTokenEPKtS5_PS5_.exit: ; preds = %bb.an
  store ptr %i.di, ptr %3, align 8
  br label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit

_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit: ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE13ReadHexDigitsEPKtS5_PS5_i.exit.i, %bb.ap, %bb.ao, %bb.aq, %bb.ar, %switch.early.test.i21.i, %switch.early.test.i21.1.i, %switch.early.test.i21.2.i, %switch.early.test.i21.3.i, %switch.early.test.i.i, %switch.early.test.i.1.i, %bb.am, %.critedge.thread37.i.i, %.critedge.i.i, %bb.z, %.critedge.i47.i, %bb.aj, %bb.ak, %bb.ah, %bb.aa, %.critedge.i35.i, %bb.ad, %bb.i, %.critedge.i, %.critedge.i38, %.critedge.i50, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE16ParseStringTokenEPKtS5_PS5_.exit, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE16ParseNumberTokenEPKtS5_PS5_.exit, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit59.thread, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit47.thread, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit.thread, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE25SkipWhitespaceAndCommentsEPKtS5_PS5_.exit.thread, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE25SkipWhitespaceAndCommentsEPKtS5_PS5_.exit, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0 = phi i32 [ 5, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE16ParseNumberTokenEPKtS5_PS5_.exit ], [ 12, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE25SkipWhitespaceAndCommentsEPKtS5_PS5_.exit.thread ], [ 12, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE25SkipWhitespaceAndCommentsEPKtS5_PS5_.exit ], [ 8, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit.thread ], [ 6, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit47.thread ], [ 2, %bb.t ], [ 3, %bb.u ], [ 9, %bb.v ], [ 0, %bb.w ], [ 1, %bb.x ], [ 10, %bb.y ], [ 7, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE15ParseConstTokenEPKtS5_PS5_PKc.exit59.thread ], [ 4, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE16ParseStringTokenEPKtS5_PS5_.exit ], [ 11, %.critedge.thread37.i.i ], [ 11, %bb.i ], [ 11, %.critedge.i50 ], [ 11, %.critedge.i38 ], [ 11, %.critedge.i ], [ 11, %bb.ad ], [ 11, %.critedge.i35.i ], [ 11, %bb.aa ], [ 11, %bb.ah ], [ 11, %bb.ak ], [ 11, %bb.aj ], [ 11, %.critedge.i47.i ], [ 11, %bb.z ], [ 11, %.critedge.i.i ], [ 11, %bb.am ], [ 11, %switch.early.test.i.1.i ], [ 11, %switch.early.test.i.i ], [ 11, %switch.early.test.i21.3.i ], [ 11, %switch.early.test.i21.2.i ], [ 11, %switch.early.test.i21.1.i ], [ 11, %switch.early.test.i21.i ], [ 11, %bb.ar ], [ 11, %bb.aq ], [ 11, %bb.ao ], [ 11, %bb.ap ], [ 11, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE13ReadHexDigitsEPKtS5_PS5_i.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE12DecodeStringEPKtS5_PSt6vectorItSaItEE(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt6vectorItSaItEE9push_backERKt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt ptr %0, %1
  br i1 %i.b, label %_ZNSt6vectorItSaItEE9push_backERKt.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %i.f = icmp ugt i64 %i.e, 9223372036854775806
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %2, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.k
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 4 uses
  %i.s = load ptr, ptr %2, align 8                ; 4 uses
  %i.t = load ptr, ptr %i.n, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.r, ptr align 2 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.f, %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aa) #18
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i: ; preds = %bb.g, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.r, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store ptr %i.ab, ptr %i.n, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.e
  store ptr %i.ac, ptr %i.g, align 8
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %bb.e, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i
  %i.ad = icmp ult ptr %0, %1
  br i1 %i.ad, label %.lr.ph, label %_ZNSt6vectorItSaItEE9push_backERKt.exit.thread

.lr.ph:                                           ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %.02259 = phi ptr [ %0, %.lr.ph ], [ %.224, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02259, i64 2 ; 4 uses
  %i.ag = load i16, ptr %.02259, align 2          ; 3 uses
  %.not = icmp eq i16 %i.ag, 92
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ai = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 %i.ag, ptr %i.ah, align 2
  %i.aj = load ptr, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.ak, ptr %i.ae, align 8
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit, !llvm.loop !150

bb.k:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %2, align 8               ; 4 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775806
  br i1 %i.ap, label %bb.l, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.aq = ashr exact i64 %i.ao, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add i64 %.sroa.speculated.i.i.i, %i.aq  ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 4611686018427387903)
  %i.au = select i1 %i.as, i64 4611686018427387903, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 1
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #15 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i16 %i.ag, ptr %i.ax, align 2
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.m, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aw, ptr align 2 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.ba = load ptr, ptr %i.g, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bc) #18
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %2, align 8
  store ptr %i.az, ptr %i.ae, align 8
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bd, ptr %i.g, align 8
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit, !llvm.loop !150

bb.o:                                             ; preds = %bb.h
  %i.be = icmp eq ptr %i.af, %1
  br i1 %i.be, label %_ZNSt6vectorItSaItEE9push_backERKt.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.02259, i64 4 ; 10 uses
  %i.bg = load i16, ptr %i.af, align 2            ; 4 uses
  switch i16 %i.bg, label %_ZNSt6vectorItSaItEE9push_backERKt.exit.thread [
    i16 117, label %bb.w
    i16 34, label %bb.aj
    i16 47, label %bb.aj
    i16 92, label %bb.aj
    i16 98, label %bb.q
    i16 102, label %bb.r
    i16 110, label %bb.s
    i16 114, label %bb.t
    i16 116, label %bb.u
    i16 118, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.aj

bb.r:                                             ; preds = %bb.p
  br label %bb.aj

bb.s:                                             ; preds = %bb.p
  br label %bb.aj

bb.t:                                             ; preds = %bb.p
  br label %bb.aj

bb.u:                                             ; preds = %bb.p
  br label %bb.aj

bb.v:                                             ; preds = %bb.p
  br label %bb.aj

bb.w:                                             ; preds = %bb.p
  %i.bh = load i16, ptr %i.bf, align 2            ; 3 uses
  %i.bi = add i16 %i.bh, -48
  %or.cond.i = icmp ult i16 %i.bi, 10
  br i1 %or.cond.i, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = add i16 %i.bh, -65                      ; 2 uses
  %or.cond5.i = icmp ult i16 %i.bj, 38
  br i1 %or.cond5.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %switch.maskindex = zext nneg i16 %i.bj to i64
  %switch.shifted = lshr i64 270582939711, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit, label %bb.y

_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit: ; preds = %bb.z, %bb.w
  %.sink.i = phi i16 [ 0, %bb.w ], [ 9, %bb.z ]
  %i.bk = add nuw nsw i16 %.sink.i, %i.bh
  %i.bl = shl i16 %i.bk, 12
  %i.bm = getelementptr inbounds nuw i8, ptr %.02259, i64 6
  %i.bn = load i16, ptr %i.bm, align 2            ; 4 uses
  %i.bo = add i16 %i.bn, -48
  %or.cond.i30 = icmp ult i16 %i.bo, 10
  br i1 %or.cond.i30, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit34, label %bb.aa

bb.aa:                                            ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit
  %i.bp = add i16 %i.bn, -65
  %or.cond5.i31 = icmp ult i16 %i.bp, 6
  br i1 %or.cond5.i31, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit34, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = add i16 %i.bn, -97
  %or.cond8.i32 = icmp ult i16 %i.bq, 6
  br i1 %or.cond8.i32, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit34, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt) #17
  unreachable

_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit34: ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit, %bb.aa, %bb.ab
  %.sink.i33 = phi i16 [ 201, %bb.aa ], [ 208, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit ], [ 169, %bb.ab ]
  %i.br = add nuw nsw i16 %.sink.i33, %i.bn
  %i.bs = shl i16 %i.br, 8
  %i.bt = or i16 %i.bs, %i.bl
  %i.bu = getelementptr inbounds nuw i8, ptr %.02259, i64 8
  %i.bv = load i16, ptr %i.bu, align 2            ; 4 uses
  %i.bw = add i16 %i.bv, -48
  %or.cond.i35 = icmp ult i16 %i.bw, 10
  br i1 %or.cond.i35, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit39, label %bb.ad

bb.ad:                                            ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit34
  %i.bx = add i16 %i.bv, -65
  %or.cond5.i36 = icmp ult i16 %i.bx, 6
  br i1 %or.cond5.i36, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit39, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = add i16 %i.bv, -97
  %or.cond8.i37 = icmp ult i16 %i.by, 6
  br i1 %or.cond8.i37, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit39, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt) #17
  unreachable

_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit39: ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit34, %bb.ad, %bb.ae
  %.sink.i38 = phi i16 [ 4041, %bb.ad ], [ 4048, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit34 ], [ 4009, %bb.ae ]
  %i.bz = add nuw nsw i16 %.sink.i38, %i.bv
  %i.ca = shl i16 %i.bz, 4
  %i.cb = or i16 %i.bt, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.02259, i64 10
  %i.cd = load i16, ptr %i.cc, align 2            ; 4 uses
  %i.ce = add i16 %i.cd, -48
  %or.cond.i40 = icmp ult i16 %i.ce, 10
  br i1 %or.cond.i40, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit44, label %bb.ag

bb.ag:                                            ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit39
  %i.cf = add i16 %i.cd, -65
  %or.cond5.i41 = icmp ult i16 %i.cf, 6
  br i1 %or.cond5.i41, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit44, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = add i16 %i.cd, -97
  %or.cond8.i42 = icmp ult i16 %i.cg, 6
  br i1 %or.cond8.i42, label %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef 742, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt) #17
  unreachable

_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit44: ; preds = %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit39, %bb.ag, %bb.ah
  %.sink.i43 = phi i16 [ -55, %bb.ag ], [ -48, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit39 ], [ -87, %bb.ah ]
  %i.ch = add nsw i16 %.sink.i43, %i.cd
  %i.ci = or i16 %i.cb, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.02259, i64 12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.p, %bb.p, %bb.p, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit44, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.056 = phi i16 [ %i.ci, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit44 ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ %i.bg, %bb.p ], [ 8, %bb.q ], [ 12, %bb.r ], [ 10, %bb.s ], [ 13, %bb.t ], [ 9, %bb.u ], [ 11, %bb.v ] ; 2 uses
  %.123 = phi ptr [ %i.cj, %_ZN5crdtp4json12_GLOBAL__N_110JsonParserItE8HexToIntEt.exit44 ], [ %i.bf, %bb.p ], [ %i.bf, %bb.p ], [ %i.bf, %bb.p ], [ %i.bf, %bb.q ], [ %i.bf, %bb.r ], [ %i.bf, %bb.s ], [ %i.bf, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  %i.ck = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.cl = load ptr, ptr %i.g, align 8
  %.not.i45 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i45, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 %.056, ptr %i.ck, align 2
  %i.cm = load ptr, ptr %i.ae, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store ptr %i.cn, ptr %i.ae, align 8
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.al:                                            ; preds = %bb.aj
  %i.co = load ptr, ptr %2, align 8               ; 4 uses
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 5 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775806
  br i1 %i.cs, label %bb.am, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i46

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i46: ; preds = %bb.al
  %i.ct = ashr exact i64 %i.cr, 1                 ; 3 uses
  %.sroa.speculated.i.i.i47 = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add i64 %.sroa.speculated.i.i.i47, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 4611686018427387903)
  %i.cx = select i1 %i.cv, i64 4611686018427387903, i64 %i.cw ; 3 uses
  %.not.i.i.i48 = icmp ne i64 %i.cx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i48)
  %i.cy = shl nuw nsw i64 %i.cx, 1
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #15 ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cr ; 2 uses
  store i16 %.056, ptr %i.da, align 2
  %i.db = icmp sgt i64 %i.cr, 0
  br i1 %i.db, label %bb.an, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i49

bb.an:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cz, ptr align 2 %i.co, i64 %i.cr, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i49

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i49: ; preds = %bb.an, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i46
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %.not.i17.i.i50 = icmp eq ptr %i.co, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i51, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i49
  %i.dd = load ptr, ptr %i.g, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.df) #18
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i51

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i51: ; preds = %bb.ao, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i49
  store ptr %i.cz, ptr %2, align 8
  store ptr %i.dc, ptr %i.ae, align 8
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dg, ptr %i.g, align 8
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i51, %bb.ak, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.j
  %.224 = phi ptr [ %.123, %bb.ak ], [ %i.af, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %.123, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i51 ], [ %i.af, %bb.j ] ; 2 uses
  %i.dh = icmp ult ptr %.224, %1
  br i1 %i.dh, label %bb.h, label %_ZNSt6vectorItSaItEE9push_backERKt.exit.thread

_ZNSt6vectorItSaItEE9push_backERKt.exit.thread:   ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit, %bb.p, %bb.o, %_ZNSt6vectorItSaItEE7reserveEm.exit, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %_ZNSt6vectorItSaItEE7reserveEm.exit ], [ false, %bb.p ], [ true, %_ZNSt6vectorItSaItEE9push_backERKt.exit ], [ false, %bb.o ]
  ret i1 %.2
}

declare void @_ZN5crdtp4cbor9ParseCBORESt4spanIKhLm18446744073709551615EEPNS_13ParserHandlerE(ptr, i64, ptr noundef) local_unnamed_addr #8

declare void @_ZN5crdtp4cbor14NewCBOREncoderEPSt6vectorIhSaIhEEPNS_6StatusE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { builtin nounwind allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{!2, !21}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = distinct !{!5, !21}
!6 = distinct !{!6, !21}
!7 = distinct !{!7, !21}
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, !21}
!11 = distinct !{!11, !21}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 4, i32 28}
!25 = distinct !{null, null}
!26 = distinct !{null, null}
!27 = distinct !{!27, i1 true, !"_ZN5crdtp4json14NewJSONEncoderEPSt6vectorIhSaIhEEPNS_6StatusE"}
!28 = distinct !{!28, !27, !"_ZN5crdtp4json14NewJSONEncoderEPSt6vectorIhSaIhEEPNS_6StatusE: argument 0"}
!29 = distinct !{null, null, null}
!30 = !{!28}
!31 = distinct !{!31, i1 true, !"_ZN5crdtp4json14NewJSONEncoderEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusE"}
!32 = distinct !{!32, !31, !"_ZN5crdtp4json14NewJSONEncoderEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusE: argument 0"}
!33 = distinct !{null, null, null}
!34 = !{!32}
!35 = distinct !{null, ptr @_ZN5crdtp4json9ParseJSONESt4spanIKhLm18446744073709551615EEPNS_13ParserHandlerE, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null, ptr @_ZN5crdtp4json9ParseJSONESt4spanIKtLm18446744073709551615EEPNS_13ParserHandlerE, null, null}
!38 = distinct !{null, null, null}
!39 = !{ptr @_ZN5crdtp4json12_GLOBAL__N_111JSONEncoderISt6vectorIhSaIhEEED2Ev}
!40 = distinct !{!40, i1 true, !"_ZNSt5dequeIN5crdtp4json12_GLOBAL__N_15StateESaIS3_EE3endEv"}
!41 = distinct !{!41, !40, !"_ZNSt5dequeIN5crdtp4json12_GLOBAL__N_15StateESaIS3_EE3endEv: argument 0"}
!42 = !{!41}
!43 = distinct !{!43, i1 true, !"_ZNSt5dequeIN5crdtp4json12_GLOBAL__N_15StateESaIS3_EE3endEv"}
end_hunk_1
