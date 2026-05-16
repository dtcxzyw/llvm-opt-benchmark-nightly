inline.NumInlined: 22184
inline.NumDeleted: 7878
begin_hunk_0_@_ZNK6google8protobuf14FileDescriptor20CopySourceCodeInfoToEPNS0_19FileDescriptorProtoE:bb.a
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %i.j to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14SourceCodeInfoEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !22
  br label %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit

_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit: ; preds = %bb.b, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.q = phi ptr [ %i.p, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %i.g, %bb.b ]
  tail call void @_ZN6google8protobuf14SourceCodeInfo8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %i.b)
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf19FileDescriptorProto24mutable_source_code_infoEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Descriptor13CopyHeadingToEPNS0_15DescriptorProtoE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.b, align 1
  %i.c = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.d = xor i64 %i.c, -1
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = or i32 %i.g, 256
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !535  ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !163

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.p = inttoptr i64 %i.k to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.p, %bb.c ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 %i.c, ptr nonnull %i.e, ptr noundef %.0.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !777
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %_ZN6google8protobuf15DescriptorProto18add_reserved_rangeEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !927
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph22, label %._crit_edge

.lr.ph22:                                         ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %_ZN6google8protobuf15DescriptorProto18add_reserved_rangeEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6google8protobuf15DescriptorProto18add_reserved_rangeEv.exit ] ; 3 uses
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !535 ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !163

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !537
  br label %_ZN6google8protobuf15DescriptorProto18add_reserved_rangeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.af = inttoptr i64 %i.aa to ptr
  br label %_ZN6google8protobuf15DescriptorProto18add_reserved_rangeEv.exit

_ZN6google8protobuf15DescriptorProto18add_reserved_rangeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %i.af, %bb.f ]
  %i.ag = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_29DescriptorProto_ReservedRangeEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %.0.i.i.i) ; 3 uses
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !3
  %i.ai = or i32 %i.ah, 64
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !3
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !778
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !779
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %i.al, ptr %i.am, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !3  ; 2 uses
  %i.ap = or i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !3
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !778
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !781
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 %i.at, ptr %i.au, align 4, !tbaa !22
  %i.av = or i32 %i.ao, 3
  store i32 %i.av, ptr %i.an, align 8, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !777
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %bb.d, label %.preheader, !llvm.loop !928

._crit_edge:                                      ; preds = %_ZN6google8protobuf15DescriptorProto17add_reserved_nameISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit, %.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !689 ; 2 uses
  %.not = icmp eq ptr %i.ba, @_ZN6google8protobuf33_MessageOptions_default_instance_E
  br i1 %.not, label %bb.n, label %bb.j

bb.g:                                             ; preds = %.lr.ph22, %_ZN6google8protobuf15DescriptorProto17add_reserved_nameISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit
  %indvars.iv24 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next25, %_ZN6google8protobuf15DescriptorProto17add_reserved_nameISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit ] ; 2 uses
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !929
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !320 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !23
  %i.bh = load i64, ptr %i.j, align 8, !tbaa !535 ; 3 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %bb.h, label %bb.i, !prof !163

bb.h:                                             ; preds = %bb.g
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !537
  br label %_ZN6google8protobuf15DescriptorProto17add_reserved_nameISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.bm = inttoptr i64 %i.bh to ptr
  br label %_ZN6google8protobuf15DescriptorProto17add_reserved_nameISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit

_ZN6google8protobuf15DescriptorProto17add_reserved_nameISt17basic_string_viewIcSt11char_traitsIcEEJEEEvOT_DpT0_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i17 = phi ptr [ %i.bl, %bb.h ], [ %i.bm, %bb.i ]
  %i.bn = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef %.0.i.i.i17) ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.bq = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef 0, i64 noundef %i.bp, ptr noundef %i.be, i64 noundef %i.bg) ; 0 uses
  %i.br = load i32, ptr %i.f, align 4, !tbaa !3
  %i.bs = or i32 %i.br, 128
  store i32 %i.bs, ptr %i.f, align 4, !tbaa !3
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.bt = load i32, ptr %i.v, align 4, !tbaa !927
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next25, %i.bu
  br i1 %i.bv, label %bb.g, label %._crit_edge, !llvm.loop !930

bb.j:                                             ; preds = %._crit_edge
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !3
  %i.bx = or i32 %i.bw, 512
  store i32 %i.bx, ptr %i.f, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !22 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.k, label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit

bb.k:                                             ; preds = %bb.j
  %i.cb = load i64, ptr %i.j, align 8, !tbaa !535 ; 3 uses
  %i.cc = trunc i64 %i.cb to i1
  br i1 %i.cc, label %bb.l, label %bb.m, !prof !163

bb.l:                                             ; preds = %bb.k
  %i.cd = add nsw i64 %i.cb, -1
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.cg = inttoptr i64 %i.cb to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi ptr [ %i.cf, %bb.l ], [ %i.cg, %bb.m ]
  %i.ch = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14MessageOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.ch, ptr %i.by, align 8, !tbaa !22
  br label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit

_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit: ; preds = %bb.j, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.ci = phi ptr [ %i.ch, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %i.bz, %bb.j ]
  tail call void @_ZN6google8protobuf14MessageOptions8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.ci, ptr noundef nonnull align 8 dereferenceable(72) %i.ba)
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit, %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %2 = load i16, ptr %i.cj, align 1
  %3 = lshr i16 %2, 8
  %4 = and i16 %3, 3                              ; 2 uses
  %.not16 = icmp eq i16 %4, 0
  br i1 %.not16, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = zext nneg i16 %4 to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !22
  %i.cm = load i32, ptr %i.f, align 8, !tbaa !3
  %i.cn = or i32 %i.cm, 1024
  store i32 %i.cn, ptr %i.f, align 8, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !931 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_124RestoreFeaturesToOptionsINS0_15DescriptorProtoEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load i32, ptr %i.f, align 4, !tbaa !3
  %i.cr = or i32 %i.cq, 512
  store i32 %i.cr, ptr %i.f, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !22 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.r, label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cv = load i64, ptr %i.j, align 8, !tbaa !535 ; 3 uses
  %i.cw = trunc i64 %i.cv to i1
  br i1 %i.cw, label %bb.s, label %bb.t, !prof !163

bb.s:                                             ; preds = %bb.r
  %i.cx = add nsw i64 %i.cv, -1
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.da = inttoptr i64 %i.cv to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi ptr [ %i.cz, %bb.s ], [ %i.da, %bb.t ]
  %i.db = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_14MessageOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i) ; 2 uses
  store ptr %i.db, ptr %i.cs, align 8, !tbaa !22
  br label %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.q
  %i.dc = phi ptr [ %i.db, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = or i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 40 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !22 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.u, label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

bb.u:                                             ; preds = %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !535 ; 3 uses
  %i.dl = trunc i64 %i.dk to i1
  br i1 %i.dl, label %bb.v, label %bb.w, !prof !163

bb.v:                                             ; preds = %bb.u
  %i.dm = add nsw i64 %i.dk, -1
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i

bb.w:                                             ; preds = %bb.u
  %i.dp = inttoptr i64 %i.dk to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i4.i = phi ptr [ %i.do, %bb.v ], [ %i.dp, %bb.w ]
  %i.dq = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i4.i) ; 2 uses
  store ptr %i.dq, ptr %i.dg, align 8, !tbaa !22
  br label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i
  %i.dr = phi ptr [ %i.dq, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i3.i ], [ %i.dh, %_ZN6google8protobuf15DescriptorProto15mutable_optionsEv.exit.i ]
  tail call void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.dr, ptr noundef nonnull align 8 dereferenceable(72) %i.cp)
  br label %_ZN6google8protobuf12_GLOBAL__N_124RestoreFeaturesToOptionsINS0_15DescriptorProtoEEEvPKNS0_10FeatureSetEPT_.exit

_ZN6google8protobuf12_GLOBAL__N_124RestoreFeaturesToOptionsINS0_15DescriptorProtoEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %bb.p, %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf15OneofDescriptor6CopyToEPNS0_20OneofDescriptorProtoE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.b, align 1
  %i.c = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.d = xor i64 %i.c, -1
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %i.h = or i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !535  ; 3 uses
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !163

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i64 %i.k, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.c:                                             ; preds = %bb.a
  %i.p = inttoptr i64 %i.k to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ %i.p, %bb.c ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 %i.c, ptr nonnull %i.e, ptr noundef %.0.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !932  ; 2 uses
  %.not = icmp eq ptr %i.r, @_ZN6google8protobuf31_OneofOptions_default_instance_E
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.s = load i32, ptr %i.f, align 4, !tbaa !3
  %i.t = or i32 %i.s, 2
  store i32 %i.t, ptr %i.f, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %_ZN6google8protobuf20OneofDescriptorProto15mutable_optionsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.j, align 8, !tbaa !535  ; 3 uses
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g, !prof !163

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i64 %i.x, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = inttoptr i64 %i.x to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_12OneofOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i) ; 2 uses
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !22
  br label %_ZN6google8protobuf20OneofDescriptorProto15mutable_optionsEv.exit

