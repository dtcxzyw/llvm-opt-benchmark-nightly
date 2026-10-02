Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_reflection?download=true
inline.NumInlined: 8094
inline.NumDeleted: 3434
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageE:bb.a
  %.sink7.in.i.i.i747.i.i.i = phi ptr [ %i.dg, %bb.p ], [ %i.dd, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i746.i.i.i ], [ %i.da, %bb.o ]
  %.sink7.i.i.i748.i.i.i = load ptr, ptr %.sink7.in.i.i.i747.i.i.i, align 8, !tbaa !41
  %i.dh = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.di = ptrtoint ptr %.sink7.i.i.i748.i.i.i to i64
  %i.dj = sub i64 %i.dh, %i.di
  %.0.in.i.i.i749.i.i.i = sdiv exact i64 %i.dj, 88
  %sext.i.i750.i.i.i = shl i64 %.0.in.i.i.i749.i.i.i, 32
  %i.dk = ashr exact i64 %sext.i.i750.i.i.i, 30
  %i.dl = getelementptr inbounds i8, ptr %i.cw, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !13
  %i.dn = and i32 %i.dm, 2147483640               ; 2 uses
  %i.do = load i32, ptr %i.cf, align 4, !tbaa !86 ; 2 uses
  %.not.i.i751.i.i.i = icmp eq i32 %i.do, -1
  br i1 %.not.i.i751.i.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i760.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i.i.i.i
  br i1 %.not.i.i.i743.i.i.i, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i752.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !88
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i755.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i752.i.i.i: ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i14.i753.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not1.i.i14.i753.i.i.i, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i754.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i754.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i752.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i755.i.i.i

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i752.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !89
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i755.i.i.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i755.i.i.i: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i754.i.i.i, %bb.r
  %.sink7.in.i.i16.i756.i.i.i = phi ptr [ %i.dx, %bb.s ], [ %i.du, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i754.i.i.i ], [ %i.dr, %bb.r ]
  %.sink7.i.i17.i757.i.i.i = load ptr, ptr %.sink7.in.i.i16.i756.i.i.i, align 8, !tbaa !41
  %i.dy = ptrtoint ptr %.sink7.i.i17.i757.i.i.i to i64
  %i.dz = sub i64 %i.dh, %i.dy
  %.0.in.i.i18.i758.i.i.i = sdiv exact i64 %i.dz, 88
  %sext.i19.i759.i.i.i = shl i64 %.0.in.i.i18.i758.i.i.i, 32
  %i.ea = ashr exact i64 %sext.i19.i759.i.i.i, 30
  %i.eb = getelementptr inbounds i8, ptr %i.cw, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !13
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %bb.t, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i760.i.i.i, !prof !90

bb.t:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i755.i.i.i
  %i.ee = zext i32 %i.do to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !82
  %i.eh = zext nneg i32 %i.dn to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !636
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit.i.i.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i760.i.i.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i755.i.i.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i.i.i.i
  %i.ek = zext nneg i32 %i.dn to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ek
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit.i.i.i

_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit.i.i.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i760.i.i.i, %bb.t
  %.1.i761.i.i.i = phi ptr [ %i.el, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i760.i.i.i ], [ %i.ej, %bb.t ]
  %i.em = getelementptr inbounds nuw i8, ptr %.1.i761.i.i.i, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !168
  %.not418.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not418.i.i.i, label %.critedge434.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit.i.i.i
  br i1 %.not.i.i.i743.i.i.i, label %bb.v, label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.eo = load i32, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, -1
  br i1 %i.ep, label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i.i.i.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.eq = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.er = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !88
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %.sink7.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.et, align 8, !tbaa !41
  %i.eu = ptrtoint ptr %.sink7.i.i.i.i.i.i.i.i.i to i64
  %i.ev = sub i64 %i.dh, %i.eu
  %.0.in.i.i.i.i.i.i.i.i.i = sdiv exact i64 %i.ev, 88
  %sext.i.i.i.i.i.i.i.i = shl i64 %.0.in.i.i.i.i.i.i.i.i.i, 32
  %i.ew = ashr exact i64 %sext.i.i.i.i.i.i.i.i, 30
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !13 ; 3 uses
  %i.ez = icmp eq i32 %i.ey, -1
  br i1 %i.ez, label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i.i.i.i
  %i.fa = and i32 %i.ey, 31
  %i.fb = shl nuw i32 1, %i.fa
  %i.fc = zext i32 %i.eo to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.fc
  %i.fe = lshr i32 %i.ey, 5
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ff ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !13
  %i.fi = or i32 %i.fh, %i.fb
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !13
  br label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i

_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i: ; preds = %bb.w, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i.i.i.i, %bb.v, %bb.u
  %i.fj = invoke noundef ptr @_ZNK6google8protobuf10Reflection23MutableRawRepeatedFieldEPNS0_7MessageEPKNS0_15FieldDescriptorENS0_8internal19FieldDescriptorLite7CppTypeEiPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %i.ck, i32 noundef 10, i32 poison, ptr noundef null)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc25:                                         ; preds = %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !151
  %i.fl = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fm = and i64 %i.fl, 1
  %i.fn = icmp eq i64 %i.fm, 0
  %i.fo = add i64 %i.fl, -1
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = select i1 %i.fn, ptr %i.fj, ptr %i.fq   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !168 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %.idx.i.i.i.i = shl nsw i64 %i.fu, 3
  %i.fv = getelementptr inbounds i8, ptr %i.fr, i64 %.idx.i.i.i.i
  %.not9.i.i.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not9.i.i.i.i, label %.critedge434.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc25, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i.i.i.i"
  %.sroa.05.010.i.i.i.i = phi ptr [ %i.ie, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i.i.i.i" ], [ %i.fr, %.noexc25 ] ; 2 uses
  %i.fw = load ptr, ptr %.sroa.05.010.i.i.i.i, align 8, !tbaa !82 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !44 ; 3 uses
  %i.fz = trunc i64 %i.fy to i1
  br i1 %i.fz, label %bb.x, label %bb.y, !prof !45

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ga = add nsw i64 %i.fy, -1
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.gd = inttoptr i64 %i.fy to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.gc, %bb.x ], [ %i.gd, %bb.y ]
  %i.ge = icmp eq ptr %.0.i.i.i.i.i.i.i, null
  br i1 %i.ge, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i
  %i.gf = load ptr, ptr %9, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.gf, align 1, !tbaa !173
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i.i.i.i"

bb.aa:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i
  %i.gg = load ptr, ptr %i.aq, align 8, !tbaa !205, !nonnull !57, !align !206 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 4 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !209 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !210
  %.not.i90 = icmp eq ptr %i.gi, %i.gk
  br i1 %.not.i90, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.fw, ptr %i.gi, align 8, !tbaa !212
  %i.gl = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw)
          to label %.noexc103.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc103.a:                                      ; preds = %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gn = extractvalue { ptr, ptr } %i.gl, 1
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 68
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !120
  store i32 %i.gp, ptr %i.gm, align 8, !tbaa !213
  %i.gq = load ptr, ptr %i.gh, align 8, !tbaa !209
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store ptr %i.gr, ptr %i.gh, align 8, !tbaa !209
  br label %.noexc26

bb.ac:                                            ; preds = %bb.aa
  %.val.i.i91 = load ptr, ptr %i.gg, align 8, !tbaa !214 ; 5 uses
  %i.gs = ptrtoint ptr %i.gi to i64
  %i.gt = ptrtoint ptr %.val.i.i91 to i64         ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 3 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775792
  br i1 %i.gv, label %.invoke, label %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i92

_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i92: ; preds = %bb.ac
  %i.gw = ashr exact i64 %i.gu, 4                 ; 3 uses
  %i.gx = icmp eq ptr %i.gi, %.val.i.i91          ; 2 uses
  %.sroa.speculated.i.i.i93 = select i1 %i.gx, i64 1, i64 %i.gw
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i93, %i.gw ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gw
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 576460752303423487)
  %i.hb = select i1 %i.gz, i64 576460752303423487, i64 %i.ha ; 3 uses
  %.not.i.i.i94 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i94)
  %i.hc = shl nuw nsw i64 %i.hb, 4                ; 2 uses
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #38
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc105:                                        ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i92
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gu ; 2 uses
  store ptr %i.fw, ptr %i.he, align 8, !tbaa !212
  %i.hf = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %.noexc105
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hh = extractvalue { ptr, ptr } %i.hf, 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 68
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !120
  store i32 %i.hj, ptr %i.hg, align 8, !tbaa !213
  br i1 %i.gx, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i99, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %bb.ad, %.lr.ph.i.i.i.i.i95
  %.03.i.i.i.i.i96 = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i95 ], [ %i.hd, %bb.ad ] ; 2 uses
  %.092.i.i.i.i.i97 = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i95 ], [ %.val.i.i91, %bb.ad ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i96, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i97, i64 16, i1 false), !tbaa.struct !215, !alias.scope !637
  %i.hk = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i97, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i96, i64 16 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.hk, %i.gi
  br i1 %.not.i.i.i.i.i98, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i99, label %.lr.ph.i.i.i.i.i95, !llvm.loop !2

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i99: ; preds = %.lr.ph.i.i.i.i.i95, %bb.ad
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.hd, %bb.ad ], [ %i.hl, %.lr.ph.i.i.i.i.i95 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i100, i64 16
  %.not.i37.i.i101 = icmp eq ptr %.val.i.i91, null
  br i1 %.not.i37.i.i101, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i102, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i99
  %i.hn = load ptr, ptr %i.gj, align 8, !tbaa !210
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i91, i64 noundef %i.hp) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i102

bb.af:                                            ; preds = %bb.ag
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ah

bb.ag:                                            ; preds = %.noexc105
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  %i.ht = call ptr @__cxa_begin_catch(ptr %i.hs) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hc) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.ai unwind label %bb.af

bb.ah:                                            ; preds = %bb.af
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #37
  unreachable

bb.ai:                                            ; preds = %bb.ag
  unreachable

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i102: ; preds = %bb.ae, %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i99
  store ptr %i.hd, ptr %i.gg, align 8, !tbaa !214
  store ptr %i.hm, ptr %i.gh, align 8, !tbaa !209
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hw, ptr %i.gj, align 8, !tbaa !210
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i102, %.noexc103.a
  %i.hx = load ptr, ptr %i.ar, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #35
  store ptr %i.fw, ptr %i.l, align 8, !tbaa !81
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !187 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !188
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hz, %i.ic
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.noexc26
  store ptr %i.fw, ptr %i.hz, align 8, !tbaa !81
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store ptr %i.id, ptr %i.hy, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i.i.i.i

bb.ak:                                            ; preds = %.noexc26
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #35
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i.i.i.i"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i.i.i.i": ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i.i.i.i, %bb.z
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ie, %i.fv
  br i1 %.not.i.i.i.i, label %.critedge434.i.i.i, label %.lr.ph.i.i.i.i

bb.al:                                            ; preds = %bb.m
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %i.ck)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc28:                                         ; preds = %bb.al
  %i.ig = invoke noundef i32 @_ZNK6google8protobuf8internal12MapFieldBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.if)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc29:                                         ; preds = %.noexc28
  %.not417.i.i.i = icmp eq i32 %i.ig, 0
  br i1 %.not417.i.i.i, label %.critedge434.i.i.i, label %bb.am

