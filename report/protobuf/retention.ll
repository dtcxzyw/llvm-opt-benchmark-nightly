inline.NumInlined: 1424
inline.NumDeleted: 734
begin_hunk_0_@_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14DescriptorPoolERNS0_19FileDescriptorProtoE:bb.a

_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.dy = shl nuw nsw i64 %i.dw, 3
  %i.dz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #24
          to label %.noexc77.i unwind label %.thread146.i ; 4 uses

.noexc77.i:                                       ; preds = %_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  store ptr null, ptr %i.dz, align 8, !tbaa !91
  %i.ea = add nsw i64 %i.dw, -1                   ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.noexc40.i, label %_ZSt6fill_nIPPN6google8protobuf23SourceCodeInfo_LocationEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPPN6google8protobuf23SourceCodeInfo_LocationEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc77.i
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.ea, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ec, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !91
  br label %.noexc40.i

.noexc40.i:                                       ; preds = %_ZSt6fill_nIPPN6google8protobuf23SourceCodeInfo_LocationEmS3_ET_S5_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc77.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dw
  %i.ee = ptrtoint ptr %i.ed to i64
  br label %bb.x

bb.x:                                             ; preds = %.noexc40.i, %._crit_edge188.i
  %.sroa.0.2.i = phi ptr [ null, %._crit_edge188.i ], [ %i.dz, %.noexc40.i ] ; 11 uses
  %.sroa.14.0.i = phi i64 [ 0, %._crit_edge188.i ], [ %i.ee, %.noexc40.i ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.o, i64 52 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !93 ; 3 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = sext i32 %i.eg to i64
  %i.ej = getelementptr inbounds i8, ptr %i.s, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !29 ; 3 uses
  %i.el = trunc i64 %i.ek to i1
  br i1 %i.el, label %bb.z, label %bb.aa, !prof !32

bb.z:                                             ; preds = %bb.y
  %i.em = add nsw i64 %i.ek, -1
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ep = inttoptr i64 %i.ek to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.x
  %.0.i.i.i.i.i41.i = phi ptr [ null, %bb.x ], [ %i.eo, %bb.z ], [ %i.ep, %bb.aa ]
  %i.eq = zext nneg i32 %i.dv to i64              ; 2 uses
  br i1 %.not154.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i
  %.not.i.i42.i = icmp eq ptr %.sroa.0.2.i, null
  br i1 %.not.i.i42.i, label %.loopexit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.es = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.et = and i64 %i.es, 1
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = add i64 %i.es, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = select i1 %i.eu, ptr %i.s, ptr %i.ex    ; 2 uses
  %.not22.i.i.i = icmp eq ptr %.0.i.i.i.i.i41.i, null
  br i1 %.not22.i.i.i, label %bb.ad, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ac, %.noexc43.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.noexc43.i ], [ 0, %bb.ac ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i.i.i
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !91
  %i.fb = invoke noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNS0_11MessageLiteE(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %i.fa)
          to label %.noexc43.i unwind label %.loopexit.i

.noexc43.i:                                       ; preds = %.lr.ph.i.i.i
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %indvars.iv.i.i.i
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !91
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.eq
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !94

bb.ad:                                            ; preds = %bb.ac
  %i.fd = shl nuw nsw i64 %i.eq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.2.i, ptr nonnull align 8 %i.ey, i64 %i.fd, i1 false)
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.noexc43.i, %bb.ad, %bb.ab
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 0, i32 noundef %i.dv)
          to label %.loopexit.i.i._crit_edge.i unwind label %.loopexit.split-lp.i

.loopexit.i.i._crit_edge.i:                       ; preds = %.loopexit.i.i.i
  %.pre203.i.a = load i32, ptr %i.ef, align 4, !tbaa !93
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i._crit_edge.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i
  %i.fe = phi i32 [ %.pre203.i.a, %.loopexit.i.i._crit_edge.i ], [ %i.eg, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i.i ] ; 2 uses
  %i.ff = ptrtoint ptr %.sroa.0.2.i to i64        ; 2 uses
  %i.fg = sub i64 %.sroa.14.0.i, %i.ff            ; 3 uses
  %i.fh = ashr exact i64 %i.fg, 3                 ; 2 uses
  %i.fi = load i64, ptr %.sroa.4.0..sroa_idx.i.i258.i, align 8, !tbaa !95
  %i.fj = lshr i64 %i.fi, 17
  %i.fk = sub nsw i64 %i.fh, %i.fj
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = icmp eq i32 %i.fe, 0
  br i1 %i.fm, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = sext i32 %i.fe to i64
  %i.fo = getelementptr inbounds i8, ptr %i.s, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !29 ; 3 uses
  %i.fq = trunc i64 %i.fp to i1
  br i1 %i.fq, label %bb.ag, label %bb.ah, !prof !32