_ZN6google8protobuf20OneofDescriptorProto15mutable_optionsEv.exit: ; preds = %bb.d, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.ae = phi ptr [ %i.ad, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ], [ %i.v, %bb.d ]
  tail call void @_ZN6google8protobuf12OneofOptions8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.r)
  br label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf20OneofDescriptorProto15mutable_optionsEv.exit, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !933 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_124RestoreFeaturesToOptionsINS0_20OneofDescriptorProtoEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !3
  %i.ai = or i32 %i.ah, 2
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %_ZN6google8protobuf20OneofDescriptorProto15mutable_optionsEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.j, align 8, !tbaa !535 ; 3 uses
  %i.an = trunc i64 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.l, !prof !163

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i64 %i.am, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = inttoptr i64 %i.am to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi ptr [ %i.aq, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = tail call noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_12OneofOptionsEEEPvPS1_(ptr noundef %.0.i.i.i.i.i) ; 2 uses
  store ptr %i.as, ptr %i.aj, align 8, !tbaa !22
  br label %_ZN6google8protobuf20OneofDescriptorProto15mutable_optionsEv.exit.i

_ZN6google8protobuf20OneofDescriptorProto15mutable_optionsEv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %bb.i
  %i.at = phi ptr [ %i.as, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i ], [ %i.ak, %bb.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = or i32 %i.av, 2
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb
define void @_ZNK6google8protobuf10Descriptor11DebugStringEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_18DebugStringOptionsEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 captures(none) dereferenceable(3) %3, i1 noundef zeroext %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %6 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %7 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %8 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %9 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %10 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %11 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %12 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %13 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %14 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %15 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %16 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %17 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %18 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %19 = alloca %"class.std::vector.195", align 8  ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %21 = alloca %"class.google::protobuf::(anonymous namespace)::SourceLocationCommentPrinter", align 8 ; 21 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %23 = alloca %"class.google::protobuf::MessageOptions", align 8 ; 10 uses
  %24 = alloca %"class.absl::lts_20250512::flat_hash_set.6", align 8 ; 22 uses
  %25 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %26 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %27 = alloca %"class.google::protobuf::ExtensionRangeOptions", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %30 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %31 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %32 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %33 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %34 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %35 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 7 uses
  %36 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !689
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 51
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22, !range !49, !noundef !51
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #42
  %i.g = shl nsw i32 %1, 1
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.i, ptr %20, align 8, !tbaa !16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.h, i8 noundef signext 32)
  %i.j = add nsw i32 %1, 1                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #42
  %i.k = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %21, i64 32
  store i64 0, ptr %i.n, align 8, !tbaa !23
  store i8 0, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 64
  store i64 0, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %21, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !tbaa.struct !955
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 120 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %21, i64 136 ; 7 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !16
  %i.v = load ptr, ptr %20, align 8, !tbaa !20    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 10 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store i64 %i.x, ptr %i.a, align 8, !tbaa !19
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.k   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.t, align 8, !tbaa !20
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !22
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.ab = phi ptr [ %i.z, %.noexc.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !22
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !22
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %21, i64 128
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !23
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  %i.ah = load i8, ptr %3, align 1, !tbaa !947, !range !49, !noundef !51
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZNK6google8protobuf10Descriptor15GetLocationPathEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %19)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !669
  %i.al = invoke noundef zeroext i1 @_ZNK6google8protobuf14FileDescriptor17GetSourceLocationERKSt6vectorIiSaIiEEPNS0_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(184) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull %i.k)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %19, align 8, !tbaa !728  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !730
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #43
  br label %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %19, align 8, !tbaa !728  ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !730
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #43
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i:               ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !20  ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.u
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #42
  %i.bb = zext i1 %i.al to i8
  br label %bb.l

bb.k:                                             ; preds = %.noexc.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i
  %i.bd = load i64, ptr %i.u, align 8, !tbaa !22
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.be) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %_ZNSt6vectorIiSaIiEED2Ev.exit4.i.i ]
  call void @_ZN6google8protobuf14SourceLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.k) #42
  br label %.body

bb.l:                                             ; preds = %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i, %bb.d
  %i.bf = phi i8 [ 0, %bb.d ], [ %i.bb, %_ZNK6google8protobuf10Descriptor17GetSourceLocationEPNS0_14SourceLocationE.exit.i ]
  store i8 %i.bf, ptr %21, align 8, !tbaa !956
  invoke fastcc void @_ZN6google8protobuf12_GLOBAL__N_128SourceLocationCommentPrinter13AddPreCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %21, ptr noundef %2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %4, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bg = load ptr, ptr %20, align 8, !tbaa !20
  %i.bh = load i64, ptr %i.w, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  %38 = load i16, ptr %i.bi, align 1
  %39 = lshr i16 %38, 8
  %40 = and i16 %39, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 9 uses
  store ptr %i.bj, ptr %22, align 8, !tbaa !16, !alias.scope !1047
  switch i16 %40, label %._crit_edge.i.i8.i [
    i16 2, label %._crit_edge.i.i.i211
    i16 1, label %._crit_edge.i.i4.i
  ]

._crit_edge.i.i.i211:                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bj, ptr noundef nonnull align 1 dereferenceable(7) @.str.284, i64 7, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 7, ptr %i.bk, align 8, !tbaa !23, !alias.scope !1047
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 23
  store i8 0, ptr %i.bl, align 1, !tbaa !22, !alias.scope !1047
  br label %bb.o

._crit_edge.i.i4.i:                               ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.bj, ptr noundef nonnull align 1 dereferenceable(6) @.str.285, i64 6, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 6, ptr %i.bm, align 8, !tbaa !23, !alias.scope !1047
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 22
  store i8 0, ptr %i.bn, align 2, !tbaa !22, !alias.scope !1047
  br label %bb.o