bb.am:                                            ; preds = %.noexc29
  %i.ih = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ck)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc30:                                         ; preds = %bb.am
  %i.ii = invoke noundef ptr @_ZNK6google8protobuf10Descriptor7map_keyEv(ptr noundef nonnull align 8 dereferenceable(160) %i.ih)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc31:                                         ; preds = %.noexc30
  %i.ij = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.ih)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc32:                                         ; preds = %.noexc31
  store ptr %i.bn, ptr %4, align 8, !tbaa !218
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !81
  store ptr %i.ck, ptr %i.ay, align 8, !tbaa !219
  store ptr %i.ii, ptr %i.az, align 8, !tbaa !638
  store ptr %i.ij, ptr %i.ba, align 8, !tbaa !220
  store ptr %i.if, ptr %i.bb, align 8, !tbaa !141
  br label %.noexc32.invoke

.noexc32.invoke:                                  ; preds = %.noexc41, %.noexc32
  %i.ik = phi ptr [ %4, %.noexc32 ], [ %5, %.noexc41 ]
  invoke fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_19MapDynamicFieldInfoIS5_EEEEDaS8_"(ptr nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull byval(%"struct.google::protobuf::internal::MapDynamicFieldInfo") align 8 %i.ik)
          to label %.critedge434.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.an:                                            ; preds = %bb.l
  %i.il = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.im = load i8, ptr %i.il, align 1
  %i.in = and i8 %i.im, 16
  %.not1026.i.i.i = icmp eq i8 %i.in, 0
  br i1 %.not1026.i.i.i, label %bb.ao, label %bb.bm, !prof !14

bb.ao:                                            ; preds = %bb.an
  %i.io = load ptr, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.ip = and i8 %i.cr, 8
  %.not.i.i.i763.i.i.i = icmp eq i8 %i.ip, 0      ; 3 uses
  br i1 %.not.i.i.i763.i.i.i, label %bb.ap, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i764.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !88
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i767.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i764.i.i.i: ; preds = %bb.ao
  %i.it = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i.i765.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not1.i.i.i765.i.i.i, label %bb.aq, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i766.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i766.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i764.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i767.i.i.i

bb.aq:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i764.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !89
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i767.i.i.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i767.i.i.i: ; preds = %bb.aq, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i766.i.i.i, %bb.ap
  %.sink7.in.i.i.i768.i.i.i = phi ptr [ %i.iy, %bb.aq ], [ %i.iv, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i766.i.i.i ], [ %i.is, %bb.ap ]
  %.sink7.i.i.i769.i.i.i = load ptr, ptr %.sink7.in.i.i.i768.i.i.i, align 8, !tbaa !41
  %i.iz = ptrtoint ptr %i.ck to i64               ; 3 uses
  %i.ja = ptrtoint ptr %.sink7.i.i.i769.i.i.i to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %.0.in.i.i.i770.i.i.i = sdiv exact i64 %i.jb, 88
  %sext.i.i771.i.i.i = shl i64 %.0.in.i.i.i770.i.i.i, 32
  %i.jc = ashr exact i64 %sext.i.i771.i.i.i, 30
  %i.jd = getelementptr inbounds i8, ptr %i.io, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !13
  %i.jf = and i32 %i.je, 2147483640               ; 2 uses
  %i.jg = load i32, ptr %i.cf, align 4, !tbaa !86 ; 2 uses
  %.not.i.i772.i.i.i = icmp eq i32 %i.jg, -1
  br i1 %.not.i.i772.i.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i781.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i767.i.i.i
  br i1 %.not.i.i.i763.i.i.i, label %bb.as, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i773.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !88
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i776.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i773.i.i.i: ; preds = %bb.ar
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !38 ; 2 uses
  %.not1.i.i14.i774.i.i.i = icmp eq ptr %i.jl, null
  br i1 %.not1.i.i14.i774.i.i.i, label %bb.at, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i775.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i775.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i773.i.i.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i776.i.i.i

bb.at:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i773.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !89
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i776.i.i.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i776.i.i.i: ; preds = %bb.at, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i775.i.i.i, %bb.as
  %.sink7.in.i.i16.i777.i.i.i = phi ptr [ %i.jp, %bb.at ], [ %i.jm, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i775.i.i.i ], [ %i.jj, %bb.as ]
  %.sink7.i.i17.i778.i.i.i = load ptr, ptr %.sink7.in.i.i16.i777.i.i.i, align 8, !tbaa !41
  %i.jq = ptrtoint ptr %.sink7.i.i17.i778.i.i.i to i64
  %i.jr = sub i64 %i.iz, %i.jq
  %.0.in.i.i18.i779.i.i.i = sdiv exact i64 %i.jr, 88
  %sext.i19.i780.i.i.i = shl i64 %.0.in.i.i18.i779.i.i.i, 32
  %i.js = ashr exact i64 %sext.i19.i780.i.i.i, 30
  %i.jt = getelementptr inbounds i8, ptr %i.io, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !13
  %i.jv = icmp slt i32 %i.ju, 0
  br i1 %i.jv, label %bb.au, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i781.i.i.i, !prof !90

bb.au:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i776.i.i.i
  %i.jw = zext i32 %i.jg to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !82
  %i.jz = zext nneg i32 %i.jf to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !636
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit783.i.i.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i781.i.i.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i776.i.i.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_16RepeatedPtrFieldINS0_7MessageEEEEEjPKNS0_15FieldDescriptorE.exit.i767.i.i.i
  %i.kc = zext nneg i32 %i.jf to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.kc
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit783.i.i.i

_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit783.i.i.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i781.i.i.i, %bb.au
  %.1.i782.i.i.i = phi ptr [ %i.kd, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i781.i.i.i ], [ %i.kb, %bb.au ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.1.i782.i.i.i, i64 8
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !168
  %.not416.i.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not416.i.i.i, label %.critedge434.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK6google8protobuf10Reflection6GetRawINS0_16RepeatedPtrFieldINS0_7MessageEEEEERKT_RKS4_PKNS0_15FieldDescriptorE.exit783.i.i.i
  br i1 %.not.i.i.i763.i.i.i, label %bb.aw, label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.kg = load i32, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %i.kh = icmp eq i32 %i.kg, -1
  br i1 %i.kh, label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i796.i.i.i

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i796.i.i.i: ; preds = %bb.aw
  %i.ki = load ptr, ptr %i.bw, align 8, !tbaa !94
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !88
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  %.sink7.i.i.i.i.i.i797.i.i.i = load ptr, ptr %i.kl, align 8, !tbaa !41
  %i.km = ptrtoint ptr %.sink7.i.i.i.i.i.i797.i.i.i to i64
  %i.kn = sub i64 %i.iz, %i.km
  %.0.in.i.i.i.i.i.i798.i.i.i = sdiv exact i64 %i.kn, 88
  %sext.i.i.i.i.i799.i.i.i = shl i64 %.0.in.i.i.i.i.i.i798.i.i.i, 32
  %i.ko = ashr exact i64 %sext.i.i.i.i.i799.i.i.i, 30
  %i.kp = getelementptr inbounds i8, ptr %i.ki, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !13 ; 3 uses
  %i.kr = icmp eq i32 %i.kq, -1
  br i1 %i.kr, label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i796.i.i.i
  %i.ks = and i32 %i.kq, 31
  %i.kt = shl nuw i32 1, %i.ks
  %i.ku = zext i32 %i.kg to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ku
  %i.kw = lshr i32 %i.kq, 5
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !13
  %i.la = or i32 %i.kz, %i.kt
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !13
  br label %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i

_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i: ; preds = %bb.ax, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit.i.i.i.i796.i.i.i, %bb.aw, %bb.av
  %i.lb = invoke noundef ptr @_ZNK6google8protobuf10Reflection23MutableRawRepeatedFieldEPNS0_7MessageEPKNS0_15FieldDescriptorENS0_8internal19FieldDescriptorLite7CppTypeEiPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %i.ck, i32 noundef 10, i32 poison, ptr noundef null)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc34:                                         ; preds = %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !151
  %i.ld = ptrtoint ptr %i.lc to i64               ; 2 uses
  %i.le = and i64 %i.ld, 1
  %i.lf = icmp eq i64 %i.le, 0
  %i.lg = add i64 %i.ld, -1
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = select i1 %i.lf, ptr %i.lb, ptr %i.li   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !168 ; 2 uses
  %i.lm = sext i32 %i.ll to i64
  %.idx.i786.i.i.i = shl nsw i64 %i.lm, 3
  %i.ln = getelementptr inbounds i8, ptr %i.lj, i64 %.idx.i786.i.i.i
  %.not9.i787.i.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not9.i787.i.i.i, label %.critedge434.i.i.i, label %.lr.ph.i788.i.i.i

.lr.ph.i788.i.i.i:                                ; preds = %.noexc34, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i794.i.i.i"
  %.sroa.05.010.i789.i.i.i = phi ptr [ %i.nw, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i794.i.i.i" ], [ %i.lj, %.noexc34 ] ; 2 uses
  %i.lo = load ptr, ptr %.sroa.05.010.i789.i.i.i, align 8, !tbaa !82 ; 7 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !44 ; 3 uses
  %i.lr = trunc i64 %i.lq to i1
  br i1 %i.lr, label %bb.ay, label %bb.az, !prof !45

bb.ay:                                            ; preds = %.lr.ph.i788.i.i.i
  %i.ls = add nsw i64 %i.lq, -1
  %i.lt = inttoptr i64 %i.ls to ptr
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i790.i.i.i

bb.az:                                            ; preds = %.lr.ph.i788.i.i.i
  %i.lv = inttoptr i64 %i.lq to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i790.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i790.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i791.i.i.i = phi ptr [ %i.lu, %bb.ay ], [ %i.lv, %bb.az ]
  %i.lw = icmp eq ptr %.0.i.i.i.i791.i.i.i, null
  br i1 %i.lw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i790.i.i.i
  %i.lx = load ptr, ptr %9, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.lx, align 1, !tbaa !173
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i794.i.i.i"

bb.bb:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i790.i.i.i
  %i.ly = load ptr, ptr %i.aq, align 8, !tbaa !205, !nonnull !57, !align !206 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !209 ; 6 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 3 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !210
  %.not.i84 = icmp eq ptr %i.ma, %i.mc
  br i1 %.not.i84, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.lo, ptr %i.ma, align 8, !tbaa !212
  %i.md = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc87:                                         ; preds = %bb.bc
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mf = extractvalue { ptr, ptr } %i.md, 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 68
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !120
  store i32 %i.mh, ptr %i.me, align 8, !tbaa !213
  %i.mi = load ptr, ptr %i.lz, align 8, !tbaa !209
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store ptr %i.mj, ptr %i.lz, align 8, !tbaa !209
  br label %.noexc35

bb.bd:                                            ; preds = %bb.bb
  %.val.i.i = load ptr, ptr %i.ly, align 8, !tbaa !214 ; 5 uses
  %i.mk = ptrtoint ptr %i.ma to i64
  %i.ml = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.mm = sub i64 %i.mk, %i.ml                    ; 3 uses
  %i.mn = icmp eq i64 %i.mm, 9223372036854775792
  br i1 %i.mn, label %.invoke, label %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.mo = ashr exact i64 %i.mm, 4                 ; 3 uses
  %i.mp = icmp eq ptr %i.ma, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.mp, i64 1, i64 %i.mo
  %i.mq = add nsw i64 %.sroa.speculated.i.i.i, %i.mo ; 2 uses
  %i.mr = icmp ult i64 %i.mq, %i.mo
  %i.ms = call i64 @llvm.umin.i64(i64 %i.mq, i64 576460752303423487)
  %i.mt = select i1 %i.mr, i64 576460752303423487, i64 %i.ms ; 3 uses
  %.not.i.i.i85 = icmp ne i64 %i.mt, 0
  call void @llvm.assume(i1 %.not.i.i.i85)
  %i.mu = shl nuw nsw i64 %i.mt, 4                ; 2 uses
  %i.mv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mu) #38
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mm ; 2 uses
  store ptr %i.lo, ptr %i.mw, align 8, !tbaa !212
  %i.mx = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lo)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %.noexc89
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.mz = extractvalue { ptr, ptr } %i.mx, 1
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 68
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !120
  store i32 %i.nb, ptr %i.my, align 8, !tbaa !213
  br i1 %i.mp, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i, label %.lr.ph.i.i.i.i.i86

