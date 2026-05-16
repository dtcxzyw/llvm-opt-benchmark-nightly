inline.NumInlined: 3953
inline.NumDeleted: 1054
begin_hunk_0_@_ZN6google8protobuf19FileDescriptorProto9MergeImplERNS0_11MessageLiteERKS2_:bb.a
  br i1 %i.dq, label %bb.ah, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit80

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load i32, ptr %.0.i.i.i.i.i75, align 4, !tbaa !3, !alias.scope !100, !noalias !103
  store i32 %i.dr, ptr %i.dl, align 4, !tbaa !3, !alias.scope !103, !noalias !100
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit80

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit80: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.y, %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  %i.ds = and i32 %i.i, 128
  %.not96 = icmp eq i32 %i.ds, 0
  br i1 %.not96, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit81, label %bb.ai

bb.ai:                                            ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit80
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !18
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit81, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef %.0.i.i)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit81

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit81: ; preds = %bb.aj, %bb.ai, %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit80, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.dy = and i32 %i.i, 16128
  %.not97 = icmp eq i32 %i.dy, 0
  br i1 %.not97, label %bb.bk, label %bb.ak

bb.ak:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit81
  %i.dz = and i32 %i.i, 256
  %.not98 = icmp eq i32 %i.dz, 0
  br i1 %.not98, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !60
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -4
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.eh = trunc i64 %i.eg to i1
  br i1 %i.eh, label %bb.am, label %bb.an, !prof !20

bb.am:                                            ; preds = %bb.al
  %i.ei = add nsw i64 %i.eg, -1
  %i.ej = inttoptr i64 %i.ei to ptr
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !21
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit83

bb.an:                                            ; preds = %bb.al
  %i.el = inttoptr i64 %i.eg to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit83

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit83: ; preds = %bb.am, %bb.an
  %.0.i.i82 = phi ptr [ %i.ek, %bb.am ], [ %i.el, %bb.an ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef %.0.i.i82)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit83, %bb.ak
  %i.em = and i32 %i.i, 512
  %.not99 = icmp eq i32 %i.em, 0
  br i1 %.not99, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !60
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = and i64 %i.ep, -4
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.et = load i64, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.eu = trunc i64 %i.et to i1
  br i1 %i.eu, label %bb.aq, label %bb.ar, !prof !20

bb.aq:                                            ; preds = %bb.ap
  %i.ev = add nsw i64 %i.et, -1
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !21
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit85

bb.ar:                                            ; preds = %bb.ap
  %i.ey = inttoptr i64 %i.et to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit85

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit85: ; preds = %bb.aq, %bb.ar
  %.0.i.i84 = phi ptr [ %i.ex, %bb.aq ], [ %i.ey, %bb.ar ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef %.0.i.i84)
  br label %bb.as

bb.as:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit85, %bb.ao
  %i.ez = and i32 %i.i, 1024
  %.not100 = icmp eq i32 %i.ez, 0
  br i1 %.not100, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !60
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, -4
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.fh = trunc i64 %i.fg to i1
  br i1 %i.fh, label %bb.au, label %bb.av, !prof !20

bb.au:                                            ; preds = %bb.at
  %i.fi = add nsw i64 %i.fg, -1
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !21
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit87

bb.av:                                            ; preds = %bb.at
  %i.fl = inttoptr i64 %i.fg to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit87

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit87: ; preds = %bb.au, %bb.av
  %.0.i.i86 = phi ptr [ %i.fk, %bb.au ], [ %i.fl, %bb.av ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef %.0.i.i86)
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit87, %bb.as
  %i.fm = and i32 %i.i, 2048
  %.not101 = icmp eq i32 %i.fm, 0
  br i1 %.not101, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !17 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !17 ; 2 uses
  br i1 %i.fp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fs = tail call noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_11FileOptionsEEEPvPS1_PKv(ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(160) %i.fr)
  store ptr %i.fs, ptr %i.fn, align 8, !tbaa !17
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  tail call void @_ZN6google8protobuf11FileOptions9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(160) %i.fo, ptr noundef nonnull align 8 dereferenceable(160) %i.fr), !inline_history !106
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.aw
  %i.ft = and i32 %i.i, 4096
  %.not102 = icmp eq i32 %i.ft, 0
  br i1 %.not102, label %_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !17 ; 5 uses
  %i.fw = icmp eq ptr %i.fv, null
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !17 ; 6 uses
  br i1 %i.fw, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fz = tail call noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_14SourceCodeInfoEEEPvPS1_PKv(ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.fy)
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !17
  br label %_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !10 ; 3 uses
  %i.gc = trunc i64 %i.gb to i1
  br i1 %i.gc, label %bb.be, label %bb.bf, !prof !20

bb.be:                                            ; preds = %bb.bd
  %i.gd = add nsw i64 %i.gb, -1
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !21
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gg = inttoptr i64 %i.gb to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i88 = phi ptr [ %i.gf, %bb.be ], [ %i.gg, %bb.bf ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3  ; 2 uses
  %i.gj = and i32 %i.gi, 1
  %.not.i.i = icmp eq i32 %i.gj, 0
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = icmp eq i32 %i.gl, 0
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %i.gm
  br i1 %or.cond.i, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 40
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef %.0.i.i.i.i88, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_23SourceCodeInfo_LocationEEEPvPS1_PKv), !inline_history !107
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i: ; preds = %bb.bg, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fv, i64 32 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = or i32 %i.gs, %i.gi
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !10 ; 3 uses
  %i.gw = trunc i64 %i.gv to i1
  br i1 %i.gw, label %bb.bh, label %bb.bi, !prof !20

