Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/json-stringifier?download=true
inline.NumInlined: 8192
inline.NumDeleted: 1259
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN2v88internal15JsonStringifier15SerializeStringILb0EEEbNS0_6HandleINS0_6StringEEE:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.m:                                             ; preds = %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.n:                                             ; preds = %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i
  %i.ca = tail call noundef ptr @_ZNK2v88internal21ExternalOneByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %i.bq), !noalias !125
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.o:                                             ; preds = %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i
  %i.cb = tail call noundef ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv(ptr noundef nonnull align 4 dereferenceable(32) %i.bq), !noalias !126
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit

bb.p:                                             ; preds = %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22, !noalias !127
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sroa.0140.sroa.8.0.ph = phi i32 [ 2, %bb.o ], [ 1, %bb.n ], [ 2, %bb.m ], [ 1, %bb.l ]
  %.sroa.0140.sroa.0.0.ph = phi ptr [ %i.cb, %bb.o ], [ %i.ca, %bb.n ], [ %i.bz, %bb.m ], [ %i.by, %bb.l ]
  store ptr %.sroa.0140.sroa.0.0.ph, ptr %7, align 8
  %.sroa.0140.sroa.7.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.bs, ptr %.sroa.0140.sroa.7.0..sroa_idx183, align 8
  %.sroa.0140.sroa.8.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.0140.sroa.8.0.ph, ptr %.sroa.0140.sroa.8.0..sroa_idx189, align 4
  %.sroa.0140.sroa.9.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %.sroa.0140.sroa.9.0..sroa_idx195, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

bb.q:                                             ; preds = %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhhEEvT_.exit15.i
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %7, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i: ; preds = %bb.q, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !range !33, !noundef !34
  %i.ce = trunc nuw i8 %i.cd to i1
  store i8 0, ptr %i.cc, align 8
  br i1 %i.ce, label %bb.r, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.r:                                             ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  %i.cf = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !121
  %i.cg = load ptr, ptr %7, align 8               ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ci = load i32, ptr %i.ch, align 8            ; 4 uses
  %i.cj = zext i32 %i.ci to i64                   ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ck = icmp ugt i32 %i.ci, 16384
  br i1 %i.ck, label %.lr.ph797, label %.split, !prof !39

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i.preheader: ; preds = %.split
  %.not805 = icmp eq i32 %i.ci, 0
  br i1 %.not805, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i._crit_edge, label %.lr.ph797

.lr.ph797:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.bi

.split:                                           ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit
  %i.cm = shl nuw nsw i64 %i.cj, 3
  %i.cn = load i64, ptr %i.bm, align 8
  %i.co = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ugt i64 %i.cp, %i.cm
  br i1 %i.cq, label %bb.t, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i.preheader, !prof !36

bb.t:                                             ; preds = %.split
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.co ; 3 uses
  %.not804 = icmp eq i32 %i.ci, 0
  br i1 %.not804, label %._crit_edge784, label %.lr.ph783

