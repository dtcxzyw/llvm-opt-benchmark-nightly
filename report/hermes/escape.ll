Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/escape?download=true
inline.NumInlined: 629
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6hermes2vm6escapeEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10

bb.ad:                                            ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10

bb.ae:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i16 = load i64, ptr %i.ci, align 8, !tbaa !28
  %i.cj = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i16, 281474976710655
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10: ; preds = %bb.z, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %.pre-phi107 = phi i64 [ %i.by, %bb.z ], [ %i.ce, %bb.ae ], [ %i.ce, %bb.ad ], [ %i.ce, %bb.ac ], [ %i.cc, %bb.aa ]
  %i.cn = phi ptr [ %i.bz, %bb.z ], [ %i.cf, %bb.ae ], [ %i.cf, %bb.ad ], [ %i.cf, %bb.ac ], [ %i.cd, %bb.aa ]
  %.0.i.sink.i4.i11 = phi ptr [ %i.ab, %bb.z ], [ %i.cm, %bb.ae ], [ %i.ch, %bb.ad ], [ %i.cg, %bb.ac ], [ %i.cb, %bb.aa ]
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i11, i64 %.pre-phi107
  %.sroa.778.12.extract.shift = lshr i64 %i.ac, 32
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.sroa.778.12.extract.shift
  br label %_ZNK6hermes2vm10StringView3endEv.exit

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i20, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10
  %.sroa.0.0.i94 = phi ptr [ %i.bu, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i20 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10 ]
  %.sroa.3.0.i92 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i20 ], [ %i.cn, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10 ]
  %.sroa.3.0.i12 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i20 ], [ %i.cp, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10 ]
  %.sroa.0.0.i13 = phi ptr [ %i.bx, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i20 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i10 ]
  br label %bb.af

bb.af:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, %_ZNK6hermes2vm10StringView3endEv.exit
  %.sroa.7.0 = phi ptr [ %.sroa.3.0.i92, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %.sroa.7.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.069.0 = phi ptr [ %.sroa.0.0.i94, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %.sroa.069.0.be, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit ] ; 4 uses
  %.not.i.i23 = icmp eq ptr %.sroa.069.0, null    ; 3 uses
  br i1 %.not.i.i23, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit: ; preds = %bb.af
  %.not104 = icmp eq ptr %.sroa.7.0, %.sroa.3.0.i12
  br i1 %.not104, label %bb.ag, label %bb.ak

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread: ; preds = %bb.af
  %.not103 = icmp eq ptr %.sroa.069.0, %.sroa.0.0.i13
  br i1 %.not103, label %bb.ag, label %.thread101

bb.ag:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit
  %i.cq = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.cr = load i32, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.cr, 65536
  br i1 %.not.i, label %bb.ah, label %bb.ai, !prof !26

bb.ah:                                            ; preds = %bb.ag
  %i.ct = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.cq, i64 %i.cs) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.168") align 8 %3, ptr %i.cq, i64 %i.cs)
  %i.cu = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %i.cv = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !44
  %i.cz = shl i64 %i.cy, 1
  %i.da = add i64 %i.cz, 2
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.da) #11
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.ct, %bb.ah ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.db = extractvalue { i32, i64 } %.pn.i, 0
  %i.dc = extractvalue { i32, i64 } %.pn.i, 1
  %i.dd = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.v
  br i1 %i.de, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  call void @free(ptr noundef %i.dd) #10
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.as