.lr.ph.i.i.i.i.i86:                               ; preds = %bb.be, %.lr.ph.i.i.i.i.i86
  %.03.i.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i86 ], [ %i.mv, %bb.be ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i86 ], [ %.val.i.i, %bb.be ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !215, !alias.scope !639
  %i.nc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nc, %i.ma
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i, label %.lr.ph.i.i.i.i.i86, !llvm.loop !2

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i: ; preds = %.lr.ph.i.i.i.i.i86, %bb.be
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.mv, %bb.be ], [ %i.nd, %.lr.ph.i.i.i.i.i86 ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i37.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i37.i.i, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i
  %i.nf = load ptr, ptr %i.mb, align 8, !tbaa !210
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = sub i64 %i.ng, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.nh) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

bb.bg:                                            ; preds = %bb.bh
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.bi

bb.bh:                                            ; preds = %.noexc89
  %i.nj = landingpad { ptr, i32 }
          catch ptr null
  %i.nk = extractvalue { ptr, i32 } %i.nj, 0
  %i.nl = call ptr @__cxa_begin_catch(ptr %i.nk) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.mu) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.bj unwind label %bb.bg

bb.bi:                                            ; preds = %bb.bg
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  %i.nn = extractvalue { ptr, i32 } %i.nm, 0
  call void @__clang_call_terminate(ptr %i.nn) #37
  unreachable

bb.bj:                                            ; preds = %bb.bh
  unreachable

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i
  store ptr %i.mv, ptr %i.ly, align 8, !tbaa !214
  store ptr %i.ne, ptr %i.lz, align 8, !tbaa !209
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %i.mt
  store ptr %i.no, ptr %i.mb, align 8, !tbaa !210
  br label %.noexc35

.noexc35:                                         ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %.noexc87
  %i.np = load ptr, ptr %i.ar, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #35
  store ptr %i.lo, ptr %i.k, align 8, !tbaa !81
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 48 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !187 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !188
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -8
  %.not.i.i.i.i.i792.i.i.i = icmp eq ptr %i.nr, %i.nu
  br i1 %.not.i.i.i.i.i792.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.noexc35
  store ptr %i.lo, ptr %i.nr, align 8, !tbaa !81
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store ptr %i.nv, ptr %i.nq, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i793.i.i.i

bb.bl:                                            ; preds = %.noexc35
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.np, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i793.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i793.i.i.i: ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #35
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i794.i.i.i"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i794.i.i.i": ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i793.i.i.i, %bb.ba
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i789.i.i.i, i64 8 ; 2 uses
  %.not.i795.i.i.i = icmp eq ptr %i.nw, %i.ln
  br i1 %.not.i795.i.i.i, label %.critedge434.i.i.i, label %.lr.ph.i788.i.i.i

bb.bm:                                            ; preds = %bb.an
  %i.nx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %i.ck)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc37:                                         ; preds = %bb.bm
  %i.ny = invoke noundef i32 @_ZNK6google8protobuf8internal12MapFieldBase4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc38:                                         ; preds = %.noexc37
  %.not415.i.i.i = icmp eq i32 %i.ny, 0
  br i1 %.not415.i.i.i, label %.critedge434.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc38
  %i.nz = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ck)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.bn
  %i.oa = invoke noundef ptr @_ZNK6google8protobuf10Descriptor7map_keyEv(ptr noundef nonnull align 8 dereferenceable(160) %i.nz)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc40:                                         ; preds = %.noexc39
  %i.ob = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.nz)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %.noexc40
  store ptr %i.bn, ptr %5, align 8, !tbaa !218
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !81
  store ptr %i.ck, ptr %i.at, align 8, !tbaa !219
  store ptr %i.oa, ptr %i.au, align 8, !tbaa !638
  store ptr %i.ob, ptr %i.av, align 8, !tbaa !220
  store ptr %i.nx, ptr %i.aw, align 8, !tbaa !141
  br label %.noexc32.invoke

bb.bo:                                            ; preds = %bb.l
  unreachable

bb.bp:                                            ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = and i8 %i.od, 8
  %.not.i.i819.not.i.i.i = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i819.not.i.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.of = and i8 %i.cr, 16
  %.not.i.i.i820.i.i.i = icmp eq i8 %i.of, 0
  %i.og = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.oh = load ptr, ptr %i.og, align 8, !nonnull !57 ; 2 uses
  %i.oi = load i32, ptr %i.cg, align 8, !tbaa !74
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !60
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 72
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !69
  %i.op = ptrtoint ptr %i.oh to i64
  %i.oq = select i1 %.not.i.i.i820.i.i.i, i64 0, i64 %i.op
  %i.or = ptrtoint ptr %i.oo to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = sdiv exact i64 %i.os, 56
  %sext.i.i.i = shl i64 %i.ot, 32
  %i.ou = ashr exact i64 %sext.i.i.i, 30
  %i.ov = getelementptr inbounds i8, ptr %i.ok, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !13
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !56
  %i.pa = sext i32 %i.oz to i64
  %.not.i.i.i22 = icmp eq i64 %i.ox, %i.pa
  %i.pb = and i8 %i.cm, -2
  %switch1019.i.i.i = icmp eq i8 %i.pb, 10
  %or.cond.i.i.i = and i1 %switch1019.i.i.i, %.not.i.i.i22
  br i1 %or.cond.i.i.i, label %bb.br, label %.critedge434.i.i.i

bb.br:                                            ; preds = %bb.bq
  %i.pc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection14MutableMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %i.ck, ptr noundef null)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc43:                                         ; preds = %bb.br
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !44 ; 3 uses
  %i.pf = trunc i64 %i.pe to i1
  br i1 %i.pf, label %bb.bs, label %bb.bt, !prof !45

bb.bs:                                            ; preds = %.noexc43
  %i.pg = add nsw i64 %i.pe, -1
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i823.i.i.i

bb.bt:                                            ; preds = %.noexc43
  %i.pj = inttoptr i64 %i.pe to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i823.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i823.i.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i824.i.i.i = phi ptr [ %i.pi, %bb.bs ], [ %i.pj, %bb.bt ]
  %i.pk = icmp eq ptr %.0.i.i.i.i824.i.i.i, null
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageE:bb.a
  %i.ri = icmp slt i16 %.val480.i.i.i, 0
  br i1 %i.ri, label %bb.cj, label %bb.ck, !prof !45

bb.cj:                                            ; preds = %bb.ci
  %i.rj = load ptr, ptr %.val481.i.i.i, align 8, !tbaa !646
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !224
  %i.rl = getelementptr inbounds nuw i8, ptr %.val481.i.i.i, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !224 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 10
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !38
  %i.rp = zext i8 %i.ro to i32
  invoke fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS1_15ReflectionVisit11VisitFieldsINS0_7MessageEZNSM_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERSO_E3$_0EEvSR_OT_EUlST_E_EEvRST_OT0_NS1_9FieldMaskEEUliSW_E_NS2_8PrefetchEEEvST_ST_SX_T1_"(ptr %i.rk, i32 0, ptr nonnull %i.rm, i32 %i.rp, ptr noundef nonnull byval(%class.anon.459) align 8 %2)
          to label %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS1_15ReflectionVisit11VisitFieldsINS0_7MessageEZNS4_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS6_E3$_0EEvS9_OT_EUlSB_E_EEvRSB_OT0_NS1_9FieldMaskEEUliSE_E_NS2_8PrefetchEEEvSB_SF_.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ck:                                            ; preds = %bb.ci
  %i.rq = zext nneg i16 %.val480.i.i.i to i64
  %.idx.i833.i.i.i = shl nuw nsw i64 %i.rq, 5
  %i.rr = getelementptr inbounds nuw i8, ptr %.val481.i.i.i, i64 %.idx.i833.i.i.i ; 5 uses
  %.not34.i.i.i.i.i = icmp eq i16 %.val480.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %.preheader23.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader23.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %bb.ck
  %.018.lcssa.i.i.i.i.i = phi ptr [ %.val481.i.i.i, %bb.ck ], [ %i.rx, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not26.i.i.i.i.i = icmp eq ptr %.018.lcssa.i.i.i.i.i, %i.rr
  br i1 %.not26.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph29.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ck, %.lr.ph.i.i.i.i.i
  %.025.i.i.i.i.i = phi i32 [ %i.ry, %.lr.ph.i.i.i.i.i ], [ 0, %bb.ck ] ; 2 uses
  %.01824.i.i.i.i.i = phi ptr [ %i.rx, %.lr.ph.i.i.i.i.i ], [ %.val481.i.i.i, %bb.ck ] ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.01824.i.i.i.i.i, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.01824.i.i.i.i.i, i64 18
  %i.ru = load i8, ptr %i.rt, align 2
  %i.rv = trunc i8 %i.ru to i1
  %i.rw = load ptr, ptr %i.rs, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.rv, ptr %i.rw, ptr %i.rs
  call void @llvm.prefetch.p0(ptr %spec.select.i.i.i.i.i.i, i32 0, i32 3, i32 1)
  %i.rx = getelementptr inbounds nuw i8, ptr %.01824.i.i.i.i.i, i64 32 ; 3 uses
  %i.ry = add nuw nsw i32 %.025.i.i.i.i.i, 1
  %i.rz = icmp ne ptr %i.rx, %i.rr
  %i.sa = icmp samesign ult i32 %.025.i.i.i.i.i, 15
  %i.sb = select i1 %i.rz, i1 %i.sa, i1 false
  br i1 %i.sb, label %.lr.ph.i.i.i.i.i, label %.preheader23.i.i.i.i.i, !llvm.loop !615

.preheader.i.i.i.i.i:                             ; preds = %.noexc51, %.preheader23.i.i.i.i.i
  %.019.lcssa.i.i.i.i.i = phi ptr [ %.val481.i.i.i, %.preheader23.i.i.i.i.i ], [ %i.aas, %.noexc51 ] ; 2 uses
  %.not2131.i.i.i.i.i = icmp eq ptr %.019.lcssa.i.i.i.i.i, %i.rr
  br i1 %.not2131.i.i.i.i.i, label %"_ZN6google8protobuf8internal12ExtensionSet7ForEachIZNS1_15ReflectionVisit11VisitFieldsINS0_7MessageEZNS4_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS6_E3$_0EEvS9_OT_EUlSB_E_EEvRSB_OT0_NS1_9FieldMaskEEUliSE_E_NS2_8PrefetchEEEvSB_SF_.exit.i.i.i", label %.lr.ph33.i.i.i.i.i

.lr.ph29.i.i.i.i.i:                               ; preds = %.preheader23.i.i.i.i.i, %.noexc51
  %.128.i.i.i.i.i = phi ptr [ %i.aat, %.noexc51 ], [ %.018.lcssa.i.i.i.i.i, %.preheader23.i.i.i.i.i ] ; 3 uses
  %.01927.i.i.i.i.i = phi ptr [ %i.aas, %.noexc51 ], [ %.val481.i.i.i, %.preheader23.i.i.i.i.i ] ; 7 uses
  %i.sc = load i32, ptr %.01927.i.i.i.i.i, align 8, !tbaa !648
  %i.sd = getelementptr inbounds nuw i8, ptr %.01927.i.i.i.i.i, i64 8 ; 5 uses
  %i.se = load i32, ptr %i.m, align 4, !tbaa !201 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.01927.i.i.i.i.i, i64 16 ; 2 uses
  %i.sg = load i8, ptr %i.sf, align 8, !tbaa !227 ; 2 uses
  %i.sh = icmp eq i32 %i.se, -1
  br i1 %i.sh, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i67, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i65, !prof !14

_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i65: ; preds = %.lr.ph29.i.i.i.i.i
  %i.si = zext i8 %i.sg to i64
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !85
  %i.sl = shl nuw i32 1, %i.sk
  %i.sm = and i32 %i.sl, %i.se
  %.not154.i66 = icmp eq i32 %i.sm, 0
  br i1 %.not154.i66, label %.noexc51, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i67

_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i67: ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i65, %.lr.ph29.i.i.i.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.01927.i.i.i.i.i, i64 17
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !228, !range !73, !noundef !57
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %bb.cl, label %bb.ds

bb.cl:                                            ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i67
  %i.sq = invoke noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet9Extension7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.sd)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc77:                                         ; preds = %bb.cl
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.noexc51, label %bb.cm