._crit_edge784:                                   ; preds = %bb.bh, %bb.t
  %.sroa.6.0.lcssa = phi ptr [ %i.ct, %bb.t ], [ %.sroa.6.2, %bb.bh ] ; 19 uses
  %.013.i.lcssa = phi i1 [ false, %bb.t ], [ %.114.i, %bb.bh ]
  %.012.i45.lcssa = phi i64 [ 0, %bb.t ], [ %.1.i47, %bb.bh ] ; 3 uses
  %i.cu = icmp eq i64 %.012.i45.lcssa, %i.cj
  br i1 %i.cu, label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhhLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge784
  %i.cv = sub i64 %i.cj, %.012.i45.lcssa          ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.012.i45.lcssa ; 17 uses
  switch i64 %i.cv, label %bb.al [
    i64 1, label %bb.v
    i64 2, label %bb.w
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.z
    i64 6, label %bb.aa
    i64 7, label %bb.ab
    i64 8, label %bb.ac
    i64 9, label %bb.ad
    i64 10, label %bb.ae
    i64 11, label %bb.af
    i64 12, label %bb.ag
    i64 13, label %bb.ah
    i64 14, label %bb.ai
    i64 15, label %bb.aj
    i64 16, label %bb.ak
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.v:                                             ; preds = %bb.u
  %i.cx = load i8, ptr %i.cw, align 1
  store i8 %i.cx, ptr %.sroa.6.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.w:                                             ; preds = %bb.u
  %i.cy = load i16, ptr %i.cw, align 1
  store i16 %i.cy, ptr %.sroa.6.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.x:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(3) %i.cw, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.y:                                             ; preds = %bb.u
  %i.cz = load i32, ptr %i.cw, align 1
  store i32 %i.cz, ptr %.sroa.6.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.z:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(5) %i.cw, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.aa:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(6) %i.cw, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ab:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(7) %i.cw, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ac:                                            ; preds = %bb.u
  %i.da = load i64, ptr %i.cw, align 1
  store i64 %i.da, ptr %.sroa.6.0.lcssa, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ad:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(9) %i.cw, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ae:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(10) %i.cw, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.af:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(11) %i.cw, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ag:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(12) %i.cw, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ah:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(13) %i.cw, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ai:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(14) %i.cw, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.aj:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(15) %i.cw, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ak:                                            ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.0.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %i.cw, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.al:                                            ; preds = %bb.u
  %i.db = icmp sgt i64 %i.cv, 1
  br i1 %i.db, label %bb.am, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, !prof !36

bb.am:                                            ; preds = %bb.al
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sroa.6.0.lcssa, ptr nonnull align 1 %i.cw, i64 %i.cv, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.6.0.lcssa, i64 %i.cv
  br label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhhLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit

.lr.ph783:                                        ; preds = %bb.t, %bb.bh
  %.0.i46781 = phi i64 [ %.pre-phi836, %bb.bh ], [ 0, %bb.t ] ; 5 uses
  %.012.i45780 = phi i64 [ %.1.i47, %bb.bh ], [ 0, %bb.t ] ; 4 uses
  %.013.i779 = phi i1 [ %.114.i, %bb.bh ], [ false, %bb.t ]
  %.sroa.6.0778 = phi ptr [ %.sroa.6.2, %bb.bh ], [ %i.ct, %bb.t ] ; 20 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.0.i46781
  %i.de = load i8, ptr %i.dd, align 1             ; 2 uses
  %i.df = zext i8 %i.de to i64                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !range !33, !noundef !34
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %.lr.ph783._crit_edge, label %bb.an

.lr.ph783._crit_edge:                             ; preds = %.lr.ph783
  %.pre835 = add nuw nsw i64 %.0.i46781, 1
  br label %bb.bh

bb.an:                                            ; preds = %.lr.ph783
  %i.dj = icmp eq i64 %.012.i45780, %.0.i46781
  br i1 %i.dj, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dk = sub i64 %.0.i46781, %.012.i45780        ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.012.i45780 ; 17 uses
  switch i64 %i.dk, label %bb.bf [
    i64 1, label %bb.ap
    i64 2, label %bb.aq
    i64 3, label %bb.ar
    i64 4, label %bb.as
    i64 5, label %bb.at
    i64 6, label %bb.au
    i64 7, label %bb.av
    i64 8, label %bb.aw
    i64 9, label %bb.ax
    i64 10, label %bb.ay
    i64 11, label %bb.az
    i64 12, label %bb.ba
    i64 13, label %bb.bb
    i64 14, label %bb.bc
    i64 15, label %bb.bd
    i64 16, label %bb.be
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dm = load i8, ptr %i.dl, align 1
  store i8 %i.dm, ptr %.sroa.6.0778, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.aq:                                            ; preds = %bb.ao
  %i.dn = load i16, ptr %i.dl, align 1
  store i16 %i.dn, ptr %.sroa.6.0778, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(3) %i.dl, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.as:                                            ; preds = %bb.ao
  %i.do = load i32, ptr %i.dl, align 1
  store i32 %i.do, ptr %.sroa.6.0778, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.at:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(5) %i.dl, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.au:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(6) %i.dl, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.av:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(7) %i.dl, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.aw:                                            ; preds = %bb.ao
  %i.dp = load i64, ptr %i.dl, align 1
  store i64 %i.dp, ptr %.sroa.6.0778, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.ax:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(9) %i.dl, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.ay:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(10) %i.dl, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.az:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(11) %i.dl, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.ba:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(12) %i.dl, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.bb:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(13) %i.dl, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.bc:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(14) %i.dl, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.bd:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(15) %i.dl, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.be:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.0778, ptr noundef nonnull align 1 dereferenceable(16) %i.dl, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

bb.bf:                                            ; preds = %bb.ao
  %i.dq = icmp sgt i64 %i.dk, 1
  br i1 %i.dq, label %bb.bg, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63, !prof !36

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sroa.6.0778, ptr nonnull align 1 %i.dl, i64 %i.dk, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63:  ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.6.0778, i64 %i.dk
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i

_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i: ; preds = %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63, %bb.an
  %.sroa.6.1 = phi ptr [ %.sroa.6.0778, %bb.an ], [ %i.dr, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit63 ] ; 2 uses
  %.not.i773 = icmp eq i8 %i.de, 96
  br i1 %.not.i773, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i.a

_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i.a: ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i
  %i.ds = shl nuw nsw i64 %i.df, 3
  %i.dt = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1
  br label %.lr.ph776

.lr.ph776:                                        ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i.a, %.lr.ph776
  %i.dv = phi i8 [ %i.dy, %.lr.ph776 ], [ %i.du, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i.a ]
  %.0.i48775 = phi ptr [ %i.dw, %.lr.ph776 ], [ %i.dt, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i.a ]
  %.sroa.6.4774 = phi ptr [ %i.dx, %.lr.ph776 ], [ %.sroa.6.1, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i.a ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i48775, i64 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.6.4774, i64 1 ; 2 uses
  store i8 %i.dv, ptr %.sroa.6.4774, align 1
  %i.dy = load i8, ptr %i.dw, align 1             ; 2 uses
  %.not.i = icmp eq i8 %i.dy, 0
  br i1 %.not.i, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit, label %.lr.ph776, !llvm.loop !83

_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit: ; preds = %.lr.ph776, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i
  %.sroa.6.4.lcssa = phi ptr [ %.sroa.6.1, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE15AppendSubstringIhEEvPKT_mm.exit15.i ], [ %i.dx, %.lr.ph776 ]
  %i.dz = add nuw nsw i64 %.0.i46781, 1           ; 2 uses
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph783._crit_edge, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit
  %.pre-phi836 = phi i64 [ %.pre835, %.lr.ph783._crit_edge ], [ %i.dz, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit ] ; 2 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0778, %.lr.ph783._crit_edge ], [ %.sroa.6.4.lcssa, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit ] ; 2 uses
  %.114.i = phi i1 [ %.013.i779, %.lr.ph783._crit_edge ], [ true, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit ] ; 2 uses
  %.1.i47 = phi i64 [ %.012.i45780, %.lr.ph783._crit_edge ], [ %i.dz, %_ZN2v88internal15JsonStringifier15NoExtendBuilderIhE13AppendCStringEPKc.exit ] ; 2 uses
  %exitcond823.not = icmp eq i64 %.pre-phi836, %i.cj
  br i1 %exitcond823.not, label %._crit_edge784, label %.lr.ph783, !llvm.loop !84

_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhhLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit: ; preds = %._crit_edge784, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  %.sroa.6.3 = phi ptr [ %.sroa.6.0.lcssa, %._crit_edge784 ], [ %i.dc, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ]
  %i.ea = ptrtoint ptr %.sroa.6.3 to i64
  %i.eb = ptrtoint ptr %i.ct to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = load i64, ptr %i.bh, align 8
  %i.ee = add i64 %i.ec, %i.ed
  br label %bb.bm

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i._crit_edge: ; preds = %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i.preheader
  %.012.i.lcssa = phi i1 [ false, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i.preheader ], [ %.113.i, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i ]
  %.011.i.lcssa = phi i64 [ 0, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i.preheader ], [ %.1.i, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i ]
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringIhEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.cg, i64 noundef %.011.i.lcssa, i64 noundef %i.cj)
  %.pre833 = load i64, ptr %i.bh, align 8
  br label %bb.bm

bb.bi:                                            ; preds = %.lr.ph797, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i
  %.0.i796 = phi i64 [ 0, %.lr.ph797 ], [ %.pre-phi, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i ] ; 4 uses
  %.011.i795 = phi i64 [ 0, %.lr.ph797 ], [ %.1.i, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i ] ; 2 uses
  %.012.i794 = phi i1 [ false, %.lr.ph797 ], [ %.113.i, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.0.i796
  %i.eg = load i8, ptr %i.ef, align 1             ; 2 uses
  %i.eh = zext i8 %i.eg to i64                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !range !33, !noundef !34
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i_crit_edge, label %bb.bj

._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i_crit_edge: ; preds = %bb.bi
  %.pre834 = add nuw nsw i64 %.0.i796, 1
  br label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringIhEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull %i.cg, i64 noundef %.011.i795, i64 noundef %.0.i796)
  %i.el = shl nuw nsw i64 %i.eh, 3
  %i.em = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.el ; 4 uses
  %i.en = load i32, ptr %i.at, align 8
  %i.eo = icmp eq i32 %i.en, 0
  %.not5.i.i791 = icmp eq i8 %i.eg, 96            ; 2 uses
  br i1 %i.eo, label %.preheader, label %.preheader664

.preheader664:                                    ; preds = %bb.bj
  br i1 %.not5.i.i791, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i, label %.lr.ph790.preheader

.lr.ph790.preheader:                              ; preds = %.preheader664
  %9 = load i8, ptr %i.em, align 1
  br label %.lr.ph790

.preheader:                                       ; preds = %bb.bj
  br i1 %.not5.i.i791, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i, label %.lr.ph793.preheader

.lr.ph793.preheader:                              ; preds = %.preheader
  %10 = load i8, ptr %i.em, align 1
  br label %.lr.ph793

.lr.ph793:                                        ; preds = %.lr.ph793.preheader, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i
  %i.ep = phi i8 [ %i.ey, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i ], [ %10, %.lr.ph793.preheader ]
  %.0.i.i13792 = phi ptr [ %i.eq, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i ], [ %i.em, %.lr.ph793.preheader ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i13792, i64 1 ; 2 uses
  %i.er = load ptr, ptr %i.bf, align 8
  %i.es = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.bh, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es
  store i8 %i.ep, ptr %i.eu, align 1
  %i.ev = load i64, ptr %i.bh, align 8
  %i.ew = load i64, ptr %i.bm, align 8
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.bk, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i, !prof !32

bb.bk:                                            ; preds = %.lr.ph793
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i: ; preds = %bb.bk, %.lr.ph793
  %i.ey = load i8, ptr %i.eq, align 1             ; 2 uses
  %.not5.i.i = icmp eq i8 %i.ey, 0
  br i1 %.not5.i.i, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i, label %.lr.ph793, !llvm.loop !85

.lr.ph790:                                        ; preds = %.lr.ph790.preheader, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i
  %i.ez = phi i8 [ %i.fj, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i ], [ %9, %.lr.ph790.preheader ]
  %.1.i.i789 = phi ptr [ %i.fa, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i ], [ %i.em, %.lr.ph790.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.1.i.i789, i64 1 ; 2 uses
  %i.fb = zext i8 %i.ez to i16
  %i.fc = load ptr, ptr %i.cl, align 8
  %i.fd = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr %i.bh, align 8
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fd
  store i16 %i.fb, ptr %i.ff, align 2
  %i.fg = load i64, ptr %i.bh, align 8
  %i.fh = load i64, ptr %i.bm, align 8
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.bl, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i, !prof !32

bb.bl:                                            ; preds = %.lr.ph790
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i: ; preds = %bb.bl, %.lr.ph790
  %i.fj = load i8, ptr %i.fa, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i.i, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i, label %.lr.ph790, !llvm.loop !86

_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i, %.preheader664, %.preheader
  %i.fk = add nuw nsw i64 %.0.i796, 1             ; 2 uses
  br label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i: ; preds = %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i_crit_edge, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i
  %.pre-phi = phi i64 [ %.pre834, %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i_crit_edge ], [ %i.fk, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i ] ; 2 uses
  %.113.i = phi i1 [ %.012.i794, %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i_crit_edge ], [ true, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i ] ; 2 uses
  %.1.i = phi i64 [ %.011.i795, %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i_crit_edge ], [ %i.fk, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i ] ; 2 uses
  %exitcond824.not = icmp eq i64 %.pre-phi, %i.cj
  br i1 %exitcond824.not, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i._crit_edge, label %bb.bi, !llvm.loop !87

bb.bm:                                            ; preds = %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i._crit_edge, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhhLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.fl = phi i64 [ %i.ee, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhhLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %.pre833, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i._crit_edge ] ; 2 uses
  %.2.i.in = phi i1 [ %.013.i.lcssa, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhhLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %.012.i.lcssa, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i._crit_edge ] ; 2 uses
  %i.fm = load ptr, ptr %i.bf, align 8
  %i.fn = add i64 %i.fl, 1
  store i64 %i.fn, ptr %i.bh, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 34, ptr %i.fo, align 1
  %i.fp = load i64, ptr %i.bh, align 8
  %i.fq = load i64, ptr %i.bm, align 8
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.sink.split, label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit, !prof !32

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit: ; preds = %.preheader686
  tail call void @_ZN2v88internal15JsonStringifier14ChangeEncodingEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %.preheader920

.preheader920:                                    ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit, %_ZN2v88internal6String7FlattenIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  br label %bb.bn

bb.bn:                                            ; preds = %.preheader920, %bb.bo
  %.sroa.04.0.i64 = phi i64 [ %i.ga, %bb.bo ], [ %i.as, %.preheader920 ]
  %i.fs = add i64 %.sroa.04.0.i64, -1
  %i.ft = inttoptr i64 %i.fs to ptr               ; 2 uses
  %i.fu = load atomic volatile i64, ptr %i.ft monotonic, align 8
  %i.fv = add i64 %i.fu, 11
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = load atomic volatile i16, ptr %i.fw monotonic, align 2
  %i.fy = and i16 %i.fx, 9
  switch i16 %i.fy, label %bb.bo [
    i16 8, label %bb.bp
    i16 0, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit67
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.ga = load i64, ptr %i.fz, align 8
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bn
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 14 uses
  %i.ge = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.gf = add i64 %i.ge, 1
  store i64 %i.gf, ptr %i.gd, align 8
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.ge
  store i16 34, ptr %i.gg, align 2
  %i.gh = load i64, ptr %i.gd, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = icmp eq i64 %i.gh, %i.gj
  br i1 %i.gk, label %bb.bq, label %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i, !prof !32

bb.bq:                                            ; preds = %bb.bp
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i

_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i: ; preds = %bb.bq, %bb.bp
  %i.gl = add i64 %i.as, -1
  %i.gm = inttoptr i64 %i.gl to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !129, !noalias !128
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !noalias !130
  %i.gp = load atomic volatile i64, ptr %i.gm acquire, align 8, !noalias !131
  %i.gq = add i64 %i.gp, 11
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = load atomic volatile i16, ptr %i.gr monotonic, align 2, !noalias !131
  %i.gt = and i16 %i.gs, 15
  switch i16 %i.gt, label %bb.cb [
    i16 8, label %bb.br
    i16 0, label %bb.bs
    i16 9, label %bb.cc
    i16 1, label %bb.cc
    i16 10, label %bb.bt
    i16 2, label %bb.bx
    i16 11, label %bb.cc
    i16 3, label %bb.cc
    i16 13, label %bb.cc
    i16 5, label %bb.cc
  ]

bb.br:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72

bb.bs:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72

bb.bt:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !noalias !132
  %i.gy = inttoptr i64 %i.gx to ptr               ; 6 uses
  %i.gz = load atomic volatile i64, ptr %i.gm monotonic, align 8, !noalias !132
  %i.ha = add i64 %i.gz, 11
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load atomic volatile i16, ptr %i.hb monotonic, align 2, !noalias !132
  %i.hd = and i16 %i.hc, 16
  %.not.i68 = icmp eq i16 %i.hd, 0
  br i1 %.not.i68, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.he = load ptr, ptr %i.gy, align 8, !noalias !132
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !132
  %i.hh = tail call noundef zeroext i1 %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.gy) #21, !noalias !132, !inline_history !40
  br i1 %i.hh, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #21, !noalias !132
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !132
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.hk = load ptr, ptr %i.gy, align 8, !noalias !132
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !132
  %i.hn = tail call noundef ptr %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.gy) #21, !noalias !132, !inline_history !40
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72

bb.bx:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !noalias !133
  %i.hq = inttoptr i64 %i.hp to ptr               ; 6 uses
  %i.hr = load atomic volatile i64, ptr %i.gm monotonic, align 8, !noalias !133
  %i.hs = add i64 %i.hr, 11
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load atomic volatile i16, ptr %i.ht monotonic, align 2, !noalias !133
  %i.hv = and i16 %i.hu, 16
  %.not.i70 = icmp eq i16 %i.hv, 0
  br i1 %.not.i70, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hw = load ptr, ptr %i.hq, align 8, !noalias !133
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !133
  %i.hz = tail call noundef zeroext i1 %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hq) #21, !noalias !133, !inline_history !41
  br i1 %i.hz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #21, !noalias !133
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !133
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72

bb.ca:                                            ; preds = %bb.by, %bb.bx
  %i.ic = load ptr, ptr %i.hq, align 8, !noalias !133
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !133
  %i.if = tail call noundef ptr %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #21, !noalias !133, !inline_history !41
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72

bb.cb:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22, !noalias !134
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72: ; preds = %bb.bz, %bb.bv, %bb.ca, %bb.bw, %bb.bs, %bb.br
  %.sroa.0249.sroa.8.0.ph = phi i32 [ 2, %bb.bz ], [ 1, %bb.bv ], [ 2, %bb.ca ], [ 1, %bb.bw ], [ 2, %bb.bs ], [ 1, %bb.br ]
  %.sroa.0249.sroa.0.0.ph = phi ptr [ %i.ib, %bb.bz ], [ %i.hj, %bb.bv ], [ %i.if, %bb.ca ], [ %i.hn, %bb.bw ], [ %i.gv, %bb.bs ], [ %i.gu, %bb.br ]
  store ptr %.sroa.0249.sroa.0.0.ph, ptr %5, align 8
  %.sroa.0249.sroa.7.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.go, ptr %.sroa.0249.sroa.7.0..sroa_idx303, align 8
  %.sroa.0249.sroa.8.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %.sroa.0249.sroa.8.0.ph, ptr %.sroa.0249.sroa.8.0..sroa_idx309, align 4
  %.sroa.0249.sroa.9.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %8, ptr %.sroa.0249.sroa.9.0..sroa_idx315, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i15

bb.cc:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit15.i
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %5, ptr noundef nonnull align 4 dereferenceable(16) %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i15

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i15: ; preds = %bb.cc, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit72
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 8, !range !33, !noundef !34
  %i.ii = trunc nuw i8 %i.ih to i1
  store i8 0, ptr %i.ig, align 8
  br i1 %i.ii, label %bb.cd, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit74

bb.cd:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i15
  %i.ij = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i.i.i73 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i.i73, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit74, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ij) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit74

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit74: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i15, %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !128
  %i.ik = load ptr, ptr %5, align 8               ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.im = load i32, ptr %i.il, align 8            ; 4 uses
  %i.in = zext i32 %i.im to i64                   ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.io = icmp ugt i32 %i.im, 16384
  br i1 %i.io, label %.lr.ph770, label %.split640, !prof !39

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16.preheader: ; preds = %.split640
  %.not803 = icmp eq i32 %i.im, 0
  br i1 %.not803, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16._crit_edge, label %.lr.ph770

