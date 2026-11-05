Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-array?download=true
inline.NumInlined: 2118
inline.NumDeleted: 818
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_121CollectElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEjPSt6vectorIjSaIjEE:bb.a
  store ptr %.promoted, ptr %i.do, align 8
  store i32 %i.ed, ptr %i.dq, align 8
  br i1 %i.ee, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %.split, !prof !109

.split:                                           ; preds = %.critedge
  store ptr %i.dv, ptr %i.dp, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br i1 %i.fu, label %.loopexit, label %.outer.backedge

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %.critedge
  br i1 %i.fu, label %.loopexit, label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZN2v88internal11HandleScopeD2Ev.exit, %.split
  %.082379.ph.be = add i32 %.082379, 1024
  br label %.outer, !llvm.loop !100

.lr.ph376:                                        ; preds = %.lr.ph376.preheader, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit139
  %indvars.iv.a = phi i64 [ %i.ea, %.lr.ph376.preheader ], [ %indvars.iv.next.a, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit139 ] ; 2 uses
  %i.ef = mul i64 %indvars.iv.a, 12884901888
  %sext.i.i = add i64 %i.ef, 17179869184
  %i.eg = ashr exact i64 %sext.i.i, 29
  %i.eh = getelementptr inbounds i8, ptr %i.dr, i64 %i.eg
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8 ; 5 uses
  %i.ej = load i64, ptr %i.dn, align 8
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit139, label %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph376
  %i.el = load i64, ptr %i.ds, align 8
  %.not352 = icmp eq i64 %i.ei, %i.el
  br i1 %.not352, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit139, label %bb.v

bb.v:                                             ; preds = %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %i.em = and i64 %i.ei, 1
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eo = lshr i64 %i.ei, 32
  %i.ep = trunc nuw i64 %i.eo to i32
  %i.eq = sitofp i32 %i.ep to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

bb.x:                                             ; preds = %bb.v
  %i.er = add nsw i64 %i.ei, -1
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.et, align 2
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %bb.w, %bb.x
  %i.eu = phi double [ %i.eq, %bb.w ], [ %.0.copyload.i.i.i.i.i.i, %bb.x ]
  %i.ev = fptoui double %i.eu to i32              ; 3 uses
  %i.ew = icmp ugt i32 %2, %i.ev
  br i1 %i.ew, label %bb.y, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit139

bb.y:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.ex = load ptr, ptr %i.dt, align 8            ; 3 uses
  %i.ey = load ptr, ptr %i.du, align 8
  %.not.i132 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.ev, ptr %i.ex, align 4
  %i.ez = load ptr, ptr %i.dt, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store ptr %i.fa, ptr %i.dt, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit139

bb.aa:                                            ; preds = %bb.y
  %i.fb = load ptr, ptr %3, align 8               ; 4 uses
  %i.fc = ptrtoint ptr %i.ex to i64
  %i.fd = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 5 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775804
  br i1 %i.ff, label %bb.ab, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i133

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i133: ; preds = %bb.aa
  %i.fg = ashr exact i64 %i.fe, 2                 ; 3 uses
  %.sroa.speculated.i.i.i134 = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i134, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.umin.i64(i64 %i.fh, i64 2305843009213693951)
  %i.fk = select i1 %i.fi, i64 2305843009213693951, i64 %i.fj ; 3 uses
  %.not.i.i.i135 = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i135)
  %i.fl = shl nuw nsw i64 %i.fk, 2
  %i.fm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #18 ; 4 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fe ; 2 uses
  store i32 %i.ev, ptr %i.fn, align 4
  %i.fo = icmp sgt i64 %i.fe, 0
  br i1 %i.fo, label %bb.ac, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i136

bb.ac:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i133
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fm, ptr align 4 %i.fb, i64 %i.fe, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i136

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i136: ; preds = %bb.ac, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i133
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %.not.i17.i.i137 = icmp eq ptr %i.fb, null
  br i1 %.not.i17.i.i137, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i138, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i136
  %i.fq = load ptr, ptr %i.du, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fs) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i138

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i138: ; preds = %bb.ad, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i136
  store ptr %i.fm, ptr %3, align 8
  store ptr %i.fp, ptr %i.dt, align 8
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.ft, ptr %i.du, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit139