bb.cm:                                            ; preds = %.noexc77
  %i.ss = load i8, ptr %i.sf, align 8, !tbaa !227
  switch i8 %i.ss, label %bb.dr [
    i8 1, label %.noexc51
    i8 2, label %.noexc51
    i8 3, label %.noexc51
    i8 4, label %.noexc51
    i8 5, label %.noexc51
    i8 6, label %.noexc51
    i8 7, label %.noexc51
    i8 8, label %.noexc51
    i8 13, label %.noexc51
    i8 14, label %.noexc51
    i8 15, label %.noexc51
    i8 16, label %.noexc51
    i8 17, label %.noexc51
    i8 18, label %.noexc51
    i8 11, label %bb.cn
    i8 10, label %bb.dc
    i8 12, label %.noexc51
    i8 9, label %.noexc51
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.st = load ptr, ptr %i.sd, align 8, !tbaa !38 ; 3 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !151
  %i.sv = ptrtoint ptr %i.su to i64               ; 2 uses
  %i.sw = and i64 %i.sv, 1
  %i.sx = icmp eq i64 %i.sw, 0
  %i.sy = add i64 %i.sv, -1
  %i.sz = inttoptr i64 %i.sy to ptr
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = select i1 %i.sx, ptr %i.st, ptr %i.ta   ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !168 ; 2 uses
  %i.te = sext i32 %i.td to i64
  %.idx.i166 = shl nsw i64 %i.te, 3
  %i.tf = getelementptr inbounds i8, ptr %i.tb, i64 %.idx.i166
  %.not8.i167 = icmp eq i32 %i.td, 0
  br i1 %.not8.i167, label %.noexc51, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.cn, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i174"
  %.sroa.04.09.i169 = phi ptr [ %i.vr, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i174" ], [ %i.tb, %bb.cn ] ; 2 uses
  %i.tg = load ptr, ptr %.sroa.04.09.i169, align 8, !tbaa !82 ; 7 uses
  %i.th = load ptr, ptr %6, align 8, !tbaa !230, !nonnull !57, !align !206 ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !44 ; 3 uses
  %i.tk = trunc i64 %i.tj to i1
  br i1 %i.tk, label %bb.co, label %bb.cp, !prof !45

bb.co:                                            ; preds = %.lr.ph.i168
  %i.tl = add nsw i64 %i.tj, -1
  %i.tm = inttoptr i64 %i.tl to ptr
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i170

bb.cp:                                            ; preds = %.lr.ph.i168
  %i.to = inttoptr i64 %i.tj to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i170

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i170: ; preds = %bb.cp, %bb.co
  %.0.i.i.i.i171 = phi ptr [ %i.tn, %bb.co ], [ %i.to, %bb.cp ]
  %i.tp = icmp eq ptr %.0.i.i.i.i171, null
  br i1 %i.tp, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i170
  %i.tq = load ptr, ptr %i.th, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.tq, align 1, !tbaa !173
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i174"

bb.cr:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i170
  %i.tr = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !205, !nonnull !57, !align !206 ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8 ; 4 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !209 ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 16 ; 3 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !210
  %.not.i236 = icmp eq ptr %i.tu, %i.tw
  br i1 %.not.i236, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.tg, ptr %i.tu, align 8, !tbaa !212
  %i.tx = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tg)
          to label %.noexc249 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc249:                                        ; preds = %bb.cs
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tz = extractvalue { ptr, ptr } %i.tx, 1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 68
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !120
  store i32 %i.ub, ptr %i.ty, align 8, !tbaa !213
  %i.uc = load ptr, ptr %i.tt, align 8, !tbaa !209
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  store ptr %i.ud, ptr %i.tt, align 8, !tbaa !209
  br label %.noexc176

bb.ct:                                            ; preds = %bb.cr
  %.val.i.i237 = load ptr, ptr %i.ts, align 8, !tbaa !214 ; 5 uses
  %i.ue = ptrtoint ptr %i.tu to i64
  %i.uf = ptrtoint ptr %.val.i.i237 to i64        ; 2 uses
  %i.ug = sub i64 %i.ue, %i.uf                    ; 3 uses
  %i.uh = icmp eq i64 %i.ug, 9223372036854775792
  br i1 %i.uh, label %.invoke, label %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i238

.invoke:                                          ; preds = %bb.bd, %bb.ac, %bb.di, %bb.ct, %bb.fh, %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i238: ; preds = %bb.ct
  %i.ui = ashr exact i64 %i.ug, 4                 ; 3 uses
  %i.uj = icmp eq ptr %i.tu, %.val.i.i237         ; 2 uses
  %.sroa.speculated.i.i.i239 = select i1 %i.uj, i64 1, i64 %i.ui
  %i.uk = add nsw i64 %.sroa.speculated.i.i.i239, %i.ui ; 2 uses
  %i.ul = icmp ult i64 %i.uk, %i.ui
  %i.um = call i64 @llvm.umin.i64(i64 %i.uk, i64 576460752303423487)
  %i.un = select i1 %i.ul, i64 576460752303423487, i64 %i.um ; 3 uses
  %.not.i.i.i240 = icmp ne i64 %i.un, 0
  call void @llvm.assume(i1 %.not.i.i.i240)
  %i.uo = shl nuw nsw i64 %i.un, 4                ; 2 uses
  %i.up = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uo) #38
          to label %.noexc251 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc251:                                        ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i238
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.ug ; 2 uses
  store ptr %i.tg, ptr %i.uq, align 8, !tbaa !212
  %i.ur = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tg)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %.noexc251
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.ut = extractvalue { ptr, ptr } %i.ur, 1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 68
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !120
  store i32 %i.uv, ptr %i.us, align 8, !tbaa !213
  br i1 %i.uj, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i245, label %.lr.ph.i.i.i.i.i241

.lr.ph.i.i.i.i.i241:                              ; preds = %bb.cu, %.lr.ph.i.i.i.i.i241
  %.03.i.i.i.i.i242 = phi ptr [ %i.ux, %.lr.ph.i.i.i.i.i241 ], [ %i.up, %bb.cu ] ; 2 uses
  %.092.i.i.i.i.i243 = phi ptr [ %i.uw, %.lr.ph.i.i.i.i.i241 ], [ %.val.i.i237, %bb.cu ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i242, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i243, i64 16, i1 false), !tbaa.struct !215, !alias.scope !649
  %i.uw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i243, i64 16 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i242, i64 16 ; 2 uses
  %.not.i.i.i.i.i244 = icmp eq ptr %i.uw, %i.tu
  br i1 %.not.i.i.i.i.i244, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i245, label %.lr.ph.i.i.i.i.i241, !llvm.loop !2

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i245: ; preds = %.lr.ph.i.i.i.i.i241, %bb.cu
  %.0.lcssa.i.i.i.i.i246 = phi ptr [ %i.up, %bb.cu ], [ %i.ux, %.lr.ph.i.i.i.i.i241 ]
  %i.uy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i246, i64 16
  %.not.i37.i.i247 = icmp eq ptr %.val.i.i237, null
  br i1 %.not.i37.i.i247, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i248, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i245
  %i.uz = load ptr, ptr %i.tv, align 8, !tbaa !210
  %i.va = ptrtoint ptr %i.uz to i64
  %i.vb = sub i64 %i.va, %i.uf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i237, i64 noundef %i.vb) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i248

bb.cw:                                            ; preds = %bb.cx
  %i.vc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cy

bb.cx:                                            ; preds = %.noexc251
  %i.vd = landingpad { ptr, i32 }
          catch ptr null
  %i.ve = extractvalue { ptr, i32 } %i.vd, 0
  %i.vf = call ptr @__cxa_begin_catch(ptr %i.ve) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.up, i64 noundef %i.uo) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.cz unwind label %bb.cw

bb.cy:                                            ; preds = %bb.cw
  %i.vg = landingpad { ptr, i32 }
          catch ptr null
  %i.vh = extractvalue { ptr, i32 } %i.vg, 0
  call void @__clang_call_terminate(ptr %i.vh) #37
  unreachable

bb.cz:                                            ; preds = %bb.cx
  unreachable

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i248: ; preds = %bb.cv, %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i245
  store ptr %i.up, ptr %i.ts, align 8, !tbaa !214
  store ptr %i.uy, ptr %i.tt, align 8, !tbaa !209
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %i.up, i64 %i.un
  store ptr %i.vi, ptr %i.tv, align 8, !tbaa !210
  br label %.noexc176

.noexc176:                                        ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i248, %.noexc249
  %i.vj = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store ptr %i.tg, ptr %i.a, align 8, !tbaa !81
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 48 ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !187 ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 64
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !188
  %i.vp = getelementptr inbounds i8, ptr %i.vo, i64 -8
  %.not.i.i.i.i.i172 = icmp eq ptr %i.vm, %i.vp
  br i1 %.not.i.i.i.i.i172, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.noexc176
  store ptr %i.tg, ptr %i.vm, align 8, !tbaa !81
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store ptr %i.vq, ptr %i.vl, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i173

bb.db:                                            ; preds = %.noexc176
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.vk, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i173 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i173: ; preds = %bb.db, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i174"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i174": ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i173, %bb.cq
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i169, i64 8 ; 2 uses
  %.not.i175 = icmp eq ptr %i.vr, %i.tf
  br i1 %.not.i175, label %.noexc51, label %.lr.ph.i168