.lr.ph770:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit74, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16.preheader
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.ck

.split640:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit74
  %i.iq = shl nuw nsw i64 %i.in, 3
  %i.ir = load i64, ptr %i.gi, align 8
  %i.is = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = icmp ugt i64 %i.it, %i.iq
  br i1 %i.iu, label %bb.cf, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16.preheader, !prof !36

bb.cf:                                            ; preds = %.split640
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %i.is ; 3 uses
  %.not802 = icmp eq i32 %i.im, 0
  br i1 %.not802, label %._crit_edge757, label %.lr.ph756

._crit_edge757:                                   ; preds = %bb.cj, %bb.cf
  %.sroa.6234.0.lcssa = phi ptr [ %i.ix, %bb.cf ], [ %.sroa.6234.2, %bb.cj ] ; 3 uses
  %.013.i49.lcssa = phi i1 [ false, %bb.cf ], [ %.114.i52, %bb.cj ]
  %.012.i50.lcssa = phi i64 [ 0, %bb.cf ], [ %.1.i53, %bb.cj ] ; 3 uses
  %i.iy = icmp eq i64 %.012.i50.lcssa, %i.in
  br i1 %i.iy, label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhtLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge757
  %i.iz = sub i64 %i.in, %.012.i50.lcssa          ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.012.i50.lcssa
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.sroa.6234.0.lcssa, ptr noundef %i.ja, i64 noundef %i.iz)
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6234.0.lcssa, i64 %i.iz
  br label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhtLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit

.lr.ph756:                                        ; preds = %bb.cf, %bb.cj
  %.0.i51754 = phi i64 [ %.pre-phi840, %bb.cj ], [ 0, %bb.cf ] ; 5 uses
  %.012.i50753 = phi i64 [ %.1.i53, %bb.cj ], [ 0, %bb.cf ] ; 4 uses
  %.013.i49752 = phi i1 [ %.114.i52, %bb.cj ], [ false, %bb.cf ]
  %.sroa.6234.0751 = phi ptr [ %.sroa.6234.2, %bb.cj ], [ %i.ix, %bb.cf ] ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0.i51754
  %i.jd = load i8, ptr %i.jc, align 1             ; 2 uses
  %i.je = zext i8 %i.jd to i64                    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !range !33, !noundef !34
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %.lr.ph756._crit_edge, label %bb.ch

.lr.ph756._crit_edge:                             ; preds = %.lr.ph756
  %.pre839 = add nuw nsw i64 %.0.i51754, 1
  br label %bb.cj

bb.ch:                                            ; preds = %.lr.ph756
  %i.ji = icmp eq i64 %.012.i50753, %.0.i51754
  br i1 %i.ji, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jj = sub i64 %.0.i51754, %.012.i50753        ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.012.i50753
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %.sroa.6234.0751, ptr noundef %i.jk, i64 noundef %i.jj)
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6234.0751, i64 %i.jj
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i: ; preds = %bb.ci, %bb.ch
  %.sroa.6234.1 = phi ptr [ %.sroa.6234.0751, %bb.ch ], [ %i.jl, %bb.ci ] ; 2 uses
  %.not.i55746 = icmp eq i8 %i.jd, 96
  br i1 %.not.i55746, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i.a

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i.a: ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i
  %i.jm = shl nuw nsw i64 %i.je, 3
  %i.jn = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.jm ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1
  br label %.lr.ph749

.lr.ph749:                                        ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i.a, %.lr.ph749
  %i.jp = phi i8 [ %i.jt, %.lr.ph749 ], [ %i.jo, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i.a ]
  %.0.i54748 = phi ptr [ %i.jq, %.lr.ph749 ], [ %i.jn, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i.a ]
  %.sroa.6234.4747 = phi ptr [ %i.js, %.lr.ph749 ], [ %.sroa.6234.1, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i.a ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i54748, i64 1 ; 2 uses
  %i.jr = zext i8 %i.jp to i16
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.6234.4747, i64 2 ; 2 uses
  store i16 %i.jr, ptr %.sroa.6234.4747, align 2
  %i.jt = load i8, ptr %i.jq, align 1             ; 2 uses
  %.not.i55 = icmp eq i8 %i.jt, 0
  br i1 %.not.i55, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit, label %.lr.ph749, !llvm.loop !102

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit: ; preds = %.lr.ph749, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i
  %.sroa.6234.4.lcssa = phi ptr [ %.sroa.6234.1, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringIhEEvPKT_mm.exit15.i ], [ %i.js, %.lr.ph749 ]
  %i.ju = add nuw nsw i64 %.0.i51754, 1           ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph756._crit_edge, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit
  %.pre-phi840 = phi i64 [ %.pre839, %.lr.ph756._crit_edge ], [ %i.ju, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit ] ; 2 uses
  %.sroa.6234.2 = phi ptr [ %.sroa.6234.0751, %.lr.ph756._crit_edge ], [ %.sroa.6234.4.lcssa, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit ] ; 2 uses
  %.114.i52 = phi i1 [ %.013.i49752, %.lr.ph756._crit_edge ], [ true, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit ] ; 2 uses
  %.1.i53 = phi i64 [ %.012.i50753, %.lr.ph756._crit_edge ], [ %i.ju, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit ] ; 2 uses
  %exitcond.not = icmp eq i64 %.pre-phi840, %i.in
  br i1 %exitcond.not, label %._crit_edge757, label %.lr.ph756, !llvm.loop !103

_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhtLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit: ; preds = %._crit_edge757, %bb.cg
  %.sroa.6234.3 = phi ptr [ %.sroa.6234.0.lcssa, %._crit_edge757 ], [ %i.jb, %bb.cg ]
  %i.jv = ptrtoint ptr %.sroa.6234.3 to i64
  %i.jw = ptrtoint ptr %i.ix to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 1
  %i.jz = load i64, ptr %i.gd, align 8
  %i.ka = add i64 %i.jy, %i.jz
  br label %bb.co

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16._crit_edge: ; preds = %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16.preheader
  %.012.i18.lcssa = phi i1 [ false, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16.preheader ], [ %.113.i26, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16 ]
  %.011.i19.lcssa = phi i64 [ 0, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16.preheader ], [ %.1.i27, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16 ]
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringIhEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.ik, i64 noundef %.011.i19.lcssa, i64 noundef %i.in)
  %.pre832 = load i64, ptr %i.gd, align 8
  br label %bb.co

bb.ck:                                            ; preds = %.lr.ph770, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16
  %.0.i20769 = phi i64 [ 0, %.lr.ph770 ], [ %.pre-phi838, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16 ] ; 4 uses
  %.011.i19768 = phi i64 [ 0, %.lr.ph770 ], [ %.1.i27, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16 ] ; 2 uses
  %.012.i18767 = phi i1 [ false, %.lr.ph770 ], [ %.113.i26, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.0.i20769
  %i.kc = load i8, ptr %i.kb, align 1             ; 2 uses
  %i.kd = zext i8 %i.kc to i64                    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_124JsonDoNotEscapeFlagTableE, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !range !33, !noundef !34
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16_crit_edge, label %bb.cl

._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16_crit_edge: ; preds = %bb.ck
  %.pre837 = add nuw nsw i64 %.0.i20769, 1
  br label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringIhEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull %i.ik, i64 noundef %.011.i19768, i64 noundef %.0.i20769)
  %i.kh = shl nuw nsw i64 %i.kd, 3
  %i.ki = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.kh ; 4 uses
  %i.kj = load i32, ptr %i.at, align 8
  %i.kk = icmp eq i32 %i.kj, 0
  %.not5.i.i29764 = icmp eq i8 %i.kc, 96          ; 2 uses
  br i1 %i.kk, label %.preheader666, label %.preheader667

.preheader667:                                    ; preds = %bb.cl
  br i1 %.not5.i.i29764, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25, label %.lr.ph763.preheader

.lr.ph763.preheader:                              ; preds = %.preheader667
  %11 = load i8, ptr %i.ki, align 1
  br label %.lr.ph763

.preheader666:                                    ; preds = %bb.cl
  br i1 %.not5.i.i29764, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25, label %.lr.ph766.preheader

.lr.ph766.preheader:                              ; preds = %.preheader666
  %12 = load i8, ptr %i.ki, align 1
  br label %.lr.ph766

.lr.ph766:                                        ; preds = %.lr.ph766.preheader, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i30
  %i.kl = phi i8 [ %i.ku, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i30 ], [ %12, %.lr.ph766.preheader ]
  %.0.i.i28765 = phi ptr [ %i.km, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i30 ], [ %i.ki, %.lr.ph766.preheader ]
  %i.km = getelementptr inbounds nuw i8, ptr %.0.i.i28765, i64 1 ; 2 uses
  %i.kn = load ptr, ptr %i.ip, align 8
  %i.ko = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.gd, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.ko
  store i8 %i.kl, ptr %i.kq, align 1
  %i.kr = load i64, ptr %i.gd, align 8
  %i.ks = load i64, ptr %i.gi, align 8
  %i.kt = icmp eq i64 %i.kr, %i.ks
  br i1 %i.kt, label %bb.cm, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i30, !prof !32