._crit_edge.i.i8.i:                               ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !23, !alias.scope !1047
  store i8 0, ptr %i.bj, align 8, !tbaa !22, !alias.scope !1047
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i8.i, %._crit_edge.i.i4.i, %._crit_edge.i.i.i211
  %i.bp = phi i64 [ 0, %._crit_edge.i.i8.i ], [ 6, %._crit_edge.i.i4.i ], [ 7, %._crit_edge.i.i.i211 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !137 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.br, align 1
  %i.bs = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #42
  store i64 %i.bh, ptr %18, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.bg, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.bp, ptr %i.bw, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.bj, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i64 %i.bs, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 40
  store ptr %i.bu, ptr %i.bz, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef %2, i64 14, ptr nonnull @.str.85, ptr noundef nonnull %18, i64 noundef 3)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #42
  %i.ca = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bj
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.cc = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  br label %bb.s

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.t, %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.r:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bj
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.r
  %i.ci = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  br label %bb.em

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !23
  %i.cm = add i64 %i.cl, -4611686018427387901
  %i.cn = icmp ult i64 %i.cm, 3
  br i1 %i.cn, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #46
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.t
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.s
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.86, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !689
  invoke void @_ZN6google8protobuf14MessageOptionsC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %23, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(72) %i.cp)
          to label %_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit unwind label %bb.z

_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !931 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, @_ZN6google8protobuf29_FeatureSet_default_instance_E
  br i1 %.not.i, label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !3
  %i.cu = or i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 8, !tbaa !3
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.v, label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !535 ; 3 uses
  %i.da = trunc i64 %i.cz to i1
  br i1 %i.da, label %bb.w, label %bb.x, !prof !163

bb.w:                                             ; preds = %bb.v
  %i.db = add nsw i64 %i.cz, -1
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !537
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.de = inttoptr i64 %i.cz to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi ptr [ %i.dd, %bb.w ], [ %i.de, %bb.x ]
  %i.df = invoke noundef ptr @_ZN6google8protobuf5Arena16DefaultConstructINS0_10FeatureSetEEEPvPS1_(ptr noundef %.0.i.i.i.i.i)
          to label %.noexc217 unwind label %bb.aa ; 2 uses

.noexc217:                                        ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i
  store ptr %i.df, ptr %i.cv, align 8, !tbaa !22
  br label %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i

_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i: ; preds = %.noexc217, %bb.u
  %i.dg = phi ptr [ %i.df, %.noexc217 ], [ %i.cw, %bb.u ]
  invoke void @_ZN6google8protobuf10FeatureSet8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %i.dg, ptr noundef nonnull align 8 dereferenceable(72) %i.cr)
          to label %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit unwind label %bb.aa

_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit: ; preds = %_ZN6google8protobuf14MessageOptionsC2ERKS1_.exit, %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !669
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1007
  %i.dl = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf12_GLOBAL__N_117FormatLineOptionsEiRKNS0_7MessageEPKNS0_14DescriptorPoolEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %i.dk, ptr noundef nonnull %2)
          to label %bb.y unwind label %bb.aa      ; 0 uses

bb.y:                                             ; preds = %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #42
  store i64 1, ptr %24, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 10 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !893
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.preheader, label %.preheader167

.lr.ph.preheader:                                 ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  br label %.lr.ph

.preheader167:                                    ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf10DescriptorEEENS1_6HashEqIS8_vE4HashENSB_2EqESaIS8_EE6insertEOS8_.exit, %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 5 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !690
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph170.preheader, label %.preheader166