bb.dc:                                            ; preds = %bb.cm
  %i.vs = load ptr, ptr %i.sd, align 8, !tbaa !38 ; 3 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !151
  %i.vu = ptrtoint ptr %i.vt to i64               ; 2 uses
  %i.vv = and i64 %i.vu, 1
  %i.vw = icmp eq i64 %i.vv, 0
  %i.vx = add i64 %i.vu, -1
  %i.vy = inttoptr i64 %i.vx to ptr
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %i.wa = select i1 %i.vw, ptr %i.vs, ptr %i.vz   ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !168 ; 2 uses
  %i.wd = sext i32 %i.wc to i64
  %.idx.i153 = shl nsw i64 %i.wd, 3
  %i.we = getelementptr inbounds i8, ptr %i.wa, i64 %.idx.i153
  %.not8.i154 = icmp eq i32 %i.wc, 0
  br i1 %.not8.i154, label %.noexc51, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.dc, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i161"
  %.sroa.04.09.i156 = phi ptr [ %i.yq, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i161" ], [ %i.wa, %bb.dc ] ; 2 uses
  %i.wf = load ptr, ptr %.sroa.04.09.i156, align 8, !tbaa !82 ; 7 uses
  %i.wg = load ptr, ptr %6, align 8, !tbaa !230, !nonnull !57, !align !206 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !44 ; 3 uses
  %i.wj = trunc i64 %i.wi to i1
  br i1 %i.wj, label %bb.dd, label %bb.de, !prof !45

bb.dd:                                            ; preds = %.lr.ph.i155
  %i.wk = add nsw i64 %i.wi, -1
  %i.wl = inttoptr i64 %i.wk to ptr
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i157

bb.de:                                            ; preds = %.lr.ph.i155
  %i.wn = inttoptr i64 %i.wi to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i157

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i157: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i158 = phi ptr [ %i.wm, %bb.dd ], [ %i.wn, %bb.de ]
  %i.wo = icmp eq ptr %.0.i.i.i.i158, null
  br i1 %i.wo, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i157
  %i.wp = load ptr, ptr %i.wg, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.wp, align 1, !tbaa !173
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i161"

bb.dg:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i157
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !205, !nonnull !57, !align !206 ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8 ; 4 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !209 ; 6 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 16 ; 3 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !210
  %.not.i217 = icmp eq ptr %i.wt, %i.wv
  br i1 %.not.i217, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store ptr %i.wf, ptr %i.wt, align 8, !tbaa !212
  %i.ww = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wf)
          to label %.noexc230 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc230:                                        ; preds = %bb.dh
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wy = extractvalue { ptr, ptr } %i.ww, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 68
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !120
  store i32 %i.xa, ptr %i.wx, align 8, !tbaa !213
  %i.xb = load ptr, ptr %i.ws, align 8, !tbaa !209
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 16
  store ptr %i.xc, ptr %i.ws, align 8, !tbaa !209
  br label %.noexc163

bb.di:                                            ; preds = %bb.dg
  %.val.i.i218 = load ptr, ptr %i.wr, align 8, !tbaa !214 ; 5 uses
  %i.xd = ptrtoint ptr %i.wt to i64
  %i.xe = ptrtoint ptr %.val.i.i218 to i64        ; 2 uses
  %i.xf = sub i64 %i.xd, %i.xe                    ; 3 uses
  %i.xg = icmp eq i64 %i.xf, 9223372036854775792
  br i1 %i.xg, label %.invoke, label %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i219

_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i219: ; preds = %bb.di
  %i.xh = ashr exact i64 %i.xf, 4                 ; 3 uses
  %i.xi = icmp eq ptr %i.wt, %.val.i.i218         ; 2 uses
  %.sroa.speculated.i.i.i220 = select i1 %i.xi, i64 1, i64 %i.xh
  %i.xj = add nsw i64 %.sroa.speculated.i.i.i220, %i.xh ; 2 uses
  %i.xk = icmp ult i64 %i.xj, %i.xh
  %i.xl = call i64 @llvm.umin.i64(i64 %i.xj, i64 576460752303423487)
  %i.xm = select i1 %i.xk, i64 576460752303423487, i64 %i.xl ; 3 uses
  %.not.i.i.i221 = icmp ne i64 %i.xm, 0
  call void @llvm.assume(i1 %.not.i.i.i221)
  %i.xn = shl nuw nsw i64 %i.xm, 4                ; 2 uses
  %i.xo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xn) #38
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

.noexc232:                                        ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i219
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xf ; 2 uses
  store ptr %i.wf, ptr %i.xp, align 8, !tbaa !212
  %i.xq = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wf)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %.noexc232
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xs = extractvalue { ptr, ptr } %i.xq, 1
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 68
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !120
  store i32 %i.xu, ptr %i.xr, align 8, !tbaa !213
  br i1 %i.xi, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i226, label %.lr.ph.i.i.i.i.i222

.lr.ph.i.i.i.i.i222:                              ; preds = %bb.dj, %.lr.ph.i.i.i.i.i222
  %.03.i.i.i.i.i223 = phi ptr [ %i.xw, %.lr.ph.i.i.i.i.i222 ], [ %i.xo, %bb.dj ] ; 2 uses
  %.092.i.i.i.i.i224 = phi ptr [ %i.xv, %.lr.ph.i.i.i.i.i222 ], [ %.val.i.i218, %bb.dj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i223, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i224, i64 16, i1 false), !tbaa.struct !215, !alias.scope !650
  %i.xv = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i224, i64 16 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i223, i64 16 ; 2 uses
  %.not.i.i.i.i.i225 = icmp eq ptr %i.xv, %i.wt
  br i1 %.not.i.i.i.i.i225, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i226, label %.lr.ph.i.i.i.i.i222, !llvm.loop !2

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i226: ; preds = %.lr.ph.i.i.i.i.i222, %bb.dj
  %.0.lcssa.i.i.i.i.i227 = phi ptr [ %i.xo, %bb.dj ], [ %i.xw, %.lr.ph.i.i.i.i.i222 ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i227, i64 16
  %.not.i37.i.i228 = icmp eq ptr %.val.i.i218, null
  br i1 %.not.i37.i.i228, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i229, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i226
  %i.xy = load ptr, ptr %i.wu, align 8, !tbaa !210
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = sub i64 %i.xz, %i.xe
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i218, i64 noundef %i.ya) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i229

bb.dl:                                            ; preds = %bb.dm
  %i.yb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.dn

bb.dm:                                            ; preds = %.noexc232
  %i.yc = landingpad { ptr, i32 }
          catch ptr null
  %i.yd = extractvalue { ptr, i32 } %i.yc, 0
  %i.ye = call ptr @__cxa_begin_catch(ptr %i.yd) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.xo, i64 noundef %i.xn) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.do unwind label %bb.dl

bb.dn:                                            ; preds = %bb.dl
  %i.yf = landingpad { ptr, i32 }
          catch ptr null
  %i.yg = extractvalue { ptr, i32 } %i.yf, 0
  call void @__clang_call_terminate(ptr %i.yg) #37
  unreachable

bb.do:                                            ; preds = %bb.dm
  unreachable

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i229: ; preds = %bb.dk, %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i226
  store ptr %i.xo, ptr %i.wr, align 8, !tbaa !214
  store ptr %i.xx, ptr %i.ws, align 8, !tbaa !209
  %i.yh = getelementptr inbounds nuw [16 x i8], ptr %i.xo, i64 %i.xm
  store ptr %i.yh, ptr %i.wu, align 8, !tbaa !210
  br label %.noexc163

.noexc163:                                        ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i229, %.noexc230
  %i.yi = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store ptr %i.wf, ptr %i.b, align 8, !tbaa !81
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 48 ; 2 uses
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !187 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 64
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !188
  %i.yo = getelementptr inbounds i8, ptr %i.yn, i64 -8
  %.not.i.i.i.i.i159 = icmp eq ptr %i.yl, %i.yo
  br i1 %.not.i.i.i.i.i159, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.noexc163
  store ptr %i.wf, ptr %i.yl, align 8, !tbaa !81
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  store ptr %i.yp, ptr %i.yk, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i160

bb.dq:                                            ; preds = %.noexc163
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.yj, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i160 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i160: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i161"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i161": ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i160, %bb.df
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i156, i64 8 ; 2 uses
  %.not.i162 = icmp eq ptr %i.yq, %i.we
  br i1 %.not.i162, label %.noexc51, label %.lr.ph.i155

bb.dr:                                            ; preds = %bb.cm
  unreachable

bb.ds:                                            ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i67
  %i.yr = getelementptr inbounds nuw i8, ptr %.01927.i.i.i.i.i, i64 18
  %i.ys = load i8, ptr %i.yr, align 2
  %i.yt = and i8 %i.ys, 2
  %.not.i68 = icmp eq i8 %i.yt, 0
  br i1 %.not.i68, label %bb.dt, label %.noexc51

bb.dt:                                            ; preds = %bb.ds
  switch i8 %i.sg, label %bb.ej [
    i8 1, label %.noexc51
    i8 2, label %.noexc51
    i8 3, label %.noexc51
    i8 4, label %.noexc51
    i8 5, label %.noexc51
    i8 6, label %.noexc51
    i8 7, label %.noexc51
    i8 8, label %.noexc51
    i8 13, label %.noexc51
    i8 14, label %.noexc51
    i8 15, label %.noexc51
    i8 16, label %.noexc51
    i8 17, label %.noexc51
    i8 18, label %.noexc51
    i8 10, label %bb.du
    i8 11, label %bb.eb
    i8 12, label %.noexc51
    i8 9, label %.noexc51
  ]

bb.du:                                            ; preds = %bb.dt
  %.val.i76 = load ptr, ptr %6, align 8, !tbaa !230 ; 3 uses
  %i.yu = load ptr, ptr %i.sd, align 8, !tbaa !38 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !44 ; 3 uses
  %i.yx = trunc i64 %i.yw to i1
  br i1 %i.yx, label %bb.dv, label %bb.dw, !prof !45

bb.dv:                                            ; preds = %bb.du
  %i.yy = add nsw i64 %i.yw, -1
  %i.yz = inttoptr i64 %i.yy to ptr
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i145

bb.dw:                                            ; preds = %bb.du
  %i.zb = inttoptr i64 %i.yw to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i145

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i145: ; preds = %bb.dw, %bb.dv
  %.0.i.i.i.i146 = phi ptr [ %i.za, %bb.dv ], [ %i.zb, %bb.dw ]
  %i.zc = icmp eq ptr %.0.i.i.i.i146, null
  br i1 %i.zc, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i145
  %i.zd = load ptr, ptr %.val.i76, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.zd, align 1, !tbaa !173
  br label %.noexc51

bb.dy:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i145
  %i.ze = getelementptr inbounds nuw i8, ptr %.val.i76, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !205, !nonnull !57, !align !206
  invoke fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.zf, ptr noundef nonnull align 8 dereferenceable(16) %i.yu)
          to label %.noexc150 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc150:                                        ; preds = %bb.dy
  %i.zg = getelementptr inbounds nuw i8, ptr %.val.i76, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store ptr %i.yu, ptr %i.c, align 8, !tbaa !81
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 48 ; 2 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !187 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 64
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !188
  %i.zm = getelementptr inbounds i8, ptr %i.zl, i64 -8
  %.not.i.i.i.i.i147 = icmp eq ptr %i.zj, %i.zm
  br i1 %.not.i.i.i.i.i147, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %.noexc150
  store ptr %i.yu, ptr %i.zj, align 8, !tbaa !81
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store ptr %i.zn, ptr %i.zi, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i148

bb.ea:                                            ; preds = %.noexc150
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.zh, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i148: ; preds = %bb.ea, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  br label %.noexc51

bb.eb:                                            ; preds = %bb.dt
  %i.zo = getelementptr inbounds nuw i8, ptr %.01927.i.i.i.i.i, i64 24
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !231
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageE:bb.a
  br i1 %i.aab, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i137
  %i.aac = load ptr, ptr %.val81.i74, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.aac, align 1, !tbaa !173
  br label %.noexc51