bb.cm:                                            ; preds = %.lr.ph766
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i30

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i30: ; preds = %bb.cm, %.lr.ph766
  %i.ku = load i8, ptr %i.km, align 1             ; 2 uses
  %.not5.i.i29 = icmp eq i8 %i.ku, 0
  br i1 %.not5.i.i29, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25, label %.lr.ph766, !llvm.loop !85

.lr.ph763:                                        ; preds = %.lr.ph763.preheader, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i24
  %i.kv = phi i8 [ %i.lf, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i24 ], [ %11, %.lr.ph763.preheader ]
  %.1.i.i22762 = phi ptr [ %i.kw, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i24 ], [ %i.ki, %.lr.ph763.preheader ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.1.i.i22762, i64 1 ; 2 uses
  %i.kx = zext i8 %i.kv to i16
  %i.ky = load ptr, ptr %i.gb, align 8
  %i.kz = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.la = add i64 %i.kz, 1
  store i64 %i.la, ptr %i.gd, align 8
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.ky, i64 %i.kz
  store i16 %i.kx, ptr %i.lb, align 2
  %i.lc = load i64, ptr %i.gd, align 8
  %i.ld = load i64, ptr %i.gi, align 8
  %i.le = icmp eq i64 %i.lc, %i.ld
  br i1 %i.le, label %bb.cn, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i24, !prof !32

bb.cn:                                            ; preds = %.lr.ph763
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i24

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i24: ; preds = %bb.cn, %.lr.ph763
  %i.lf = load i8, ptr %i.kw, align 1             ; 2 uses
  %.not.i.i23 = icmp eq i8 %i.lf, 0
  br i1 %.not.i.i23, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25, label %.lr.ph763, !llvm.loop !86

_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i24, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i30, %.preheader667, %.preheader666
  %i.lg = add nuw nsw i64 %.0.i20769, 1           ; 2 uses
  br label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16: ; preds = %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16_crit_edge, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25
  %.pre-phi838 = phi i64 [ %.pre837, %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16_crit_edge ], [ %i.lg, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25 ] ; 2 uses
  %.113.i26 = phi i1 [ %.012.i18767, %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16_crit_edge ], [ true, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25 ] ; 2 uses
  %.1.i27 = phi i64 [ %.011.i19768, %._ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16_crit_edge ], [ %i.lg, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit.i25 ] ; 2 uses
  %exitcond822.not = icmp eq i64 %.pre-phi838, %i.in
  br i1 %exitcond822.not, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16._crit_edge, label %bb.ck, !llvm.loop !104

bb.co:                                            ; preds = %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16._crit_edge, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhtLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.lh = phi i64 [ %i.ka, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhtLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %.pre832, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16._crit_edge ] ; 2 uses
  %.2.i21.in = phi i1 [ %.013.i49.lcssa, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IhtLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %.012.i18.lcssa, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i16._crit_edge ] ; 2 uses
  %i.li = load ptr, ptr %i.gb, align 8
  %i.lj = add i64 %i.lh, 1
  store i64 %i.lj, ptr %i.gd, align 8
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.li, i64 %i.lh
  store i16 34, ptr %i.lk, align 2
  %i.ll = load i64, ptr %i.gd, align 8
  %i.lm = load i64, ptr %i.gi, align 8
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.sink.split, label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit, !prof !32

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit67: ; preds = %bb.bn
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.lp = load ptr, ptr %i.lo, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 77 uses
  %i.lr = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.ls = add i64 %i.lr, 1
  store i64 %i.ls, ptr %i.lq, align 8
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %i.lr
  store i16 34, ptr %i.lt, align 2
  %i.lu = load i64, ptr %i.lq, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 31 uses
  %i.lw = load i64, ptr %i.lv, align 8
  %i.lx = icmp eq i64 %i.lu, %i.lw
  br i1 %i.lx, label %bb.cp, label %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, !prof !32

bb.cp:                                            ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit67
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i

_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i: ; preds = %bb.cp, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit67
  %i.ly = add i64 %i.as, -1
  %i.lz = inttoptr i64 %i.ly to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !alias.scope !136, !noalias !135
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  %i.mb = load i32, ptr %i.ma, align 4, !noalias !137
  %i.mc = load atomic volatile i64, ptr %i.lz acquire, align 8, !noalias !138
  %i.md = add i64 %i.mc, 11
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = load atomic volatile i16, ptr %i.me monotonic, align 2, !noalias !138
  %i.mg = and i16 %i.mf, 15
  switch i16 %i.mg, label %bb.da [
    i16 8, label %bb.cq
    i16 0, label %bb.cr
    i16 9, label %bb.db
    i16 1, label %bb.db
    i16 10, label %bb.cs
    i16 2, label %bb.cw
    i16 11, label %bb.db
    i16 3, label %bb.db
    i16 13, label %bb.db
    i16 5, label %bb.db
  ]

bb.cq:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83

bb.cr:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83

bb.cs:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !noalias !139
  %i.ml = inttoptr i64 %i.mk to ptr               ; 6 uses
  %i.mm = load atomic volatile i64, ptr %i.lz monotonic, align 8, !noalias !139
  %i.mn = add i64 %i.mm, 11
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = load atomic volatile i16, ptr %i.mo monotonic, align 2, !noalias !139
  %i.mq = and i16 %i.mp, 16
  %.not.i77 = icmp eq i16 %i.mq, 0
  br i1 %.not.i77, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mr = load ptr, ptr %i.ml, align 8, !noalias !139
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !139
  %i.mu = tail call noundef zeroext i1 %i.mt(ptr noundef nonnull align 8 dereferenceable(8) %i.ml) #21, !noalias !139, !inline_history !40
  br i1 %i.mu, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #21, !noalias !139
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !noalias !139
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83

bb.cv:                                            ; preds = %bb.ct, %bb.cs
  %i.mx = load ptr, ptr %i.ml, align 8, !noalias !139
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 72
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !139
  %i.na = tail call noundef ptr %i.mz(ptr noundef nonnull align 8 dereferenceable(16) %i.ml) #21, !noalias !139, !inline_history !40
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83

bb.cw:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !noalias !140
  %i.nd = inttoptr i64 %i.nc to ptr               ; 6 uses
  %i.ne = load atomic volatile i64, ptr %i.lz monotonic, align 8, !noalias !140
  %i.nf = add i64 %i.ne, 11
  %i.ng = inttoptr i64 %i.nf to ptr
  %i.nh = load atomic volatile i16, ptr %i.ng monotonic, align 2, !noalias !140
  %i.ni = and i16 %i.nh, 16
  %.not.i80 = icmp eq i16 %i.ni, 0
  br i1 %.not.i80, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nj = load ptr, ptr %i.nd, align 8, !noalias !140
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !noalias !140
  %i.nm = tail call noundef zeroext i1 %i.nl(ptr noundef nonnull align 8 dereferenceable(8) %i.nd) #21, !noalias !140, !inline_history !41
  br i1 %i.nm, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #21, !noalias !140
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !noalias !140
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  %i.np = load ptr, ptr %i.nd, align 8, !noalias !140
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  %i.nr = load ptr, ptr %i.nq, align 8, !noalias !140
  %i.ns = tail call noundef ptr %i.nr(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #21, !noalias !140, !inline_history !41
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83

bb.da:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.5) #22, !noalias !141
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83: ; preds = %bb.cy, %bb.cu, %bb.cz, %bb.cv, %bb.cr, %bb.cq
  %.sroa.0402.sroa.0.0.ph = phi ptr [ %i.no, %bb.cy ], [ %i.mw, %bb.cu ], [ %i.ns, %bb.cz ], [ %i.na, %bb.cv ], [ %i.mi, %bb.cr ], [ %i.mh, %bb.cq ]
  %.sroa.0402.sroa.8.0.ph = phi i32 [ 2, %bb.cy ], [ 1, %bb.cu ], [ 2, %bb.cz ], [ 1, %bb.cv ], [ 2, %bb.cr ], [ 1, %bb.cq ]
  store ptr %.sroa.0402.sroa.0.0.ph, ptr %3, align 8
  %.sroa.0402.sroa.7.0..sroa_idx456 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.mb, ptr %.sroa.0402.sroa.7.0..sroa_idx456, align 8
  %.sroa.0402.sroa.8.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.0402.sroa.8.0.ph, ptr %.sroa.0402.sroa.8.0..sroa_idx462, align 4
  %.sroa.0402.sroa.9.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %8, ptr %.sroa.0402.sroa.9.0..sroa_idx468, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34

bb.db:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i, %_ZN2v88internal15JsonStringifier6AppendIhtEEvT_.exit95.i
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %3, ptr noundef nonnull align 4 dereferenceable(16) %i.lz, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %2) #21
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34: ; preds = %bb.db, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit83
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 8, !range !33, !noundef !34
  %i.nv = trunc nuw i8 %i.nu to i1
  store i8 0, ptr %i.nt, align 8
  br i1 %i.nv, label %bb.dc, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85

bb.dc:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34
  %i.nw = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i.i.i84 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i.i.i84, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nw) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85: ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i34, %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !135
  %i.nx = load ptr, ptr %3, align 8               ; 9 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nz = load i32, ptr %i.ny, align 8            ; 4 uses
  %i.oa = zext i32 %i.nz to i64                   ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ob = icmp ugt i32 %i.nz, 16384
  br i1 %i.ob, label %.lr.ph743, label %.split654, !prof !39

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader: ; preds = %.split654
  %.not801 = icmp eq i32 %i.nz, 0
  br i1 %.not801, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge, label %.lr.ph743

.lr.ph743:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  br label %bb.fl

.split654:                                        ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit85
  %i.od = shl nuw nsw i64 %i.oa, 3
  %i.oe = load i64, ptr %i.lv, align 8
  %i.of = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = icmp ugt i64 %i.og, %i.od
  br i1 %i.oh, label %bb.de, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader, !prof !36

bb.de:                                            ; preds = %.split654
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %i.of ; 3 uses
  %.not800 = icmp eq i32 %i.nz, 0
  br i1 %.not800, label %._crit_edge, label %.lr.ph700

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, %bb.de
  %.sroa.6354.0.lcssa = phi ptr [ %i.ok, %bb.de ], [ %.sroa.6354.4, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ] ; 19 uses
  %.053.i.lcssa = phi i64 [ 0, %bb.de ], [ %.255.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ] ; 3 uses
  %.0.i56.lcssa = phi i1 [ false, %bb.de ], [ %.2.i61, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ]
  %i.ol = icmp eq i64 %.053.i.lcssa, %i.oa
  br i1 %i.ol, label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit, label %bb.df