_ZNSt6vectorIjSaIjEE9push_backERKj.exit139:       ; preds = %.lr.ph376, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, %bb.z, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i138, %_ZN2v88internal9HashTableINS0_16NumberDictionaryENS0_21NumberDictionaryShapeEE5IsKeyENS0_13ReadOnlyRootsENS0_6TaggedINS0_6ObjectEEE.exit
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 4 uses
  %i.fu = icmp samesign uge i64 %indvars.iv.next.a, %i.dl ; 3 uses
  %i.fv = icmp samesign uge i64 %indvars.iv.next.a, %i.eb
  %or.cond.not = select i1 %i.fu, i1 true, i1 %i.fv
  br i1 %or.cond.not, label %.critedge, label %.lr.ph376, !llvm.loop !101

bb.ae:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i64 %i.b, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1
  %i.fw = add i64 %i.b, 31
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = add i64 %i.fy, 71
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load atomic volatile i32, ptr %i.ga monotonic, align 4
  %i.gc = and i32 %i.gb, 4
  %.not.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i, label %bb.af, label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit

bb.af:                                            ; preds = %bb.ae
  %i.gd = add i64 %i.b, 39
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = and i32 %i.gf, 3
  %.not2.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not2.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gh = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #15
  br label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit

bb.ah:                                            ; preds = %bb.af
  %i.gi = add i64 %i.b, 55
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %i.gm = udiv i64 %i.gk, %i.gl
  br label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit

_ZNK2v88internal12JSTypedArray9GetLengthEv.exit:  ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i.i140 = phi i64 [ %i.gm, %bb.ah ], [ %i.gh, %bb.ag ], [ 0, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.gn = zext i32 %2 to i64                      ; 4 uses
  %.not97 = icmp ult i64 %.0.i.i140, %i.gn
  br i1 %.not97, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit
  %i.go = load ptr, ptr %3, align 8               ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8
  %.not.i.i141 = icmp eq ptr %i.gq, %i.go
  br i1 %.not.i.i141, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.go, ptr %i.gp, align 8
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.aj, %bb.ai, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit
  %.085 = phi i64 [ %.0.i.i140, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit ], [ %i.gn, %bb.ai ], [ %i.gn, %bb.aj ] ; 3 uses
  %.not391 = icmp eq i64 %.085, 0
  br i1 %.not391, label %._crit_edge372, label %.lr.ph371

.lr.ph371:                                        ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.pre412.a = load ptr, ptr %i.gr, align 8
  %.pre414.a = load ptr, ptr %i.gs, align 8
  br label %bb.ak

._crit_edge372:                                   ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit149, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  %.not99 = icmp eq i64 %.085, %i.gn
  br i1 %.not99, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit.thread, label %.loopexit

bb.ak:                                            ; preds = %.lr.ph371, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit149
  %i.gt = phi ptr [ %.pre414.a, %.lr.ph371 ], [ %i.hq, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit149 ] ; 2 uses
  %i.gu = phi ptr [ %.pre412.a, %.lr.ph371 ], [ %i.hr, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit149 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit149 ] ; 3 uses
  %.not.i142 = icmp eq ptr %i.gu, %i.gt
  br i1 %.not.i142, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %5 = trunc nuw i64 %indvars.iv to i32
  store i32 %5, ptr %i.gu, align 4
  %i.gv = load ptr, ptr %i.gr, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4 ; 2 uses
  store ptr %i.gw, ptr %i.gr, align 8
  %.pre413.a = load ptr, ptr %i.gs, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit149

bb.am:                                            ; preds = %bb.ak
  %i.gx = load ptr, ptr %3, align 8               ; 4 uses
  %i.gy = ptrtoint ptr %i.gt to i64
  %i.gz = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.ha = sub i64 %i.gy, %i.gz                    ; 5 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775804
  br i1 %i.hb, label %bb.an, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i143

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i143: ; preds = %bb.am
  %i.hc = ashr exact i64 %i.ha, 2                 ; 3 uses
  %.sroa.speculated.i.i.i144 = call i64 @llvm.umax.i64(i64 %i.hc, i64 1)
  %i.hd = add nsw i64 %.sroa.speculated.i.i.i144, %i.hc ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.hc
  %i.hf = call i64 @llvm.umin.i64(i64 %i.hd, i64 2305843009213693951)
  %i.hg = select i1 %i.he, i64 2305843009213693951, i64 %i.hf ; 3 uses
  %.not.i.i.i145 = icmp ne i64 %i.hg, 0
  call void @llvm.assume(i1 %.not.i.i.i145)
  %i.hh = shl nuw nsw i64 %i.hg, 2
  %i.hi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #18 ; 4 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 %i.ha ; 2 uses
  %6 = trunc nuw i64 %indvars.iv to i32
  store i32 %6, ptr %i.hj, align 4
  %i.hk = icmp sgt i64 %i.ha, 0
  br i1 %i.hk, label %bb.ao, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i146

bb.ao:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i143
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr align 4 %i.gx, i64 %i.ha, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i146

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i146: ; preds = %bb.ao, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i143
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %.not.i17.i.i147 = icmp eq ptr %i.gx, null
  br i1 %.not.i17.i.i147, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i148, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i146
  %i.hm = load ptr, ptr %i.gs, align 8
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.ho) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i148

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i148: ; preds = %bb.ap, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i146
  store ptr %i.hi, ptr %3, align 8
  store ptr %i.hl, ptr %i.gr, align 8
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hg ; 2 uses
  store ptr %i.hp, ptr %i.gs, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit149