bb.eg:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i137
  %i.aad = getelementptr inbounds nuw i8, ptr %.val81.i74, i64 8
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !205, !nonnull !57, !align !206
  invoke fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aae, ptr noundef nonnull align 8 dereferenceable(16) %i.zt)
          to label %.noexc142 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc142:                                        ; preds = %bb.eg
  %i.aaf = getelementptr inbounds nuw i8, ptr %.val81.i74, i64 16
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store ptr %i.zt, ptr %i.d, align 8, !tbaa !81
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 48 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !187 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 64
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !188
  %i.aal = getelementptr inbounds i8, ptr %i.aak, i64 -8
  %.not.i.i.i.i.i139 = icmp eq ptr %i.aai, %i.aal
  br i1 %.not.i.i.i.i.i139, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.noexc142
  store ptr %i.zt, ptr %i.aai, align 8, !tbaa !81
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  store ptr %i.aam, ptr %i.aah, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i140

bb.ei:                                            ; preds = %.noexc142
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aag, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i140: ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  br label %.noexc51

bb.ej:                                            ; preds = %bb.dt
  unreachable

.noexc51:                                         ; preds = %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i161", %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i174", %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.ds, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %bb.cm, %.noexc77, %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i65, %bb.cn, %bb.dc, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i148, %bb.dx, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i140, %bb.ef
  %i.aan = getelementptr inbounds nuw i8, ptr %.128.i.i.i.i.i, i64 8 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.128.i.i.i.i.i, i64 18
  %i.aap = load i8, ptr %i.aao, align 2
  %i.aaq = trunc i8 %i.aap to i1
  %i.aar = load ptr, ptr %i.aan, align 8
  %spec.select.i22.i.i.i.i.i = select i1 %i.aaq, ptr %i.aar, ptr %i.aan
  call void @llvm.prefetch.p0(ptr %spec.select.i22.i.i.i.i.i, i32 0, i32 3, i32 1)
  %i.aas = getelementptr inbounds nuw i8, ptr %.01927.i.i.i.i.i, i64 32 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.128.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i834.i.i.i = icmp eq ptr %i.aat, %i.rr
  br i1 %.not.i.i834.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph29.i.i.i.i.i, !llvm.loop !622

.lr.ph33.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i, %.noexc52
  %.12032.i.i.i.i.i = phi ptr [ %i.ajf, %.noexc52 ], [ %.019.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 7 uses
  %i.aau = load i32, ptr %.12032.i.i.i.i.i, align 8, !tbaa !648
  %i.aav = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 8 ; 5 uses
  %i.aaw = load i32, ptr %i.m, align 4, !tbaa !201 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 16 ; 2 uses
  %i.aay = load i8, ptr %i.aax, align 8, !tbaa !227 ; 2 uses
  %i.aaz = icmp eq i32 %i.aaw, -1
  br i1 %i.aaz, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i, !prof !14

_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i: ; preds = %.lr.ph33.i.i.i.i.i
  %i.aba = zext i8 %i.aay to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.aba
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !85
  %i.abd = shl nuw i32 1, %i.abc
  %i.abe = and i32 %i.abd, %i.aaw
  %.not154.i = icmp eq i32 %i.abe, 0
  br i1 %.not154.i, label %.noexc52, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i

_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i: ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.i, %.lr.ph33.i.i.i.i.i
  %i.abf = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 17
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !228, !range !73, !noundef !57
  %i.abh = trunc nuw i8 %i.abg to i1
  br i1 %i.abh, label %bb.ek, label %bb.fr

bb.ek:                                            ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i
  %i.abi = invoke noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet9Extension7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aav)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc59:                                         ; preds = %bb.ek
  %i.abj = icmp eq i32 %i.abi, 0
  br i1 %i.abj, label %.noexc52, label %bb.el

bb.el:                                            ; preds = %.noexc59
  %i.abk = load i8, ptr %i.aax, align 8, !tbaa !227
  switch i8 %i.abk, label %bb.fq [
    i8 1, label %.noexc52
    i8 2, label %.noexc52
    i8 3, label %.noexc52
    i8 4, label %.noexc52
    i8 5, label %.noexc52
    i8 6, label %.noexc52
    i8 7, label %.noexc52
    i8 8, label %.noexc52
    i8 13, label %.noexc52
    i8 14, label %.noexc52
    i8 15, label %.noexc52
    i8 16, label %.noexc52
    i8 17, label %.noexc52
    i8 18, label %.noexc52
    i8 11, label %bb.em
    i8 10, label %bb.fb
    i8 12, label %.noexc52
    i8 9, label %.noexc52
  ]

bb.em:                                            ; preds = %bb.el
  %i.abl = load ptr, ptr %i.aav, align 8, !tbaa !38 ; 3 uses
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !151
  %i.abn = ptrtoint ptr %i.abm to i64             ; 2 uses
  %i.abo = and i64 %i.abn, 1
  %i.abp = icmp eq i64 %i.abo, 0
  %i.abq = add i64 %i.abn, -1
  %i.abr = inttoptr i64 %i.abq to ptr
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = select i1 %i.abp, ptr %i.abl, ptr %i.abs ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !168 ; 2 uses
  %i.abw = sext i32 %i.abv to i64
  %.idx.i125 = shl nsw i64 %i.abw, 3
  %i.abx = getelementptr inbounds i8, ptr %i.abt, i64 %.idx.i125
  %.not8.i126 = icmp eq i32 %i.abv, 0
  br i1 %.not8.i126, label %.noexc52, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.em, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i133"
  %.sroa.04.09.i128 = phi ptr [ %i.aej, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i133" ], [ %i.abt, %bb.em ] ; 2 uses
  %i.aby = load ptr, ptr %.sroa.04.09.i128, align 8, !tbaa !82 ; 7 uses
  %i.abz = load ptr, ptr %6, align 8, !tbaa !230, !nonnull !57, !align !206 ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !44 ; 3 uses
  %i.acc = trunc i64 %i.acb to i1
  br i1 %i.acc, label %bb.en, label %bb.eo, !prof !45

bb.en:                                            ; preds = %.lr.ph.i127
  %i.acd = add nsw i64 %i.acb, -1
  %i.ace = inttoptr i64 %i.acd to ptr
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i129

bb.eo:                                            ; preds = %.lr.ph.i127
  %i.acg = inttoptr i64 %i.acb to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i129

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i129: ; preds = %bb.eo, %bb.en
  %.0.i.i.i.i130 = phi ptr [ %i.acf, %bb.en ], [ %i.acg, %bb.eo ]
  %i.ach = icmp eq ptr %.0.i.i.i.i130, null
  br i1 %i.ach, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i129
  %i.aci = load ptr, ptr %i.abz, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.aci, align 1, !tbaa !173
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i133"

bb.eq:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i129
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !205, !nonnull !57, !align !206 ; 4 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 8 ; 4 uses
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !209 ; 6 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 16 ; 3 uses
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !210
  %.not.i198 = icmp eq ptr %i.acm, %i.aco
  br i1 %.not.i198, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  store ptr %i.aby, ptr %i.acm, align 8, !tbaa !212
  %i.acp = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aby)
          to label %.noexc211 unwind label %.loopexit256

.noexc211:                                        ; preds = %bb.er
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %i.acr = extractvalue { ptr, ptr } %i.acp, 1
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 68
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !120
  store i32 %i.act, ptr %i.acq, align 8, !tbaa !213
  %i.acu = load ptr, ptr %i.acl, align 8, !tbaa !209
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 16
  store ptr %i.acv, ptr %i.acl, align 8, !tbaa !209
  br label %.noexc135

bb.es:                                            ; preds = %bb.eq
  %.val.i.i199 = load ptr, ptr %i.ack, align 8, !tbaa !214 ; 5 uses
  %i.acw = ptrtoint ptr %i.acm to i64
  %i.acx = ptrtoint ptr %.val.i.i199 to i64       ; 2 uses
  %i.acy = sub i64 %i.acw, %i.acx                 ; 3 uses
  %i.acz = icmp eq i64 %i.acy, 9223372036854775792
  br i1 %i.acz, label %.invoke, label %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i200

_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i200: ; preds = %bb.es
  %i.ada = ashr exact i64 %i.acy, 4               ; 3 uses
  %i.adb = icmp eq ptr %i.acm, %.val.i.i199       ; 2 uses
  %.sroa.speculated.i.i.i201 = select i1 %i.adb, i64 1, i64 %i.ada
  %i.adc = add nsw i64 %.sroa.speculated.i.i.i201, %i.ada ; 2 uses
  %i.add = icmp ult i64 %i.adc, %i.ada
  %i.ade = call i64 @llvm.umin.i64(i64 %i.adc, i64 576460752303423487)
  %i.adf = select i1 %i.add, i64 576460752303423487, i64 %i.ade ; 3 uses
  %.not.i.i.i202 = icmp ne i64 %i.adf, 0
  call void @llvm.assume(i1 %.not.i.i.i202)
  %i.adg = shl nuw nsw i64 %i.adf, 4              ; 2 uses
  %i.adh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adg) #38
          to label %.noexc213 unwind label %.loopexit256 ; 6 uses

.noexc213:                                        ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i200
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 %i.acy ; 2 uses
  store ptr %i.aby, ptr %i.adi, align 8, !tbaa !212
  %i.adj = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aby)
          to label %bb.et unwind label %bb.ew

bb.et:                                            ; preds = %.noexc213
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adl = extractvalue { ptr, ptr } %i.adj, 1
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 68
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !120
  store i32 %i.adn, ptr %i.adk, align 8, !tbaa !213
  br i1 %i.adb, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i207, label %.lr.ph.i.i.i.i.i203

.lr.ph.i.i.i.i.i203:                              ; preds = %bb.et, %.lr.ph.i.i.i.i.i203
  %.03.i.i.i.i.i204 = phi ptr [ %i.adp, %.lr.ph.i.i.i.i.i203 ], [ %i.adh, %bb.et ] ; 2 uses
  %.092.i.i.i.i.i205 = phi ptr [ %i.ado, %.lr.ph.i.i.i.i.i203 ], [ %.val.i.i199, %bb.et ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i204, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i205, i64 16, i1 false), !tbaa.struct !215, !alias.scope !651
  %i.ado = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i205, i64 16 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i204, i64 16 ; 2 uses
  %.not.i.i.i.i.i206 = icmp eq ptr %i.ado, %i.acm
  br i1 %.not.i.i.i.i.i206, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i207, label %.lr.ph.i.i.i.i.i203, !llvm.loop !2

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i207: ; preds = %.lr.ph.i.i.i.i.i203, %bb.et
  %.0.lcssa.i.i.i.i.i208 = phi ptr [ %i.adh, %bb.et ], [ %i.adp, %.lr.ph.i.i.i.i.i203 ]
  %i.adq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i208, i64 16
  %.not.i37.i.i209 = icmp eq ptr %.val.i.i199, null
  br i1 %.not.i37.i.i209, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i210, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i207
  %i.adr = load ptr, ptr %i.acn, align 8, !tbaa !210
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = sub i64 %i.ads, %i.acx
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i199, i64 noundef %i.adt) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i210

bb.ev:                                            ; preds = %bb.ew
  %i.adu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ex

bb.ew:                                            ; preds = %.noexc213
  %i.adv = landingpad { ptr, i32 }
          catch ptr null
  %i.adw = extractvalue { ptr, i32 } %i.adv, 0
  %i.adx = call ptr @__cxa_begin_catch(ptr %i.adw) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.adh, i64 noundef %i.adg) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.ey unwind label %bb.ev