.thread101:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit.thread
  %i.df = load i8, ptr %.sroa.069.0, align 1, !tbaa !44
  %i.dg = sext i8 %i.df to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit
  %i.dh = load i16, ptr %.sroa.7.0, align 2, !tbaa !46
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit: ; preds = %.thread101, %bb.ak
  %i.di = phi i16 [ %i.dg, %.thread101 ], [ %i.dh, %bb.ak ] ; 14 uses
  %i.dj = and i16 %i.di, -33
  %i.dk = add i16 %i.dj, -65
  %or.cond39.i = icmp ult i16 %i.dk, 26
  %i.dl = add i16 %i.di, -48
  %or.cond8.i = icmp ult i16 %i.dl, 10
  %or.cond40.i = or i1 %or.cond8.i, %or.cond39.i
  br i1 %or.cond40.i, label %bb.al, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit
  switch i16 %i.di, label %_ZN6hermes2vmL8noEscapeEDs.exit [
    i16 95, label %bb.al
    i16 64, label %bb.al
    i16 46, label %bb.al
    i16 45, label %bb.al
    i16 43, label %bb.al
    i16 42, label %bb.al
    i16 47, label %bb.al
  ]

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %i.dm = load i32, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.dn = load i32, ptr %i.x, align 4, !tbaa !35
  %.not.i25 = icmp ult i32 %i.dm, %i.dn
  br i1 %.not.i25, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split, !prof !26

_ZN6hermes2vmL8noEscapeEDs.exit:                  ; preds = %switch.early.test.i
  %i.do = icmp ult i16 %i.di, 256
  br i1 %i.do, label %bb.am, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN6hermes2vmL8noEscapeEDs.exit
  %i.dp = load i32, ptr %i.x, align 4, !tbaa !35
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load i32, ptr %i.w, align 8, !tbaa !34
  %i.ds = zext i32 %i.dr to i64                   ; 3 uses
  %i.dt = sub nsw i64 %i.dq, %i.ds
  %i.du = icmp ult i64 %i.dt, 2
  br i1 %i.du, label %.thread.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit

bb.am:                                            ; preds = %_ZN6hermes2vmL8noEscapeEDs.exit
  %i.dv = load i32, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.dw = load i32, ptr %i.x, align 4, !tbaa !35
  %.not.i26 = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i26, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit28, label %bb.an, !prof !26

bb.an:                                            ; preds = %bb.am
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 2) #10
  %.pre.i27 = load i32, ptr %i.w, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit28

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit28: ; preds = %bb.am, %bb.an
  %i.dx = phi i32 [ %.pre.i27, %bb.an ], [ %i.dv, %bb.am ]
  %i.dy = load ptr, ptr %4, align 8, !tbaa !33
  %i.dz = zext i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.dz
  store i16 37, ptr %i.ea, align 1
  %i.eb = load i32, ptr %i.w, align 8, !tbaa !34
  %i.ec = add i32 %i.eb, 1                        ; 3 uses
  store i32 %i.ec, ptr %i.w, align 8, !tbaa !34
  %i.ed = lshr i16 %i.di, 4                       ; 2 uses
  %i.ee = icmp samesign ult i16 %i.di, 160
  %i.ef = or disjoint i16 %i.ed, 48
  %i.eg = add nuw nsw i16 %i.ed, 55
  %.0.i = select i1 %i.ee, i16 %i.ef, i16 %i.eg
  %i.eh = load i32, ptr %i.x, align 4, !tbaa !35
  %.not.i29 = icmp ult i32 %i.ec, %i.eh
  br i1 %.not.i29, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31, label %bb.ao, !prof !26

bb.ao:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit28
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 2) #10
  %.pre.i30 = load i32, ptr %i.w, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit28, %bb.ao
  %i.ei = phi i32 [ %.pre.i30, %bb.ao ], [ %i.ec, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit28 ]
  %i.ej = load ptr, ptr %4, align 8, !tbaa !33
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.ek
  store i16 %.0.i, ptr %i.el, align 1
  %i.em = load i32, ptr %i.w, align 8, !tbaa !34
  %i.en = add i32 %i.em, 1                        ; 3 uses
  store i32 %i.en, ptr %i.w, align 8, !tbaa !34
  %i.eo = and i16 %i.di, 15                       ; 3 uses
  %i.ep = icmp samesign ult i16 %i.eo, 10
  %i.eq = or disjoint i16 %i.eo, 48
  %i.er = add nuw nsw i16 %i.eo, 55
  %.0.i32 = select i1 %i.ep, i16 %i.eq, i16 %i.er ; 2 uses
  %i.es = load i32, ptr %i.x, align 4, !tbaa !35
  %.not.i33 = icmp ult i32 %i.en, %i.es
  br i1 %.not.i33, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split, !prof !26