_ZNSt6vectorIjSaIjEE9push_backERKj.exit149:       ; preds = %bb.al, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i148
  %i.hq = phi ptr [ %.pre413.a, %bb.al ], [ %i.hp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i148 ]
  %i.hr = phi ptr [ %i.gw, %bb.al ], [ %i.hl, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i148 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next, %.085
  br i1 %exitcond405.not, label %._crit_edge372, label %bb.ak, !llvm.loop !102

bb.aq:                                            ; preds = %bb.a, %bb.a
  %i.hs = add i64 %i.b, 15
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.hw = add i64 %i.hv, 14
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = lshr i8 %i.hy, 2
  %i.ia = load ptr, ptr @_ZN2v88internal16ElementsAccessor19elements_accessors_E, align 8
  %i.ib = zext nneg i8 %i.hz to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %.not390 = icmp eq i32 %2, 0
  br i1 %.not390, label %.loopexit, label %.lr.ph369

.lr.ph369:                                        ; preds = %bb.aq
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph369, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit159
  %storemerge96367 = phi i32 [ 0, %.lr.ph369 ], [ %i.jh, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit159 ] ; 4 uses
  %i.ig = load ptr, ptr %i.id, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = tail call noundef zeroext i1 %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.id, ptr noundef %0, i64 %i.b, i32 noundef %storemerge96367, i64 %i.hu, i32 noundef 0) #15
  br i1 %i.ij, label %bb.as, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit159

bb.as:                                            ; preds = %bb.ar
  %i.ik = load ptr, ptr %i.ie, align 8            ; 3 uses
  %i.il = load ptr, ptr %i.if, align 8
  %.not.i152 = icmp eq ptr %i.ik, %i.il
  br i1 %.not.i152, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %storemerge96367, ptr %i.ik, align 4
  %i.im = load ptr, ptr %i.ie, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store ptr %i.in, ptr %i.ie, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit159

bb.au:                                            ; preds = %bb.as
  %i.io = load ptr, ptr %3, align 8               ; 4 uses
  %i.ip = ptrtoint ptr %i.ik to i64
  %i.iq = ptrtoint ptr %i.io to i64               ; 2 uses
  %i.ir = sub i64 %i.ip, %i.iq                    ; 5 uses
  %i.is = icmp eq i64 %i.ir, 9223372036854775804
  br i1 %i.is, label %bb.av, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i153

bb.av:                                            ; preds = %bb.au
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i153: ; preds = %bb.au
  %i.it = ashr exact i64 %i.ir, 2                 ; 3 uses
  %.sroa.speculated.i.i.i154 = tail call i64 @llvm.umax.i64(i64 %i.it, i64 1)
  %i.iu = add nsw i64 %.sroa.speculated.i.i.i154, %i.it ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.it
  %i.iw = tail call i64 @llvm.umin.i64(i64 %i.iu, i64 2305843009213693951)
  %i.ix = select i1 %i.iv, i64 2305843009213693951, i64 %i.iw ; 3 uses
  %.not.i.i.i155 = icmp ne i64 %i.ix, 0
  tail call void @llvm.assume(i1 %.not.i.i.i155)
  %i.iy = shl nuw nsw i64 %i.ix, 2
  %i.iz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #18 ; 4 uses
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 %i.ir ; 2 uses
  store i32 %storemerge96367, ptr %i.ja, align 4
  %i.jb = icmp sgt i64 %i.ir, 0
  br i1 %i.jb, label %bb.aw, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i156

bb.aw:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i153
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iz, ptr align 4 %i.io, i64 %i.ir, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i156

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i156: ; preds = %bb.aw, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i153
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %.not.i17.i.i157 = icmp eq ptr %i.io, null
  br i1 %.not.i17.i.i157, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i158, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i156
  %i.jd = load ptr, ptr %i.if, align 8
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.je, %i.iq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.jf) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i158

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i158: ; preds = %bb.ax, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i156
  store ptr %i.iz, ptr %3, align 8
  store ptr %i.jc, ptr %i.ie, align 8
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ix
  store ptr %i.jg, ptr %i.if, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit159