bb.bh:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i
  %i.gx = add nsw i64 %i.gv, -1
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !21
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit16.i.i

bb.bi:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_23SourceCodeInfo_LocationEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i
  %i.ha = inttoptr i64 %i.gv to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit16.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit16.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i15.i.i = phi ptr [ %i.gz, %bb.bh ], [ %i.ha, %bb.bi ]
  tail call void @_ZN6google8protobuf8internal12ExtensionSet9MergeFromEPNS0_5ArenaEPKNS0_11MessageLiteERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef %.0.i.i.i.i88, ptr noundef nonnull @_ZN6google8protobuf33_SourceCodeInfo_default_instance_E, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef %.0.i.i15.i.i), !inline_history !108
  %i.hb = load i64, ptr %i.gu, align 8, !tbaa !10 ; 2 uses
  %i.hc = trunc i64 %i.hb to i1
  br i1 %i.hc, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit16.i.i
  %i.hd = add nsw i64 %i.hb, -1
  %i.he = inttoptr i64 %i.hd to ptr
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %i.hf), !inline_history !108
  br label %_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_.exit

_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit16.i.i, %bb.bc, %bb.ba
  %i.hg = and i32 %i.i, 8192
  %.not103 = icmp eq i32 %i.hg, 0
  br i1 %.not103, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !17
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !17
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN6google8protobuf14SourceCodeInfo9MergeFromERKS1_.exit, %bb.bj, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS8_.exit81
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !3
  %i.hm = or i32 %i.hl, %i.i
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !3
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !10 ; 2 uses
  %i.hp = trunc i64 %i.ho to i1
  br i1 %i.hp, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.bk
  %i.hq = add nsw i64 %i.ho, -1
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.hs)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.bk, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf19FileDescriptorProto12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf31FileDescriptorProto_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf31FileDescriptorProto_class_data_E, i64 8), align 8, !tbaa !30
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf31FileDescriptorProto_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

declare noundef ptr @_ZN6google8protobuf8internal8TcParser7FastBS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

declare noundef ptr @_ZN6google8protobuf8internal8TcParser7FastBR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

declare noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMtS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9FastV32R1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

declare noundef ptr @_ZN6google8protobuf8internal8TcParser8FastEvS1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf19FileDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 15 uses
  %i.c = and i32 %i.b, 255
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16 = trunc i32 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 0
  %or.cond = select i1 %.not16, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit: ; preds = %bb.c, %bb.b
  %i.h = and i32 %i.b, 2
  %.not17 = icmp ne i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 0
  %or.cond34 = select i1 %.not17, i1 %i.k, i1 false
  br i1 %or.cond34, label %bb.d, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEE5ClearEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEE5ClearEv.exit: ; preds = %bb.d, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit
  %i.m = and i32 %i.b, 4
  %.not18 = icmp ne i32 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.o, 0
  %or.cond37 = select i1 %.not18, i1 %i.p, i1 false
  br i1 %or.cond37, label %bb.e, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19EnumDescriptorProtoEE5ClearEv.exit

bb.e:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEE5ClearEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_19EnumDescriptorProtoEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_19EnumDescriptorProtoEE5ClearEv.exit: ; preds = %bb.e, %_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEE5ClearEv.exit
  %i.r = and i32 %i.b, 8
  %.not19 = icmp ne i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp sgt i32 %i.t, 0
  %or.cond40 = select i1 %.not19, i1 %i.u, i1 false
  br i1 %or.cond40, label %bb.f, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEE5ClearEv.exit

bb.f:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_19EnumDescriptorProtoEE5ClearEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEE5ClearEv.exit: ; preds = %bb.f, %_ZN6google8protobuf16RepeatedPtrFieldINS0_19EnumDescriptorProtoEE5ClearEv.exit
  %i.w = and i32 %i.b, 16
  %.not20 = icmp ne i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp sgt i32 %i.y, 0
  %or.cond43 = select i1 %.not20, i1 %i.z, i1 false
  br i1 %or.cond43, label %bb.g, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEE5ClearEv.exit

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEE5ClearEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEE5ClearEv.exit: ; preds = %bb.g, %_ZN6google8protobuf16RepeatedPtrFieldINS0_22ServiceDescriptorProtoEE5ClearEv.exit
  %i.ab = and i32 %i.b, 32
  %.not21 = icmp eq i32 %i.ab, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEE5ClearEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.ac, align 4, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEE5ClearEv.exit
  %i.ad = and i32 %i.b, 64
  %.not22 = icmp eq i32 %i.ad, 0
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.ae, align 4, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.af = and i32 %i.b, 128
  %.not23 = icmp ne i32 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = icmp sgt i32 %i.ah, 0
  %or.cond46 = select i1 %.not23, i1 %i.ai, i1 false
  br i1 %or.cond46, label %bb.l, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit15

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit15

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5ClearEv.exit15: ; preds = %bb.l, %bb.k, %bb.a
  %i.ak = and i32 %i.b, 7936
  %.not24 = icmp eq i32 %i.ak, 0
  br i1 %.not24, label %bb.w, label %bb.m

end_hunk_0