.thread.i:                                        ; preds = %.preheader.preheader
  %i.et = add nuw nsw i64 %i.ds, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.v, i64 noundef %i.et, i64 noundef 2) #10
  %.pre7.pre.i.i = load i32, ptr %i.w, align 8, !tbaa !34
  %.pre106 = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit: ; preds = %.thread.i, %.preheader.preheader
  %.pre-phi = phi i64 [ %.pre106, %.thread.i ], [ %i.ds, %.preheader.preheader ]
  %i.eu = load ptr, ptr %4, align 8, !tbaa !33
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %.pre-phi
  store i32 7667749, ptr %i.ev, align 1
  %.pre = load i32, ptr %i.x, align 4, !tbaa !35
  %.pre.i.i = load i32, ptr %i.w, align 8, !tbaa !34
  %i.ew = add i32 %.pre.i.i, 2                    ; 3 uses
  store i32 %i.ew, ptr %i.w, align 8, !tbaa !34
  %i.ex = lshr i16 %i.di, 12                      ; 2 uses
  %i.ey = icmp ult i16 %i.di, -24576
  %i.ez = or disjoint i16 %i.ex, 48
  %i.fa = add nuw nsw i16 %i.ex, 55
  %.0.i37 = select i1 %i.ey, i16 %i.ez, i16 %i.fa
  %.not.i38 = icmp ult i32 %i.ew, %.pre
  br i1 %.not.i38, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit40, label %bb.ap, !prof !26

bb.ap:                                            ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 2) #10
  %.pre.i39 = load i32, ptr %i.w, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit40

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit40: ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit, %bb.ap
  %i.fb = phi i32 [ %.pre.i39, %bb.ap ], [ %i.ew, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEPKDs.exit ]
  %i.fc = load ptr, ptr %4, align 8, !tbaa !33
  %i.fd = zext i32 %i.fb to i64
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fd
  store i16 %.0.i37, ptr %i.fe, align 1
  %i.ff = load i32, ptr %i.w, align 8, !tbaa !34
  %i.fg = add i32 %i.ff, 1                        ; 3 uses
  store i32 %i.fg, ptr %i.w, align 8, !tbaa !34
  %i.fh = lshr i16 %i.di, 8
  %i.fi = and i16 %i.fh, 15                       ; 3 uses
  %i.fj = icmp samesign ult i16 %i.fi, 10
  %i.fk = or disjoint i16 %i.fi, 48
  %i.fl = add nuw nsw i16 %i.fi, 55
  %.0.i41 = select i1 %i.fj, i16 %i.fk, i16 %i.fl
  %i.fm = load i32, ptr %i.x, align 4, !tbaa !35
  %.not.i42 = icmp ult i32 %i.fg, %i.fm
  br i1 %.not.i42, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, label %bb.aq, !prof !26

bb.aq:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit40
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 2) #10
  %.pre.i43 = load i32, ptr %i.w, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit40, %bb.aq
  %i.fn = phi i32 [ %.pre.i43, %bb.aq ], [ %i.fg, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit40 ]
  %i.fo = load ptr, ptr %4, align 8, !tbaa !33
  %i.fp = zext i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %i.fp
  store i16 %.0.i41, ptr %i.fq, align 1
  %i.fr = load i32, ptr %i.w, align 8, !tbaa !34
  %i.fs = add i32 %i.fr, 1                        ; 3 uses
  store i32 %i.fs, ptr %i.w, align 8, !tbaa !34
  %i.ft = lshr i16 %i.di, 4
  %i.fu = and i16 %i.ft, 15                       ; 3 uses
  %i.fv = icmp samesign ult i16 %i.fu, 10
  %i.fw = or disjoint i16 %i.fu, 48
  %i.fx = add nuw nsw i16 %i.fu, 55
  %.0.i45 = select i1 %i.fv, i16 %i.fw, i16 %i.fx
  %i.fy = load i32, ptr %i.x, align 4, !tbaa !35
  %.not.i46 = icmp ult i32 %i.fs, %i.fy
  br i1 %.not.i46, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48, label %bb.ar, !prof !26