bb.ex:                                            ; preds = %bb.ev
  %i.ady = landingpad { ptr, i32 }
          catch ptr null
  %i.adz = extractvalue { ptr, i32 } %i.ady, 0
  call void @__clang_call_terminate(ptr %i.adz) #37
  unreachable

bb.ey:                                            ; preds = %bb.ew
  unreachable

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i210: ; preds = %bb.eu, %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i207
  store ptr %i.adh, ptr %i.ack, align 8, !tbaa !214
  store ptr %i.adq, ptr %i.acl, align 8, !tbaa !209
  %i.aea = getelementptr inbounds nuw [16 x i8], ptr %i.adh, i64 %i.adf
  store ptr %i.aea, ptr %i.acn, align 8, !tbaa !210
  br label %.noexc135

.noexc135:                                        ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i210, %.noexc211
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  store ptr %i.aby, ptr %i.e, align 8, !tbaa !81
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 48 ; 2 uses
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !187 ; 3 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 64
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !188
  %i.aeh = getelementptr inbounds i8, ptr %i.aeg, i64 -8
  %.not.i.i.i.i.i131 = icmp eq ptr %i.aee, %i.aeh
  br i1 %.not.i.i.i.i.i131, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.noexc135
  store ptr %i.aby, ptr %i.aee, align 8, !tbaa !81
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  store ptr %i.aei, ptr %i.aed, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i132

bb.fa:                                            ; preds = %.noexc135
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.aec, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i132 unwind label %.loopexit256

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i132: ; preds = %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i133"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i133": ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i132, %bb.ep
  %i.aej = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i128, i64 8 ; 2 uses
  %.not.i134 = icmp eq ptr %i.aej, %i.abx
  br i1 %.not.i134, label %.noexc52, label %.lr.ph.i127

bb.fb:                                            ; preds = %bb.el
  %i.aek = load ptr, ptr %i.aav, align 8, !tbaa !38 ; 3 uses
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !151
  %i.aem = ptrtoint ptr %i.ael to i64             ; 2 uses
  %i.aen = and i64 %i.aem, 1
  %i.aeo = icmp eq i64 %i.aen, 0
  %i.aep = add i64 %i.aem, -1
  %i.aeq = inttoptr i64 %i.aep to ptr
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  %i.aes = select i1 %i.aeo, ptr %i.aek, ptr %i.aer ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aeu = load i32, ptr %i.aet, align 8, !tbaa !168 ; 2 uses
  %i.aev = sext i32 %i.aeu to i64
  %.idx.i = shl nsw i64 %i.aev, 3
  %i.aew = getelementptr inbounds i8, ptr %i.aes, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.aeu, 0
  br i1 %.not8.i, label %.noexc52, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fb, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i"
  %.sroa.04.09.i = phi ptr [ %i.ahi, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i" ], [ %i.aes, %bb.fb ] ; 2 uses
  %i.aex = load ptr, ptr %.sroa.04.09.i, align 8, !tbaa !82 ; 7 uses
  %i.aey = load ptr, ptr %6, align 8, !tbaa !230, !nonnull !57, !align !206 ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !44 ; 3 uses
  %i.afb = trunc i64 %i.afa to i1
  br i1 %i.afb, label %bb.fc, label %bb.fd, !prof !45

bb.fc:                                            ; preds = %.lr.ph.i
  %i.afc = add nsw i64 %i.afa, -1
  %i.afd = inttoptr i64 %i.afc to ptr
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i118

bb.fd:                                            ; preds = %.lr.ph.i
  %i.aff = inttoptr i64 %i.afa to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i118

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i118: ; preds = %bb.fd, %bb.fc
  %.0.i.i.i.i119 = phi ptr [ %i.afe, %bb.fc ], [ %i.aff, %bb.fd ]
  %i.afg = icmp eq ptr %.0.i.i.i.i119, null
  br i1 %i.afg, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i118
  %i.afh = load ptr, ptr %i.aey, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.afh, align 1, !tbaa !173
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i"

bb.ff:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i118
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !205, !nonnull !57, !align !206 ; 4 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8 ; 4 uses
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !209 ; 6 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 16 ; 3 uses
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !210
  %.not.i179 = icmp eq ptr %i.afl, %i.afn
  br i1 %.not.i179, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  store ptr %i.aex, ptr %i.afl, align 8, !tbaa !212
  %i.afo = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aex)
          to label %.noexc192 unwind label %.loopexit.split-lp.loopexit

.noexc192:                                        ; preds = %bb.fg
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afq = extractvalue { ptr, ptr } %i.afo, 1
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 68
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !120
  store i32 %i.afs, ptr %i.afp, align 8, !tbaa !213
  %i.aft = load ptr, ptr %i.afk, align 8, !tbaa !209
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  store ptr %i.afu, ptr %i.afk, align 8, !tbaa !209
  br label %.noexc123

bb.fh:                                            ; preds = %bb.ff
  %.val.i.i180 = load ptr, ptr %i.afj, align 8, !tbaa !214 ; 5 uses
  %i.afv = ptrtoint ptr %i.afl to i64
  %i.afw = ptrtoint ptr %.val.i.i180 to i64       ; 2 uses
  %i.afx = sub i64 %i.afv, %i.afw                 ; 3 uses
  %i.afy = icmp eq i64 %i.afx, 9223372036854775792
  br i1 %i.afy, label %.invoke, label %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i181

_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i181: ; preds = %bb.fh
  %i.afz = ashr exact i64 %i.afx, 4               ; 3 uses
  %i.aga = icmp eq ptr %i.afl, %.val.i.i180       ; 2 uses
  %.sroa.speculated.i.i.i182 = select i1 %i.aga, i64 1, i64 %i.afz
  %i.agb = add nsw i64 %.sroa.speculated.i.i.i182, %i.afz ; 2 uses
  %i.agc = icmp ult i64 %i.agb, %i.afz
  %i.agd = call i64 @llvm.umin.i64(i64 %i.agb, i64 576460752303423487)
  %i.age = select i1 %i.agc, i64 576460752303423487, i64 %i.agd ; 3 uses
  %.not.i.i.i183 = icmp ne i64 %i.age, 0
  call void @llvm.assume(i1 %.not.i.i.i183)
  %i.agf = shl nuw nsw i64 %i.age, 4              ; 2 uses
  %i.agg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agf) #38
          to label %.noexc194 unwind label %.loopexit.split-lp.loopexit ; 6 uses

.noexc194:                                        ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i181
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 %i.afx ; 2 uses
  store ptr %i.aex, ptr %i.agh, align 8, !tbaa !212
  %i.agi = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aex)
          to label %bb.fi unwind label %bb.fl

bb.fi:                                            ; preds = %.noexc194
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agk = extractvalue { ptr, ptr } %i.agi, 1
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 68
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !120
  store i32 %i.agm, ptr %i.agj, align 8, !tbaa !213
  br i1 %i.aga, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i188, label %.lr.ph.i.i.i.i.i184

.lr.ph.i.i.i.i.i184:                              ; preds = %bb.fi, %.lr.ph.i.i.i.i.i184
  %.03.i.i.i.i.i185 = phi ptr [ %i.ago, %.lr.ph.i.i.i.i.i184 ], [ %i.agg, %bb.fi ] ; 2 uses
  %.092.i.i.i.i.i186 = phi ptr [ %i.agn, %.lr.ph.i.i.i.i.i184 ], [ %.val.i.i180, %bb.fi ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i.i185, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i.i186, i64 16, i1 false), !tbaa.struct !215, !alias.scope !652
  %i.agn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i186, i64 16 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i185, i64 16 ; 2 uses
  %.not.i.i.i.i.i187 = icmp eq ptr %i.agn, %i.afl
  br i1 %.not.i.i.i.i.i187, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i188, label %.lr.ph.i.i.i.i.i184, !llvm.loop !2

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i188: ; preds = %.lr.ph.i.i.i.i.i184, %bb.fi
  %.0.lcssa.i.i.i.i.i189 = phi ptr [ %i.agg, %bb.fi ], [ %i.ago, %.lr.ph.i.i.i.i.i184 ]
  %i.agp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i189, i64 16
  %.not.i37.i.i190 = icmp eq ptr %.val.i.i180, null
  br i1 %.not.i37.i.i190, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i191, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i188
  %i.agq = load ptr, ptr %i.afm, align 8, !tbaa !210
  %i.agr = ptrtoint ptr %i.agq to i64
  %i.ags = sub i64 %i.agr, %i.afw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i180, i64 noundef %i.ags) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i191

bb.fk:                                            ; preds = %bb.fl
  %i.agt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.fm

bb.fl:                                            ; preds = %.noexc194
  %i.agu = landingpad { ptr, i32 }
          catch ptr null
  %i.agv = extractvalue { ptr, i32 } %i.agu, 0
  %i.agw = call ptr @__cxa_begin_catch(ptr %i.agv) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.agg, i64 noundef %i.agf) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.fn unwind label %bb.fk

bb.fm:                                            ; preds = %bb.fk
  %i.agx = landingpad { ptr, i32 }
          catch ptr null
  %i.agy = extractvalue { ptr, i32 } %i.agx, 0
  call void @__clang_call_terminate(ptr %i.agy) #37
  unreachable

bb.fn:                                            ; preds = %bb.fl
  unreachable

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i191: ; preds = %bb.fj, %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i.i188
  store ptr %i.agg, ptr %i.afj, align 8, !tbaa !214
  store ptr %i.agp, ptr %i.afk, align 8, !tbaa !209
  %i.agz = getelementptr inbounds nuw [16 x i8], ptr %i.agg, i64 %i.age
  store ptr %i.agz, ptr %i.afm, align 8, !tbaa !210
  br label %.noexc123

.noexc123:                                        ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i191, %.noexc192
  %i.aha = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  store ptr %i.aex, ptr %i.f, align 8, !tbaa !81
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 48 ; 2 uses
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !187 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 64
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !188
  %i.ahg = getelementptr inbounds i8, ptr %i.ahf, i64 -8
  %.not.i.i.i.i.i120 = icmp eq ptr %i.ahd, %i.ahg
  br i1 %.not.i.i.i.i.i120, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %.noexc123
  store ptr %i.aex, ptr %i.ahd, align 8, !tbaa !81
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  store ptr %i.ahh, ptr %i.ahc, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121

bb.fp:                                            ; preds = %.noexc123
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ahb, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121 unwind label %.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121: ; preds = %bb.fp, %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  br label %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i"

"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit.i": ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i121, %bb.fe
  %i.ahi = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 8 ; 2 uses
  %.not.i122 = icmp eq ptr %i.ahi, %i.aew
  br i1 %.not.i122, label %.noexc52, label %.lr.ph.i

bb.fq:                                            ; preds = %bb.el
  unreachable

bb.fr:                                            ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread.i
  %i.ahj = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 18
  %i.ahk = load i8, ptr %i.ahj, align 2
  %i.ahl = and i8 %i.ahk, 2
  %.not.i = icmp eq i8 %i.ahl, 0
  br i1 %.not.i, label %bb.fs, label %.noexc52

bb.fs:                                            ; preds = %bb.fr
  switch i8 %i.aay, label %bb.gi [
    i8 1, label %.noexc52
    i8 2, label %.noexc52
    i8 3, label %.noexc52
    i8 4, label %.noexc52
    i8 5, label %.noexc52
    i8 6, label %.noexc52
    i8 7, label %.noexc52
    i8 8, label %.noexc52
    i8 13, label %.noexc52
    i8 14, label %.noexc52
    i8 15, label %.noexc52
    i8 16, label %.noexc52
    i8 17, label %.noexc52
    i8 18, label %.noexc52
    i8 10, label %bb.ft
    i8 11, label %bb.ga
    i8 12, label %.noexc52
    i8 9, label %.noexc52
  ]