.lr.ph170.preheader:                              ; preds = %.preheader167
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 3 uses
  br label %.lr.ph170

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.aa:                                            ; preds = %_ZN6google8protobuf14MessageOptions16mutable_featuresEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i, %_ZN6google8protobuf12_GLOBAL__N_121CopyFeaturesToOptionsINS0_14MessageOptionsEEEvPKNS0_10FeatureSetEPT_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf17DescriptorBuilder25CheckExtensionDeclarationERKNS0_15FieldDescriptorERKNS0_20FieldDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEESB_b:bb.a
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !137  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.0.copyload.i.i.i22 = load i16, ptr %i.t, align 1
  %i.u = zext i16 %.0.copyload.i.i.i22 to i64     ; 2 uses
  %i.v = xor i64 %i.u, -1
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  store ptr %1, ptr %12, align 8, !tbaa !337
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %7, ptr %i.x, align 8, !tbaa !1219
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %8, ptr %i.y, align 8, !tbaa !320
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder25CheckExtensionDeclarationERKNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEESF_bE3$_0NSt7__cxx1112basic_stringIcSE_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.z, align 8, !tbaa !1210
  store ptr %12, ptr %11, align 8, !tbaa !22
  invoke void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.u, ptr nonnull %i.w, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 3, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %11)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  %.pre = load ptr, ptr %8, align 8, !tbaa !20
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  %i.ab = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #42
  resume { ptr, i32 } %i.aa

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.f
  %i.ag = phi ptr [ %.pre, %bb.f ], [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #42
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = and i8 %i.am, 32
  %i.ao = icmp ne i8 %i.an, 0
  %i.ap = xor i1 %6, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !137 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %.0.copyload.i.i.i28 = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i.i28 to i64    ; 2 uses
  %i.au = xor i64 %i.at, -1
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #42
  store ptr %1, ptr %14, align 8, !tbaa !337
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.a, ptr %i.aw, align 8, !tbaa !1830
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder25CheckExtensionDeclarationERKNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoESt17basic_string_viewIcSt11char_traitsIcEESF_bE3$_1NSt7__cxx1112basic_stringIcSE_SaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE", ptr %i.ax, align 8, !tbaa !1210
  store ptr %14, ptr %13, align 8, !tbaa !22
  call void @_ZN6google8protobuf17DescriptorBuilder8AddErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationEN4absl12lts_2025051211FunctionRefIFNSt7__cxx1112basic_stringIcS4_SaIcEEEvEEE(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.at, ptr nonnull %i.av, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 3, ptr noundef nonnull byval(%"class.absl::lts_20250512::FunctionRef.311") align 8 %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf6Symbol13IsVisibleFromEPNS0_14FileDescriptorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !132    ; 16 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !135   ; 5 uses
  switch i8 %i.b, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit
    i8 10, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !670
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !671
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !465
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !679
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !158
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i, %bb.f, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.x, %bb.h ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.p, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ %i.r, %bb.f ], [ %i.v, %bb.g ], [ %i.a, %bb.a ]
  %i.y = icmp eq ptr %.0.i, null
  %i.z = icmp eq ptr %1, null
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  switch i8 %i.b, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread [
    i8 1, label %_ZNK6google8protobuf6Symbol14is_placeholderEv.exit
    i8 4, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit9

_ZNK6google8protobuf6Symbol14is_placeholderEv.exit: ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ae = load i16, ptr %i.ad, align 1            ; 2 uses
  %i.af = trunc i16 %i.ae to i1
  br i1 %i.af, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread, label %.thread

.thread:                                          ; preds = %_ZNK6google8protobuf6Symbol14is_placeholderEv.exit
  %i.ag = trunc i16 %i.ae to i8
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit9

_ZNK6google8protobuf6Symbol7GetFileEv.exit9:      ; preds = %bb.j, %.thread
  %.sink = phi i64 [ 24, %.thread ], [ 16, %bb.j ]
  %i.ah = phi i8 [ %i.ag, %.thread ], [ %i.ab, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink
  %.0.i7 = load ptr, ptr %i.ai, align 8, !tbaa !166
  %i.aj = icmp eq ptr %.0.i7, %1
  br i1 %i.aj, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit9
  switch i8 %i.b, label %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit [
    i8 1, label %bb.l
    i8 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = load i16, ptr %i.ak, align 1
  %3 = lshr i16 %2, 8
  %4 = and i16 %3, 3
  %5 = zext nneg i16 %4 to i32
  br label %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.i

bb.m:                                             ; preds = %bb.k
  %i.al = lshr i8 %i.ah, 2
  %6 = and i8 %i.al, 3
  %7 = zext nneg i8 %6 to i32
  br label %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.i

_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.i: ; preds = %bb.m, %bb.l
  %.0.i.i = phi i32 [ %7, %bb.m ], [ %5, %bb.l ]  ; 2 uses
  %i.am = icmp eq i32 %.0.i.i, 0
  br i1 %i.am, label %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i, label %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit

_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i: ; preds = %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.i
  %i.an = sext i8 %i.b to i64
  %i.ao = getelementptr [8 x i8], ptr @switch.table._ZNK6google8protobuf6Symbol18GetVisibilityErrorB5cxx11EPNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE, i64 %i.an
  %switch.gep = getelementptr i8, ptr %i.ao, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %switch.load
  %.0.i4.i = load ptr, ptr %i.ap, align 8, !tbaa !531
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  switch i32 %i.ar, label %bb.p [
    i32 4, label %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit
    i32 2, label %bb.n
    i32 3, label %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit
  ]

bb.n:                                             ; preds = %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i
  switch i8 %i.b, label %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit [
    i8 1, label %_ZNK6google8protobuf6Symbol18IsNestedDefinitionEv.exit.i
    i8 4, label %bb.o
    i8 2, label %_ZNK6google8protobuf6Symbol18IsNestedDefinitionEv.exit.i
  ]

bb.o:                                             ; preds = %bb.n
  br label %_ZNK6google8protobuf6Symbol18IsNestedDefinitionEv.exit.i

_ZNK6google8protobuf6Symbol18IsNestedDefinitionEv.exit.i: ; preds = %bb.o, %bb.n, %bb.n
  %.sink.i5.i = phi i64 [ 32, %bb.n ], [ 24, %bb.o ], [ 32, %bb.n ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink.i5.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !702
  %.fr.i = freeze ptr %i.at
  %.not.i = icmp eq ptr %.fr.i, null
  %spec.select.i10 = select i1 %.not.i, i32 2, i32 1
  br label %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit

bb.p:                                             ; preds = %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i
  br label %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit

_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit: ; preds = %bb.k, %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.i, %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i, %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i, %bb.n, %_ZNK6google8protobuf6Symbol18IsNestedDefinitionEv.exit.i, %bb.p
  %.1.i = phi i32 [ 0, %bb.k ], [ 2, %bb.p ], [ 1, %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i ], [ %.0.i.i, %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.i ], [ 1, %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit.thread.i ], [ 2, %bb.n ], [ %spec.select.i10, %_ZNK6google8protobuf6Symbol18IsNestedDefinitionEv.exit.i ]
  %i.au = icmp eq i32 %.1.i, 2
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread

_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread: ; preds = %bb.i, %bb.a, %bb.j, %_ZNK6google8protobuf6Symbol7GetFileEv.exit9, %_ZNK6google8protobuf6Symbol14is_placeholderEv.exit, %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit
  %.0 = phi i1 [ false, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ], [ true, %bb.i ], [ true, %_ZNK6google8protobuf6Symbol14is_placeholderEv.exit ], [ %i.au, %_ZNK6google8protobuf6Symbol22GetEffectiveVisibilityEv.exit ], [ true, %_ZNK6google8protobuf6Symbol7GetFileEv.exit9 ], [ true, %bb.j ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf20FieldDescriptorProtoEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE1EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %i.c, ptr %i.a)
          to label %_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i unwind label %bb.b

_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN6google8protobuf13AbslStringifyIN4absl12lts_2025051212log_internal13StringifySinkEEEvRT_RKNS0_7MessageE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #43
  br label %_ZN6google8protobuf13AbslStringifyIN4absl12lts_2025051212log_internal13StringifySinkEEEvRT_RKNS0_7MessageE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  resume { ptr, i32 } %i.i

_ZN6google8protobuf13AbslStringifyIN4absl12lts_2025051212log_internal13StringifySinkEEEvRT_RKNS0_7MessageE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  ret ptr %0
}

declare noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer12IsIdentifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal15btree_containerINS1_5btreeINS1_10set_paramsISt4pairIllESt4lessIS6_ESaIS6_ELi256ELb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1815
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1808
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEE16clear_and_deleteEPSA_PS8_(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #44
  unreachable

_ZN4absl12lts_2025051218container_internal5btreeINS1_10set_paramsISt4pairIllESt4lessIS5_ESaIS5_ELi256ELb0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf17DescriptorBuilder15CrossLinkMethodEPNS0_16MethodDescriptorERKNS0_21MethodDescriptorProtoE(ptr noundef nonnull align 8 dereferenceable(396) initializes((320, 328), (368, 376)) %0, ptr noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %7 = alloca %class.anon.512, align 8            ; 4 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.absl::lts_20250512::FunctionRef.311", align 8 ; 3 uses
  %10 = alloca %class.anon.513, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !137  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.0.copyload.i.i.i = load i16, ptr %i.k, align 1
  %i.l = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.m = xor i64 %i.l, -1
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %0, align 8, !tbaa !799
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 65
  %i.q = load i8, ptr %i.p, align 1, !tbaa !652, !range !49, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = xor i1 %i.r, true
  %i.t = tail call ptr @_ZN6google8protobuf17DescriptorBuilder25LookupSymbolNoPlaceholderESt17basic_string_viewIcSt11char_traitsIcEES5_NS1_11ResolveModeEb(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.h, ptr %i.f, i64 %i.l, ptr nonnull %i.n, i32 noundef 0, i1 noundef zeroext %i.s), !inline_history !1322 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !135   ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.b, label %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !799    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 66
  %i.y = load i8, ptr %i.x, align 2, !tbaa !1299, !range !49, !noundef !51
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit, label %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit.thread89

_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit: ; preds = %bb.b
  %i.aa = tail call ptr @_ZNK6google8protobuf14DescriptorPool27NewPlaceholderWithMutexHeldESt17basic_string_viewIcSt11char_traitsIcEENS1_15PlaceholderTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.w, i64 %i.h, ptr %i.f, i32 noundef 0), !inline_history !1322 ; 2 uses
  %.pr.pre = load i8, ptr %i.aa, align 1, !tbaa !135 ; 2 uses
  %i.ab = icmp eq i8 %.pr.pre, 0
  br i1 %i.ab, label %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit.thread89, label %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit.thread

_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit.thread89: ; preds = %bb.b, %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !799
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 65
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !652, !range !49, !noundef !51
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit.thread89
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !137 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.0.copyload.i.i.i42 = load i16, ptr %i.ah, align 1
  %i.ai = zext i16 %.0.copyload.i.i.i42 to i64    ; 2 uses
  %i.aj = xor i64 %i.ai, -1
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, -4
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  store i64 %i.ar, ptr %5, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ap, ptr %i.as, align 8
  tail call void @_ZN6google8protobuf17DescriptorBuilder18AddNotDefinedErrorESt17basic_string_viewIcSt11char_traitsIcEERKNS0_7MessageENS0_14DescriptorPool14ErrorCollector13ErrorLocationES5_(ptr noundef nonnull align 8 dereferenceable(396) %0, i64 %i.ai, ptr nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 5, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5)
  br label %bb.i

bb.d:                                             ; preds = %_ZN6google8protobuf17DescriptorBuilder12LookupSymbolESt17basic_string_viewIcSt11char_traitsIcEES5_NS0_14DescriptorPool15PlaceholderTypeENS1_11ResolveModeEb.exit.thread89
end_hunk_2
begin_hunk_3_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_0NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  store ptr @.str.389, ptr %i.j, align 8, !noalias !3416
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #42, !noalias !3416
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42, !noalias !3416
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42, !noalias !3416
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_1NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !3425
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !1800
  %i.b = getelementptr i8, ptr %.val1, i64 176
  %.val1.val = load ptr, ptr %i.b, align 8, !tbaa !1281
  tail call void @_ZNK6google8protobuf6Symbol18GetVisibilityErrorB5cxx11EPNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef %.val1.val, i64 16, ptr nonnull @.str.390)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6google8protobuf6Symbol18GetVisibilityErrorB5cxx11EPNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [11 x %"class.std::basic_string_view"], align 8 ; 25 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !132    ; 19 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !135   ; 2 uses
  switch i8 %i.c, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i
    i8 7, label %bb.f
    i8 8, label %bb.g
    i8 9, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40
    i8 10, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !671
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !465
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !679
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit

_ZNK6google8protobuf6Symbol7GetFileEv.exit:       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i, %bb.f, %bb.g, %bb.h
  %.0.i.in = phi ptr [ %i.q, %bb.h ], [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.l, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i ], [ %i.m, %bb.f ], [ %i.p, %bb.g ]
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !166
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit
  switch i8 %i.c, label %unreachable [
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 5, label %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i39
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40
    i8 10, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !670
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

bb.l:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !671
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !669
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

bb.m:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i39: ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !465
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !674
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

bb.n:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

bb.o:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !679
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !675
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

bb.p:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !158
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit40

unreachable:                                      ; preds = %bb.i
  unreachable

_ZNK6google8protobuf6Symbol7GetFileEv.exit40:     ; preds = %bb.i, %bb.a, %bb.j, %bb.k, %bb.l, %bb.m, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i39, %bb.n, %bb.o, %bb.p
  %.0.i38 = phi ptr [ %i.am, %bb.p ], [ %i.s, %bb.j ], [ %i.u, %bb.k ], [ %i.y, %bb.l ], [ %i.aa, %bb.m ], [ %i.ae, %_ZNK6google8protobuf6Symbol21enum_value_descriptorEv.exit.i39 ], [ %i.ag, %bb.n ], [ %i.ak, %bb.o ], [ %i.b, %bb.a ], [ %i.b, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i38, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !167 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  br label %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread

_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread: ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit, %bb.a, %_ZNK6google8protobuf6Symbol7GetFileEv.exit40
  %.sroa.069.0 = phi i64 [ %i.ar, %_ZNK6google8protobuf6Symbol7GetFileEv.exit40 ], [ 12, %bb.a ], [ 12, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ] ; 2 uses
  %.sroa.771.0 = phi ptr [ %i.ap, %_ZNK6google8protobuf6Symbol7GetFileEv.exit40 ], [ @.str.391, %bb.a ], [ @.str.391, %_ZNK6google8protobuf6Symbol7GetFileEv.exit ] ; 2 uses
  %i.as = tail call { i64, ptr } @_ZNK6google8protobuf6Symbol9full_nameEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1      ; 2 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !132   ; 4 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !135 ; 2 uses
  switch i8 %i.aw, label %bb.q [
    i8 1, label %bb.r
    i8 4, label %bb.s
  ]

bb.q:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store i64 64, ptr %6, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.392, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #42
  store i64 %i.at, ptr %7, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.au, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #42
  store i64 15, ptr %8, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.393, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #42
  store i64 %.sroa.069.0, ptr %9, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.771.0, ptr %.sroa.2.0..sroa_idx.i41, align 8, !tbaa !270
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %bb.ab

bb.r:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %14 = load i16, ptr %i.az, align 1
  %15 = lshr i16 %14, 8
  %16 = and i16 %15, 3
  %17 = zext nneg i16 %16 to i32
  br label %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit

bb.s:                                             ; preds = %_ZNK6google8protobuf6Symbol7GetFileEv.exit.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = lshr i8 %i.bb, 2
  %18 = and i8 %i.bc, 3
  %19 = zext nneg i8 %18 to i32
  br label %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit

_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit: ; preds = %bb.r, %bb.s
  %.0.i42 = phi i32 [ %19, %bb.s ], [ %17, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #42
  %i.bd = icmp eq i32 %.0.i42, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #42
  br i1 %i.bd, label %.noexc.i, label %switch.lookup

.noexc.i:                                         ; preds = %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.be, ptr %10, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store i64 31, ptr %i.a, align 8, !tbaa !19
  %i.bf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bf, ptr %10, align 8, !tbaa !20
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.bf, ptr noundef nonnull align 1 dereferenceable(31) @.str.394, i64 31, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !23
  %i.bi = load ptr, ptr %10, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  br label %bb.w

switch.lookup:                                    ; preds = %_ZNK6google8protobuf6Symbol18visibility_keywordEv.exit
  store i64 84, ptr %11, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.395, ptr %i.bk, align 8
  %i.bl = sext i8 %i.aw to i64
  %i.bm = getelementptr [8 x i8], ptr @switch.table._ZNK6google8protobuf6Symbol18GetVisibilityErrorB5cxx11EPNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE, i64 %i.bl
  %switch.gep = getelementptr i8, ptr %i.bm, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 %switch.load
  %.0.i43 = load ptr, ptr %i.bn, align 8, !tbaa !531
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i43, i64 68
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !22 ; 3 uses
  %i.bq = load atomic ptr, ptr @_ZZN6google8protobuf8internal15NameOfDenseEnumIXadL_ZNS0_63FeatureSet_VisibilityFeature_DefaultSymbolVisibility_descriptorEvEELi0ELi4EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE4deci acquire, align 8 ; 2 uses
  %.not.i.i = icmp ne ptr %i.bq, null
  %i.br = icmp ult i32 %i.bp, 5
  %or.cond.i.i = and i1 %i.br, %.not.i.i
  br i1 %or.cond.i.i, label %bb.t, label %bb.u, !prof !3426

bb.t:                                             ; preds = %switch.lookup
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !320
  br label %bb.v

bb.u:                                             ; preds = %switch.lookup
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal19NameOfDenseEnumSlowB5cxx11EiPNS1_18DenseEnumCacheInfoE(i32 noundef %i.bp, ptr noundef nonnull @_ZZN6google8protobuf8internal15NameOfDenseEnumIXadL_ZNS0_63FeatureSet_VisibilityFeature_DefaultSymbolVisibility_descriptorEvEELi0ELi4EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE4deci)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i.i = phi ptr [ %i.bu, %bb.t ], [ %i.bv, %bb.u ] ; 2 uses
  %i.bw = load ptr, ptr %.0.i.i, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !23
  store i64 %i.by, ptr %12, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.bw, ptr %i.bz, align 8
  store i64 2, ptr %13, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.396, ptr %i.ca, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !167 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #42, !noalias !3427
  store i64 8, ptr %5, align 8, !noalias !3427
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.397, ptr %i.cg, align 8, !noalias !3427
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.at, ptr %i.ch, align 8, !noalias !3427
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.au, ptr %i.ci, align 8, !noalias !3427
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 15, ptr %i.cj, align 8, !noalias !3427
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.393, ptr %i.ck, align 8, !noalias !3427
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sroa.069.0, ptr %i.cl, align 8, !noalias !3427
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %.sroa.771.0, ptr %i.cm, align 8, !noalias !3427
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 2, ptr %i.cn, align 8, !noalias !3427
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr @.str.398, ptr %i.co, align 8, !noalias !3427
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 %3, ptr %i.cp, align 8, !noalias !3427
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %4, ptr %i.cq, align 8, !noalias !3427
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 22, ptr %i.cr, align 8, !noalias !3427
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr @.str.399, ptr %i.cs, align 8, !noalias !3427
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %i.cf, ptr %i.ct, align 8, !noalias !3427
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr %i.cd, ptr %i.cu, align 8, !noalias !3427
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 3, ptr %i.cv, align 8, !noalias !3427
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr @.str.400, ptr %i.cw, align 8, !noalias !3427
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.cy = load ptr, ptr %10, align 8, !tbaa !20, !noalias !3427
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !23, !noalias !3427
  store i64 %i.da, ptr %i.cx, align 8, !noalias !3427
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %i.cy, ptr %i.db, align 8, !noalias !3427
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i64 44, ptr %i.dc, align 8, !noalias !3427
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 168
  store ptr @.str.401, ptr %i.dd, align 8, !noalias !3427
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %5, i64 11)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #42, !noalias !3427
  %i.de = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !22
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #42
  br label %bb.ab

bb.y:                                             ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

bb.z:                                             ; preds = %bb.v
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #42
  br label %.thread83

.thread83:                                        ; preds = %bb.y, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.z ], [ %i.dj, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  br label %.critedge37

bb.aa:                                            ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %.critedge37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.aa
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !22
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #43
  br label %.critedge37

.critedge37:                                      ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %.thread83
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %.pn, %.thread83 ], [ %i.dl, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #42
  resume { ptr, i32 } %.pn31.pn.pn.pn

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  ret void
}

declare noundef ptr @_ZN6google8protobuf63FeatureSet_VisibilityFeature_DefaultSymbolVisibility_descriptorEv() #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal19NameOfDenseEnumSlowB5cxx11EiPNS1_18DenseEnumCacheInfoE(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN6google8protobuf17DescriptorBuilder14CrossLinkFieldEPNS4_15FieldDescriptorERKNS4_20FieldDescriptorProtoEE3$_2NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr readonly captures(none) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %3 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 5 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !3430
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !337 ; 2 uses
  %i.a = getelementptr i8, ptr %.val.val, i64 4
  %.val.val.val = load i32, ptr %i.a, align 4, !tbaa !343
  %i.b = getelementptr i8, ptr %.val.val, i64 32
  %.val.val.val1 = load ptr, ptr %i.b, align 8, !tbaa !430
  %i.c = getelementptr i8, ptr %.val.val.val1, i64 16
  %.val.val.val1.val = load ptr, ptr %i.c, align 8, !tbaa !137 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3435)
end_hunk_3