bb.ag:                                            ; preds = %bb.af
  %i.fr = add nsw i64 %i.fp, -1
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !33
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i

bb.ah:                                            ; preds = %bb.af
  %i.fu = inttoptr i64 %i.fp to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i: ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i.i.i.i.i46.i = phi ptr [ null, %bb.ae ], [ %i.ft, %bb.ag ], [ %i.fu, %bb.ah ]
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase16ReserveWithArenaEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %.0.i.i.i.i.i46.i, i32 noundef %i.fl)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit.preheader.i unwind label %.loopexit.split-lp.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit.preheader.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i
  %.not191.i = icmp eq i64 %.sroa.14.0.i, %i.ff
  br i1 %.not191.i, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.i, label %.lr.ph190.i

.lr.ph190.i:                                      ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit.preheader.i
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.al

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit.preheader.i
  %.not.i.i.i48.i = icmp eq ptr %.sroa.0.2.i, null
  br i1 %.not.i.i.i48.i, label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit.i, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.thread.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.thread.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2.i, i64 noundef %i.fg) #25
  br label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.thread.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.i
  %i.fx = load i64, ptr %2, align 8, !tbaa !97    ; 3 uses
  %i.fy = icmp ne i64 %i.fx, 0
  call void @llvm.assume(i1 %i.fy)
  %i.fz = icmp ult i64 %i.fx, 2
  br i1 %i.fz, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !36
  %i.gc = load i64, ptr %.sroa.4.0..sroa_idx.i.i258.i, align 8, !tbaa !95
  %i.gd = and i64 %i.gc, 65536
  %i.ge = icmp ne i64 %i.gd, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.fx, ptr noundef %i.gb, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.ge)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit.i: ; preds = %bb.ai, %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.not.i.i.i49.i = icmp eq ptr %.sroa.0109.0.lcssa252.i, null
  br i1 %.not.i.i.i49.i, label %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit.i
  %i.gh = ptrtoint ptr %.sroa.21119.0.lcssa247.i to i64
  %i.gi = ptrtoint ptr %.sroa.0109.0.lcssa252.i to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0.lcssa252.i, i64 noundef %i.gj) #25
  br label %_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit

bb.al:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i, %.lr.ph190.i
  %.0189.i = phi i64 [ 0, %.lr.ph190.i ], [ %i.kg, %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i ] ; 5 uses
  %i.gk = trunc i64 %.0189.i to i32               ; 2 uses
  %i.gl = load i64, ptr %2, align 8, !tbaa !97    ; 4 uses
  %i.gm = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %i.gm)
  %i.gn = icmp ult i64 %i.gl, 2
  br i1 %i.gn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx.i.i258.i, align 8, !tbaa !95
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.go, 131071
  %i.gp = load i32, ptr %i.fv, align 8
  %i.gq = icmp eq i32 %i.gp, %i.gk
  %or.cond153.i = select i1 %.not.i.i.i.i.i.i, i1 %i.gq, i1 false
  br i1 %or.cond153.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i