_ZNSt6vectorIjSaIjEE9push_backERKj.exit159:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i158, %bb.at, %bb.ar
  %i.jh = add nuw i32 %storemerge96367, 1         ; 2 uses
  %exitcond403.not = icmp eq i32 %i.jh, %2
  br i1 %exitcond403.not, label %.loopexit, label %bb.ar, !llvm.loop !103

bb.ay:                                            ; preds = %bb.a, %bb.a
  %i.ji = add i64 %i.b, 23
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load i64, ptr %i.jj, align 8            ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = icmp eq ptr %i.jm, %i.jo
  br i1 %i.jp, label %bb.az, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !18

bb.az:                                            ; preds = %bb.ay
  %i.jq = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.ay, %bb.az
  %.0.i.i118 = phi ptr [ %i.jq, %bb.az ], [ %i.jm, %bb.ay ] ; 2 uses
  %i.jr = ptrtoint ptr %.0.i.i118 to i64
  %i.js = add i64 %i.jr, 8
  %i.jt = inttoptr i64 %i.js to ptr
  store ptr %i.jt, ptr %i.jl, align 8
  store i64 %i.jk, ptr %.0.i.i118, align 8
  %i.ju = add i64 %i.jk, -1
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  %i.jx = load i32, ptr %i.jw, align 4            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.jx) ; 3 uses
  %.not389 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not389, label %._crit_edge363, label %.lr.ph362

.lr.ph362:                                        ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.pre409 = load ptr, ptr %i.jy, align 8
  %.pre411.a = load ptr, ptr %i.jz, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph362, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit168
  %i.ka = phi ptr [ %.pre411.a, %.lr.ph362 ], [ %i.kx, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit168 ] ; 2 uses
  %i.kb = phi ptr [ %.pre409, %.lr.ph362 ], [ %i.ky, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit168 ] ; 2 uses
  %.0361 = phi i32 [ 0, %.lr.ph362 ], [ %i.kz, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit168 ] ; 3 uses
  %.not.i161 = icmp eq ptr %i.kb, %i.ka
  br i1 %.not.i161, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %.0361, ptr %i.kb, align 4
  %i.kc = load ptr, ptr %i.jy, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4 ; 2 uses
  store ptr %i.kd, ptr %i.jy, align 8
  %.pre410 = load ptr, ptr %i.jz, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit168

bb.bc:                                            ; preds = %bb.ba
  %i.ke = load ptr, ptr %3, align 8               ; 4 uses
  %i.kf = ptrtoint ptr %i.ka to i64
  %i.kg = ptrtoint ptr %i.ke to i64               ; 2 uses
  %i.kh = sub i64 %i.kf, %i.kg                    ; 5 uses
  %i.ki = icmp eq i64 %i.kh, 9223372036854775804
  br i1 %i.ki, label %bb.bd, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i162

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i162: ; preds = %bb.bc
  %i.kj = ashr exact i64 %i.kh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i163 = tail call i64 @llvm.umax.i64(i64 %i.kj, i64 1)
  %i.kk = add nsw i64 %.sroa.speculated.i.i.i163, %i.kj ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.kj
  %i.km = tail call i64 @llvm.umin.i64(i64 %i.kk, i64 2305843009213693951)
  %i.kn = select i1 %i.kl, i64 2305843009213693951, i64 %i.km ; 3 uses
  %.not.i.i.i164 = icmp ne i64 %i.kn, 0
  tail call void @llvm.assume(i1 %.not.i.i.i164)
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #18 ; 4 uses
  %i.kq = getelementptr inbounds i8, ptr %i.kp, i64 %i.kh ; 2 uses
  store i32 %.0361, ptr %i.kq, align 4
  %i.kr = icmp sgt i64 %i.kh, 0
  br i1 %i.kr, label %bb.be, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i165

bb.be:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i162
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kp, ptr align 4 %i.ke, i64 %i.kh, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i165

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i165: ; preds = %bb.be, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i162
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 2 uses
  %.not.i17.i.i166 = icmp eq ptr %i.ke, null
  br i1 %.not.i17.i.i166, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i167, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i165
  %i.kt = load ptr, ptr %i.jz, align 8
  %i.ku = ptrtoint ptr %i.kt to i64
  %i.kv = sub i64 %i.ku, %i.kg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kv) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i167

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i167: ; preds = %bb.bf, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i165
  store ptr %i.kp, ptr %3, align 8
  store ptr %i.ks, ptr %i.jy, align 8
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kn ; 2 uses
  store ptr %i.kw, ptr %i.jz, align 8
end_hunk_0