bb.df:                                            ; preds = %._crit_edge
  %i.om = sub i64 %i.oa, %.053.i.lcssa            ; 3 uses
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %.053.i.lcssa ; 17 uses
  switch i64 %i.om, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.dg
    i64 2, label %bb.dh
    i64 3, label %bb.di
    i64 4, label %bb.dj
    i64 5, label %bb.dk
    i64 6, label %bb.dl
    i64 7, label %bb.dm
    i64 8, label %bb.dn
    i64 9, label %bb.do
    i64 10, label %bb.dp
    i64 11, label %bb.dq
    i64 12, label %bb.dr
    i64 13, label %bb.ds
    i64 14, label %bb.dt
    i64 15, label %bb.du
    i64 16, label %bb.dv
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.dg:                                            ; preds = %bb.df
  %i.oo = load i16, ptr %i.on, align 2
  store i16 %i.oo, ptr %.sroa.6354.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dh:                                            ; preds = %bb.df
  %i.op = load i32, ptr %i.on, align 2
  store i32 %i.op, ptr %.sroa.6354.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.di:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(6) %i.on, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dj:                                            ; preds = %bb.df
  %i.oq = load i64, ptr %i.on, align 2
  store i64 %i.oq, ptr %.sroa.6354.0.lcssa, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dk:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(10) %i.on, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dl:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(12) %i.on, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dm:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(14) %i.on, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dn:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(16) %i.on, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.do:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(18) %i.on, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dp:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(20) %i.on, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dq:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(22) %i.on, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dr:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(24) %i.on, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ds:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(26) %i.on, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dt:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(28) %i.on, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.du:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(30) %i.on, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.dv:                                            ; preds = %bb.df
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.6354.0.lcssa, ptr noundef nonnull align 2 dereferenceable(32) %i.on, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.df
  %.idx.i.i.i = shl nuw nsw i64 %i.om, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.6354.0.lcssa, ptr nonnull align 2 %i.on, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.du, %bb.dv, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6354.0.lcssa, i64 %i.om
  br label %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit

.lr.ph700:                                        ; preds = %bb.de, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread
  %.0.i56699 = phi i1 [ %.2.i61, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ false, %bb.de ] ; 2 uses
  %.053.i698 = phi i64 [ %.255.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %bb.de ] ; 7 uses
  %.056.i697 = phi i64 [ %i.qy, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ 0, %bb.de ] ; 11 uses
  %.sroa.6354.0696 = phi ptr [ %.sroa.6354.4, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread ], [ %i.ok, %bb.de ] ; 40 uses
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %.056.i697
  %i.ot = load i16, ptr %i.os, align 2            ; 11 uses
  %i.ou = and i16 %i.ot, -2
  %or.cond.i = icmp eq i16 %i.ou, 32
  br i1 %or.cond.i, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph700
  %i.ov = icmp ugt i16 %i.ot, 34
  %i.ow = icmp ne i16 %i.ot, 92
  %or.cond5.i = and i1 %i.ov, %i.ow
  %i.ox = add i16 %i.ot, 8192
  %i.oy = icmp ult i16 %i.ox, -2048
  %or.cond = and i1 %or.cond5.i, %i.oy
  br i1 %or.cond, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655: ; preds = %bb.dw
  %i.oz = icmp slt i16 %i.ot, -8192
  %i.pa = icmp eq i64 %.053.i698, %.056.i697      ; 2 uses
  br i1 %i.oz, label %bb.dx, label %bb.et

bb.dx:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655
  br i1 %i.pa, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pb = sub i64 %.056.i697, %.053.i698          ; 3 uses
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %.053.i698 ; 17 uses
  switch i64 %i.pb, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i88 [
    i64 1, label %bb.dz
    i64 2, label %bb.ea
    i64 3, label %bb.eb
    i64 4, label %bb.ec
    i64 5, label %bb.ed
    i64 6, label %bb.ee
    i64 7, label %bb.ef
    i64 8, label %bb.eg
    i64 9, label %bb.eh
    i64 10, label %bb.ei
    i64 11, label %bb.ej
    i64 12, label %bb.ek
    i64 13, label %bb.el
    i64 14, label %bb.em
    i64 15, label %bb.en
    i64 16, label %bb.eo
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.pd = load i16, ptr %i.pc, align 2
  store i16 %i.pd, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ea:                                            ; preds = %bb.dy
  %i.pe = load i32, ptr %i.pc, align 2
  store i32 %i.pe, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eb:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(6) %i.pc, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ec:                                            ; preds = %bb.dy
  %i.pf = load i64, ptr %i.pc, align 2
  store i64 %i.pf, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ed:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(10) %i.pc, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ee:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(12) %i.pc, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ef:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(14) %i.pc, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eg:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(16) %i.pc, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eh:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(18) %i.pc, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ei:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(20) %i.pc, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ej:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(22) %i.pc, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.ek:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(24) %i.pc, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.el:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(26) %i.pc, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.em:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(28) %i.pc, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.en:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(30) %i.pc, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

bb.eo:                                            ; preds = %bb.dy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(32) %i.pc, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i88: ; preds = %bb.dy
  %.idx.i.i.i89 = shl nuw nsw i64 %i.pb, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.6354.0696, ptr nonnull align 2 %i.pc, i64 %.idx.i.i.i89, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90:  ; preds = %bb.dy, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ed, %bb.ee, %bb.ef, %bb.eg, %bb.eh, %bb.ei, %bb.ej, %bb.ek, %bb.el, %bb.em, %bb.en, %bb.eo, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i88
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6354.0696, i64 %i.pb
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i: ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90, %bb.dx
  %.sroa.6354.5 = phi ptr [ %.sroa.6354.0696, %bb.dx ], [ %i.pg, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit90 ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ph = icmp samesign ult i16 %i.ot, -9216
  br i1 %i.ph, label %bb.ep, label %.preheader685.preheader

.preheader685.preheader:                          ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 2
  store i16 92, ptr %.sroa.6354.5, align 2
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 4 ; 2 uses
  store i16 117, ptr %i.pi, align 2
  %i.pk = uitofp i16 %i.ot to double
  %i.pl = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.pk, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.pm = extractvalue { i64, ptr } %i.pl, 0      ; 2 uses
  %i.pn = extractvalue { i64, ptr } %i.pl, 1
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.pj, ptr noundef %i.pn, i64 noundef %i.pm)
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.pj, i64 %i.pm
  br label %bb.es

bb.ep:                                            ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit61.i
  %i.pp = add nuw i64 %.056.i697, 1               ; 3 uses
  %i.pq = icmp ult i64 %i.pp, %i.oa
  br i1 %i.pq, label %bb.eq, label %.preheader684.preheader

.preheader684.preheader:                          ; preds = %bb.ep
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 2
  store i16 92, ptr %.sroa.6354.5, align 2
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 4 ; 2 uses
  store i16 117, ptr %i.pr, align 2
  %i.pt = uitofp i16 %i.ot to double
  %i.pu = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.pt, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.pv = extractvalue { i64, ptr } %i.pu, 0      ; 2 uses
  %i.pw = extractvalue { i64, ptr } %i.pu, 1
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.ps, ptr noundef %i.pw, i64 noundef %i.pv)
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.ps, i64 %i.pv
  br label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %i.pp
  %i.pz = load i16, ptr %i.py, align 2            ; 2 uses
  %i.qa = and i16 %i.pz, -1024
  %i.qb = icmp eq i16 %i.qa, -9216
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 2 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.6354.5, i64 4 ; 3 uses
  br i1 %i.qb, label %bb.er, label %.preheader683.preheader

.preheader683.preheader:                          ; preds = %bb.eq
  store i16 92, ptr %.sroa.6354.5, align 2
  store i16 117, ptr %i.qc, align 2
  %i.qe = uitofp i16 %i.ot to double
  %i.qf = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.qe, i32 noundef 16, ptr nonnull %i.a, i64 2200) #21 ; 2 uses
  %i.qg = extractvalue { i64, ptr } %i.qf, 0      ; 2 uses
  %i.qh = extractvalue { i64, ptr } %i.qf, 1
  call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.qd, ptr noundef %i.qh, i64 noundef %i.qg)
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.qd, i64 %i.qg
  br label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i16 %i.ot, ptr %.sroa.6354.5, align 2
  store i16 %i.pz, ptr %i.qc, align 2
  br label %bb.es