bb.an:                                            ; preds = %bb.al
  %i.gr = load ptr, ptr %i.fv, align 8, !tbaa !36 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.gr, i32 0, i32 1, i32 1)
  %i.gs = and i64 %.0189.i, 4294967295
  %i.gt = xor i64 %i.gs, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gu = mul i64 %i.gt, -2543921745674291987
  %i.gv = call noundef i64 @llvm.bswap.i64(i64 %i.gu) ; 2 uses
  %i.gw = load i64, ptr %.sroa.4.0..sroa_idx.i.i258.i, align 8, !tbaa !95, !noalias !99
  %i.gx = and i64 %i.gw, 65535
  %i.gy = lshr i64 %i.gv, 7
  %i.gz = xor i64 %i.gx, %i.gy
  %i.ha = trunc i64 %i.gv to i8
  %i.hb = and i8 %i.ha, 127
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !tbaa !36 ; 2 uses
  %i.hc = insertelement <16 x i8> poison, i8 %i.hb, i64 0
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %.pn.i6.i.i.i.i = phi i64 [ %i.gz, %bb.an ], [ %i.hv, %bb.aq ]
  %.sroa.13.0.i.i.i.i.i = phi i64 [ 0, %bb.an ], [ %i.hu, %bb.aq ]
  %.sroa.6.0.i.i.i.i.i = and i64 %.pn.i6.i.i.i.i, %i.gl ; 4 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i.i
  call void @llvm.prefetch.p0(ptr %i.he, i32 0, i32 3, i32 1)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.6.0.i.i.i.i.i
  %i.hg = load <16 x i8>, ptr %i.hf, align 1, !tbaa !36 ; 2 uses
  %i.hh = icmp eq <16 x i8> %i.hd, %i.hg
  %i.hi = bitcast <16 x i1> %i.hh to i16          ; 2 uses
  %.not46.i.i.i.i.i = icmp eq i16 %i.hi, 0
  br i1 %.not46.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i50.i

.lr.ph.i.i.i.i50.i:                               ; preds = %bb.ao, %bb.ap
  %.sroa.017.047.i.i.i.i.i = phi i16 [ %i.hr, %bb.ap ], [ %i.hi, %bb.ao ] ; 3 uses
  %i.hj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i.i.i, i1 true)
  %i.hk = zext nneg i16 %i.hj to i64
  %i.hl = add i64 %.sroa.6.0.i.i.i.i.i, %i.hk
  %i.hm = and i64 %i.hl, %i.gl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = icmp eq i32 %i.ho, %i.gk
  br i1 %i.hp, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i, label %bb.ap, !prof !102

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i50.i
  %i.hq = add i16 %.sroa.017.047.i.i.i.i.i, -1
  %i.hr = and i16 %i.hq, %.sroa.017.047.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i51.i = icmp eq i16 %i.hr, 0
  br i1 %.not.i.i.i.i51.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i50.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ap, %bb.ao
  %i.hs = icmp eq <16 x i8> %i.hg, splat (i8 -128)
  %i.ht = bitcast <16 x i1> %i.hs to i16
  %.not43.i.i.i.i.i = icmp eq i16 %i.ht, 0
  br i1 %.not43.i.i.i.i.i, label %bb.aq, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i, !prof !32

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.hu = add i64 %.sroa.13.0.i.i.i.i.i, 16       ; 2 uses
  %i.hv = add i64 %i.hu, %.sroa.6.0.i.i.i.i.i
  br label %bb.ao, !llvm.loop !103

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i: ; preds = %.lr.ph.i.i.i.i50.i
  %.not153.i = icmp eq ptr %i.gr, null
  br i1 %.not153.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i: ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i, %bb.am
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %.0189.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !91 ; 3 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i
  call void @_ZN6google8protobuf23SourceCodeInfo_LocationD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.hx) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef 104) #25
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i

_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i: ; preds = %._crit_edge.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.i, %bb.am
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2.i, i64 %.0189.i
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !91 ; 3 uses
  %i.ib = load i32, ptr %i.ef, align 4, !tbaa !93 ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i, label %bb.as

bb.as:                                            ; preds = %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i
  %i.id = sext i32 %i.ib to i64
  %i.ie = getelementptr inbounds i8, ptr %i.s, i64 %i.id
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !29 ; 3 uses
  %i.ig = trunc i64 %i.if to i1
  br i1 %i.ig, label %bb.at, label %bb.au, !prof !32

bb.at:                                            ; preds = %bb.as
  %i.ih = add nsw i64 %i.if, -1
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !33
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i