bb.ft:                                            ; preds = %bb.fs
  %.val.i = load ptr, ptr %6, align 8, !tbaa !230 ; 3 uses
  %i.ahm = load ptr, ptr %i.aav, align 8, !tbaa !38 ; 4 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.aho = load i64, ptr %i.ahn, align 8, !tbaa !44 ; 3 uses
  %i.ahp = trunc i64 %i.aho to i1
  br i1 %i.ahp, label %bb.fu, label %bb.fv, !prof !45

bb.fu:                                            ; preds = %bb.ft
  %i.ahq = add nsw i64 %i.aho, -1
  %i.ahr = inttoptr i64 %i.ahq to ptr
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !48
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112

bb.fv:                                            ; preds = %bb.ft
  %i.aht = inttoptr i64 %i.aho to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112: ; preds = %bb.fv, %bb.fu
  %.0.i.i.i.i113 = phi ptr [ %i.ahs, %bb.fu ], [ %i.aht, %bb.fv ]
  %i.ahu = icmp eq ptr %.0.i.i.i.i113, null
  br i1 %i.ahu, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112
  %i.ahv = load ptr, ptr %.val.i, align 8, !tbaa !204, !nonnull !57
  store i8 1, ptr %i.ahv, align 1, !tbaa !173
  br label %.noexc52

bb.fx:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i112
  %i.ahw = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !205, !nonnull !57, !align !206
  invoke fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ahx, ptr noundef nonnull align 8 dereferenceable(16) %i.ahm)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc116:                                        ; preds = %bb.fx
  %i.ahy = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ahz = load ptr, ptr %i.ahy, align 8, !tbaa !216, !nonnull !57, !align !206 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #35
  store ptr %i.ahm, ptr %i.g, align 8, !tbaa !81
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 48 ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !187 ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !188
  %i.aie = getelementptr inbounds i8, ptr %i.aid, i64 -8
  %.not.i.i.i.i.i114 = icmp eq ptr %i.aib, %i.aie
  br i1 %.not.i.i.i.i.i114, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %.noexc116
  store ptr %i.ahm, ptr %i.aib, align 8, !tbaa !81
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  store ptr %i.aif, ptr %i.aia, align 8, !tbaa !187
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i115

bb.fz:                                            ; preds = %.noexc116
  invoke void @_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ahz, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit.i.i115: ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #35
  br label %.noexc52

bb.ga:                                            ; preds = %bb.fs
  %i.aig = getelementptr inbounds nuw i8, ptr %.12032.i.i.i.i.i, i64 24
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !231
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageE:bb.a

bb.gn:                                            ; preds = %._crit_edge
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit256:                                     ; preds = %bb.fa, %bb.er, %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i200
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i181, %bb.fg, %bb.fp
  %lpad.loopexit257.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.db, %bb.cs, %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i238
  %lpad.loopexit261.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i219, %bb.dh, %bb.dq
  %lpad.loopexit263.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.ab, %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i92
  %lpad.loopexit267.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.bc, %bb.bl
  %lpad.loopexit269.a = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.gf, %bb.fx, %bb.ek, %bb.gb, %bb.gh, %bb.fz
  %lpad.loopexit273 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.eg, %bb.dy, %bb.ea, %bb.ei, %bb.ec, %bb.cl
  %lpad.loopexit275 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bv, %bb.cf, %.noexc32.invoke, %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i.i.i.i, %bb.al, %.noexc28, %bb.am, %.noexc30, %.noexc31, %_ZN6google8protobuf8internal37RepeatedPtrEntityDynamicFieldInfoBaseINS0_7MessageES3_E7MutableEv.exit.i785.i.i.i, %bb.bm, %.noexc37, %bb.bn, %.noexc39, %.noexc40, %bb.br, %bb.bx, %bb.bz, %bb.cb, %bb.ch
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.cj, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE3popEv.exit
  %lpad.loopexit280 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j
  %lpad.loopexit.split-lp281 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit256, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.af, %bb.ev, %bb.cw, %bb.dl, %bb.fk, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.ni, %bb.bg ], [ %i.hq, %bb.af ], [ %i.agt, %bb.fk ], [ %i.adu, %bb.ev ], [ %i.yb, %bb.dl ], [ %i.vc, %bb.cw ], [ %lpad.loopexit, %.loopexit256 ], [ %lpad.loopexit257.a, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit261.a, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit263.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit267.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit269.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit273, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit275, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit278, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit280, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp281, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.gq

._crit_edge:                                      ; preds = %bb.gj, %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.ajq = load ptr, ptr %1, align 8, !tbaa !97
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 16
  %i.ajs = load ptr, ptr %i.ajr, align 8
  invoke void %i.ajs(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.loopexit unwind label %bb.gn

.loopexit:                                        ; preds = %._crit_edge
  %i.ajt = load ptr, ptr %8, align 8, !tbaa !232  ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.ajt, null
  br i1 %.not.i.i.i53, label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit, label %bb.go

bb.go:                                            ; preds = %.loopexit
  %i.aju = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ajv = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !190 ; 2 uses
  %i.ajx = load ptr, ptr %i.aju, align 8, !tbaa !233 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 8
  %i.ajz = icmp ult ptr %i.ajw, %i.ajy
  br i1 %i.ajz, label %.lr.ph.i.i.i.i54, label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

.lr.ph.i.i.i.i54:                                 ; preds = %bb.go, %.lr.ph.i.i.i.i54
  %.06.i.i.i.i = phi ptr [ %i.akb, %.lr.ph.i.i.i.i54 ], [ %i.ajw, %bb.go ] ; 3 uses
  %i.aka = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !192
  call void @_ZdlPvm(ptr noundef %i.aka, i64 noundef 512) #39
  %i.akb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.akc = icmp ult ptr %.06.i.i.i.i, %i.ajx
  br i1 %i.akc, label %.lr.ph.i.i.i.i54, label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, !llvm.loop !3

_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i54
  %.pre.i.i.i55 = load ptr, ptr %8, align 8, !tbaa !232
  br label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i

_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i, %bb.go
  %i.akd = phi ptr [ %.pre.i.i.i55, %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i ], [ %i.ajt, %bb.go ]
  %i.ake = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !234
  %i.akg = shl i64 %i.akf, 3
  call void @_ZdlPvm(ptr noundef %i.akd, i64 noundef %i.akg) #39
  br label %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit

_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit: ; preds = %.loopexit, %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %.val20 = load ptr, ptr %7, align 8             ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %.val20, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit
  %i.akh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val21 = load ptr, ptr %i.akh, align 8
  %i.aki = ptrtoint ptr %.val21 to i64
  %i.akj = ptrtoint ptr %.val20 to i64
  %i.akk = sub i64 %i.aki, %i.akj
  call void @_ZdlPvm(ptr noundef nonnull %.val20, i64 noundef %i.akk) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit: ; preds = %_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev.exit, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  ret void

bb.gq:                                            ; preds = %.body, %bb.gn, %bb.gm
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ajp, %bb.gn ], [ %i.ajo, %bb.gm ]
  call void @_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #35
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gl
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.gq ], [ %i.ajn, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gk
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.gr ], [ %i.ajm, %bb.gk ]
  %.val18 = load ptr, ptr %7, align 8             ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %.val18, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit58, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val19 = load ptr, ptr %i.akl, align 8
  %i.akm = ptrtoint ptr %.val19 to i64
  %i.akn = ptrtoint ptr %.val18 to i64
  %i.ako = sub i64 %i.akm, %i.akn
  call void @_ZdlPvm(ptr noundef nonnull %.val18, i64 noundef %i.ako) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit58

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EED2Ev.exit58: ; preds = %bb.gs, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12emplace_backIJS4_EEERS5_DpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !209  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8, !tbaa !212
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.g = extractvalue { ptr, ptr } %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !120
  store i32 %i.i, ptr %i.e, align 8, !tbaa !213
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !209
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.a, align 8, !tbaa !209
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !214 ; 5 uses
  %i.l = ptrtoint ptr %i.b to i64
  %i.m = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
  unreachable

_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 4                   ; 3 uses
  %i.q = icmp eq ptr %i.b, %.val.i                ; 2 uses
  %.sroa.speculated.i.i = select i1 %i.q, i64 1, i64 %i.p
  %i.r = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.p
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487)
  %i.u = select i1 %i.s, i64 576460752303423487, i64 %i.t ; 3 uses
  %.not.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.v = shl nuw nsw i64 %i.u, 4                  ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #38 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n ; 2 uses
  store ptr %1, ptr %i.x, align 8, !tbaa !212
  %i.y = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = extractvalue { ptr, ptr } %i.y, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !120
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !213
  br i1 %i.q, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.w, %bb.e ] ; 2 uses
  %.092.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.val.i, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.092.i.i.i.i, i64 16, i1 false), !tbaa.struct !215, !alias.scope !656
  %i.ad = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.ae, %.lr.ph.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i37.i = icmp eq ptr %.val.i, null
  br i1 %.not.i37.i, label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !210
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.ai) #39
  br label %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

bb.g:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %_ZNKSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #35 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.v) #39
  invoke void @__cxa_rethrow() #40
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aj

bb.j:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #37
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable

_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36.i, %bb.f
  store ptr %i.w, ptr %0, align 8, !tbaa !214
  store ptr %i.af, ptr %i.a, align 8, !tbaa !209
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !210
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS1_7MessageEE8MemBlockSaIS5_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5queueIPN6google8protobuf7MessageESt5dequeIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !232    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !233  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !192
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #39
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, !llvm.loop !3

_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !232
  br label %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i

_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !234
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #39
  br label %_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EED2Ev.exit

_ZNSt5dequeIPN6google8protobuf7MessageESaIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIPN6google8protobuf7MessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 32
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = and i8 %i.g, 8
  %.not229 = icmp eq i8 %i.i, 0
  br i1 %.not229, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  %i.p = tail call noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet13ExtensionSizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i32 noundef %i.o)
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i8, ptr %i.q, align 2, !tbaa !83
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !85
  switch i32 %i.u, label %bb.w [
    i32 1, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i
    i32 2, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIlEEEEjPKNS0_15FieldDescriptorE.exit.i
    i32 3, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIjEEEEjPKNS0_15FieldDescriptorE.exit.i
    i32 4, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldImEEEEjPKNS0_15FieldDescriptorE.exit.i
    i32 5, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIdEEEEjPKNS0_15FieldDescriptorE.exit.i
    i32 6, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIfEEEEjPKNS0_15FieldDescriptorE.exit.i
    i32 7, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIbEEEEjPKNS0_15FieldDescriptorE.exit.i
    i32 8, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i155
    i32 9, label %bb.p
    i32 10, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 3
  %.val.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %bb.r

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS0_13RepeatedFieldIiEEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sink7.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.y = ptrtoint ptr %2 to i64
  %i.z = ptrtoint ptr %.sink7.i.i.i to i64
  %i.aa = sub i64 %i.y, %i.z
  %.0.in.i.i.i = sdiv exact i64 %i.aa, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.ab = ashr exact i64 %sext.i.i, 30
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13 ; 2 uses
  %i.ae = and i32 %i.ad, 2147483640               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !86 ; 2 uses
  %.not.i.i = icmp ne i32 %i.ag, -1
  %i.ah = icmp slt i32 %i.ad, 0
  %or.cond = select i1 %.not.i.i, i1 %i.ah, i1 false, !prof !235
end_hunk_3