bb.es:                                            ; preds = %.preheader685.preheader, %.preheader684.preheader, %.preheader683.preheader, %bb.er
  %.sroa.6354.7 = phi ptr [ %i.qd, %bb.er ], [ %i.qi, %.preheader683.preheader ], [ %i.px, %.preheader684.preheader ], [ %i.po, %.preheader685.preheader ]
  %.258.i = phi i64 [ %i.pp, %bb.er ], [ %.056.i697, %.preheader683.preheader ], [ %.056.i697, %.preheader684.preheader ], [ %.056.i697, %.preheader685.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i

bb.et:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread655
  br i1 %i.pa, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.qj = sub i64 %.056.i697, %.053.i698          ; 3 uses
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %.053.i698 ; 17 uses
  switch i64 %i.qj, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i93 [
    i64 1, label %bb.ev
    i64 2, label %bb.ew
    i64 3, label %bb.ex
    i64 4, label %bb.ey
    i64 5, label %bb.ez
    i64 6, label %bb.fa
    i64 7, label %bb.fb
    i64 8, label %bb.fc
    i64 9, label %bb.fd
    i64 10, label %bb.fe
    i64 11, label %bb.ff
    i64 12, label %bb.fg
    i64 13, label %bb.fh
    i64 14, label %bb.fi
    i64 15, label %bb.fj
    i64 16, label %bb.fk
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.ql = load i16, ptr %i.qk, align 2
  store i16 %i.ql, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ew:                                            ; preds = %bb.eu
  %i.qm = load i32, ptr %i.qk, align 2
  store i32 %i.qm, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ex:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(6) %i.qk, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ey:                                            ; preds = %bb.eu
  %i.qn = load i64, ptr %i.qk, align 2
  store i64 %i.qn, ptr %.sroa.6354.0696, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ez:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(10) %i.qk, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fa:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(12) %i.qk, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fb:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(14) %i.qk, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fc:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(16) %i.qk, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fd:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(18) %i.qk, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fe:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(20) %i.qk, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.ff:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(22) %i.qk, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fg:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(24) %i.qk, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fh:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(26) %i.qk, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fi:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(28) %i.qk, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fj:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(30) %i.qk, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

bb.fk:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.6354.0696, ptr noundef nonnull align 2 dereferenceable(32) %i.qk, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i93: ; preds = %bb.eu
  %.idx.i.i.i94 = shl nuw nsw i64 %i.qj, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %.sroa.6354.0696, ptr nonnull align 2 %i.qk, i64 %.idx.i.i.i94, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95:  ; preds = %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fh, %bb.fi, %bb.fj, %bb.fk, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i93
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6354.0696, i64 %i.qj
  br label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i: ; preds = %bb.et, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95
  %.sroa.6354.1 = phi ptr [ %.sroa.6354.0696, %bb.et ], [ %i.qo, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit95 ]
  %i.qp = zext i16 %i.ot to i64
  %i.qq = shl nuw nsw i64 %i.qp, 3
  %i.qr = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.qq ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i, %.lr.ph
  %i.qt = phi i8 [ %i.qx, %.lr.ph ], [ %i.qs, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ]
  %.0.i.i57689 = phi ptr [ %i.qu, %.lr.ph ], [ %i.qr, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ]
  %.sroa.6354.2688 = phi ptr [ %i.qw, %.lr.ph ], [ %.sroa.6354.1, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE15AppendSubstringItEEvPKT_mm.exit60.i ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.0.i.i57689, i64 1 ; 2 uses
  %i.qv = zext i8 %i.qt to i16
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.6354.2688, i64 2 ; 2 uses
  store i16 %i.qv, ptr %.sroa.6354.2688, align 2
  %i.qx = load i8, ptr %i.qu, align 1             ; 2 uses
  %.not.i.i58 = icmp eq i8 %i.qx, 0
  br i1 %.not.i.i58, label %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i, label %.lr.ph, !llvm.loop !102

_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i: ; preds = %.lr.ph, %bb.es
  %.sroa.6354.3 = phi ptr [ %.sroa.6354.7, %bb.es ], [ %i.qw, %.lr.ph ]
  %.3.i59 = phi i64 [ %.258.i, %bb.es ], [ %.056.i697, %.lr.ph ] ; 2 uses
  %.154.i = add nuw i64 %.3.i59, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit.thread: ; preds = %bb.dw, %.lr.ph700, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i
  %.sroa.6354.4 = phi ptr [ %.sroa.6354.0696, %bb.dw ], [ %.sroa.6354.3, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.sroa.6354.0696, %.lr.ph700 ] ; 2 uses
  %.4.i60 = phi i64 [ %.056.i697, %bb.dw ], [ %.3.i59, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.056.i697, %.lr.ph700 ]
  %.255.i = phi i64 [ %.053.i698, %bb.dw ], [ %.154.i, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.053.i698, %.lr.ph700 ] ; 2 uses
  %.2.i61 = phi i1 [ %.0.i56699, %bb.dw ], [ true, %_ZN2v88internal15JsonStringifier15NoExtendBuilderItE13AppendCStringEPKc.exit.i ], [ %.0.i56699, %.lr.ph700 ] ; 2 uses
  %i.qy = add nuw i64 %.4.i60, 1                  ; 2 uses
  %i.qz = icmp ult i64 %i.qy, %i.oa
  br i1 %i.qz, label %.lr.ph700, label %._crit_edge, !llvm.loop !119

_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit: ; preds = %._crit_edge, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %.sroa.6354.10 = phi ptr [ %.sroa.6354.0.lcssa, %._crit_edge ], [ %i.or, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ]
  %i.ra = ptrtoint ptr %.sroa.6354.10 to i64
  %i.rb = ptrtoint ptr %i.ok to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 1
  %i.re = load i64, ptr %i.lq, align 8
  %i.rf = add i64 %i.rd, %i.re
  br label %bb.gx

_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader
  %.045.i.lcssa = phi i64 [ 0, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader ], [ %.247.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ]
  %.0.i36.lcssa = phi i1 [ false, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35.preheader ], [ %.2.i38, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ]
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringItEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef %i.nx, i64 noundef %.045.i.lcssa, i64 noundef %i.oa)
  %.pre831 = load i64, ptr %i.lq, align 8
  br label %bb.gx

bb.fl:                                            ; preds = %.lr.ph743, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread
  %.0.i36742 = phi i1 [ false, %.lr.ph743 ], [ %.2.i38, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ] ; 2 uses
  %.045.i741 = phi i64 [ 0, %.lr.ph743 ], [ %.247.i, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ] ; 3 uses
  %.048.i740 = phi i64 [ 0, %.lr.ph743 ], [ %i.aar, %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread ] ; 19 uses
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %.048.i740
  %i.rh = load i16, ptr %i.rg, align 2            ; 11 uses
  %i.ri = and i16 %i.rh, -2
  %or.cond.i96 = icmp eq i16 %i.ri, 32
  br i1 %or.cond.i96, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.rj = icmp ugt i16 %i.rh, 34
  %i.rk = icmp ne i16 %i.rh, 92
  %or.cond5.i97 = and i1 %i.rj, %i.rk
  %i.rl = add i16 %i.rh, 8192
  %i.rm = icmp ult i16 %i.rl, -2048
  %or.cond659 = and i1 %or.cond5.i97, %i.rm
  br i1 %or.cond659, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread, label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread656

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread656: ; preds = %bb.fm
  %i.rn = icmp slt i16 %i.rh, -8192
  call void @_ZN2v88internal15JsonStringifier15AppendSubstringItEEvPKT_mm(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr noundef nonnull %i.nx, i64 noundef %.045.i741, i64 noundef %.048.i740)
  br i1 %i.rn, label %bb.fn, label %bb.gu

bb.fn:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ro = icmp samesign ult i16 %i.rh, -9216
  br i1 %i.ro, label %bb.fo, label %bb.gl

bb.fo:                                            ; preds = %bb.fn
  %i.rp = add nuw i64 %.048.i740, 1               ; 4 uses
  %i.rq = icmp ult i64 %i.rp, %i.oa
  br i1 %i.rq, label %bb.fp, label %bb.gc

bb.fp:                                            ; preds = %bb.fo
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.nx, i64 %i.rp
  %i.rs = load i16, ptr %i.rr, align 2            ; 2 uses
  %i.rt = and i16 %i.rs, -1024
  %i.ru = icmp eq i16 %i.rt, -9216
  br i1 %i.ru, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.rv = load ptr, ptr %i.lo, align 8
  %i.rw = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.rx = add i64 %i.rw, 1
  store i64 %i.rx, ptr %i.lq, align 8
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rv, i64 %i.rw
  store i16 %i.rh, ptr %i.ry, align 2
  %i.rz = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.sa = load i64, ptr %i.lv, align 8
  %i.sb = icmp eq i64 %i.rz, %i.sa
  br i1 %i.sb, label %bb.fr, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62, !prof !32

bb.fr:                                            ; preds = %bb.fq
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre830 = load i64, ptr %i.lq, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62

_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62: ; preds = %bb.fq, %bb.fr
  %i.sc = phi i64 [ %i.rz, %bb.fq ], [ %.pre830, %bb.fr ] ; 2 uses
  %i.sd = load ptr, ptr %i.lo, align 8
  %i.se = add i64 %i.sc, 1
  store i64 %i.se, ptr %i.lq, align 8
  %i.sf = getelementptr inbounds nuw [2 x i8], ptr %i.sd, i64 %i.sc
  store i16 %i.rs, ptr %i.sf, align 2
  %i.sg = load i64, ptr %i.lq, align 8
  %i.sh = load i64, ptr %i.lv, align 8
  %i.si = icmp eq i64 %i.sg, %i.sh
  br i1 %i.si, label %bb.fs, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, !prof !32

bb.fs:                                            ; preds = %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit

bb.ft:                                            ; preds = %bb.fp
  %i.sj = load i32, ptr %i.at, align 8
  %i.sk = icmp eq i32 %i.sj, 0
  %i.sl = load i64, ptr %i.lq, align 8            ; 6 uses
  br i1 %i.sk, label %bb.fu, label %.critedge.preheader.preheader

.critedge.preheader.preheader:                    ; preds = %bb.ft
  %i.sm = load ptr, ptr %i.lo, align 8
  %i.sn = add i64 %i.sl, 1
  store i64 %i.sn, ptr %i.lq, align 8
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.sm, i64 %i.sl
  store i16 92, ptr %i.so, align 2
  %i.sp = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.sq = load i64, ptr %i.lv, align 8
  %i.sr = icmp eq i64 %i.sp, %i.sq
  br i1 %i.sr, label %bb.fx, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i, !prof !32

bb.fu:                                            ; preds = %bb.ft
  %i.ss = load i64, ptr %i.lv, align 8
  %i.st = sub i64 %i.ss, %i.sl
  %i.su = icmp ugt i64 %i.st, 3
  %i.sv = load ptr, ptr %i.oc, align 8            ; 2 uses
  br i1 %i.su, label %bb.fv, label %.preheader670.preheader

.preheader670.preheader:                          ; preds = %bb.fu
  %i.sw = add i64 %i.sl, 1
  store i64 %i.sw, ptr %i.lq, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sl
  store i8 92, ptr %i.sx, align 1
  %i.sy = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.sz = load i64, ptr %i.lv, align 8
  %i.ta = icmp eq i64 %i.sy, %i.sz
  br i1 %i.ta, label %bb.fw, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i, !prof !32

bb.fv:                                            ; preds = %bb.fu
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sl
  store i16 30044, ptr %i.tb, align 1
  %i.tc = load i64, ptr %i.lq, align 8
  %i.td = add i64 %i.tc, 2                        ; 2 uses
  store i64 %i.td, ptr %i.lq, align 8
  %i.te = load i64, ptr %i.lv, align 8
  %i.tf = icmp eq i64 %i.td, %i.te
  br i1 %i.tf, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i

bb.fw:                                            ; preds = %.preheader670.preheader
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre829 = load i64, ptr %i.lq, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i: ; preds = %bb.fw, %.preheader670.preheader
  %i.tg = phi i64 [ %.pre829, %bb.fw ], [ %i.sy, %.preheader670.preheader ] ; 2 uses
  %i.th = load ptr, ptr %i.oc, align 8
  %i.ti = add i64 %i.tg, 1
  store i64 %i.ti, ptr %i.lq, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tg
  store i8 117, ptr %i.tj, align 1
  %i.tk = load i64, ptr %i.lq, align 8
  %i.tl = load i64, ptr %i.lv, align 8
  %i.tm = icmp eq i64 %i.tk, %i.tl
  br i1 %i.tm, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i, !prof !32

bb.fx:                                            ; preds = %.critedge.preheader.preheader
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre828 = load i64, ptr %i.lq, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i: ; preds = %bb.fx, %.critedge.preheader.preheader
  %i.tn = phi i64 [ %.pre828, %bb.fx ], [ %i.sp, %.critedge.preheader.preheader ] ; 2 uses
  %i.to = load ptr, ptr %i.lo, align 8
  %i.tp = add i64 %i.tn, 1
  store i64 %i.tp, ptr %i.lq, align 8
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %i.to, i64 %i.tn
  store i16 117, ptr %i.tq, align 2
  %i.tr = load i64, ptr %i.lq, align 8
  %i.ts = load i64, ptr %i.lv, align 8
  %i.tt = icmp eq i64 %i.tr, %i.ts
  br i1 %i.tt, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i, !prof !32

_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i, %bb.fv
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i

_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i: ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i.sink.split, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit90.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit84.i, %bb.fv
  %i.tu = uitofp i16 %i.rh to double
  %i.tv = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.tu, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.tw = extractvalue { i64, ptr } %i.tv, 0      ; 2 uses
  %i.tx = extractvalue { i64, ptr } %i.tv, 1      ; 3 uses
  %i.ty = load i32, ptr %i.at, align 8
  %i.tz = icmp eq i32 %i.ty, 0
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tw ; 2 uses
  %.not15.i61.i736 = icmp samesign eq i64 %i.tw, 0 ; 2 uses
  br i1 %i.tz, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i
  br i1 %.not15.i61.i736, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph739

.lr.ph739:                                        ; preds = %bb.fy, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i
  %.014.i60.i737 = phi ptr [ %i.uj, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i ], [ %i.tx, %bb.fy ] ; 2 uses
  %i.ub = load i8, ptr %.014.i60.i737, align 1
  %i.uc = load ptr, ptr %i.oc, align 8
  %i.ud = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.ue = add i64 %i.ud, 1
  store i64 %i.ue, ptr %i.lq, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ud
  store i8 %i.ub, ptr %i.uf, align 1
  %i.ug = load i64, ptr %i.lq, align 8
  %i.uh = load i64, ptr %i.lv, align 8
  %i.ui = icmp eq i64 %i.ug, %i.uh
  br i1 %i.ui, label %bb.fz, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i, !prof !32

bb.fz:                                            ; preds = %.lr.ph739
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i: ; preds = %bb.fz, %.lr.ph739
  %i.uj = getelementptr inbounds nuw i8, ptr %.014.i60.i737, i64 1 ; 2 uses
  %.not15.i61.i = icmp eq ptr %i.uj, %i.ua
  br i1 %.not15.i61.i, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph739

bb.ga:                                            ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit64.i
  br i1 %.not15.i61.i736, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph735

.lr.ph735:                                        ; preds = %bb.ga, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i
  %.0.i58.i733 = phi ptr [ %i.ut, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i ], [ %i.tx, %bb.ga ] ; 2 uses
  %i.uk = load i8, ptr %.0.i58.i733, align 1
  %i.ul = zext i8 %i.uk to i16
  %i.um = load ptr, ptr %i.lo, align 8
  %i.un = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.uo = add i64 %i.un, 1
  store i64 %i.uo, ptr %i.lq, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal15JsonStringifier15SerializeStringILb0EEEbNS0_6HandleINS0_6StringEEE:bb.a
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wo
  store i8 %i.wm, ptr %i.wq, align 1
  %i.wr = load i64, ptr %i.lq, align 8
  %i.ws = load i64, ptr %i.lv, align 8
  %i.wt = icmp eq i64 %i.wr, %i.ws
  br i1 %i.wt, label %bb.gi, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit86.i, !prof !32

bb.gi:                                            ; preds = %.lr.ph729
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit86.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit86.i: ; preds = %bb.gi, %.lr.ph729
  %i.wu = getelementptr inbounds nuw i8, ptr %.014.i55.i727, i64 1 ; 2 uses
  %.not15.i56.i = icmp eq ptr %i.wu, %i.wl
  br i1 %.not15.i56.i, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph729

bb.gj:                                            ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit63.i
  br i1 %.not15.i56.i726, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph725

.lr.ph725:                                        ; preds = %bb.gj, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit92.i
  %.0.i53.i723 = phi ptr [ %i.xe, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit92.i ], [ %i.wi, %bb.gj ] ; 2 uses
  %i.wv = load i8, ptr %.0.i53.i723, align 1
  %i.ww = zext i8 %i.wv to i16
  %i.wx = load ptr, ptr %i.lo, align 8
  %i.wy = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.wz = add i64 %i.wy, 1
  store i64 %i.wz, ptr %i.lq, align 8
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.wx, i64 %i.wy
  store i16 %i.ww, ptr %i.xa, align 2
  %i.xb = load i64, ptr %i.lq, align 8
  %i.xc = load i64, ptr %i.lv, align 8
  %i.xd = icmp eq i64 %i.xb, %i.xc
  br i1 %i.xd, label %bb.gk, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit92.i, !prof !32

bb.gk:                                            ; preds = %.lr.ph725
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit92.i

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit92.i: ; preds = %bb.gk, %.lr.ph725
  %i.xe = getelementptr inbounds nuw i8, ptr %.0.i53.i723, i64 1 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.xe, %i.wl
  br i1 %.not.i54.i, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph725

bb.gl:                                            ; preds = %bb.fn
  %i.xf = load i32, ptr %i.at, align 8
  %i.xg = icmp eq i32 %i.xf, 0
  %i.xh = load i64, ptr %i.lq, align 8            ; 6 uses
  br i1 %i.xg, label %bb.gm, label %.critedge663.preheader.preheader

.critedge663.preheader.preheader:                 ; preds = %bb.gl
  %i.xi = load ptr, ptr %i.lo, align 8
  %i.xj = add i64 %i.xh, 1
  store i64 %i.xj, ptr %i.lq, align 8
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.xi, i64 %i.xh
  store i16 92, ptr %i.xk, align 2
  %i.xl = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.xm = load i64, ptr %i.lv, align 8
  %i.xn = icmp eq i64 %i.xl, %i.xm
  br i1 %i.xn, label %bb.gp, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit88.i, !prof !32

bb.gm:                                            ; preds = %bb.gl
  %i.xo = load i64, ptr %i.lv, align 8
  %i.xp = sub i64 %i.xo, %i.xh
  %i.xq = icmp ugt i64 %i.xp, 3
  %i.xr = load ptr, ptr %i.oc, align 8            ; 2 uses
  br i1 %i.xq, label %bb.gn, label %.preheader678.preheader

.preheader678.preheader:                          ; preds = %bb.gm
  %i.xs = add i64 %i.xh, 1
  store i64 %i.xs, ptr %i.lq, align 8
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xh
  store i8 92, ptr %i.xt, align 1
  %i.xu = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.xv = load i64, ptr %i.lv, align 8
  %i.xw = icmp eq i64 %i.xu, %i.xv
  br i1 %i.xw, label %bb.go, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit82.i, !prof !32

bb.gn:                                            ; preds = %bb.gm
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xh
  store i16 30044, ptr %i.xx, align 1
  %i.xy = load i64, ptr %i.lq, align 8
  %i.xz = add i64 %i.xy, 2                        ; 2 uses
  store i64 %i.xz, ptr %i.lq, align 8
  %i.ya = load i64, ptr %i.lv, align 8
  %i.yb = icmp eq i64 %i.xz, %i.ya
  br i1 %i.yb, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i

bb.go:                                            ; preds = %.preheader678.preheader
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre825 = load i64, ptr %i.lq, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit82.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit82.i: ; preds = %bb.go, %.preheader678.preheader
  %i.yc = phi i64 [ %.pre825, %bb.go ], [ %i.xu, %.preheader678.preheader ] ; 2 uses
  %i.yd = load ptr, ptr %i.oc, align 8
  %i.ye = add i64 %i.yc, 1
  store i64 %i.ye, ptr %i.lq, align 8
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 %i.yc
  store i8 117, ptr %i.yf, align 1
  %i.yg = load i64, ptr %i.lq, align 8
  %i.yh = load i64, ptr %i.lv, align 8
  %i.yi = icmp eq i64 %i.yg, %i.yh
  br i1 %i.yi, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i, !prof !32

bb.gp:                                            ; preds = %.critedge663.preheader.preheader
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre = load i64, ptr %i.lq, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit88.i

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit88.i: ; preds = %bb.gp, %.critedge663.preheader.preheader
  %i.yj = phi i64 [ %.pre, %bb.gp ], [ %i.xl, %.critedge663.preheader.preheader ] ; 2 uses
  %i.yk = load ptr, ptr %i.lo, align 8
  %i.yl = add i64 %i.yj, 1
  store i64 %i.yl, ptr %i.lq, align 8
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.yk, i64 %i.yj
  store i16 117, ptr %i.ym, align 2
  %i.yn = load i64, ptr %i.lq, align 8
  %i.yo = load i64, ptr %i.lv, align 8
  %i.yp = icmp eq i64 %i.yn, %i.yo
  br i1 %i.yp, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i.sink.split, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i, !prof !32

_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i.sink.split: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit88.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit82.i, %bb.gn
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i

_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i: ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i.sink.split, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit88.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit82.i, %bb.gn
  %i.yq = uitofp i16 %i.rh to double
  %i.yr = call { i64, ptr } @_ZN2v88internal23DoubleToRadixStringViewEdiNS_4base6VectorIcEE(double noundef %i.yq, i32 noundef 16, ptr nonnull %i.b, i64 2200) #21 ; 2 uses
  %i.ys = extractvalue { i64, ptr } %i.yr, 0      ; 2 uses
  %i.yt = extractvalue { i64, ptr } %i.yr, 1      ; 3 uses
  %i.yu = load i32, ptr %i.at, align 8
  %i.yv = icmp eq i32 %i.yu, 0
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.ys ; 2 uses
  %.not15.i.i716 = icmp samesign eq i64 %i.ys, 0  ; 2 uses
  br i1 %i.yv, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i
  br i1 %.not15.i.i716, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph719

.lr.ph719:                                        ; preds = %bb.gq, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit87.i
  %.014.i.i717 = phi ptr [ %i.zf, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit87.i ], [ %i.yt, %bb.gq ] ; 2 uses
  %i.yx = load i8, ptr %.014.i.i717, align 1
  %i.yy = load ptr, ptr %i.oc, align 8
  %i.yz = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.za = add i64 %i.yz, 1
  store i64 %i.za, ptr %i.lq, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 %i.yz
  store i8 %i.yx, ptr %i.zb, align 1
  %i.zc = load i64, ptr %i.lq, align 8
  %i.zd = load i64, ptr %i.lv, align 8
  %i.ze = icmp eq i64 %i.zc, %i.zd
  br i1 %i.ze, label %bb.gr, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit87.i, !prof !32

bb.gr:                                            ; preds = %.lr.ph719
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit87.i

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit87.i: ; preds = %bb.gr, %.lr.ph719
  %i.zf = getelementptr inbounds nuw i8, ptr %.014.i.i717, i64 1 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.zf, %i.yw
  br i1 %.not15.i.i, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph719

bb.gs:                                            ; preds = %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm3EEEvRAT__Kc.exit.i
  br i1 %.not15.i.i716, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph715

.lr.ph715:                                        ; preds = %bb.gs, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit93.i
  %.0.i.i40713 = phi ptr [ %i.zp, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit93.i ], [ %i.yt, %bb.gs ] ; 2 uses
  %i.zg = load i8, ptr %.0.i.i40713, align 1
  %i.zh = zext i8 %i.zg to i16
  %i.zi = load ptr, ptr %i.lo, align 8
  %i.zj = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.zk = add i64 %i.zj, 1
  store i64 %i.zk, ptr %i.lq, align 8
  %i.zl = getelementptr inbounds nuw [2 x i8], ptr %i.zi, i64 %i.zj
  store i16 %i.zh, ptr %i.zl, align 2
  %i.zm = load i64, ptr %i.lq, align 8
  %i.zn = load i64, ptr %i.lv, align 8
  %i.zo = icmp eq i64 %i.zm, %i.zn
  br i1 %i.zo, label %bb.gt, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit93.i, !prof !32

bb.gt:                                            ; preds = %.lr.ph715
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit93.i

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit93.i: ; preds = %bb.gt, %.lr.ph715
  %i.zp = getelementptr inbounds nuw i8, ptr %.0.i.i40713, i64 1 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.zp, %i.yw
  br i1 %.not.i.i41, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, label %.lr.ph715

_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit93.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit87.i, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit92.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit86.i, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i, %bb.gs, %bb.gq, %bb.gj, %bb.gh, %bb.ga, %bb.fy, %bb.fs, %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62
  %.250.i = phi i64 [ %.048.i740, %bb.fy ], [ %.048.i740, %bb.gh ], [ %i.rp, %bb.fs ], [ %i.rp, %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit62 ], [ %.048.i740, %bb.gq ], [ %.048.i740, %bb.ga ], [ %.048.i740, %bb.gj ], [ %.048.i740, %bb.gs ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit92.i ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit87.i ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit85.i ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit91.i ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit86.i ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit93.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i

bb.gu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread656
  %i.zq = zext i16 %i.rh to i64
  %i.zr = shl nuw nsw i64 %i.zq, 3
  %i.zs = getelementptr inbounds nuw i8, ptr @.str.33, i64 %i.zr ; 3 uses
  %i.zt = load i32, ptr %i.at, align 8
  %i.zu = icmp eq i32 %i.zt, 0
  %i.zv = load i8, ptr %i.zs, align 1             ; 2 uses
  br i1 %i.zu, label %.lr.ph709, label %.lr.ph706

.lr.ph709:                                        ; preds = %bb.gu, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39
  %i.zw = phi i8 [ %i.aaf, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39 ], [ %i.zv, %bb.gu ]
  %.0.i79.i708 = phi ptr [ %i.zx, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39 ], [ %i.zs, %bb.gu ]
  %i.zx = getelementptr inbounds nuw i8, ptr %.0.i79.i708, i64 1 ; 2 uses
  %i.zy = load ptr, ptr %i.oc, align 8
  %i.zz = load i64, ptr %i.lq, align 8            ; 2 uses
  %i.aaa = add i64 %i.zz, 1
  store i64 %i.aaa, ptr %i.lq, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zz
  store i8 %i.zw, ptr %i.aab, align 1
  %i.aac = load i64, ptr %i.lq, align 8
  %i.aad = load i64, ptr %i.lv, align 8
  %i.aae = icmp eq i64 %i.aac, %i.aad
  br i1 %i.aae, label %bb.gv, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39, !prof !32

bb.gv:                                            ; preds = %.lr.ph709
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39: ; preds = %bb.gv, %.lr.ph709
  %i.aaf = load i8, ptr %i.zx, align 1            ; 2 uses
  %.not5.i80.i = icmp eq i8 %i.aaf, 0
  br i1 %.not5.i80.i, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i, label %.lr.ph709, !llvm.loop !85

.lr.ph706:                                        ; preds = %bb.gu, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37
  %i.aag = phi i8 [ %i.aaq, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37 ], [ %i.zv, %bb.gu ]
  %.1.i77.i705 = phi ptr [ %i.aah, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37 ], [ %i.zs, %bb.gu ]
  %i.aah = getelementptr inbounds nuw i8, ptr %.1.i77.i705, i64 1 ; 2 uses
  %i.aai = zext i8 %i.aag to i16
  %i.aaj = load ptr, ptr %i.lo, align 8
  %i.aak = load i64, ptr %i.lq, align 8           ; 2 uses
  %i.aal = add i64 %i.aak, 1
  store i64 %i.aal, ptr %i.lq, align 8
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %i.aaj, i64 %i.aak
  store i16 %i.aai, ptr %i.aam, align 2
  %i.aan = load i64, ptr %i.lq, align 8
  %i.aao = load i64, ptr %i.lv, align 8
  %i.aap = icmp eq i64 %i.aan, %i.aao
  br i1 %i.aap, label %bb.gw, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37, !prof !32

bb.gw:                                            ; preds = %.lr.ph706
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37: ; preds = %bb.gw, %.lr.ph706
  %i.aaq = load i8, ptr %i.aah, align 1           ; 2 uses
  %.not.i78.i = icmp eq i8 %i.aaq, 0
  br i1 %.not.i78.i, label %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i, label %.lr.ph706, !llvm.loop !86

_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39, %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit
  %.351.i = phi i64 [ %.250.i, %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit.i39 ], [ %.048.i740, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit.i37 ] ; 2 uses
  %.146.i = add i64 %.351.i, 1
  br label %_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread

_ZN2v88internal12_GLOBAL__N_111DoNotEscapeItEEbT_.exit98.thread: ; preds = %bb.fm, %bb.fl, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i
  %.4.i = phi i64 [ %.351.i, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i ], [ %.048.i740, %bb.fm ], [ %.048.i740, %bb.fl ]
  %.247.i = phi i64 [ %.146.i, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i ], [ %.045.i741, %bb.fm ], [ %.045.i741, %bb.fl ] ; 2 uses
  %.2.i38 = phi i1 [ true, %_ZN2v88internal15JsonStringifier13AppendCStringIcEEvPKT_.exit81.i ], [ %.0.i36742, %bb.fm ], [ %.0.i36742, %bb.fl ] ; 2 uses
  %i.aar = add i64 %.4.i, 1                       ; 2 uses
  %i.aas = icmp ult i64 %i.aar, %i.oa
  br i1 %i.aas, label %bb.fl, label %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge, !llvm.loop !120

bb.gx:                                            ; preds = %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit
  %i.aat = phi i64 [ %i.rf, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %.pre831, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge ] ; 2 uses
  %.3.i.in = phi i1 [ %.0.i56.lcssa, %_ZN2v88internal15JsonStringifier25SerializeStringUnchecked_IttLb0EEEbNS_4base6VectorIKT_EEPNS1_15NoExtendBuilderIT0_EE.exit ], [ %.0.i36.lcssa, %_ZN2v88internal15JsonStringifier30EscapedLengthIfCurrentPartFitsEm.exit.i35._crit_edge ] ; 2 uses
  %i.aau = load ptr, ptr %i.lo, align 8
  %i.aav = add i64 %i.aat, 1
  store i64 %i.aav, ptr %i.lq, align 8
  %i.aaw = getelementptr inbounds nuw [2 x i8], ptr %i.aau, i64 %i.aat
  store i16 34, ptr %i.aaw, align 2
  %i.aax = load i64, ptr %i.lq, align 8
  %i.aay = load i64, ptr %i.lv, align 8
  %i.aaz = icmp eq i64 %i.aax, %i.aay
  br i1 %i.aaz, label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.sink.split, label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit, !prof !32

_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.sink.split: ; preds = %bb.gx, %bb.co, %bb.bm
  %.0.in.ph = phi i1 [ %.2.i21.in, %bb.co ], [ %.2.i.in, %bb.bm ], [ %.3.i.in, %bb.gx ]
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit

_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit: ; preds = %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.sink.split, %bb.gx, %bb.co, %bb.bm
  %.0.in = phi i1 [ %.2.i21.in, %bb.co ], [ %.3.i.in, %bb.gx ], [ %.2.i.in, %bb.bm ], [ %.0.in.ph, %_ZN2v88internal15JsonStringifier16SerializeString_IhhLb0EEEbNS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEE.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret i1 %.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal15JsonStringifier12SerializeSmiENS0_6TaggedINS0_3SmiEEE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(2688) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = lshr i64 %1, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = call { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef %i.c, ptr nonnull %i.a, i64 11) #21 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e ; 2 uses
  %.not15.i12 = icmp samesign eq i64 %i.e, 0      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not15.i12, label %_ZN2v88internal15JsonStringifier12AppendStringIcEEvSt17basic_string_viewIT_St11char_traitsIS4_EE.exit, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph14, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit
  %.014.i13 = phi ptr [ %i.f, %.lr.ph14 ], [ %i.v, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit ] ; 2 uses
  %i.n = load i8, ptr %.014.i13, align 1
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = load i64, ptr %i.l, align 8              ; 2 uses
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 %i.n, ptr %i.r, align 1
  %i.s = load i64, ptr %i.l, align 8
  %i.t = load i64, ptr %i.m, align 8
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit: ; preds = %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i13, i64 1 ; 2 uses
  %.not15.i = icmp eq ptr %i.v, %i.j
  br i1 %.not15.i, label %_ZN2v88internal15JsonStringifier12AppendStringIcEEvSt17basic_string_viewIT_St11char_traitsIS4_EE.exit, label %bb.c

bb.e:                                             ; preds = %bb.a
  br i1 %.not15.i12, label %_ZN2v88internal15JsonStringifier12AppendStringIcEEvSt17basic_string_viewIT_St11char_traitsIS4_EE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit
  %.0.i11 = phi ptr [ %i.f, %.lr.ph ], [ %i.ai, %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit ] ; 2 uses
  %i.z = load i8, ptr %.0.i11, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = load ptr, ptr %i.w, align 8
  %i.ac = load i64, ptr %i.x, align 8             ; 2 uses
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  store i16 %i.aa, ptr %i.ae, align 2
  %i.af = load i64, ptr %i.x, align 8
  %i.ag = load i64, ptr %i.y, align 8
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit, !prof !32

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit

_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit: ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i11, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i, label %_ZN2v88internal15JsonStringifier12AppendStringIcEEvSt17basic_string_viewIT_St11char_traitsIS4_EE.exit, label %bb.f

_ZN2v88internal15JsonStringifier12AppendStringIcEEvSt17basic_string_viewIT_St11char_traitsIS4_EE.exit: ; preds = %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit, %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 1
}

declare { i64, ptr } @_ZN2v88internal15IntToStringViewEiNS_4base6VectorIcEE(i32 noundef, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal15JsonStringifier15SerializeDoubleEd(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(2688) %0, double noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 3 uses
  %i.b = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp ueq double %i.b, +inf
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = load i64, ptr %i.g, align 8              ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.j
  store i16 110, ptr %i.l, align 2
  %i.m = load i64, ptr %i.g, align 8              ; 2 uses
  %i.n = load i64, ptr %i.h, align 8
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.j, label %_ZN2v88internal15JsonStringifier6AppendIctEEvT_.exit, !prof !32

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 14 uses
  %i.s = load i64, ptr %i.r, align 8              ; 4 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.t, 5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  br i1 %i.u, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.x = add i64 %i.s, 1
  store i64 %i.x, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  store i8 110, ptr %i.y, align 1
  %i.z = load i64, ptr %i.r, align 8              ; 2 uses
  %i.aa = load i64, ptr %i.p, align 8
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  store i32 1819047278, ptr %i.ac, align 1
  %i.ad = load i64, ptr %i.r, align 8
  %i.ae = add i64 %i.ad, 4                        ; 2 uses
  store i64 %i.ae, ptr %i.r, align 8
  %i.af = load i64, ptr %i.p, align 8
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm5EEEvRAT__Kc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier20AppendCStringLiteralILm5EEEvRAT__Kc.exit

bb.f:                                             ; preds = %.preheader
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  %.pre29 = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit

_ZN2v88internal15JsonStringifier6AppendIchEEvT_.exit: ; preds = %.preheader, %bb.f
  %i.ah = phi i64 [ %i.z, %.preheader ], [ %.pre29, %bb.f ] ; 2 uses
  %i.ai = load ptr, ptr %i.v, align 8
  %i.aj = add i64 %i.ah, 1
  store i64 %i.aj, ptr %i.r, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 117, ptr %i.ak, align 1
end_hunk_1