bb.au:                                            ; preds = %bb.as
  %i.ik = inttoptr i64 %i.if to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i: ; preds = %bb.au, %bb.at, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i
  %.0.i.i.i.i.i53.i = phi ptr [ null, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread.i ], [ %i.ij, %bb.at ], [ %i.ik, %bb.au ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !29 ; 3 uses
  %i.in = trunc i64 %i.im to i1
  br i1 %i.in, label %bb.av, label %bb.aw, !prof !32

bb.av:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i
  %i.io = add nsw i64 %i.im, -1
  %i.ip = inttoptr i64 %i.io to ptr
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !33
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i

bb.aw:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i52.i
  %i.ir = inttoptr i64 %i.im to ptr
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i.i.i54.i = phi ptr [ %i.iq, %bb.av ], [ %i.ir, %bb.aw ] ; 2 uses
  %.not.i.i.i55.i = icmp eq ptr %.0.i.i.i.i.i53.i, %.0.i.i.i.i.i.i.i.i.i54.i
  br i1 %.not.i.i.i55.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i
  %i.is = load ptr, ptr %i.s, align 8, !tbaa !40  ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64               ; 2 uses
  %i.iu = and i64 %i.it, 1
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iw = add nsw i64 %i.it, -1
  %i.ix = inttoptr i64 %i.iw to ptr               ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !104 ; 3 uses
  %i.ja = load i32, ptr %i.ix, align 8, !tbaa !106
  %i.jb = icmp eq i32 %i.iz, %i.ja
  br i1 %i.jb, label %bb.az, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i: ; preds = %bb.ax
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i, %bb.ay, %_ZN6google8protobuf8internal18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEE8GetArenaEPS3_.exit.i.i.i.i
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24AddAllocatedSlowWithCopyINS1_18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEEEEEvPNT_4TypeEPNS0_5ArenaESB_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull %i.ia, ptr noundef %.0.i.i.i.i.i.i.i.i.i54.i, ptr noundef %.0.i.i.i.i.i53.i)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i unwind label %.thread.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit.i.i.i.i
  %i.jc = load i32, ptr %i.t, align 8, !tbaa !37  ; 4 uses
  %i.jd = icmp slt i32 %i.jc, 0
  br i1 %i.jd, label %bb.ba, label %bb.bc

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i: ; preds = %bb.ay
  %i.je = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 3 uses
  %i.jf = load i32, ptr %i.t, align 8, !tbaa !37  ; 4 uses
  %i.jg = icmp slt i32 %i.jf, %i.iz
  br i1 %i.jg, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i
  %i.jh = sext i32 %i.jc to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.jh
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i

bb.bb:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i
  %i.jj = sext i32 %i.jf to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jj
  %i.jl = sext i32 %i.iz to i64
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.in.i.i.i.i = phi ptr [ %i.ji, %bb.ba ], [ %i.jk, %bb.bb ]
  %i.jm = phi i32 [ %i.jc, %bb.ba ], [ %i.jf, %bb.bb ]
  %i.jn = phi ptr [ %i.s, %bb.ba ], [ %i.je, %bb.bb ] ; 2 uses
  %i.jo = phi i64 [ 0, %bb.ba ], [ %i.jl, %bb.bb ]
  %i.jp = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !41
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jo
  store ptr %i.jp, ptr %i.jq, align 8, !tbaa !41
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i
  %i.jr = phi ptr [ %i.je, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i ], [ %i.jn, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i ], [ %i.s, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i ]
  %i.js = phi i32 [ %i.jf, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread.i.i.i.i ], [ %i.jm, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit12.i.i.i.i ], [ %i.jc, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i.i.i.i ] ; 2 uses
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr %i.t, align 8, !tbaa !4
  %i.ju = sext i32 %i.js to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.ju
  store ptr %i.ia, ptr %i.jv, align 8, !tbaa !41
  %i.jw = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.jx = ptrtoint ptr %i.jw to i64               ; 2 uses
  %i.jy = and i64 %i.jx, 1
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ka = add nsw i64 %i.jx, -1
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !104
  %i.ke = add nsw i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !104
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i

.thread.i:                                        ; preds = %bb.az
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE12AddAllocatedEPS2_.exit.i: ; preds = %bb.bd, %bb.bc, %bb.az, %bb.ar, %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE8containsIiEEbRKi.exit.thread131.i
  %i.kg = add nuw i64 %.0189.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kg, %i.fh
  br i1 %exitcond.not.i, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE7ReserveEi.exit._crit_edge.thread.i, label %bb.al, !llvm.loop !107

.thread146.i:                                     ; preds = %_ZNKSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.w
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp.i:                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE8GetArenaEv.exit.i45.i, %.loopexit.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i57.i = icmp eq ptr %.sroa.0.2.i, null
  br i1 %.not.i.i.i57.i, label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i, label %._crit_edge207.i