bb.ar:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 2) #10
  %.pre.i47 = load i32, ptr %i.w, align 8, !tbaa !34
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44, %bb.ar
  %i.fz = phi i32 [ %.pre.i47, %bb.ar ], [ %i.fs, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit44 ]
  %i.ga = load ptr, ptr %4, align 8, !tbaa !33
  %i.gb = zext i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.gb
  store i16 %.0.i45, ptr %i.gc, align 1
  %i.gd = load i32, ptr %i.w, align 8, !tbaa !34
  %i.ge = add i32 %i.gd, 1                        ; 3 uses
  store i32 %i.ge, ptr %i.w, align 8, !tbaa !34
  %i.gf = and i16 %i.di, 15                       ; 3 uses
  %i.gg = icmp samesign ult i16 %i.gf, 10
  %i.gh = or disjoint i16 %i.gf, 48
  %i.gi = add nuw nsw i16 %i.gf, 55
  %.0.i49 = select i1 %i.gg, i16 %i.gh, i16 %i.gi ; 2 uses
  %i.gj = load i32, ptr %i.x, align 4, !tbaa !35
  %.not.i50 = icmp ult i32 %i.ge, %i.gj
  br i1 %.not.i50, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split, !prof !26

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31, %bb.al
  %.0.i32.sink.ph = phi i16 [ %.0.i32, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31 ], [ %i.di, %bb.al ], [ %.0.i49, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48 ]
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 2) #10
  %.pre.i51 = load i32, ptr %i.w, align 8, !tbaa !34
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit

_ZN6hermes2vm10StringView14const_iteratorppEv.exit: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31, %bb.al
  %.sink = phi i32 [ %i.dm, %bb.al ], [ %i.en, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31 ], [ %i.ge, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48 ], [ %.pre.i51, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split ]
  %.0.i32.sink = phi i16 [ %i.di, %bb.al ], [ %.0.i32, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit31 ], [ %.0.i49, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit48 ], [ %.0.i32.sink.ph, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.sink.split ]
  %i.gk = load ptr, ptr %4, align 8, !tbaa !33
  %i.gl = zext i32 %.sink to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gl
  store i16 %.0.i32.sink, ptr %i.gm, align 1
  %i.gn = load i32, ptr %i.w, align 8, !tbaa !34
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.w, align 8, !tbaa !34
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.069.0, i64 1
  %.sroa.7.1.idx = select i1 %.not.i.i23, i64 2, i64 0
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %.sroa.7.1.idx
  %.sroa.069.0.be = select i1 %.not.i.i23, ptr null, ptr %i.gp
  br label %bb.af

bb.as:                                            ; preds = %bb.a, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit
  %.sroa.087.0 = phi i32 [ %i.db, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.dc, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.087.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 2) #10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !33
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %1, align 2
  store i16 %i.j, ptr %i.i, align 1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !34
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8unescapeEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.168", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::SmallXString", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not307 = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not307, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %.not308 = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %.not308, label %bb.fy, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, -844424930131968            ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.j, align 8, !tbaa !24
  store i64 %i.g, ptr %i.k, align 8, !tbaa !28
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.i, i64 %i.g) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.p, align 8, !tbaa !28
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.g, %bb.c ], [ %.sroa.0.0.copyload.i.i.pre, %bb.d ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.q = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32
  %i.u = and i32 %i.t, 2147483647                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 32, ptr %i.x, align 4, !tbaa !35
  %i.y = icmp samesign ugt i32 %i.u, 32
  br i1 %i.y, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit.thread, label %_ZN4llvh15SmallVectorImplIDsE7reserveEm.exit
end_hunk_0