._crit_edge207.i:                                 ; preds = %bb.be
  %.pre208.i = ptrtoint ptr %.sroa.0.2.i to i64
  %.pre209.i = sub i64 %.sroa.14.0.i, %.pre208.i
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge207.i, %.thread.i
  %.pre-phi210.i = phi i64 [ %.pre209.i, %._crit_edge207.i ], [ %i.fg, %.thread.i ]
  %.pn.pn139.i = phi { ptr, i32 } [ %lpad.phi.i, %._crit_edge207.i ], [ %i.kf, %.thread.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2.i, i64 noundef %.pre-phi210.i) #25
  br label %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i

_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i: ; preds = %bb.bf, %bb.be, %.thread146.i, %bb.r
  %.pn28.i = phi { ptr, i32 } [ %i.dh, %bb.r ], [ %lpad.thr_comm.i, %.thread146.i ], [ %lpad.phi.i, %bb.be ], [ %.pn.pn139.i, %bb.bf ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i, %.loopexit.split-lp157.i, %.loopexit156.i, %bb.j
  %.sroa.21119.2.i = phi ptr [ %.sroa.21119.1.i, %bb.j ], [ %.sroa.21119.0.lcssa247.i, %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i ], [ %.sroa.12.0179.i, %.loopexit156.i ], [ %.sroa.12.0179.i, %.loopexit.split-lp157.i ]
  %.sroa.0109.2.i = phi ptr [ %.sroa.0109.1.i, %bb.j ], [ %.sroa.0109.0.lcssa252.i, %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i ], [ %.sroa.0109.0180.i, %.loopexit156.i ], [ %.sroa.0109.0180.i, %.loopexit.split-lp157.i ] ; 3 uses
  %.pn30.i = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %.pn28.i, %_ZNSt6vectorIPN6google8protobuf23SourceCodeInfo_LocationESaIS3_EED2Ev.exit58.i ], [ %lpad.loopexit158.i, %.loopexit156.i ], [ %lpad.loopexit.split-lp159.i, %.loopexit.split-lp157.i ] ; 2 uses
  %.not.i.i.i59.i = icmp eq ptr %.sroa.0109.2.i, null
  br i1 %.not.i.i.i59.i, label %.body, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kh = ptrtoint ptr %.sroa.21119.2.i to i64
  %i.ki = ptrtoint ptr %.sroa.0109.2.i to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.2.i, i64 noundef %i.kj) #25
  br label %.body

bb.bi:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i, %bb.a
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %eh.lpad-body = phi { ptr, i32 } [ %i.kk, %bb.bi ], [ %.pn30.i, %bb.bh ], [ %.pn30.i, %bb.bg ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %eh.lpad-body

_ZN6google8protobuf8compiler12_GLOBAL__N_119StripSourceCodeInfoERSt6vectorIS3_IiSaIiEESaIS5_EERNS0_14SourceCodeInfoE.exit: ; preds = %bb.ak, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEED2Ev.exit.i, %bb.b
  %i.kl = load ptr, ptr %4, align 8, !tbaa !108   ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !110 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !89

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit: ; preds = %bb.d, %bb.b
  %.019.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.x, %bb.d ]
  %.not25 = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i, %i.i
  br i1 %.not25, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.pn33, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.034, i8 0, i64 24, i1 false)
  %i.aa = ptrtoint ptr %.sroa.013.034 to i64
  %i.ab = sub i64 %i.aa, %i.c                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn33, i64 48
  %i.ae = udiv exact i64 %i.ab, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aq, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.013.034, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !60 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !111
  %i.ak = load <2 x ptr>, ptr %i.af, align 8, !tbaa !63
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !63
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !111
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ap) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i:       ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.aq = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !243

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread
  %i.as = load ptr, ptr %0, align 8, !tbaa !60    ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !111
  store ptr %i.e, ptr %0, align 8, !tbaa !60
  store ptr %i.g, ptr %i.b, align 8, !tbaa !62
  store ptr %i.z, ptr %i.d, align 8, !tbaa !111
  %.not.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.pn33, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.034, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i:               ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23
  %.sroa.014.0.i = phi ptr [ %.sroa.013.034, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt6vectorIiSaIiEES4_IS6_SaIS6_EEEESA_EEbT_T0_.exit.thread23 ], [ %.sroa.0.0.i, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge ] ; 11 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.014.0.i, i64 -24 ; 3 uses
  %i.aw = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !63 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.014.0.i, i64 -16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = icmp slt i64 %i.bb, %i.l
  %i.bd = getelementptr inbounds i8, ptr %i.e, i64 %i.bb
  %i.be = select i1 %i.bc, ptr %i.bd, ptr %i.g    ; 2 uses
  %.not22.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.be
  br i1 %.not22.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, %bb.g
  %.01924.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.g ], [ %i.aw, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i ] ; 2 uses
  %.02023.i.i.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.g ], [ %i.e, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i ] ; 2 uses
  %i.bf = load i32, ptr %.02023.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bg = load i32, ptr %.01924.i.i.i.i.i.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bi = icmp slt i32 %i.bg, %i.bf
  br i1 %i.bi, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.be
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !89

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i
  %.019.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i ], [ %i.bk, %bb.g ]
  %.not.i = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i.i, %i.ay
  br i1 %.not.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i
  %i.bl = load ptr, ptr %.sroa.014.0.i, align 8, !tbaa !60 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !111
  store ptr %i.aw, ptr %.sroa.014.0.i, align 8, !tbaa !60
  store ptr %i.ay, ptr %i.bm, align 8, !tbaa !62
  %i.bp = getelementptr inbounds i8, ptr %.sroa.014.0.i, i64 -8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge

_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.backedge:      ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread.i
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i, !llvm.loop !238

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i, %bb.f
  %i.bu = load ptr, ptr %.sroa.014.0.i, align 8, !tbaa !60 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !111
  store ptr %i.e, ptr %.sroa.014.0.i, align 8, !tbaa !60
  store ptr %i.g, ptr %i.bv, align 8, !tbaa !62
  store ptr %i.av, ptr %i.bw, align 8, !tbaa !111
  %.not.i.i.i.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split:         ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, %.loopexit
  %.sink62 = phi ptr [ %i.at, %.loopexit ], [ %i.bx, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i ]
  %.sink61 = phi ptr [ %i.as, %.loopexit ], [ %i.bu, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i ] ; 2 uses
  %i.by = ptrtoint ptr %.sink62 to i64
  %i.bz = ptrtoint ptr %.sink61 to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink61, i64 noundef %i.ca) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i, %.loopexit
  %.sroa.013.0 = getelementptr inbounds nuw i8, ptr %.sroa.013.034, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, %1
  br i1 %.not, label %.loopexit27, label %bb.b, !llvm.loop !244

.loopexit27:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE22find_or_prepare_insertIiEESt4pairINSB_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.120") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !97     ; 5 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95, !noalias !245
  %.not.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.d, align 8, !tbaa !64, !noalias !245
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !4, !noalias !245 ; 2 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !4, !noalias !245 ; 2 uses
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i32 %i.h to i64
  %i.l = xor i64 %i.k, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.m = mul i64 %i.l, 6679450291180483821
  %i.n = lshr i64 %i.m, 56
  %i.o = trunc nuw i64 %i.n to i8
  %i.p = and i8 %i.o, 127
  %i.q = zext i32 %i.i to i64
  %i.r = xor i64 %i.q, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.s = mul i64 %i.r, -2543921745674291987
  %i.t = tail call noundef i64 @llvm.bswap.i64(i64 %i.s)
  %i.u = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.t, i8 noundef signext %i.p), !noalias !245 ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !36, !noalias !245, !nonnull !88, !noundef !88
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !36, !noalias !245
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.u
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36, !noalias !248 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 1, i32 1), !noalias !248
  %i.ab = load i32, ptr %2, align 4, !tbaa !4, !noalias !248 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = xor i64 %i.ac, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ae = mul i64 %i.ad, -2543921745674291987
  %i.af = tail call noundef i64 @llvm.bswap.i64(i64 %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !95, !noalias !251
  %i.ai = and i64 %i.ah, 65535
  %i.aj = lshr i64 %i.af, 7
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.af to i8
  %i.am = and i8 %i.al, 127
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !36, !noalias !248 ; 3 uses
  %i.ao = insertelement <16 x i8> poison, i8 %i.am, i64 0
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.ak, %bb.f ], [ %i.bp, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bo, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1), !noalias !248
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.7.0.i
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !36, !noalias !248 ; 2 uses
  %i.at = icmp eq <16 x i8> %i.ap, %i.as
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not59.i = icmp eq i16 %i.au, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.033.060.i = phi i16 [ %i.bd, %.critedge.i ], [ %i.au, %bb.g ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.060.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a                     ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4, !noalias !248
  %i.bb = icmp eq i32 %i.ba, %i.ab
  br i1 %i.bb, label %.critedge20.i, label %.critedge.i, !prof !102

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bc = add i16 %.sroa.033.060.i, -1
  %i.bd = and i16 %i.bc, %.sroa.033.060.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.g
  %i.be = icmp eq <16 x i8> %i.as, splat (i8 -128)
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.bf, 0
  br i1 %.not51.i, label %bb.h, label %.thread.i, !prof !32

.thread.i:                                        ; preds = %.critedge18.i
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.7.0.i, %i.bh
  %i.bj = and i64 %i.bi, %i.a
  %i.bk = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE18GetPolicyFunctionsEvE5value, i64 noundef %i.af, i64 %i.bj, i64 %.sroa.15.0.i), !noalias !248 ; 2 uses
  %i.bl = load ptr, ptr %i.z, align 8, !tbaa !36, !noalias !248, !nonnull !88, !noundef !88
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.an, align 8, !tbaa !36, !noalias !248
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.bk
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge18.i
  %i.bo = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bp = add i64 %i.bo, %.sroa.7.0.i
  br label %bb.g

.critedge20.i:                                    ; preds = %.lr.ph.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ay
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ay
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE26find_or_prepare_insert_sooIiEESt4pairINSB_8iteratorEbERKT_.exit: ; preds = %.critedge20.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink76.i.sink = phi ptr [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.d ], [ %i.w, %bb.e ], [ @_ZN4absl12lts_2025051218container_internal11kSooControlE, %bb.c ], [ %i.bm, %.thread.i ], [ %i.br, %.critedge20.i ]
  %.sink75.i.sink = phi ptr [ %i.g, %bb.d ], [ %i.y, %bb.e ], [ %i.f, %bb.c ], [ %i.bn, %.thread.i ], [ %i.bq, %.critedge20.i ]
  %.sink.i4.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge20.i ]
  store ptr %.sink76.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75.i.sink, ptr %.sroa.4.0..sroa_idx.i5, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i4.sink, ptr %i.bs, align 8, !tbaa !83
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #15

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiEEmPKvPv(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %i.b, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.d = mul i64 %i.c, -2543921745674291987
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal20TransferNRelocatableILm4EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #16 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !32

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = add i64 %1, 15
  %i.c = add i64 %i.b, %4
  %i.d = add i64 %i.c, %i.a
  %i.e = sub i64 0, %4
  %i.f = and i64 %i.d, %i.e
  %i.g = mul i64 %3, %1
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.i = add i64 %i.g, 7
  %i.j = add i64 %i.i, %i.f
  %i.k = and i64 %i.j, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEENS0_13hash_internal4HashIiEESt8equal_toIiESaIiEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSH_PFvSH_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !97     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !95
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !254

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.ba, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = zext i32 %i.y to i64
  %i.aa = xor i64 %i.z, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ab = mul i64 %i.aa, -2543921745674291987
  %i.ac = tail call noundef i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = xor i64 %i.ad, %i.j                     ; 5 uses
  %i.af = trunc i64 %i.ac to i8
  %i.ag = and i8 %i.af, 127                       ; 2 uses
  %i.ah = sub i64 %i.w, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.k, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !102

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add nuw nsw i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ae, %i.b
  %.not.i = icmp ult i64 %i.an, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !102

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.ae, %i.a                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !36
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add nuw nsw i64 %i.ao, %i.au
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.w, i64 noundef %i.ae)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.ag, ptr %i.aw, align 1, !tbaa !255
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i
  %i.ay = load i32, ptr %i.x, align 4
  store i32 %i.ay, ptr %i.ax, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.az = add i16 %.sroa.054.061, -1
  %i.ba = and i16 %i.az, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #19

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal9CloneSlowEPNS0_5ArenaERKNS0_11MessageLiteE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase16ReserveWithArenaEPNS0_5ArenaEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24AddAllocatedSlowWithCopyINS1_18GenericTypeHandlerINS0_23SourceCodeInfo_LocationEEEEEvPNT_4TypeEPNS0_5ArenaESB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %3, null
  %i.b = icmp eq ptr %2, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.d

end_hunk_1
